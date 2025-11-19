void HALS_NotificationManager::PropertiesChanged(HALS_NotificationManager *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, const AudioObjectPropertyAddress *a5)
{
  if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
  {
    v37 = HALS_NotificationManager::Initialize;
    v42 = &v37;
    std::__call_once(&HALS_NotificationManager::sInitialized, &v42, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  v9 = mach_absolute_time();
  HALS_NotificationManager::FindObject(&v35, this);
  v10 = v35;
  if (v35)
  {
    HALS_NotificationManager::Monitor::BeginReadOperation((v35 + 2));
    v24 = v9;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v45 = (v10 + 48);
    v46 = HALB_Mutex::Lock((v10 + 48));
    v11 = *(v10 + 37);
    for (i = *(v10 + 38); v11 != i; v11 = (v11 + 64))
    {
      if (!*v11)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        if (a3)
        {
          v13 = 0;
          do
          {
            v14 = *(v11 + 5);
            v15 = *(v11 + 6);
            if (v14 != v15)
            {
              v16 = &a4[v13];
              while (1)
              {
                if (*v14 == 707406378 || *v14 == v16->mSelector)
                {
                  v18 = v14[1];
                  if (v18 == 707406378 || v18 == v16->mScope)
                  {
                    v20 = v14[2];
                    if (v20 == -1 || v20 == v16->mElement)
                    {
                      break;
                    }
                  }
                }

                v14 += 3;
                if (v14 == v15)
                {
                  goto LABEL_27;
                }
              }

              std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v42, v16);
            }

LABEL_27:
            ++v13;
          }

          while (v13 != a3);
          v21 = v42;
          if (v42 != v43)
          {
            std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::pair[abi:ne200100]<HALS_Listener const&,std::vector<AudioObjectPropertyAddress>&,0>(&v37, v11, &v42);
            std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v32, &v37);
            if (__p)
            {
              v41 = __p;
              operator delete(__p);
            }

            HALS_Listener::~HALS_Listener(&v37);
          }

          if (v21)
          {
            operator delete(v21);
          }
        }
      }
    }

    HALB_Mutex::Locker::~Locker(&v45);
    HALS_NotificationManager::Object::CallOwner(*v10, a2, a3, a4, 0);
    HALS_NotificationManager::Object::CallListeners_Sync(v10, a2, v32, v33);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress const*,AudioObjectPropertyAddress const*>(&v37, a4, &a4[a3], a3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN24HALS_NotificationManager17PropertiesChangedEjjjPK26AudioObjectPropertyAddress_block_invoke;
    block[3] = &__block_descriptor_tmp_12408;
    v22 = v35;
    block[4] = v35;
    v26 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v23 = v37;
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&v27, v37, v38, 0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 2));
    v31 = a2;
    v30 = v24;
    AMCP::Utility::Dispatch_Queue::async((v22 + 80), block);
    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (v23)
    {
      operator delete(v23);
    }

    v37 = &v32;
    std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&v37);
  }

  else
  {
    HALS_NotificationManager::CallOwner(this, a2, a3, a4, 0);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }
}

void sub_1DE5C6294(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v27)
  {
    operator delete(v27);
  }

  a27 = &a22;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&a27);
  __cxa_begin_catch(a1);
  HALS_NotificationManager::Monitor::FinishReadOperation((a25 + 8));
  __cxa_end_catch();
  JUMPOUT(0x1DE5C6268);
}

void sub_1DE5C6340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_end_catch();
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

void HALS_NotificationManager::Monitor::BeginReadOperation(HALS_NotificationManager::Monitor *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = this;
  v10 = HALB_Mutex::Lock(this);
  if (*(this + 22))
  {
    v2 = *(this + 19);
    if (v2 == -1)
    {
LABEL_10:
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136315394;
      v12 = "HALS_NotificationManager.cpp";
      v13 = 1024;
      v14 = 74;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  HALS_NotificationManager::SafeIncrement: value at maximum before increment. this is probably a bug";
      goto LABEL_14;
    }

    *(this + 19) = v2 + 1;
    while (*(this + 22))
    {
      HALB_Guard::Wait(v9);
    }

    v3 = *(this + 19);
    if (!v3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136315394;
      v12 = "HALS_NotificationManager.cpp";
      v13 = 1024;
      v14 = 80;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  HALS_NotificationManager::SafeIncrement: value at minimum before decrement. this is probably a bug";
LABEL_14:
      _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    *(this + 19) = v3 - 1;
  }

  v4 = *(this + 20);
  if (v4 == -1)
  {
    goto LABEL_10;
  }

  *(this + 20) = v4 + 1;
  HALB_Guard::Locker::~Locker(&v9);
  v5 = *MEMORY[0x1E69E9840];
}

void HALS_NotificationManager::Object::CallOwner(HALS_NotificationManager::Object *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5)
{
  v9 = HALS_ObjectMap::CopyObjectByObjectID(this);
  v11 = v9;
  if (v9)
  {
    v12 = HALS_ObjectMap::CopyObjectByObjectID(*(v9 + 28));
    v14 = v12;
    if (v12 && (*(*v12 + 144))(v12))
    {
      (*(*v14 + 152))(v14, v11, a2, a3, a4, a5);
    }

    HALS_ObjectMap::ReleaseObject(v14, v13);
  }

  HALS_ObjectMap::ReleaseObject(v11, v10);
}

void sub_1DE5C6618(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

void HALS_NotificationManager::Object::CallListeners_Sync(unsigned int *a1, uint64_t a2, HALS_Listener *this, HALS_Listener *a4)
{
  if (this != a4)
  {
    v5 = this;
    do
    {
      HALS_Listener::Call(v5, *a1, a2, -1431655765 * ((*(v5 + 6) - *(v5 + 5)) >> 2), *(v5 + 5), 1);
      v5 = (v5 + 64);
    }

    while (v5 != a4);
  }
}

void ___ZN24HALS_NotificationManager17PropertiesChangedEjjjPK26AudioObjectPropertyAddress_block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v31 = (v2 + 24);
  v32 = HALB_Mutex::Lock((v2 + 24));
  v5 = v2[37];
  v6 = v2[38];
  if (v5 != v6)
  {
    v7 = -1431655765 * ((v3 - v4) >> 2);
    do
    {
      if ((*v5 - 1) <= 5)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        if (v7)
        {
          for (i = 0; i != v7; ++i)
          {
            v9 = *(v5 + 5);
            v10 = *(v5 + 6);
            if (v9 != v10)
            {
              v11 = v4 + 12 * i;
              while (1)
              {
                if (*v9 == 707406378 || *v9 == *v11)
                {
                  v13 = v9[1];
                  if (v13 == 707406378 || v13 == *(v11 + 4))
                  {
                    v15 = v9[2];
                    if (v15 == -1 || v15 == *(v11 + 8))
                    {
                      break;
                    }
                  }
                }

                v9 += 3;
                if (v9 == v10)
                {
                  goto LABEL_23;
                }
              }

              std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v28, v11);
            }

LABEL_23:
            ;
          }

          v16 = v28;
          if (v28 != v29)
          {
            std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::pair[abi:ne200100]<HALS_Listener const&,std::vector<AudioObjectPropertyAddress>&,0>(v25, v5, &v28);
            std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v22, v25);
            if (__p)
            {
              v27 = __p;
              operator delete(__p);
            }

            HALS_Listener::~HALS_Listener(v25);
          }

          if (v16)
          {
            operator delete(v16);
          }
        }
      }

      v5 = (v5 + 64);
    }

    while (v5 != v6);
  }

  HALB_Mutex::Locker::~Locker(&v31);
  v17 = v22;
  v18 = v23;
  if (v22 != v23)
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 80);
    do
    {
      HALS_Listener::Call(v17, *v19, v20, -1431655765 * ((*(v17 + 48) - *(v17 + 40)) >> 2), *(v17 + 40), 0);
      v17 += 64;
    }

    while (v17 != v18);
  }

  v25[0] = &v22;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](v25);
  HALS_NotificationManager::Monitor::FinishReadOperation((*(a1 + 32) + 8));
}

void sub_1DE5C68E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5C68BCLL);
}

void std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = (v4 - 64);
        std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::~pair(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void HALS_NotificationManager::Monitor::FinishReadOperation(HALS_NotificationManager::Monitor *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = this;
  v7 = HALB_Mutex::Lock(this);
  v2 = *(this + 20);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "HALS_NotificationManager.cpp";
      v10 = 1024;
      v11 = 80;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_NotificationManager::SafeIncrement: value at minimum before decrement. this is probably a bug", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v3 = v2 - 1;
  *(this + 20) = v3;
  if (!v3)
  {
    HALB_Guard::NotifyAll(this);
  }

  HALB_Guard::Locker::~Locker(&v6);
  v4 = *MEMORY[0x1E69E9840];
}

void HALS_NotificationManager::CallOwner(HALS_NotificationManager *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v9 = HALS_ObjectMap::CopyObjectByObjectID(this);
  v11 = v9;
  if (v9)
  {
    v12 = HALS_ObjectMap::CopyObjectByObjectID(*(v9 + 28));
    v14 = v12;
    if (v12 && (*(*v12 + 144))(v12))
    {
      (*(*v14 + 152))(v14, v11, a2, a3, a4, a5);
    }

    HALS_ObjectMap::ReleaseObject(v14, v13);
  }

  HALS_ObjectMap::ReleaseObject(v11, v10);
}

void sub_1DE5C6BF4(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

void HALS_Listener::~HALS_Listener(HALS_Listener *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    _Block_release(v3);
  }
}

void __destroy_helper_block_e8_32c61_ZTSNSt3__110shared_ptrIN24HALS_NotificationManager6ObjectEEE48c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(void *a1)
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

uint64_t __copy_helper_block_e8_32c61_ZTSNSt3__110shared_ptrIN24HALS_NotificationManager6ObjectEEE48c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(void *a1, void *a2)
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
  return std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>((a1 + 6), a2[6], a2[7], 0xAAAAAAAAAAAAAAABLL * ((a2[7] - a2[6]) >> 2));
}

void sub_1DE5C6D20(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_NotificationManager::anonymous namespace::ThreadMarker::ThreadMarker(HALS_NotificationManager::_anonymous_namespace_::ThreadMarker *this)
{
  v1 = pthread_setspecific(HALS_NotificationManager::sThreadMarkerKey, 1);
  if (v1)
  {
    v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v4 = *(v2 + 8);
      v5 = (v1 << 32) | 0x2F4;
      v6 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v6 + 16) = 0;
      *(v6 + 20) = 16;
      *(v6 + 24) = "HALS_NotificationManager.cpp";
      *(v6 + 32) = v5;
      *v6 = &unk_1F597FC88;
      *(v6 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v4, v6);
      if (v3)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void HALS_NotificationManager::anonymous namespace::ThreadMarker::~ThreadMarker(HALS_NotificationManager::_anonymous_namespace_::ThreadMarker *this)
{
  v1 = pthread_setspecific(HALS_NotificationManager::sThreadMarkerKey, 0);
  if (v1)
  {
    v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v4 = *(v2 + 8);
      v5 = (v1 << 32) | 0x2FF;
      v6 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v6 + 16) = 0;
      *(v6 + 20) = 16;
      *(v6 + 24) = "HALS_NotificationManager.cpp";
      *(v6 + 32) = v5;
      *v6 = &unk_1F597FCE0;
      *(v6 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v4, v6);
      if (v3)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_NotificationManager::anonymous namespace::ThreadMarker::~ThreadMarker()::{lambda(std::tuple<char const*,int,unsigned int> &)#1},std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d ThreadMarker::ThreadMarker: failed to set the marker, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALS_NotificationManager::anonymous namespace::ThreadMarker::~ThreadMarker()::{lambda(std::tuple<char const*,int,unsigned int> &)#1},std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_Listener::Call(HALS_Listener *this, HALS_ObjectMap *a2, uint64_t a3, uint64_t a4, const AudioObjectPropertyAddress *a5, int a6)
{
  v6 = a5;
  v10 = *this;
  if (*this > 3)
  {
    if (v10 == 4)
    {
      if (a4)
      {
        v22 = *(this + 3);
        v23 = a4;
        do
        {
          mSelector = v6->mSelector;
          ++v6;
          v22(mSelector, *(this + 4));
          --v23;
        }

        while (v23);
      }
    }

    else if (v10 == 5)
    {
      if (a4)
      {
        v26 = *(this + 3);
        v27 = a4;
        p_mElement = &a5->mElement;
        do
        {
          v26(a2, *p_mElement, *(p_mElement - 1) == 1768845428, *(p_mElement - 2), *(this + 4));
          p_mElement += 3;
          --v27;
        }

        while (v27);
      }
    }

    else if (v10 == 6 && a4)
    {
      v13 = *(this + 3);
      v14 = a4;
      do
      {
        v15 = v6->mSelector;
        ++v6;
        v13(a2, v15, v15, *(this + 4));
        --v14;
      }

      while (v14);
    }
  }

  else if (v10 < 2)
  {
    v17 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v18 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 1));
    v20 = v18;
    if (v17 && v18)
    {
      (*(*v18 + 168))(v18, v17, a3, a4, v6);
    }

    HALS_ObjectMap::ReleaseObject(v20, v19);
    HALS_ObjectMap::ReleaseObject(v17, v21);
  }

  else if (v10 == 2)
  {
    v25 = *(this + 1);
    if (v25)
    {
      if (a6)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZNK13HALS_Listener4CallEjjjPK26AudioObjectPropertyAddressb_block_invoke;
        block[3] = &__block_descriptor_tmp_9_12416;
        v49 = a4;
        block[4] = this;
        block[5] = a5;
        dispatch_sync(v25, block);
      }

      else
      {
        v31 = *this;
        v45[0] = *this;
        v46 = *(this + 1);
        v32 = *(this + 4);
        v45[1] = v25;
        v47 = v32;
        dispatch_retain(v25);
        if (v46)
        {
          *&v46 = _Block_copy(v46);
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress const*,AudioObjectPropertyAddress const*>(&v42, v6, &v6[a4], a4);
        v33 = *(this + 1);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 1174405120;
        v35[2] = ___ZNK13HALS_Listener4CallEjjjPK26AudioObjectPropertyAddressb_block_invoke_2;
        v35[3] = &__block_descriptor_tmp_10_12417;
        v36[0] = v31;
        v36[1] = v25;
        *aBlock = v46;
        v38 = v32;
        dispatch_retain(v25);
        if (aBlock[0])
        {
          aBlock[0] = _Block_copy(aBlock[0]);
        }

        __p = 0;
        v40 = 0;
        v41 = 0;
        v34 = v42;
        std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&__p, v42, v43, 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 2));
        dispatch_async(v33, v35);
        if (__p)
        {
          v40 = __p;
          operator delete(__p);
        }

        HALS_Listener::~HALS_Listener(v36);
        if (v34)
        {
          operator delete(v34);
        }

        HALS_Listener::~HALS_Listener(v45);
      }
    }

    else
    {
      v29 = *(this + 2);
      v30 = *(*(this + 2) + 16);

      v30();
    }
  }

  else if (v10 == 3)
  {
    v12 = *(this + 3);
    v11 = *(this + 4);

    v12(a2, a4, v6, v11);
  }
}

void sub_1DE5C7424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  HALS_Listener::~HALS_Listener(&a25);
  _Unwind_Resume(a1);
}

void sub_1DE5C74C4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_Listener::HALS_Listener(HALS_Listener *this, const HALS_Listener *a2)
{
  *this = *a2;
  v3 = *(a2 + 1);
  *(this + 1) = v3;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  *(this + 4) = *(a2 + 4);
  if (v3)
  {
    dispatch_retain(v3);
    v5 = *(this + 2);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
      return;
    }
  }

  *(this + 2) = _Block_copy(v5);
}

void sub_1DE5C7588(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void __destroy_helper_block_e8_32c19_ZTS13HALS_Listener72c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  HALS_Listener::~HALS_Listener((a1 + 4));
}

uint64_t __copy_helper_block_e8_32c19_ZTS13HALS_Listener72c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(void *a1, uint64_t *a2)
{
  HALS_Listener::HALS_Listener((a1 + 4), (a2 + 4));
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  return std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>((a1 + 9), a2[9], a2[10], 0xAAAAAAAAAAAAAAABLL * ((a2[10] - a2[9]) >> 2));
}

HALS_Listener *std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::pair[abi:ne200100]<HALS_Listener const&,std::vector<AudioObjectPropertyAddress>&,0>(HALS_Listener *a1, const HALS_Listener *a2, uint64_t *a3)
{
  HALS_Listener::HALS_Listener(a1, a2);
  v5[5] = 0;
  v5[6] = 0;
  v5 += 5;
  v5[2] = 0;
  std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(v5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  return a1;
}

uint64_t *std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *result) >> 6;
    v7 = v6 + 1;
    if ((v6 + 1) >> 58)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v22 = v2;
    if (v9)
    {
      std::allocator<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = v6 << 6;
    v19 = 0;
    v20 = v10;
    *(&v21 + 1) = 0;
    *v10 = *a2;
    *(v10 + 8) = *(a2 + 8);
    *(v10 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 40) = *(a2 + 40);
    *(v10 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v11 = *v2;
    v12 = v2[1];
    v13 = (v6 << 6) - (v12 - *v2);
    *&v21 = (v6 << 6) + 64;
    if (v12 != v11)
    {
      v14 = (-64 * ((v12 - v11) >> 6) + (v6 << 6) + 40);
      v15 = v11;
      do
      {
        HALS_Listener::HALS_Listener((v14 - 5), v15);
        *v14 = 0;
        v14[1] = 0;
        v14[2] = 0;
        std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(v14, v15[5], v15[6], 0xAAAAAAAAAAAAAAABLL * ((v15[6] - v15[5]) >> 2));
        v15 += 8;
        v14 += 8;
      }

      while (v15 != v12);
      do
      {
        std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::~pair(v11);
        v11 = (v11 + 64);
      }

      while (v11 != v12);
    }

    v16 = *v2;
    *v2 = v13;
    v17 = v2[2];
    v18 = v21;
    *(v2 + 1) = v21;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v19 = v16;
    v20 = v16;
    result = std::__split_buffer<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::~__split_buffer(&v19);
    v5 = v18;
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v5 = v3 + 64;
    result[1] = v5;
  }

  v2[1] = v5;
  return result;
}

void std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::~pair(HALS_Listener *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  HALS_Listener::~HALS_Listener(this);
}

void std::allocator<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::~pair((i - 64));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_NotificationManager::anonymous namespace::ThreadMarker::ThreadMarker(void)::{lambda(std::tuple<char const*,int,unsigned int> &)#1},std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d ThreadMarker::ThreadMarker: failed to set the marker, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALS_NotificationManager::anonymous namespace::ThreadMarker::ThreadMarker(void)::{lambda(std::tuple<char const*,int,unsigned int> &)#1},std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_NotificationManager::PropertiesChanged_Sync(HALS_NotificationManager *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, const AudioObjectPropertyAddress *a5)
{
  if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
  {
    v31[0] = HALS_NotificationManager::Initialize;
    v34 = v31;
    std::__call_once(&HALS_NotificationManager::sInitialized, &v34, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  mach_absolute_time();
  HALS_NotificationManager::FindObject(v29, this);
  v9 = *v29;
  if (*v29)
  {
    HALS_NotificationManager::Monitor::BeginReadOperation((*v29 + 8));
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v37 = (v9 + 48);
    v38 = HALB_Mutex::Lock((v9 + 48));
    v10 = *(v9 + 37);
    for (i = *(v9 + 38); v10 != i; v10 = (v10 + 64))
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      if (a3)
      {
        v12 = 0;
        do
        {
          v13 = *(v10 + 5);
          v14 = *(v10 + 6);
          if (v13 != v14)
          {
            v15 = &a4[v12];
            while (1)
            {
              if (*v13 == 707406378 || *v13 == v15->mSelector)
              {
                v17 = v13[1];
                if (v17 == 707406378 || v17 == v15->mScope)
                {
                  v19 = v13[2];
                  if (v19 == -1 || v19 == v15->mElement)
                  {
                    break;
                  }
                }
              }

              v13 += 3;
              if (v13 == v14)
              {
                goto LABEL_24;
              }
            }

            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v34, v15);
          }

LABEL_24:
          ++v12;
        }

        while (v12 != a3);
        v20 = v34;
        if (v34 != v35)
        {
          if (*v10)
          {
            std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::pair[abi:ne200100]<HALS_Listener const&,std::vector<AudioObjectPropertyAddress>&,0>(v31, v10, &v34);
            std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v23, v31);
          }

          else
          {
            std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::pair[abi:ne200100]<HALS_Listener const&,std::vector<AudioObjectPropertyAddress>&,0>(v31, v10, &v34);
            std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v26, v31);
          }

          if (__p)
          {
            v33 = __p;
            operator delete(__p);
          }

          HALS_Listener::~HALS_Listener(v31);
        }

        if (v20)
        {
          operator delete(v20);
        }
      }
    }

    HALB_Mutex::Locker::~Locker(&v37);
    HALS_NotificationManager::Object::CallOwner(*v9, a2, a3, a4, 1);
    HALS_NotificationManager::Object::CallListeners_Sync(v9, a2, v26, v27);
    HALS_NotificationManager::Object::CallListeners_Sync(*v29, a2, v23, v24);
    v31[0] = &v23;
    std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](v31);
    v31[0] = &v26;
    std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](v31);
    HALS_NotificationManager::Monitor::FinishReadOperation((*v29 + 8));
  }

  else
  {
    HALS_NotificationManager::CallOwner(this, a2, a3, a4, 1);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

void sub_1DE5C804C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5C7FD4);
}

void sub_1DE5C8058(HALS_NotificationManager::_anonymous_namespace_::ThreadMarker *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a9;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = &a12;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5C7FF8);
}

void sub_1DE5C80FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioObjectPropertyAddress>::__insert_with_size[abi:ne200100]<AudioObjectPropertyAddress const*,AudioObjectPropertyAddress const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 2)) >= a5)
    {
      v14 = v8 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - __dst) >> 2)) >= a5)
      {
        v18 = 3 * a5;
        v19 = &__dst[12 * a5];
        v20 = &v8[-12 * a5];
        v21 = a1[1];
        while (v20 < v8)
        {
          v22 = *v20;
          *(v21 + 8) = *(v20 + 2);
          *v21 = v22;
          v21 += 12;
          v20 += 12;
        }

        a1[1] = v21;
        if (v8 != v19)
        {
          memmove(&__dst[12 * a5], __dst, v8 - v19);
        }

        v27 = 4 * v18;
        v28 = __dst;
        v29 = v5;
      }

      else
      {
        v15 = &__src[v14];
        v16 = a1[1];
        while (v15 != a4)
        {
          v17 = *v15;
          *(v16 + 8) = *(v15 + 2);
          *v16 = v17;
          v16 += 12;
          v15 += 12;
        }

        a1[1] = v16;
        if (v14 < 1)
        {
          return;
        }

        v23 = &__dst[12 * a5];
        v24 = v16 - 12 * a5;
        v25 = v16;
        while (v24 < v8)
        {
          v26 = *v24;
          *(v25 + 8) = *(v24 + 8);
          *v25 = v26;
          v25 += 12;
          v24 += 12;
        }

        a1[1] = v25;
        if (v16 != v23)
        {
          memmove(&__dst[12 * a5], __dst, v16 - v23);
        }

        v28 = __dst;
        v29 = v5;
        v27 = v14;
      }

      memmove(v28, v29, v27);
    }

    else
    {
      v10 = *a1;
      v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 2);
      if (v11 > 0x1555555555555555)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0x1555555555555555;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v13);
      }

      v30 = 4 * ((__dst - v10) >> 2);
      v31 = (v30 + 12 * a5);
      v32 = 12 * a5;
      v33 = v30;
      do
      {
        v34 = *v5;
        *(v33 + 8) = *(v5 + 2);
        *v33 = v34;
        v33 += 12;
        v5 += 12;
        v32 -= 12;
      }

      while (v32);
      memcpy(v31, __dst, a1[1] - __dst);
      v35 = *a1;
      v36 = &v31[a1[1] - __dst];
      a1[1] = __dst;
      v37 = (__dst - v35);
      v38 = (v30 - (__dst - v35));
      memcpy(v38, v35, v37);
      v39 = *a1;
      *a1 = v38;
      a1[1] = v36;
      a1[2] = 0;
      if (v39)
      {

        operator delete(v39);
      }
    }
  }
}

void std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__init_with_size[abi:ne200100]<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*,std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      std::allocator<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void HALS_NotificationManager::CallGroupOwner(HALS_NotificationManager *this, uint64_t a2, uint64_t a3, uint64_t a4, const unsigned int *a5, const unsigned int *a6, uint64_t a7, const AudioObjectPropertyAddress *a8, unint64_t a9, BOOL a10)
{
  v10 = a8;
  v18 = HALS_ObjectMap::CopyObjectByObjectID(this);
  v20 = v18;
  if (v18)
  {
    v21 = HALS_ObjectMap::CopyObjectByObjectID(*(v18 + 28));
    v23 = v21;
    if (v21 && (*(*v21 + 144))(v21))
    {
      v24 = v10;
      (*(*v23 + 160))(v23, this, a2, a3, a4, a5, a6, a7, v24);
    }

    HALS_ObjectMap::ReleaseObject(v23, v22);
  }

  HALS_ObjectMap::ReleaseObject(v20, v19);
}

void sub_1DE5C86B8(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

void HALS_NotificationManager::Object::CallGroupListeners_Sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = *MEMORY[0x1E69E9840];
  v16 = dispatch_group_create();
  v17 = *a8;
  for (i = *(a8 + 8); v17 != i; v17 += 16)
  {
    if (*v17 <= 1u)
    {
      v27 = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      HALS_Listener::GroupCall(v17, a1, a2, a3, a4, a5, a6, a7, 1, a9, &v27);
      if (v16)
      {
        dispatch_release(v16);
      }
    }
  }

  v19 = dispatch_time(0, 2000000000);
  v20 = dispatch_group_wait(v16, v19);
  if (v20)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v20);
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

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "HALS_NotificationManager.cpp";
      v30 = 1024;
      v31 = 682;
      _os_log_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Timed out waiting for group listener notifications to complete", buf, 0x12u);
    }
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1DE5C88F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    dispatch_release(v12);
  }

  _Unwind_Resume(v13);
}

void HALS_NotificationManager::CallListeners_Sync(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v5 = v3[5];
      v6 = v3[6];
      while (v5 != v6)
      {
        HALS_Listener::Call(v5, *(v3 + 8), a1, -1431655765 * ((*(v5 + 48) - *(v5 + 40)) >> 2), *(v5 + 40), 1);
        v5 += 64;
      }

      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v2);
  }
}

void ___ZN24HALS_NotificationManager22GroupPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddress_block_invoke(HALS_NotificationManager::_anonymous_namespace_::ThreadMarker *a1)
{
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v40 = a1;
  v2 = *(a1 + 4);
  v59 = (v2 + 192);
  LODWORD(v60) = HALB_Mutex::Lock((v2 + 192));
  v3 = *(v2 + 296);
  v4 = *(v2 + 304);
  if (v3 != v4)
  {
    while (*v3 != 1)
    {
LABEL_11:
      v3 += 64;
      if (v3 == v4)
      {
        goto LABEL_12;
      }
    }

    v52 = *v3;
    v5 = *(v3 + 8);
    v53 = v5;
    v6 = *(v3 + 16);
    v54 = v6;
    v55 = *(v3 + 32);
    if (v5)
    {
      dispatch_retain(v5);
      v7 = v54;
      if (!v54)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = v6;
      if (!v6)
      {
LABEL_8:
        __p = 0;
        v57 = 0;
        v58 = 0;
        std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v44, &v52);
        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }

        HALS_Listener::~HALS_Listener(&v52);
        goto LABEL_11;
      }
    }

    *&v54 = _Block_copy(v7);
    goto LABEL_8;
  }

LABEL_12:
  HALB_Mutex::Locker::~Locker(&v59);
  v8 = *(v40 + 6);
  v9 = (*(v40 + 7) - v8) >> 2;
  v10 = *(v40 + 12);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((*(v40 + 13) - v10) >> 2);
  v12 = v44;
  v13 = v45;
  if (v44 != v45)
  {
    v14 = *(v40 + 32);
    v15 = *(v40 + 33);
    v16 = *(v40 + 9);
    do
    {
      if (*v12 <= 1u)
      {
        v52 = 0;
        v53 = 0;
        *&v54 = 0;
        v59 = 0;
        HALS_Listener::GroupCall(v12, v14, v15, v9, v8, v16, v11, v10, 0, &v52, &v59);
        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }
      }

      v12 += 16;
    }

    while (v12 != v13);
    v8 = *(v40 + 6);
    v10 = *(v40 + 12);
    v9 = (*(v40 + 7) - v8) >> 2;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(v40 + 13) - v10) >> 2);
  }

  v43[0] = 0;
  v43[1] = 0;
  v42 = v43;
  if (v9 && v11)
  {
    v17 = *(v40 + 9);
    v41 = (v10 + 12 * v11);
    do
    {
      HALS_NotificationManager::FindObject(&v50, *v8);
      v18 = v50;
      if (v50)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v19 = *v17;
        v62 = (v50 + 192);
        v63 = HALB_Mutex::Lock((v50 + 192));
        v21 = *(v18 + 296);
        v20 = *(v18 + 304);
        while (v21 != v20)
        {
          if (*v21 >= 2u)
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            if (v19)
            {
              for (i = 0; i != v19; ++i)
              {
                v23 = *(v21 + 5);
                v24 = *(v21 + 6);
                if (v23 != v24)
                {
                  v25 = v10 + 12 * i;
                  while (1)
                  {
                    v26 = *v23 == 707406378 || *v23 == *v25;
                    if (v26)
                    {
                      v27 = v23[1];
                      if (v27 == 707406378 || v27 == *(v25 + 4))
                      {
                        v29 = v23[2];
                        if (v29 == -1 || v29 == *(v25 + 8))
                        {
                          break;
                        }
                      }
                    }

                    v23 += 3;
                    if (v23 == v24)
                    {
                      goto LABEL_45;
                    }
                  }

                  std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v59, v25);
                }

LABEL_45:
                ;
              }

              v30 = v59;
              if (v59 != v60 && (*v21 - 1) <= 5)
              {
                std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::pair[abi:ne200100]<HALS_Listener const&,std::vector<AudioObjectPropertyAddress>&,0>(&v52, v21, &v59);
                std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v47, &v52);
                if (__p)
                {
                  v57 = __p;
                  operator delete(__p);
                }

                HALS_Listener::~HALS_Listener(&v52);
              }

              if (v30)
              {
                operator delete(v30);
              }
            }
          }

          v21 = (v21 + 64);
        }

        HALB_Mutex::Locker::~Locker(&v62);
        if (v47 != v48)
        {
          LODWORD(v52) = *v8;
          v54 = 0uLL;
          v53 = 0;
          std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__init_with_size[abi:ne200100]<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*,std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*>(&v53, v47, v48, (v48 - v47) >> 6);
          std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>(&v42, v52);
          v59 = &v53;
          std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&v59);
        }

        v52 = &v47;
        std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&v52);
      }

      v32 = *v17++;
      v31 = v32;
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      LODWORD(v9) = v9 - 1;
      if (!v9)
      {
        break;
      }

      v10 += 12 * v31;
      ++v8;
    }

    while (v10 != v41);
    v33 = v42;
    if (v42 != v43)
    {
      v34 = *(v40 + 33);
      do
      {
        v35 = v33[5];
        v36 = v33[6];
        while (v35 != v36)
        {
          HALS_Listener::Call(v35, *(v33 + 8), v34, -1431655765 * ((*(v35 + 6) - *(v35 + 5)) >> 2), *(v35 + 5), 0);
          v35 += 64;
        }

        v37 = v33[1];
        if (v37)
        {
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37);
        }

        else
        {
          do
          {
            v38 = v33[2];
            v26 = *v38 == v33;
            v33 = v38;
          }

          while (!v26);
        }

        v33 = v38;
      }

      while (v38 != v43);
    }
  }

  std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::destroy(v43[0]);
  v52 = &v44;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&v52);
  HALS_NotificationManager::Monitor::FinishReadOperation((*(v40 + 4) + 8));
}

void sub_1DE5C8EA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  a27 = &a19;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&a27);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5C8E6CLL);
}

void std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

void __destroy_helper_block_e8_32c61_ZTSNSt3__110shared_ptrIN24HALS_NotificationManager6ObjectEEE48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE72c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE96c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t __copy_helper_block_e8_32c61_ZTSNSt3__110shared_ptrIN24HALS_NotificationManager6ObjectEEE48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE72c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE96c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 2);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 9), a2[9], a2[10], (a2[10] - a2[9]) >> 2);
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  return std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>((a1 + 12), a2[12], a2[13], 0xAAAAAAAAAAAAAAABLL * ((a2[13] - a2[12]) >> 2));
}

void sub_1DE5C9104(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[10] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[7] = v6;
    operator delete(v6);
  }

  v7 = v1[5];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Listener::GroupCall(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, NSObject **a11)
{
  if (*a1 <= 1u)
  {
    v19 = HALS_ObjectMap::CopyObjectByObjectID(a1[1]);
    if (v19)
    {
      v20 = *a11;
      object = v20;
      if (v20)
      {
        dispatch_retain(v20);
      }

      (*(*v19 + 176))(v19, a2, a3, a4, a5, a6, a7, a8, a9, a10, &object);
      if (object)
      {
        dispatch_release(object);
      }
    }

    HALS_ObjectMap::ReleaseObject(v19, v18);
  }
}

void sub_1DE5C9244(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  HALS_ObjectMap::ReleaseObject(v12, a2);
  _Unwind_Resume(a1);
}

void HALS_NotificationManager::GroupPropertiesChanged(char a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v100 = a2;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  memset(v96, 0, sizeof(v96));
  v93 = 0;
  __dst = 0;
  v95 = 0;
  if (*a4 != *(a4 + 8))
  {
    std::vector<unsigned int>::push_back[abi:ne200100](&v97, &v100);
    LODWORD(block) = -1431655765 * ((*(a4 + 8) - *a4) >> 2);
    std::vector<unsigned int>::push_back[abi:ne200100](v96, &block);
    v10 = -1431655765 * ((*(a4 + 8) - *a4) >> 2);
    std::vector<AudioObjectPropertyAddress>::__insert_with_size[abi:ne200100]<AudioObjectPropertyAddress const*,AudioObjectPropertyAddress const*>(&v93, 0, *a4, (*a4 + 12 * v10), v10);
  }

  v11 = *a5;
  v12 = a5[1] - *a5;
  if ((v12 & 0x1FFFFFFFE0) != 0)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (v14 >= v12 >> 5)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = v11 + v13;
      LODWORD(block) = *(v11 + v13 + 24);
      std::vector<unsigned int>::push_back[abi:ne200100](&v97, &block);
      LODWORD(p_block) = -1431655765 * ((*(v15 + 8) - *v15) >> 2);
      std::vector<unsigned int>::push_back[abi:ne200100](v96, &p_block);
      v16 = -1431655765 * ((*(v15 + 8) - *v15) >> 2);
      std::vector<AudioObjectPropertyAddress>::__insert_with_size[abi:ne200100]<AudioObjectPropertyAddress const*,AudioObjectPropertyAddress const*>(&v93, __dst, *v15, (*v15 + 12 * v16), v16);
      ++v14;
      v11 = *a5;
      v12 = a5[1] - *a5;
      v13 += 32;
    }

    while (v14 < (v12 >> 5));
  }

  v89 = v97;
  v17 = v98 - v97;
  v90 = (v98 - v97) >> 2;
  v18 = v96[0];
  v19 = v93;
  v20 = (0xAAAAAAAAAAAAAAABLL * ((__dst - v93) >> 2));
  if (a1)
  {
    if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
    {
      block = HALS_NotificationManager::Initialize;
      p_block = &block;
      std::__call_once(&HALS_NotificationManager::sInitialized, &p_block, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
    }

    mach_absolute_time();
    HALS_NotificationManager::FindObject(&v105, a2);
    v21 = v105;
    if (v105)
    {
      HALS_NotificationManager::Monitor::BeginReadOperation((v105 + 8));
      v87 = v20;
      v131 = 0;
      v132 = 0;
      v133 = 0;
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v104[0] = 0;
      v104[1] = 0;
      v102[1] = 0;
      v103 = v104;
      v101 = v102;
      v102[0] = 0;
      p_block = (v21 + 192);
      v83 = v18;
      LODWORD(v141) = HALB_Mutex::Lock((v21 + 192));
      v22 = *(v21 + 296);
      v23 = *(v21 + 304);
      if (v22 != v23)
      {
        while (*v22 > 1u)
        {
LABEL_29:
          v22 += 64;
          if (v22 == v23)
          {
            goto LABEL_30;
          }
        }

        if (*v22)
        {
          block = *v22;
          v112 = *(v22 + 8);
          v24 = *(v22 + 16);
          v113 = v24;
          v114 = *(v22 + 32);
          if (v112)
          {
            dispatch_retain(v112);
            v25 = v113;
            if (!v113)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v25 = v24;
            if (!v24)
            {
LABEL_22:
              __p = 0;
              v116 = 0;
              v117 = 0;
              std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v128, &block);
LABEL_26:
              if (__p)
              {
                v116 = __p;
                operator delete(__p);
              }

              HALS_Listener::~HALS_Listener(&block);
              goto LABEL_29;
            }
          }

          *&v113 = _Block_copy(v25);
          goto LABEL_22;
        }

        block = *v22;
        v112 = *(v22 + 8);
        v26 = *(v22 + 16);
        v113 = v26;
        v114 = *(v22 + 32);
        if (v112)
        {
          dispatch_retain(v112);
          v27 = v113;
          if (!v113)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v27 = v26;
          if (!v26)
          {
LABEL_25:
            __p = 0;
            v116 = 0;
            v117 = 0;
            std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v131, &block);
            goto LABEL_26;
          }
        }

        *&v113 = _Block_copy(v27);
        goto LABEL_25;
      }

LABEL_30:
      HALB_Mutex::Locker::~Locker(&p_block);
      if (v90 && v87)
      {
        v28 = v89;
        v30 = v18;
        v29 = v19;
        v31 = v90;
        do
        {
          HALS_NotificationManager::FindObject(&v107, *v28);
          v32 = v107;
          if (v107)
          {
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v134 = 0;
            v135 = 0;
            v136 = 0;
            v33 = v30;
            v34 = *v30;
            v109 = (v107 + 192);
            v110 = HALB_Mutex::Lock((v107 + 192));
            v36 = *(v32 + 296);
            v35 = *(v32 + 304);
            while (v36 != v35)
            {
              if (*v36 >= 2u)
              {
                p_block = 0;
                v141 = 0;
                v142 = 0;
                if (v34)
                {
                  for (i = 0; i != v34; ++i)
                  {
                    v38 = *(v36 + 5);
                    v39 = *(v36 + 6);
                    if (v38 != v39)
                    {
                      v40 = v29 + 12 * i;
                      while (1)
                      {
                        if (*v38 == 707406378 || *v38 == *v40)
                        {
                          v42 = v38[1];
                          if (v42 == 707406378 || v42 == *(v40 + 1))
                          {
                            v44 = v38[2];
                            if (v44 == -1 || v44 == *(v40 + 2))
                            {
                              break;
                            }
                          }
                        }

                        v38 += 3;
                        if (v38 == v39)
                        {
                          goto LABEL_56;
                        }
                      }

                      std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&p_block, v40);
                    }

LABEL_56:
                    ;
                  }

                  v45 = p_block;
                  if (p_block != v141)
                  {
                    if (*v36)
                    {
                      std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::pair[abi:ne200100]<HALS_Listener const&,std::vector<AudioObjectPropertyAddress>&,0>(&block, v36, &p_block);
                      std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v134, &block);
                    }

                    else
                    {
                      std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::pair[abi:ne200100]<HALS_Listener const&,std::vector<AudioObjectPropertyAddress>&,0>(&block, v36, &p_block);
                      std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v137, &block);
                    }

                    if (__p)
                    {
                      v116 = __p;
                      operator delete(__p);
                    }

                    HALS_Listener::~HALS_Listener(&block);
                  }

                  if (v45)
                  {
                    operator delete(v45);
                  }
                }
              }

              v36 = (v36 + 64);
            }

            HALB_Mutex::Locker::~Locker(&v109);
            v30 = v33;
            if (v137 != v138)
            {
              LODWORD(block) = *v28;
              v113 = 0uLL;
              v112 = 0;
              std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__init_with_size[abi:ne200100]<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*,std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*>(&v112, v137, v138, (v138 - v137) >> 6);
              std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>(&v103, block);
              p_block = &v112;
              std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&p_block);
            }

            if (v134 != v135)
            {
              LODWORD(block) = *v28;
              v113 = 0uLL;
              v112 = 0;
              std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__init_with_size[abi:ne200100]<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*,std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*>(&v112, v134, v135, (v135 - v134) >> 6);
              std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>(&v101, block);
              p_block = &v112;
              std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&p_block);
            }

            block = &v134;
            std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&block);
            block = &v137;
            std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&block);
          }

          v47 = *v30++;
          v46 = v47;
          if (v108)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v108);
          }

          if (!--v31)
          {
            break;
          }

          v29 = (v29 + 12 * v46);
          ++v28;
        }

        while (v29 != (v19 + 12 * v87));
      }

      HALS_NotificationManager::CallGroupOwner(a2, a3, v90, v89, v83, v87, v19, 1, v77, v78);
      HALS_NotificationManager::Object::CallGroupListeners_Sync(a2, a3, v90, v89, v83, v87, v19, &v131, a6);
      HALS_NotificationManager::CallListeners_Sync(a3, &v103);
      HALS_NotificationManager::Object::CallGroupListeners_Sync(a2, a3, v90, v89, v83, v87, v19, &v128, a6);
      HALS_NotificationManager::CallListeners_Sync(a3, &v101);
      HALS_NotificationManager::Monitor::FinishReadOperation((v105 + 8));
      std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::destroy(v102[0]);
      std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::destroy(v104[0]);
      block = &v128;
      std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&block);
      block = &v131;
      std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&block);
    }

    else
    {
      HALS_NotificationManager::CallGroupOwner(a2, a3, v90, v89, v18, v20, v19, 1, v77, v78);
    }

    v76 = v106;
    if (v106)
    {
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
  {
    block = HALS_NotificationManager::Initialize;
    p_block = &block;
    std::__call_once(&HALS_NotificationManager::sInitialized, &p_block, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  v80 = mach_absolute_time();
  HALS_NotificationManager::FindObject(&v101, a2);
  v82 = v17;
  v50 = v101;
  if (!v101)
  {
    HALS_NotificationManager::CallGroupOwner(a2, a3, v90, v89, v18, v20, v19, 0, v77, v78);
    goto LABEL_157;
  }

  HALS_NotificationManager::Monitor::BeginReadOperation((v101 + 1));
  v88 = v20;
  v86 = a3;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  p_block = (v50 + 24);
  LODWORD(v141) = HALB_Mutex::Lock((v50 + 24));
  v51 = v50[37];
  v52 = v50[38];
  if (v51 != v52)
  {
    while (*v51)
    {
LABEL_90:
      v51 += 64;
      if (v51 == v52)
      {
        goto LABEL_91;
      }
    }

    block = *v51;
    v112 = *(v51 + 1);
    v53 = *(v51 + 1);
    v113 = v53;
    v114 = *(v51 + 4);
    if (v112)
    {
      dispatch_retain(v112);
      v54 = v113;
      if (!v113)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v54 = v53;
      if (!v53)
      {
LABEL_87:
        __p = 0;
        v116 = 0;
        v117 = 0;
        std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v134, &block);
        if (__p)
        {
          v116 = __p;
          operator delete(__p);
        }

        HALS_Listener::~HALS_Listener(&block);
        goto LABEL_90;
      }
    }

    *&v113 = _Block_copy(v54);
    goto LABEL_87;
  }

LABEL_91:
  v84 = v18;
  HALB_Mutex::Locker::~Locker(&p_block);
  v132 = 0;
  v133 = 0;
  v131 = &v132;
  v85 = v19;
  v92 = (v19 + 12 * v88);
  if (!v90 || !v88)
  {
    goto LABEL_134;
  }

  v55 = v90;
  v56 = v89;
  do
  {
    HALS_NotificationManager::FindObject(&v103, *v56);
    v57 = v103;
    if (!v103)
    {
      goto LABEL_130;
    }

    v137 = 0;
    v138 = 0;
    v139 = 0;
    v58 = *v18;
    v128 = (v103 + 24);
    LODWORD(v129) = HALB_Mutex::Lock((v103 + 24));
    v60 = v57[37];
    v59 = v57[38];
    while (v60 != v59)
    {
      if (*v60 >= 2u)
      {
        p_block = 0;
        v141 = 0;
        v142 = 0;
        if (v58)
        {
          for (j = 0; j != v58; ++j)
          {
            v62 = *(v60 + 5);
            v63 = *(v60 + 6);
            if (v62 != v63)
            {
              v64 = v19 + 12 * j;
              while (1)
              {
                if (*v62 == 707406378 || *v62 == *v64)
                {
                  v66 = v62[1];
                  if (v66 == 707406378 || v66 == *(v64 + 1))
                  {
                    v68 = v62[2];
                    if (v68 == -1 || v68 == *(v64 + 2))
                    {
                      break;
                    }
                  }
                }

                v62 += 3;
                if (v62 == v63)
                {
                  goto LABEL_117;
                }
              }

              std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&p_block, v64);
            }

LABEL_117:
            ;
          }

          v69 = p_block;
          if (p_block == v141 || *v60)
          {
            if (!p_block)
            {
              goto LABEL_122;
            }

LABEL_121:
            operator delete(v69);
            goto LABEL_122;
          }

          std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::pair[abi:ne200100]<HALS_Listener const&,std::vector<AudioObjectPropertyAddress>&,0>(&block, v60, &p_block);
          std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](&v137, &block);
          if (__p)
          {
            v116 = __p;
            operator delete(__p);
          }

          HALS_Listener::~HALS_Listener(&block);
          if (v69)
          {
            goto LABEL_121;
          }
        }
      }

LABEL_122:
      v60 = (v60 + 64);
    }

    HALB_Mutex::Locker::~Locker(&v128);
    if (v137 != v138)
    {
      LODWORD(block) = *v56;
      v113 = 0uLL;
      v112 = 0;
      std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__init_with_size[abi:ne200100]<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*,std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>*>(&v112, v137, v138, (v138 - v137) >> 6);
      std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>(&v131, block);
      p_block = &v112;
      std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&p_block);
    }

    block = &v137;
    std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&block);
LABEL_130:
    v71 = *v18++;
    v70 = v71;
    if (v104[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v104[0]);
    }

    if (!--v55)
    {
      break;
    }

    v19 = (v19 + 12 * v70);
    ++v56;
  }

  while (v19 != v92);
LABEL_134:
  HALS_NotificationManager::CallGroupOwner(a2, v86, v90, v89, v84, v88, v85, 0, v77, v88);
  block = 0;
  v112 = 0;
  *&v113 = 0;
  HALS_NotificationManager::Object::CallGroupListeners_Sync(a2, v86, v90, v89, v84, v88, v85, &v134, &block);
  if (block)
  {
    v112 = block;
    operator delete(block);
  }

  HALS_NotificationManager::CallListeners_Sync(v86, &v131);
  p_block = 0;
  v141 = 0;
  v142 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&p_block, v89, &v89[v90], (v82 >> 2));
  v137 = 0;
  v138 = 0;
  v139 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v137, v84, &v84[(v82 >> 2)], (v82 >> 2));
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress const*,AudioObjectPropertyAddress const*>(&v128, v85, v92, v79);
  block = MEMORY[0x1E69E9820];
  v112 = 1174405120;
  *&v113 = ___ZN24HALS_NotificationManager22GroupPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddress_block_invoke;
  *(&v113 + 1) = &__block_descriptor_tmp_1_12425;
  v72 = v101;
  v114 = v101;
  __p = v102[0];
  if (v102[0])
  {
    atomic_fetch_add_explicit(v102[0] + 1, 1uLL, memory_order_relaxed);
  }

  v126 = a2;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v73 = p_block;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v116, p_block, v141, (v141 - p_block) >> 2);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v74 = v137;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v119, v137, v138, (v138 - v137) >> 2);
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v75 = v128;
  std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&v122, v128, v129, 0xAAAAAAAAAAAAAAABLL * ((v129 - v128) >> 2));
  v127 = v86;
  v125 = v80;
  AMCP::Utility::Dispatch_Queue::async((v72 + 40), &block);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  if (__p)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p);
  }

  if (v75)
  {
    operator delete(v75);
  }

  if (v74)
  {
    operator delete(v74);
  }

  if (v73)
  {
    operator delete(v73);
  }

  std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::destroy(v132);
  p_block = &v134;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&p_block);
LABEL_157:
  v76 = v102[0];
  if (v102[0])
  {
LABEL_158:
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

LABEL_159:
  if (v93)
  {
    operator delete(v93);
  }

  if (v96[0])
  {
    operator delete(v96[0]);
  }

  if (v97)
  {
    operator delete(v97);
  }
}

void sub_1DE5C9F4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50, void *a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a51)
  {
    operator delete(a51);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  v57 = *(v55 - 208);
  if (v57)
  {
    operator delete(v57);
  }

  v58 = *(v55 - 136);
  if (v58)
  {
    operator delete(v58);
  }

  v59 = *(v55 - 112);
  if (v59)
  {
    operator delete(v59);
  }

  std::__tree<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>>>>::destroy(*(v55 - 176));
  *(v55 - 136) = v55 - 160;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100]((v55 - 136));
  __cxa_begin_catch(a1);
  HALS_NotificationManager::Monitor::FinishReadOperation((a33 + 8));
  __cxa_end_catch();
  JUMPOUT(0x1DE5C9EF4);
}

void sub_1DE5CA2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  __cxa_end_catch();
  if (a33)
  {
    JUMPOUT(0x1DE5CA2C4);
  }

  JUMPOUT(0x1DE5CA178);
}

void HALS_NotificationManager::AddPropertyListener(uint64_t a1, unsigned int a2, char *a3, id *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
  {
    object[0] = HALS_NotificationManager::Initialize;
    v29 = object;
    std::__call_once(&HALS_NotificationManager::sInitialized, &v29, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  v21[0] = 0;
  v22 = 0;
  if (*(a4 + 336) == 1)
  {
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v21, a4);
    v22 = 1;
  }

  v19 = HALS_NotificationManager::sObjectListLock;
  v20 = HALB_Mutex::Lock(HALS_NotificationManager::sObjectListLock);
  v8 = *HALS_NotificationManager::sObjectList;
  v9 = *(HALS_NotificationManager::sObjectList + 8);
  if (*HALS_NotificationManager::sObjectList != v9)
  {
    while (**v8 < a2)
    {
      v8 += 16;
      if (v8 == v9)
      {
        goto LABEL_14;
      }
    }
  }

  if (v8 == v9 || (v10 = *v8, **v8 != a2))
  {
LABEL_14:
    operator new();
  }

  v11 = *(v8 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v10;
  v18 = v11;
  HALB_Mutex::Locker::~Locker(&v19);
  if (v22 == 1)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v21);
  }

  if (v17)
  {
    HALS_NotificationManager::Monitor::BeginReadOperation((v17 + 2));
    v29 = (v17 + 48);
    LODWORD(v30) = HALB_Mutex::Lock((v17 + 48));
    v12 = *(v17 + 37);
    v13 = *(v17 + 38);
    if (v12 != v13)
    {
      while (!HALS_Listener::IsSame(v12, a1))
      {
        v12 += 64;
        if (v12 == v13)
        {
          goto LABEL_23;
        }
      }
    }

    if (v12 == v13)
    {
LABEL_23:
      object[0] = *a1;
      v14 = *(a1 + 8);
      object[1] = v14;
      v24 = *(a1 + 16);
      v25 = *(a1 + 32);
      v15 = v24;
      if (v14)
      {
        dispatch_retain(v14);
      }

      if (v15)
      {
        *&v24 = _Block_copy(v15);
      }

      v27 = 0;
      v26 = 0;
      v28 = 0;
      std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::push_back[abi:ne200100](v17 + 37, object);
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      HALS_Listener::~HALS_Listener(object);
      v12 = *(v17 + 38) - 64;
    }

    std::vector<AudioObjectPropertyAddress>::__insert_with_size[abi:ne200100]<AudioObjectPropertyAddress const*,AudioObjectPropertyAddress const*>((v12 + 40), *(v12 + 48), a3, a3 + 12, 1);
    HALB_Mutex::Locker::~Locker(&v29);
    HALS_NotificationManager::Monitor::FinishReadOperation((v17 + 2));
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE5CABC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, HALB_Mutex *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(&STACK[0x408]);
  HALB_Mutex::Locker::~Locker(&a12);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (LOBYTE(STACK[0x2A8]) == 1)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a52);
  }

  _Unwind_Resume(a1);
}

void sub_1DE5CACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  JUMPOUT(0x1DE5CACD0);
}

BOOL HALS_Listener::IsSame(HALS_Listener *this, const HALS_Listener *a2)
{
  v2 = *this;
  if (*this != *a2)
  {
    return 0;
  }

  result = 1;
  if (v2 > 3)
  {
    if ((v2 - 4) >= 3)
    {
      return result;
    }

    v5 = *(this + 3);
    v6 = *(a2 + 3);
    return v5 == v6;
  }

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      if (*(this + 1) == *(a2 + 1))
      {
        v5 = *(this + 2);
        v6 = *(a2 + 2);
        return v5 == v6;
      }
    }

    else
    {
      if (v2 != 3)
      {
        return result;
      }

      if (*(this + 3) == *(a2 + 3))
      {
        v5 = *(this + 4);
        v6 = *(a2 + 4);
        return v5 == v6;
      }
    }

    return 0;
  }

  return *(this + 1) == *(a2 + 1);
}

void std::__shared_ptr_emplace<HALS_NotificationManager::Object>::__on_zero_shared(void **a1)
{
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a1 + 43));
  v2 = a1 + 40;
  std::vector<std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  HALB_Mutex::~HALB_Mutex((a1 + 27));

  HALB_Guard::~HALB_Guard((a1 + 4));
}

void std::__shared_ptr_emplace<HALS_NotificationManager::Object>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597FD38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_NotificationManager::RemovePropertyListener(HALS_NotificationManager *this, const HALS_Listener *a2, _DWORD *a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
  {
    *buf = HALS_NotificationManager::Initialize;
    v34 = buf;
    std::__call_once(&HALS_NotificationManager::sInitialized, &v34, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  HALS_NotificationManager::FindObject(&v32, a2);
  v8 = v32;
  if (!v32)
  {
    goto LABEL_42;
  }

  v34 = (v32 + 1);
  v35 = HALB_Mutex::Lock((v32 + 1));
  v9 = v8[23];
  if (v8[20] + v8[21] + v9)
  {
    v10 = v8[22];
    if (v10 == -1)
    {
LABEL_53:
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_NotificationManager.cpp";
      v37 = 1024;
      v38 = 74;
      v28 = MEMORY[0x1E69E9C10];
      v29 = "%25s:%-5d  HALS_NotificationManager::SafeIncrement: value at maximum before increment. this is probably a bug";
      goto LABEL_60;
    }

    v8[22] = v10 + 1;
    while (1)
    {
      v9 = v8[23];
      if (!(v8[20] + v8[21] + v9))
      {
        break;
      }

      HALB_Guard::Wait(v34);
    }

    v11 = v8[22];
    if (!v11)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_NotificationManager.cpp";
      v37 = 1024;
      v38 = 80;
      v28 = MEMORY[0x1E69E9C10];
      v29 = "%25s:%-5d  HALS_NotificationManager::SafeIncrement: value at minimum before decrement. this is probably a bug";
LABEL_60:
      _os_log_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x12u);
LABEL_61:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v8[22] = v11 - 1;
  }

  if (v9 == -1)
  {
    goto LABEL_53;
  }

  v8[23] = v9 + 1;
  HALB_Guard::Locker::~Locker(&v34);
  *buf = v8 + 24;
  *&buf[8] = HALB_Mutex::Lock((v8 + 24));
  v12 = v8[37];
  v13 = v8[38];
  if (v12 != v13)
  {
    while (!HALS_Listener::IsSame(v12, this))
    {
      v12 += 64;
      if (v12 == v13)
      {
        goto LABEL_36;
      }
    }
  }

  if (v12 != v13)
  {
    v15 = *(v12 + 40);
    v14 = *(v12 + 48);
    if (v15 == v14)
    {
      v16 = *(v12 + 40);
    }

    else
    {
      v16 = *(v12 + 40);
      while (*v16 != *a3 || v16[1] != a3[1] || v16[2] != a3[2])
      {
        v16 += 3;
        if (v16 == v14)
        {
          goto LABEL_27;
        }
      }

      if (v16 != v14)
      {
        v26 = v16 + 3;
        if (v16 + 3 != v14)
        {
          do
          {
            if (*v26 != *a3 || v26[1] != a3[1] || v26[2] != a3[2])
            {
              v27 = *v26;
              v16[2] = v26[2];
              *v16 = v27;
              v16 += 3;
            }

            v26 += 3;
          }

          while (v26 != v14);
          v15 = *(v12 + 40);
          v14 = *(v12 + 48);
        }
      }
    }

    if (v16 != v14)
    {
      v14 = v16;
      *(v12 + 48) = v16;
    }

LABEL_27:
    if (v15 == v14)
    {
      v17 = v8[38];
      if ((v12 + 64) != v17)
      {
        do
        {
          *v12 = *(v12 + 64);
          *(v12 + 8) = *(v12 + 72);
          *(v12 + 24) = *(v12 + 88);
          *(v12 + 72) = 0;
          *(v12 + 80) = 0;
          v18 = *(v12 + 40);
          if (v18)
          {
            *(v12 + 48) = v18;
            operator delete(v18);
            *(v12 + 40) = 0;
            *(v12 + 48) = 0;
            *(v12 + 56) = 0;
          }

          *(v12 + 40) = *(v12 + 104);
          *(v12 + 56) = *(v12 + 120);
          *(v12 + 112) = 0;
          *(v12 + 120) = 0;
          *(v12 + 104) = 0;
          v19 = v12 + 64;
          v20 = (v12 + 128);
          v12 += 64;
        }

        while (v20 != v17);
        v17 = v8[38];
        v12 = v19;
      }

      while (v17 != v12)
      {
        v17 = (v17 - 64);
        std::pair<HALS_Listener,std::vector<AudioObjectPropertyAddress>>::~pair(v17);
      }

      v8[38] = v12;
    }
  }

LABEL_36:
  HALB_Mutex::Locker::~Locker(buf);
  *buf = v8 + 24;
  *&buf[8] = HALB_Mutex::Lock((v8 + 24));
  v21 = v8[37];
  v22 = v8[38];
  HALB_Mutex::Locker::~Locker(buf);
  if (v21 == v22)
  {
    HALS_NotificationManager::RemoveObject(a2);
  }

  v34 = (v8 + 1);
  v35 = HALB_Mutex::Lock((v8 + 1));
  v23 = v8[23];
  if (!v23)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_NotificationManager.cpp";
      v37 = 1024;
      v38 = 80;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_NotificationManager::SafeIncrement: value at minimum before decrement. this is probably a bug", buf, 0x12u);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = off_1F5991DD8;
    v30[2] = 1852797029;
  }

  v24 = v23 - 1;
  v8[23] = v24;
  if (!v24)
  {
    HALB_Guard::NotifyAll((v8 + 1));
  }

  HALB_Guard::Locker::~Locker(&v34);
LABEL_42:
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1DE5CB3C4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  HALB_Guard::Locker::~Locker(va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

void HALS_NotificationManager::RemoveObject(HALS_NotificationManager *this)
{
  v1 = this;
  v10 = HALS_NotificationManager::sObjectListLock;
  v11 = HALB_Mutex::Lock(HALS_NotificationManager::sObjectListLock);
  v2 = HALS_NotificationManager::sObjectList;
  v4 = *HALS_NotificationManager::sObjectList;
  v3 = *(HALS_NotificationManager::sObjectList + 8);
  if (*HALS_NotificationManager::sObjectList != v3)
  {
    while (**v4 < v1)
    {
      v4 += 16;
      if (v4 == v3)
      {
        goto LABEL_17;
      }
    }
  }

  if (v4 != v3 && **v4 == v1)
  {
    if (v4 + 16 != v3)
    {
      do
      {
        v5 = *(v4 + 16);
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        v6 = *(v4 + 8);
        *v4 = v5;
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v7 = v4 + 16;
        v8 = v4 + 32;
        v4 += 16;
      }

      while (v8 != v3);
      v3 = *(v2 + 8);
      v4 = v7;
    }

    while (v3 != v4)
    {
      v9 = *(v3 - 8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v3 -= 16;
    }

    *(v2 + 8) = v4;
  }

LABEL_17:
  HALB_Mutex::Locker::~Locker(&v10);
}

void HALS_NotificationManager::ObjectIsDead(HALS_NotificationManager *this)
{
  if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
  {
    v2 = &v3;
    v3 = HALS_NotificationManager::Initialize;
    std::__call_once(&HALS_NotificationManager::sInitialized, &v2, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  HALS_NotificationManager::RemoveObject(this);
}

void *HALS_Listener::HALS_Listener(void *a1, dispatch_object_t object, void *aBlock)
{
  *a1 = 2;
  a1[1] = object;
  a1[2] = aBlock;
  a1[3] = 0;
  a1[4] = 0;
  if (object)
  {
    dispatch_retain(object);
    aBlock = a1[2];
  }

  if (aBlock)
  {
    a1[2] = _Block_copy(aBlock);
  }

  return a1;
}

BOOL HALS_IOA2Control::GetHardwareReferenceStreamControlValue(HALS_IOA2Control *this, const HALS_Client *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK16HALS_IOA2Control38GetHardwareReferenceStreamControlValueEPK11HALS_Client_block_invoke;
  v5[3] = &unk_1E8677420;
  v5[4] = &v6;
  v5[5] = this;
  v2 = (*(*this + 64))(this, a2);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v7 + 6) != 0;
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1DE5CB694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK16HALS_IOA2Control38GetHardwareReferenceStreamControlValueEPK11HALS_Client_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  result = HALS_IOA2UCDevice::GetControlInfo_Value(*(*(a1 + 40) + 80), a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE5CB6E4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOA2Control::SetHardwareReferenceStreamControlValue(HALS_IOA2Control *this, HALS_Client *a2, char a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4802000000;
  v16 = __Block_byref_object_copy__12486;
  v17 = __Block_byref_object_dispose__12487;
  v18 = 0u;
  v19 = 0u;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN16HALS_IOA2Control38SetHardwareReferenceStreamControlValueEP11HALS_Clientb_block_invoke;
  v9[3] = &unk_1E86773F8;
  v9[5] = &v13;
  v9[6] = this;
  v10 = a3;
  v9[4] = v11;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v9);
  v6 = v14[5];
  v7 = -1431655765 * ((v14[6] - v6) >> 2);
  if (v7)
  {
    if (a2)
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = 0;
    }

    HALS_Object::PropertiesChanged(this, *(this + 4), v8, v7, v6);
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  if (v18)
  {
    *(&v18 + 1) = v18;
    operator delete(v18);
  }
}

void sub_1DE5CB870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  v12 = *(v10 - 48);
  if (v12)
  {
    *(v10 - 40) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12486(void *a1, uint64_t *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  result = std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>((a1 + 5), a2[5], a2[6], 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2));
  v3[3] = a2[8];
  return result;
}

void __Block_byref_object_dispose__12487(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN16HALS_IOA2Control38SetHardwareReferenceStreamControlValueEP11HALS_Clientb_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(v2 + 56));
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "HALS_IOA2Control.cpp";
      v14 = 1024;
      v15 = 1181;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetHardwareReferenceStreamControlValue: owning device is missing", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v4 = *(a1 + 56);
  v11 = 0;
  CACFDictionary::GetUInt32(*(v2 + 80), @"value", &v11);
  if (v11 != v4)
  {
    v10 = 0;
    *(*(*(a1 + 32) + 8) + 24) = HALS_IOA2UCDevice::SetControlValue((v3 + 1976), *(v2 + 72), v4, &v10);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v8 = *(*(*(a1 + 32) + 8) + 24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v13 = "HALS_IOA2Control.cpp";
        v14 = 1024;
        v15 = 1190;
        v16 = 1024;
        v17 = v8;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetHardwareReferenceStreamControlValue: error setting BOOLean control value on the device, Error: 0x%X", buf, 0x18u);
      }

      v9 = __cxa_allocate_exception(0x10uLL);
      *v9 = off_1F5991DD8;
      v9[2] = 560226676;
    }

    if (v10 == v4)
    {
      CACFDictionary::AddUInt32((v2 + 80), @"value", v4);
      (*(*v2 + 208))(v2, *(*(a1 + 40) + 8) + 40);
    }
  }

  HALS_ObjectMap::ReleaseObject(v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE5CBBBC(_Unwind_Exception *exception_object, HALS_Object *a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  v5 = a2;
  HALS_ObjectMap::ReleaseObject(v3, a2);
  v6 = __cxa_begin_catch(exception_object);
  if (v5 == 2)
  {
    v7 = v6[2];
  }

  else
  {
    v7 = 2003329396;
  }

  *(*(*(v2 + 32) + 8) + 24) = v7;
  __cxa_end_catch();
  JUMPOUT(0x1DE5CBA14);
}

void HALS_IOA2Control::SetPropertyData(HALS_IOA2Control *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, int *a5, unsigned int a6, uint64_t a7, HALS_Client *a8)
{
  v94 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v66 = this;
  v65 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 14));
  if (!v65)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Control.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 729;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetPropertyData: owning device is missing", buf, 0x12u);
    }

    v43 = __cxa_allocate_exception(0x10uLL);
    v44 = 560947818;
LABEL_68:
    *v43 = off_1F5991DD8;
    v43[2] = v44;
  }

  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v12))
  {
    v14 = atomic_load(v65 + 40);
    v15 = a8 ? *(a8 + 60) : getpid();
    if (v14 != -1 && v14 != v15)
    {
      v43 = __cxa_allocate_exception(0x10uLL);
      v44 = 560492391;
      goto LABEL_68;
    }
  }

  v17 = *(v66 + 5);
  if (v17 == 1986817381 || v17 == 1836414053)
  {
    operator new();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4802000000;
  v90 = __Block_byref_object_copy__12486;
  v91 = __Block_byref_object_dispose__12487;
  v92 = 0u;
  v93 = 0u;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1818457189)
  {
    if (mSelector > 1935962741)
    {
      if (mSelector == 1936745334)
      {
        if (a4 > 3)
        {
          *v87 = 0;
          *&v87[8] = v87;
          *&v87[16] = 0x2000000000;
          v88 = 0;
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 1174405120;
          v71[2] = ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_66;
          v71[3] = &unk_1F597FF98;
          v19 = v66;
          v71[6] = v66;
          v71[7] = a5;
          v71[4] = v87;
          v72 = v65;
          HALS_ObjectMap::RetainObject(v65, v13);
          v21 = a8;
          v71[5] = buf;
          v35 = (*(*v19 + 64))(v19);
          HALB_CommandGate::ExecuteCommand(v35, v71);
          if (*(*&v87[8] + 24))
          {
            v54 = __cxa_allocate_exception(0x10uLL);
            v55 = *(*&v87[8] + 24);
            *v54 = off_1F5991DD8;
            v54[2] = v55;
          }

          HALS_ObjectMap::ReleaseObject(v72, v36);
          goto LABEL_50;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v87 = 136315394;
          *&v87[4] = "HALS_IOA2Control.cpp";
          *&v87[12] = 1024;
          *&v87[14] = 1052;
          v45 = MEMORY[0x1E69E9C10];
          v46 = "%25s:%-5d  HALS_IOA2Control::_SetPropertyData: bad property data size for kAudioStereoPanControlPropertyValue";
          goto LABEL_81;
        }
      }

      else
      {
        if (mSelector != 1935962742)
        {
          goto LABEL_47;
        }

        if (a4 > 3)
        {
          v27 = *a5;
          *v87 = 0;
          *&v87[8] = v87;
          *&v87[16] = 0x2000000000;
          v88 = 0;
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 1174405120;
          v84[2] = ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
          v84[3] = &unk_1F597FE80;
          v86 = v27;
          v19 = v66;
          v84[6] = v66;
          v84[4] = v87;
          v85 = v65;
          HALS_ObjectMap::RetainObject(v65, v13);
          v21 = a8;
          v84[5] = buf;
          v28 = (*(*v19 + 64))(v19);
          HALB_CommandGate::ExecuteCommand(v28, v84);
          if (*(*&v87[8] + 24))
          {
            v58 = __cxa_allocate_exception(0x10uLL);
            v59 = *(*&v87[8] + 24);
            *v58 = off_1F5991DD8;
            v58[2] = v59;
          }

          HALS_ObjectMap::ReleaseObject(v85, v29);
          goto LABEL_50;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v87 = 136315394;
          *&v87[4] = "HALS_IOA2Control.cpp";
          *&v87[12] = 1024;
          *&v87[14] = 753;
          v45 = MEMORY[0x1E69E9C10];
          v46 = "%25s:%-5d  HALS_IOA2Control::_SetPropertyData: bad property data size for kAudioSliderControlPropertyValue";
          goto LABEL_81;
        }
      }
    }

    else
    {
      if (mSelector != 1818457190)
      {
        if (mSelector == 1935893353)
        {
          *v87 = 0;
          *&v87[8] = v87;
          *&v87[16] = 0x2000000000;
          v88 = 0;
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 1174405120;
          v73[2] = ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_62;
          v73[3] = &unk_1F597FF60;
          v75 = a4;
          v19 = v66;
          v73[6] = v66;
          v73[7] = a5;
          v73[4] = v87;
          v74 = v65;
          HALS_ObjectMap::RetainObject(v65, v13);
          v73[5] = buf;
          v23 = (*(*v19 + 64))(v19);
          v21 = a8;
          HALB_CommandGate::ExecuteCommand(v23, v73);
          if (*(*&v87[8] + 24))
          {
            v50 = __cxa_allocate_exception(0x10uLL);
            v51 = *(*&v87[8] + 24);
            *v50 = off_1F5991DD8;
            v50[2] = v51;
          }

          HALS_ObjectMap::ReleaseObject(v74, v24);
          goto LABEL_50;
        }

LABEL_47:
        v19 = v66;
        v21 = a8;
        HALS_Control::SetPropertyData(v66, a2, a3, a4, a5, a6, a7, a8);
        goto LABEL_51;
      }

      if (a4 > 3)
      {
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 0x40000000;
        v79[2] = ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_56;
        v79[3] = &__block_descriptor_tmp_57_12504;
        v19 = v66;
        v79[4] = v66;
        v79[5] = a5;
        v31 = (*(*v66 + 64))(v66);
        v21 = a8;
        HALB_CommandGate::ExecuteCommand(v31, v79);
        CAPropertyAddressList::AppendUniqueItem((*&buf[8] + 40), a3, v32);
        goto LABEL_51;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v87 = 136315394;
        *&v87[4] = "HALS_IOA2Control.cpp";
        *&v87[12] = 1024;
        *&v87[14] = 887;
        v45 = MEMORY[0x1E69E9C10];
        v46 = "%25s:%-5d  HALS_IOA2Control::_SetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelsToScalarTransferFunction";
        goto LABEL_81;
      }
    }

LABEL_82:
    v47 = __cxa_allocate_exception(0x10uLL);
    *v47 = off_1F5991DD8;
    v47[2] = 561211770;
  }

  if (mSelector > 1818453109)
  {
    if (mSelector == 1818453110)
    {
      if (a4 > 3)
      {
        *v87 = 0;
        *&v87[8] = v87;
        *&v87[16] = 0x2000000000;
        v88 = 0;
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 1174405120;
        v80[2] = ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_52;
        v80[3] = &unk_1F597FEF0;
        v19 = v66;
        v80[6] = v66;
        v80[7] = a5;
        v80[4] = v87;
        v81 = v65;
        HALS_ObjectMap::RetainObject(v65, v13);
        v21 = a8;
        v80[5] = buf;
        v33 = (*(*v19 + 64))(v19);
        HALB_CommandGate::ExecuteCommand(v33, v80);
        if (*(*&v87[8] + 24))
        {
          v52 = __cxa_allocate_exception(0x10uLL);
          v53 = *(*&v87[8] + 24);
          *v52 = off_1F5991DD8;
          v52[2] = v53;
        }

        HALS_ObjectMap::ReleaseObject(v81, v34);
        goto LABEL_50;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v87 = 136315394;
        *&v87[4] = "HALS_IOA2Control.cpp";
        *&v87[12] = 1024;
        *&v87[14] = 843;
        v45 = MEMORY[0x1E69E9C10];
        v46 = "%25s:%-5d  HALS_IOA2Control::_SetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelValue";
        goto LABEL_81;
      }
    }

    else
    {
      if (mSelector != 1818456950)
      {
        goto LABEL_47;
      }

      if (a4 > 3)
      {
        *v87 = 0;
        *&v87[8] = v87;
        *&v87[16] = 0x2000000000;
        v88 = 0;
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 1174405120;
        v82[2] = ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_50;
        v82[3] = &unk_1F597FEB8;
        v19 = v66;
        v82[6] = v66;
        v82[4] = v87;
        v82[7] = a5;
        v83 = v65;
        HALS_ObjectMap::RetainObject(v65, v13);
        v21 = a8;
        v82[5] = buf;
        v25 = (*(*v19 + 64))(v19);
        HALB_CommandGate::ExecuteCommand(v25, v82);
        if (*(*&v87[8] + 24))
        {
          v56 = __cxa_allocate_exception(0x10uLL);
          v57 = *(*&v87[8] + 24);
          *v56 = off_1F5991DD8;
          v56[2] = v57;
        }

        HALS_ObjectMap::ReleaseObject(v83, v26);
        goto LABEL_50;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v87 = 136315394;
        *&v87[4] = "HALS_IOA2Control.cpp";
        *&v87[12] = 1024;
        *&v87[14] = 797;
        v45 = MEMORY[0x1E69E9C10];
        v46 = "%25s:%-5d  HALS_IOA2Control::_SetPropertyData: bad property data size for kAudioLevelControlPropertyScalarValue";
        goto LABEL_81;
      }
    }

    goto LABEL_82;
  }

  if (mSelector == 1650685548)
  {
    if (a4 > 3)
    {
      v30 = *a5;
      v19 = v66;
      v21 = a8;
      if (*(v66 + 5) == 1702259059)
      {
        HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlPropertyData(*(*(v66 + 8) + 8), a8);
        goto LABEL_51;
      }

      *v87 = 0;
      *&v87[8] = v87;
      *&v87[16] = 0x2000000000;
      v88 = 0;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 1174405120;
      v76[2] = ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_58;
      v76[3] = &unk_1F597FF28;
      v78 = v30;
      v76[4] = v87;
      v76[6] = v66;
      v77 = v65;
      HALS_ObjectMap::RetainObject(v65, v13);
      v76[5] = buf;
      v37 = (*(*v66 + 64))(v66);
      HALB_CommandGate::ExecuteCommand(v37, v76);
      if (*(*&v87[8] + 24))
      {
        v60 = __cxa_allocate_exception(0x10uLL);
        v61 = *(*&v87[8] + 24);
        *v60 = off_1F5991DD8;
        v60[2] = v61;
      }

      HALS_ObjectMap::ReleaseObject(v77, v38);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v87 = 136315394;
      *&v87[4] = "HALS_IOA2Control.cpp";
      *&v87[12] = 1024;
      *&v87[14] = 896;
      v45 = MEMORY[0x1E69E9C10];
      v46 = "%25s:%-5d  HALS_IOA2Control::_SetPropertyData: bad property data size for kAudioBooleanControlPropertyValue";
LABEL_81:
      _os_log_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, v46, v87, 0x12u);
      goto LABEL_82;
    }

    goto LABEL_82;
  }

  if (mSelector != 1651272546)
  {
    goto LABEL_47;
  }

  *v87 = 0;
  *&v87[8] = v87;
  *&v87[16] = 0x2000000000;
  v88 = 0;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 1174405120;
  v68[2] = ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_70;
  v68[3] = &unk_1F597FFD0;
  v70 = a4;
  v19 = v66;
  v68[5] = v66;
  v68[6] = a5;
  v69 = v65;
  HALS_ObjectMap::RetainObject(v65, v13);
  v68[4] = v87;
  v20 = (*(*v19 + 64))(v19);
  v21 = a8;
  HALB_CommandGate::ExecuteCommand(v20, v68);
  if (*(*&v87[8] + 24))
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    v49 = *(*&v87[8] + 24);
    *v48 = off_1F5991DD8;
    v48[2] = v49;
  }

  HALS_ObjectMap::ReleaseObject(v69, v22);
LABEL_50:
  _Block_object_dispose(v87, 8);
LABEL_51:
  if (-1431655765 * ((*(*&buf[8] + 48) - *(*&buf[8] + 40)) >> 2))
  {
    if (a3->mSelector == 1818456950 || a3->mSelector == 1818453110)
    {
      kdebug_trace();
    }

    if (v21)
    {
      v39 = *(v21 + 4);
    }

    else
    {
      v39 = 0;
    }

    HALS_Object::PropertiesChanged(v19, v19[4], v39, -1431655765 * ((*(*&buf[8] + 48) - *(*&buf[8] + 40)) >> 2), *(*&buf[8] + 40));
    if (a3->mSelector == 1818456950 || a3->mSelector == 1818453110)
    {
      kdebug_trace();
    }
  }

  _Block_object_dispose(buf, 8);
  if (v92)
  {
    *(&v92 + 1) = v92;
    operator delete(v92);
  }

  HALS_ObjectMap::ReleaseObject(v65, v40);
  v41 = *MEMORY[0x1E69E9840];
}

void sub_1DE5CCD1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v9 = 0;
  result = CACFDictionary::GetUInt32(*(v2 + 80), @"value", &v9);
  v4 = *(a1 + 64);
  if (v4 != v9)
  {
    v8 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 56) + 1976), *(v2 + 72), v4, &v8);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "HALS_IOA2Control.cpp";
        v12 = 1024;
        v13 = 766;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting slider control value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v8 == *(a1 + 64))
    {
      CACFDictionary::AddUInt32((v2 + 80), @"value", v8);
      result = (*(*v2 + 208))(v2, *(*(a1 + 40) + 8) + 40);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5CD0CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CCFDCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_50(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = CAVolumeCurve::ConvertScalarToRaw((v2 + 120), **(a1 + 56));
  v9 = 0;
  result = CACFDictionary::GetUInt32(*(v2 + 80), @"value", &v9);
  if (v3 != v9)
  {
    v8 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 64) + 1976), *(v2 + 72), v3, &v8);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "HALS_IOA2Control.cpp";
        v12 = 1024;
        v13 = 811;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting level control scalar value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v8 == v3)
    {
      CACFDictionary::AddUInt32((v2 + 80), @"value", v3);
      result = (*(*v2 + 208))(v2, *(*(a1 + 40) + 8) + 40);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5CD310(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CD220);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_52(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = CAVolumeCurve::ConvertDBToRaw((v2 + 120), **(a1 + 56));
  v9 = 0;
  result = CACFDictionary::GetUInt32(*(v2 + 80), @"value", &v9);
  if (v3 != v9)
  {
    v8 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 64) + 1976), *(v2 + 72), v3, &v8);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "HALS_IOA2Control.cpp";
        v12 = 1024;
        v13 = 856;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting level control decibel value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v8 == v3)
    {
      CACFDictionary::AddUInt32((v2 + 80), @"value", v3);
      result = (*(*v2 + 208))(v2, *(*(a1 + 40) + 8) + 40);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5CD554(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CD464);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_56(uint64_t result)
{
  v1 = *(result + 32);
  v2 = **(result + 40);
  *(v1 + 156) = v2;
  if (v2 > 0xF)
  {
    v5 = 1.0;
    v4 = 2.0;
    v3 = 1;
  }

  else
  {
    v3 = byte_1DE7581D0[v2];
    v4 = flt_1DE75F074[v2];
    v5 = flt_1DE75F0B4[v2];
  }

  *(v1 + 152) = v3;
  *(v1 + 160) = v4;
  *(v1 + 164) = v5;
  return result;
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_58(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v9 = 0;
  result = CACFDictionary::GetUInt32(*(v2 + 80), @"value", &v9);
  v4 = *(a1 + 64);
  if (v4 != v9)
  {
    v8 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 56) + 1976), *(v2 + 72), v4, &v8);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "HALS_IOA2Control.cpp";
        v12 = 1024;
        v13 = 915;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting BOOLean control value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v8 == *(a1 + 64))
    {
      CACFDictionary::AddUInt32((v2 + 80), @"value", v8);
      result = (*(*v2 + 208))(v2, *(*(a1 + 40) + 8) + 40);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5CD7DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CD6ECLL);
  }

  _Unwind_Resume(a1);
}

void ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_62(uint64_t a1, const __CFDictionary *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (*(v3 + 96) == 1)
  {
    v4 = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(v3 + 80), a2);
    v48 = v4;
    v49 = 1;
    if (v4)
    {
      Count = CFArrayGetCount(v4);
    }

    else
    {
      Count = 0;
    }

    v9 = *(a1 + 72);
    if (4 * Count < v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Control.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 955;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: bad property data size for kAudioSelectorControlPropertyCurrentItem", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    v10 = *(a1 + 56);
    v11 = HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue(*(v3 + 80), v5);
    *v53 = v11;
    v54 = 1;
    if (v11)
    {
      LODWORD(v11) = CFArrayGetCount(v11);
    }

    v12 = v9 >> 2;
    v46 = v9;
    if (v11 != (v9 >> 2))
    {
      CACFArray::~CACFArray(v53);
      goto LABEL_40;
    }

    std::vector<unsigned int>::vector[abi:ne200100](buf, v9 >> 2);
    if (v9 >= 4)
    {
      v13 = 0;
      do
      {
        v50[0] = 0;
        if (CACFArray::GetUInt32(v53, v13, v50))
        {
          v14 = *&buf[8];
          if (*&buf[8] >= *&buf[16])
          {
            v16 = *buf;
            v17 = *&buf[8] - *buf;
            v18 = (*&buf[8] - *buf) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v20 = *&buf[16] - *buf;
            if ((*&buf[16] - *buf) >> 1 > v19)
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
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v21);
            }

            *(4 * v18) = v50[0];
            v15 = 4 * v18 + 4;
            memcpy(0, v16, v17);
            v22 = *buf;
            *buf = 0;
            *&buf[8] = v15;
            *&buf[16] = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            **&buf[8] = v50[0];
            v15 = v14 + 4;
          }

          *&buf[8] = v15;
        }

        ++v13;
      }

      while (v12 != v13);
    }

    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    *v50 = 0;
    v51 = 0;
    v52 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v50, v10, &v10[v12], v12);
    v23 = *v50;
    v24 = v51;
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v25 = *buf;
    if (*&buf[8] - *buf == v24 - v23)
    {
      v26 = memcmp(*buf, v23, *&buf[8] - *buf) == 0;
      if (!v23)
      {
LABEL_37:
        if (v25)
        {
          *&buf[8] = v25;
          operator delete(v25);
        }

        CACFArray::~CACFArray(v53);
        if (v26)
        {
          goto LABEL_67;
        }

LABEL_40:
        MEMORY[0x1EEE9AC00](v27);
        v29 = (&v46 - v28);
        v47 = Count;
        bzero(&v46 - v28, 4 * Count);
        *(*(*(a1 + 32) + 8) + 24) = HALS_IOA2UCDevice::SetMultiControlValue((*(a1 + 64) + 1976), *(v3 + 72), v10, v12, v29, Count, &v47);
        v30 = *(*(*(a1 + 32) + 8) + 24);
        if (v30)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_IOA2Control.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 972;
            *&buf[18] = 1024;
            *&buf[20] = v30;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting selector control value on the device, Error: 0x%X", buf, 0x18u);
          }

          v44 = __cxa_allocate_exception(0x10uLL);
          *v44 = off_1F5991DD8;
          v44[2] = 560226676;
        }

        if (v12 != v47)
        {
          goto LABEL_67;
        }

        v31 = v12;
        memset(buf, 0, sizeof(buf));
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(buf, v10, &v10[v12], v12);
        v32 = *buf;
        v33 = *&buf[8];
        std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
        *v50 = 0;
        v51 = 0;
        v52 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v50, v29, &v29[v12], v12);
        v34 = *v50;
        v35 = v51;
        std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
        if (v33 - v32 == v35 - v34)
        {
          v36 = memcmp(v32, v34, v33 - v32) == 0;
          if (!v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v36 = 0;
          if (!v34)
          {
LABEL_47:
            if (v32)
            {
              operator delete(v32);
            }

            if (v36)
            {
              *v50 = *(v3 + 80);
              LOWORD(v51) = 256;
              if (*v50)
              {
                Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
                *v53 = Mutable;
                v54 = 257;
                if (v46 >= 4)
                {
                  do
                  {
                    v39 = *v29++;
                    v38 = v39;
                    if (*v53 && HIBYTE(v54) == 1)
                    {
                      valuePtr = v38;
                      v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      *buf = v40;
                      buf[8] = 1;
                      if (v40 && *v53 && HIBYTE(v54) == 1)
                      {
                        CFArrayAppendValue(*v53, v40);
                      }

                      CACFNumber::~CACFNumber(buf);
                    }

                    --v31;
                  }

                  while (v31);
                  Mutable = *v53;
                }

                if (BYTE1(v51) == 1 && Mutable && *v50)
                {
                  CFDictionarySetValue(*v50, @"value", Mutable);
                }

                CACFArray::~CACFArray(v53);
              }

              CACFDictionary::~CACFDictionary(v50);
              (*(*v3 + 208))(v3, *(*(a1 + 40) + 8) + 40);
            }

LABEL_67:
            CACFArray::~CACFArray(&v48);
            goto LABEL_68;
          }
        }

        operator delete(v34);
        goto LABEL_47;
      }
    }

    else
    {
      v26 = 0;
      if (!v23)
      {
        goto LABEL_37;
      }
    }

    operator delete(v23);
    v25 = *buf;
    goto LABEL_37;
  }

  if (*(a1 + 72) <= 3u)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Control.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1011;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::_SetPropertyData: bad property data size for kAudioSelectorControlPropertyCurrentItem", buf, 0x12u);
    }

    v42 = __cxa_allocate_exception(0x10uLL);
    *v42 = off_1F5991DD8;
    v42[2] = 561211770;
  }

  v7 = **(a1 + 56);
  v50[0] = 0;
  CACFDictionary::GetUInt32(*(v3 + 80), @"value", v50);
  if (v7 != v50[0])
  {
    v53[0] = 0;
    *(*(*(a1 + 32) + 8) + 24) = HALS_IOA2UCDevice::SetControlValue((*(a1 + 64) + 1976), *(v3 + 72), v7, v53);
    v8 = *(*(*(a1 + 32) + 8) + 24);
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_IOA2Control.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1020;
        *&buf[18] = 1024;
        *&buf[20] = v8;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting selector control value on the device, Error: 0x%X", buf, 0x18u);
      }

      v45 = __cxa_allocate_exception(0x10uLL);
      *v45 = off_1F5991DD8;
      v45[2] = 560226676;
    }

    if (v53[0] == v7)
    {
      CACFDictionary::AddUInt32((v3 + 80), @"value", v7);
      (*(*v3 + 208))(v3, *(*(a1 + 40) + 8) + 40);
    }
  }

LABEL_68:
  v41 = *MEMORY[0x1E69E9840];
}

void sub_1DE5CE0C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    CACFArray::~CACFArray((v3 - 136));
    CACFDictionary::~CACFDictionary((v3 - 160));
    CACFArray::~CACFArray((v3 - 176));
    v6 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v6[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CDDA4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_66(uint64_t a1, const __CFDictionary *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = (v3 + 80);
  StereoPanControlInfo_LeftValue = HALS_IOA2UCDevice::GetStereoPanControlInfo_LeftValue(*(v3 + 80), a2);
  StereoPanControlInfo_CenterValue = HALS_IOA2UCDevice::GetStereoPanControlInfo_CenterValue(*(v3 + 80), v6);
  StereoPanControlInfo_RightValue = HALS_IOA2UCDevice::GetStereoPanControlInfo_RightValue(*(v3 + 80), v8);
  v10 = **(a1 + 56);
  if (v10 > 0.0)
  {
    if (v10 == 0.5)
    {
      StereoPanControlInfo_LeftValue = StereoPanControlInfo_CenterValue;
    }

    else if (v10 >= 1.0)
    {
      StereoPanControlInfo_LeftValue = StereoPanControlInfo_RightValue;
    }

    else
    {
      if (v10 >= 0.5)
      {
        v11 = ((v10 + -0.5) + (v10 + -0.5)) * (StereoPanControlInfo_RightValue - StereoPanControlInfo_CenterValue);
        v12 = StereoPanControlInfo_CenterValue;
      }

      else
      {
        v11 = (v10 + v10) * (StereoPanControlInfo_CenterValue - StereoPanControlInfo_LeftValue);
        v12 = StereoPanControlInfo_LeftValue;
      }

      StereoPanControlInfo_LeftValue = (v11 + v12);
    }
  }

  v18 = 0;
  result = CACFDictionary::GetUInt32(*v4, @"value", &v18);
  if (StereoPanControlInfo_LeftValue != v18)
  {
    v17 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 64) + 1976), *(v3 + 72), StereoPanControlInfo_LeftValue, &v17);
    *(*(*(a1 + 32) + 8) + 24) = result;
    v14 = *(*(*(a1 + 32) + 8) + 24);
    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v20 = "HALS_IOA2Control.cpp";
        v21 = 1024;
        v22 = 1094;
        v23 = 1024;
        v24 = v14;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting pan control value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v17 == StereoPanControlInfo_LeftValue)
    {
      CACFDictionary::AddUInt32(v4, @"value", StereoPanControlInfo_LeftValue);
      result = (*(*v3 + 208))(v3, *(*(a1 + 40) + 8) + 40);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5CE4EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CE3FCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE5CE558(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE5CE554);
  }

  JUMPOUT(0x1DE5CE514);
}

void ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_70(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 104);
  if (v3)
  {
    v4 = *(v2 + 112);
    v5 = *(a1 + 64);
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    memcpy(v3, *(a1 + 48), v6);
    HALS_IOA2UCDevice::MoveBlockControlData((*(a1 + 56) + 1976), *(v2 + 72), 1u, v6);
  }
}

void sub_1DE5CE5CC(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 2003329396;
  }

  *(*(*(v2 + 32) + 8) + 24) = v5;

  __cxa_end_catch();
}

void __copy_helper_block_e8_56c38_ZTS13HALS_ReleaserI15HALS_IOA2DeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 7);
  *(a1 + 56) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void __copy_helper_block_e8_64c38_ZTS13HALS_ReleaserI15HALS_IOA2DeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 8);
  *(a1 + 64) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void HALS_IOA2Control::GetPropertyData(HALS_IOA2Control *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v100 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1818457189)
  {
    if (mSelector <= 1935894893)
    {
      if (mSelector > 1935892840)
      {
        if (mSelector == 1935892841)
        {
          *v98 = 0;
          *&v98[8] = v98;
          *&v98[16] = 0x2000000000;
          v99 = 0;
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 0x40000000;
          v84[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
          v84[3] = &unk_1E86772D0;
          v84[4] = v98;
          v84[5] = this;
          v85 = a4;
          v84[6] = a6;
          v31 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v31, v84);
        }

        else
        {
          if (mSelector != 1935893353)
          {
            goto LABEL_77;
          }

          *v98 = 0;
          *&v98[8] = v98;
          *&v98[16] = 0x2000000000;
          v99 = 0;
          v86[0] = MEMORY[0x1E69E9820];
          v86[1] = 0x40000000;
          v86[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_23;
          v86[3] = &unk_1E86772A8;
          v86[5] = this;
          v86[4] = v98;
          v86[6] = a5;
          v86[7] = a6;
          v24 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v24, v86);
        }

        v21 = 4 * *(*&v98[8] + 24);
LABEL_60:
        *a5 = v21;
        goto LABEL_85;
      }

      if (mSelector == 1818457190)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v98 = 136315394;
            *&v98[4] = "HALS_IOA2Control.cpp";
            *&v98[12] = 1024;
            *&v98[14] = 487;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelsToScalarTransferFunction", v98, 0x12u);
          }

          v54 = __cxa_allocate_exception(0x10uLL);
          *v54 = off_1F5991DD8;
          v54[2] = 561211770;
        }

        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 0x40000000;
        v88[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_19;
        v88[3] = &__block_descriptor_tmp_20_12537;
        v88[4] = this;
        v88[5] = a6;
        v29 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v29, v88);
        goto LABEL_81;
      }

      if (mSelector != 1852400499)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (mSelector > 1935962741)
      {
        if (mSelector == 1936745334)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v98 = 136315394;
              *&v98[4] = "HALS_IOA2Control.cpp";
              *&v98[12] = 1024;
              *&v98[14] = 636;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioStereoPanControlPropertyValue", v98, 0x12u);
            }

            v63 = __cxa_allocate_exception(0x10uLL);
            *v63 = off_1F5991DD8;
            v63[2] = 561211770;
          }

          *v98 = 0;
          *&v98[8] = v98;
          *&v98[16] = 0x2000000000;
          v99 = 0;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          v97 = 0;
          v77 = 0;
          v78 = &v77;
          v79 = 0x2000000000;
          v80 = 0;
          v73 = 0;
          v74 = &v73;
          v75 = 0x2000000000;
          v76 = 0;
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 0x40000000;
          v72[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_40;
          v72[3] = &unk_1E8677348;
          v72[7] = &v73;
          v72[8] = this;
          v72[4] = v98;
          v72[5] = buf;
          v72[6] = &v77;
          v36 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v36, v72);
          v37 = *(v74 + 6);
          v38 = *(*&v98[8] + 24);
          v39 = 0.0;
          v40 = v37 - v38;
          if (v37 < v38)
          {
            v41 = *(*&buf[8] + 24);
            v39 = 0.5;
            if (v37 != v41)
            {
              v42 = *(v78 + 6);
              v39 = 1.0;
              if (v37 > v42)
              {
                v43 = v37 >= v41;
                v44 = v37 - v41;
                if (v43)
                {
                  v39 = ((v44 / (v42 - v41)) * 0.5) + 0.5;
                }

                else
                {
                  v39 = (v40 / (v41 - v38)) * 0.5;
                }
              }
            }
          }

          *a6 = v39;
          *a5 = 4;
          _Block_object_dispose(&v73, 8);
          _Block_object_dispose(&v77, 8);
          _Block_object_dispose(buf, 8);
          goto LABEL_85;
        }

        if (mSelector != 1936745315)
        {
          if (mSelector == 1935962742)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *v98 = 136315394;
                *&v98[4] = "HALS_IOA2Control.cpp";
                *&v98[12] = 1024;
                *&v98[14] = 412;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioSliderControlPropertyValue", v98, 0x12u);
              }

              v57 = __cxa_allocate_exception(0x10uLL);
              *v57 = off_1F5991DD8;
              v57[2] = 561211770;
            }

            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 0x40000000;
            v95[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
            v95[3] = &__block_descriptor_tmp_6_12521;
            v95[4] = this;
            v95[5] = a6;
            v19 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v19, v95);
            goto LABEL_81;
          }

          goto LABEL_77;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v98 = 136315394;
            *&v98[4] = "HALS_IOA2Control.cpp";
            *&v98[12] = 1024;
            *&v98[14] = 681;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioStereoPanControlPropertyPanningChannels", v98, 0x12u);
          }

          v61 = __cxa_allocate_exception(0x10uLL);
          *v61 = off_1F5991DD8;
          v61[2] = 561211770;
        }

        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 0x40000000;
        v71[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_42;
        v71[3] = &__block_descriptor_tmp_43_12553;
        v71[4] = this;
        v71[5] = a6;
        v33 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v33, v71);
        goto LABEL_66;
      }

      if (mSelector != 1935894894)
      {
        if (mSelector != 1935962738)
        {
          goto LABEL_77;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v98 = 136315394;
            *&v98[4] = "HALS_IOA2Control.cpp";
            *&v98[12] = 1024;
            *&v98[14] = 421;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioSliderControlPropertyRange", v98, 0x12u);
          }

          v59 = __cxa_allocate_exception(0x10uLL);
          *v59 = off_1F5991DD8;
          v59[2] = 561211770;
        }

        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 0x40000000;
        v94[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7;
        v94[3] = &__block_descriptor_tmp_8_12523;
        v94[4] = this;
        v94[5] = a6;
        v26 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v26, v94);
        goto LABEL_66;
      }
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v98 = 136315394;
        *&v98[4] = "HALS_IOA2Control.cpp";
        *&v98[12] = 1024;
        *&v98[14] = 565;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioSelectorControlPropertyItemName", v98, 0x12u);
      }

      v50 = __cxa_allocate_exception(0x10uLL);
      *v50 = off_1F5991DD8;
      v50[2] = 561211770;
    }

    if (a7 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v98 = 136315394;
        *&v98[4] = "HALS_IOA2Control.cpp";
        *&v98[12] = 1024;
        *&v98[14] = 566;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad qualifier data size for kAudioSelectorControlPropertyItemName", v98, 0x12u);
      }

      v51 = __cxa_allocate_exception(0x10uLL);
      *v51 = off_1F5991DD8;
      v51[2] = 561211770;
    }

    *v98 = 0;
    *&v98[8] = v98;
    *&v98[16] = 0x2000000000;
    LOBYTE(v99) = 0;
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 0x40000000;
    v83[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_27;
    v83[3] = &unk_1E86772F8;
    v83[4] = v98;
    v83[5] = this;
    v83[6] = a8;
    v83[7] = a6;
    v27 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v27, v83);
    *a5 = 8;
    if ((*(*&v98[8] + 24) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Control.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 594;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: item not in item dictionary for kAudioSelectorControlPropertyItemName", buf, 0x12u);
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      *v28 = off_1F5991DD8;
      v28[2] = 1852797029;
    }

    goto LABEL_85;
  }

  if (mSelector <= 1818453105)
  {
    if (mSelector <= 1651272547)
    {
      if (mSelector == 1650685548)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v98 = 136315394;
            *&v98[4] = "HALS_IOA2Control.cpp";
            *&v98[12] = 1024;
            *&v98[14] = 496;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioBooleanControlPropertyValue", v98, 0x12u);
          }

          v53 = __cxa_allocate_exception(0x10uLL);
          *v53 = off_1F5991DD8;
          v53[2] = 561211770;
        }

        if (*(this + 5) == 1702259059)
        {
          *a6 = HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlPropertyData(*(*(this + 8) + 8), a9);
        }

        else
        {
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 0x40000000;
          v87[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21;
          v87[3] = &__block_descriptor_tmp_22_12539;
          v87[4] = this;
          v87[5] = a6;
          v47 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v47, v87);
        }

        goto LABEL_81;
      }

      if (mSelector != 1651272546)
      {
        goto LABEL_77;
      }

      *v98 = 0;
      *&v98[8] = v98;
      *&v98[16] = 0x2000000000;
      v99 = 0;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 0x40000000;
      v69[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_44;
      v69[3] = &unk_1E8677390;
      v69[4] = v98;
      v69[5] = this;
      v70 = a4;
      v69[6] = a6;
      v20 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v20, v69);
      v21 = *(*&v98[8] + 24);
      goto LABEL_60;
    }

    if (mSelector != 1651272548)
    {
      if (mSelector != 1668049771)
      {
        goto LABEL_77;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v98 = 136315394;
          *&v98[4] = "HALS_IOA2Control.cpp";
          *&v98[12] = 1024;
          *&v98[14] = 601;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioClockSourceControlPropertyItemKind", v98, 0x12u);
        }

        v52 = __cxa_allocate_exception(0x10uLL);
        *v52 = off_1F5991DD8;
        v52[2] = 561211770;
      }

      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v98 = 136315394;
          *&v98[4] = "HALS_IOA2Control.cpp";
          *&v98[12] = 1024;
          *&v98[14] = 602;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad qualifier data size for kAudioClockSourceControlPropertyItemKind", v98, 0x12u);
        }

        v65 = __cxa_allocate_exception(0x10uLL);
        *v65 = off_1F5991DD8;
        v65[2] = 561211770;
      }

      *v98 = 0;
      *&v98[8] = v98;
      *&v98[16] = 0x2000000000;
      LOBYTE(v99) = 0;
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 0x40000000;
      v81[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32;
      v81[3] = &unk_1E8677320;
      v81[4] = v98;
      v81[5] = this;
      v82 = 4;
      v81[6] = a8;
      v81[7] = a6;
      v22 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v22, v81);
      *a5 = 4;
      if ((*(*&v98[8] + 24) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOA2Control.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 629;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: item not in item dictionary for kAudioClockSourceControlPropertyItemKind", buf, 0x12u);
        }

        v23 = __cxa_allocate_exception(0x10uLL);
        *v23 = off_1F5991DD8;
        v23[2] = 1852797029;
      }

LABEL_85:
      _Block_object_dispose(v98, 8);
      goto LABEL_86;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v98 = 136315394;
        *&v98[4] = "HALS_IOA2Control.cpp";
        *&v98[12] = 1024;
        *&v98[14] = 713;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioBlockControlPropertyDescriptor", v98, 0x12u);
      }

      v55 = __cxa_allocate_exception(0x10uLL);
      *v55 = off_1F5991DD8;
      v55[2] = 561211770;
    }

    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 0x40000000;
    v68[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_46;
    v68[3] = &__block_descriptor_tmp_47_12556;
    v68[4] = this;
    v68[5] = a6;
    v30 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v30, v68);
LABEL_66:
    v34 = 8;
LABEL_82:
    *a5 = v34;
LABEL_86:
    v48 = *MEMORY[0x1E69E9840];
    return;
  }

  if (mSelector <= 1818453109)
  {
    if (mSelector == 1818453106)
    {
      if (a4 <= 0xF)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v98 = 136315394;
          *&v98[4] = "HALS_IOA2Control.cpp";
          *&v98[12] = 1024;
          *&v98[14] = 453;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelRange", v98, 0x12u);
        }

        v64 = __cxa_allocate_exception(0x10uLL);
        *v64 = off_1F5991DD8;
        v64[2] = 561211770;
      }

      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 0x40000000;
      v91[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_13;
      v91[3] = &__block_descriptor_tmp_14_12529;
      v91[4] = this;
      v91[5] = a6;
      v45 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v45, v91);
      v34 = 16;
      goto LABEL_82;
    }

    if (mSelector == 1818453107)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v98 = 136315394;
          *&v98[4] = "HALS_IOA2Control.cpp";
          *&v98[12] = 1024;
          *&v98[14] = 477;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyConvertDecibelsToScalar", v98, 0x12u);
        }

        v58 = __cxa_allocate_exception(0x10uLL);
        *v58 = off_1F5991DD8;
        v58[2] = 561211770;
      }

      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v98 = 136315394;
          *&v98[4] = "HALS_IOA2Control.cpp";
          *&v98[12] = 1024;
          *&v98[14] = 478;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad qualifier data size for kAudioLevelControlPropertyConvertDecibelsToScalar", v98, 0x12u);
        }

        v67 = __cxa_allocate_exception(0x10uLL);
        *v67 = off_1F5991DD8;
        v67[2] = 561211770;
      }

      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 0x40000000;
      v89[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17;
      v89[3] = &__block_descriptor_tmp_18_12535;
      v89[4] = this;
      v89[5] = a6;
      v89[6] = a8;
      v25 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v25, v89);
      goto LABEL_81;
    }
  }

  else
  {
    switch(mSelector)
    {
      case 1818453110:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v98 = 136315394;
            *&v98[4] = "HALS_IOA2Control.cpp";
            *&v98[12] = 1024;
            *&v98[14] = 444;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelValue", v98, 0x12u);
          }

          v62 = __cxa_allocate_exception(0x10uLL);
          *v62 = off_1F5991DD8;
          v62[2] = 561211770;
        }

        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 0x40000000;
        v92[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11;
        v92[3] = &__block_descriptor_tmp_12_12527;
        v92[4] = this;
        v92[5] = a6;
        v35 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v35, v92);
        goto LABEL_81;
      case 1818456932:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v98 = 136315394;
            *&v98[4] = "HALS_IOA2Control.cpp";
            *&v98[12] = 1024;
            *&v98[14] = 467;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyConvertScalarToDecibels", v98, 0x12u);
          }

          v60 = __cxa_allocate_exception(0x10uLL);
          *v60 = off_1F5991DD8;
          v60[2] = 561211770;
        }

        if (a7 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v98 = 136315394;
            *&v98[4] = "HALS_IOA2Control.cpp";
            *&v98[12] = 1024;
            *&v98[14] = 468;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad qualifier data size for kAudioLevelControlPropertyConvertScalarToDecibels", v98, 0x12u);
          }

          v66 = __cxa_allocate_exception(0x10uLL);
          *v66 = off_1F5991DD8;
          v66[2] = 561211770;
        }

        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 0x40000000;
        v90[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15;
        v90[3] = &__block_descriptor_tmp_16_12532;
        v90[4] = this;
        v90[5] = a6;
        v90[6] = a8;
        v32 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v32, v90);
        goto LABEL_81;
      case 1818456950:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v98 = 136315394;
            *&v98[4] = "HALS_IOA2Control.cpp";
            *&v98[12] = 1024;
            *&v98[14] = 435;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyScalarValue", v98, 0x12u);
          }

          v56 = __cxa_allocate_exception(0x10uLL);
          *v56 = off_1F5991DD8;
          v56[2] = 561211770;
        }

        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 0x40000000;
        v93[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9;
        v93[3] = &__block_descriptor_tmp_10_12525;
        v93[4] = this;
        v93[5] = a6;
        v18 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v18, v93);
LABEL_81:
        v34 = 4;
        goto LABEL_82;
    }
  }

LABEL_77:
  v46 = *MEMORY[0x1E69E9840];

  HALS_Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE5D02D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 176), 8);
  _Block_object_dispose((v42 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  result = HALS_IOA2UCDevice::GetControlInfo_Value(*(*(a1 + 32) + 80), a2);
  **(a1 + 40) = result;
  return result;
}

void sub_1DE5D0368(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v12 = 0;
  v10 = v3;
  v11 = 0;
  if (v3)
  {
    if (!CACFDictionary::GetUInt32(v3, @"minimum value", &v12))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "HALS_IOA2UCDevice.cpp";
        v15 = 1024;
        v16 = 949;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetSliderControlInfoByIndex_MinimumValue: there is no minimum control value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v4 = v12;
  }

  else
  {
    v4 = 0;
  }

  CACFDictionary::~CACFDictionary(&v10);
  **(a1 + 40) = v4;
  v5 = *(v2 + 80);
  v12 = 0;
  v10 = v5;
  v11 = 0;
  if (v5)
  {
    if (!CACFDictionary::GetUInt32(v5, @"maximum value", &v12))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "HALS_IOA2UCDevice.cpp";
        v15 = 1024;
        v16 = 961;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetSliderControlInfoByIndex_MaximumValue: there is no maximum control value", buf, 0x12u);
      }

      v9 = __cxa_allocate_exception(0x10uLL);
      *v9 = off_1F5991DD8;
      v9[2] = 1852797029;
    }

    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

  CACFDictionary::~CACFDictionary(&v10);
  *(*(a1 + 40) + 4) = v6;
  v7 = *MEMORY[0x1E69E9840];
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  ControlInfo_Value = HALS_IOA2UCDevice::GetControlInfo_Value(*(v3 + 80), a2);
  **(a1 + 40) = CAVolumeCurve::ConvertRawToScalar((v3 + 120), ControlInfo_Value);
}

void sub_1DE5D0678(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  ControlInfo_Value = HALS_IOA2UCDevice::GetControlInfo_Value(*(v3 + 80), a2);
  result = CAVolumeCurve::ConvertRawToDB((v3 + 120), ControlInfo_Value);
  **(a1 + 40) = v6;
  return result;
}

void sub_1DE5D06D8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

double ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[18])
  {
    v2 = *(v1[16] + 36);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *(a1 + 40);
  *v3 = v2;
  MaximumDB = CAVolumeCurve::GetMaximumDB((v1 + 15));
  result = *&MaximumDB;
  v3[1] = result;
  return result;
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CAVolumeCurve::ConvertScalarToRaw((v2 + 120), **(a1 + 48));
  result = CAVolumeCurve::ConvertRawToDB((v2 + 120), v3);
  **(a1 + 40) = v5;
  return result;
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CAVolumeCurve::ConvertDBToRaw((v2 + 120), **(a1 + 48));
  **(a1 + 40) = CAVolumeCurve::ConvertRawToScalar((v2 + 120), v3);
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21(uint64_t a1, const __CFDictionary *a2)
{
  result = HALS_IOA2UCDevice::GetControlInfo_Value(*(*(a1 + 32) + 80), a2);
  **(a1 + 40) = result;
  return result;
}

void sub_1DE5D0820(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_23(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 96) == 1)
  {
    v4 = HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue(*(v3 + 80), a2);
    v9 = v4;
    v10 = 1;
    v5 = **(a1 + 48);
    if (v4)
    {
      LODWORD(v4) = CFArrayGetCount(v4);
    }

    v6 = v5 >> 2;
    if (v4 < v5 >> 2)
    {
      v6 = v4;
    }

    *(*(*(a1 + 32) + 8) + 24) = v6;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        CACFArray::GetUInt32(&v9, v8++, (*(a1 + 56) + v7));
        v7 += 4;
      }

      while (v8 < *(*(*(a1 + 32) + 8) + 24));
    }

    CACFArray::~CACFArray(&v9);
  }

  else
  {
    **(a1 + 56) = HALS_IOA2UCDevice::GetControlInfo_Value(*(v3 + 80), a2);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_1DE5D0930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CACFArray::~CACFArray(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5D091CLL);
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(*(a1 + 40) + 80), a2);
  v15 = v3;
  v16 = 1;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "HALS_IOA2Control.cpp";
      v19 = 1024;
      v20 = 544;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the selector items for kAudioSelectorControlPropertyAvailableItems", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v4 = *(a1 + 56);
  Count = CFArrayGetCount(v3);
  v6 = v4 >> 2;
  if (v4 >> 2 >= Count)
  {
    v6 = Count;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v13 = 0;
      v14 = 0;
      CACFArray::GetCACFDictionary(&v15, v8, &v13);
      if (!v13)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "HALS_IOA2Control.cpp";
          v19 = 1024;
          v20 = 550;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item dictionary for kAudioSelectorControlPropertyAvailableItems", buf, 0x12u);
        }

        v10 = __cxa_allocate_exception(0x10uLL);
        *v10 = off_1F5991DD8;
        v10[2] = 1852797029;
      }

      if ((CACFDictionary::GetUInt32(v13, @"value", (*(a1 + 48) + v7)) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "HALS_IOA2Control.cpp";
          v19 = 1024;
          v20 = 553;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item ID for kAudioSelectorControlPropertyAvailableItems", buf, 0x12u);
        }

        v11 = __cxa_allocate_exception(0x10uLL);
        *v11 = off_1F5991DD8;
        v11[2] = 1852797029;
      }

      CACFDictionary::~CACFDictionary(&v13);
      ++v8;
      v7 += 4;
    }

    while (v8 < *(*(*(a1 + 32) + 8) + 24));
  }

  CACFArray::~CACFArray(&v15);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE5D0C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    CACFArray::~CACFArray(&a11);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5D0A44);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_27(uint64_t a1, const __CFDictionary *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  theArray = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(*(a1 + 40) + 80), a2);
  v16 = 1;
  if (!theArray)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "HALS_IOA2Control.cpp";
      v19 = 1024;
      v20 = 572;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the selector items for kAudioSelectorControlPropertyItemName", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v3 = 0;
    do
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (v3 >= Count)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      CACFArray::GetCACFDictionary(&theArray, v3, &v13);
      if (!v13)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "HALS_IOA2Control.cpp";
          v19 = 1024;
          v20 = 577;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item dictionary for kAudioSelectorControlPropertyItemName", buf, 0x12u);
        }

        v7 = __cxa_allocate_exception(0x10uLL);
        *v7 = off_1F5991DD8;
        v7[2] = 1852797029;
      }

      v12 = 0;
      if ((CACFDictionary::GetUInt32(v13, @"value", &v12) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "HALS_IOA2Control.cpp";
          v19 = 1024;
          v20 = 581;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item ID for kAudioSelectorControlPropertyItemName", buf, 0x12u);
        }

        v6 = __cxa_allocate_exception(0x10uLL);
        *v6 = off_1F5991DD8;
        v6[2] = 1852797029;
      }

      if (v12 == **(a1 + 48))
      {
        cf = 0;
        v11 = 0;
        CACFDictionary::GetCACFString(&v13, @"name", &cf);
        if (!cf)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v18 = "HALS_IOA2Control.cpp";
            v19 = 1024;
            v20 = 586;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item name for kAudioSelectorControlPropertyItemName", buf, 0x12u);
          }

          v8 = __cxa_allocate_exception(0x10uLL);
          *v8 = off_1F5991DD8;
          v8[2] = 1852797029;
        }

        CFRetain(cf);
        **(a1 + 56) = cf;
        *(*(*(a1 + 32) + 8) + 24) = 1;
        CACFString::~CACFString(&cf);
      }

      CACFDictionary::~CACFDictionary(&v13);
      ++v3;
    }

    while ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0);
  }

  CACFArray::~CACFArray(&theArray);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1DE5D1128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  if (a2)
  {
    CACFArray::~CACFArray(&a15);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5D0E24);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32(uint64_t a1, const __CFDictionary *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(*(a1 + 40) + 80), a2);
  v14 = 1;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "HALS_IOA2Control.cpp";
      v17 = 1024;
      v18 = 608;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the selector items for kAudioClockSourceControlPropertyItemKind", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v3 = 0;
    do
    {
      if (v3 >= *(a1 + 64))
      {
        break;
      }

      v11 = 0;
      v12 = 0;
      CACFArray::GetCACFDictionary(&v13, v3, &v11);
      if (!v11)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "HALS_IOA2Control.cpp";
          v17 = 1024;
          v18 = 613;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item dictionary for kAudioClockSourceControlPropertyItemKind", buf, 0x12u);
        }

        v8 = __cxa_allocate_exception(0x10uLL);
        *v8 = off_1F5991DD8;
        v8[2] = 1852797029;
      }

      v10 = 0;
      if ((CACFDictionary::GetUInt32(v11, @"IOAudioSelectorControlSelectionValue", &v10) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "HALS_IOA2Control.cpp";
          v17 = 1024;
          v18 = 617;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item ID for kAudioClockSourceControlPropertyItemKind", buf, 0x12u);
        }

        v7 = __cxa_allocate_exception(0x10uLL);
        *v7 = off_1F5991DD8;
        v7[2] = 1852797029;
      }

      if (v10 == **(a1 + 48))
      {
        *buf = 0;
        UInt32 = CACFDictionary::GetUInt32(v11, @"IOAudioSelectorControlClockSourceKey", buf);
        v5 = *buf;
        if (!UInt32)
        {
          v5 = 0;
        }

        **(a1 + 56) = v5;
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      CACFDictionary::~CACFDictionary(&v11);
      ++v3;
    }

    while ((*(*(*(a1 + 32) + 8) + 24) & 1) != 0);
  }

  CACFArray::~CACFArray(&v13);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE5D1510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    CACFArray::~CACFArray(&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5D12C0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_40(void *a1, const __CFDictionary *a2)
{
  v3 = a1[8];
  *(*(a1[4] + 8) + 24) = HALS_IOA2UCDevice::GetStereoPanControlInfo_LeftValue(*(v3 + 80), a2);
  *(*(a1[5] + 8) + 24) = HALS_IOA2UCDevice::GetStereoPanControlInfo_CenterValue(*(v3 + 80), v4);
  *(*(a1[6] + 8) + 24) = HALS_IOA2UCDevice::GetStereoPanControlInfo_RightValue(*(v3 + 80), v5);
  result = HALS_IOA2UCDevice::GetControlInfo_Value(*(v3 + 80), v6);
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_1DE5D15E0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_42(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v12 = 0;
  v10 = v3;
  v11 = 0;
  if (v3)
  {
    if (!CACFDictionary::GetUInt32(v3, @"left channel", &v12))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "HALS_IOA2UCDevice.cpp";
        v15 = 1024;
        v16 = 1097;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_LeftChannel: there is no left channel", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v4 = v12;
  }

  else
  {
    v4 = 0;
  }

  CACFDictionary::~CACFDictionary(&v10);
  **(a1 + 40) = v4;
  v5 = *(v2 + 80);
  v12 = 0;
  v10 = v5;
  v11 = 0;
  if (v5)
  {
    if (!CACFDictionary::GetUInt32(v5, @"right channel", &v12))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "HALS_IOA2UCDevice.cpp";
        v15 = 1024;
        v16 = 1109;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_LeftChannel: there is no right channel", buf, 0x12u);
      }

      v9 = __cxa_allocate_exception(0x10uLL);
      *v9 = off_1F5991DD8;
      v9[2] = 1852797029;
    }

    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

  CACFDictionary::~CACFDictionary(&v10);
  *(*(a1 + 40) + 4) = v6;
  v7 = *MEMORY[0x1E69E9840];
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_44(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(v2 + 56));
  v5 = v3;
  if (*(v2 + 104))
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(v2 + 112);
    if (v7 >= *(a1 + 56))
    {
      v7 = *(a1 + 56);
    }

    *(*(*(a1 + 32) + 8) + 24) = v7;
    HALS_IOA2UCDevice::MoveBlockControlData((v3 + 1976), *(v2 + 72), 0, *(*(*(a1 + 32) + 8) + 24));
    memcpy(*(a1 + 48), *(v2 + 104), *(*(*(a1 + 32) + 8) + 24));
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
}

void sub_1DE5D1950(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  HALS_ObjectMap::ReleaseObject(v14, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_46(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 80);
  cf = 0;
  v6 = v2;
  v7 = 0;
  if (v2)
  {
    if ((CACFDictionary::GetDictionary(v2, @"descriptor", &cf) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "HALS_IOA2UCDevice.cpp";
        v11 = 1024;
        v12 = 1121;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetBlockControlInfoByID_Descriptor: there is no descriptor", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v3 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
    v3 = 0;
  }

  CACFDictionary::~CACFDictionary(&v6);
  **(a1 + 40) = v3;
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_IOA2Control::GetPropertyDataSize(HALS_IOA2Control *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector == 1651272546)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
    v16[3] = &unk_1E8677160;
    v16[4] = &v19;
    v16[5] = this;
    v13 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v13, v16);
    v12 = *(v20 + 6);
    goto LABEL_9;
  }

  if (mSelector == 1935892841)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
    v17[3] = &unk_1E8677138;
    v17[4] = &v19;
    v17[5] = this;
    v11 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v11, v17);
    goto LABEL_7;
  }

  if (mSelector == 1935893353)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 1;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
    v18[3] = &unk_1E8677110;
    v18[4] = &v19;
    v18[5] = this;
    v10 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v10, v18);
LABEL_7:
    v12 = (4 * *(v20 + 6));
LABEL_9:
    _Block_object_dispose(&v19, 8);
    return v12;
  }

  return HALS_Control::GetPropertyDataSize(this, a2, a3);
}

void ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v2 = *(a1 + 40);
  if (*(v2 + 96) == 1)
  {
    v4 = HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue(*(v2 + 80), a2);
    v5 = v4;
    v6 = 1;
    if (v4)
    {
      LODWORD(v4) = CFArrayGetCount(v4);
    }

    *(*(*(a1 + 32) + 8) + 24) = v4;
    CACFArray::~CACFArray(&v5);
  }
}

void sub_1DE5D1EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CACFArray::~CACFArray(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5D1ED8);
}

void ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  v3 = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(*(a1 + 40) + 80), a2);
  v4 = v3;
  v5 = 1;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayGetCount(v3);
  }

  CACFArray::~CACFArray(&v4);
}

uint64_t ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 104))
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 112);
  }

  return result;
}

uint64_t HALS_IOA2Control::IsPropertySettable(HALS_IOA2Control *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  IsPropertySettable = HALS_Control::IsPropertySettable(this, a2, a3);
  if (*(v13 + 24) == 1)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK16HALS_IOA2Control18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v11[3] = &unk_1E86770E8;
    v11[4] = &v12;
    v11[5] = this;
    v7 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v7, v11);
    v8 = *(v13 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v8 & 1;
}

void sub_1DE5D2128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK16HALS_IOA2Control18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 80);
  v6 = 0;
  v4 = v2;
  v5 = 0;
  if (v2)
  {
    CACFDictionary::GetBool(v2, @"read only", &v6);
    v3 = !v6;
  }

  else
  {
    v3 = 1;
  }

  CACFDictionary::~CACFDictionary(&v4);
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void sub_1DE5D21B8(void *a1)
{
  CACFDictionary::~CACFDictionary(&v2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOA2Control::HasProperty(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  result = (*(*a1 + 184))(a1, a3, a4);
  if (result)
  {

    return HALS_Control::HasProperty(a1, a2, a3);
  }

  return result;
}

void HALS_IOA2Control::~HALS_IOA2Control(HALS_IOA2Control *this)
{
  HALS_IOA2Control::~HALS_IOA2Control(this);

  JUMPOUT(0x1E12C1730);
}

{
  v17 = *MEMORY[0x1E69E9840];
  *this = &unk_1F597FD88;
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 != v3)
  {
    if (v2 != 1651273579 && v2 != 1936028002 && v3 != 1651273579 && v3 != 1936028002)
    {
      goto LABEL_19;
    }

LABEL_18:
    if (!*(this + 13))
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  if (v2 == 1936028002 || v2 == 1651273579)
  {
    goto LABEL_18;
  }

LABEL_19:
  v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v8 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "HALS_IOA2Control.cpp";
    v15 = 1024;
    v16 = 73;
    _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOA2Control::~HALS_IOA2Control: somebody forgot to unmap the block control buffer", &v13, 0x12u);
  }

LABEL_26:
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 17));
  CACFDictionary::~CACFDictionary((this + 80));
  HALS_Control::~HALS_Control(this);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE5D2440(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_IOA2Control::Activate(HALS_IOA2Control *this)
{
  HALS_IOA2Control::SynchronizeWithDictionary(this);

  HALS_Object::Activate(this, v2);
}

void HALS_IOA2Control::SynchronizeWithDictionary(HALS_IOA2Control *this)
{
  v2 = *(this + 10);
  cf = 0;
  v35 = v2;
  v36 = 0;
  if (v2)
  {
    CACFDictionary::GetArray(v2, @"property selectors", &cf);
    v3 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
    v3 = 0;
  }

  CACFDictionary::~CACFDictionary(&v35);
  v25 = v3;
  v26 = 1;
  if (!v3)
  {
    *(this + 42) = 0;
    goto LABEL_13;
  }

  Count = CFArrayGetCount(v3);
  if (Count >= 6)
  {
    *(this + 42) = 6;
  }

  else
  {
    *(this + 42) = Count;
    if (!Count)
    {
      goto LABEL_13;
    }
  }

  v5 = 0;
  v6 = (this + 172);
  do
  {
    CACFArray::GetUInt32(&v25, v5++, v6++);
  }

  while (v5 < *(this + 42));
LABEL_13:
  v7 = *(this + 5);
  if (v7 <= 1936028006)
  {
    v8 = v7 == 1818588780;
    v9 = 1886544237;
  }

  else
  {
    v8 = v7 == 1936028007 || v7 == 1937072758;
    v9 = 1986817381;
  }

  if (!v8 && v7 != v9)
  {
    v20 = *(this + 6);
    if (v7 == v20)
    {
      goto LABEL_45;
    }

    if (v20 <= 1936028006)
    {
      if (v20 != 1818588780)
      {
        v21 = 1886544237;
LABEL_67:
        if (v20 != v21)
        {
          goto LABEL_45;
        }
      }
    }

    else if (v20 != 1936028007 && v20 != 1937072758)
    {
      v21 = 1986817381;
      goto LABEL_67;
    }
  }

  v11 = *(this + 10);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 17));
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = this + 136;
  v35 = v11;
  v36 = 0;
  if (v11)
  {
    cf = 0;
    v34 = 1;
    CACFDictionary::GetCACFArray(&v35, @"range map", &cf);
    v12 = cf;
    if (cf)
    {
      v13 = 0;
LABEL_27:
      LODWORD(v12) = CFArrayGetCount(v12);
      while (v13 < v12)
      {
        v31 = 0;
        v32 = 1;
        CACFArray::GetCACFDictionary(&cf, v13, &v31);
        if (v31)
        {
          v30 = 0;
          v29 = 0.0;
          v28 = 0;
          v27 = 0.0;
          CACFDictionary::GetSInt32(v31, @"start int value", &v30);
          CACFDictionary::GetFixed64(v31, @"start db value", &v29);
          CACFDictionary::GetUInt32(v31, @"integer steps", &v28);
          CACFDictionary::GetFixed64(v31, @"db per step", &v27);
          v14 = v29;
          v15 = v29 + v28 * v27;
          CAVolumeCurve::AddRange((this + 120), v30, v28 + v30, v14, v15);
        }

        CACFDictionary::~CACFDictionary(&v31);
        ++v13;
        v12 = cf;
        if (cf)
        {
          goto LABEL_27;
        }
      }
    }

    LODWORD(v31) = 0;
    if (CACFDictionary::GetUInt32(v35, @"transfer function", &v31))
    {
      v16 = v31;
      *(this + 39) = v31;
      if (v16 > 0xF)
      {
        v19 = 1.0;
        v18 = 2.0;
        v17 = 1;
      }

      else
      {
        v17 = byte_1DE7581D0[v16];
        v18 = flt_1DE75F074[v16];
        v19 = flt_1DE75F0B4[v16];
      }

      *(this + 152) = v17;
      *(this + 40) = v18;
      *(this + 41) = v19;
    }

    CACFArray::~CACFArray(&cf);
  }

  CACFDictionary::~CACFDictionary(&v35);
  v7 = *(this + 5);
LABEL_45:
  if (v7 > 1751740517)
  {
    if (v7 == 1751740518 || v7 == 1852601964)
    {
      goto LABEL_53;
    }

    v22 = 1936483188;
  }

  else
  {
    if (v7 == 1668047723 || v7 == 1684370292)
    {
      goto LABEL_53;
    }

    v22 = 1685287523;
  }

  if (v7 != v22)
  {
    v23 = *(this + 6);
    if (v7 == v23)
    {
      goto LABEL_54;
    }

    if (v23 > 1751740517)
    {
      if (v23 == 1751740518 || v23 == 1936483188)
      {
        goto LABEL_53;
      }

      v24 = 1852601964;
    }

    else
    {
      if (v23 == 1668047723 || v23 == 1684370292)
      {
        goto LABEL_53;
      }

      v24 = 1685287523;
    }

    if (v23 != v24)
    {
      goto LABEL_54;
    }
  }

LABEL_53:
  CACFDictionary::GetBool(*(this + 10), @"multi-selector", this + 96);
LABEL_54:
  CACFArray::~CACFArray(&v25);
}

void sub_1DE5D28EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  CACFArray::~CACFArray(&a17);
  CACFDictionary::~CACFDictionary(&a19);
  CACFArray::~CACFArray(&a9);
  _Unwind_Resume(a1);
}

void HALS_IOA2Control::SynchronizeWithRegistry(HALS_IOA2Control *this)
{
  if (*(this + 15) == 1)
  {
    *(this + 43) = 1650685548;
  }

  else
  {
    v4[5] = v1;
    v4[6] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ___ZN16HALS_IOA2Control23SynchronizeWithRegistryEv_block_invoke;
    v4[3] = &__block_descriptor_tmp_76_12601;
    v4[4] = this;
    v3 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v3, v4);
  }
}

void ___ZN16HALS_IOA2Control23SynchronizeWithRegistryEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(v1 + 56));
  v4 = v2;
  if (v2)
  {
    v5 = HALS_IOA2UCDevice::CopyControlDictionaryByID((v2 + 1976), *(v1 + 72));
    v8 = v5;
    v9 = 1;
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "HALS_IOA2Control.cpp";
        v12 = 1024;
        v13 = 1258;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SynchronizeWithRegistry: couldn't find the control dictionary", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    CACFDictionary::SetCFMutableDictionaryFromCopy((v1 + 80), v5);
    HALS_IOA2Control::SynchronizeWithDictionary(v1);
    CACFDictionary::~CACFDictionary(&v8);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZN16HALS_IOA2Control12PushNewValueEi_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(v2 + 56));
  v5 = v3;
  if (v3)
  {
    if (*(v2 + 96))
    {
      (*(*(v3 + 1976) + 16))(v3 + 1976);
      HALS_IOA2Control::SynchronizeWithRegistry(v2);
    }

    else
    {
      v6 = *(v2 + 72);
      v7 = *(a1 + 40);
      theArray = 0;
      HALB_UCObject::CopyProperty_CFArray((v3 + 1976), @"controls", &theArray);
      v8 = 0;
      v9 = theArray;
      v28 = theArray;
      v29 = 1;
      if (!theArray)
      {
        goto LABEL_6;
      }

LABEL_5:
      LODWORD(v9) = CFArrayGetCount(v9);
LABEL_6:
      while (v8 < v9)
      {
        theDict = 0;
        v27 = 0;
        CACFArray::GetCACFDictionary(&v28, v8, &theDict);
        if (theDict)
        {
          v25 = 0;
          UInt32 = CACFDictionary::GetUInt32(theDict, @"control ID", &v25);
          v11 = v25 == v6 ? UInt32 : 0;
          if (v11 == 1)
          {
            v24 = 0;
            CACFDictionary::GetUInt32(theDict, @"base class", &v24);
            v23 = 0;
            CACFDictionary::GetSInt32(theDict, @"value", &v23);
            if (v24 <= 1936483441)
            {
              if (v24 != 1818588780 && v24 != 1936483188)
              {
                goto LABEL_40;
              }
            }

            else if (v24 != 1936483442 && v24 != 1936744814)
            {
              if (v24 != 1953458028)
              {
                goto LABEL_40;
              }

              v12 = (v7 != 0) ^ (v23 == 0);
              if (!v12)
              {
                v7 = v7 != 0;
              }

              if (v12)
              {
                goto LABEL_40;
              }

LABEL_25:
              MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
              v22 = 257;
              valuePtr = v7;
              v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              theArray = v13;
              LOBYTE(v31) = 1;
              if (v13 && MutableCopy)
              {
                CFDictionarySetValue(MutableCopy, @"value", v13);
              }

              CACFNumber::~CACFNumber(&theArray);
              if (v28)
              {
                Count = CFArrayGetCount(v28);
                v15 = v28;
              }

              else
              {
                v15 = 0;
                Count = 0;
              }

              v16 = CFArrayCreateMutableCopy(0, Count, v15);
              theArray = v16;
              v31 = 257;
              if (v16)
              {
                v17 = CFArrayGetCount(v16);
                v18 = theArray;
                if (v8 <= v17)
                {
                  CFArraySetValueAtIndex(theArray, v8, MutableCopy);
                  v18 = theArray;
                }
              }

              else
              {
                v18 = 0;
              }

              if (*(v5 + 2001) == 1)
              {
                if (v18)
                {
                  v19 = *(v5 + 1992);
                  if (v19)
                  {
                    CFDictionarySetValue(v19, @"controls", v18);
                  }
                }
              }

              CACFArray::~CACFArray(&theArray);
              CACFDictionary::~CACFDictionary(&MutableCopy);
LABEL_40:
              CACFDictionary::~CACFDictionary(&theDict);
              break;
            }

            if (v23 != v7)
            {
              goto LABEL_25;
            }

            goto LABEL_40;
          }
        }

        CACFDictionary::~CACFDictionary(&theDict);
        ++v8;
        v9 = v28;
        if (v28)
        {
          goto LABEL_5;
        }
      }

      CACFArray::~CACFArray(&v28);
      v20 = HALS_IOA2UCDevice::CopyControlDictionaryByID((v5 + 1976), *(v2 + 72));
      theArray = v20;
      v31 = 1;
      if (v20)
      {
        CACFDictionary::SetCFMutableDictionaryFromCopy((v2 + 80), v20);
        HALS_IOA2Control::SynchronizeWithDictionary(v2);
      }

      CACFDictionary::~CACFDictionary(&theArray);
    }
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
}

void sub_1DE5D30F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  CACFNumber::~CACFNumber(va3);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(va1);
  CACFArray::~CACFArray(va2);
  HALS_ObjectMap::ReleaseObject(v2, v4);
  _Unwind_Resume(a1);
}

void AMCP::IOAudio1::Device::Device(uint64_t a1, uint64_t a2, unsigned int *a3, const __CFDictionary **a4)
{
  v68 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  if (*a4)
  {
    cf[0] = &stru_1F5992518;
    v7 = CFGetTypeID(&stru_1F5992518);
    if (v7 == CFStringGetTypeID())
    {
      applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>((a1 + 24), *a4, @"IOAudioEngineGlobalUniqueID", cf);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      *(a1 + 32) = 0;
      v8 = *(a1 + 24);
      if (v8)
      {
        applesauce::CF::convert_to<std::string,0>(__p, v8);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0].__r_.__value_.__r.__words[0];
        }

        caulk::make_string("%s Work Queue", cf, v9);
        if (SHIBYTE(cf[2]) >= 0)
        {
          v10 = cf;
        }

        else
        {
          v10 = cf[0];
        }

        v11 = dispatch_queue_create(v10, 0);
        AMCP::Utility::Dispatch_Queue::Dispatch_Queue(a1 + 40, v11);
        if (v11)
        {
          dispatch_release(v11);
        }

        if (SHIBYTE(cf[2]) < 0)
        {
          operator delete(cf[0]);
        }

        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v12 = *a3;
        *(a1 + 376) = v12;
        if (!v12 || (v12 = IOObjectRetain(v12), v13 = v12, !v12))
        {
          *(a1 + 384) = 0;
          *(a1 + 392) = 0;
          *(a1 + 400) = AMCP::Utility::Mach_Port::create_port(v12);
          *(a1 + 404) = 257;
          *(a1 + 408) = 850045863;
          *(a1 + 416) = 0u;
          *(a1 + 432) = 0u;
          *(a1 + 448) = 0u;
          *(a1 + 464) = 0u;
          *(a1 + 480) = *a4;
          *a4 = 0;
          std::string::basic_string[abi:ne200100]<0>(&v52, "IOAudioDevice");
          std::string::basic_string[abi:ne200100]<0>(&v57, "IOService");
          v66 = 0;
          v67 = 0;
          v65 = 0;
          v14 = *a3;
          LODWORD(v58) = v14;
          if (!v14 || (v15 = IOObjectRetain(v14), !v15))
          {
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v54, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
            }

            else
            {
              v54 = v57;
            }

            LODWORD(cf[0]) = v14;
            LODWORD(v58) = 0;
            *&cf[1] = *&v54.__r_.__value_.__l.__data_;
            *&v63 = *(&v54.__r_.__value_.__l + 2);
            memset(&v54, 0, sizeof(v54));
            object[0] = 0;
            if ((SBYTE7(v63) & 0x80u) == 0)
            {
              v16 = &cf[1];
            }

            else
            {
              v16 = cf[1];
            }

            v17 = MEMORY[0x1E12C09A0](v14, v16, object);
            if (!v17)
            {
              v18 = object[0];
              LODWORD(__p[0].__r_.__value_.__l.__data_) = object[0];
              LODWORD(buf.__r_.__value_.__l.__data_) = object[0];
              if (object[0])
              {
                v19 = IOObjectRetain(object[0]);
                if (v19)
                {
                  exception = __cxa_allocate_exception(0x20uLL);
                  v50 = std::system_category();
                  MEMORY[0x1E12C10C0](exception, v19, v50, "Error on Retain");
                  __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
                }

                iterator[0] = v18;
                v20 = IOObjectRetain(v18);
                if (v20)
                {
                  v21 = __cxa_allocate_exception(0x20uLL);
                  v22 = std::system_category();
                  MEMORY[0x1E12C10C0](v21, v20, v22, "Error on Retain");
                  __cxa_throw(v21, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
                }
              }

              else
              {
                iterator[0] = 0;
              }

              v23 = IOIteratorNext(v18);
              iterator[1] = v23;
              if (v18)
              {
                IOObjectRelease(v18);
                IOObjectRelease(v18);
                v23 = iterator[1];
              }

              __p[0].__r_.__value_.__r.__words[0] = 0;
              while (v23)
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = v23;
                v24 = IOObjectRetain(v23);
                if (v24)
                {
                  v35 = __cxa_allocate_exception(0x20uLL);
                  v36 = std::system_category();
                  MEMORY[0x1E12C10C0](v35, v24, v36, "Error on Retain");
                  __cxa_throw(v35, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
                }

                if (v53 >= 0)
                {
                  v25 = &v52;
                }

                else
                {
                  v25 = v52;
                }

                if (IOObjectConformsTo(v23, v25))
                {
                  std::vector<applesauce::iokit::io_object_holder>::push_back[abi:ne200100](&v65, &buf);
                }

                IOObjectRelease(v23);
                if (!iterator[1])
                {
                  v37 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v37, "io_services_iterator exceeding size");
                  v37->__vftable = (MEMORY[0x1E69E55B8] + 16);
                  __cxa_throw(v37, off_1E8672F68, MEMORY[0x1E69E5280]);
                }

                v23 = IOIteratorNext(iterator[0]);
                v26 = iterator[1];
                iterator[1] = v23;
                if (v26)
                {
                  IOObjectRelease(v26);
                  v23 = iterator[1];
                }
              }

              if (iterator[0])
              {
                IOObjectRelease(iterator[0]);
              }

              if (SBYTE7(v63) < 0)
              {
                operator delete(cf[1]);
              }

              if (LODWORD(cf[0]))
              {
                IOObjectRelease(cf[0]);
              }

              v27 = (a1 + 488);
              if (v65 == v66)
              {
                *v27 = 0;
              }

              else
              {
                v28 = *v65;
                *v27 = *v65;
                if (v28)
                {
                  v29 = IOObjectRetain(v28);
                  if (v29)
                  {
                    v30 = __cxa_allocate_exception(0x20uLL);
                    v31 = std::system_category();
                    MEMORY[0x1E12C10C0](v30, v29, v31, "Error on Retain");
                    __cxa_throw(v30, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
                  }
                }
              }

              cf[0] = &v65;
              std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](cf);
              if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v57.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v53) < 0)
              {
                operator delete(v52);
              }

              v32 = *(a1 + 488);
              if (v32)
              {
                applesauce::iokit::get_properties((a1 + 496), v32);
              }

              else
              {
                *(a1 + 496) = 0;
              }

              *(a1 + 552) = 0u;
              v33 = (a1 + 552);
              *(a1 + 584) = 0;
              *(a1 + 568) = 0u;
              *(a1 + 520) = 0u;
              *(a1 + 536) = 0u;
              *(a1 + 504) = 0u;
              std::string::basic_string[abi:ne200100]<0>(cf, "IOAudioStream");
              std::string::basic_string[abi:ne200100]<0>(__p, "IOService");
              buf.__r_.__value_.__r.__words[0] = cf;
              _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(&v57, *a3, __p, &buf.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf[2]) < 0)
              {
                operator delete(cf[0]);
              }

              AMCP::IOAudio1::Stream::create_from_service_list(cf, a1, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__vdeallocate((a1 + 504));
              *(a1 + 504) = *cf;
              *(a1 + 520) = cf[2];
              memset(cf, 0, sizeof(cf));
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__vdeallocate((a1 + 528));
              *(a1 + 528) = v63;
              *(a1 + 544) = v64;
              v64 = 0;
              v63 = 0uLL;
              __p[0].__r_.__value_.__r.__words[0] = &v63;
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
              __p[0].__r_.__value_.__r.__words[0] = cf;
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
              std::string::basic_string[abi:ne200100]<0>(cf, "IOAudioControl");
              std::string::basic_string[abi:ne200100]<0>(__p, "IOService");
              buf.__r_.__value_.__r.__words[0] = cf;
              _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(iterator, *a3, __p, &buf.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf[2]) < 0)
              {
                operator delete(cf[0]);
              }

              AMCP::IOAudio1::Control::create_from_service_list(cf, a1, *iterator, v56);
              if (*v33)
              {
                std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::clear[abi:ne200100]((a1 + 552));
                operator delete(*v33);
                *v33 = 0;
                *(a1 + 560) = 0;
                *(a1 + 568) = 0;
              }

              *v33 = *cf;
              *(a1 + 568) = cf[2];
              memset(cf, 0, sizeof(cf));
              __p[0].__r_.__value_.__r.__words[0] = cf;
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(cf, (*(*(*(a1 + 16) + 32) + 32) + 368));
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(__p, (*(*(*(a1 + 16) + 32) + 32) + 704));
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v60, cf);
              dispatch_set_target_queue(v60[0], __p[0].__r_.__value_.__l.__data_);
              AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v60);
              v34 = *a3;
              operator new();
            }

            v41 = __cxa_allocate_exception(0x18uLL);
            std::string::basic_string[abi:ne200100]<0>(&buf, "Could not find any parents for plane ");
            if ((SBYTE7(v63) & 0x80u) == 0)
            {
              v42 = &cf[1];
            }

            else
            {
              v42 = cf[1];
            }

            if ((SBYTE7(v63) & 0x80u) == 0)
            {
              v43 = BYTE7(v63);
            }

            else
            {
              v43 = cf[2];
            }

            v44 = std::string::append(&buf, v42, v43);
            __p[0] = *v44;
            v44->__r_.__value_.__l.__size_ = 0;
            v44->__r_.__value_.__r.__words[2] = 0;
            v44->__r_.__value_.__r.__words[0] = 0;
            applesauce::iokit::kern_return_exception::kern_return_exception(v41, &__p[0].__r_.__value_.__l.__data_, v17);
          }

          v47 = __cxa_allocate_exception(0x20uLL);
          v48 = std::system_category();
          MEMORY[0x1E12C10C0](v47, v15, v48, "Error on Retain");
          __cxa_throw(v47, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
        }

        v45 = __cxa_allocate_exception(0x20uLL);
        v46 = std::system_category();
        MEMORY[0x1E12C10C0](v45, v13, v46, "Error on Retain");
        __cxa_throw(v45, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v40, "Could not construct");
      __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
    __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v38 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v38, "Could not construct");
  __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE5D4EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *__p)
{
  __cxa_free_exception(v36);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &__p;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v42 = *(v35 + 584);
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  STACK[0x440] = v40;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v39;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v38;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v37);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v35 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v35 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v35 + 40));
  applesauce::CF::StringRef::~StringRef((v35 + 24));
  v43 = *(v35 + 8);
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  JUMPOUT(0x1DE5D5790);
}

void sub_1DE5D5008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, const void *a45)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}::~Address(&a45);
  JUMPOUT(0x1DE5D5180);
}

void sub_1DE5D5088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  JUMPOUT(0x1DE5D55B4);
}

void sub_1DE5D50C8()
{
  __cxa_free_exception(v0);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&STACK[0x440]);
  JUMPOUT(0x1DE5D5784);
}

void sub_1DE5D5134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  JUMPOUT(0x1DE5D55A4);
}

void sub_1DE5D5150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  applesauce::iokit::io_object_holder::~io_object_holder(&a47);
  applesauce::iokit::io_object_holder::~io_object_holder(&STACK[0x2F0]);
  JUMPOUT(0x1DE5D5624);
}

void sub_1DE5D5170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, char a40)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  std::optional<applesauce::CF::DictionaryRef>::~optional(&a40);
  JUMPOUT(0x1DE5D559CLL);
}

void sub_1DE5D518C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, _Unwind_Exception *exception_object, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v49 = *(v48 - 128);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  JUMPOUT(0x1DE5D559CLL);
}

void sub_1DE5D5204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  JUMPOUT(0x1DE5D55ACLL);
}

void sub_1DE5D5220()
{
  v1 = *(v0 - 128);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DE5D55B4);
}

void sub_1DE5D5290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int buf, int a48, int a49, __int16 a50, __int16 a51, __int16 a52, __int16 a53)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v53, 0x1000C4052888210);
    v57 = __cxa_begin_catch(a1);
    v58 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if (a2 == 2)
    {
      v59 = v57;
      if ((v58 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v57);
      }

      v61 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v60 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        v62 = *v61;
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      else
      {
        v62 = *v61;
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v66 = (*(*v59 + 16))(v59);
        buf = 136315650;
        *(v54 + 4) = "IOAudio1_Device.cpp";
        a50 = 1024;
        *(v54 + 14) = 129;
        a53 = 2080;
        *(v54 + 20) = v66;
        _os_log_error_impl(&dword_1DE1F9000, v62, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to the driver's engine: %s", &buf, 0x1Cu);
      }

      __cxa_rethrow();
    }

    if ((v58 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v57);
    }

    v64 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v63 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v63)
    {
      atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      v65 = *v64;
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    else
    {
      v65 = *v64;
    }

    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      *(v54 + 4) = "IOAudio1_Device.cpp";
      a50 = 1024;
      *(v54 + 14) = 134;
      _os_log_error_impl(&dword_1DE1F9000, v65, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to the driver's engine", &buf, 0x12u);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE5D5450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  __cxa_end_catch();
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v40 = *(v35 + 584);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  STACK[0x440] = v39;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v38;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v37;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v36);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v35 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v35 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v35 + 40));
  applesauce::CF::StringRef::~StringRef((v35 + 24));
  v41 = *(v35 + 8);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  JUMPOUT(0x1DE5D5790);
}

void sub_1DE5D5474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a57);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v62 = *(v57 + 584);
  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
  }

  STACK[0x440] = v61;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v60;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v59;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v57 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v57 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v58);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v57 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v57 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v57 + 40));
  applesauce::CF::StringRef::~StringRef((v57 + 24));
  v63 = *(v57 + 8);
  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

  JUMPOUT(0x1DE5D5790);
}

void sub_1DE5D5484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](&a47);
  if (v53)
  {
    dispatch_release(v53);
  }

  MEMORY[0x1E12C1730](v52, 0x1020C40DCC910D7);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v54 = *(v47 + 584);
  if (v54)
  {
    std::__shared_weak_count::__release_weak(v54);
  }

  STACK[0x440] = v51;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v50;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v49;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v47 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v47 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v48);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v47 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v47 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v47 + 40));
  applesauce::CF::StringRef::~StringRef((v47 + 24));
  v55 = *(v47 + 8);
  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  JUMPOUT(0x1DE5D5790);
}

void sub_1DE5D54C4()
{
  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  JUMPOUT(0x1DE5D56F4);
}

void sub_1DE5D5500()
{
  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  JUMPOUT(0x1DE5D5704);
}

void sub_1DE5D5558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  AMCP::IOKit::Service_Parent_Range_For::~Service_Parent_Range_For(&STACK[0x440]);
  STACK[0x2F0] = v43 - 136;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F0]);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1DE5D5744);
}

void sub_1DE5D5598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, const void *a42)
{
  std::optional<applesauce::CF::NumberRef>::~optional(&a15);
  std::optional<applesauce::CF::StringRef>::~optional(&a19);
  applesauce::CF::URLRef::~URLRef(&a42);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a23);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v48 = *(v42 + 584);
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  STACK[0x440] = v46;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v45;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v44;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v42 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v42 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v43);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v42 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v42 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v42 + 40));
  applesauce::CF::StringRef::~StringRef((v42 + 24));
  v49 = *(v42 + 8);
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  _Unwind_Resume(a1);
}

void sub_1DE5D55EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE5D5600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  applesauce::iokit::details::io_services_iterator::~io_services_iterator(&STACK[0x2F0]);
  applesauce::iokit::details::io_services_iterator::~io_services_iterator(&a32);
  JUMPOUT(0x1DE5D5624);
}

void sub_1DE5D5660(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(&a47);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error((v54 - 136));
  if (v48)
  {
    __cxa_free_exception(v53);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a40);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v55 = *(v47 + 584);
  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  STACK[0x440] = v52;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v51;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v50;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v47 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v47 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v49);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v47 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v47 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v47 + 40));
  applesauce::CF::StringRef::~StringRef((v47 + 24));
  v56 = *(v47 + 8);
  if (v56)
  {
    std::__shared_weak_count::__release_weak(v56);
  }

  JUMPOUT(0x1DE5D5790);
}

void applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&cf, a2, a3);
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

void std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 4;
        std::__destroy_at[abi:ne200100]<applesauce::iokit::io_object_holder,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(uint64_t a1, uint64_t object, uint64_t a3, const char **a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v39 = object;
  if (object)
  {
    v8 = IOObjectRetain(object);
    if (v8)
    {
      v30 = v8;
      exception = __cxa_allocate_exception(0x20uLL);
      v32 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v30, v32, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *a3, *(a3 + 8));
  }

  else
  {
    v38 = *a3;
  }

  v39 = 0;
  v40 = object;
  __p = v38;
  memset(&v38, 0, sizeof(v38));
  v44 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v10 = MEMORY[0x1E12C0980](object, p_p, &v44);
  if (v10)
  {
    v25 = v10;
    v26 = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v42, "Could not find any parents for plane ");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v42, v27, size);
    v43 = *v29;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    applesauce::iokit::kern_return_exception::kern_return_exception(v26, &v43.__r_.__value_.__l.__data_, v25);
  }

  v11 = v44;
  LODWORD(v43.__r_.__value_.__l.__data_) = v44;
  LODWORD(v42.__r_.__value_.__l.__data_) = v44;
  if (v44)
  {
    v12 = IOObjectRetain(v44);
    if (v12)
    {
      v33 = v12;
      v34 = __cxa_allocate_exception(0x20uLL);
      v35 = std::system_category();
      MEMORY[0x1E12C10C0](v34, v33, v35, "Error on Retain");
      __cxa_throw(v34, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    iterator = v11;
    v13 = IOObjectRetain(v11);
    if (v13)
    {
      v14 = v13;
      v15 = __cxa_allocate_exception(0x20uLL);
      v16 = std::system_category();
      MEMORY[0x1E12C10C0](v15, v14, v16, "Error on Retain");
      __cxa_throw(v15, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  else
  {
    iterator = 0;
  }

  v17 = IOIteratorNext(v11);
  objecta = v17;
  if (v11)
  {
    IOObjectRelease(v11);
    IOObjectRelease(v11);
  }

  v43.__r_.__value_.__r.__words[0] = 0;
  while (v17)
  {
    LODWORD(v42.__r_.__value_.__l.__data_) = v17;
    v18 = IOObjectRetain(v17);
    if (v18)
    {
      v22 = __cxa_allocate_exception(0x20uLL);
      v23 = std::system_category();
      MEMORY[0x1E12C10C0](v22, v18, v23, "Error on Retain");
      __cxa_throw(v22, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v19 = *a4;
    if ((*a4)[23] < 0)
    {
      v19 = *v19;
    }

    if (IOObjectConformsTo(v17, v19))
    {
      std::vector<applesauce::iokit::io_object_holder>::push_back[abi:ne200100](a1, &v42);
    }

    IOObjectRelease(v17);
    if (!objecta)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v24, "io_services_iterator exceeding size");
      v24->__vftable = (MEMORY[0x1E69E55B8] + 16);
      __cxa_throw(v24, off_1E8672F68, MEMORY[0x1E69E5280]);
    }

    v17 = IOIteratorNext(iterator);
    v20 = objecta;
    objecta = v17;
    IOObjectRelease(v20);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = v40;
  if (v40)
  {
    return IOObjectRelease(v40);
  }

  return result;
}

void sub_1DE5D5C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, __int16 a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a27 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_8:
      AMCP::IOKit::Service_Child_Range_For::~Service_Child_Range_For(&a18);
      *(v30 - 64) = v27;
      std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100]((v30 - 64));
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v28);
  goto LABEL_8;
}

void std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void AMCP::IOAudio1::Device::get_resource_bundle_url(AMCP::IOAudio1::Device *this, uint64_t a2)
{
  v3 = *(a2 + 480);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_20;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&v18, v3, @"IOAudioDeviceLocalizedBundle");
  v5 = v19;
  if (v19)
  {
    goto LABEL_8;
  }

  v6 = *(a2 + 496);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_20:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&cf, v6, @"IOAudioDeviceLocalizedBundle");
  std::__optional_storage_base<applesauce::CF::StringRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::StringRef,false>>(&v18, &cf);
  if (v17 == 1 && cf)
  {
    CFRelease(cf);
  }

  v5 = v19;
  if ((v19 & 1) == 0)
  {
    *this = 0;
    return;
  }

LABEL_8:
  v7 = v18;
  v8 = CFStringCreateWithFormat(0, 0, @"/System/Library/Extensions/%@", v18);
  v9 = v8;
  cf = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 != CFStringGetTypeID())
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
      __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v11 = CFURLCreateWithFileSystemPath(0, v9, kCFURLPOSIXPathStyle, 1u);
  *this = v11;
  if (v11)
  {
    v12 = CFGetTypeID(v11);
    if (v12 != CFURLGetTypeID())
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not construct");
      __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7 != 0 && (v5 & 1) != 0)
  {
    CFRelease(v7);
  }
}

void sub_1DE5D6020(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v11);
  __clang_call_terminate(a1);
}

void std::__optional_storage_base<applesauce::CF::StringRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::StringRef,false>>(uint64_t a1, uint64_t a2)
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

void std::__optional_storage_base<applesauce::CF::NumberRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::NumberRef,false>>(uint64_t a1, uint64_t a2)
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

void AMCP::IOAudio1::Device::update_core_common(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 480);
  if (v1)
  {
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&v11, v1, @"IOAudioEngineDescription");
    if ((v12 & 1) == 0)
    {
      v3 = *(a1 + 496);
      if (!v3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(cf, v3, @"IOAudioDeviceName");
      std::__optional_storage_base<applesauce::CF::StringRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::StringRef,false>>(&v11, cf);
      if (cf[8] == 1)
      {
        v4 = *cf;
        if (*cf)
        {
          CFRelease(*cf);
        }
      }

      if ((v12 & 1) == 0)
      {
        v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v5 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *cf = 136315650;
          *&cf[4] = "IOAudio1_Device.cpp";
          v14 = 1024;
          v15 = 170;
          v16 = 2080;
          v17 = "device_name_opt.operator BOOL() == true";
          _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Devices have to have a name", cf, 0x1Cu);
        }

        abort();
      }
    }

    v18 = 0x676C6F626C6E616DLL;
    LODWORD(v19) = 0;
    AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(cf, &v18, v11);
  }

  v9 = __cxa_allocate_exception(0x10uLL);
  applesauce::CF::construct_error(v9);
  __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE5D867C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  if (a2)
  {
    __cxa_free_exception(v59);
    applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a59);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device10build_coreEvE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!*(v2 + 376))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = CFStringCreateWithBytes(0, "IOAudioEngineClientDescription", 30, 0x8000100u, 0);
  cf = v4;
  if (!v4)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = *a2;
  if (v5)
  {
    CFRetain(v5);
    v6 = cf;
  }

  else
  {
    v6 = v4;
  }

  v9 = v5;
  applesauce::iokit::io_object_proxy::set_properties(*(v2 + 376), v6, &v9);
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE5D8FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980D20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device10build_coreEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  *a2 = 0;
  v4 = *(v3 + 376);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFProperty = IORegistryEntryCreateCFProperty(v4, @"IOAudioEngineClientDescription", 0, 0);
  v6 = CFProperty;
  if (CFProperty)
  {
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = CFGetTypeID(v6);
      if (v8 != CFDictionaryGetTypeID())
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v10, "Could not construct");
        __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *a2 = v6;
    }

    else
    {
      CFRelease(v6);
    }
  }
}

void sub_1DE5D91F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a9);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef(v10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980C30;
  a2[1] = v2;
  return result;
}

const void **AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}::~Address(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN10applesauce2CF13DictionaryRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::operator()@<X0>(CFTypeRef result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  *a2 = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::__clone(CFTypeRef result, void *a2)
{
  *a2 = &unk_1F5980B20;
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  a2[1] = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980B20;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980B20;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1DE5D972C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v11);
  std::optional<applesauce::CF::NumberRef>::~optional(&a9);
  std::optional<applesauce::CF::BooleanRef>::~optional(&a11);
  _Unwind_Resume(a1);
}

const void *AMCP::IOAudio1::Device_Sub_Object::get_registry_entries(AMCP::IOAudio1::Device_Sub_Object *this, io_registry_entry_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::iokit::get_properties(this, a2);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device18update_core_commonERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::operator()(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v1, (*(*(a1 + 16) + 32) + 704));
  operator new();
}

void sub_1DE5D9C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v27);
  std::__shared_weak_count::~__shared_weak_count(v26);
  operator delete(v29);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a24);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IOAudio1::Engine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5980728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::$_2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = IOConnectAddRef(v5);
  if (v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v13 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v6, v13, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v7 = *(a2 + 32);
  if (v7)
  {
    CFRetain(*(a2 + 32));
  }

  *(a1 + 32) = v7;
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  v10 = *(a2 + 68);
  *(a1 + 88) = 0;
  *(a1 + 68) = v10;
  *(a1 + 40) = v8;
  *(a1 + 56) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(a1 + 88, *(a2 + 88), *(a2 + 96), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(a1 + 112, *(a2 + 112), *(a2 + 120), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 120) - *(a2 + 112)) >> 3));
  return a1;
}

void sub_1DE5DA080(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59806B8;
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59806B8;
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(double const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device18update_core_commonERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(double const&)>::operator()(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(*(*(v3 + 16) + 32) + 16);
  v17 = &unk_1F5980378;
  v18 = v3;
  v20 = &v17;
  AMCP::Core::Broker::fetch_first_core_if (&v11, v4, &v17);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](&v17);
  v5 = v11;
  if (v11)
  {
    AMCP::Core::Core::get_simple_required_property<1718444404u>(&v10, v11);
    if (*&v10 != *a2)
    {
      *&v10 = *a2;
      v15 = 0x676C6F62666D6174;
      v16 = 0;
      if (AMCP::Core::Core::is_property_settable(v5, &v15))
      {
        AMCP::Core::Core::find_operation(&v13, v5, &v15);
        v6 = v13;
        if (v13)
        {
          v7 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
          if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7))
          {
            AMCP::Core::Operation::call_function<void,CA::StreamDescription const&>(v6, &v10);
          }

          else
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v9))
            {
              v18 = 0;
              v19 = 0;
              v20 = 0;
              v21 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
              operator new();
            }
          }
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE5DA484(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE5DA49C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a2)
  {
    AMCP::Thing::~Thing((v18 - 64));
    if (a18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE5DA3C8);
  }

  JUMPOUT(0x1DE5DA48CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio16Device18update_core_commonERNS2_4Core13Operation_SetEENK3__0clERKdEUlRKT_E_NS_9allocatorISE_EEFbRKNS_10shared_ptrINS5_4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP8IOAudio16Device18update_core_commonERNS_4Core13Operation_SetEENK3$_0clERKdEUlRKT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZZN4AMCP8IOAudio16Device18update_core_commonERNS2_4Core13Operation_SetEENK3__0clERKdEUlRKT_E_NS_9allocatorISE_EEFbRKNS_10shared_ptrINS5_4CoreEEEEEclESL_(uint64_t a1, AMCP::Core::Core **a2)
{
  v3 = *(a1 + 8);
  simple_required = AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2);
  v5 = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  return *(v3 + 32) == simple_required && v5 == 1634956402;
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio16Device18update_core_commonERNS2_4Core13Operation_SetEENK3__0clERKdEUlRKT_E_NS_9allocatorISE_EEFbRKNS_10shared_ptrINS5_4CoreEEEEE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980378;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59802F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device18update_core_commonERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,double ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980178;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device10build_coreEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(*(v3[2] + 4) + 16);
  v13 = &unk_1F5980860;
  v14 = v3;
  v15 = &v13;
  AMCP::Core::Broker::fetch_first_core_if (&v10, v4, &v13);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](&v13);
  AMCP::Core::Core::get_simple_required_property<1718449187u>(&v13, v10);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = v13;
  v6 = v14;
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = v5[1];
    while (v7 != v8)
    {
      CA::ValueRangeList::AddRange(a2, v7);
      v7 += 2;
    }

    v5 += 8;
  }

  v12 = &v13;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE5DA904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, char a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  a11 = &a12;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio16Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP8IOAudio16Device10build_coreEvENK3$_0clEvEUlRKT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZZN4AMCP8IOAudio16Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEEclESH_(uint64_t a1, AMCP::Core::Core **a2)
{
  v3 = *(a1 + 8);
  simple_required = AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2);
  v5 = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  return *(v3 + 32) == simple_required && v5 == 1634956402;
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio16Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980860;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59807E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16DeviceC1ERNS0_6DriverERKN10applesauce5iokit16io_object_holderENS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  v2 = AMCP::Utility::Mach_Port::receive_message(*(v1 + 100), 0x30u, &v93, 1);
  v3 = v2;
  AMCP::Utility::Kernel_Error_Category::get(v2);
  if (v3)
  {
    goto LABEL_2;
  }

  if (SDWORD2(v94) > 3)
  {
    switch(DWORD2(v94))
    {
      case 4:
        v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v26 & 1) == 0)
        {
          v4 = AMCP::Log::AMCP_Scope_Registry::initialize(v4);
        }

        v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = *(v27 + 16);
        if (v28 != 3)
        {
          if (v28 != 2)
          {
            if (v28 != 1)
            {
              goto LABEL_174;
            }

            v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v29 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v4);
            }

            v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v30)
            {
              atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
              v19 = *v31;
              std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            }

            else
            {
              v19 = *v31;
            }

            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_174;
            }

            v70 = v1[3];
            if (v70)
            {
              applesauce::CF::convert_to<std::string,0>(__p, v70);
              if (v97 >= 0)
              {
                v71 = __p;
              }

              else
              {
                v71 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "IOAudio1_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 721;
              *&buf[18] = 2080;
              *&buf[20] = v71;
              v69 = "%32s:%-5d 'Stopped' notification for device '%s'";
              goto LABEL_170;
            }

            goto LABEL_176;
          }

          v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v38 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v4);
          }

          v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            v41 = *v40;
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          else
          {
            v41 = *v40;
          }

          if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_174;
          }

          v64 = applesauce::CF::StringRef::operator->(v1 + 3);
          applesauce::CF::convert_to<std::string,0>(__p, *v64);
          if (v97 >= 0)
          {
            v65 = __p;
          }

          else
          {
            v65 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 721;
          *&buf[18] = 2080;
          *&buf[20] = v65;
          v66 = "%32s:%-5d 'Stopped' notification for device '%s'";
          goto LABEL_126;
        }

        v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v42 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
        }

        v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          v45 = *v44;
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        else
        {
          v45 = *v44;
        }

        if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          goto LABEL_174;
        }

        v67 = v1[3];
        if (!v67)
        {
          goto LABEL_176;
        }

        applesauce::CF::convert_to<std::string,0>(__p, v67);
        if (v97 >= 0)
        {
          v68 = __p;
        }

        else
        {
          v68 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "IOAudio1_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 721;
        *&buf[18] = 2080;
        *&buf[20] = v68;
        v69 = "%32s:%-5d 'Stopped' notification for device '%s'";
        break;
      case 5:
        v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v32 & 1) == 0)
        {
          v4 = AMCP::Log::AMCP_Scope_Registry::initialize(v4);
        }

        v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = *(v33 + 16);
        if (v34 != 3)
        {
          if (v34 != 2)
          {
            if (v34 != 1)
            {
              goto LABEL_174;
            }

            v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v35 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v4);
            }

            v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              v19 = *v37;
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }

            else
            {
              v19 = *v37;
            }

            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_174;
            }

            v90 = v1[3];
            if (v90)
            {
              applesauce::CF::convert_to<std::string,0>(__p, v90);
              if (v97 >= 0)
              {
                v91 = __p;
              }

              else
              {
                v91 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "IOAudio1_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 725;
              *&buf[18] = 2080;
              *&buf[20] = v91;
              v69 = "%32s:%-5d 'Paused' notification for device '%s'";
              goto LABEL_170;
            }

            goto LABEL_176;
          }

          v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v52 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v4);
          }

          v54 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v53)
          {
            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            v41 = *v54;
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }

          else
          {
            v41 = *v54;
          }

          if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_174;
          }

          v76 = applesauce::CF::StringRef::operator->(v1 + 3);
          applesauce::CF::convert_to<std::string,0>(__p, *v76);
          if (v97 >= 0)
          {
            v77 = __p;
          }

          else
          {
            v77 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 725;
          *&buf[18] = 2080;
          *&buf[20] = v77;
          v66 = "%32s:%-5d 'Paused' notification for device '%s'";
          goto LABEL_126;
        }

        v61 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v61 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
        }

        v63 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v62 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
          v45 = *v63;
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        else
        {
          v45 = *v63;
        }

        if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          goto LABEL_174;
        }

        v84 = v1[3];
        if (!v84)
        {
          goto LABEL_176;
        }

        applesauce::CF::convert_to<std::string,0>(__p, v84);
        if (v97 >= 0)
        {
          v85 = __p;
        }

        else
        {
          v85 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "IOAudio1_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 725;
        *&buf[18] = 2080;
        *&buf[20] = v85;
        v69 = "%32s:%-5d 'Paused' notification for device '%s'";
        break;
      case 6:
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          v4 = AMCP::Log::AMCP_Scope_Registry::initialize(v4);
        }

        v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *(v13 + 16);
        if (v15 != 3)
        {
          if (v15 != 2)
          {
            if (v15 != 1)
            {
              goto LABEL_174;
            }

            v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v16 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v4);
            }

            v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
              v19 = *v18;
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            else
            {
              v19 = *v18;
            }

            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_174;
            }

            v88 = v1[3];
            if (v88)
            {
              applesauce::CF::convert_to<std::string,0>(__p, v88);
              if (v97 >= 0)
              {
                v89 = __p;
              }

              else
              {
                v89 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "IOAudio1_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 729;
              *&buf[18] = 2080;
              *&buf[20] = v89;
              v69 = "%32s:%-5d 'Resumed' notification for device '%s'";
              goto LABEL_170;
            }

LABEL_176:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v49 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v49 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v4);
          }

          v51 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v50 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
            v41 = *v51;
            std::__shared_weak_count::__release_shared[abi:ne200100](v50);
          }

          else
          {
            v41 = *v51;
          }

          if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_174;
          }

          v74 = applesauce::CF::StringRef::operator->(v1 + 3);
          applesauce::CF::convert_to<std::string,0>(__p, *v74);
          if (v97 >= 0)
          {
            v75 = __p;
          }

          else
          {
            v75 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 729;
          *&buf[18] = 2080;
          *&buf[20] = v75;
          v66 = "%32s:%-5d 'Resumed' notification for device '%s'";
LABEL_126:
          _os_log_debug_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_DEBUG, v66, buf, 0x1Cu);
          goto LABEL_172;
        }

        v58 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v58 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
        }

        v60 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v59 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          v45 = *v60;
          std::__shared_weak_count::__release_shared[abi:ne200100](v59);
        }

        else
        {
          v45 = *v60;
        }

        if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          goto LABEL_174;
        }

        v82 = v1[3];
        if (!v82)
        {
          goto LABEL_176;
        }

        applesauce::CF::convert_to<std::string,0>(__p, v82);
        if (v97 >= 0)
        {
          v83 = __p;
        }

        else
        {
          v83 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "IOAudio1_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 729;
        *&buf[18] = 2080;
        *&buf[20] = v83;
        v69 = "%32s:%-5d 'Resumed' notification for device '%s'";
        break;
      default:
        goto LABEL_2;
    }
  }

  else
  {
    if ((DWORD2(v94) - 1) < 2)
    {
      v6 = v1[1];
      v7 = v1[2];
      v8 = *(*(v7 + 32) + 32);
      v9 = *(v7 + 48);
      v10 = *(v1 + 8);
      v11 = *v1;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
      }

      *buf = &unk_1F5980E30;
      *&buf[8] = v11;
      *&buf[16] = v6;
      *&buf[24] = buf;
      AMCP::Core::Conductor::enqueue_config_change(v8, v9, v10, 1);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](buf);
      goto LABEL_2;
    }

    if (DWORD2(v94) != 3)
    {
      goto LABEL_2;
    }

    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      v4 = AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(v21 + 16);
    if (v22 != 3)
    {
      if (v22 != 2)
      {
        if (v22 != 1)
        {
          goto LABEL_174;
        }

        v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v23 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
        }

        v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *v25;
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        else
        {
          v19 = *v25;
        }

        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_174;
        }

        v80 = v1[3];
        if (v80)
        {
          applesauce::CF::convert_to<std::string,0>(__p, v80);
          if (v97 >= 0)
          {
            v81 = __p;
          }

          else
          {
            v81 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 717;
          *&buf[18] = 2080;
          *&buf[20] = v81;
          v69 = "%32s:%-5d 'Started' notification for device '%s'";
LABEL_170:
          v86 = v19;
          v87 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_171;
        }

        goto LABEL_176;
      }

      v46 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v46 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v4);
      }

      v48 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        v41 = *v48;
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      else
      {
        v41 = *v48;
      }

      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_174;
      }

      v72 = applesauce::CF::StringRef::operator->(v1 + 3);
      applesauce::CF::convert_to<std::string,0>(__p, *v72);
      if (v97 >= 0)
      {
        v73 = __p;
      }

      else
      {
        v73 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "IOAudio1_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 717;
      *&buf[18] = 2080;
      *&buf[20] = v73;
      v66 = "%32s:%-5d 'Started' notification for device '%s'";
      goto LABEL_126;
    }

    v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v55 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v57 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v56 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      v45 = *v57;
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    else
    {
      v45 = *v57;
    }

    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      goto LABEL_174;
    }

    v78 = v1[3];
    if (!v78)
    {
      goto LABEL_176;
    }

    applesauce::CF::convert_to<std::string,0>(__p, v78);
    if (v97 >= 0)
    {
      v79 = __p;
    }

    else
    {
      v79 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "IOAudio1_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 717;
    *&buf[18] = 2080;
    *&buf[20] = v79;
    v69 = "%32s:%-5d 'Started' notification for device '%s'";
  }

  v86 = v45;
  v87 = OS_LOG_TYPE_INFO;
LABEL_171:
  _os_log_impl(&dword_1DE1F9000, v86, v87, v69, buf, 0x1Cu);
LABEL_172:
  if (v97 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_174:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_2:
  v5 = *MEMORY[0x1E69E9840];
}