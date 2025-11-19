const __CFNumber *___ZN14IPCAURegistrar43ApplicationStateChangedNotificationCallbackEP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *v6 = 0;
  result = GetNumber(v2, *MEMORY[0x1E69D4330], &v6[1]);
  if (v6[1] == 8)
  {
    result = GetNumber(v2, *MEMORY[0x1E69D4348], v6);
    if (v6[0])
    {
      for (i = *(v1 + 232); i != *(v1 + 240); i += 8)
      {
        if (*(*i + 12) == v6[0])
        {
          v5 = 0;
          result = GetString(v2, *MEMORY[0x1E69D4340], &v5);
          if (v5)
          {
            return IPCAURegistrar::RecordApplicationActiveTime(v1, v5);
          }

          return result;
        }
      }
    }
  }

  return result;
}

void IPCAURegistrar::ApplicationStateChangedNotificationCallback(IPCAURegistrar *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = *(a2 + 28);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN14IPCAURegistrar43ApplicationStateChangedNotificationCallbackEP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = a2;
  v7[5] = a5;
  dispatch_sync(v6, v7);
}

const __CFNumber *GetNumber(const __CFDictionary *a1, const __CFString *a2, unsigned int *a3)
{
  *a3 = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      return (CFNumberGetValue(v5, kCFNumberSInt32Type, a3) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void AddACQEventWithIDImpl(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (!a3 || !a4 || !a5)
  {
    return;
  }

  v30 = 0;
  pthread_threadid_np(0, &v30);
  if (a2 == 2)
  {
    if (a1)
    {
      v17 = *a1;
    }

    kdebug_trace();
    if (!atomic_load(&gACQThreadID))
    {
      __assert_rtn("AddACQEventWithIDImpl", "ACQEventUtil.cpp", 171, "gACQThreadID.load() != 0");
    }

    v19 = 0;
    goto LABEL_14;
  }

  if (a2 == 1)
  {
    if (a1)
    {
      v16 = *a1;
    }

    kdebug_trace();
    if (atomic_load(&gACQThreadID))
    {
      __assert_rtn("AddACQEventWithIDImpl", "ACQEventUtil.cpp", 165, "gACQThreadID.load() == 0");
    }

    v19 = v30;
LABEL_14:
    atomic_store(v19, &gACQThreadID);
  }

  clock_gettime(_CLOCK_REALTIME, &__tp);
  GetACQEventManager();
  if (byte_1EAD2D588 == 1)
  {
    v21 = &GetACQEventManager(void)::sACQEventManager[120 * (atomic_fetch_add(qword_1EAD0F570, 1uLL) & 0x3FF)];
    os_unfair_lock_lock(v21 + 1000);
    *(v21 + 3944) = __tp;
    *(v21 + 972) = a2;
    *(v21 + 487) = a3;
    *(v21 + 488) = a4;
    *(v21 + 489) = a5;
    *(v21 + 980) = a6;
    *(v21 + 491) = a7;
    *(v21 + 492) = a8;
    *(v21 + 495) = v30;
    if (v21[3992])
    {
      v21[3992] = 0;
    }

    if (a1)
    {
      v22 = *a1;
      *(v21 + 498) = *(a1 + 2);
      *(v21 + 248) = v22;
      v21[3992] = 1;
    }

    os_unfair_lock_unlock(v21 + 1000);
    caulk::semaphore::signal(&byte_1EAD0F560);
  }

  v23 = atomic_load(GetACQEventManager(void)::sACQEventManager);
  if ((v23 & 1) == 0)
  {
    v24 = 1936;
    if (!a2)
    {
      v24 = 8;
    }

    v25 = atomic_fetch_add(&GetACQEventManager(void)::sACQEventManager[v24], 1uLL) & 0xF;
    v26 = &unk_1EAD0EDE0;
    if (!a2)
    {
      v26 = &unk_1EAD0E658;
    }

    v27 = &v26[120 * v25];
    os_unfair_lock_lock(v27 + 28);
    *(v27 + 56) = __tp;
    *v27 = a2;
    *(v27 + 1) = a3;
    *(v27 + 2) = a4;
    *(v27 + 3) = a5;
    *(v27 + 8) = a6;
    *(v27 + 5) = a7;
    *(v27 + 6) = a8;
    *(v27 + 9) = v30;
    if (v27[104])
    {
      v27[104] = 0;
    }

    if (a1)
    {
      v28 = *a1;
      *(v27 + 12) = *(a1 + 2);
      *(v27 + 5) = v28;
      v27[104] = 1;
    }

    os_unfair_lock_unlock(v27 + 28);
  }
}

void GetACQEventManager(void)
{
  {
    if (v0)
    {
      ACQEventManager::ACQEventManager(v0);
    }
  }
}

AudioComponent AudioComponentFindNext(AudioComponent inComponent, const AudioComponentDescription *inDesc)
{
  if (!inDesc)
  {
    return 0;
  }

  v7 = *inDesc;
  if (inComponent)
  {
    if (!(**inComponent)(inComponent))
    {
      return 0;
    }
  }

  GlobalComponentPluginMgr(&v5);
  v3 = (*(*v6 + 40))(v6, inComponent, &v7);
  if (v5)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

void sub_18F5E1368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void GlobalComponentPluginMgr(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  {
    operator new();
  }

  v3 = GlobalComponentPluginMgr(void)::sImpl;
  v4 = GlobalComponentPluginMgr(void)::sImpl + 64;
  std::recursive_mutex::lock(GlobalComponentPluginMgr(void)::sImpl);
  *a1 = v3;
  a1[1] = v4;
  if ((GlobalComponentPluginMgr(void)::initialized & 1) == 0)
  {
    GlobalComponentPluginMgr(void)::initialized = 1;
    (*(*v4 + 16))(v3 + 64);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_18F5E146C(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v1, 0x10A0C40F084F79CLL);
  _Unwind_Resume(a1);
}

uint64_t AudioComponentMgr_Base::findNext(AudioComponentMgr_Base *this, OpaqueAudioComponent *a2, const AudioClassDescription *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = (**a2)(a2);
  }

  else
  {
    v5 = 0;
  }

  if (a3->mType)
  {
    v6 = a3->mSubType == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8 = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    v7 = *(v5 + 24);
    goto LABEL_33;
  }

  v8 = a3->mManufacturer == 0;
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_12:
  v7 = *(this + 1);
  (*(*this + 32))(this, a3);
  if (!v8)
  {
    v20 = *&a3->mType;
    mSubType = a3[1].mSubType;
    v22 = 0x64FFFFFFFFLL;
    SortedPosition = AudioComponentVector::findSortedPosition(*(this + 2), *(this + 3), &v20);
    v10 = SortedPosition;
    if (*(this + 3) == SortedPosition)
    {
      v11 = 0;
    }

    else
    {
      v11 = *SortedPosition;
    }

    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v12 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = &v19;
      to_string(a3, &v19);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v19.__r_.__value_.__r.__words[0];
      }

      if (v11)
      {
        to_string(v11 + 3, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        v24 = "AudioComponentPluginMgr.mm";
        v25 = 1024;
        v26 = 1213;
        v27 = 2080;
        v28 = v14;
        v29 = 2048;
        v30 = v11;
        v31 = 2080;
        v32 = p_p;
        _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d findNext %s -> %p %s", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *buf = 136316162;
        v24 = "AudioComponentPluginMgr.mm";
        v25 = 1024;
        v26 = 1213;
        v27 = 2080;
        v28 = v14;
        v29 = 2048;
        v30 = 0;
        v31 = 2080;
        v32 = "";
        _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d findNext %s -> %p %s", buf, 0x30u);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }

    if (*(this + 3) == v10)
    {
      v7 = 0;
      goto LABEL_38;
    }

    v7 = *v10;
  }

LABEL_33:
  while (v7)
  {
    if (!v8 || (*(v7 + 48) & 1) == 0) && (AudioComponentMgr_Base::match(v7, a3, a3))
    {
      break;
    }

    v7 = *(v7 + 24);
  }

LABEL_38:
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_18F5E17FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *AudioComponentVector::findSortedPosition(char *a1, char *a2, __int128 *a3)
{
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = 100;
  if (a2 != a1)
  {
    v3 = a1;
    v4 = (a2 - a1) >> 4;
    do
    {
      v5 = &v3[16 * (v4 >> 1)];
      v7 = *v5;
      v6 = (v5 + 2);
      v8 = APComponent::Key::sortCompare((v7 + 36), &v10, 0);
      if (v8 >= 0)
      {
        v4 >>= 1;
      }

      else
      {
        v4 += ~(v4 >> 1);
      }

      if (v8 < 0)
      {
        v3 = v6;
      }
    }

    while (v4);
    return v3;
  }

  return a2;
}

uint64_t APComponent::Key::sortCompare(_DWORD *a1, _DWORD *a2, char a3)
{
  if (*a1 < *a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = *a1 > *a2;
  }

  if (!result)
  {
    v6 = a1[1];
    v7 = a2[1];
    v20 = v6 >= v7;
    v8 = v6 > v7;
    result = v20 ? v8 : 0xFFFFFFFFLL;
    if (!result)
    {
      v10 = a1[2];
      v11 = a2[2];
      v20 = v10 >= v11;
      v12 = v10 > v11;
      if (v20)
      {
        v13 = v12;
      }

      else
      {
        v13 = -1;
      }

      AppBooleanValue = reverseManufacturerSort(void)::gHWCodecsFirst;
      if (reverseManufacturerSort(void)::gHWCodecsFirst < 0)
      {
        AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"hw_codecs_first", @"com.apple.coreaudio", 0);
        reverseManufacturerSort(void)::gHWCodecsFirst = AppBooleanValue;
      }

      if (AppBooleanValue)
      {
        result = -v13;
      }

      else
      {
        result = v13;
      }

      if (!result)
      {
        if (a3)
        {
          goto LABEL_23;
        }

        v15 = a1[5];
        v16 = a2[5];
        v20 = v15 >= v16;
        v17 = v15 > v16;
        if (!v20)
        {
          v17 = -1;
        }

        if (!v17)
        {
LABEL_23:
          v18 = a1[6];
          v19 = a2[6];
          v20 = v18 >= v19;
          if (v18 <= v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = -1;
          }

          if (v20)
          {
            return v21;
          }

          else
          {
            return 1;
          }
        }

        else
        {
          return -v17;
        }
      }
    }
  }

  return result;
}

BOOL EmbeddedComponentManager::isComponentDescriptionVisible(EmbeddedComponentManager *this, const AudioComponentDescription *a2)
{
  if ((this & ~tkqMjk4y) == 0)
  {
    return 1;
  }

  AppBooleanValue = gAllCodecsOK;
  if (gAllCodecsOK < 0)
  {
    AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"AllCodecsOK", @"com.apple.coreaudio", 0);
    gAllCodecsOK = AppBooleanValue;
  }

  return AppBooleanValue != 0;
}

uint64_t GetString(const __CFDictionary *a1, const __CFString *a2, const __CFString **a3)
{
  *a3 = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFStringGetTypeID())
    {
      *a3 = v5;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::vector<IPCAUClient::RemoteAUServer *>::emplace_back<IPCAUClient::RemoteAUServer * const&>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
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

uint64_t acv2::ConverterRegistry::FindFactoryByFormatIDs(acv2::ConverterRegistry *this, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  do
  {
    v12 = *(this + 1);
    v11 = *(this + 2);
    v13 = v9;
    if (v12 != v11)
    {
      do
      {
        if (*(*v12 + 8) == a2 && *(*v12 + 12) == a3)
        {
          std::vector<IPCAUClient::RemoteAUServer *>::emplace_back<IPCAUClient::RemoteAUServer * const&>(&v29, v12);
        }

        ++v12;
      }

      while (v12 != v11);
      v9 = v29;
      v8 = v30;
      v13 = v30;
    }

    if (v10 & 1 | (v9 != v13))
    {
      break;
    }

    if (a3 == 1885564203 || a3 == 1819304813)
    {
      DecoderFactories = acv2::ConverterRegistry::MakeDecoderFactories(this, a2, a3);
    }

    else
    {
      if (a2 != 1819304813)
      {
        v13 = v8;
        break;
      }

      DecoderFactories = acv2::ConverterRegistry::MakeEncoderFactories(this, a3);
    }

    v10 = 1;
    v13 = v8;
  }

  while ((DecoderFactories & 1) != 0);
  if (v9 == v13)
  {
    v25 = 0;
    result = 0;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v15 = v13 - v9;
    v16 = v9;
    if (v15 != 8)
    {
      v16 = v9;
      if (a5)
      {
        v16 = v9;
        if ((v15 & 0x7FFFFFFF8) != 0)
        {
          v17 = 0;
          v18 = (v15 >> 3);
          v19 = -1;
          v20 = -1;
          do
          {
            v21 = 0;
            v22 = v9[v17];
            v23 = 12 * a5;
            v24 = (a4 + 8);
            while (*(v24 - 2) != v22[4] || *(v24 - 1) != v22[5] || *v24 != v22[6])
            {
              ++v21;
              v24 += 3;
              v23 -= 12;
              if (!v23)
              {
                v21 = -1;
                break;
              }
            }

            if (v21 < v19)
            {
              v20 = v17;
              v19 = v21;
            }

            ++v17;
          }

          while (v17 != v18);
          v16 = &v9[v20];
          if (v20 == -1)
          {
            v16 = v9;
          }
        }
      }
    }

    v25 = *v16;
  }

  operator delete(v9);
  return v25;
}

void sub_18F5E1D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t AudioComponentMgr_NSExtension::findNext(AudioComponentMgr_NSExtension *this, OpaqueAudioComponent *a2, const AudioClassDescription *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  mType = a3->mType;
  if (a3->mType)
  {
    v7 = a3->mSubType == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 || a3->mManufacturer == 0;
  if ((*(this + 96) & 1) == 0)
  {
    v9 = 0;
    while (dword_18F902B38[v9] != mType)
    {
      if (++v9 == 8)
      {
        if (v8)
        {
          (*(*this + 120))(this, 1, mType == 1635087216);
          Next = AudioComponentMgr_Base::findNext(this, a2, a3);
          goto LABEL_16;
        }

        Next = AudioComponentMgr_Base::findNext(this, a2, a3);
        if (!Next)
        {
          (*(*this + 120))(this, 1, mType == 1635087216);
          v11 = *MEMORY[0x1E69E9840];

          return AudioComponentMgr_Base::findNext(this, a2, a3);
        }

        goto LABEL_33;
      }
    }
  }

  Next = AudioComponentMgr_Base::findNext(this, a2, a3);
  if (v8)
  {
LABEL_16:
    if ((*(this + 144) & 1) == 0 && a3->mType != 1633969507 && a3->mType != 1634037347)
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v13 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        to_string(a3, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v19 = "AudioComponentPluginMgr.mm";
        v20 = 1024;
        v21 = 906;
        v22 = 2080;
        v23 = p_p;
        _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d First wildcard component search: %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *(this + 144) = 1;
    }
  }

LABEL_33:
  v16 = *MEMORY[0x1E69E9840];
  return Next;
}

uint64_t AudioComponentMgr_iOS::checkDeferredInitialization(AudioComponentMgr_iOS *this, const AudioComponentDescription *a2)
{
  if ((a2->componentType - 1635086951 <= 0x11 && ((1 << (a2->componentType - 103)) & 0x20045) != 0 || a2->componentType == 0) && !CADeprecated::TSingleton<IPCAUClient>::sInstance)
  {
    return CADeprecated::TSingleton<IPCAUClient>::instance();
  }

  return result;
}

void sub_18F5E2190(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

OSStatus AudioComponentInstanceNew(AudioComponent inComponent, AudioComponentInstance *outInstance)
{
  v23 = *MEMORY[0x1E69E9840];
  if (outInstance)
  {
    v3 = inComponent;
    *outInstance = 0;
    memset(&v18, 0, sizeof(v18));
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    Impl_AudioGetComponentInfo(inComponent, &v18, 0);
    if ((v18.componentFlags & 8) != 0)
    {
      if (v3 && (v6 = (**v3)(v3)) != 0 && (v7 = (*(*v6 + 64))(v6)) != 0 && *(v7 + 200))
      {
        v4 = 0;
        v3 = *(v7 + 200);
      }

      else
      {
        if (!AllowUnsafeMainThreadServicing("AudioComponentInstanceNew"))
        {
          v5 = -10863;
LABEL_23:
          _Block_object_dispose(&v14, 8);
          goto LABEL_24;
        }

        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __AudioComponentInstanceNew_block_invoke;
    v13[3] = &unk_1E72C1CB8;
    v13[5] = v3;
    v13[6] = outInstance;
    v13[4] = &v14;
    if (v4)
    {
      v8 = Synchronously_ServicingMainRunLoop(v13);
    }

    else
    {
      v8 = Synchronously(v13);
    }

    if (!v8)
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v9 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "AudioComponentAPI.cpp";
        v21 = 1024;
        v22 = 418;
        _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Timeout running task synchronously", buf, 0x12u);
      }
    }

    v5 = *(v15 + 6);
    goto LABEL_23;
  }

  v5 = -50;
LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_18F5E2414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AudioComponentMgr_Base::match(AudioComponentMgr_Base *this, const AudioComponentDescription *a2, const AudioComponentDescription *a3)
{
  if (a2->componentType)
  {
    v3 = a2->componentType == *(this + 9);
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    componentSubType = a2->componentSubType;
    if (componentSubType)
    {
      v6 = componentSubType == *(this + 10);
    }

    else
    {
      v6 = 1;
    }

    if (v6 && ((componentManufacturer = a2->componentManufacturer) != 0 ? (v8 = componentManufacturer == *(this + 11)) : (v8 = 1), v8 && EmbeddedComponentManager::isComponentDescriptionVisible(*(this + 12), a2)))
    {
      v9 = *(this + 72) ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t Impl_AudioGetComponentInfo(OpaqueAudioComponent *a1, AudioComponentDescription *a2, const __CFString **a3)
{
  if (!a1)
  {
    return 4294964296;
  }

  v5 = (**a1)(a1);
  if (!v5)
  {
    return 4294964296;
  }

  v6 = (**v5)(v5);
  if (a2)
  {
    v7 = *(v6 + 36);
    a2->componentFlagsMask = *(v6 + 52);
    *&a2->componentType = v7;
  }

  if (!a3)
  {
    return 0;
  }

  result = *(v6 + 64);
  if (result)
  {
    *a3 = result;
    CFRetain(result);
    return 0;
  }

  *a3 = 0;
  return result;
}

BOOL Synchronously(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  dispatch_retain(v2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __Synchronously_block_invoke;
  v5[3] = &__block_descriptor_tmp_1107;
  v5[4] = v2;
  (*(a1 + 16))(a1, v5);
  v3 = dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL) == 0;
  dispatch_release(v2);
  return v3;
}

void __AudioComponentInstanceNew_block_invoke(void *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __AudioComponentInstanceNew_block_invoke_2;
  v4[3] = &unk_1E72C1C90;
  v2 = a1[5];
  v3 = a1[6];
  v4[5] = a1[4];
  v4[6] = v3;
  v4[4] = a2;
  instantiate(v2, 0, 0, v4);
}

uint64_t shouldLoadV2OutOfProcess(const AudioComponentDescription *a1, char a2, id *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if ((a2 & 2) != 0)
  {
    goto LABEL_51;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_3;
  }

  v15 = SecTaskCreateFromSelf(0);
  if (!v15)
  {
    goto LABEL_51;
  }

  v16 = v15;
  v17 = SecTaskCopyValueForEntitlement(v15, @"com.apple.coreaudio.allow-oop-v2-au", 0);
  if (!v17)
  {
LABEL_42:
    CFRelease(v16);
    goto LABEL_51;
  }

  v18 = v17;
  v19 = CFGetTypeID(v17);
  if (v19 != CFBooleanGetTypeID())
  {
    CFRelease(v18);
    goto LABEL_42;
  }

  Value = CFBooleanGetValue(v18);
  CFRelease(v18);
  CFRelease(v16);
  if (!Value)
  {
    goto LABEL_51;
  }

LABEL_3:
  v6 = getenv("CoreAudio_AUHostingService_mismatchMode");
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = *a3;
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v8)
  {
    v42 = v6;
    v9 = 0;
    v10 = 0;
    v11 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        if ([v13 intValue] == 16777228)
        {
          v10 = 1;
        }

        else
        {
          v9 |= [v13 intValue] == 16777223;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v8);

    v6 = v42;
    if (!(v10 & 1 | ((v9 & 1) == 0)))
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v14 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "APComponent.mm";
        *&buf[12] = 1024;
        *&buf[14] = 284;
        _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Requested AU does not contain native architecture and translation is not available!", buf, 0x12u);
      }

      goto LABEL_51;
    }
  }

  else
  {

    v10 = 0;
    v9 = 0;
  }

  if ((a1->componentFlags & 4) != 0)
  {
    goto LABEL_51;
  }

  v21 = "lppa";
  v22 = 140;
  do
  {
    v23 = *(v21 - 2);
    if (v23)
    {
      v24 = v23 == a1->componentType;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = *(v21 - 1);
      if ((!v25 || v25 == a1->componentSubType) && (!*v21 || *v21 == a1->componentManufacturer))
      {
        goto LABEL_51;
      }
    }

    v21 += 20;
    v22 -= 20;
  }

  while (v22);
  if (((v6 != 0) & (v10 & v9)) != 0)
  {
LABEL_40:
    AppBooleanValue = 1;
    goto LABEL_52;
  }

  v29 = getenv("CoreAudio_loadV2AudioUnitsOutOfProcess");
  if (!v29)
  {
    goto LABEL_87;
  }

  v30 = v29;
  v31 = strlen(v29);
  if (v31 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  if (v31 >= 0x17)
  {
    operator new();
  }

  v49 = v31;
  if (v31)
  {
    memmove(buf, v30, v31);
  }

  buf[v32] = 0;
  v36 = v49;
  if (v49 < 0)
  {
    if (*&buf[8] == 1)
    {
      v41 = *buf;
      if (**buf == 49)
      {
        AppBooleanValue = 1;
        goto LABEL_93;
      }

      goto LABEL_72;
    }

    if (*&buf[8] != 3)
    {
      goto LABEL_72;
    }

    v37 = *buf;
  }

  else
  {
    if (v49 == 1)
    {
      if (buf[0] == 49)
      {
        goto LABEL_40;
      }

      goto LABEL_72;
    }

    if (v49 != 3)
    {
      goto LABEL_72;
    }

    v37 = buf;
  }

  v38 = *v37;
  v39 = *(v37 + 2);
  if (v38 == 17753 && v39 == 83)
  {
    AppBooleanValue = 1;
LABEL_91:
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    v41 = *buf;
LABEL_93:
    operator delete(v41);
    goto LABEL_52;
  }

LABEL_72:
  if (!isInternalBuild())
  {
    goto LABEL_84;
  }

  if ((v36 & 0x80) != 0)
  {
    if (*&buf[8] == 1)
    {
      v41 = *buf;
      if (**buf == 48)
      {
        AppBooleanValue = 0;
        goto LABEL_93;
      }
    }

    else
    {
      v41 = *buf;
      if (*&buf[8] == 2)
      {
        goto LABEL_83;
      }
    }

LABEL_86:
    operator delete(v41);
    goto LABEL_87;
  }

  if (v36 == 1)
  {
    if (buf[0] != 48)
    {
      goto LABEL_87;
    }

LABEL_51:
    AppBooleanValue = 0;
    goto LABEL_52;
  }

  if (v36 != 2)
  {
    goto LABEL_87;
  }

  v41 = buf;
LABEL_83:
  if (*v41 == 20302)
  {
    AppBooleanValue = 0;
    goto LABEL_91;
  }

LABEL_84:
  if ((v36 & 0x80) != 0)
  {
    v41 = *buf;
    goto LABEL_86;
  }

LABEL_87:
  if (!isInternalBuild() || (buf[0] = 0, AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"loadV2AudioUnitsOutOfProcess", @"com.apple.coreaudio", buf), (buf[0] & 1) == 0))
  {
    AppBooleanValue = a2 & 1;
  }

LABEL_52:
  v34 = *MEMORY[0x1E69E9840];
  return AppBooleanValue;
}

void sub_18F5E2BBC(_Unwind_Exception *exception_object)
{
  if (v1 < 0)
  {
    operator delete(*(v2 - 128));
  }

  _Unwind_Resume(exception_object);
}

void APComponent::newInstance(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 72) == 1)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v7 = *gAudioComponentLogCategory;
    if (!os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315394;
    *&buf[4] = "APComponent.mm";
    v21 = 1024;
    v22 = 321;
    v10 = "%25s:%-5d component is a zombie and cannot be instantiated";
LABEL_9:
    _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
LABEL_10:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  GlobalComponentPluginMgr(buf);
  if (*(a1 + 104))
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(*a1 + 96))(a1);
  }

  if (*buf)
  {
    std::recursive_mutex::unlock(*buf);
  }

  if (!v8)
  {
    *buf = a1 + 36;
    v12 = *(a1 + 104);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v13 = (*(*v12 + 48))(v12, buf);
    if (!v13)
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v7 = *gAudioComponentLogCategory;
      if (!os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315394;
      *&buf[4] = "APComponent.mm";
      v21 = 1024;
      v22 = 333;
      v10 = "%25s:%-5d null from factory proc";
      goto LABEL_9;
    }

    GlobalComponentPluginMgr(buf);
    if (*(a1 + 112))
    {
      v8 = 0;
    }

    else
    {
      v14 = *(a1 + 36);
      if (HIWORD(v14) == 24949)
      {
        v15 = malloc_type_malloc(0xC8uLL, 0x8004055C35419uLL);
        *v15 = (*(v13 + 16))(1);
        v15[1] = (*(v13 + 16))(2);
        v15[2] = (*(v13 + 16))(3);
        v15[3] = (*(v13 + 16))(4);
        v15[4] = (*(v13 + 16))(5);
        v15[5] = (*(v13 + 16))(10);
        v15[6] = (*(v13 + 16))(11);
        v15[7] = (*(v13 + 16))(18);
        v15[8] = (*(v13 + 16))(15);
        v15[9] = (*(v13 + 16))(16);
        v15[10] = (*(v13 + 16))(6);
        v15[11] = (*(v13 + 16))(7);
        v15[12] = (*(v13 + 16))(17);
        v15[14] = (*(v13 + 16))(14);
        v15[13] = (*(v13 + 16))(9);
        v15[15] = (*(v13 + 16))(19);
        v15[16] = (*(v13 + 16))(20);
        v15[17] = (*(v13 + 16))(21);
        v15[18] = (*(v13 + 16))(513);
        v15[19] = (*(v13 + 16))(514);
        v15[20] = (*(v13 + 16))(257);
        v15[21] = (*(v13 + 16))(258);
        v15[22] = (*(v13 + 16))(261);
        v15[23] = (*(v13 + 16))(262);
        v15[24] = (*(v13 + 16))(263);
      }

      else
      {
        if (v14 != 1633903715 && v14 != 1634037347 && v14 != 1633969507)
        {
          v17 = 0;
          v8 = 4294967292;
          goto LABEL_33;
        }

        v15 = malloc_type_malloc(0x60uLL, 0x800408F261F10uLL);
        *v15 = (*(v13 + 16))(1);
        v15[1] = (*(v13 + 16))(2);
        v15[2] = (*(v13 + 16))(3);
        v15[3] = (*(v13 + 16))(4);
        v15[4] = (*(v13 + 16))(5);
        v15[5] = (*(v13 + 16))(6);
        v15[6] = (*(v13 + 16))(7);
        v15[7] = (*(v13 + 16))(8);
        v15[8] = (*(v13 + 16))(9);
        v15[9] = (*(v13 + 16))(10);
        v15[10] = (*(v13 + 16))(11);
        v15[11] = (*(v13 + 16))(12);
      }

      v8 = 0;
      *(a1 + 112) = v15;
    }

    v17 = 1;
LABEL_33:
    if (*buf)
    {
      std::recursive_mutex::unlock(*buf);
    }

    if (v17)
    {
      operator new();
    }

    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v18 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "APComponent.mm";
      v21 = 1024;
      v22 = 340;
      v23 = 1024;
      v24 = v8;
      _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d error %d returned from createDispatchTable", buf, 0x18u);
    }
  }

LABEL_15:
  v5[2](v5, 0, v8);
  objc_autoreleasePoolPop(v6);

  v11 = *MEMORY[0x1E69E9840];
}

void *std::shared_ptr<APComponent>::shared_ptr[abi:ne200100]<APComponent,0>(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  *a1 = a2;
  if (!this)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(this);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

AudioComponent AudioComponentInstanceGetComponent(AudioComponentInstance inInstance)
{
  if (!inInstance)
  {
    return 0;
  }

  v1 = (*(*inInstance + 8))(inInstance);
  if (!v1)
  {
    return 0;
  }

  v2 = **v1;

  return v2();
}

uint64_t AudioConverterNewWithOptions(AudioStreamBasicDescription *a1, const AudioStreamBasicDescription *a2, int a3, void *a4)
{
  mFormatID = a1->mFormatID;
  v10 = mFormatID == 1634754915 || mFormatID == 1902211171 || mFormatID == 1885433955;
  if (v10 && ((v11 = a2->mFormatID, v11 != 1718382635) ? (v12 = v11 == 1885564203) : (v12 = 1), !v12 ? (v13 = v11 == 1819304813) : (v13 = 1), v13))
  {
    if (_os_feature_enabled_impl())
    {
      v14 = checkForDecoderExemption(a1->mFormatID) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = 1;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  ForcedInstantiationMode = getForcedInstantiationMode(a1);
  if ((ForcedInstantiationMode & 0x100000000) != 0)
  {
    if (ForcedInstantiationMode != 1)
    {
LABEL_28:
      v18 = 0;
      v17 = 2742;
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v15)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v18 = 0;
  v29 = a1->mFormatID;
  v17 = 2742;
  if (v29 != 1819304813 && v29 != 1885564203)
  {
    if (!_os_feature_enabled_impl() || (checkForDecoderExemption(a1->mFormatID) & 1) != 0)
    {
      v18 = 0;
      goto LABEL_29;
    }

LABEL_27:
    v17 = 2758;
    v18 = 1;
  }

LABEL_29:
  v19 = a1->mFormatID;
  v20 = a2->mFormatID;
  v30[0] = 0;
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"converterkTracesPermitted", @"com.apple.coreaudio", v30);
  v22 = 0;
  if (v30[0] && AppBooleanValue)
  {
    kdebug_trace();
    v22 = v17 | 0x100000000;
  }

  v23 = a1->mFormatID;
  v24 = a2->mFormatID;
  if (v18)
  {
    v25 = 2752;
  }

  else
  {
    v25 = 2736;
  }

  v38 = v25;
  v39 = v23;
  v40 = v24;
  v41 = 0;
  v42 = 0;
  if (v18)
  {
    v26 = newAudioConverterOOP;
  }

  else
  {
    v26 = newAudioConverter;
  }

  kdebug_trace();
  v30[0] = 1;
  v31 = v25;
  v32 = v23;
  v33 = v24;
  v34 = 0;
  v35 = 0;
  v37[0] = 0;
  v36 = 1;
  AT::ScopedTrace::~ScopedTrace(v37);
  v27 = AudioConverterNewInternal(a1, a2, 0, 0, a4, v26, a3 & 0xFFFFFFF9, v22);
  AT::ScopedTrace::~ScopedTrace(v30);
  return v27;
}

void sub_18F5E3904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AT::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

uint64_t getForcedInstantiationMode(AudioStreamBasicDescription *a1)
{
  v1 = a1;
  {
    if (a1)
    {
      getAuditToken(&__p);
      getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker = 0;
      CachingEntitlementChecker::CachingEntitlementChecker(&__p, v16);
    }
  }

  if (PlatformUtilities::IsInternalBuild(a1))
  {
    v2 = getenv("CoreAudio_loadAudioConverterOutOfProcess");
    if (v2)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, v2);
      if (v19 < 0)
      {
        if (v18 == 1)
        {
          v14 = __p;
          if (*__p == 48)
          {
            v10 = 0;
LABEL_32:
            operator delete(v14);
            goto LABEL_33;
          }

          goto LABEL_30;
        }

        if (v18 != 2)
        {
          goto LABEL_30;
        }

        p_p = __p;
LABEL_23:
        if (*p_p == 20302)
        {
          v10 = 0;
          if (v19 < 0)
          {
            goto LABEL_31;
          }

          goto LABEL_33;
        }

LABEL_30:
        v10 = 1;
        if (v19 < 0)
        {
LABEL_31:
          v14 = __p;
          goto LABEL_32;
        }

LABEL_33:
        v13 = 0x100000000;
        return v10 | v13;
      }

      if (v19 != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_30;
        }

        p_p = &__p;
        goto LABEL_23;
      }

      if (__p != 48)
      {
        goto LABEL_30;
      }

LABEL_27:
      v10 = 0;
      goto LABEL_33;
    }
  }

  mFormatID = v1->mFormatID;
  if (mFormatID != 1819304813 && mFormatID != 1885564203)
  {
    os_unfair_lock_lock(&getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker);
    hasEntitlement = CachingEntitlementChecker::hasEntitlement(@"com.apple.coreaudio.LoadDecodersInProcess", v11);
    os_unfair_lock_unlock(&getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker);
    if (hasEntitlement)
    {
      goto LABEL_27;
    }
  }

  os_unfair_lock_lock(&getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker);
  v7 = CachingEntitlementChecker::hasEntitlement(@"com.apple.coreaudio.LoadConvertersInProcess", v6);
  os_unfair_lock_unlock(&getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker);
  if (v7)
  {
    goto LABEL_27;
  }

  if (PlatformUtilities::IsInternalBuild(v8))
  {
    LOBYTE(__p) = 0;
    AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"loadAudioConverterOutOfProcess", @"com.apple.coreaudio", &__p);
    if (__p)
    {
      v10 = AppBooleanValue;
      goto LABEL_33;
    }
  }

  v13 = 0;
  v10 = 0;
  return v10 | v13;
}

BOOL CachingEntitlementChecker::hasEntitlement(__CFString *this, const __CFString *a2)
{
  if (*qword_1ED7462A8)
  {
    v9 = 0;
    if ((CACFDictionary::GetBool((qword_1ED7462A8 + 8), this, &v9) & 1) == 0)
    {
      v3 = SecTaskCopyValueForEntitlement(*qword_1ED7462A8, this, 0);
      if (v3)
      {
        v4 = v3;
        v5 = CFGetTypeID(v3);
        v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
        v9 = v6;
        CFRelease(v4);
      }

      CACFDictionary::AddBool((qword_1ED7462A8 + 8), this);
    }

    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_18F5E44BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  MEMORY[0x193ADF220](a10, 0x1080C4066A550C5);
  std::unique_ptr<acv2::AudioConverterChain>::reset[abi:ne200100](v44, 0);
  AudioConverterAPI::~AudioConverterAPI(v42);
  MEMORY[0x193ADF220](v42, v43);
  _Unwind_Resume(a1);
}

uint64_t AudioConverterNewInternal(const AudioStreamBasicDescription *a1, const AudioStreamBasicDescription *a2, uint64_t a3, const AudioClassDescription *a4, void *a5, uint64_t (*a6)(const AudioStreamBasicDescription *, const AudioStreamBasicDescription *, unsigned int, const AudioClassDescription *, unsigned int), uint64_t a7, uint64_t a8)
{
  v76[19] = *MEMORY[0x1E69E9840];
  if (gWorkgroundInitOnce[0] != -1)
  {
    dispatch_once(gWorkgroundInitOnce, &__block_literal_global_34);
  }

  v16 = a6(a1, a2, a3, a4, a7);
  LOBYTE(v53[0]) = 0;
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"converterkTracesPermitted", @"com.apple.coreaudio", v53);
  if (v53[0] & AppBooleanValue)
  {
    *(v16 + 13) = 1;
    *(v16 + 24) = a8;
    *(v16 + 28) = BYTE4(a8);
  }

  *a5 = *(v16 + 8);
  memset(v61, 0, 40);
  memset(v60, 0, 40);
  v59 = 40;
  v18 = (*(*v16 + 48))(v16, 1633904996, &v59, v61);
  if (v18)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v19 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AudioConverter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1015;
      v63 = 1024;
      LODWORD(v64) = v18;
      _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to determine actual converter source format (err:%d)", buf, 0x18u);
    }

    v20 = *&a1->mBytesPerPacket;
    v61[0] = *&a1->mSampleRate;
    v61[1] = v20;
    *&v61[2] = *&a1->mBitsPerChannel;
  }

  v59 = 40;
  v21 = (*(*v16 + 48))(v16, 1633906532, &v59, v60);
  if (v21)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v22 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AudioConverter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1024;
      v63 = 1024;
      LODWORD(v64) = v21;
      _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to determine actual converter destination format (err:%d)", buf, 0x18u);
    }

    v23 = *&a2->mBytesPerPacket;
    v60[0] = *&a2->mSampleRate;
    v60[1] = v23;
    *&v60[2] = *&a2->mBitsPerChannel;
  }

  v24 = *&a1->mBytesPerPacket;
  v57 = *&a1->mSampleRate;
  *v58 = v24;
  *&v58[16] = *&a1->mBitsPerChannel;
  v25 = *&a2->mBytesPerPacket;
  v55 = *&a2->mSampleRate;
  *v56 = v25;
  *&v56[16] = *&a2->mBitsPerChannel;
  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  v26 = MEMORY[0x1E69E54E8];
  if (*v61 != *&v57 || *(&v61[0] + 1) != *(&v57 + 1) || LODWORD(v61[1]) != *v58 || *(&v61[1] + 4) != *&v58[4])
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " (actually: ", 12);
    v27 = __p;
    CA::StreamDescription::AsString(__p, v61, v28, v29);
    if (v50 < 0)
    {
      v27 = __p[0];
    }

    v30 = strlen(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v27, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, ")", 1);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
    }

    std::ostringstream::str[abi:ne200100](__p, buf);
    *v53 = *__p;
    v54 = v50;
    *buf = *v26;
    *&buf[*(*buf - 24)] = v26[3];
    *&buf[8] = MEMORY[0x1E69E5548] + 16;
    if (v75 < 0)
    {
      operator delete(*&v74[2]);
    }

    *&buf[8] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&buf[16]);
    std::ostream::~ostream();
    MEMORY[0x193ADF120](v76);
  }

  if (*v60 != *&v55 || *(&v60[0] + 1) != *(&v55 + 1) || LODWORD(v60[1]) != *v56 || *(&v60[1] + 4) != *&v56[4])
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " (actually: ", 12);
    v31 = __p;
    CA::StreamDescription::AsString(__p, v60, v32, v33);
    if (v50 < 0)
    {
      v31 = __p[0];
    }

    v34 = strlen(v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v31, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, ")", 1);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
    }

    std::ostringstream::str[abi:ne200100](__p, buf);
    *v51 = *__p;
    v52 = v50;
    *buf = *v26;
    *&buf[*(*buf - 24)] = v26[3];
    *&buf[8] = MEMORY[0x1E69E5548] + 16;
    if (v75 < 0)
    {
      operator delete(*&v74[2]);
    }

    *&buf[8] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&buf[16]);
    std::ostream::~ostream();
    MEMORY[0x193ADF120](v76);
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v35 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    if (a6 == newAudioConverter)
    {
      v38 = "in process";
    }

    else
    {
      v38 = "out of process";
    }

    v39 = __p;
    CA::StreamDescription::AsString(__p, &v57, v36, v37);
    if (v50 < 0)
    {
      v39 = __p[0];
    }

    if (v54 >= 0)
    {
      v42 = v53;
    }

    else
    {
      v42 = v53[0];
    }

    CA::StreamDescription::AsString(v47, &v55, v40, v41);
    if (v48 >= 0)
    {
      v43 = v47;
    }

    else
    {
      v43 = v47[0];
    }

    v44 = v51;
    if (v52 < 0)
    {
      v44 = v51[0];
    }

    *buf = 136316930;
    *&buf[4] = "AudioConverter.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1044;
    v63 = 2080;
    v64 = v38;
    v65 = 2048;
    v66 = v16;
    v67 = 2080;
    v68 = v39;
    v69 = 2080;
    v70 = v42;
    v71 = 2080;
    v72 = v43;
    v73 = 2080;
    *v74 = v44;
    _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created a new %s converter -> %p, from %s%s to %s%s", buf, 0x4Eu);
    if (v48 < 0)
    {
      operator delete(v47[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }

  v45 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_18F5E4F4C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, __int128 a44, __int128 a45, uint64_t a46, uint64_t a47, __int128 a48, __int128 a49, uint64_t a50, uint64_t a51, int buf, int a53, int a54, __int16 a55, __int16 a56, __int16 a57, __int16 a58, int a59, int a60, __int16 a61, int a62, __int16 a63)
{
  if (a2)
  {
    std::ostringstream::~ostringstream(&buf);
    if (a24 < 0)
    {
      operator delete(__p);
    }

    v74 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v75 = *v74;
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v76 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        if (v70 == newAudioConverter)
        {
          v77 = "in process";
        }

        else
        {
          v77 = "out of process";
        }

        v78 = *(v69 + 16);
        a48 = *v69;
        a49 = v78;
        a50 = *(v69 + 32);
        v79 = &a35;
        CA::StreamDescription::AsString(&a35, &a48, *&a48, *&v78);
        if (a40 < 0)
        {
          v79 = a35;
        }

        v80 = *(v68 + 16);
        a44 = *v68;
        a45 = v80;
        a46 = *(v68 + 32);
        CA::StreamDescription::AsString(&a26, &a44, *&a44, *&v80);
        if (a31 >= 0)
        {
          v81 = &a26;
        }

        else
        {
          v81 = a26;
        }

        buf = 136316418;
        *(v71 + 4) = "AudioConverter.cpp";
        a55 = 1024;
        *(v71 + 14) = 1054;
        a58 = 2080;
        *(v71 + 20) = v77;
        a61 = 2080;
        *(v71 + 30) = v79;
        a64 = 2080;
        a65 = v81;
        a66 = 1024;
        *(v71 + 50) = v75;
        _os_log_impl(&dword_18F5DF000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create a new %s converter -> from %s to %s, with status %i", &buf, 0x36u);
        if (a31 < 0)
        {
          operator delete(a26);
        }

        if (a40 < 0)
        {
          operator delete(a35);
        }
      }
    }

    else
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v82 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        if (v70 == newAudioConverter)
        {
          v83 = "in process";
        }

        else
        {
          v83 = "out of process";
        }

        v84 = *(v69 + 16);
        a48 = *v69;
        a49 = v84;
        a50 = *(v69 + 32);
        v85 = &a35;
        CA::StreamDescription::AsString(&a35, &a48, *&a48, *&v84);
        if (a40 < 0)
        {
          v85 = a35;
        }

        v86 = *(v68 + 16);
        a44 = *v68;
        a45 = v86;
        a46 = *(v68 + 32);
        CA::StreamDescription::AsString(&a26, &a44, *&a44, *&v86);
        if (a31 >= 0)
        {
          v87 = &a26;
        }

        else
        {
          v87 = a26;
        }

        buf = 136316162;
        *(v71 + 4) = "AudioConverter.cpp";
        a55 = 1024;
        *(v71 + 14) = 1060;
        a58 = 2080;
        *(v71 + 20) = v83;
        a61 = 2080;
        *(v71 + 30) = v85;
        a64 = 2080;
        a65 = v87;
        _os_log_impl(&dword_18F5DF000, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception when creating new %s converter -> from %s to %s", &buf, 0x30u);
        if (a31 < 0)
        {
          operator delete(a26);
        }

        if (a40 < 0)
        {
          operator delete(a35);
        }
      }
    }

    __cxa_end_catch();
    if ((v67 & 0x100000000) != 0)
    {
      v88 = *(v69 + 8);
      v89 = *(v68 + 8);
      kdebug_trace();
    }

    *v66 = 0;
    JUMPOUT(0x18F5E4EACLL);
  }

  _Unwind_Resume(a1);
}

void sub_18F5E52FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F5E52F4);
  }

  JUMPOUT(0x18F5E4FF4);
}

void sub_18F5E5308(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F5E52F4);
  }

  JUMPOUT(0x18F5E4FF8);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void std::vector<char>::vector[abi:ne200100](void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
}

void sub_18F5E53C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F5E60DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  MEMORY[0x193ADF220](v38, 0x10B3C404482F264);
  HOA::RotationMatrix::~RotationMatrix(&__p);
  a30 = &a10;
  std::vector<std::unique_ptr<acv2::AudioConverterBase>>::__destroy_vector::operator()[abi:ne200100](&a30);
  HOA::RotationMatrix::~RotationMatrix(&a24);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
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

uint64_t std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F5E6398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__int128 *acv2::PCMConverterFactory::AddDownReinterleaver(__int128 *result, __int32 **a2, uint64_t a3)
{
  v3 = *(result + 17);
  v4 = *(result + 7);
  if (v3 < v4)
  {
    v6 = result;
    acv2::MixableFormatPair(*(result + 7), v3, *a2, a2[3]);
    if (*(a3 + 120) == 1)
    {
      v7 = *(a3 + 104) - *(a3 + 96);
    }

    v14 = *v6;
    v15 = v6[1];
    v16 = *(v6 + 4);
    v8 = *(v6 + 13) & 0x20;
    v9 = *(v6 + 3);
    if ((v9 & 0x20) != 0)
    {
      v4 = 1;
    }

    else if (!v4)
    {
      v10 = (*(v6 + 8) + 7) >> 3;
      goto LABEL_9;
    }

    v10 = *(v6 + 6) / v4;
LABEL_9:
    v11 = v9 & 0xFFFFFFDF;
    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = v3;
    }

    v13 = v10 * v12;
    *(v6 + 4) = v13;
    *(v6 + 5) = 1;
    *(v6 + 6) = v13;
    *(v6 + 7) = v3;
    *(v6 + 3) = v11 | v8;
    v17 = *v6;
    v19 = *(v6 + 4);
    v18 = v6[1];
    operator new();
  }

  return result;
}

uint64_t acv2::PCMConverterFactory::AddPCMToGoal(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a2 + 16);
  v68 = *a2;
  v69 = v6;
  v70 = *(a2 + 32);
  v8 = a1[2];
  v7 = a1[3];
  v10 = a1[8];
  v9 = a1[9];
  v11 = HIDWORD(v6);
  v12 = BYTE12(v68) & 0x20;
  if ((v7 & 0x20) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = a1[7];
    if (!v13)
    {
      v14 = (v10 + 7) >> 3;
      goto LABEL_6;
    }
  }

  v14 = a1[6] / v13;
LABEL_6:
  v15 = v7 & 0xFFFFFFDF;
  if ((BYTE12(v68) & 0x20) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = HIDWORD(v6);
  }

  v17 = v68;
  *&v71 = v68;
  v18 = v14 * v16;
  v19 = v12 | v15;
  DWORD2(v71) = v8;
  HIDWORD(v71) = v12 | v15;
  LODWORD(v72) = v14 * v16;
  DWORD1(v72) = 1;
  DWORD2(v72) = v14 * v16;
  HIDWORD(v72) = HIDWORD(v6);
  v73 = __PAIR64__(v9, v10);
  v20 = HIDWORD(v6);
  if (!a5 || (v21 = *(a3 + 56), v20 = HIDWORD(v6), !v21))
  {
    if (v20 != 2 || HIDWORD(v6) != 2 || *(a3 + 56))
    {
      goto LABEL_140;
    }

    *&v71 = v68;
    DWORD2(v71) = v8;
    HIDWORD(v71) = v12 | v15;
    *&v72 = v18 | 0x100000000;
    *(&v72 + 1) = v18 | 0x200000000;
    v73 = __PAIR64__(v9, v10);
    if (a5)
    {
      v52 = *(a2 + 52) & 0x20;
      if ((v12 == 0) != (v52 == 0))
      {
        DWORD2(v72) = v18 >> (((BYTE12(v68) & 0x20) >> 5) ^ 1) << (((*(a2 + 52) & 0x20u) >> 5) ^ 1);
        HIDWORD(v71) = v52 | v15;
        LODWORD(v72) = v18 >> (((BYTE12(v68) & 0x20) >> 5) ^ 1) << ((v52 >> 5) ^ 1);
        v12 = v52;
      }
    }

    if (((BYTE12(v68) & 0x20) == 0) == (v12 == 0))
    {
      goto LABEL_140;
    }

    v74[0] = v68;
    v74[1] = v69;
    v75 = v70;
    v65 = v71;
    v66 = v72;
    v67 = v73;
    if (HIDWORD(v69) != 2)
    {
      goto LABEL_140;
    }

    if (HIDWORD(v66) != 2)
    {
      goto LABEL_140;
    }

    v53 = HIDWORD(v74[0]);
    v54 = HIDWORD(v65);
    if (((HIDWORD(v74[0]) | HIDWORD(v65)) & 2) != 0)
    {
      goto LABEL_140;
    }

    v64 = ((BYTE12(v65) & 0x20) == 0) & (HIDWORD(v74[0]) >> 5);
    v55 = IntSampleSize(v74);
    v56 = IntSampleSize(&v65);
    v57 = (v53 >> 7) & 0x3F;
    v58 = (v54 >> 7) & 0x3F;
    if (v55 && v56)
    {
      if (v64)
      {
        if (v57 != 24 || v55 != 4 || v56 != 2)
        {
LABEL_140:
          *&v71 = v17;
          *(&v71 + 1) = __PAIR64__(v19, v8);
          *&v72 = v18 | 0x100000000;
          *(&v72 + 1) = __PAIR64__(v11, v18);
          v73 = __PAIR64__(v9, v10);
          return acv2::PCMConverterFactory::BuildSampleFormatConverterChain(&v68, a2);
        }

LABEL_129:
        operator new();
      }

      if (v58 != 24 || v55 != 2 || v56 != 4)
      {
        goto LABEL_140;
      }
    }

    else
    {
      if (v64)
      {
        v59 = v56;
        if (FloatSampleSize(v74) != 4 || (v58 != 24 || v59 != 4) && (v58 || v59 != 2))
        {
          goto LABEL_140;
        }

        goto LABEL_129;
      }

      v60 = v57;
      if (FloatSampleSize(&v65) != 4 || (v60 != 24 || v55 != 4) && (v58 || v55 != 2))
      {
        goto LABEL_140;
      }
    }

    operator new();
  }

  v65 = 0uLL;
  *&v66 = 0;
  LODWORD(v74[0]) = 1;
  std::vector<CA::CommonPCMFormat>::push_back[abi:ne200100](&v65, v74);
  if (v21 == 3)
  {
    LODWORD(v74[0]) = 3;
    std::vector<CA::CommonPCMFormat>::push_back[abi:ne200100](&v65, v74);
  }

  v22 = v65;
  __p = v65;
  if (v65 == *(&v65 + 1))
  {
    LOBYTE(v24) = 0;
    v23 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v26 = *v22++;
      v25 = v26;
      if (v26 == 3)
      {
        v27 = 1;
      }

      else
      {
        v27 = v24;
      }

      if (v25 == 1)
      {
        v23 = 1;
      }

      else
      {
        v24 = v27;
      }
    }

    while (v22 != *(&v65 + 1));
  }

  v28 = DWORD2(v68) == 1819304813 && DWORD1(v69) == 1;
  if (v28)
  {
    v29 = DWORD2(v69);
    if (DWORD2(v69) == v69 && DWORD2(v69) >= v70 >> 3)
    {
      if (HIDWORD(v69))
      {
        if ((BYTE12(v68) & 0x20) != 0 || (v29 = DWORD2(v69) / HIDWORD(v69), DWORD2(v69) == DWORD2(v69) / HIDWORD(v69) * HIDWORD(v69)))
        {
          v30 = 0;
          if ((BYTE12(v68) & 2) == 0 && 8 * v29 == v70)
          {
            if (BYTE12(v68))
            {
              if ((WORD6(v68) & 0x1F84) != 0)
              {
                goto LABEL_56;
              }

              v30 = 4 * (v29 == 8);
              if (v29 == 4)
              {
                v30 = 1;
              }
            }

            else if ((BYTE12(v68) & 4) != 0)
            {
              v31 = (HIDWORD(v68) >> 7) & 0x3F;
              if (v31 == 24 && v29 == 4)
              {
                v30 = 3;
              }

              else if (v31 || v29 != 4)
              {
                if (v29 == 2 && v31 == 0)
                {
                  v30 = 2;
                }

                else
                {
                  v30 = 0;
                }
              }

              else
              {
                v30 = 5;
              }
            }

            else
            {
              v30 = 0;
            }
          }

          if (((v30 == 3) & v24) != 0 || ((v30 == 1) & v23) != 0)
          {
            goto LABEL_70;
          }
        }
      }
    }
  }

LABEL_56:
  if (v24)
  {
    v33 = 2;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 & 0xFFFFFFFE | v23 & 1;
  if (v34 <= 1)
  {
    if (!v34)
    {
      goto LABEL_70;
    }

    v35 = 9;
    v36 = BYTE12(v68);
    goto LABEL_67;
  }

  if (v34 == 2)
  {
    v36 = BYTE12(v68);
LABEL_65:
    v35 = 3084;
    goto LABEL_67;
  }

  v36 = BYTE12(v68);
  if ((BYTE12(v68) & 1) == 0)
  {
    goto LABEL_65;
  }

  v35 = 9;
LABEL_67:
  v37 = v36 & 0x20;
  v28 = v37 == 0;
  v38 = v37 | v35;
  v39 = 4 * HIDWORD(v69);
  if (!v28)
  {
    v39 = 4;
  }

  *&v71 = v68;
  DWORD2(v71) = 1819304813;
  HIDWORD(v71) = v38;
  *&v72 = v39 | 0x100000000;
  *(&v72 + 1) = __PAIR64__(HIDWORD(v69), v39);
  v73 = 32;
  v40 = acv2::PCMConverterFactory::BuildSampleFormatConverterChain(&v68, &v68);
  if (v40)
  {
    goto LABEL_99;
  }

LABEL_70:
  v41 = *(a3 + 56);
  v42 = 0;
  if ((v41 - 1) > 2)
  {
    v43 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_95;
  }

  v43 = 0;
  v44 = dword_18F921080[v41 - 1];
  v45 = BYTE12(v68) & 0x20;
  if (v44 > 2)
  {
    if (v44 != 3)
    {
      if (v44 == 4)
      {
        v46 = v45 | 9;
        if ((BYTE12(v68) & 0x20) != 0)
        {
          v47 = 8;
        }

        else
        {
          v47 = 8 * HIDWORD(v69);
        }

        v50 = 64;
        goto LABEL_94;
      }

      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      if (v44 != 5)
      {
        goto LABEL_95;
      }

      v46 = v45 | 0xC;
      goto LABEL_90;
    }

    v51 = 3084;
LABEL_89:
    v46 = v45 | v51;
LABEL_90:
    if ((BYTE12(v68) & 0x20) != 0)
    {
      v47 = 4;
    }

    else
    {
      v47 = 4 * HIDWORD(v69);
    }

    v50 = 32;
    goto LABEL_94;
  }

  if (v44 == 1)
  {
    v51 = 9;
    goto LABEL_89;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (v44 != 2)
  {
    goto LABEL_95;
  }

  v46 = v45 | 0xC;
  if ((BYTE12(v68) & 0x20) != 0)
  {
    v47 = 2;
  }

  else
  {
    v47 = 2 * HIDWORD(v69);
  }

  v50 = 16;
LABEL_94:
  v48 = 1;
  v42 = v68;
  v43 = 1819304813;
  v49 = HIDWORD(v69);
LABEL_95:
  v40 = 1869627199;
  *&v71 = v42;
  *(&v71 + 1) = __PAIR64__(v46, v43);
  *&v72 = __PAIR64__(v48, v47);
  *(&v72 + 1) = __PAIR64__(v49, v47);
  v73 = v50;
  if ((v10 < 0x19 || (v46 & 1) == 0) && ((v46 & 5) != 4 || v50 <= v10))
  {
    switch(v41)
    {
      case 3:
        operator new();
      case 2:
        operator new();
      case 1:
        operator new();
    }
  }

LABEL_99:
  if (__p)
  {
    operator delete(__p);
  }

  return v40;
}

void sub_18F5E73D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  _ZNSt3__18valarrayIDv8_fED2Ev(a10);
  std::valarray<float>::~valarray(a9);
  acv2::AudioConverterBase::~AudioConverterBase(v17);
  MEMORY[0x193ADF220]();
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AT::ScopedTrace::~ScopedTrace(AT::ScopedTrace *this)
{
  if (*this == 1)
  {
    v1 = *(this + 1);
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(this + 3);
    v5 = *(this + 4);
    kdebug_trace();
  }
}

uint64_t acv2::PCMConverterFactory::BuildSampleFormatConverterChain(__int128 *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a1 != 0.0 && ((v3 = *(a1 + 5), v3 != 0.0) ? (v4 = *a1 == v3) : (v4 = 1), !v4) || *(a1 + 17) != *(a1 + 7) || ((*(a1 + 12) & 0x20) == 0) != ((*(a1 + 52) & 0x20) == 0))
  {
    std::terminate();
  }

  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  v21 = *(a1 + 4);
  v6 = 3;
  while (1)
  {
    v22 = *(a1 + 40);
    v23 = *(a1 + 56);
    v24 = *(a1 + 9);
    if ((BYTE12(v22) & 0x20) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = HIDWORD(v23);
      if (!HIDWORD(v23))
      {
        v8 = (v24 + 7) >> 3;
        goto LABEL_15;
      }
    }

    v8 = DWORD2(v23) / v7;
LABEL_15:
    v9 = HIDWORD(v20);
    HIDWORD(v23) = HIDWORD(v20);
    if ((BYTE12(v19) & 0x20) != 0)
    {
      v9 = 1;
    }

    DWORD1(v23) = 1;
    DWORD2(v23) = v8 * v9;
    HIDWORD(v22) = HIDWORD(v22) & 0xFFFFFFDF | BYTE12(v19) & 0x20;
    LODWORD(v23) = v8 * v9;
    PCMBlitter_CreateBlitter(&v17, &v19, &v22);
    v10 = v17;
    if (v17)
    {
      if (v17 == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

    v11 = 4 * HIDWORD(v20);
    if ((BYTE12(v19) & 0x20) != 0)
    {
      v11 = 4;
    }

    *&v22 = v19;
    DWORD2(v22) = 1819304813;
    HIDWORD(v22) = BYTE12(v19) & 0x20 | 9;
    *&v23 = v11 | 0x100000000;
    *(&v23 + 1) = __PAIR64__(HIDWORD(v20), v11);
    v24 = 32;
    PCMBlitter_CreateBlitter(buf, &v19, &v22);
    v17 = *buf;
    v18 = *&buf[16];
    v10 = *buf;
    if (*buf <= 1u)
    {
      break;
    }

LABEL_23:
    switch(v10)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
    }

    v19 = v22;
    v20 = v23;
    v21 = v24;
    if (!--v6)
    {
LABEL_30:
      result = 0;
      v13 = v20;
      *a2 = v19;
      *(a2 + 16) = v13;
      *(a2 + 32) = v21;
      goto LABEL_36;
    }
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v14 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "PCMConverter.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 738;
    _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to determine suitable PCM converter", buf, 0x12u);
  }

  result = 1718449215;
LABEL_36:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCMBlitter_CreateBlitter(const CAStreamBasicDescription *a1, CAStreamBasicDescription *a2, CAStreamBasicDescription *a3)
{
  while (1)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      result = FloatSampleSize(a2);
      if (!result)
      {
        goto LABEL_194;
      }

      v13 = result;
      v14 = *(a3 + 3);
      if (v14)
      {
        result = FloatSampleSize(a3);
        if (v13 == result)
        {
LABEL_80:
          v35 = a1;
          *a1 = 1;
          goto LABEL_195;
        }

        if (v13 == 4)
        {
          if (result == 8)
          {
            v41 = a1;
            *a1 = 2;
            v42 = Float32ToNativeFloat64;
            goto LABEL_207;
          }

          if (result != -4)
          {
            if (result == -8)
            {
              v41 = a1;
              *a1 = 2;
              v42 = Float32ToSwapFloat64;
              goto LABEL_207;
            }

            goto LABEL_194;
          }
        }

        else
        {
          if (result != 4)
          {
            if ((v13 == 8 || v13 == -8) && !(result + v13))
            {
              v41 = a1;
              *a1 = 2;
              v42 = SwapPCM64_Portable;
              goto LABEL_207;
            }

            goto LABEL_194;
          }

          if (v13 == 8)
          {
            v41 = a1;
            *a1 = 2;
            v42 = NativeFloat64ToFloat32;
LABEL_207:
            *(v41 + 1) = v42;
            *(v41 + 2) = 1065353216;
            return result;
          }

          if (v13 != -4)
          {
            if (v13 == -8)
            {
              v41 = a1;
              *a1 = 2;
              v42 = SwapFloat64ToFloat32;
              goto LABEL_207;
            }

            goto LABEL_194;
          }
        }

LABEL_157:
        v41 = a1;
        *a1 = 2;
        v42 = SwapPCM32_Portable;
        goto LABEL_207;
      }

      if (result != 4)
      {
        goto LABEL_194;
      }

      v10 = IntSampleSize(a3);
      result = CAStreamBasicDescription::PackednessIsSignificant(a3);
      if (result)
      {
        v12 = *(a3 + 3);
        if ((v12 & 0x10) != 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v12 = *(a3 + 3);
        if ((*(a3 + 8) & 7) == 0 || (v12 & 0x10) != 0)
        {
LABEL_81:
          v36 = (v14 >> 7) & 0x3F;
          if (v10 > 2)
          {
            if (v10 == 3)
            {
              if (v36)
              {
                goto LABEL_194;
              }

              v43 = a1;
              *a1 = 2;
              *(a1 + 2) = 1065353216;
              if ((v12 & 2) != 0)
              {
                v44 = Float32ToSwapInt24_Portable;
              }

              else
              {
                v44 = Float32ToNativeInt24_Portable;
              }
            }

            else
            {
              if (v10 != 4)
              {
                goto LABEL_194;
              }

              if (v36)
              {
                v43 = a1;
                *a1 = 3;
                *(a1 + 4) = (1 << v36);
                *(a1 + 5) = 0;
                if ((v12 & 2) != 0)
                {
                  v44 = Float32ToSwapInt32Scaled_Portable;
                }

                else
                {
                  v44 = Float32ToNativeInt32Scaled_ARM;
                }
              }

              else
              {
                v43 = a1;
                *a1 = 2;
                *(a1 + 2) = 1065353216;
                if ((v12 & 2) != 0)
                {
                  v44 = Float32ToSwapInt32_Portable;
                }

                else
                {
                  v44 = Float32ToNativeInt32_ARM;
                }
              }
            }
          }

          else if (v10 == 1)
          {
            if (v36)
            {
              goto LABEL_194;
            }

            v43 = a1;
            *a1 = 2;
            *(a1 + 2) = 1065353216;
            if ((v12 & 4) != 0)
            {
              v44 = Float32ToSInt8;
            }

            else
            {
              v44 = Float32ToUInt8;
            }
          }

          else
          {
            if (v10 != 2 || v36)
            {
              goto LABEL_194;
            }

            v43 = a1;
            *a1 = 2;
            *(a1 + 2) = 1065353216;
            if ((v12 & 2) != 0)
            {
              v44 = Float32ToSwapInt16_Portable;
            }

            else
            {
              v44 = Float32ToNativeInt16_ARM;
            }
          }

          goto LABEL_229;
        }
      }

      LODWORD(v8) = 0;
      v7 = 4;
      goto LABEL_22;
    }

    result = IntSampleSize(a2);
    if (!result)
    {
      goto LABEL_194;
    }

    v7 = result;
    v8 = (v5 >> 7) & 0x3F;
    v9 = *(a3 + 3);
    if (v9)
    {
      break;
    }

    result = IntSampleSize(a3);
    if (!result)
    {
      goto LABEL_194;
    }

    v10 = result;
    if ((CAStreamBasicDescription::PackednessIsSignificant(a2) & 1) != 0 || (*(a2 + 8) & 7) != 0)
    {
      v11 = (*(a2 + 12) >> 4) & 1;
    }

    else
    {
      v11 = 1;
    }

    result = CAStreamBasicDescription::PackednessIsSignificant(a3);
    if (result)
    {
      v12 = *(a3 + 3);
LABEL_47:
      v29 = (v12 >> 4) & 1;
      goto LABEL_48;
    }

    v12 = *(a3 + 3);
    if ((*(a3 + 8) & 7) != 0)
    {
      goto LABEL_47;
    }

    v29 = 1;
LABEL_48:
    v30 = (v9 >> 7) & 0x3F;
    if (v7 == v10 && ((v11 ^ v29) & 1) == 0)
    {
      if (v11)
      {
        if (v8 != v30)
        {
          v10 = v7;
          if (v29)
          {
            goto LABEL_111;
          }

          v10 = v7;
          goto LABEL_22;
        }
      }

      else if (v8 != v30 || *(a2 + 8) != *(a3 + 8))
      {
        goto LABEL_75;
      }

      if (v7 == 1)
      {
        v31 = 4;
      }

      else
      {
        v31 = 6;
      }

      v32 = *(a2 + 3) ^ v12;
      if ((v32 & v31) == 0)
      {
        goto LABEL_80;
      }

      if (v7 != 1 && (v32 & 2) != 0)
      {
        switch(v7)
        {
          case 4:
            goto LABEL_157;
          case 3:
            v41 = a1;
            *a1 = 2;
            v42 = SwapPCM24_Portable;
            goto LABEL_207;
          case 2:
            v41 = a1;
            *a1 = 2;
            v42 = SwapPCM16_ARM;
            goto LABEL_207;
        }
      }
    }

    if (v11 & v29)
    {
LABEL_111:
      if ((((v9 >> 7) | (v5 >> 7)) & 0x3F) == 0)
      {
        if (v10 != 2 || (v12 & 2) != 0)
        {
          if (v7 == 2 && (*(a2 + 12) & 2) == 0)
          {
            if (v10 == 3)
            {
              v43 = a1;
              *a1 = 2;
              *(a1 + 2) = 1065353216;
              if ((v12 & 2) != 0)
              {
                v44 = NativeInt16ToSwapInt24_Portable;
              }

              else
              {
                v44 = NativeInt16ToNativeInt24_Portable;
              }

              goto LABEL_229;
            }

            if (v10 == 1)
            {
              v43 = a1;
              *a1 = 2;
              *(a1 + 2) = 1065353216;
              if ((v12 & 4) != 0)
              {
                v44 = NativeInt16ToSInt8_Portable;
              }

              else
              {
                v44 = NativeInt16ToUInt8_Portable;
              }

              goto LABEL_229;
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            v67 = *(a2 + 3);
            v43 = a1;
            *a1 = 2;
            *(a1 + 2) = 1065353216;
            if ((v67 & 2) != 0)
            {
              v44 = SwapInt24ToNativeInt16_Portable;
            }

            else
            {
              v44 = NativeInt24ToNativeInt16_Portable;
            }

            goto LABEL_229;
          }

          if (v7 == 1)
          {
            v57 = *(a2 + 3);
            v43 = a1;
            *a1 = 2;
            *(a1 + 2) = 1065353216;
            if ((v57 & 4) != 0)
            {
              v44 = SInt8ToNativeInt16_Portable;
            }

            else
            {
              v44 = UInt8ToNativeInt16_Portable;
            }

            goto LABEL_229;
          }
        }
      }

      v45 = *(a2 + 3);
      v46 = 8 * v7 - 1;
      if (((v45 >> 7) & 0x3F) != 0)
      {
        v46 = (v45 >> 7) & 0x3F;
      }

      v47 = (v12 >> 7) & 0x3F;
      if (!v47)
      {
        v47 = 8 * v10 - 1;
      }

      if (v7 == 4 && v10 == 4)
      {
        v48 = v47 - v46;
        if (v47 == v46)
        {
          goto LABEL_194;
        }

        v49 = a1;
        *a1 = 4;
        *(a1 + 4) = 1065353216;
        *(a1 + 5) = v48;
        if ((v45 & 2) != 0)
        {
          if ((v12 & 2) != 0)
          {
            v50 = SwapInt32ToSwapInt32_Portable;
          }

          else
          {
            v50 = SwapInt32ToNativeInt32_Portable;
          }
        }

        else if ((v12 & 2) != 0)
        {
          v50 = NativeInt32ToSwapInt32_Portable;
        }

        else
        {
          v50 = NativeInt32ToNativeInt32_ARM;
        }
      }

      else if (v8 || v10 != 4)
      {
        if (v7 != 4 || v30)
        {
          goto LABEL_194;
        }

        v62 = v46 - v47;
        if (v10 == 3)
        {
          v49 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v62;
          if ((v45 & 2) != 0)
          {
            if ((v12 & 2) != 0)
            {
              v50 = SwapInt32ToSwapInt24;
            }

            else
            {
              v50 = SwapInt32ToNativeInt24_Portable;
            }
          }

          else if ((v12 & 2) != 0)
          {
            v50 = NativeInt32ToSwapInt24_Portable;
          }

          else
          {
            v50 = NativeInt32ToNativeInt24_ARM;
          }
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_194;
          }

          v49 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v62;
          if ((v45 & 2) != 0)
          {
            if ((v12 & 2) != 0)
            {
              v50 = SwapInt32ToSwapInt16;
            }

            else
            {
              v50 = SwapInt32ToNativeInt16_Portable;
            }
          }

          else if ((v12 & 2) != 0)
          {
            v50 = NativeInt32ToSwapInt16_Portable;
          }

          else
          {
            v50 = NativeInt32ToNativeInt16_ARM;
          }
        }
      }

      else
      {
        v56 = v47 - v46;
        if (v7 == 3)
        {
          v49 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v56;
          if ((v45 & 2) != 0)
          {
            if ((v12 & 2) != 0)
            {
              v50 = SwapInt24ToSwapInt32;
            }

            else
            {
              v50 = SwapInt24ToNativeInt32_Portable;
            }
          }

          else if ((v12 & 2) != 0)
          {
            v50 = NativeInt24ToSwapInt32;
          }

          else
          {
            v50 = NativeInt24ToNativeInt32_ARM;
          }
        }

        else
        {
          if (v7 != 2)
          {
            goto LABEL_194;
          }

          v49 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v56;
          if ((v45 & 2) != 0)
          {
            if ((v12 & 2) != 0)
            {
              v50 = SwapInt16ToSwapInt32;
            }

            else
            {
              v50 = SwapInt16ToNativeInt32_Portable;
            }
          }

          else if ((v12 & 2) != 0)
          {
            v50 = NativeInt16ToSwapInt32;
          }

          else
          {
            v50 = NativeInt16ToNativeInt32_ARM;
          }
        }
      }

      *(v49 + 1) = v50;
      return result;
    }

    if (v11)
    {
LABEL_22:
      if ((v12 & 2) != 0)
      {
        *(a3 + 3) = v12 & 0xFFFFFFFD;
      }

      if (v10 == 8)
      {
        v16 = *(a2 + 3);
        if ((v16 & 1) == 0)
        {
          goto LABEL_194;
        }

        v21 = *(a3 + 8);
        if (v21 > 0x20)
        {
          goto LABEL_194;
        }

        if (v7 == 4 && (v16 & 2) == 0)
        {
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v21;
          v44 = Float32ToNativeLowAlignedInt64_ARM;
          goto LABEL_229;
        }

LABEL_42:
        v22 = *a2;
        v23 = *(a2 + 7);
        v25 = v16 & 0x20;
        v24 = v25 == 0;
        v26 = 9;
        goto LABEL_43;
      }

      if (v10 != 4)
      {
        goto LABEL_194;
      }

      v16 = *(a2 + 3);
      if (v16)
      {
        if (v7 == 4 && (v16 & 2) == 0)
        {
          v51 = *(a3 + 8);
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v51;
          v44 = Float32ToNativeLowAlignedInt32_ARM;
          goto LABEL_229;
        }

        goto LABEL_42;
      }

      v17 = *(a3 + 8);
      if (*(a2 + 8) <= 0x10u && v17 == 16)
      {
        if ((v16 & 2) == 0 && !v8 && v7 == 2)
        {
          v41 = a1;
          *a1 = 2;
          v42 = NativeInt16ToLowAlignedInt32_ARM;
          goto LABEL_207;
        }

        v18 = *(a2 + 7);
        v19 = *(a2 + 3) & 0x20 | 0xC;
        v20 = 2 * v18;
        if ((*(a2 + 3) & 0x20) != 0)
        {
          v20 = 2;
        }

        *a3 = *a2;
        *(a3 + 2) = 1819304813;
        *(a3 + 3) = v19;
        *(a3 + 4) = v20;
        *(a3 + 5) = 1;
        *(a3 + 6) = v20;
        *(a3 + 7) = v18;
        *(a3 + 4) = 16;
      }

      else
      {
        if (v17 > 0x18)
        {
          goto LABEL_194;
        }

        if ((v16 & 2) == 0 && v8 == 24 && v7 == 4)
        {
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v17;
          v44 = Native824FixedToLowAlignedInt32_ARM;
          goto LABEL_229;
        }

        v22 = *a2;
        v23 = *(a2 + 7);
        v25 = *(a2 + 3) & 0x20;
        v24 = v25 == 0;
        v26 = 3084;
LABEL_43:
        v27 = v25 | v26;
        v28 = 4 * v23;
        if (!v24)
        {
          v28 = 4;
        }

        *a3 = v22;
        *(a3 + 2) = 1819304813;
        *(a3 + 3) = v27;
        *(a3 + 4) = v28;
        *(a3 + 5) = 1;
        *(a3 + 6) = v28;
        *(a3 + 7) = v23;
        *(a3 + 4) = 32;
      }
    }

    else
    {
LABEL_75:
      if ((*(a2 + 3) & 2) == 0)
      {
        if (v7 == 8)
        {
          if ((*(a3 + 12) & 1) == 0 || *(a2 + 8) > 0x20u)
          {
            goto LABEL_194;
          }

          v52 = *(a2 + 7);
          v53 = *(a2 + 3) & 0x20 | 9;
          v54 = 4 * v52;
          if ((*(a2 + 3) & 0x20) != 0)
          {
            v54 = 4;
          }

          *a3 = *a2;
          *(a3 + 2) = 1819304813;
          *(a3 + 3) = v53;
          *(a3 + 4) = v54;
          *(a3 + 5) = 1;
          *(a3 + 6) = v54;
          *(a3 + 7) = v52;
          *(a3 + 4) = 32;
          v55 = *(a2 + 8);
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v55;
          v44 = NativeLowAlignedInt64ToFloat32_ARM;
          goto LABEL_229;
        }

        if (v7 != 4)
        {
          goto LABEL_194;
        }

        if (*(a3 + 12))
        {
          v58 = *(a2 + 7);
          v59 = *(a2 + 3) & 0x20 | 9;
          v60 = 4 * v58;
          if ((*(a2 + 3) & 0x20) != 0)
          {
            v60 = 4;
          }

          *a3 = *a2;
          *(a3 + 2) = 1819304813;
          *(a3 + 3) = v59;
          *(a3 + 4) = v60;
          *(a3 + 5) = 1;
          *(a3 + 6) = v60;
          *(a3 + 7) = v58;
          *(a3 + 4) = 32;
          v61 = *(a2 + 8);
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v61;
          v44 = NativeLowAlignedInt32ToFloat32_ARM;
          goto LABEL_229;
        }

        v37 = *(a2 + 8);
        if (v37 != 16 || *(a3 + 8) > 0x10u)
        {
          if (v37 > 0x18)
          {
            goto LABEL_194;
          }

          v63 = *(a2 + 7);
          v64 = *(a2 + 3) & 0x20 | 0xC0C;
          v65 = 4 * v63;
          if ((*(a2 + 3) & 0x20) != 0)
          {
            v65 = 4;
          }

          *a3 = *a2;
          *(a3 + 2) = 1819304813;
          *(a3 + 3) = v64;
          *(a3 + 4) = v65;
          *(a3 + 5) = 1;
          *(a3 + 6) = v65;
          *(a3 + 7) = v63;
          *(a3 + 4) = 32;
          v66 = *(a2 + 8);
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v66;
          v44 = NativeLowAlignedInt32To824Fixed_ARM;
          goto LABEL_229;
        }

        v38 = *(a2 + 7);
        v39 = *(a2 + 3) & 0x20 | 0xC;
        v40 = 2 * v38;
        if ((*(a2 + 3) & 0x20) != 0)
        {
          v40 = 2;
        }

        *a3 = *a2;
        *(a3 + 2) = 1819304813;
        *(a3 + 3) = v39;
        *(a3 + 4) = v40;
        *(a3 + 5) = 1;
        *(a3 + 6) = v40;
        *(a3 + 7) = v38;
        *(a3 + 4) = 16;
        v41 = a1;
        *a1 = 2;
        v42 = NativeLowAlignedInt32ToInt16_ARM;
        goto LABEL_207;
      }

      v34 = *a2;
      v33 = *(a2 + 1);
      *(a3 + 4) = *(a2 + 4);
      *a3 = v34;
      *(a3 + 1) = v33;
      *(a3 + 3) ^= 2u;
    }
  }

  result = FloatSampleSize(a3);
  if (result != 4)
  {
    goto LABEL_194;
  }

  result = CAStreamBasicDescription::PackednessIsSignificant(a2);
  if (result)
  {
    v15 = *(a2 + 3);
  }

  else
  {
    v15 = *(a2 + 3);
    if ((*(a2 + 8) & 7) == 0)
    {
      goto LABEL_100;
    }
  }

  if ((v15 & 0x10) == 0)
  {
    goto LABEL_75;
  }

LABEL_100:
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (v8)
      {
        goto LABEL_194;
      }

      v43 = a1;
      *a1 = 2;
      *(a1 + 2) = 1065353216;
      if ((v15 & 2) != 0)
      {
        v44 = SwapInt24ToFloat32_Portable;
      }

      else
      {
        v44 = NativeInt24ToFloat32_Portable;
      }
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_194;
      }

      if (v8)
      {
        v43 = a1;
        *a1 = 3;
        *(a1 + 4) = 1.0 / (1 << v8);
        *(a1 + 5) = 0;
        if ((v15 & 2) != 0)
        {
          v44 = SwapInt32ToFloat32Scaled_Portable;
        }

        else
        {
          v44 = NativeInt32ToFloat32Scaled_ARM;
        }
      }

      else
      {
        v43 = a1;
        *a1 = 2;
        *(a1 + 2) = 1065353216;
        if ((v15 & 2) != 0)
        {
          v44 = SwapInt32ToFloat32_Portable;
        }

        else
        {
          v44 = NativeInt32ToFloat32_Portable;
        }
      }
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2 && !v8)
      {
        v43 = a1;
        *a1 = 2;
        *(a1 + 2) = 1065353216;
        if ((v15 & 2) != 0)
        {
          v44 = SwapInt16ToFloat32_Portable;
        }

        else
        {
          v44 = NativeInt16ToFloat32_ARM;
        }

        goto LABEL_229;
      }

LABEL_194:
      v35 = a1;
      *a1 = 0;
LABEL_195:
      *(v35 + 1) = 0;
      *(v35 + 2) = 1065353216;
      return result;
    }

    if (v8)
    {
      goto LABEL_194;
    }

    v43 = a1;
    *a1 = 2;
    *(a1 + 2) = 1065353216;
    if ((v15 & 4) != 0)
    {
      v44 = SInt8ToFloat32;
    }

    else
    {
      v44 = UInt8ToFloat32;
    }
  }

LABEL_229:
  *(v43 + 1) = v44;
  return result;
}

uint64_t FloatSampleSize(_DWORD *a1)
{
  v1 = a1[2];
  if (v1 != 1885564203 && v1 != 1819304813 || a1[5] != 1)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a1[7];
  if (v4 != a1[6] || v5 == 0)
  {
    return 0;
  }

  v7 = a1[3];
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8];
  if (v8 != 64 && v8 != 32)
  {
    return 0;
  }

  v9 = v8 >> 3;
  if (v4)
  {
    if ((v7 & 0x20) != 0)
    {
      v5 = 1;
    }

    v4 /= v5;
  }

  if ((v7 & 2) != 0)
  {
    v10 = -v9;
  }

  else
  {
    v10 = v9;
  }

  if (v4 == v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t IntSampleSize(_DWORD *a1)
{
  v1 = a1[2];
  if (v1 != 1885564203 && v1 != 1819304813 || a1[5] != 1)
  {
    return 0;
  }

  v4 = a1[4];
  if (v4 != a1[6] || a1[7] == 0)
  {
    return 0;
  }

  v6 = 0;
  v8 = a1[3];
  if ((v8 & 1) != 0 || !v4)
  {
    return v6;
  }

  v9 = (v8 & 0x20) != 0 ? 1 : a1[7];
  LODWORD(v6) = v4 / v9;
  if ((v6 - 9) < 0xFFFFFFF8)
  {
    return 0;
  }

  v10 = a1[8];
  if (!v10 || v10 > 8 * v6 || (v8 & 8) != 0 && v10 != 8 * v6)
  {
    return 0;
  }

  if (v6 != 1 && (a1[3] & 4) == 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t acv2::PCMConverterFactory::AddUpReinterleaver(__int128 *a1, __int32 **a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *(a1 + 17);
  v9 = *(a1 + 7);
  result = acv2::MixableFormatPair(v9, v8, *a2, a2[3]);
  v11 = (a5 & 1) == 0 && *(a3 + 120) == 1 && v8 == (*(a3 + 104) - *(a3 + 96)) >> 2;
  if ((v8 > v9) | (v11 | result) & 1)
  {
    v12 = *(a1 + 3);
    v13 = *(a1 + 13) & 0x20;
    goto LABEL_8;
  }

  v12 = *(a1 + 3);
  v13 = *(a1 + 13) & 0x20;
  if (((v12 & 0x20) == 0) != (v13 == 0))
  {
LABEL_8:
    v14 = a1[1];
    v20 = *a1;
    v21 = v14;
    v22 = *(a1 + 4);
    if ((v12 & 0x20) != 0)
    {
      v9 = 1;
    }

    else if (!v9)
    {
      v15 = (*(a1 + 8) + 7) >> 3;
      goto LABEL_13;
    }

    v15 = *(a1 + 6) / v9;
LABEL_13:
    v16 = v12 & 0xFFFFFFDF;
    if (v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = v8;
    }

    v18 = v15 * v17;
    *(a1 + 4) = v18;
    *(a1 + 5) = 1;
    *(a1 + 6) = v18;
    *(a1 + 7) = v8;
    *(a1 + 3) = v16 | v13;
    v19 = a1[1];
    v23 = *a1;
    v25 = *(a1 + 4);
    v24 = v19;
    operator new();
  }

  return result;
}

uint64_t acv2::MixableFormatPair(unsigned int a1, unsigned int a2, __int32 *a3, __int32 *a4)
{
  if (a1 <= 2)
  {
    if (a2 <= 2)
    {
      v4 = a1 == a2;
      return !v4;
    }

    v5 = *a4;
    if (*a4 != 0x10000)
    {
      if (!v5)
      {
        v5 = a4[2];
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v6 = a4[1];
    goto LABEL_18;
  }

  v5 = *a3;
  if (a2 <= 2)
  {
    if (v5 != 0x10000)
    {
      if (!v5)
      {
        v5 = a3[2];
LABEL_19:
        v4 = v5 == 0;
        return !v4;
      }

LABEL_15:
      v5 = v5;
      goto LABEL_19;
    }

    v6 = a3[1];
LABEL_18:
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v5 = v7.i32[0];
    goto LABEL_19;
  }

  if (v5 == 0x10000)
  {
    v9 = vcnt_s8(a3[1]);
    v9.i16[0] = vaddlv_u8(v9);
    if (!v9.i32[0])
    {
      return 0;
    }
  }

  else if (v5)
  {
    if (!*a3)
    {
      return 0;
    }
  }

  else if (!a3[2])
  {
    return 0;
  }

  v10 = *a4;
  if (*a4 == 0x10000)
  {
    v11 = vcnt_s8(a4[1]);
    v11.i16[0] = vaddlv_u8(v11);
    if (!v11.i32[0])
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v10)
  {
    if (*a4)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (!a4[2])
  {
    return 0;
  }

LABEL_33:
  if (v5 != v10)
  {
    return 1;
  }

  if (!v5)
  {
    v12 = a3[2];
    if (v12 == a4[2])
    {
      if (!v12)
      {
        return 0;
      }

      v13 = a3 + 3;
      for (i = a4 + 3; *v13 == *i; i += 5)
      {
        if (*v13 == 100)
        {
          v15 = *v13 == *i && *(v13 + 1) == *(i + 1);
          if (!v15 || v13[4] != i[4])
          {
            break;
          }
        }

        result = 0;
        v13 += 5;
        if (!--v12)
        {
          return result;
        }
      }
    }

    return 1;
  }

  if (v5 != 0x10000)
  {
    return 0;
  }

  v4 = a3[1] == a4[1];
  return !v4;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
}

void APComponentInstance::postOpen(RenderContextChangeGenerator *this)
{
  if (*(this->mObserver + 19) == 24949)
  {
    outData = 0;
    ioDataSize = 8;
    Property = AudioUnitGetProperty(this, 0x3Cu, 0, 0, &outData, &ioDataSize);
    v3 = outData;
    if (!Property)
    {
      if (outData)
      {
        std::optional<RenderContextChangeGenerator>::emplace[abi:ne200100]<void({block_pointer} {__strong}&)(AudioUnitRenderContext const*),void>(this + 2, &outData);
        v3 = outData;
      }
    }
  }
}

void __Synchronously_block_invoke(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

uint64_t __AudioComponentInstanceNew_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  **(a1 + 48) = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
  return (*(*(a1 + 32) + 16))();
}

void sub_18F5EC79C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC7A8);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC7B4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC7C0);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC7D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (STACK[0x680])
    {
      STACK[0x688] = STACK[0x680];
      JUMPOUT(0x18F5EC7ECLL);
    }

    JUMPOUT(0x18F5EC818);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC7F4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC800);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC84C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F5EC944);
  }

  JUMPOUT(0x18F5EC9E4);
}

void sub_18F5EC884(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC894);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC8B0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC8C0);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC8DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(void))
{
  if (a2)
  {
    if (a27)
    {
      a28();
    }

    JUMPOUT(0x18F5EC9E4);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC93C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_18F5EC970(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(uint64_t))
{
  if (a2)
  {
    if (v28)
    {
      a28(v28);
    }

    JUMPOUT(0x18F5EC9E4);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC99C(uint64_t a1, int a2)
{
  if (a2)
  {
    os_unfair_recursive_lock_unlock();
    JUMPOUT(0x18F5EC9E4);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC9C8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC9D4);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC9D8(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x18F5EB074);
  }

  JUMPOUT(0x18F5EC944);
}

OSStatus AudioUnitInitialize(AudioUnit inUnit)
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (inUnit)
  {
    v1 = (*(*inUnit + 8))(inUnit);
    if (v1)
    {
      v2 = v1;
      if (*((**v1)(v1) + 38) == 24949)
      {
        v3 = **((**v2)(v2) + 112);
        if (v3)
        {
          result = v3(v2[3]);
          if (!result)
          {
            if (v2[3])
            {
              v5 = *((**v2)(v2) + 112);
              if (*(v5 + 160) | *(v5 + 192))
              {
                v14 = 0;
                v15 = 4;
                v6 = (*(v5 + 24))(v2[3], 64, 0, 0, &v14, &v15);
                v7 = v14;
                if (v6)
                {
                  v7 = 0;
                }

                v14 = v7;
                *(v2 + 27) = v7;
                v2[12] = v5;
                if (*(v5 + 192))
                {
                  v2[28][3](v2 + 29);
                  v2[28] = &caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::empty;
                }

                else
                {
                  v16 = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_0>;
                  caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v2 + 28, &v16);
                  (v16[3])(v17);
                }

                v8 = *(v2 + 27);
                if ((v8 - 1) <= 1)
                {
                  operator new();
                }

                if (v8 == 2)
                {
                  operator new();
                }

                if (v8 == 1)
                {
                  operator new();
                }

                if (v8)
                {
                  v16 = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_7>;
                  caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v2 + 23, &v16);
                  (v16[3])(v17);
                  v12 = v2[28];
                  v11 = (v2 + 28);
                  if ((v12[4] & 1) == 0)
                  {
                    v16 = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_8>;
                    caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v11, &v16);
                    (v16[3])(v17);
                  }
                }

                else
                {
                  v16 = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_1>;
                  caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v2 + 23, &v16);
                  (v16[3])(v17);
                  v10 = v2[28];
                  v9 = (v2 + 28);
                  if ((v10[4] & 1) == 0)
                  {
                    v16 = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_2>;
                    caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v9, &v16);
                    (v16[3])(v17);
                  }
                }
              }

              result = 0;
            }

            else
            {
              result = -66740;
            }
          }
        }

        else
        {
          result = -4;
        }
      }

      else
      {
        result = -3000;
      }
    }

    else
    {
      result = 560947818;
    }
  }

  else
  {
    result = -50;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F5ECEFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioChannelLayout *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = funopen(&v11, 0, CAMemoryStream::Write, 0, 0);
  v5 = v4;
  v11 = v4;
  if (a2)
  {
    fprintf(v4, "tag=0x%x", a2->mChannelLayoutTag);
    if (a2->mChannelLayoutTag)
    {
      if (a2->mChannelLayoutTag == 0x10000)
      {
        fprintf(v5, ", channel bitmap=0x%x\n", a2->mChannelBitmap);
      }
    }

    else
    {
      v6 = "s";
      if (a2->mNumberChannelDescriptions == 1)
      {
        v6 = "";
      }

      fprintf(v5, ", %d channel description%s [", a2->mNumberChannelDescriptions, v6);
      if (a2->mNumberChannelDescriptions)
      {
        v7 = 0;
        mChannelDescriptions = a2->mChannelDescriptions;
        do
        {
          if (v7)
          {
            fwrite(", ", 2uLL, 1uLL, v5);
          }

          outPropertyData = 0;
          ioPropertyDataSize = 8;
          if (AudioFormatGetProperty(0x63736E6Du, 0x14u, mChannelDescriptions, &ioPropertyDataSize, &outPropertyData))
          {
            fprintf(v5, "%d", mChannelDescriptions->mChannelLabel);
          }

          else
          {
            CFStringGetCString(outPropertyData, buffer, 96, 0x8000100u);
            fputs(buffer, v5);
            CFRelease(outPropertyData);
          }

          ++v7;
          ++mChannelDescriptions;
        }

        while (v7 < a2->mNumberChannelDescriptions);
      }

      fputc(93, v5);
    }
  }

  else
  {
    fwrite("NULL", 4uLL, 1uLL, v4);
  }

  v9 = CAMemoryStream::cstr(&v11);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  *this = v9;
  fclose(v11);
  free(v12);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_18F5ED184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, FILE *a12, void *a13)
{
  fclose(a12);
  free(a13);
  _Unwind_Resume(a1);
}

FILE *CAMemoryStream::cstr(FILE **this)
{
  fflush(*this);
  v2 = this[1];
  if (!v2)
  {
    v2 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
    this[1] = v2;
    this[3] = 1;
  }

  *(&this[2]->_p + v2) = 0;
  return this[1];
}

const char *CAMemoryStream::Write(CAMemoryStream *this, void *a2, const char *a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(this + 2);
    v7 = v6 + a3;
    if ((v7 + 1) <= *(this + 3))
    {
      v8 = *(this + 1);
    }

    else
    {
      v8 = malloc_type_realloc(*(this + 1), (v7 & 0xFFFFFFFFFFFFFF80) + 128, 0x100004077774924uLL);
      if (!v8)
      {
        fwrite("realloc failed", 0xEuLL, 1uLL, *MEMORY[0x1E69E9848]);
        return 0xFFFFFFFFLL;
      }

      *(this + 1) = v8;
      *(this + 3) = (v7 & 0xFFFFFFFFFFFFFF80) + 128;
      v6 = *(this + 2);
    }

    memcpy(&v8[v6], a2, v3);
    *(this + 2) = v7;
  }

  return v3;
}

uint64_t AudioFormatProperty_ChannelShortName(int a1, const __CFString **a2, uint64_t a3, const __CFString *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v6 = sAudioToolboxBundle;
  }

  v7 = a1 & 0xFFFF0000;
  if ((a1 & 0xFFFF0000) == 0x30000)
  {
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v11 = @"HOA_N3D";
    goto LABEL_9;
  }

  if (v7 == 0x20000)
  {
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v11 = @"HOA_ACN";
    goto LABEL_9;
  }

  if (v7 == 0x10000)
  {
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v11 = @"Discrete";
LABEL_9:
    v12 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v11, @"AudioChannelShortLabels", v6, v9);
    snprintf(__str, 0x10uLL, "-%u", a1);
    CFStringAppendCString(Mutable, __str, 0x8000100u);
    CFStringInsert(Mutable, 0, v12);
    *a2 = CFStringCreateCopy(v8, Mutable);
    CFRelease(Mutable);
    CFRelease(v12);
    result = 0;
    goto LABEL_96;
  }

  result = 560360820;
  if (a1 > 199)
  {
    if (a1 > 206)
    {
      if (a1 > 304)
      {
        if (a1 > 99998)
        {
          if (a1 != 0x40000)
          {
            if (a1 != 99999)
            {
              goto LABEL_96;
            }

            v14 = @"AAAAA - NOTE";
            goto LABEL_94;
          }

          v14 = @"Obj";
        }

        else
        {
          if (a1 == 305)
          {
            v14 = @"Lang";
            goto LABEL_94;
          }

          if (a1 != 400)
          {
            goto LABEL_96;
          }

          v14 = @"Discrete";
        }

        v15 = @"AudioChannelLabels";
LABEL_95:
        v16 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v14, v15, v6, a4);
        result = 0;
        *a2 = v16;
        goto LABEL_96;
      }

      if (a1 > 301)
      {
        if (a1 == 302)
        {
          v14 = @"phoneR";
        }

        else
        {
          if (a1 != 304)
          {
            goto LABEL_96;
          }

          v14 = @"Click";
        }

        goto LABEL_94;
      }

      if (a1 != 207)
      {
        if (a1 != 301)
        {
          goto LABEL_96;
        }

        v14 = @"phoneL";
        goto LABEL_94;
      }

      goto LABEL_29;
    }

    if (a1 <= 202)
    {
      if (a1 == 200)
      {
        v14 = @"W";
        goto LABEL_94;
      }

      if (a1 != 201)
      {
LABEL_29:
        v14 = @"Y";
LABEL_94:
        v15 = @"AudioChannelShortLabels";
        goto LABEL_95;
      }
    }

    else
    {
      if (a1 <= 204)
      {
        if (a1 == 203)
        {
          v14 = @"Z";
        }

        else
        {
          v14 = @"Mid";
        }

        goto LABEL_94;
      }

      if (a1 == 205)
      {
        v14 = @"Side";
        goto LABEL_94;
      }
    }

    v14 = @"X";
    goto LABEL_94;
  }

  switch(a1)
  {
    case -1:
      v14 = @"?";
      goto LABEL_94;
    case 0:
      v14 = @"_";
      goto LABEL_94;
    case 1:
      v14 = @"L";
      goto LABEL_94;
    case 2:
      v14 = @"R";
      goto LABEL_94;
    case 3:
      v14 = @"C";
      goto LABEL_94;
    case 4:
      v14 = @"LFE";
      goto LABEL_94;
    case 5:
      v14 = @"Ls";
      goto LABEL_94;
    case 6:
      v14 = @"Rs";
      goto LABEL_94;
    case 7:
      v14 = @"Lc";
      goto LABEL_94;
    case 8:
      v14 = @"Rc";
      goto LABEL_94;
    case 9:
      v14 = @"Cs";
      goto LABEL_94;
    case 10:
      v14 = @"Lsd";
      goto LABEL_94;
    case 11:
      v14 = @"Rsd";
      goto LABEL_94;
    case 12:
      v14 = @"Ts";
      goto LABEL_94;
    case 13:
      v14 = @"Vhl";
      goto LABEL_94;
    case 14:
      v14 = @"Vhc";
      goto LABEL_94;
    case 15:
      v14 = @"Vhr";
      goto LABEL_94;
    case 16:
      v14 = @"Tbl";
      goto LABEL_94;
    case 17:
      v14 = @"Tbc";
      goto LABEL_94;
    case 18:
      v14 = @"Tbr";
      goto LABEL_94;
    case 33:
      v14 = @"Rls";
      goto LABEL_94;
    case 34:
      v14 = @"Rrs";
      goto LABEL_94;
    case 35:
      v14 = @"Lw";
      goto LABEL_94;
    case 36:
      v14 = @"Rw";
      goto LABEL_94;
    case 37:
      v14 = @"LFE2";
      goto LABEL_94;
    case 38:
      v14 = @"Lt";
      goto LABEL_94;
    case 39:
      v14 = @"Rt";
      goto LABEL_94;
    case 40:
      v14 = @"HI";
      goto LABEL_94;
    case 41:
      v14 = @"VI-N";
      goto LABEL_94;
    case 42:
      v14 = @"Mono";
      goto LABEL_94;
    case 43:
      v14 = @"Dlg";
      goto LABEL_94;
    case 44:
      v14 = @"Csd";
      goto LABEL_94;
    case 45:
      v14 = @"Haptic";
      goto LABEL_94;
    case 49:
      v14 = @"Ltm";
      goto LABEL_94;
    case 51:
      v14 = @"Rtm";
      goto LABEL_94;
    case 52:
      v14 = @"Ltr";
      goto LABEL_94;
    case 53:
      v14 = @"Ctr";
      goto LABEL_94;
    case 54:
      v14 = @"Rtr";
      goto LABEL_94;
    case 55:
      v14 = @"Lss";
      goto LABEL_94;
    case 56:
      v14 = @"Rss";
      goto LABEL_94;
    case 57:
      v14 = @"Lb";
      goto LABEL_94;
    case 58:
      v14 = @"Rb";
      goto LABEL_94;
    case 59:
      v14 = @"Cb";
      goto LABEL_94;
    case 60:
      v14 = @"Lts";
      goto LABEL_94;
    case 61:
      v14 = @"Rts";
      goto LABEL_94;
    case 62:
      v14 = @"LFE3";
      goto LABEL_94;
    case 63:
      v14 = @"Lbs";
      goto LABEL_94;
    case 64:
      v14 = @"Rbs";
      goto LABEL_94;
    case 65:
      v14 = @"Leos";
      goto LABEL_94;
    case 66:
      v14 = @"Reos";
      goto LABEL_94;
    default:
      break;
  }

LABEL_96:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void *ThreadSafeCFCopyLocalizedStringFromTableInBundle(const __CFString *a1, const __CFString *a2, __CFBundle *a3, const __CFString *a4)
{
  CABundleLocker::CABundleLocker(&v10);
  if (a3)
  {
    v7 = CFBundleCopyLocalizedString(a3, a1, a1, a2);
  }

  else
  {
    v7 = CFRetain(a1);
  }

  v8 = v7;
  CABundleLocker::~CABundleLocker(&v10);
  return v8;
}

uint64_t AudioFileFormatRegistry::AddComponentFormats(AudioFileFormatRegistry *this)
{
  std::mutex::lock(&AudioFileMutex(void)::global);
  v2 = *(this + 56);
  if ((v2 & 1) == 0)
  {
    *(this + 56) = 1;
  }

  std::mutex::unlock(&AudioFileMutex(void)::global);
  return v2 ^ 1u;
}

uint64_t ID3Size(unsigned int a1, const unsigned __int8 *a2, int *a3)
{
  *a3 = 0;
  if (a1 >= 3)
  {
    if (*a2 != 17481 || a2[2] != 51)
    {
      if (*a2 != 16724 || a2[2] != 71)
      {
        return 0;
      }

      result = 128;
      v6 = 1;
LABEL_16:
      *a3 = v6;
      return result;
    }

    if (a1 >= 0xA && a2[3] != 255 && a2[4] != 255)
    {
      result = (((a2[7] & 0x7F) << 14) & 0xF01FC000 | ((a2[6] & 0x7F) << 21) | a2[9] & 0x7F | ((a2[8] & 0x7F) << 7)) + 10;
      v6 = 2;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t AudioFileFormatRegistry::Get(AudioFileFormatRegistry *this, unsigned int a2)
{
  v5 = *(this + 4);
  v4 = *(this + 5);
  if (v4 != v5)
  {
    v6 = (v4 - v5) >> 4;
    v4 = *(this + 4);
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[16 * (v6 >> 1)];
      v10 = *v8;
      v9 = (v8 + 4);
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  if (*v4 == a2)
  {
    return *(v4 + 1);
  }

  if (!AudioFileFormatRegistry::AddComponentFormats(this))
  {
    return 0;
  }

  v12 = *(this + 4);
  v4 = *(this + 5);
  if (v4 != v12)
  {
    v13 = (v4 - v12) >> 4;
    v4 = *(this + 4);
    do
    {
      v14 = v13 >> 1;
      v15 = &v4[16 * (v13 >> 1)];
      v17 = *v15;
      v16 = (v15 + 4);
      v13 += ~(v13 >> 1);
      if (v17 < a2)
      {
        v4 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
  }

  if (*v4 == a2)
  {
    return *(v4 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_18F5EE880(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(void *a1, size_t size, int a3)
{
  *a1 = 0;
  if (a3)
  {
    v5 = malloc_type_malloc(size, 0xD7524C8FuLL);
    v6 = v5;
    if (!size || v5)
    {
      bzero(v5, size);
      goto LABEL_7;
    }

LABEL_8:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
  }

  v7 = malloc_type_malloc(size, 0x100004077774924uLL);
  v6 = v7;
  if (size && !v7)
  {
    goto LABEL_8;
  }

LABEL_7:
  *a1 = v6;
  return a1;
}

uint64_t GetAudioFileFormatRegistry(void)
{
  std::mutex::lock(&AudioFileMutex(void)::global);
  v0 = sAudioFileFormatRegistry;
  if (!sAudioFileFormatRegistry)
  {
    operator new();
  }

  std::mutex::unlock(&AudioFileMutex(void)::global);
  return v0;
}

uint64_t NewAudioFileHandle(AudioFileFormatBase *a1)
{
  if (a1)
  {
    v1 = (*(*a1 + 120))(a1);
    if (v1)
    {
      if ((*(*v1 + 136))(v1))
      {
        operator new();
      }
    }
  }

  return 0;
}

uint64_t AudioFileObject::DoOpen(AudioFileObject *this, const __CFURL *a2, char a3)
{
  v15 = *MEMORY[0x1E69E9840];
  *(this + 100) = a3;
  v4 = (*(*this + 24))(this, a2);
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "AudioFileObject.cpp";
      v13 = 1024;
      v14 = 80;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "%25s:%-5d  Open failed";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, v8, &v11, 0x12u);
    }
  }

  else
  {
    v6 = AudioFileObject::ValidateFormatAndData(this, v5);
    if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "AudioFileObject.cpp";
      v13 = 1024;
      v14 = 83;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "%25s:%-5d  ValidateFormatAndData failed";
      goto LABEL_7;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t AudioFileObject::Open(AudioFileObject *this, const __CFURL *a2, char a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    AudioFileObject::SetURL(this, a2);
    AudioFileObject::OpenFile(this);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 1886547263;
}

uint64_t CAFAudioFile::ParseAudioFile(CAFAudioFile *this)
{
  v54 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v41 = 0;
  *&v39 = 0;
  *(this + 9) = 0;
  (*(*this + 240))(this, 0);
  v2 = (*(**(this + 13) + 24))(*(this + 13), &v41);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v50[0]) = 1024;
      *(v50 + 2) = 1191;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  GetSize Failed";
LABEL_60:
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
      goto LABEL_61;
    }

    goto LABEL_61;
  }

  v3 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 8, &v36, &v42);
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v50[0]) = 1024;
      *(v50 + 2) = 1196;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  FSRead Failed 1";
      goto LABEL_60;
    }

LABEL_61:
    v9 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_62;
  }

  if (v42 <= 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v50[0]) = 1024;
      *(v50 + 2) = 1197;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  byteCount < sizeof(fileChunk)";
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v6 = v36;
  LODWORD(v36) = bswap32(v36);
  v7 = WORD2(v36);
  WORD2(v36) = __rev16(WORD2(v36));
  HIWORD(v36) = bswap32(HIWORD(v36)) >> 16;
  if (v6 != 1717985635)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v50[0]) = 1024;
      *(v50 + 2) = 1201;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  fileChunk.mFileType != kCAF_FileType";
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  if (v7 != 256)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v50[0]) = 1024;
      *(v50 + 2) = 1202;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  fileChunk.mFileVersion != kCAF_FileVersion_Initial";
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v8 = 1685348671;
  if (v41 < 9)
  {
    goto LABEL_66;
  }

  v9 = 0;
  v10 = 0;
  v35 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 8;
  do
  {
    v14 = (*(**(this + 13) + 48))(*(this + 13), 0, v13, 12, &v43, &v42);
    if (v14)
    {
      v3 = v14;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v45 = 136315394;
        v46 = "CAFAudioFile.cpp";
        v47 = 1024;
        v48 = 1212;
        v31 = MEMORY[0x1E69E9C10];
        v32 = "%25s:%-5d  FSRead Failed 1";
        goto LABEL_69;
      }

LABEL_62:
      *(this + 20) = (v9 == 1684108385) & (v10 ^ 1);
      v8 = v3;
      if (v3 == -39)
      {
        if (v11 & v12)
        {
          v8 = 0;
        }

        else
        {
          v8 = 1685348671;
        }
      }

      goto LABEL_66;
    }

    if (v42 < 0xC)
    {
      break;
    }

    v9 = bswap32(v43);
    v43 = v9;
    v15 = bswap64(v44);
    v44 = v15;
    LODWORD(v39) = v9;
    if (v15 >= 0)
    {
      v16 = v15 + 12;
    }

    else
    {
      v16 = v15;
    }

    *(&v39 + 1) = v16;
    v40 = v13;
    if (v9 == 1684108385)
    {
      v42 = 4;
      v24 = (*(**(this + 13) + 48))(*(this + 13), 0, v13 + 12, 4, this + 168, &v42);
      if (v24)
      {
        v3 = v24;
        v9 = 1684108385;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v45 = 136315394;
          v46 = "CAFAudioFile.cpp";
          v47 = 1024;
          v48 = 1265;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  FSRead Failed 2", v45, 0x12u);
        }

        v12 = 1;
        goto LABEL_62;
      }

      if (v42 <= 3)
      {
        v9 = 1684108385;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v45 = 136315394;
          v46 = "CAFAudioFile.cpp";
          v47 = 1024;
          v48 = 1266;
          v33 = MEMORY[0x1E69E9C10];
          v34 = "%25s:%-5d  byteCount < sizeof(mEditCount)";
LABEL_79:
          _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_ERROR, v34, v45, 0x12u);
        }

LABEL_55:
        v8 = 0;
        *(this + 20) = (v9 == 1684108385) & (v10 ^ 1);
        goto LABEL_66;
      }

      *(this + 9) = v13 + 16;
      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v16 >= 0x10)
        {
          v25 = v16 - 16;
        }

        else
        {
          v25 = 0;
        }

        (*(*this + 240))(this, v25);
        v12 = 1;
        goto LABEL_47;
      }

      (*(*this + 240))(this, v41 - (v13 + 16));
      v16 = v41 - v13;
      *(&v39 + 1) = v41 - v13;
      v12 = 1;
      v10 = 1;
    }

    else if (v9 == 1684370275)
    {
      v18 = (*(**(this + 13) + 48))(*(this + 13), 0, v13 + 12, 32, &v36, &v42);
      if (v18)
      {
        v3 = v18;
        v9 = 1684370275;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v45 = 136315394;
          v46 = "CAFAudioFile.cpp";
          v47 = 1024;
          v48 = 1238;
          v31 = MEMORY[0x1E69E9C10];
          v32 = "%25s:%-5d  FSRead Failed 1";
          goto LABEL_69;
        }

        goto LABEL_62;
      }

      if (v42 <= 0x1F)
      {
        v9 = 1684370275;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v45 = 136315394;
          v46 = "CAFAudioFile.cpp";
          v47 = 1024;
          v48 = 1239;
          v33 = MEMORY[0x1E69E9C10];
          v34 = "%25s:%-5d  byteCount < sizeof(format)";
          goto LABEL_79;
        }

        goto LABEL_55;
      }

      v36 = bswap64(v36);
      v19 = vrev32q_s8(v37);
      v37 = v19;
      v20 = vrev32_s8(v38);
      v38 = v20;
      v51 = 0;
      v53 = 0;
      *buf = v36;
      *&buf[8] = v19.i32[0];
      *&v50[1] = vextq_s8(v19, v19, 8uLL).u64[0];
      v52 = v20;
      if (v19.i32[3] == 1)
      {
        v51 = v19.i32[2];
      }

      v21 = v19.i32[1];
      if (v19.i32[0] == 1819304813)
      {
        if (v19.i8[4])
        {
          v22 = 1;
        }

        else
        {
          v22 = 4;
        }

        v23 = (v22 | v19.i8[4] & 2) ^ 2;
        if ((v20.i8[4] & 7) != 0 || (v20.i32[1] >> 3) * v20.i32[0] != v19.i32[2])
        {
          v21 = v23 | 0x10;
        }

        else
        {
          v21 = v23 | 8;
        }
      }

      v50[0] = v21;
      v26 = (*(*this + 184))(this, buf);
      if (v26)
      {
        v3 = v26;
        v9 = 1684370275;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v45 = 136315394;
          v46 = "CAFAudioFile.cpp";
          v47 = 1024;
          v48 = 1254;
          v31 = MEMORY[0x1E69E9C10];
          v32 = "%25s:%-5d  SetDataFormat Failed";
LABEL_69:
          _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_ERROR, v32, v45, 0x12u);
        }

        goto LABEL_62;
      }

      v11 = 1;
    }

    else
    {
      v17 = v35;
      if (v9 == 1885432692)
      {
        v17 = 1;
      }

      v35 = v17;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_47:
    v13 += v16;
    v27 = v41;
    if (v13 > v41)
    {
      break;
    }

    std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v39);
  }

  while (v13 < v27);
  if (v11)
  {
    if (v37.i32[2])
    {
      (*(*this + 656))(this);
      v28 = (*(*this + 232))(this);
      (*(*this + 256))(this, v28 / v37.u32[2]);
    }

    if ((v35 & 1) == 0 || (v8 = CAFAudioFile::ParsePacketTableChunk(this), !v8))
    {
      (*(*this + 552))(this, this + 200);
      goto LABEL_55;
    }
  }

LABEL_66:
  v29 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CAFAudioFile::OpenFromDataSource(CAFAudioFile *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = (*(*this + 792))(this);
  if (v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "CAFAudioFile.cpp";
    v6 = 1024;
    v7 = 1146;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAFAudioFile::OpenFromDataSource Failed", &v4, 0x12u);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t CAFAudioFile::SetDataFormat(CAFAudioFile *this, AudioStreamBasicDescription *a2)
{
  v3 = AudioFileObject::SetDataFormat(this, a2);
  v4 = *(this + 32);
  *(this + 32) = 0;
  if (v4)
  {
    MEMORY[0x193ADF220](v4, 0x1000C403E1C8BA9);
  }

  return v3;
}

uint64_t CAFAudioFile::IsDataFormatSupported(CAFAudioFile *this, const AudioStreamBasicDescription *a2)
{
  if (a2->mFormatID != 1819304813)
  {
    return 1;
  }

  mBitsPerChannel = a2->mBitsPerChannel;
  mFormatFlags = a2->mFormatFlags;
  v4 = (mFormatFlags >> 2) & 1;
  if (mBitsPerChannel > 8)
  {
    v4 = 1;
  }

  if (v4 != 1 || (a2->mFormatFlags & 0x1F80) != 0)
  {
    return 0;
  }

  if ((mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
  }

  else
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  v8 = (mFormatFlags >> 4) & 1;
  if (mChannelsPerFrame * ((mBitsPerChannel + 7) >> 3) == a2->mBytesPerFrame)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t UnixFile_DataSource::GetSize(UnixFile_DataSource *this, uint64_t *a2)
{
  *a2 = -1;
  if (fstat(*(this + 3), &v6) == -1)
  {
    return 4294967253;
  }

  result = 0;
  st_size = v6.st_size;
  *(this + 3) = v6.st_size;
  *a2 = st_size;
  return result;
}

uint64_t Cached_DataSource::ReadBytes(Cached_DataSource *this, uint64_t a2, int64_t a3, size_t __n, char *__dst, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v30 = 0;
  v29 = 0;
  if (!__dst)
  {
    return 4294967246;
  }

  if ((a2 & 3) == 2)
  {
    result = (*(*this + 24))(this, &v30);
    if (result)
    {
      return result;
    }

    v13 = v30;
  }

  else
  {
    v30 = 0;
    v14 = a3;
    if ((a2 & 3) == 0)
    {
      goto LABEL_12;
    }

    v14 = 0;
    if ((a2 & 3) == 3)
    {
      goto LABEL_13;
    }

    v13 = *(this + 8);
  }

  v14 = v13 + a3;
LABEL_12:
  if (v14 < 0)
  {
    return 4294967256;
  }

LABEL_13:
  if (v14 < *(this + 8))
  {
    if (a6)
    {
      *a6 = 0;
    }

    if (!*(this + 3))
    {
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 3, *(this + 8), 1);
      result = (*(**(this + 2) + 48))(*(this + 2), 0, 0, *(this + 8), *(this + 3), this + 32);
      if (result)
      {
        if (result != -39)
        {
          return result;
        }
      }
    }

    v15 = *(this + 8);
    v16 = v15 - v14;
    if (v15 - v14 >= __n)
    {
      v17 = __n;
    }

    else
    {
      v17 = v15 - v14;
    }

    memcpy(__dst, (*(this + 3) + v14), v17);
    if (v16 >= __n)
    {
      result = 0;
      if (!a6)
      {
LABEL_41:
        *(this + 8) = v17 + v14;
        return result;
      }
    }

    else
    {
      v31 = 0;
      result = (*(**(this + 2) + 48))(*(this + 2), 0, *(this + 8), (__n - v17), &__dst[v17], &v31);
      v17 += v31;
      if (!a6)
      {
        goto LABEL_41;
      }
    }

    *a6 = v17;
    goto LABEL_41;
  }

  v18 = (this + 52);
  v20 = (this + 40);
  v19 = *(this + 5);
  v21 = *(this + 12);
  if (v19)
  {
    if (v21 > __n)
    {
      v22 = *(this + 7);
      if (v14 >= v22)
      {
        v23 = v22 + *(this + 13);
        v24 = v23 - v14;
        if (v23 > v14)
        {
          v25 = __n;
          v26 = (v19 + v14 - v22);
          if (v14 + __n <= v23)
          {
            memcpy(__dst, v26, __n);
            result = 0;
          }

          else
          {
            memcpy(__dst, v26, v23 - v14);
            v27 = *(this + 7) + *(this + 13);
            result = (*(**(this + 2) + 48))(*(this + 2), 0, v27, *(this + 12), *(this + 5), this + 52);
            if (result && result != -39)
            {
              LODWORD(__n) = v24;
            }

            else
            {
              *(this + 7) = v27;
              if (v25 - v24 >= *(this + 13))
              {
                v28 = *(this + 13);
              }

              else
              {
                v28 = v25 - v24;
              }

              if (v28)
              {
                memcpy(&__dst[v24], *v20, v28);
              }

              result = 0;
              LODWORD(__n) = v28 + v24;
            }
          }

          goto LABEL_56;
        }
      }
    }

    if (v21 >= __n)
    {
LABEL_48:
      *(this + 7) = v14;
      result = (*(**(this + 2) + 48))(*(this + 2), 0, v14, v21, v19, this + 52);
      if (result && result != -39)
      {
        return result;
      }

      if (*v18 >= __n)
      {
        __n = __n;
      }

      else
      {
        __n = *v18;
      }

      memcpy(__dst, *v20, __n);
      result = 0;
      goto LABEL_56;
    }
  }

  else if (v21 >= __n)
  {
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 5, *(this + 12), 1);
    v21 = *(this + 12);
    v19 = *(this + 5);
    goto LABEL_48;
  }

  result = (*(**(this + 2) + 48))(*(this + 2), a2, a3, __n, __dst, &v29);
  LODWORD(__n) = v29;
  *(this + 8) = v14 + v29;
LABEL_56:
  if (a6)
  {
    *a6 = __n;
  }

  return result;
}

void CADeprecated::CAAutoFree<unsigned char>::allocBytes(void **a1, size_t size, int a3)
{
  v6 = *a1;
  if (v6)
  {
    free(v6);
    *a1 = 0;
  }

  if (a3)
  {
    v7 = malloc_type_malloc(size, 0xB2C9138AuLL);
    v8 = v7;
    if (!size || v7)
    {
      bzero(v7, size);
      goto LABEL_9;
    }

LABEL_10:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
  }

  v9 = malloc_type_malloc(size, 0xBAAF0B94uLL);
  v8 = v9;
  if (size && !v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  *a1 = v8;
}

uint64_t UnixFile_DataSource::ReadBytes(UnixFile_DataSource *this, unsigned int a2, uint64_t a3, unsigned int a4, void *a5, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (!a5)
  {
    return 4294967246;
  }

  v11 = UnixFile_DataSource::UFCurrentOffset(this, a2, a3);
  if (v11 < 0)
  {
    return 4294967256;
  }

  if (a4)
  {
    v12 = v11;
    v13 = (a2 >> 5) & 1;
    v14 = *(this + 5);
    if (v14 != v13)
    {
      *(this + 5) = v13;
      fcntl(*(this + 3), 48, v14);
    }

    v15 = pread(*(this + 3), a5, a4, v12);
    if (v15 != -1)
    {
      v16 = v15;
      *(this + 4) = v15 + v12;
      if (a6)
      {
        result = 0;
        *a6 = v16;
        return result;
      }

      return 0;
    }

    return 4294967256;
  }

  return 0;
}

uint64_t UnixFile_DataSource::UFCurrentOffset(UnixFile_DataSource *this, char a2, uint64_t a3)
{
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      return -1;
    }

    v6 = 0;
    v4 = (*(*this + 24))(this, &v6);
    if (v4)
    {
      return v4;
    }

    goto LABEL_7;
  }

  if ((a2 & 3) != 0)
  {
    v6 = 0;
    v4 = (*(*this + 40))(this, &v6);
    if (v4)
    {
      return v4;
    }

LABEL_7:
    a3 += v6;
  }

  return a3;
}

uint64_t AudioFileObject::SetDataFormat(AudioFileObject *this, AudioStreamBasicDescription *a2)
{
  v4 = 1718449215;
  if (AudioFileObject::IsDataFormatValid(a2, a2) && (*(*this + 624))(this, a2))
  {
    v5 = *(this + 10);
    v6 = *&a2->mBitsPerChannel;
    v7 = *&a2->mSampleRate;
    *(this + 40) = *&a2->mBytesPerPacket;
    *(this + 24) = v7;
    *(this + 7) = v6;
    v8 = *(this + 10);
    if (v8)
    {
      if (v8 != v5)
      {
        v9 = (*(*this + 232))(this);
        (*(*this + 256))(this, v9 / *(this + 10));
        (*(*this + 656))(this, *(this + 10));
        if (!*(this + 137) && (*(this + 100) & 2) != 0)
        {
          if (*(this + 33))
          {
            *(this + 136) = 1;
          }

          else
          {
            (*(*this + 224))(this);
          }
        }
      }
    }

    ioPropertyDataSize = 4;
    AudioFormatGetProperty(0x66646570u, 0x28u, a2, &ioPropertyDataSize, this + 64);
    v4 = 0;
    *(this + 137) = 0;
  }

  return v4;
}

BOOL AudioFileObject::IsDataFormatValid(AudioFileObject *this, const AudioStreamBasicDescription *a2)
{
  v2 = 0;
  if (*this >= 0.0 && *this <= 3000000.0)
  {
    v3 = *(this + 7);
    v2 = 0;
    if ((v3 - 0x100000) >= 0xFFF00001)
    {
      if (*(this + 2) != 1819304813)
      {
        return 1;
      }

      v4 = *(this + 8);
      if ((v4 - 65) >= 0xFFFFFFC0 && *(this + 5) == 1)
      {
        v5 = *(this + 4);
        if (v5)
        {
          if (*(this + 6) == v5 && v5 >= (v4 * v3 + 7) >> 3)
          {
            return 1;
          }
        }
      }
    }
  }

  return v2;
}

void AudioFileObject::SetURL(AudioFileObject *this, CFTypeRef cf)
{
  v3 = *(this + 11);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(this + 11);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 11) = cf;
  }
}

void std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<acv2::AudioConverterBase>>::~__split_buffer(uint64_t a1)
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
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *acv2::AudioConverterChain::AddStep(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = result[13];
  v7 = result[14];
  v6 = result + 13;
  if (v5 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 - 1);
  }

  *(v4 + 96) = v8;
  v9 = result[15];
  if (v7 >= v9)
  {
    v11 = v7 - v5;
    v12 = (v7 - v5) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v14 = v9 - v5;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v21[4] = v6;
    if (v15)
    {
      std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v15);
    }

    v16 = v12;
    v17 = (8 * v12);
    *a2 = 0;
    v18 = &v17[-v16];
    *v17 = v4;
    v10 = v17 + 1;
    memcpy(v18, v5, v11);
    v19 = v3[13];
    v3[13] = v18;
    v3[14] = v10;
    v20 = v3[15];
    v3[15] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = std::__split_buffer<std::unique_ptr<acv2::AudioConverterBase>>::~__split_buffer(v21);
  }

  else
  {
    *a2 = 0;
    *v7 = v4;
    v10 = v7 + 8;
  }

  v3[14] = v10;
  return result;
}

void std::vector<std::unique_ptr<acv2::AudioConverterBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<acv2::AudioConverterBase>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t acv2::AudioConverterChain::PostBuild(acv2::AudioConverterChain *this)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = *(this + 35);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v2 = std::unique_ptr<ACOutputBuffer>::~unique_ptr[abi:ne200100](v2 - 1);
  }

  *(this + 35) = v3;
  v4 = *(this + 14) - *(this + 13);
  if ((v4 >> 3) < 1)
  {
LABEL_24:
    std::optional<ACAudioSpan>::emplace[abi:ne200100]<CA::StreamDescription const&,void>((this + 128), this + 1);
    if ((atomic_load_explicit(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input))
    {
      _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input = checkEnvVar("CoreAudio_CaptureConverterChain_Input");
      __cxa_guard_release(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input);
    }

    if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input == 1)
    {
      acv2::AudioConverterBase::createCapturer(&__p, "-ConverterChainInput", this + 488, this, this);
    }

    if ((atomic_load_explicit(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input))
    {
      _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input = checkEnvVar("CoreAudio_CaptureConverterChain_Nodes");
      __cxa_guard_release(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input);
    }

    if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v65, "-ConverterChainNode_");
      v21 = *(this + 13);
      if (v21 != *(this + 14))
      {
        v22 = *v21;
        std::to_string(&v59, 0);
        if (v66 >= 0)
        {
          v23 = v65;
        }

        else
        {
          v23 = v65[0];
        }

        if (v66 >= 0)
        {
          v24 = v66;
        }

        else
        {
          v24 = v65[1];
        }

        v25 = std::string::insert(&v59, 0, v23, v24);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v60, "_", 1uLL);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        v29 = (*(**v21 + 56))();
        v30 = v29;
        if (v29)
        {
          CFRetain(v29);
          cf = v30;
          v31 = CFGetTypeID(v30);
          if (v31 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          if (cf)
          {
            applesauce::CF::convert_to<std::string,0>(v57, cf);
            if ((v58 & 0x80u) == 0)
            {
              v32 = v57;
            }

            else
            {
              v32 = v57[0];
            }

            if ((v58 & 0x80u) == 0)
            {
              v33 = v58;
            }

            else
            {
              v33 = v57[1];
            }

            v34 = std::string::append(&v61, v32, v33);
            v35 = *&v34->__r_.__value_.__l.__data_;
            v64 = v34->__r_.__value_.__r.__words[2];
            v63 = v35;
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            if (v64 >= 0)
            {
              v36 = &v63;
            }

            else
            {
              v36 = v63;
            }

            acv2::AudioConverterBase::createCapturer(buf, v36, v22 + 152, v22 + 56, v22);
          }
        }

        v54 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v54, "Could not construct");
      }

      if (v66 < 0)
      {
        operator delete(v65[0]);
      }
    }

    v37 = *(this + 43);
    if (v37)
    {
      if (*(v37 + 72))
      {
        v38 = *(v37 + 76) == 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = 0;
      *(this + 496) = v38;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = (v4 >> 3) & 0x7FFFFFFF;
    v7 = v6 + 1;
    v8 = 8 * v6 - 8;
    while (1)
    {
      v55 = *(this + 13);
      v9 = *(v55 + v8);
      *(v9 + 8) = this;
      if (v5)
      {
        if ((*(v9 + 68) & 0x20) != 0)
        {
          v12 = *(v9 + 80);
          v13 = *(v9 + 84) > 1u;
        }

        else
        {
          v10 = (*(v9 + 80) << 12);
        }

        operator new();
      }

      *(v9 + 120) = -1;
      v11 = v9;
      if (v7 == 2)
      {
        break;
      }

      if ((*(*v9 + 104))(v9))
      {
        v11 = *(v55 + v8);
        break;
      }

      std::unique_ptr<ACSpanningInputBuffer>::reset[abi:ne200100]((v9 + 104), 0);
      v18 = *(v55 + v8);
      v19 = *(v18 + 56);
      v20 = *(v18 + 72);
      *(this + 9) = *(v18 + 88);
      *(this + 56) = v20;
      *(this + 40) = v19;
      --v7;
      ++v5;
      v8 -= 8;
      if (v7 <= 1)
      {
        goto LABEL_24;
      }
    }

    v14 = v11[8];
    v15 = (*(*v11 + 48))(v11);
    if (!v15 || *(v15 + 205) != 1 || *(v15 + 364))
    {
      if (*(this + 96) == 1)
      {
        v16 = *(v55 + v8);
        operator new();
      }

      v17 = *(v55 + v8);
      operator new();
    }

    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v39 = 1768846202;
    v42 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v44 = *(v55 + v8);
      v43.i32[0] = bswap32(*(v44 + 24));
      v45 = vzip1_s8(v43, v43);
      v46.i64[0] = 0x1F0000001FLL;
      v46.i64[1] = 0x1F0000001FLL;
      v47.i64[0] = 0x1F0000001FLL;
      v47.i64[1] = 0x1F0000001FLL;
      v48.i64[0] = 0x5F0000005FLL;
      v48.i64[1] = 0x5F0000005FLL;
      v49 = vbsl_s8(vmovn_s32(vcgtq_u32(v48, vsraq_n_s32(v47, vshlq_n_s32(vmovl_u16(v45), 0x18uLL), 0x18uLL))), v45, 0x2E002E002E002ELL);
      v66 = 4;
      v50 = vuzp1_s8(v49, v49);
      LODWORD(v65[0]) = v50.i32[0];
      BYTE4(v65[0]) = 0;
      v50.i32[0] = bswap32(*(v44 + 64));
      v51 = vzip1_s8(v50, v50);
      v52 = vbsl_s8(vmovn_s32(vcgtq_u32(v48, vsraq_n_s32(v46, vshlq_n_s32(vmovl_u16(v51), 0x18uLL), 0x18uLL))), v51, 0x2E002E002E002ELL);
      HIBYTE(v64) = 4;
      LODWORD(v63) = vuzp1_s8(v52, v52).u32[0];
      BYTE4(v63) = 0;
      buf[0] = 136315906;
      *&buf[1] = "CompositeAudioConverter.cpp";
      v68 = 1024;
      v69 = 1802;
      v70 = 2080;
      v71 = v65;
      v72 = 2080;
      v73 = &v63;
      _os_log_impl(&dword_18F5DF000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d CompressedFormatMaxPacketSize() == 0 with input format: %s, output format: %s", buf, 0x26u);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(v63);
      }

      if (v66 < 0)
      {
        operator delete(v65[0]);
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

uint64_t anonymous namespace::EABLImpl::create(_anonymous_namespace_::EABLImpl *this, int a2, int a3)
{
  v3 = this;
  v25 = *MEMORY[0x1E69E9840];
  if (this > 0x1000)
  {
    v18 = CADefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315650;
      v20 = "AudioBuffers.cpp";
      v21 = 1024;
      v22 = 165;
      v23 = 1024;
      v24 = v3;
      _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d ExtendedAudioBufferList_Create: Too many buffers (%d)", &v19, 0x18u);
    }

    v14 = 0;
  }

  else
  {
    v4 = 16 * this;
    if ((16 * this) <= 0xC)
    {
      v4 = 12;
    }

    v5 = v4 + 60;
    v6 = (v4 + 75) & 0x3FFF0;
    if (a3)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = (v6 + 24);
    }

    else
    {
      v8 = v5;
    }

    v9 = (a2 + 15) & 0xFFFFFFF0;
    v10 = caulk::numeric::exceptional_mul<unsigned int>(this, v9);
    v11 = v10;
    if ((atomic_load_explicit(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input, memory_order_acquire) & 1) == 0)
    {
      v10 = __cxa_guard_acquire(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input);
      if (v10)
      {
        _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input = checkEnvVar("AudioBufferMemoryResource_UseMalloc");
        __cxa_guard_release(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input);
      }
    }

    if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input == 1)
    {
      default_resource = std::pmr::get_default_resource(v10);
    }

    else
    {
      default_resource = caulk::audio_buffer_resource(v10);
    }

    v13 = default_resource;
    v14 = (*(*default_resource + 16))(default_resource, v8, 16);
    if (v11)
    {
      v15 = (*(*v13 + 16))(v13, v11, 16);
    }

    else
    {
      v15 = 0;
    }

    *v14 = v3;
    *(v14 + 4) = v9;
    *(v14 + 8) = 1094863915;
    *(v14 + 12) = v7;
    *(v14 + 16) = v8;
    *(v14 + 20) = v11;
    *(v14 + 24) = 0;
    *(v14 + 32) = v15;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    if (!gCADefaultDeferredLog)
    {
      if (gDefaultDeferredLogOnce[0] != -1)
      {
        dispatch_once(gDefaultDeferredLogOnce, &__block_literal_global_4895);
      }

      v7 = *(v14 + 12);
    }

    *(v14 + 48) = v3;
    *(v14 + 16 * v3 + 56) = 1094863915;
    if (v7)
    {
      AudioMetadataFrame::AudioMetadataFrame((v14 + v7));
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

unint64_t caulk::numeric::exceptional_mul<unsigned int>(unsigned int a1, unsigned int a2)
{
  result = a1 * a2;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
  }

  return result;
}

unsigned int *ExtendedAudioBufferList_Prepare(uint64_t a1, int a2, unsigned int a3)
{
  if (*(a1 + 8) != 1094863915)
  {
    std::terminate();
  }

  v3 = a1;
  v5 = (a1 + 48);
  v4 = *(a1 + 48);
  if (v4 > *a1)
  {
    v11 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v11 + 88, 16);
    if (message)
    {
      v13 = message;
      v14 = _os_log_pack_fill();
      v6 = *v5;
LABEL_13:
      v17 = *v3;
      *v14 = 67109376;
      *(v14 + 4) = v6;
      *(v14 + 8) = 1024;
      *(v14 + 10) = v17;
      caulk::concurrent::messenger::enqueue(*(gCADefaultDeferredLog + 16), v13);
    }

    return 0;
  }

  v6 = a3;
  v7 = *(a1 + 4);
  if (v7 < a3)
  {
    v15 = _os_log_pack_size();
    v16 = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v15 + 88, 16);
    if (v16)
    {
      v13 = v16;
      v14 = _os_log_pack_fill();
      ++v3;
      goto LABEL_13;
    }

    return 0;
  }

  if (v4)
  {
    v8 = *(a1 + 32);
    v9 = (a1 + 64);
    do
    {
      *v9 = v8;
      v8 += v7;
      *(v9 - 2) = a2;
      *(v9 - 1) = a3;
      v9 += 2;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void ACAudioSpan::ACAudioSpan(ACAudioSpan *this, const AudioStreamBasicDescription *a2)
{
  *(this + 88) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 21) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  CA::AudioBuffersBase::AudioBuffersBase((this + 96), a2, 0);
  if ((a2->mFormatFlags & 0x20) != 0)
  {
    mFormatID = a2->mFormatID;
    v7 = *(this + 12);
    if (a2->mChannelsPerFrame == 1)
    {
      v7[14] = 1;
      v6 = v7 + 12;
    }

    else
    {
      v6 = v7 + 12;
      v8 = v7[12];
      if (v8)
      {
        v9 = 0;
        v10 = v8 + 0xFFFFFFFFFFFFFFFLL;
        v11 = v10 & 0xFFFFFFFFFFFFFFFLL;
        v12 = (v10 & 0xFFFFFFFFFFFFFFFLL) - (v10 & 3) + 4;
        v13 = vdupq_n_s64(v11);
        v14 = v7 + 26;
        do
        {
          v15 = vdupq_n_s64(v9);
          v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_18F9016C0)));
          if (vuzp1_s16(v16, *v13.i8).u8[0])
          {
            *(v14 - 12) = 1;
          }

          if (vuzp1_s16(v16, *&v13).i8[2])
          {
            *(v14 - 8) = 1;
          }

          if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_18F9016B0)))).i32[1])
          {
            *(v14 - 4) = 1;
            *v14 = 1;
          }

          v9 += 4;
          v14 += 16;
        }

        while (v12 != v9);
      }
    }
  }

  else
  {
    mFormatID = a2->mFormatID;
    v5 = *(this + 12);
    *(v5 + 56) = a2->mChannelsPerFrame;
    v6 = (v5 + 48);
  }

  if (mFormatID == 1885564203)
  {
    if ((*(this + 88) & 1) == 0)
    {
      _ZNSt3__18optionalI19ACMetadataContainerE7emplaceB8ne200100IJEvEERS1_DpOT_(this + 48);
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  *(this + 2) = v6;
  *(this + 6) = *v6;
  *(this + 28) = v17;
}

void sub_18F5F1F98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](v1 + 48);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CA::AudioBuffersBase::AudioBuffersBase(CA::AudioBuffersBase *this, const AudioStreamBasicDescription *a2, int a3)
{
  v5 = ExtendedAudioBufferList_CreateWithFormat(a2, a3);
  mFormatID = a2->mFormatID;
  v7 = mFormatID == 1885564203 || mFormatID == 1819304813;
  if (v7 && (a2->mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
  }

  else
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  return CA::AudioBuffersBase::AudioBuffersBase(this, v5, mChannelsPerFrame);
}

uint64_t ExtendedAudioBufferList_CreateWithFormat(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 28);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 == 1885564203 || v3 == 1819304813)
  {
    if ((*(a1 + 12) & 0x20) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }
}

uint64_t *std::unique_ptr<ACSpanningInputBuffer>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 280) == 1)
    {
      std::vector<AudioStreamPacketDescription,caulk::rt_allocator<AudioStreamPacketDescription>>::__destroy_vector::operator()[abi:ne200100]((v2 + 256));
    }

    v3 = *(v2 + 232);
    if (v3)
    {
      *(v2 + 240) = v3;
      operator delete(v3);
    }

    ACAudioSpan::~ACAudioSpan((v2 + 128));
    ACAudioSpan::~ACAudioSpan((v2 + 24));
    ExtendedAudioBufferList_Destroy(*(v2 + 16));

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::optional<ACAudioSpan>::emplace[abi:ne200100]<CA::StreamDescription const&,void>(ACAudioSpan *a1, const AudioStreamBasicDescription *a2)
{
  if (*(a1 + 104) == 1)
  {
    ACAudioSpan::~ACAudioSpan(a1);
    *(a1 + 104) = 0;
  }

  ACAudioSpan::ACAudioSpan(a1, a2);
  *(v3 + 104) = 1;
}

acv2::AudioConverterChain **std::unique_ptr<acv2::AudioConverterChain>::~unique_ptr[abi:ne200100](acv2::AudioConverterChain **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    acv2::AudioConverterChain::~AudioConverterChain(v2);
    MEMORY[0x193ADF220]();
  }

  return a1;
}

acv2::AudioConverterChain *std::unique_ptr<acv2::AudioConverterChain>::reset[abi:ne200100](acv2::AudioConverterChain **a1, acv2::AudioConverterChain *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    acv2::AudioConverterChain::~AudioConverterChain(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t acv2::AudioConverterChain::GetProperty(acv2::AudioConverterChain *this, signed int a2, unsigned int *a3, void **a4)
{
  PropertyDelegate = acv2::AudioConverterChain::GetPropertyDelegate(this, a2);
  if (!PropertyDelegate)
  {
    v11 = 1886547824;
    if (a2 > 1835626095)
    {
      if (a2 > 1886546284)
      {
        if ((a2 - 1936876385) > 0x10 || ((1 << (a2 - 97)) & 0x18101) == 0)
        {
          if (a2 == 1886546285)
          {
            if (*a3 == 8)
            {
              __src[0] = 0;
              v44 = *(this + 13);
              v43 = *(this + 14);
              if (v44 != v43)
              {
                v45 = 0;
                do
                {
                  if ((*(**v44 + 120))())
                  {
                    if (v45)
                    {
                      v45 = 1;
                    }

                    else
                    {
                      v45 = (*(**v44 + 120))();
                    }

                    (*(**v44 + 128))(*v44, __src, 0);
                  }

                  ++v44;
                }

                while (v44 != v43);
                if (v45)
                {
                  v11 = 0;
                  *a4 = __src[0];
                }
              }

              return v11;
            }
          }

          else
          {
            if (a2 != 1919837298)
            {
              return v11;
            }

            if (*a3 == 4)
            {
              v11 = 0;
              v13 = *(this + 528);
              goto LABEL_87;
            }
          }

          return 561211770;
        }
      }

      else
      {
        if (a2 > 1868786719)
        {
          if (a2 == 1868786720)
          {
            v50 = 0;
            std::vector<char>::vector[abi:ne200100](__src, 32);
          }

          if (a2 != 1885627760)
          {
            return v11;
          }

          if (*a3 == 4)
          {
            v11 = 0;
            v13 = 1;
            goto LABEL_87;
          }

          return 561211770;
        }

        if (a2 != 1835626096)
        {
          if (a2 != 1835884912)
          {
            return v11;
          }

          v14 = *(this + 53);
          if (!v14)
          {
            v11 = 0;
            *a3 = 0;
            return v11;
          }

          v15 = *(this + 7) * *(this + 17);
          if (*a3 != 4 * v15)
          {
            return 561211770;
          }

          v16 = (4 * v15);
          memset(__src, 0, sizeof(__src));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__src, *(v14 + 176), *(v14 + 184), (*(v14 + 184) - *(v14 + 176)) >> 2);
          v17 = __src[0];
          memcpy(a4, __src[0], v16);
          if (v17)
          {
            operator delete(v17);
          }

          return 0;
        }
      }

      v28 = *(this + 37);
      if (v28 != *(this + 38))
      {
        PropertyDelegate = *v28;
        goto LABEL_2;
      }

      return v11;
    }

    if (a2 > 1667850866)
    {
      if (a2 > 1684632679)
      {
        switch(a2)
        {
          case 1684632680:
            if (*a3 == 4)
            {
              v11 = 0;
              v13 = *(this + 108);
              goto LABEL_87;
            }

            break;
          case 1684892024:
            if (*a3 == 4)
            {
              v11 = 0;
              v13 = *(this + 417);
              goto LABEL_87;
            }

            break;
          case 1768123424:
            v50 = 0;
            std::vector<char>::vector[abi:ne200100](__src, 32);
          default:
            return v11;
        }

        return 561211770;
      }

      switch(a2)
      {
        case 1667850867:
          for (i = *(this + 14); i != *(this + 13); i -= 8)
          {
            v39 = *(i - 8);
            v11 = (*(*v39 + 88))(v39, 1667850867, a3, a4);
            if (v11)
            {
              return v11;
            }
          }

          break;
        case 1668244083:
          v42 = *(this + 13);
          v41 = *(this + 14);
          if (v42 != v41)
          {
            do
            {
              v11 = (*(**v42 + 88))(*v42, 1668244083, a3, a4);
              if (v11)
              {
                break;
              }

              ++v42;
            }

            while (v42 != v41);
            return v11;
          }

          break;
        case 1684171124:
          if (*a3 == 4)
          {
            v12 = *(this + 55);
            if (v12)
            {
              v11 = 0;
              v13 = *(v12 + 168);
LABEL_87:
              *a4 = v13;
            }

            return v11;
          }

          return 561211770;
        default:
          return v11;
      }

      return 0;
    }

    if (a2 <= 1633906531)
    {
      if (a2 == 1633903204)
      {
        v40 = *(this + 43);
        if (!v40 || *(v40 + 204) != 1)
        {
          return v11;
        }

        if (*a3 == 4)
        {
          v11 = 0;
          v13 = *(this + 103);
          goto LABEL_87;
        }

        return 561211770;
      }

      if (a2 != 1633904996)
      {
        return v11;
      }

      if (*a3 != 40)
      {
        return 561211770;
      }

      v11 = 2003329396;
      v29 = *(this + 13);
      if (v29 == *(this + 14))
      {
        return v11;
      }

      v30 = *v29;
      if (!v30)
      {
        return v11;
      }

      v11 = 0;
      v31 = *(v30 + 16);
      v32 = *(v30 + 32);
      v33 = *(v30 + 48);
    }

    else
    {
      if (a2 != 1633906532)
      {
        if (a2 == 1633906803)
        {
          if (*a3 == 8)
          {
            v36 = *(this + 13);
            v37 = *(this + 14);
            while (1)
            {
              if (v36 == v37)
              {
                v11 = 0;
                *a3 = 0;
                *a4 = 0;
                return v11;
              }

              if ((*(**v36 + 136))())
              {
                break;
              }

              v36 += 8;
            }

            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], (*(this + 14) - *(this + 13)) >> 3, MEMORY[0x1E695E9C0]);
            v47 = *(this + 13);
            v48 = *(this + 14);
            while (v47 != v48)
            {
              (*(**v47 + 144))(__src);
              if (__src[0])
              {
                CFArrayAppendValue(Mutable, __src[0]);
                if (__src[0])
                {
                  CFRelease(__src[0]);
                }
              }

              v47 += 8;
            }

            v11 = 0;
            *a4 = Mutable;
            return v11;
          }

          return 561211770;
        }

        if (a2 != 1667788144)
        {
          return v11;
        }

        v18 = *a3;
        if (v18 == 4 * *(this + 17))
        {
          if (v18 >= 4)
          {
            v19 = 0;
            v20 = v18 >> 2;
            v21 = ((*a3 >> 2) + 3) & 0x7FFFFFFC;
            v22 = vdupq_n_s64(v20 - 1);
            v23 = xmmword_18F9016B0;
            v24 = xmmword_18F9016C0;
            v25 = a4 + 1;
            v26 = vdupq_n_s64(4uLL);
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v22, v24));
              if (vuzp1_s16(v27, *v22.i8).u8[0])
              {
                *(v25 - 2) = v19;
              }

              if (vuzp1_s16(v27, *&v22).i8[2])
              {
                *(v25 - 1) = v19 + 1;
              }

              if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23))).i32[1])
              {
                *v25 = v19 + 2;
                v25[1] = v19 + 3;
              }

              v11 = 0;
              v19 += 4;
              v23 = vaddq_s64(v23, v26);
              v24 = vaddq_s64(v24, v26);
              v25 += 4;
            }

            while (v21 != v19);
            return v11;
          }

          return 0;
        }

        return 561211770;
      }

      if (*a3 != 40)
      {
        return 561211770;
      }

      v11 = 2003329396;
      v34 = *(this + 14);
      if (*(this + 13) == v34)
      {
        return v11;
      }

      v35 = *(v34 - 8);
      if (!v35)
      {
        return v11;
      }

      v11 = 0;
      v31 = *(v35 + 56);
      v32 = *(v35 + 72);
      v33 = *(v35 + 88);
    }

    a4[4] = v33;
    *a4 = v31;
    *(a4 + 1) = v32;
    return v11;
  }

LABEL_2:
  v9 = *(*PropertyDelegate + 11);

  return v9();
}

void sub_18F5F2A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::AudioConverterV2::getProperty(acv2::AudioConverterV2 *this, unsigned int a2, unsigned int *a3, void **a4)
{
  if ((*(this + 12) & 1) != 0 || (*(this + 13) & 1) == 0)
  {
    v16[0] = 0;
    v22 = 0;
  }

  else
  {
    v24 = 2738;
    v25 = a2;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    kdebug_trace();
    v16[0] = 1;
    v17 = 2738;
    v18 = a2;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23[0] = 0;
    v22 = 1;
    AT::ScopedTrace::~ScopedTrace(v23);
  }

  if (a3)
  {
    if (a4)
    {
      Property = acv2::AudioConverterChain::GetProperty(*(this + 5), a2, a3, a4);
      goto LABEL_8;
    }

    v13 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v13 + 88, 16);
    if (message)
    {
      v12 = message;
      v15 = _os_log_pack_fill();
      *v15 = 67109120;
      v15[1] = a2;
      goto LABEL_15;
    }
  }

  else
  {
    v10 = _os_log_pack_size();
    v11 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v10 + 88, 16);
    if (v11)
    {
      v12 = v11;
      *_os_log_pack_fill() = 0;
LABEL_15:
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v12);
    }
  }

  Property = 4294967246;
LABEL_8:
  if (v22 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v16);
  }

  return Property;
}

void sub_18F5F2C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a10);
  }

  _Unwind_Resume(exception_object);
}

OpaqueAudioComponentInstance **acv2::AudioConverterChain::GetPropertyDelegate(acv2::AudioConverterChain *this, signed int a2)
{
  if (HIBYTE(a2) == 94)
  {
    result = *(this + 43);
    if (result)
    {
      return result;
    }
  }

  result = 0;
  if (a2 > 1868786719)
  {
    if (a2 <= 1936876384)
    {
      if (a2 > 1919116143)
      {
        if (a2 == 1919116144)
        {
          goto LABEL_47;
        }

        if (a2 == 1919837298)
        {
          return result;
        }

        v4 = 1935893603;
        goto LABEL_46;
      }

      if (a2 == 1868786720 || a2 == 1886546285)
      {
        return result;
      }

      if (a2 != 1886547309)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (a2 > 1986360177)
      {
        if (a2 > 2020175986)
        {
          if (a2 == 2020569203)
          {
            goto LABEL_50;
          }

          v5 = 28787;
        }

        else
        {
          if (a2 == 1986360178)
          {
            goto LABEL_47;
          }

          v5 = 25203;
        }

        v6 = v5 | 0x78690000;
LABEL_38:
        if (a2 != v6)
        {
          goto LABEL_56;
        }

        v7 = *(this + 13);
        v8 = *(this + 14);
LABEL_53:
        if (v7 != v8)
        {
          return *v7;
        }

        return 0;
      }

      if ((a2 - 1936876385) > 0x10 || ((1 << (a2 - 97)) & 0x18101) == 0)
      {
        v4 = 1986355826;
        goto LABEL_46;
      }
    }

LABEL_52:
    v7 = *(this + 37);
    v8 = *(this + 38);
    goto LABEL_53;
  }

  if (a2 > 1667788143)
  {
    if (a2 <= 1768123423)
    {
      if (a2 <= 1684891490)
      {
        if (a2 == 1667788144)
        {
          v7 = *(this + 40);
          v10 = *(this + 41);
          if (v7 != v10)
          {
            v11 = v10 - 8;
            if (*(this + 7) <= *(this + 17))
            {
              v7 = v11;
            }

            return *v7;
          }

          return 0;
        }

        v4 = 1668114275;
        goto LABEL_46;
      }

      if (a2 == 1684891491)
      {
        goto LABEL_47;
      }

      v4 = 1718383476;
      goto LABEL_46;
    }

    if (a2 <= 1835626095)
    {
      if (a2 == 1768123424)
      {
        return result;
      }

      v6 = 1835623027;
      goto LABEL_38;
    }

    if (a2 != 1835626096)
    {
      if (a2 != 1836016243)
      {
        goto LABEL_56;
      }

LABEL_50:
      v9 = *(this + 14);
      if (*(this + 13) != v9)
      {
        v7 = (v9 - 8);
        return *v7;
      }

      return 0;
    }

    goto LABEL_52;
  }

  if (a2 > 1634038641)
  {
    if (a2 > 1651663219)
    {
      if (a2 == 1651663220)
      {
        goto LABEL_47;
      }

      v4 = 1667527029;
    }

    else
    {
      if (a2 == 1634038642)
      {
        goto LABEL_47;
      }

      v4 = 1634366322;
    }
  }

  else
  {
    if (a2 <= 1634034289)
    {
      if (a2 != 1633904996)
      {
        v4 = 1633906532;
        goto LABEL_46;
      }

LABEL_47:
      v7 = this + 344;
      return *v7;
    }

    if (a2 == 1634034290)
    {
      goto LABEL_47;
    }

    v4 = 1634034540;
  }

LABEL_46:
  if (a2 == v4)
  {
    goto LABEL_47;
  }

LABEL_56:
  result = *(this + 43);
  if (result)
  {
    if (acv2::CodecConverter::ConverterSupportsProperty(result, a2))
    {
      goto LABEL_47;
    }

    return 0;
  }

  return result;
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

void CA::StreamDescription::AsString(CA::StreamDescription *this, void *a2, double a3, int8x8_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", this, *(a2 + 7), *a2);
    goto LABEL_69;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v55 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v55;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string("%2u ch, %6.0f Hz", this, 0, *a2);
      goto LABEL_69;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v60.__r_.__value_.__s + 23) = 4;
    LODWORD(v60.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v60.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v58, v13, *&v14, &v60, *(a2 + 3));
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    v19 = *(a2 + 2);
    if (v19 <= 1819304812)
    {
      if (v19 != 1634492771 && v19 != 1634497332 && v19 != 1718378851)
      {
LABEL_70:
        caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v60, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v58;
        }

        else
        {
          v31 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v58.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v33 = std::string::insert(&v60, 0, v31, size);
        v34 = *&v33->__r_.__value_.__l.__data_;
        *(this + 2) = *(&v33->__r_.__value_.__l + 2);
        *this = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v35 = v60.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v35);
LABEL_65:
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        goto LABEL_69;
      }

LABEL_45:
      v28 = *(a2 + 3);
      if ((v28 - 1) < 4 || !v28 && (v19 == 1634497332 || v19 == 1936487278 || v19 == 1936487267))
      {
        caulk::make_string("from %u-bit source, ", &v60, CA::StreamDescription::AsString(void)const::kSourceBits[v28]);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v60;
        }

        else
        {
          v29 = v60.__r_.__value_.__r.__words[0];
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v60.__r_.__value_.__l.__size_;
        }

        std::string::append(&v58, v29, v30);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v58, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string("%u frames/packet", &v60, *(a2 + 5));
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v58;
      }

      else
      {
        v31 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v19 == 1936487278 || v19 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v19 != 1819304813)
    {
      goto LABEL_70;
    }

    v20 = *(a2 + 3);
    v21 = *(a2 + 6);
    v22 = v20 & 0x20;
    v23 = "";
    if (!v21)
    {
      goto LABEL_37;
    }

    if ((v20 & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = *(a2 + 7);
      if (!v24)
      {
        v22 = 0;
LABEL_37:
        v25 = " signed";
        if ((v20 & 4) == 0)
        {
          v25 = " unsigned";
        }

        if (v20)
        {
          v26 = "float";
        }

        else
        {
          v26 = "integer";
        }

        if (v20)
        {
          v27 = "";
        }

        else
        {
          v27 = v25;
        }

LABEL_102:
        v60.__r_.__value_.__s.__data_[0] = 0;
        if (v22)
        {
          v41 = ", deinterleaved";
        }

        else
        {
          v41 = "";
        }

        v42 = *(a2 + 8);
        v38 = "";
        v43 = "";
        goto LABEL_106;
      }
    }

    v37 = v21 / v24;
    if (v21 / v24 < 2)
    {
      v40 = " signed";
      if ((v20 & 4) == 0)
      {
        v40 = " unsigned";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v40;
      }

      if (v24 > v21)
      {
        goto LABEL_102;
      }

      v37 = 1;
      v38 = "";
    }

    else
    {
      if ((v20 & 2) != 0)
      {
        v38 = " big-endian";
      }

      else
      {
        v38 = " little-endian";
      }

      v39 = " unsigned";
      if ((v20 & 4) != 0)
      {
        v39 = " signed";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v39;
      }
    }

    v44 = *(a2 + 7);
    if ((v20 & 0x20) != 0)
    {
      v45 = 1;
    }

    else
    {
      v45 = *(a2 + 7);
    }

    if (v45)
    {
      v45 = 8 * (v21 / v45);
    }

    if (v45 == *(a2 + 8))
    {
      v60.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v46 = "";
      }

      else
      {
        v46 = "un";
      }

      snprintf(&v60, 0x20uLL, "%spacked in %u bytes", v46, v37);
      v21 = *(a2 + 6);
      v20 = *(a2 + 3);
      if (!v21)
      {
        v47 = 0;
        v22 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v44 = *(a2 + 7);
      v22 = *(a2 + 3) & 0x20;
    }

    if (v22)
    {
      v47 = 1;
    }

    else
    {
      v47 = v44;
    }

    if (v47)
    {
      v47 = 8 * (v21 / v47);
    }

LABEL_128:
    v48 = *(a2 + 8);
    v49 = " high-aligned";
    if ((v20 & 0x10) == 0)
    {
      v49 = " low-aligned";
    }

    if ((v48 & 7) == 0 && v47 == v48)
    {
      v43 = "";
    }

    else
    {
      v43 = v49;
    }

    if (v22)
    {
      v41 = ", deinterleaved";
    }

    else
    {
      v41 = "";
    }

    if (v60.__r_.__value_.__s.__data_[0])
    {
      v23 = ", ";
LABEL_141:
      if (((v20 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v57, __str, v38, v27, v26, v23, &v60, v43, v41);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v58;
      }

      else
      {
        v51 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v58.__r_.__value_.__l.__size_;
      }

      v53 = std::string::insert(&v57, 0, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      *(this + 2) = *(&v53->__r_.__value_.__l + 2);
      *this = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v35 = v57.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v43)
    {
      v23 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v56 = ", deinterleaved";
  }

  else
  {
    v56 = ", interleaved";
  }

  if (v9 == 1)
  {
    v56 = "";
  }

  caulk::make_string("%2u ch, %6.0f Hz, %s%s", this, v9, *a2, *(&off_1E72BA0A0 + v12), v56);
LABEL_69:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_18F5F373C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AudioFormatProperty_FormatEmploysDependentPackets(RegistryAccess *a1, unsigned int *a2)
{
  RegistryAccess::instance(a1);
  v4 = qword_1ED746318;
  os_unfair_recursive_lock_lock_with_options();
  v5 = (*(*v4 + 16))(v4, a1, 1819304813, 0, 0);
  if (v5 || (v5 = (*(*v4 + 16))(v4, 1819304813, a1, 0, 0)) != 0)
  {
    v6 = (*(*v5 + 32))(v5, a2);
  }

  else
  {
    v6 = 1718449215;
  }

  os_unfair_recursive_lock_unlock();
  return v6;
}

void std::vector<ChunkInfo64>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AudioFileObject::ValidateFormatAndData(AudioFileObject *this, const AudioStreamBasicDescription *a2)
{
  v3 = 1685348671;
  v4 = *(this + 40);
  v8 = *(this + 24);
  v9 = v4;
  v10 = *(this + 7);
  if (AudioFileObject::IsDataFormatValid(&v8, a2))
  {
    if (DWORD2(v8) != 1819304813)
    {
      return 0;
    }

    v5 = (*(*this + 232))(this);
    v6 = v5 / v9;
    if ((*(*this + 248))(this) <= v6)
    {
      return 0;
    }
  }

  return v3;
}

void sub_18F5F3B58(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F5F3B40);
}

uint64_t AudioFileLocker::Lock(AudioFileLocker *this)
{
  v7.__m_ = &AudioFileMutex(void)::global;
  v7.__owns_ = 1;
  std::mutex::lock(&AudioFileMutex(void)::global);
  if (*this)
  {
    v2 = *(this + 1);
    if (v2 || (v2 = BaseOpaqueObject::ResolveOpaqueRef(), (*(this + 1) = v2) != 0))
    {
      if (*(v2 + 12))
      {
        ++*(v2 + 16);
        do
        {
          if (*(v2 + 20))
          {
            v4 = 0;
            --*(v2 + 16);
            goto LABEL_15;
          }

          std::condition_variable::wait(&AudioFileCondVar(void)::global, &v7);
          v2 = *(this + 1);
        }

        while (*(v2 + 12));
        v3 = *(v2 + 20);
        --*(v2 + 16);
        if (v3)
        {
          goto LABEL_9;
        }

        v5 = *(v2 + 12) + 1;
      }

      else
      {
        v5 = 1;
      }

      *(v2 + 12) = v5;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      *this = 0;
    }
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

LABEL_15:
  if (v7.__owns_)
  {
    std::mutex::unlock(v7.__m_);
  }

  return v4;
}

void AudioFileLocker::~AudioFileLocker(AudioFileLocker *this)
{
  std::mutex::lock(&AudioFileMutex(void)::global);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 12);
    if (v3)
    {
      *(v2 + 12) = v3 - 1;
      std::condition_variable::notify_one(&AudioFileCondVar(void)::global);
    }
  }

  std::mutex::unlock(&AudioFileMutex(void)::global);
}

uint64_t AudioFileObject::GetProperty(AudioFileObject *this, int a2, unsigned int *a3, uint64_t *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v7 = 1886681407;
  if (a2 <= 1835493730)
  {
    if (a2 > 1701082481)
    {
      if (a2 > 1718775914)
      {
        if (a2 > 1768842862)
        {
          if (a2 != 1768842863)
          {
            if (a2 != 1769172837)
            {
              if (a2 == 1819243876)
              {
                if (*a3 == 8)
                {
                  *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  *&cf[8] = 257;
                  v7 = (*(*this + 480))(this, cf);
                  if (v7 && (*(*this + 512))(this, cf))
                  {
                    goto LABEL_219;
                  }

                  v8 = *cf;
                  if (*cf)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_215;
                }

                v7 = 561211770;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *cf = 136315394;
                  *&cf[4] = "AudioFileObject.cpp";
                  v47 = 1024;
                  v48 = 1841;
                  v38 = MEMORY[0x1E69E9C10];
                  v39 = "%25s:%-5d  inDataSize is wrong";
                  goto LABEL_222;
                }
              }

LABEL_226:
              v44 = *MEMORY[0x1E69E9840];
              return v7;
            }

            if (*a3 == 8)
            {
              *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              *&cf[8] = 257;
              v7 = (*(*this + 488))(this, cf);
              if (!v7)
              {
                v24 = *cf;
                if (*cf)
                {
                  goto LABEL_164;
                }

LABEL_217:
                v9 = 0;
                goto LABEL_218;
              }

LABEL_219:
              CACFDictionary::~CACFDictionary(cf);
              goto LABEL_226;
            }

            v7 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_226;
            }

            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v47 = 1024;
            v48 = 1861;
            v38 = MEMORY[0x1E69E9C10];
            v39 = "%25s:%-5d  inDataSize is wrong";
LABEL_222:
            _os_log_impl(&dword_18F5DF000, v38, OS_LOG_TYPE_ERROR, v39, cf, 0x12u);
            goto LABEL_226;
          }

          if (*a3 != 8)
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v47 = 1024;
              v48 = 1805;
              v38 = MEMORY[0x1E69E9C10];
              v39 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }

            goto LABEL_226;
          }

          *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *&cf[8] = 257;
          v7 = (*(*this + 440))(this, cf);
          if (v7)
          {
            goto LABEL_219;
          }

          v24 = *cf;
          if (!*cf)
          {
            goto LABEL_217;
          }

LABEL_164:
          CFRetain(v24);
          v9 = *cf;
LABEL_218:
          *a4 = v9;
          goto LABEL_219;
        }

        if (a2 != 1718775915)
        {
          if (a2 != 1735159669)
          {
            goto LABEL_226;
          }

          if (*a3 != 8)
          {
            v7 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_226;
            }

            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v47 = 1024;
            v48 = 1876;
            v38 = MEMORY[0x1E69E9C10];
            v39 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_222;
          }

          *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *&cf[8] = 257;
          v7 = (*(*this + 544))(this, cf);
          if (v7)
          {
            goto LABEL_219;
          }

          v24 = *cf;
          if (!*cf)
          {
            goto LABEL_217;
          }

          goto LABEL_164;
        }

        if (*a3 != 24)
        {
          v7 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_226;
          }

          *cf = 136315394;
          *&cf[4] = "AudioFileObject.cpp";
          v47 = 1024;
          v48 = 1723;
          v38 = MEMORY[0x1E69E9C10];
          v39 = "%25s:%-5d  inDataSize is wrong";
          goto LABEL_222;
        }

        v33 = *a4;
        v21 = *(*this + 272);
        v34 = *MEMORY[0x1E69E9840];

        return v21();
      }

      if (a2 <= 1717988723)
      {
        if (a2 == 1701082482)
        {
          if (*a3 == 8)
          {
            *cf = 0;
            v7 = (*(*this + 552))(this, cf);
            *a4 = fmax(*cf, 0.0);
            goto LABEL_226;
          }

          v7 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_226;
          }

          *cf = 136315394;
          *&cf[4] = "AudioFileObject.cpp";
          v47 = 1024;
          v48 = 1892;
          v38 = MEMORY[0x1E69E9C10];
          v39 = "%25s:%-5d  inDataSize is wrong";
          goto LABEL_222;
        }

        if (a2 != 1701799487)
        {
          goto LABEL_226;
        }

        if (*a3 == 4)
        {
          *cf = 0;
          v7 = (*(**(this + 13) + 40))(*(this + 13), cf);
          if (v7)
          {
            goto LABEL_226;
          }

          v12 = *(this + 9);
          v13 = (*(*this + 232))(this);
          v14 = *cf >= v13 + v12;
          goto LABEL_225;
        }

LABEL_168:
        v7 = 561211770;
        goto LABEL_226;
      }

      if (a2 != 1717988724)
      {
        if (a2 != 1718383476)
        {
          goto LABEL_226;
        }

        v10 = *(*this + 208);
        v19 = *MEMORY[0x1E69E9840];

        return v10();
      }

      if (*a3 != 4)
      {
        v7 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_226;
        }

        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v47 = 1024;
        v48 = 1615;
        v38 = MEMORY[0x1E69E9C10];
        v39 = "%25s:%-5d  inDataSize is wrong";
        goto LABEL_222;
      }

      v7 = 0;
      v14 = *(this + 21);
LABEL_225:
      *a4 = v14;
      goto LABEL_226;
    }

    if (a2 <= 1668112751)
    {
      if (a2 > 1651663219)
      {
        if (a2 == 1651663220)
        {
          if (*a3 != 4)
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v47 = 1024;
              v48 = 1678;
              v38 = MEMORY[0x1E69E9C10];
              v39 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }

            goto LABEL_226;
          }

          v15 = *(*this + 328);
          v42 = *MEMORY[0x1E69E9840];
        }

        else
        {
          if (a2 != 1652125803)
          {
            goto LABEL_226;
          }

          if (*a3 != 24)
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v47 = 1024;
              v48 = 1795;
              v38 = MEMORY[0x1E69E9C10];
              v39 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }

            goto LABEL_226;
          }

          v15 = *(*this + 320);
          v27 = *MEMORY[0x1E69E9840];
        }
      }

      else
      {
        if (a2 != 1280922179)
        {
          if (a2 == 1650683508)
          {
            if (*a3 == 8)
            {
              v7 = 0;
              *a4 = (*(*this + 232))(this);
            }

            else
            {
              v7 = 561211770;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *cf = 136315394;
                *&cf[4] = "AudioFileObject.cpp";
                v47 = 1024;
                v48 = 1643;
                v38 = MEMORY[0x1E69E9C10];
                v39 = "%25s:%-5d  inDataSize is wrong";
                goto LABEL_222;
              }
            }
          }

          goto LABEL_226;
        }

        if (*a3 < 8)
        {
          goto LABEL_168;
        }

        *a3 = 8;
        v15 = *(*this + 616);
        v36 = *MEMORY[0x1E69E9840];
      }

      return v15();
    }

    if (a2 <= 1685022309)
    {
      if (a2 != 1668112752)
      {
        if (a2 == 1684434292)
        {
          if (*a3 == 40)
          {
            v7 = 0;
            v17 = *(this + 24);
            v18 = *(this + 40);
            a4[4] = *(this + 7);
            *a4 = v17;
            *(a4 + 1) = v18;
          }

          else
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v47 = 1024;
              v48 = 1626;
              v38 = MEMORY[0x1E69E9C10];
              v39 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }
          }
        }

        goto LABEL_226;
      }

      v7 = (*(*this + 408))(this, &v45 + 4, &v45);
      if (v7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_226;
        }

        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v47 = 1024;
        v48 = 1698;
        v38 = MEMORY[0x1E69E9C10];
        v39 = "%25s:%-5d  GetChannelLayoutSize failed";
      }

      else
      {
        if (*a3 == HIDWORD(v45))
        {
          v7 = (*(*this + 416))(this, a3, a4);
          goto LABEL_226;
        }

        v7 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_226;
        }

        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v47 = 1024;
        v48 = 1699;
        v38 = MEMORY[0x1E69E9C10];
        v39 = "%25s:%-5d  inDataSize is wrong";
      }

      goto LABEL_222;
    }

    if (a2 != 1685022310)
    {
      if (a2 != 1685289589)
      {
        goto LABEL_226;
      }

      if (*a3 != 4)
      {
        v7 = 561211770;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *cf = 136315394;
          *&cf[4] = "AudioFileObject.cpp";
          v47 = 1024;
          v48 = 1706;
          v38 = MEMORY[0x1E69E9C10];
          v39 = "%25s:%-5d  inDataSize is wrong";
          goto LABEL_222;
        }

        goto LABEL_226;
      }

      v7 = 0;
      v14 = *(this + 33);
      goto LABEL_225;
    }

    if (*a3 != 8)
    {
      v7 = 561211770;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v47 = 1024;
        v48 = 1632;
        v38 = MEMORY[0x1E69E9C10];
        v39 = "%25s:%-5d  inDataSize is wrong";
        goto LABEL_222;
      }

      goto LABEL_226;
    }

    v7 = 0;
    v41 = *(this + 9);
LABEL_156:
    *a4 = v41;
    goto LABEL_226;
  }

  if (a2 <= 1886086769)
  {
    if (a2 > 1885564531)
    {
      if (a2 > 1886085752)
      {
        if (a2 == 1886085753)
        {
          if (*a3 != 24)
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v47 = 1024;
              v48 = 1786;
              v38 = MEMORY[0x1E69E9C10];
              v39 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }

            goto LABEL_226;
          }

          v15 = *(*this + 312);
          v43 = *MEMORY[0x1E69E9840];

          return v15();
        }

        if (a2 != 1886086256)
        {
          goto LABEL_226;
        }

        if (*a3 != 16)
        {
          goto LABEL_168;
        }

        if (a4)
        {
          if ((*a4 & 0x8000000000000000) == 0)
          {
            v15 = *(*this + 304);
            v28 = *MEMORY[0x1E69E9840];

            return v15();
          }

          goto LABEL_212;
        }

LABEL_169:
        v7 = 4294967246;
        goto LABEL_226;
      }

      if (a2 == 1885564532)
      {
        if (*a3 != 8)
        {
          v7 = 561211770;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v47 = 1024;
            v48 = 1649;
            v38 = MEMORY[0x1E69E9C10];
            v39 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_222;
          }

          goto LABEL_226;
        }

        v40 = (*(*this + 248))(this);
        v7 = 0;
        v41 = v40 & ~(v40 >> 63);
        goto LABEL_156;
      }

      if (a2 != 1885957732)
      {
        goto LABEL_226;
      }
    }

    else
    {
      if (a2 <= 1852403299)
      {
        if (a2 == 1835493731)
        {
          v10 = *(*this + 344);
          v37 = *MEMORY[0x1E69E9840];
        }

        else
        {
          if (a2 != 1835756659)
          {
            goto LABEL_226;
          }

          v10 = *(*this + 368);
          v11 = *MEMORY[0x1E69E9840];
        }

        return v10();
      }

      if (a2 != 1852403300)
      {
        if (a2 != 1869640813)
        {
          goto LABEL_226;
        }

        if (*a3 != 4)
        {
          v7 = 561211770;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v47 = 1024;
            v48 = 1637;
            v38 = MEMORY[0x1E69E9C10];
            v39 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_222;
          }

          goto LABEL_226;
        }

        v7 = 0;
        v14 = *(this + 20);
        goto LABEL_225;
      }
    }

    if (*a3 != 16)
    {
      goto LABEL_168;
    }

    if (a4)
    {
      if ((*a4 & 0x8000000000000000) == 0)
      {
        v10 = *(*this + 296);
        v29 = *MEMORY[0x1E69E9840];

        return v10();
      }

      goto LABEL_212;
    }

    goto LABEL_169;
  }

  if (a2 <= 1886616164)
  {
    if (a2 > 1886090593)
    {
      if (a2 != 1886090594)
      {
        if (a2 != 1886549346)
        {
          goto LABEL_226;
        }

        if (*a3 != 24)
        {
          v7 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_226;
          }

          *cf = 136315394;
          *&cf[4] = "AudioFileObject.cpp";
          v47 = 1024;
          v48 = 1662;
          v38 = MEMORY[0x1E69E9C10];
          v39 = "%25s:%-5d  inDataSize is wrong";
          goto LABEL_222;
        }

        v20 = *a4;
        v21 = *(*this + 672);
        v22 = *MEMORY[0x1E69E9840];

        return v21();
      }

      if (*a3 != 4)
      {
        v7 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_226;
        }

        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v47 = 1024;
        v48 = 1655;
        v38 = MEMORY[0x1E69E9C10];
        v39 = "%25s:%-5d  inDataSize is wrong";
        goto LABEL_222;
      }

      v32 = (*(*this + 664))(this);
      goto LABEL_167;
    }

    if (a2 != 1886086770)
    {
      if (a2 != 1886089836)
      {
        goto LABEL_226;
      }

      if (*a3 != 16)
      {
        goto LABEL_168;
      }

      if (a4)
      {
        if ((*a4 & 0x8000000000000000) == 0)
        {
          v15 = *(*this + 288);
          v16 = *MEMORY[0x1E69E9840];

          return v15();
        }

LABEL_212:
        v7 = 1885563711;
        goto LABEL_226;
      }

      goto LABEL_169;
    }

    if (*a3 != 24)
    {
      v7 = 561211770;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_226;
      }

      *cf = 136315394;
      *&cf[4] = "AudioFileObject.cpp";
      v47 = 1024;
      v48 = 1714;
      v38 = MEMORY[0x1E69E9C10];
      v39 = "%25s:%-5d  inDataSize is wrong";
      goto LABEL_222;
    }

    v30 = a4[1];
    v10 = *(*this + 264);
    v31 = *MEMORY[0x1E69E9840];

    return v10();
  }

  if (a2 > 1920098671)
  {
    if (a2 != 1920098672)
    {
      if (a2 != 1935832164)
      {
        if (a2 == 1935893603)
        {
          if (*a3 == 8)
          {
            *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *&cf[8] = 257;
            v7 = (*(*this + 464))(this, cf);
            if (v7 && (*(*this + 504))(this, cf))
            {
              goto LABEL_219;
            }

            v8 = *cf;
            if (*cf)
            {
LABEL_23:
              CFRetain(v8);
              v9 = *cf;
LABEL_216:
              v7 = 0;
              goto LABEL_218;
            }

LABEL_215:
            v9 = 0;
            goto LABEL_216;
          }

          v7 = 561211770;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v47 = 1024;
            v48 = 1821;
            v38 = MEMORY[0x1E69E9C10];
            v39 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_222;
          }
        }

        goto LABEL_226;
      }

      if (*a3 == 4)
      {
        *cf = 0;
        v35 = (*(*this + 704))(this, cf);
        v7 = v35;
        v14 = *cf;
        if (v35 || !*cf)
        {
          if (*(this + 8) == 1819304813)
          {
            v14 = *(this + 14);
            if (*(this + 36))
            {
              v14 = -v14;
            }
          }

          else if (v35)
          {
            goto LABEL_226;
          }
        }

        v7 = 0;
        goto LABEL_225;
      }

      goto LABEL_168;
    }

    if (*a3 != 4)
    {
      goto LABEL_168;
    }

    v32 = (*(*this + 280))(this);
LABEL_167:
    v7 = 0;
    *a4 = v32;
    goto LABEL_226;
  }

  if (a2 == 1886616165)
  {
    if (*a3 != 4)
    {
      v7 = 561211770;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_226;
      }

      *cf = 136315394;
      *&cf[4] = "AudioFileObject.cpp";
      v47 = 1024;
      v48 = 1671;
      v38 = MEMORY[0x1E69E9C10];
      v39 = "%25s:%-5d  inDataSize is wrong";
      goto LABEL_222;
    }

    v32 = (*(*this + 648))(this);
    goto LABEL_167;
  }

  if (a2 != 1919380595)
  {
    goto LABEL_226;
  }

  bzero(a4, *a3);
  v25 = *(*this + 392);
  v26 = *MEMORY[0x1E69E9840];

  return v25(this, a3, a4);
}