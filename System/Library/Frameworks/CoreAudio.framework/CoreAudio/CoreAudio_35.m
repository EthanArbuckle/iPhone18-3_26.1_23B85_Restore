void ___ZN11HALS_System12RemoveClientEi_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = HALS_System::CopyClientByProcessID(v2, *(a1 + 40));
  if (v4)
  {
    v5 = v2[208];
    v6 = v2[209];
    v7 = v6 - v5;
    if (v6 != v5)
    {
      if (!((v7 >> 3) >> 61))
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v7 >> 3);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  v9 = HALS_System::CopyClientByProcessID(v2, *(a1 + 40));
  if (v9)
  {
    v10 = v2[214];
    v11 = v2[213];
    if (v10 != v11)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        block = (v11 + 8 * v12);
        if (**(*block + 9) == *(v9 + 4))
        {
          remove_context_helper(*(*block + 4), (v2 + 213), &block);
          v10 = v2[214];
          v11 = v2[213];
        }

        else
        {
          ++v13;
        }

        v12 = v13;
      }

      while (v13 < ((v10 - v11) >> 3));
    }
  }

  HALS_ObjectMap::ReleaseObject(v9, v8);
  v15 = *(a1 + 40);
  v16 = v2[205];
  v17 = v2[206];
  while (v16 != v17)
  {
    v18 = *v16++;
    v19 = *(v18 + 240);
    if (v19 == v15)
    {
      v20 = &v16[(v19 != v15) - 1];
      if (v20 != v17)
      {
        HALS_ObjectMap::RetainObject(*v20, v14);
        operator new();
      }

      return;
    }
  }
}

void sub_1DE4969CC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK11HALS_System27_TellDevicesAboutDeadClientEP11HALS_Client_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    v6 = HALS_ObjectMap::CopyObjectByObjectID(*v4);
    v8 = v6;
    if (v6)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        (*(*v6 + 264))(v6);
      }
    }

    HALS_ObjectMap::ReleaseObject(v8, v7);
    ++v4;
  }

  v9 = *(a1 + 48);

  HALS_ObjectMap::ReleaseObject(v9, a2);
}

uint64_t HALS_System::CopyClientByProcessID(HALS_System *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_System21CopyClientByProcessIDEi_block_invoke;
  v5[3] = &unk_1E8675AF0;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void remove_context_helper(int a1, HALS_Object *a2, HALS_ObjectMap ***a3)
{
  HALS_ObjectMap::RetainObject(**a3, a2);
  v6 = *a3;
  v7 = *a3 + 1;
  v8 = *(a2 + 1);
  if (v7 != v8)
  {
    v9 = *v6;
    do
    {
      *(v7 - 1) = *v7;
      *v7++ = v9;
    }

    while (v7 != v8);
    v6 = v7 - 1;
  }

  std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](a2, v6);
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  v10 = HALS_ObjectMap::sNormalPriorityQueue;
  v11 = atomic_load((HALS_ObjectMap::sNormalPriorityQueue + 32));
  if (v11)
  {
    atomic_store(1u, (HALS_ObjectMap::sNormalPriorityQueue + 33));
  }

  if (*(v10 + 328) != 1)
  {
    v14 = *v10;
    operator new();
  }

  v12 = *(v10 + 320);
  v13 = *v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZL21remove_context_helperjRNSt3__16vectorI13HALS_ReleaserI14HALS_IOContextENS3_9allocatorIS7_EEEERKNS3_11__wrap_iterIPS7_EEE3__0EEvOT__block_invoke;
  block[3] = &__block_descriptor_tmp_251;
  v16 = a1;
  dispatch_group_async(v12, v13, block);
}

void std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, HALS_Object *a2)
{
  for (i = *(a1 + 8); i != a2; i = (i - 8))
  {
    v5 = *(i - 1);
    HALS_ObjectMap::ReleaseObject(v5, a2);
  }

  *(a1 + 8) = a2;
}

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZL21remove_context_helperjRNSt3__16vectorI13HALS_ReleaserI14HALS_IOContextENS3_9allocatorIS7_EEEERKNS3_11__wrap_iterIPS7_EEE3__0EEvOT__block_invoke(uint64_t a1)
{
  v1 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
  v2 = v1;
  if (v1)
  {
    (*(*v1 + 8))(v1);
    HALS_ObjectMap::ReleaseObject(v2, v3);
    HALS_ObjectMap::ObjectIsDead(v2, v4);
  }
}

void sub_1DE496DD4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void applesauce::dispatch::v1::async<remove_context_helper(unsigned int,std::vector<HALS_Releaser<HALS_IOContext>> &,std::__wrap_iter<HALS_Releaser<HALS_IOContext>*> const&)::$_0 &>(dispatch_queue_s *,remove_context_helper(unsigned int,std::vector<HALS_Releaser<HALS_IOContext>> &,std::__wrap_iter<HALS_Releaser<HALS_IOContext>*> const&)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1)
{
  v1 = HALS_ObjectMap::CopyObjectByObjectID(*a1);
  v2 = v1;
  if (v1)
  {
    (*(*v1 + 8))(v1);
    HALS_ObjectMap::ReleaseObject(v2, v3);
    HALS_ObjectMap::ObjectIsDead(v2, v4);
  }

  JUMPOUT(0x1E12C1730);
}

void sub_1DE496E80(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE496E50);
}

void ___ZNK11HALS_System21CopyClientByProcessIDEi_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 1640);
  v5 = *(v3 + 1648);
  if (v4 == v5)
  {
LABEL_4:
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 60) == *(a1 + 48))
      {
        break;
      }

      if (++v4 == v5)
      {
        goto LABEL_4;
      }
    }

    HALS_ObjectMap::RetainObject(*v4, a2);
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
}

void HALS_System::~HALS_System(HALS_System *this)
{
  HALS_System::~HALS_System(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5972410;
  g_static_start_options = 0;
  v2 = *(this + 277);
  if (v2)
  {
    *(this + 278) = v2;
    operator delete(v2);
  }

  HALB_Guard::~HALB_Guard((this + 1928));
  v3 = *(this + 239);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 237);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 234);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 230);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 228);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 225);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 223);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 221);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 219);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v23 = (this + 1704);
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v12 = *(this + 212);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 208);
  if (v13)
  {
    *(this + 209) = v13;
    operator delete(v13);
  }

  v23 = (this + 1640);
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v15 = *(this + 203);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 201);
  *(this + 201) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(this + 198, v14);
  CACFDictionary::~CACFDictionary((this + 1568));
  std::unique_ptr<HALB_AsyncLog>::~unique_ptr[abi:ne200100](this + 194);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 1216));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 880));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 544));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 208));
  v17 = *(this + 25);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(this + 23);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(this + 21);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *(this + 19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(this + 17);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *(this + 15);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  std::mutex::~mutex((this + 48));

  HALS_Object::~HALS_Object(this);
}

void std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *std::unique_ptr<HALB_AsyncLog>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    atomic_store(0, (v2 + 32));
    ca::concurrent::details::service_thread::drain(*v2);
    for (i = OSAtomicDequeue((v2 + 16), 0x150uLL); i; i = OSAtomicDequeue((v2 + 16), 0x150uLL))
    {
      (*(*i + 8))(i);
    }

    ca::concurrent::messenger::~messenger(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

void HALS_System::Activate(HALS_System *this, HALS_Object *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  HALS_Object::Activate(this, a2);
  if (g_static_start_options)
  {
    CreateAndInsert<HALS_MetaManager>();
  }

  operator new();
}

void sub_1DE49995C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, __int128 __p, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::UpdateCaptureFilesEnabled(HALS_SettingsManager **this)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
  if ((*(*platform_behaviors + 48))(platform_behaviors))
  {
    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E478], "DSPCaptureEnabled", 0x8000100u);
    cf = v3;
    if (v3)
    {
      v4 = CFGetTypeID(v3);
      if (v4 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v5 = cf;
    }

    else
    {
      v5 = 0;
    }

    *(this + 1849) = HALS_SettingsManager::ReadServerBooleanSetting(this[222], v5, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "com.apple.coreaudio");
    cf = &unk_1F5986A10;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v10;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "DSPCaptureEnabled");
    v6 = HALS_EmbeddedSettingsLite::read_BOOL(&cf, __p);
    *(this + 1849) = (v6 > 0xFFu) & v6;
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DE49A280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE49B34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, const void *a38)
{
  __cxa_free_exception(v42);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a38);
  applesauce::CF::TypeRef::~TypeRef((v43 - 96));
  applesauce::CF::DataRef::~DataRef((v43 - 88));
  if (__p)
  {
    operator delete(__p);
  }

  fclose(v41);
  applesauce::CF::DictionaryRef::~DictionaryRef((v38 + 136));
  if (*(v38 + 127) < 0)
  {
    operator delete(*v40);
  }

  std::mutex::~mutex(v39);
  v45 = *(v38 + 32);
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  std::__shared_weak_count::~__shared_weak_count(v38);
  operator delete(v46);
  _Unwind_Resume(a1);
}

void sub_1DE49B914(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<AHAL_DSP::HostingLibrary>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    (*(*result + 8))(result);
    result = *(a1 + 24);
    *(a1 + 24) = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void std::__shared_ptr_emplace<AHAL_DSP::HostingLibrary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Utility::Settings_Storage>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 148) != 2)
  {
    std::mutex::lock((a1 + 40));
    Data = CFPropertyListCreateData(0, *(a1 + 136), kCFPropertyListXMLFormat_v1_0, 0, 0);
    v3 = Data;
    if (Data)
    {
      v4 = CFGetTypeID(Data);
      if (v4 != CFDataGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v5 = (a1 + 104);
      if (*(a1 + 127) < 0)
      {
        v5 = *v5;
      }

      v6 = fopen(v5, "w+");
      v7 = v6;
      if (v6)
      {
        if (*(a1 + 128))
        {
          v8 = fileno(v6);
          fchmod(v8, *(a1 + 128));
        }

        BytePtr = CFDataGetBytePtr(v3);
        Length = CFDataGetLength(v3);
        fwrite(BytePtr, Length, 1uLL, v7);
        fflush(v7);
        fclose(v7);
      }

      CFRelease(v3);
    }

    std::mutex::unlock((a1 + 40));
  }

  v11 = *(a1 + 136);
  if (v11)
  {
    CFRelease(v11);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  std::mutex::~mutex((a1 + 40));
  v12 = *(a1 + 32);
  if (v12)
  {

    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1DE49BBD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<AMCP::Utility::Settings_Storage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE49BD18(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HALB_Tailspin>::__on_zero_shared(uint64_t a1)
{
  do
  {
    v2 = *(a1 + 24);
    if (!v2 || (AMCP::Utility::Dispatch_Queue::flush_all_work(v2), (v3 = *(a1 + 24)) == 0))
    {
      *(a1 + 24) = 0;
      return;
    }

    v4 = atomic_load((v3 + 33));
  }

  while ((v4 & 1) != 0);
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v5);

    JUMPOUT(0x1E12C1730);
  }
}

void std::__shared_ptr_emplace<HALB_Tailspin>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972B00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_System::DeviceManagerCreated(HALS_System *this, HALS_DeviceManager *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZN11HALS_System20DeviceManagerCreatedEP18HALS_DeviceManager_block_invoke;
  v19[3] = &unk_1E8675A68;
  v19[5] = this;
  v19[6] = a2;
  v19[4] = &v20;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v19);
  if ((v21[3] & 1) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "HALS_System.cpp";
      v26 = 1024;
      v27 = 2311;
      v28 = 2080;
      v29 = "inserted == false";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to insert device manager", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v11, "Failed to insert device manager");
    std::runtime_error::runtime_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5992170;
    v13 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v12);
    v30 = "void HALS_System::DeviceManagerCreated(HALS_DeviceManager *)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
    v32 = 2311;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  (**a2)(a2);
  _Block_object_dispose(&v20, 8);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1DE49C418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t a1), void *a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, std::runtime_error a20, std::runtime_error a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    a9 = MEMORY[0x1E69E9820];
    a10 = v34;
    a11 = ___ZN11HALS_System20DeviceManagerCreatedEP18HALS_DeviceManager_block_invoke_91;
    a12 = &__block_descriptor_tmp_92;
    v35 = (*(*v31 + 64))(v31);
    HALB_CommandGate::ExecuteCommand(v35, &a9);
    v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v37 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v36);
    }

    v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v40 = *v39;
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    else
    {
      v40 = *v39;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *(v33 - 144) = 136315394;
      *(v32 + 4) = "HALS_System.cpp";
      *(v33 - 132) = 1024;
      *(v32 + 14) = 2329;
      _os_log_error_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to activate device manager", (v33 - 144), 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&a31);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&a20, "Failed to activate device manager");
    std::runtime_error::runtime_error(&a21, &a20);
    a23 = 0;
    a24 = 0;
    a25 = 0;
    a26 = -1;
    a21.__vftable = &unk_1F5992170;
    a22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v33 - 144, &a21);
    *(v33 - 112) = "void HALS_System::DeviceManagerCreated(HALS_DeviceManager *)";
    *(v33 - 104) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
    *(v33 - 96) = 2329;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE49C664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, std::runtime_error a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v35 - 144);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (v34)
  {
    __cxa_free_exception(v33);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a33);
  __cxa_end_catch();
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void ___ZN11HALS_System20DeviceManagerCreatedEP18HALS_DeviceManager_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 40);
  v4 = v3[198];
  v5 = v3[199];
  v6 = (a1 + 48);
  if (v5 == v4)
  {
    v14 = v3[199];
  }

  else
  {
    v7 = v5 - v4;
    do
    {
      v8 = &v4[v7 >> 1];
      v9 = *v8;
      v10 = *v6;
      v11 = *(*v8 + 6);
      if (v11)
      {
        CFRetain(v11);
        v11 = *(v9 + 6);
      }

      v38 = v11;
      v39 = 1;
      if (*(v10 + 6))
      {
        CFRetain(*(v10 + 6));
        v12 = *(v10 + 6);
        v11 = v38;
      }

      else
      {
        v12 = 0;
      }

      v36 = v12;
      v37 = 1;
      v13 = CFStringCompare(v11, v12, 0);
      CACFString::~CACFString(&v36);
      CACFString::~CACFString(&v38);
      if (v13 == kCFCompareLessThan)
      {
        v7 += ~(v7 >> 1);
      }

      else
      {
        v7 >>= 1;
      }

      if (v13 == kCFCompareLessThan)
      {
        v4 = v8 + 1;
      }
    }

    while (v7);
    v14 = v4;
    v4 = v3[198];
    v5 = v3[199];
  }

  v15 = v3 + 199;
  v16 = v3[200];
  if (v5 >= v16)
  {
    v21 = v5 - v4 + 1;
    if (v21 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v22 = v16 - v4;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v23);
    }

    v24 = v14 - v4;
    v25 = v14 - v4;
    v26 = (8 * v25);
    v27 = 8 * v25;
    if (!v25)
    {
      if (v24 < 1)
      {
        v28 = v24 >> 2;
        if (v14 == v4)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v29);
      }

      v26 = (v26 - (((v24 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v27 = v26;
    }

    *v26 = *v6;
    v30 = v27 + 8;
    memcpy((v27 + 8), v14, v3[199] - v14);
    v35 = (v30 + v3[199] - v14);
    v3[199] = v14;
    v31 = v3[198];
    v32 = v14 - v31;
    v33 = v26 - (v14 - v31);
    memcpy(v33, v31, v32);
    v34 = v3[198];
    v3[198] = v33;
    *v15 = v35;
    if (v34)
    {
      operator delete(v34);
    }
  }

  else if (v14 == v5)
  {
    *v5 = *v6;
    *v15 = v5 + 1;
  }

  else
  {
    v17 = (v14 + 1);
    v18 = v5;
    if (v5 >= 8)
    {
      *v5 = *(v5 - 1);
      v18 = v5 + 1;
    }

    *v15 = v18;
    if (v5 != v17)
    {
      memmove(v14 + 1, v14, v5 - v17);
      v18 = *v15;
    }

    v19 = v18 <= v6 || v14 > v6;
    v20 = 1;
    if (v19)
    {
      v20 = 0;
    }

    *v14 = v6[v20];
  }

  HALS_ObjectMap::RetainObject(*v6, a2);
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void sub_1DE49CA60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE49CA38);
}

void ___ZN11HALS_System20DeviceManagerCreatedEP18HALS_DeviceManager_block_invoke_91(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1584);
  v4 = *(v2 + 1592);
  if (v3 == v4)
  {
    v4 = *(v2 + 1584);
  }

  else
  {
    v5 = *(a1 + 40);
    while (*v3 != v5)
    {
      v3 += 8;
      if (v3 == v4)
      {
        v3 = *(v2 + 1592);
        goto LABEL_13;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 8;
      if (v3 + 8 != v4)
      {
        do
        {
          if (*v6 != v5)
          {
            *v3 = *v6;
            v3 += 8;
          }

          v6 += 8;
        }

        while (v6 != v4);
        v4 = *(v2 + 1592);
      }
    }
  }

LABEL_13:
  v7 = v3 + 8;
  v8 = v4 - (v3 + 8);
  if (v4 != v3 + 8)
  {
    memmove(v3, v7, v4 - (v3 + 8));
  }

  *(v2 + 1592) = &v3[v8];
  HALS_ObjectMap::ReleaseObject(*(a1 + 40), v7);
}

void sub_1DE49CB74(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_System::HALS_System(uint64_t a1, int a2, HALS_Object *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  g_static_start_options = a2;
  *a1 = &unk_1F5987EA8;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = xmmword_1DE7580F0;
  *(a1 + 32) = &stru_1F5992518;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  HALS_ObjectMap::MapObject(1, a1, a3);
  *a1 = &unk_1F5972410;
  *(a1 + 48) = 850045863;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v4);
  if ((*(*platform_behaviors + 120))(platform_behaviors))
  {
    operator new();
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  HALB_CommandGate::make((a1 + 176), v6);
}

void sub_1DE49E95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, void *a11, void *a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, HALS_Object *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32)
{
  CACFObject<void const*>::~CACFObject(&STACK[0x310]);
  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  v34 = *(a22 + 277);
  if (v34)
  {
    *(a22 + 278) = v34;
    operator delete(v34);
  }

  HALB_Guard::~HALB_Guard((a22 + 1928));
  v35 = *(a22 + 239);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(a22 + 237);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(a22 + 234);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(a22 + 230);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v39 = *(a22 + 228);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v40 = *(a22 + 225);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v41 = *(a22 + 223);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v42 = *(a22 + 221);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v43 = *(a22 + 219);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  a32 = a11;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a32);
  v44 = *(a22 + 212);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v45 = *(a22 + 208);
  if (v45)
  {
    *(a22 + 209) = v45;
    operator delete(v45);
  }

  a32 = a12;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&a32);
  v47 = *(a22 + 203);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v48 = *(a22 + 201);
  *(a22 + 201) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(a22 + 198, v46);
  CACFDictionary::~CACFDictionary((a22 + 1568));
  std::unique_ptr<HALB_AsyncLog>::~unique_ptr[abi:ne200100](a13 + 170);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a13 + 128));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a13 + 86));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a13 + 44));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a13 + 2));
  v49 = *(a22 + 25);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v50 = *(a22 + 23);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  v51 = *(a22 + 21);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v52 = *(a22 + 19);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  v53 = *(a22 + 17);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  v54 = *(a22 + 15);
  if (v54)
  {
    std::__shared_weak_count::__release_weak(v54);
  }

  std::mutex::~mutex(a10);
  HALS_Object::~HALS_Object(a22);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void *,AMCP::Power_State)>::~__value_func[abi:ne200100](uint64_t a1)
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

void TellKernelAudioIOIsRunning(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (TellKernelAudioIOIsRunning(BOOL)::isInitialized != -1)
  {
    dispatch_once(&TellKernelAudioIOIsRunning(BOOL)::isInitialized, &__block_literal_global_210);
  }

  if (TellKernelAudioIOIsRunning(BOOL)::theMIBLength)
  {
    v6 = a1;
    if (sysctl(TellKernelAudioIOIsRunning(BOOL)::theMIB, TellKernelAudioIOIsRunning(BOOL)::theMIBLength, 0, 0, &v6, 4uLL))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v2 = *__error();
        v3 = __error();
        v4 = strerror(*v3);
        *buf = 136315906;
        v8 = "HALS_System.cpp";
        v9 = 1024;
        v10 = 460;
        v11 = 1024;
        v12 = v2;
        v13 = 2080;
        v14 = v4;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  TellKernelAudioIOIsRunning: sysctl for security.mac.sandbox.audio_active failed: %d %s", buf, 0x22u);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void ___ZL26TellKernelAudioIOIsRunningb_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  if (sysctlnametomib("security.mac.sandbox.audio_active", TellKernelAudioIOIsRunning(BOOL)::theMIB, &TellKernelAudioIOIsRunning(BOOL)::theMIBLength))
  {
    v0 = 1;
  }

  else
  {
    v0 = TellKernelAudioIOIsRunning(BOOL)::theMIBLength == 0;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v1 = *__error();
      v2 = __error();
      v3 = strerror(*v2);
      v5 = 136315906;
      v6 = "HALS_System.cpp";
      v7 = 1024;
      v8 = 445;
      v9 = 1024;
      v10 = v1;
      v11 = 2080;
      v12 = v3;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  TellKernelAudioIOIsRunning: sysctlnametomib for security.mac.sandbox.audio_active failed: %d %s", &v5, 0x22u);
    }

    TellKernelAudioIOIsRunning(BOOL)::theMIBLength = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>(uint64_t a1, HALS_Object *a2, HALS_ObjectMap **a3, HALS_ObjectMap **a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *a4 = *v6;
      HALS_ObjectMap::RetainObject(v7, a2);
      ++v6;
      a4 = ++v12;
    }

    while (v6 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      HALS_ObjectMap::ReleaseObject(*v5++, a2);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>>::~__exception_guard_exceptions[abi:ne200100](v9, a2);
}

uint64_t std::__split_buffer<HALS_Releaser<HALS_IOContext>>::~__split_buffer(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 8);
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == v3)
    {
      break;
    }

    v5 = *(v4 - 8);
    *(a1 + 16) = v4 - 8;
    HALS_ObjectMap::ReleaseObject(v5, a2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1, HALS_Object *a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = **(a1 + 16);
    v5 = **(a1 + 8);
    while (v4 != v5)
    {
      v6 = *(v4 - 8);
      v4 -= 8;
      HALS_ObjectMap::ReleaseObject(v6, a2);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<HALS_Releaser<HALS_Client>>::~__split_buffer(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 8);
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == v3)
    {
      break;
    }

    v5 = *(v4 - 8);
    *(a1 + 16) = v4 - 8;
    HALS_ObjectMap::ReleaseObject(v5, a2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<HALS_PowerManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972DB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void (*)(void *,AMCP::Power_State),std::allocator<void (*)(void *,AMCP::Power_State)>,void ()(void *,AMCP::Power_State)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "PFvPvN4AMCP11Power_StateEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void (*)(void *,AMCP::Power_State),std::allocator<void (*)(void *,AMCP::Power_State)>,void ()(void *,AMCP::Power_State)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59729B0;
  a2[1] = v2;
  return result;
}

void HALS_System::PowerStateChangedCallback(_DWORD *a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    CAVerboseAbort();
  }

  if (a1[435] != a2)
  {
    a1[435] = a2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ___ZN11HALS_System33TellAllIOContextsAboutPowerChangeEN4AMCP11Power_StateE_block_invoke;
    v4[3] = &__block_descriptor_tmp_147;
    v4[4] = a1;
    v5 = a2;
    v2 = (*(*a1 + 64))(a1);
    HALB_CommandGate::ExecuteCommand(v2, v4);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void ___ZN11HALS_System33TellAllIOContextsAboutPowerChangeEN4AMCP11Power_StateE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  operator new();
}

void sub_1DE49F8F4(void *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN11HALS_System34_TellAllIOContextsAboutPowerChangeEN4AMCP11Power_StateE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = v1[1];
  if (*v1 != v3)
  {
    do
    {
      v5 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
      v7 = v5;
      if (v5)
      {
        v8 = *(a1 + 48);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = ___ZN14HALS_IOContext12PowerChangedEN4AMCP11Power_StateE_block_invoke;
        v10[3] = &__block_descriptor_tmp_12_12137;
        v10[4] = v5;
        v11 = v8;
        v9 = (*(*v5 + 64))(v5);
        HALB_CommandGate::ExecuteCommand(v9, v10);
      }

      HALS_ObjectMap::ReleaseObject(v7, v6);
      ++v2;
    }

    while (v2 != v3);
  }
}

void std::__shared_ptr_emplace<Mock_Power_Manager_System_Interface>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_PowerManager::True_System_Interface>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_System::RunLoopThread(HALS_System *this, void *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  HALS_System::GetInstance(&v22, 0, v21);
  HALB_Mutex::Lock((v22 + 1928));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  Current = CFRunLoopGetCurrent();
  v20[0] = 0;
  v20[1] = 0;
  HALS_System::GetInstance(&v22, 0, v20);
  v3 = v23;
  *(v22 + 1920) = Current;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v19[0] = 0;
  v19[1] = 0;
  HALS_System::GetInstance(&v22, 0, v19);
  CFRetain(*(v22 + 1920));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v18[0] = 0;
  v18[1] = 0;
  HALS_System::GetInstance(&v22, 0, v18);
  HALB_Guard::NotifyAll((v22 + 1928));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v4 = *MEMORY[0x1E695E8D8];
  while (1)
  {
    v17[0] = 0;
    v17[1] = 0;
    HALS_System::GetInstance(&v22, 0, v17);
    v5 = *(v22 + 2208);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v5)
    {
      break;
    }

    v16[0] = 0;
    v16[1] = 0;
    HALS_System::GetInstance(&v22, 0, v16);
    HALB_Mutex::Unlock((v22 + 1928));
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v15[0] = 0;
    v15[1] = 0;
    HALS_System::GetInstance(&v22, 0, v15);
    v6 = *(v22 + 2224);
    v7 = *(v22 + 2216);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v6 == v7)
    {
      usleep(0x4C4B40u);
    }

    else if (CFRunLoopRunInMode(v4, 1.0e10, 0) != kCFRunLoopRunTimedOut)
    {
      usleep(0xF4240u);
    }

    v14[0] = 0;
    v14[1] = 0;
    HALS_System::GetInstance(&v22, 0, v14);
    HALB_Mutex::Lock((v22 + 1928));
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  v13[0] = 0;
  v13[1] = 0;
  HALS_System::GetInstance(&v22, 0, v13);
  CFRelease(*(v22 + 1920));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v12[0] = 0;
  v12[1] = 0;
  HALS_System::GetInstance(&v22, 0, v12);
  v8 = v23;
  *(v22 + 1920) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v11[0] = 0;
  v11[1] = 0;
  HALS_System::GetInstance(&v22, 0, v11);
  HALB_Guard::NotifyAll((v22 + 1928));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v10[0] = 0;
  v10[1] = 0;
  HALS_System::GetInstance(&v22, 0, v10);
  HALB_Mutex::Unlock((v22 + 1928));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return 0;
}

void sub_1DE49FE2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    a15 = 0;
    a16 = 0;
    HALS_System::GetInstance((v22 - 64), 0, &a15);
    v25 = *(v22 - 56);
    v26 = *(*(v22 - 64) + 1920);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v26)
    {
      a13 = 0;
      a14 = 0;
      HALS_System::GetInstance((v22 - 64), 0, &a13);
      CFRelease(*(*(v22 - 64) + 1920));
      v27 = *(v22 - 56);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      a11 = 0;
      a12 = 0;
      HALS_System::GetInstance((v22 - 64), 0, &a11);
LABEL_16:
      v31 = *(v22 - 56);
      *(*(v22 - 64) + 1920) = 0;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }
  }

  else
  {
    a21 = 0;
    a22 = 0;
    HALS_System::GetInstance((v22 - 64), 0, &a21);
    v28 = *(v22 - 56);
    v29 = *(*(v22 - 64) + 1920);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v29)
    {
      a19 = 0;
      a20 = 0;
      HALS_System::GetInstance((v22 - 64), 0, &a19);
      CFRelease(*(*(v22 - 64) + 1920));
      v30 = *(v22 - 56);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      a17 = 0;
      a18 = 0;
      HALS_System::GetInstance((v22 - 64), 0, &a17);
      goto LABEL_16;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE49FE10);
}

void std::__shared_ptr_emplace<AMCP::Utility::Dispatch_Queue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DSPDeveloperPreferences>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59728C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_SettingsManager>::__on_zero_shared(void *a1)
{
  std::unique_ptr<CASettingsStorage>::reset[abi:ne200100](a1 + 8, 0);
  std::unique_ptr<CASettingsStorage>::reset[abi:ne200100](a1 + 7, 0);
  std::unique_ptr<CASettingsStorage>::reset[abi:ne200100](a1 + 6, 0);
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v2);
    MEMORY[0x1E12C1730]();
  }

  v3 = a1[4];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<HALS_SettingsManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<ExclaveRecordingStateHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_IOContext_Manager>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v2)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v2);
    MEMORY[0x1E12C1730]();
  }

  std::mutex::~mutex((a1 + 216));
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(a1 + 176);
  v3 = *(a1 + 168);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a1 + 104);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a1 + 64);
  v5 = *(a1 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::__shared_ptr_emplace<HALS_IOContext_Manager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59727D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Graph::Synchronized_Mixer_Manager>::__on_zero_shared(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[8];
  a1[8] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    do
    {
      v6 = *v5;
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,0>((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[3];
  a1[3] = 0;
  if (v7)
  {

    operator delete(v7);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Synchronized_Mixer_Manager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598DB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DefaultDeviceManager>::__on_zero_shared(uint64_t a1)
{
  OS::CF::UntypedObject::~UntypedObject((a1 + 456));
  OS::CF::UntypedObject::~UntypedObject((a1 + 424));
  v2 = (a1 + 400);
  v3 = -72;
  do
  {
    OS::CF::UntypedObject::~UntypedObject(v2);
    v2 = (v4 - 24);
    v3 += 24;
  }

  while (v3);
  OS::CF::UntypedObject::~UntypedObject((a1 + 320));
  v5 = (a1 + 296);
  v6 = -72;
  do
  {
    OS::CF::UntypedObject::~UntypedObject(v5);
    v5 = (v7 - 24);
    v6 += 24;
  }

  while (v6);
  OS::CF::UntypedObject::~UntypedObject((a1 + 216));
  v8 = (a1 + 192);
  v9 = -72;
  do
  {
    OS::CF::UntypedObject::~UntypedObject(v8);
    v8 = (v10 - 24);
    v9 += 24;
  }

  while (v9);

  HALB_Mutex::~HALB_Mutex((a1 + 24));
}

void std::__shared_ptr_emplace<HALS_DefaultDeviceManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_System::StartServer(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  v15[0] = 0;
  v15[1] = 0;
  HALS_System::GetInstance(&v16, 0, v15);
  v2 = v16;
  if (v16)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v3 = *(v2 + 120);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      *(a1 + 1) = v4;
      if (v4)
      {
        v5 = *(v2 + 112);
        *a1 = v5;
        if (v5)
        {
          goto LABEL_19;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }

  v13 = &v14;
  v14 = os_transaction_create();
  v6 = pthread_mutex_lock(&HALS_System::sInitializationMutex);
  *a1 = 0;
  *(a1 + 1) = 0;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 620;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::StartServer: failed to lock the mutex, Error: 0x%X", buf, 0x18u);
    }
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    HALS_System::GetInstance(buf, 0, v12);
    v7 = *(&v16 + 1);
    v16 = *buf;
    v8 = *buf;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (!v8)
    {
      kdebug_trace();
      operator new();
    }

    v9 = *(v8 + 120);
    if (v9 && (v10 = std::__shared_weak_count::lock(v9)) != 0)
    {
      *a1 = *(v8 + 112);
      *(a1 + 1) = v10;
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
    }

    pthread_mutex_unlock(&HALS_System::sInitializationMutex);
  }

  applesauce::raii::v1::detail::ScopeGuard<HALS_System::StartServer(HALS_System::Server_Start_Options)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&v13);
LABEL_19:
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE4A1CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  OS::CF::UntypedObject::~UntypedObject(&a49);
  OS::CF::UntypedObject::~UntypedObject(&a51);
  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  v59 = *(a16 + 8);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  applesauce::raii::v1::detail::ScopeGuard<HALS_System::StartServer(HALS_System::Server_Start_Options)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&a27);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(v60);
}

void HALS_System::CheckForDefaultDeviceChanges(HALS_System *this)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
  if ((*(*platform_behaviors + 56))(platform_behaviors) == 1 && HALS_System::sIsInitialized == 1)
  {
    v3 = *(this + 202);
    v4 = *(this + 203);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *(this + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1174405120;
    v6[2] = ___ZN11HALS_System28CheckForDefaultDeviceChangesEv_block_invoke;
    v6[3] = &__block_descriptor_tmp_98_8082;
    v6[4] = v3;
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::Utility::Dispatch_Queue::after(v5, v6);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void ***applesauce::raii::v1::detail::ScopeGuard<HALS_System::StartServer(HALS_System::Server_Start_Options)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    os_release(v2);
    **a1 = 0;
  }

  return a1;
}

void ___ZN11HALS_System11StartServerENS_20Server_Start_OptionsE_block_invoke()
{
  v139 = *MEMORY[0x1E69E9840];
  v88[0] = 0;
  v88[1] = 0;
  HALS_System::GetInstance(&v89, 0, v88);
  v0 = v89;
  v112 = 0;
  v113 = &v112;
  v114 = 0x4002000000;
  v115 = __Block_byref_object_copy__7820;
  v116 = __Block_byref_object_dispose__7821;
  memset(v117, 0, sizeof(v117));
  v106 = 0;
  v107 = &v106;
  v108 = 0x4002000000;
  v109 = __Block_byref_object_copy__46;
  v110 = __Block_byref_object_dispose__47;
  memset(v111, 0, sizeof(v111));
  v100 = 0;
  v101 = &v100;
  v102 = 0x4002000000;
  v103 = __Block_byref_object_copy__48;
  v104 = __Block_byref_object_dispose__49;
  memset(v105, 0, sizeof(v105));
  HALS_ObjectMap::Dump(v1);
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 0x40000000;
  v99[2] = ___ZNK11HALS_System8LogStateEv_block_invoke;
  v99[3] = &unk_1E8675658;
  v99[4] = &v112;
  v99[5] = &v106;
  v99[6] = &v100;
  v99[7] = v0;
  v2 = (*(*v0 + 64))(v0);
  HALB_CommandGate::ExecuteCommand(v2, v99);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v93);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Number of Device Managers: ", 27);
  v3 = MEMORY[0x1E12C1220](&v94, (v113[6] - v113[5]) >> 3);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(v138, MEMORY[0x1E69E5318]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v5 = v113[5];
  v6 = v113[6];
  while (v5 != v6)
  {
    HALS_DeviceManager::LogState(*v5++, v93);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Number of IO Contexts: ", 23);
  v7 = MEMORY[0x1E12C1220](&v94, (v107[6] - v107[5]) >> 3);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(v138, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v9 = v107[5];
  v10 = v107[6];
  while (v9 != v10)
  {
    (*(**(*v9 + 104) + 416))(*(*v9 + 104), v93, 1);
    v9 += 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Number of Clients: ", 19);
  v11 = MEMORY[0x1E12C1220](&v94, (v101[6] - v101[5]) >> 3);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(v138, MEMORY[0x1E69E5318]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(v138);
  std::ostream::put();
  std::ostream::flush();
  v13 = v101[5];
  v14 = v101[6];
  if (v13 != v14)
  {
    v15 = MEMORY[0x1E69E5318];
    do
    {
      v16 = *v13;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Client ", 7);
      v17 = MEMORY[0x1E12C1210](&v94, *(v16 + 16));
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v123, v15);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v123);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "PID:       ", 11);
      v19 = MEMORY[0x1E12C1200](&v94, *(v16 + 240));
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v20 = std::locale::use_facet(&v124, v15);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(&v124);
      std::ostream::put();
      std::ostream::flush();
      *v122 = 128;
      CACFString::GetCString(*(v16 + 248), v138, v122, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Bundle ID: ", 11);
      v22 = strlen(v138);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, v138, v22);
      std::ios_base::getloc((&v94 + *(v94 - 24)));
      v23 = std::locale::use_facet(&v125, v15);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v125);
      std::ostream::put();
      std::ostream::flush();
      ++v13;
    }

    while (v13 != v14);
  }

  *v126 = 0;
  *&v126[8] = 16;
  LOBYTE(v127) = 0;
  v129 = 0;
  *&v128[2] = 0;
  *&v128[10] = 0;
  existing = 0;
  v24 = IOServiceMatching("AppleEmbeddedAudio");
  if (!IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], v24, &existing))
  {
    *v126 = 0;
    allocator = *MEMORY[0x1E695E478];
    v37 = MEMORY[0x1E69E5318];
    while (1)
    {
      do
      {
        v38 = IOIteratorNext(existing);
        *v126 = v38;
        if (!v38)
        {
          goto LABEL_11;
        }

        cf = IORegistryEntryCreateCFProperty(v38, @"CodecRegisterData", allocator, 0);
      }

      while (!cf);
      CFProperty = IORegistryEntryCreateCFProperty(*v126, @"CodecRegisterStartIndex", allocator, 0);
      v40 = CFProperty;
      if (CFProperty)
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr))
        {
          *&v126[4] = valuePtr;
        }

        CFRelease(v40);
      }

      v41 = IORegistryEntryCreateCFProperty(*v126, @"CodecRegisterDisplayBase", allocator, 0);
      v42 = v41;
      if (v41)
      {
        if (!CFNumberGetValue(v41, kCFNumberSInt32Type, &v126[8]))
        {
          *&v126[8] = 16;
        }

        CFRelease(v42);
      }

      v43 = CFGetTypeID(cf);
      if (v43 != CFArrayGetTypeID())
      {
        break;
      }

      Count = CFArrayGetCount(cf);
      v45 = *&v128[10];
      v46 = *&v128[2];
      while (v45 != v46)
      {
        v47 = *(v45 - 24);
        if (v47)
        {
          *(v45 - 16) = v47;
          operator delete(v47);
        }

        v45 -= 32;
      }

      v51 = Count / 2;
      *&v128[10] = v46;
      std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::reserve(&v128[2], Count / 2);
      if (Count < 2)
      {
        goto LABEL_75;
      }

      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 1;
      v56 = v51;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v52);
        LODWORD(v118[0]) = 0;
        if (ValueAtIndex)
        {
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v118))
          {
            v58 = v118[0];
            if (LODWORD(v118[0]) < v54)
            {
              LOBYTE(v127) = 1;
            }

            v59 = CFArrayGetValueAtIndex(cf, v52 + 1);
            v60 = v127 ? 4 : 1;
            v54 = v58;
            if (!CodecRegistryEntry::ReadRegistersFromCFData<CodecRegistryEntry::RegisterWidth>(&v128[2], v59, v118[0], v60))
            {
              break;
            }
          }
        }

        v53 = v51 <= v55++;
        v52 += 2;
        if (!--v56)
        {
          goto LABEL_75;
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Error encountered while reading register data for register address ", 67);
      v68 = MEMORY[0x1E12C1210](&v94, LODWORD(v118[0]));
      std::ios_base::getloc((v68 + *(*v68 - 24)));
      v69 = std::locale::use_facet(&valuePtr, v37);
      (v69->__vftable[2].~facet_0)(v69, 10);
      std::locale::~locale(&valuePtr);
      std::ostream::put();
      std::ostream::flush();
      if (v53)
      {
        goto LABEL_75;
      }

LABEL_98:
      CFRelease(cf);
    }

    if (v43 == CFDataGetTypeID())
    {
      v48 = *&v128[10];
      v49 = *&v128[2];
      while (v48 != v49)
      {
        v50 = *(v48 - 24);
        if (v50)
        {
          *(v48 - 16) = v50;
          operator delete(v50);
        }

        v48 -= 32;
      }

      *&v128[10] = v49;
      v61 = *&v126[4];
      v62 = v127;
      Length = CFDataGetLength(cf);
      v64 = v62 ? Length / 4 : Length;
      std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::reserve(&v128[2], v64);
      v65 = v127 ? 4 : 2;
      if (!CodecRegistryEntry::ReadRegistersFromCFData<CodecRegistryEntry::RegisterWidth>(&v128[2], cf, v61, v65))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Error encountered while reading register data for register address ", 67);
        v66 = MEMORY[0x1E12C1210](&v94, v61);
        std::ios_base::getloc((v66 + *(*v66 - 24)));
        v67 = std::locale::use_facet(&valuePtr, v37);
        (v67->__vftable[2].~facet_0)(v67, 10);
        std::locale::~locale(&valuePtr);
        std::ostream::put();
        std::ostream::flush();
        goto LABEL_98;
      }
    }

LABEL_75:
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    valuePtr = 0u;
    v131 = 0u;
    if (MEMORY[0x1E12C0990](*v126, &valuePtr))
    {
      p_valuePtr = "";
    }

    else
    {
      p_valuePtr = &valuePtr;
    }

    std::string::basic_string[abi:ne200100]<0>(v118, p_valuePtr);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Codec Device: ", 14);
    if ((v119 & 0x80u) == 0)
    {
      v71 = v118;
    }

    else
    {
      v71 = v118[0];
    }

    if ((v119 & 0x80u) == 0)
    {
      v72 = v119;
    }

    else
    {
      v72 = v118[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, v71, v72);
    std::ios_base::getloc((&v94 + *(v94 - 24)));
    v73 = std::locale::use_facet(&valuePtr, v37);
    (v73->__vftable[2].~facet_0)(v73, 10);
    std::locale::~locale(&valuePtr);
    std::ostream::put();
    std::ostream::flush();
    v74 = *&v128[2];
    v75 = *&v128[10];
    while (v74 != v75)
    {
      v77 = *(v74 + 1);
      v76 = *(v74 + 2);
      if (v76 != v77)
      {
        v78 = *v74;
        v79 = (v76 - v77) >> 2;
        v80 = 1;
        do
        {
          v81 = v80 - 1;
          if (v79 > v81)
          {
            v82 = *(v77 + 4 * v81);
            LODWORD(v136) = 0;
            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            valuePtr = 0u;
            v131 = 0u;
            if (*&v126[8] == 16)
            {
              snprintf(&valuePtr, 0x64uLL, "%8Xh: 0x%02x");
            }

            else if (*&v126[8] == 10)
            {
              snprintf(&valuePtr, 0x64uLL, "R%06ud: %04u");
            }

            v83 = strlen(&valuePtr);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, &valuePtr, v83);
            std::ios_base::getloc((&v94 + *(v94 - 24)));
            v84 = std::locale::use_facet(&v121, v37);
            (v84->__vftable[2].~facet_0)(v84, 10);
            std::locale::~locale(&v121);
            std::ostream::put();
            std::ostream::flush();
            v77 = *(v74 + 1);
            v76 = *(v74 + 2);
          }

          v79 = (v76 - v77) >> 2;
          ++v78;
        }

        while (v79 > v80++);
      }

      v74 += 8;
    }

    if (v119 < 0)
    {
      operator delete(v118[0]);
    }

    goto LABEL_98;
  }

LABEL_11:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  *&valuePtr = &v128[2];
  std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::__destroy_vector::operator()[abi:ne200100](&valuePtr);
  __p[0] = 0;
  __p[1] = 0;
  v92 = 0;
  v25 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v93 + *(v93[0] - 3)));
    v26 = std::locale::use_facet(v126, v25);
    v27 = (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(v126);
    v28 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v93, __p, v27);
    if ((*(&v96[0].__locale_ + *(v93[0] - 3)) & 5) != 0)
    {
      break;
    }

    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
    }

    v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v32 = *v31;
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    else
    {
      v32 = *v31;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = __p;
      if (v92 < 0)
      {
        v33 = __p[0];
      }

      *v126 = 136315650;
      *&v126[4] = "HALS_System.cpp";
      v127 = 1024;
      *v128 = 1026;
      *&v128[4] = 2080;
      *&v128[6] = v33;
      _os_log_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %s", v126, 0x1Cu);
    }
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(__p[0]);
  }

  v93[0] = *MEMORY[0x1E69E54D8];
  v34 = *(MEMORY[0x1E69E54D8] + 72);
  *(v93 + *(v93[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v94 = v34;
  v95 = MEMORY[0x1E69E5548] + 16;
  if (v97 < 0)
  {
    operator delete(v96[7].__locale_);
  }

  v95 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v96);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12C15F0](&v98);
  _Block_object_dispose(&v100, 8);
  v93[0] = v105;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](v93);
  _Block_object_dispose(&v106, 8);
  v93[0] = v111;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](v93);
  _Block_object_dispose(&v112, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v117, v35);
  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

  v36 = *MEMORY[0x1E69E9840];
}

void sub_1DE4A315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a25);
  MEMORY[0x1E12C15F0](&a41);
  _Block_object_dispose(&a68, 8);
  a25 = a11;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Block_object_dispose(&STACK[0x218], 8);
  a25 = a12;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Block_object_dispose(&STACK[0x258], 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&STACK[0x280], v69);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__46(void *a1, uint64_t a2)
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

void ___ZNK11HALS_System8LogStateEv_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  v4 = *(a1[4] + 8);
  if (v4 + 40 != v3 + 1584)
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v4 + 40), *(v3 + 1584), *(v3 + 1592), (*(v3 + 1592) - *(v3 + 1584)) >> 3);
    v4 = *(a1[4] + 8);
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  while (v5 != v6)
  {
    HALS_ObjectMap::RetainObject(*v5++, a2);
  }

  v7 = *(a1[5] + 8) + 40;
  if (v7 != v3 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v7, *(v3 + 1704), *(v3 + 1712), (*(v3 + 1712) - *(v3 + 1704)) >> 3);
  }

  v8 = *(a1[6] + 8) + 40;
  if (v8 != v3 + 1640)
  {
    std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(v8, *(v3 + 1640), *(v3 + 1648), (*(v3 + 1648) - *(v3 + 1640)) >> 3);
  }
}

void sub_1DE4A33FC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(uint64_t a1, HALS_ObjectMap **a2, HALS_Object *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 3)
  {
    if (v8)
    {
      std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v10);
      }
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(a2, a3, v8);

    std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](a1, v13);
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(a1, v12, a3, *(a1 + 8));
  }
}

HALS_ObjectMap **std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(HALS_ObjectMap **a1, HALS_Object *a2, HALS_ObjectMap **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *a3;
      v7 = *v4++;
      *a3++ = v7;
      HALS_ObjectMap::RetainObject(v7, a2);
      HALS_ObjectMap::ReleaseObject(v6, v8);
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

HALS_ObjectMap **std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(uint64_t a1, HALS_Object *a2, HALS_ObjectMap **a3, HALS_ObjectMap **a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      HALS_ObjectMap::RetainObject(v7, a2);
      ++v6;
      v4 = ++v12;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>>::~__exception_guard_exceptions[abi:ne200100](v9, a2);
  return v4;
}

void ___ZN11HALS_System28CheckForDefaultDeviceChangesEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v9[0] = 0;
        v9[1] = 0;
        HALS_System::GetInstance(&v10, 0, v9);
        v6 = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (v6)
        {
          v8[0] = 0;
          v8[1] = 0;
          HALS_System::GetInstance(&v10, 0, v8);
          v7 = v10;
          std::mutex::lock((v10 + 48));
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          HALS_DefaultDeviceManager::CheckForChanges(v5);
          std::mutex::unlock((v7 + 48));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1DE4A3740(void *a1)
{
  std::mutex::unlock((v2 + 48));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void __destroy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrI25HALS_DefaultDeviceManagerEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrI25HALS_DefaultDeviceManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t ___ZN13HALB_WatchdogC2IPFvPKcEPFvU13block_pointerFbPPcPyEEPFvvEEENSt3__110shared_ptrIN9HALHealth8ObserverEEET_T0_T1_b_block_invoke(AMCP::Log::AMCP_Scope_Registry *a1, char **a2, uint64_t *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  *a3 = 0;
  if (*(v3 + 16) == 1)
  {
    v5 = *(a1 + 6);
    if (v5)
    {
      v5 = std::__shared_weak_count::lock(v5);
      v8 = v5;
      if (v5)
      {
        v9 = *(a1 + 5);
        if (v9)
        {
          v10 = *v9;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *buf = &buf[8];
          v49 = (v10 + 24);
          LODWORD(v50) = HALB_Mutex::Lock((v10 + 24));
          if (buf == (v10 + 128))
          {
LABEL_63:
            HALB_Mutex::Locker::~Locker(&v49);
            v37 = *buf;
            if (*buf == &buf[8])
            {
LABEL_71:
              std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(*&buf[8]);
              v41 = 0;
              v34 = 1;
            }

            else
            {
              while ((*(**(v37 + 4) + 16))(*(v37 + 4)))
              {
                v38 = *(v37 + 1);
                if (v38)
                {
                  do
                  {
                    v39 = v38;
                    v38 = *v38;
                  }

                  while (v38);
                }

                else
                {
                  do
                  {
                    v39 = *(v37 + 2);
                    v25 = *v39 == v37;
                    v37 = v39;
                  }

                  while (!v25);
                }

                v37 = v39;
                if (v39 == &buf[8])
                {
                  goto LABEL_71;
                }
              }

              std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(*&buf[8]);
              v40 = asprintf(a2, "Audio HAL seems to be deadlocked.", v49, v50);
              v34 = 0;
              v41 = 1;
            }

            *a3 = v41;
            v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v42 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v40);
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

            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = "unhealthy";
              *&buf[4] = "HALB_Watchdog.h";
              *buf = 136315650;
              if (v34)
              {
                v46 = "healthy";
              }

              *&buf[12] = 1024;
              *&buf[14] = 79;
              *&buf[18] = 2080;
              *&buf[20] = v46;
              _os_log_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_DEFAULT, "%32s:%-5d watchdog check in, returning %s.", buf, 0x1Cu);
            }

            goto LABEL_82;
          }

          v11 = *(v10 + 128);
          v12 = (v10 + 136);
          if (*&buf[16])
          {
            v13 = *buf;
            *buf = &buf[8];
            *(*&buf[8] + 16) = 0;
            *&buf[8] = 0;
            *&buf[16] = 0;
            if (*(v13 + 8))
            {
              v14 = *(v13 + 8);
            }

            else
            {
              v14 = v13;
            }

            if (v14)
            {
              v15 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v14);
              if (v11 == v12)
              {
                v17 = v14;
              }

              else
              {
                v16 = v11;
                do
                {
                  v17 = v15;
                  v19 = v16[4];
                  v18 = v16[5];
                  if (v18)
                  {
                    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
                  }

                  v20 = v14[5];
                  v14[4] = v19;
                  v14[5] = v18;
                  if (v20)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                  }

                  v21 = *&buf[8];
                  v22 = &buf[8];
                  v23 = &buf[8];
                  if (*&buf[8])
                  {
                    do
                    {
                      while (1)
                      {
                        v22 = v21;
                        if (v14[4] >= v21[4])
                        {
                          break;
                        }

                        v21 = *v21;
                        v23 = v22;
                        if (!*v22)
                        {
                          goto LABEL_23;
                        }
                      }

                      v21 = v21[1];
                    }

                    while (v21);
                    v23 = v22 + 1;
                  }

LABEL_23:
                  *v14 = 0;
                  v14[1] = 0;
                  v14[2] = v22;
                  *v23 = v14;
                  if (**buf)
                  {
                    *buf = **buf;
                    v14 = *v23;
                  }

                  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*&buf[8], v14);
                  ++*&buf[16];
                  if (v15)
                  {
                    v15 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v15);
                  }

                  else
                  {
                    v15 = 0;
                  }

                  v24 = v16[1];
                  if (v24)
                  {
                    do
                    {
                      v11 = v24;
                      v24 = *v24;
                    }

                    while (v24);
                  }

                  else
                  {
                    do
                    {
                      v11 = v16[2];
                      v25 = *v11 == v16;
                      v16 = v11;
                    }

                    while (!v25);
                  }

                  if (!v17)
                  {
                    break;
                  }

                  v14 = v17;
                  v16 = v11;
                }

                while (v11 != v12);
              }

              std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(v17);
              if (!v15)
              {
                goto LABEL_61;
              }

              for (i = v15[2]; i; i = i[2])
              {
                v15 = i;
              }

              v35 = v15;
            }

            else
            {
              v35 = 0;
            }

            std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(v35);
          }

LABEL_61:
          if (v11 != v12)
          {
            operator new();
          }

          goto LABEL_63;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      *buf = 136315394;
      *&buf[4] = "HALB_Watchdog.h";
      *&buf[12] = 1024;
      *&buf[14] = 74;
      _os_log_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_DEFAULT, "%32s:%-5d watchdog check in, but HAL seems to have shut down. returning healthy", buf, 0x12u);
    }

    v34 = 1;
    if (v8)
    {
LABEL_82:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALB_Watchdog.h";
      *&buf[12] = 1024;
      *&buf[14] = 83;
      _os_log_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_DEFAULT, "%32s:%-5d watchdog check in, returning healthy without consulting real HAL health.", buf, 0x12u);
    }

    v34 = 1;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v34;
}

void __destroy_helper_block_e8_40c65_ZTSNSt3__18weak_ptrIN13HALB_Watchdog23HealthObserverContainerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_40c65_ZTSNSt3__18weak_ptrIN13HALB_Watchdog23HealthObserverContainerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<HALB_Watchdog::HealthObserverContainer>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<HALB_Watchdog::HealthObserverContainer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALB_Watchdog>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void std::__shared_ptr_emplace<HALB_Watchdog>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_System::StartScope>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972AB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_System>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972A60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t ___ZN11HALS_System20ReloadServerSettingsEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 1704);
  v3 = *(v1 + 1712);
  while (v2 != v3)
  {
    v4 = *v2++;
    v5 = *(v4 + 13);
    AudioCaptureMode = HALS_IOContext::GetAudioCaptureMode(v4);
    result = (*(*v5 + 568))(v5, AudioCaptureMode);
  }

  return result;
}

HALS_ObjectMap *HALS_System::CopyPlugInByReferenceID(HALS_System *this, HALS_ObjectMap *a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x4002000000;
  v25 = __Block_byref_object_copy__7820;
  v26 = __Block_byref_object_dispose__7821;
  memset(v27, 0, sizeof(v27));
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = ___ZNK11HALS_System23CopyPlugInByReferenceIDEPv_block_invoke;
  v21[3] = &unk_1E86756D0;
  v21[4] = &v22;
  v21[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v21);
  v4 = v23[5];
  v5 = v23[6];
  if (v4 == v5)
  {
LABEL_26:
    v2 = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v6 = *(*v4 + 5);
    v7 = *(*v4 + 6);
    if (v6 == v7)
    {
      if (v6 != 1953656941 && v6 != 1634757735)
      {
        goto LABEL_25;
      }
    }

    else if (v6 != 1634757735 && v6 != 1953656941 && v7 != 1634757735 && v7 != 1953656941)
    {
      goto LABEL_25;
    }

    v13 = (*(**v4 + 208))(*v4);
    v14 = *v4;
    v15 = *(*v4 + 6);
    if (v15)
    {
      CFRetain(v15);
      v16 = *(v14 + 6);
    }

    else
    {
      v16 = 0;
    }

    v19 = v16;
    v20 = 1;
    if (v13 == v2)
    {
      break;
    }

    CACFString::~CACFString(&v19);
LABEL_25:
    if (++v4 == v5)
    {
      goto LABEL_26;
    }
  }

  v2 = *v4;
  HALS_ObjectMap::RetainObject(*v4, v12);
  CACFString::~CACFString(&v19);
LABEL_28:
  _Block_object_dispose(&v22, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v27, v17);
  return v2;
}

void sub_1DE4A4358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  CACFString::~CACFString(&a9);
  _Block_object_dispose(&a17, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v17 + 40), v19);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_System23CopyPlugInByReferenceIDEPv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A43E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A43D8);
}

uint64_t ___ZNK11HALS_System17CopyIODeviceByUIDEPK10__CFStringP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A445C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A444CLL);
}

uint64_t ___ZNK11HALS_System17CopyDeviceByIndexEjNS_14DeviceListKindEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A44D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A44C0);
}

HALS_ObjectMap *HALS_System::CopyDeviceByObjectID(HALS_System *this, int a2, HALS_Client *a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__7820;
  v16 = __Block_byref_object_dispose__7821;
  memset(v17, 0, sizeof(v17));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZNK11HALS_System20CopyDeviceByObjectIDEjP11HALS_Client_block_invoke;
  v11[3] = &unk_1E8675928;
  v11[4] = &v12;
  v11[5] = this;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v11);
  v6 = v13[5];
  v7 = v13[6];
  while (v6 != v7)
  {
    v8 = HALS_DeviceManager::CopyDeviceByObjectID(*v6, a2, a3);
    if (v8)
    {
      goto LABEL_6;
    }

    ++v6;
  }

  v8 = 0;
LABEL_6:
  _Block_object_dispose(&v12, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v17, v9);
  return v8;
}

void sub_1DE4A4628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v7 + 40), v9);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_System20CopyDeviceByObjectIDEjP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A46A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A4694);
}

void HALS_System::GetRawDeviceListUsingClockDevice(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x4002000000;
  v24 = __Block_byref_object_copy__7820;
  v25 = __Block_byref_object_dispose__7821;
  memset(v26, 0, sizeof(v26));
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZNK11HALS_System32GetRawDeviceListUsingClockDeviceERNSt3__16vectorIjNS0_9allocatorIjEEEEN10applesauce2CF9StringRefE_block_invoke;
  v20[3] = &unk_1E8675978;
  v20[4] = &v21;
  v20[5] = a1;
  v5 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v5, v20);
  v6 = v22[5];
  v7 = v22[6];
  while (v6 != v7)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    HALS_DeviceManager::CopyRawDeviceList(*v6, &v17);
    v9 = v17;
    v10 = v18;
    while (v9 != v10)
    {
      v11 = *v9;
      if (*v9)
      {
        v12 = *a3;
        if (*a3)
        {
          CFRetain(*a3);
        }

        cf = v12;
        v13 = (*(*v11 + 696))(v11, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v13)
        {
          v15 = *(*v9 + 4);
          std::vector<unsigned int>::push_back[abi:ne200100](a2, &v15);
        }
      }

      ++v9;
    }

    HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v17, v8);
    ++v6;
  }

  _Block_object_dispose(&v21, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v26, v14);
}

void sub_1DE4A4898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v13 + 40), v15);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_System32GetRawDeviceListUsingClockDeviceERNSt3__16vectorIjNS0_9allocatorIjEEEEN10applesauce2CF9StringRefE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A493C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A492CLL);
}

void HALS_System::ClockDeviceArrived(HALS_System *this, const BOOL *a2, unsigned int a3, const __CFString *a4)
{
  v6 = a2;
  if (AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    v8 = *(this + 218);
    if (a4)
    {
      CFRetain(a4);
      v21 = a4;
      v9 = CFGetTypeID(a4);
      if (v9 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v21 = 0;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    HALS_IOContext_Manager::device_arrived(v8, v6, a3, &v21, &v15);
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x4002000000;
  v18 = __Block_byref_object_copy__46;
  v19 = __Block_byref_object_dispose__47;
  memset(v20, 0, sizeof(v20));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN11HALS_System18ClockDeviceArrivedEjjPK10__CFString_block_invoke;
  v14[3] = &unk_1E86759A0;
  v14[4] = &v15;
  v14[5] = this;
  v11 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v11, v14);
  v12 = v16[5];
  v13 = v16[6];
  while (v12 != v13)
  {
    (*(**(*v12 + 104) + 104))(*(*v12 + 104), a4);
    v12 += 8;
  }

  _Block_object_dispose(&v15, 8);
  v22 = v20;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_1DE4A4B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  *(v8 - 56) = v7;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v8 - 56));
  _Unwind_Resume(a1);
}

void ___ZN11HALS_System18ClockDeviceArrivedEjjPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void HALS_System::ClockDeviceDied(HALS_System *this, const BOOL *a2, unsigned int a3, const __CFString *a4)
{
  v6 = a2;
  if (AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    v8 = *(this + 218);
    if (a4)
    {
      CFRetain(a4);
      v21 = a4;
      v9 = CFGetTypeID(a4);
      if (v9 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v21 = 0;
    }

    HALS_IOContext_Manager::device_died(v8, v6, a3, &v21);
    if (v21)
    {
      CFRelease(v21);
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x4002000000;
  v18 = __Block_byref_object_copy__46;
  v19 = __Block_byref_object_dispose__47;
  memset(v20, 0, sizeof(v20));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN11HALS_System15ClockDeviceDiedEjjPK10__CFString_block_invoke;
  v14[3] = &unk_1E86759C8;
  v14[4] = &v15;
  v14[5] = this;
  v11 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v11, v14);
  v12 = v16[5];
  v13 = v16[6];
  while (v12 != v13)
  {
    (*(**(*v12 + 104) + 112))(*(*v12 + 104), a4);
    v12 += 8;
  }

  _Block_object_dispose(&v15, 8);
  v22 = v20;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_1DE4A4DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  *(v8 - 56) = v7;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v8 - 56));
  _Unwind_Resume(a1);
}

void ___ZN11HALS_System15ClockDeviceDiedEjjPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void ___ZN11HALS_System23ProcessMuteStateChangedEPK11HALS_DeviceP11HALS_Clientb_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[4] + 8) + 40;
  if (v3 != v2 + 1640)
  {
    std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(v3, *(v2 + 1640), *(v2 + 1648), (*(v2 + 1648) - *(v2 + 1640)) >> 3);
  }

  v4 = *(a1[5] + 8) + 40;
  if (v4 != v2 + 1704)
  {
    v5 = *(v2 + 1704);
    v6 = *(v2 + 1712);

    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v4, v5, v6, (v6 - v5) >> 3);
  }
}

void HALS_System::DeviceArrived(os_unfair_lock_s **this, HALS_Device *a2)
{
  i = this;
  v91 = *MEMORY[0x1E69E9840];
  if ((AMCP::Feature_Flags::run_hybrid_hal(this, a2) & 1) != 0 && ((*(*a2 + 840))(a2) & 1) == 0)
  {
    HALS_IOContext_Manager::create_stream_info_for_device(buf, i[218], a2);
    v4 = i[218];
    v5 = *(a2 + 4);
    v6 = *(a2 + 7);
    v7 = (*(*a2 + 216))(a2);
    cf = v7;
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      if (v8 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    (*(*a2 + 232))(a2);
    HALS_IOContext_Manager::device_arrived(v4, v5, v6, &cf, buf);
  }

  v58 = i;
  if (!HALS_Device::GetNumberStreamsExcludingReferenceStreams(a2, 1))
  {
    goto LABEL_60;
  }

  NumberDevices = HALS_System::GetNumberDevices(i, 0, 0, 0);
  if (!NumberDevices)
  {
    goto LABEL_60;
  }

  v9 = 0;
  v59 = MEMORY[0x1E69E9820];
  do
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4002000000;
    v86 = __Block_byref_object_copy__7820;
    v87 = __Block_byref_object_dispose__7821;
    *&v89 = 0;
    v88 = 0uLL;
    v77 = v59;
    v78 = 0x40000000;
    v79 = ___ZNK11HALS_System17CopyDeviceByIndexEjNS_14DeviceListKindEbP11HALS_Client_block_invoke;
    v80 = &unk_1E86758D8;
    v81 = buf;
    v82 = i;
    v10 = (*&(*i)[16]._os_unfair_lock_opaque)(i);
    HALB_CommandGate::ExecuteCommand(v10, &v77);
    v11 = *(*&buf[8] + 40);
    v12 = *(*&buf[8] + 48);
    if (v11 != v12)
    {
      v13 = 0;
      while (2)
      {
        v69 = 0;
        v70 = 0;
        v71 = 0;
        HALS_DeviceManager::CopyDeviceList(*v11, &v69, 0, 0);
        v15 = v69;
        v16 = v70;
        while (v15 != v16)
        {
          if ((*(**v15 + 232))())
          {
            if (v13 == v9)
            {
              v17 = *v15;
              HALS_ObjectMap::RetainObject(v17, v14);
LABEL_21:
              HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v69, v14);
              goto LABEL_22;
            }

            ++v13;
          }

          ++v15;
        }

        if (v13 >= v9)
        {
          v17 = 0;
          goto LABEL_21;
        }

        HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v69, v14);
        if (++v11 != v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_22:
    _Block_object_dispose(buf, 8);
    HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v88, v18);
    if (!v17 || *(a2 + 4) == *(v17 + 4))
    {
      goto LABEL_59;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5002000000;
    v86 = __Block_byref_object_copy__314;
    v87 = __Block_byref_object_dispose__315;
    v88 = 0u;
    v89 = 0u;
    v90 = 1065353216;
    v69 = MEMORY[0x1E69E9820];
    v70 = 0x40000000;
    v71 = ___ZNK11HALS_Device16CopyClientDSPMapEb_block_invoke;
    v72 = &unk_1E86793D8;
    v73 = buf;
    v74 = v17;
    LOBYTE(v75) = 1;
    v20 = (*(*v17 + 64))(v17);
    HALB_CommandGate::ExecuteCommand(v20, &v69);
    v21 = *&buf[8];
    *__p = 0u;
    v67 = 0u;
    v68 = *(*&buf[8] + 72);
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(__p, *(*&buf[8] + 48));
    v22 = *(v21 + 56);
    if (!v22)
    {
      goto LABEL_43;
    }

    do
    {
      v23 = *(v22 + 4);
      if (!__p[1])
      {
        goto LABEL_41;
      }

      v24 = vcnt_s8(__p[1]);
      v24.i16[0] = vaddlv_u8(v24);
      if (v24.u32[0] > 1uLL)
      {
        v25 = *(v22 + 4);
        if (__p[1] <= v23)
        {
          v25 = v23 % LODWORD(__p[1]);
        }
      }

      else
      {
        v25 = (LODWORD(__p[1]) - 1) & v23;
      }

      v26 = *(__p[0] + v25);
      if (!v26 || (v27 = *v26) == 0)
      {
LABEL_41:
        operator new();
      }

      while (1)
      {
        v28 = v27[1];
        if (v28 == v23)
        {
          break;
        }

        if (v24.u32[0] > 1uLL)
        {
          if (v28 >= __p[1])
          {
            v28 %= __p[1];
          }
        }

        else
        {
          v28 &= __p[1] - 1;
        }

        if (v28 != v25)
        {
          goto LABEL_41;
        }

LABEL_40:
        v27 = *v27;
        if (!v27)
        {
          goto LABEL_41;
        }
      }

      if (*(v27 + 4) != v23)
      {
        goto LABEL_40;
      }

      v22 = *v22;
    }

    while (v22);
LABEL_43:
    _Block_object_dispose(buf, 8);
    std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::__deallocate_node(v89);
    v29 = v88;
    *&v88 = 0;
    if (v29)
    {
      operator delete(v29);
    }

    v30 = v67;
    for (i = v58; v30; v30 = *v30)
    {
      v31 = HALS_ObjectMap::CopyObjectByObjectID(*(v30 + 4));
      v32 = v31;
      if (v31)
      {
        v69 = 0;
        v70 = &v69;
        v71 = 0x2000000000;
        LOBYTE(v72) = 1;
        v65[0] = 0;
        v65[1] = v65;
        v65[2] = 0x2000000000;
        v65[3] = v31;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4002000000;
        v86 = __Block_byref_object_copy__311;
        v87 = __Block_byref_object_dispose__312;
        std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](&v88, v30 + 3);
        v77 = MEMORY[0x1E69E9820];
        v78 = 0x40000000;
        v79 = ___ZN11HALS_Device26MirrorOtherDeviceClientDSPEbPKS__block_invoke;
        v80 = &unk_1E86793B0;
        v81 = &v69;
        v82 = v65;
        v83 = buf;
        v84 = a2;
        v33 = (*(*a2 + 64))(a2);
        HALB_CommandGate::ExecuteCommand(v33, &v77);
        _Block_object_dispose(buf, 8);
        std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(&v88 + 1));
        _Block_object_dispose(v65, 8);
        _Block_object_dispose(&v69, 8);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 6136;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Can't add invalid client DSP to device.", buf, 0x12u);
      }

      HALS_ObjectMap::ReleaseObject(v32, v34);
    }

    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      v35 = *(v17 + 78);
      if (v35)
      {
        *buf = &unk_1F598E7E8;
        *&buf[8] = v35;
        *&buf[16] = a2;
        v86 = buf;
        std::mutex::lock((v35 + 32));
        if (*(v35 + 96) != v35 + 104)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
        }

        std::mutex::unlock((v35 + 32));
        i = v58;
        std::__function::__value_func<void ()>::~__value_func[abi:ne200100](buf);
      }
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::__deallocate_node(v67);
    v36 = __p[0];
    __p[0] = 0;
    if (v36)
    {
      operator delete(v36);
    }

LABEL_59:
    HALS_ObjectMap::ReleaseObject(v17, v19);
    ++v9;
  }

  while (v9 != NumberDevices);
LABEL_60:
  if ((*(*a2 + 232))(a2) && HALS_MetaManager::sInstance && *(a2 + 5) != 1633773415)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v67 = 0;
    HALS_DeviceManager::CopyDeviceList(HALS_MetaManager::sInstance, __p, 1, 0);
    v38 = __p[0];
    v62 = __p[1];
    if (__p[0] != __p[1])
    {
      v61 = MEMORY[0x1E69E9820];
      do
      {
        v39 = *v38;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4802000000;
        v86 = __Block_byref_object_copy__6128;
        v87 = __Block_byref_object_dispose__6129;
        v88 = 0u;
        v89 = 0u;
        v77 = 0;
        v78 = &v77;
        v79 = 0x4002000000;
        v80 = __Block_byref_object_copy__1;
        v81 = __Block_byref_object_dispose__2;
        v83 = 0;
        v84 = 0;
        v82 = 0;
        v69 = v61;
        v70 = 0x40000000;
        v71 = ___ZN15HALS_MetaDevice17RealDeviceArrivedEP11HALS_Device_block_invoke;
        v72 = &unk_1E8674A08;
        v75 = v39;
        v76 = a2;
        v73 = buf;
        v74 = &v77;
        v40 = (*(*v39 + 64))(v39);
        HALB_CommandGate::ExecuteCommand(v40, &v69);
        v41 = *(*&buf[8] + 40);
        v42 = *(*&buf[8] + 48);
        if (v41 != v42)
        {
          HALS_Object::PropertiesChanged(v39, v39[4], 0, -1431655765 * ((v42 - v41) >> 2), v41);
        }

        v43 = *(v78 + 40);
        v44 = *(v78 + 48) - v43;
        if ((v44 & 0x1FFFFFFFE0) != 0)
        {
          v45 = 0;
          v46 = 0;
          do
          {
            if (v46 >= v44 >> 5)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            v47 = v43 + v45;
            v48 = HALS_ObjectMap::CopyObjectByObjectID(*(v43 + v45 + 24));
            v50 = v48;
            v51 = *(v47 + 8);
            if (*v47 != v51 && v48 != 0)
            {
              HALS_Object::PropertiesChanged(v39, *(v48 + 16), 0, -1431655765 * ((v51 - *v47) >> 2), *v47);
            }

            HALS_ObjectMap::ReleaseObject(v50, v49);
            ++v46;
            v43 = *(v78 + 40);
            v44 = *(v78 + 48) - v43;
            v45 += 32;
          }

          while (v46 < (v44 >> 5));
        }

        _Block_object_dispose(&v77, 8);
        v65[0] = &v82;
        std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v65);
        _Block_object_dispose(buf, 8);
        if (v88)
        {
          *(&v88 + 1) = v88;
          operator delete(v88);
        }

        ++v38;
      }

      while (v38 != v62);
    }

    HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(__p, v37);
    i = v58;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4002000000;
  v86 = __Block_byref_object_copy__46;
  v87 = __Block_byref_object_dispose__47;
  v88 = 0uLL;
  *&v89 = 0;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 0x40000000;
  v63[2] = ___ZN11HALS_System13DeviceArrivedEP11HALS_Device_block_invoke;
  v63[3] = &unk_1E8675A18;
  v63[4] = buf;
  v63[5] = i;
  v53 = (*&(*i)[16]._os_unfair_lock_opaque)(i);
  HALB_CommandGate::ExecuteCommand(v53, v63);
  v54 = *(*&buf[8] + 40);
  v55 = *(*&buf[8] + 48);
  while (v54 != v55)
  {
    (*(**(*v54 + 104) + 120))(*(*v54 + 104), a2);
    v54 += 8;
  }

  _Block_object_dispose(buf, 8);
  v77 = &v88;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v77);
  v56 = *MEMORY[0x1E69E9840];
}

void sub_1DE4A5D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void **a51)
{
  _Block_object_dispose((v51 - 224), 8);
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a51);
  _Unwind_Resume(a1);
}

void sub_1DE4A5DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, HALS_ObjectMap *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::mutex::unlock((a10 + 32));
  if (v37)
  {
    operator delete(v37);
  }

  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v38 - 224);
  std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::~__hash_table(&a37);
  HALS_ObjectMap::ReleaseObject(a13, v40);
  _Unwind_Resume(a1);
}

void sub_1DE4A5E3C()
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v0[4]);
  operator delete(v0);
  JUMPOUT(0x1DE4A5EB4);
}

void sub_1DE4A5E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a43, 8);
  HALS_ObjectMap::ReleaseObject(v43, v44);
  JUMPOUT(0x1DE4A5F18);
}

void sub_1DE4A5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  _Block_object_dispose(&a51, 8);
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Block_object_dispose((v51 - 224), 8);
  v52 = *(v51 - 184);
  if (v52)
  {
    *(v51 - 176) = v52;
    operator delete(v52);
  }

  JUMPOUT(0x1DE4A5E94);
}

void sub_1DE4A5EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::~__hash_table(&a37);
  _Block_object_dispose((v37 - 224), 8);
  JUMPOUT(0x1DE4A5F1CLL);
}

void sub_1DE4A5ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::~__hash_table(&a37);
  HALS_ObjectMap::ReleaseObject(v37, v38);
  JUMPOUT(0x1DE4A5F60);
}

void sub_1DE4A5EE0()
{
  _Block_object_dispose((v0 - 224), 8);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v0 - 176));
  JUMPOUT(0x1DE4A5EF8);
}

void sub_1DE4A5F30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE4A5F40(uint64_t a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, HALS_ObjectMap **a43)
{
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&a43, a2);
  _Block_object_dispose((v44 - 224), 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v43 + 40), v45);
  JUMPOUT(0x1DE4A5F60);
}

void ___ZN11HALS_System13DeviceArrivedEP11HALS_Device_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void HALS_System::DeviceDied(HALS_System *this, HALS_Device *a2)
{
  if (AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    v4 = *(this + 218);
    v5 = *(a2 + 4);
    v6 = *(a2 + 7);
    v7 = (*(*a2 + 216))(a2);
    v43 = v7;
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      if (v8 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    HALS_IOContext_Manager::device_died(v4, v5, v6, &v43);
    if (v43)
    {
      CFRelease(v43);
    }
  }

  if ((*(*a2 + 232))(a2))
  {
    v9 = HALS_MetaManager::sInstance;
    if (HALS_MetaManager::sInstance)
    {
      if (*(a2 + 5) != 1633773415)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        HALS_DeviceManager::CopyDeviceList(HALS_MetaManager::sInstance, &v31, 1, 0);
        v11 = v31;
        v12 = v32;
        if (v31 != v32)
        {
          v13 = MEMORY[0x1E69E9820];
          do
          {
            v14 = *v11;
            v37 = v13;
            v38 = 0x40000000;
            v39 = ___ZN16HALS_MetaManager10DeviceDiedEP11HALS_Device_block_invoke;
            v40 = &__block_descriptor_tmp_11_4423;
            v41 = v14;
            v42[0] = a2;
            v15 = (*(*v9 + 64))(v9);
            HALB_CommandGate::ExecuteCommand(v15, &v37);
            ++v11;
          }

          while (v11 != v12);
        }

        HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v31, v10);
      }
    }
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x4002000000;
  v40 = __Block_byref_object_copy__48;
  v41 = __Block_byref_object_dispose__49;
  memset(v42, 0, sizeof(v42));
  v31 = 0;
  v32 = &v31;
  v33 = 0x4002000000;
  v34 = __Block_byref_object_copy__46;
  v35 = __Block_byref_object_dispose__47;
  memset(v36, 0, sizeof(v36));
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 0x40000000;
  v30[2] = ___ZN11HALS_System10DeviceDiedEP11HALS_Device_block_invoke;
  v30[3] = &unk_1E8675A40;
  v30[5] = &v31;
  v30[6] = this;
  v30[4] = &v37;
  v16 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v16, v30);
  v18 = *(v38 + 40);
  v19 = *(v38 + 48);
  if (v18 != v19)
  {
    v20 = MEMORY[0x1E69E9820];
    do
    {
      v21 = *v18;
      v22 = *(a2 + 4);
      v44[0] = v20;
      v44[1] = 0x40000000;
      v44[2] = ___ZN11HALS_Client28StopListeningToAllPropertiesEj_block_invoke;
      v44[3] = &__block_descriptor_tmp_12_3132;
      v44[4] = v21;
      v45 = v22;
      v23 = (*(*v21 + 8))(v21);
      HALB_CommandGate::ExecuteCommand(v23, v44);
      ++v18;
    }

    while (v18 != v19);
  }

  v24 = v32[5];
  v25 = v32[6];
  while (v24 != v25)
  {
    platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(InternalIOContextID);
    if ((*(*platform_behaviors + 16))(platform_behaviors) != 2)
    {
      v27 = *v24;
LABEL_22:
      v28 = (*(*a2 + 208))(a2);
      InternalIOContextID = (*(*v27[13] + 128))(v27[13], v28);
      goto LABEL_23;
    }

    InternalIOContextID = HALS_Device::GetInternalIOContextID(a2);
    v27 = *v24;
    if (InternalIOContextID != *(*v24 + 4))
    {
      goto LABEL_22;
    }

LABEL_23:
    ++v24;
  }

  _Block_object_dispose(&v31, 8);
  v44[0] = v36;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](v44);
  _Block_object_dispose(&v37, 8);
  v31 = v42;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v31);
}

void sub_1DE4A6430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  __cxa_free_exception(v24);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v25 - 168));
  _Unwind_Resume(a1);
}

void ___ZN11HALS_System10DeviceDiedEP11HALS_Device_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[4] + 8) + 40;
  if (v3 != v2 + 1640)
  {
    std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(v3, *(v2 + 1640), *(v2 + 1648), (*(v2 + 1648) - *(v2 + 1640)) >> 3);
  }

  v4 = *(a1[5] + 8) + 40;
  if (v4 != v2 + 1704)
  {
    v5 = *(v2 + 1704);
    v6 = *(v2 + 1712);

    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v4, v5, v6, (v6 - v5) >> 3);
  }
}

uint64_t HALS_System::GetCurrentDeviceArrivalTime(HALS_System *this)
{
  v4[0] = 0;
  v4[1] = 0;
  HALS_System::GetInstance(&v5, 0, v4);
  v1 = *(*(v5 + 1776) + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (HALS_System::sIsInitialized == 1)
  {
    mach_absolute_time();
    v3[0] = 0;
    v3[1] = 0;
    HALS_System::GetInstance(&v5, 0, v3);
    v1 = *(*(v5 + 1776) + 48);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  return v1;
}

void HALS_System::CheckForDefaultDeviceChanges(HALS_PlatformBehaviors *a1, uint64_t *a2)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(a1);
  if ((*(*platform_behaviors + 56))(platform_behaviors) == 1 && HALS_System::sIsInitialized == 1)
  {
    v5 = *(a1 + 202);
    v6 = *(a1 + 203);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v14, *a2, a2[1], (a2[1] - *a2) >> 2);
    v7 = *(a1 + 24);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1174405120;
    v9[2] = ___ZN11HALS_System28CheckForDefaultDeviceChangesERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke;
    v9[3] = &__block_descriptor_tmp_99;
    v9[4] = v5;
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    __p = 0;
    v12 = 0;
    v13 = 0;
    v8 = v14;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v14, v15, (v15 - v14) >> 2);
    AMCP::Utility::Dispatch_Queue::after(v7, v9);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v8)
    {
      operator delete(v8);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_1DE4A677C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v15)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if (!v14)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_weak(v14);
  goto LABEL_5;
}

void sub_1DE4A67B8()
{
  if (!v0)
  {
    JUMPOUT(0x1DE4A6798);
  }

  JUMPOUT(0x1DE4A6790);
}

void ___ZN11HALS_System28CheckForDefaultDeviceChangesERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke(void *a1)
{
  buf[41] = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      v3 = v2;
      v4 = a1[4];
      if (v4)
      {
        v55[0] = 0;
        v55[1] = 0;
        HALS_System::GetInstance(buf, 0, v55);
        v5 = buf[0];
        if (buf[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
        }

        if (v5)
        {
          v54[0] = 0;
          v54[1] = 0;
          HALS_System::GetInstance(buf, 0, v54);
          v6 = buf[0];
          std::mutex::lock((buf[0] + 48));
          if (buf[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
          }

          if (a1[6] != a1[7])
          {
            if (*(v4 + 106) == 1)
            {
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (LODWORD(buf[0]) = 136315394, *(buf + 4) = "HALS_DefaultDeviceManager.cpp", WORD2(buf[1]) = 1024, *(&buf[1] + 6) = 1233, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u), (*(v4 + 106) & 1) != 0))
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf[0]) = 136315394;
                  *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                  WORD2(buf[1]) = 1024;
                  *(&buf[1] + 6) = 1234;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges(newdevices):     --->>>", buf, 0x12u);
                }
              }
            }

            v7 = 0;
            v50 = (v4 + 344);
            v51 = v4 + 8;
            v48 = (v4 + 136);
            v49 = (v4 + 240);
            v52 = v4;
            while (1)
            {
              v8 = dword_1DE7581F0[v7];
              v63 = 0;
              v64 = &unk_1F5991188;
              cf = 0;
              memset(v66, 0, 284);
              *&v66[71] = 0x600000005;
              v66[73] = 0;
              LOWORD(v66[74]) = 0;
              v9 = a1[6];
              v10 = a1[7];
              while (v9 != v10)
              {
                DeviceInfo::DeviceInfo(buf, *v9);
                if (v8 > 1934587251)
                {
                  if (v8 != 1936224868)
                  {
                    v11 = 1934587252;
                    goto LABEL_23;
                  }

LABEL_24:
                  if (!LODWORD(buf[39]))
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_27;
                }

                if (v8 != 1682533920)
                {
                  v11 = 1682929012;
LABEL_23:
                  if (v8 != v11)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_24;
                }

                if (!HIDWORD(buf[38]))
                {
                  goto LABEL_29;
                }

LABEL_27:
                if (LODWORD(buf[37]) == 1668506482)
                {
LABEL_29:
                  v63 = buf[0];
                  v12 = cf;
                  cf = buf[2];
                  buf[2] = v12;
                  memcpy(v66, &buf[3], 0x12AuLL);
                  OS::CF::UntypedObject::~UntypedObject(&buf[1]);
                  break;
                }

                OS::CF::UntypedObject::~UntypedObject(&buf[1]);
                ++v9;
              }

              if (!v63 || (v66[74] & 0x100) != 0)
              {
                goto LABEL_32;
              }

              for (i = 0; i != 72; i += 24)
              {
                v14 = &v59 + i;
                *v14 = &unk_1F5991188;
                *(v14 + 1) = 0;
                *(v14 + 4) = 0;
              }

              v56 = &unk_1F5991188;
              v57 = 0;
              v58 = 0;
              buf[0] = v4;
              LODWORD(buf[1]) = HALB_Mutex::Lock(v4);
              switch(v8)
              {
                case 1682533920:
                  v27 = &v59;
                  v28 = v48;
                  v29 = 3;
                  do
                  {
                    v30 = OS::CF::String::operator=(v27, *(v28 - 1));
                    v31 = *v28;
                    v28 += 3;
                    *(v30 + 16) = v31;
                    v27 = (v30 + 24);
                    --v29;
                  }

                  while (v29);
                  v20 = 192;
                  v21 = 208;
                  goto LABEL_48;
                case 1682929012:
                  v22 = &v59;
                  v23 = v49;
                  v24 = 3;
                  do
                  {
                    v25 = OS::CF::String::operator=(v22, *(v23 - 1));
                    v26 = *v23;
                    v23 += 3;
                    *(v25 + 16) = v26;
                    v22 = (v25 + 24);
                    --v24;
                  }

                  while (v24);
                  v20 = 296;
                  v21 = 312;
LABEL_48:
                  OS::CF::String::operator=(&v56, *&v51[v20]);
                  v58 = *(v4 + v21);
                  break;
                case 1934587252:
                  v15 = &v59;
                  v16 = v50;
                  v17 = 3;
                  do
                  {
                    v18 = OS::CF::String::operator=(v15, *(v16 - 1));
                    v19 = *v16;
                    v16 += 3;
                    *(v18 + 16) = v19;
                    v15 = (v18 + 24);
                    --v17;
                  }

                  while (v17);
                  v20 = 400;
                  v21 = 416;
                  goto LABEL_48;
              }

              HALB_Mutex::Locker::~Locker(buf);
              PreferredDefaultDevice = HALS_DefaultDeviceManager::FindPreferredDefaultDevice(v4, &v56, &v59, v8);
              v33 = PreferredDefaultDevice;
              v34 = v57 != 0;
              if (!v57 && PreferredDefaultDevice)
              {
                DeviceInfo::DeviceInfo(buf, PreferredDefaultDevice);
                if (v8 == 1934587252 || v8 == 1682929012)
                {
                  v35 = SLODWORD(buf[39]) < 4;
                  goto LABEL_56;
                }

                if (v8 == 1682533920)
                {
                  v35 = SHIDWORD(buf[38]) < 3;
LABEL_56:
                  v34 = v35;
                }

                else
                {
                  v34 = 0;
                }

                OS::CF::UntypedObject::~UntypedObject(&buf[1]);
              }

              OS::CF::UntypedObject::~UntypedObject(&v56);
              for (j = 48; j != -24; j -= 24)
              {
                OS::CF::UntypedObject::~UntypedObject((&v59 + j));
              }

              v4 = v52;
              if (v33)
              {
                if (v63 != v33)
                {
                  DefaultDevice = HALS_DefaultDeviceManager::GetDefaultDevice(v52, v8);
                  if (v34 || v66[68] == 1651274862 && DefaultDevice == v63)
                  {
                    if (cf)
                    {
                      if (v8 > 1934587251)
                      {
                        if (v8 == 1934587252)
                        {
                          if ((v66[73] & 0x10000) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v8 != 1936224868 || (v66[73] & 0x1000000) == 0)
                        {
                          goto LABEL_32;
                        }
                      }

                      else if (v8 == 1682533920)
                      {
                        if (LOBYTE(v66[73]) != 1)
                        {
                          goto LABEL_32;
                        }
                      }

                      else if (v8 != 1682929012 || (v66[73] & 0x100) == 0)
                      {
                        goto LABEL_32;
                      }

                      if (v63)
                      {
                        v62[0] = HIBYTE(v8);
                        v62[1] = BYTE2(v8);
                        v62[2] = BYTE1(v8);
                        v62[3] = v8;
                        v62[4] = 0;
                        v38 = &v66[69];
                        if (v8 != 1682533920)
                        {
                          v38 = &v66[70];
                        }

                        v39 = *v38;
                        v61[0] = HIBYTE(v39);
                        v61[1] = BYTE2(v39);
                        v61[2] = BYTE1(v39);
                        v61[3] = v39;
                        v61[4] = 0;
                        if (*(v52 + 106) == 1)
                        {
                          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (LODWORD(buf[0]) = 136315394, *(buf + 4) = "HALS_DefaultDeviceManager.cpp", WORD2(buf[1]) = 1024, *(&buf[1] + 6) = 1482, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u), (*(v52 + 106) & 1) != 0))
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                            {
                              LODWORD(buf[0]) = 136315650;
                              *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                              WORD2(buf[1]) = 1024;
                              *(&buf[1] + 6) = 1483;
                              WORD1(buf[2]) = 2082;
                              *(&buf[2] + 4) = v62;
                              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetTransientDefaultDeviceQuietly: '%{public}s' --->>>", buf, 0x1Cu);
                            }
                          }
                        }

                        if (*(v52 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(buf[0]) = 136316418;
                          *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                          WORD2(buf[1]) = 1024;
                          *(&buf[1] + 6) = 1484;
                          WORD1(buf[2]) = 2082;
                          *(&buf[2] + 4) = v62;
                          WORD2(buf[3]) = 1024;
                          *(&buf[3] + 6) = v63;
                          WORD1(buf[4]) = 2082;
                          *(&buf[4] + 4) = v66;
                          WORD2(buf[5]) = 2082;
                          *(&buf[5] + 6) = v61;
                          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetTransientDefaultDeviceQuietly: '%{public}s' | %d: '%{public}s'/'%{public}s'", buf, 0x36u);
                        }

                        v59 = v52;
                        v60 = HALB_Mutex::Lock(v52);
                        if (v8 > 1934587251)
                        {
                          OS::CF::UntypedObject::UntypedObject(&v56, cf);
                          v56 = &unk_1F5991188;
                          v42 = v66[70];
                          OS::CF::UntypedObject::UntypedObject(buf, v57);
                          LODWORD(buf[2]) = v42;
                          if (v8 == 1934587252)
                          {
                            v46 = *(v52 + 51);
                            *(v52 + 51) = buf[1];
                            buf[0] = &unk_1F5991188;
                            buf[1] = v46;
                            *(v52 + 104) = v42;
                          }

                          else
                          {
                            v43 = *(v52 + 55);
                            *(v52 + 55) = buf[1];
                            buf[0] = &unk_1F5991188;
                            buf[1] = v43;
                            *(v52 + 112) = v42;
                          }
                        }

                        else
                        {
                          OS::CF::UntypedObject::UntypedObject(&v56, cf);
                          v56 = &unk_1F5991188;
                          if (v8 == 1682533920)
                          {
                            v44 = v66[69];
                            OS::CF::UntypedObject::UntypedObject(buf, v57);
                            LODWORD(buf[2]) = v44;
                            v45 = *(v52 + 25);
                            *(v52 + 25) = buf[1];
                            buf[0] = &unk_1F5991188;
                            buf[1] = v45;
                            *(v52 + 52) = v44;
                          }

                          else
                          {
                            v40 = v66[70];
                            OS::CF::UntypedObject::UntypedObject(buf, v57);
                            LODWORD(buf[2]) = v40;
                            v41 = *(v52 + 38);
                            *(v52 + 38) = buf[1];
                            buf[0] = &unk_1F5991188;
                            buf[1] = v41;
                            *(v52 + 78) = v40;
                          }
                        }

                        v4 = v52;
                        OS::CF::UntypedObject::~UntypedObject(buf);
                        OS::CF::UntypedObject::~UntypedObject(&v56);
                        if (*(v52 + 106) == 1)
                        {
                          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (LODWORD(buf[0]) = 136315650, *(buf + 4) = "HALS_DefaultDeviceManager.cpp", WORD2(buf[1]) = 1024, *(&buf[1] + 6) = 1506, WORD1(buf[2]) = 2082, *(&buf[2] + 4) = v62, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetTransientDefaultDeviceQuietly: '%{public}s' <<<---", buf, 0x1Cu), (*(v52 + 106) & 1) != 0))
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                            {
                              LODWORD(buf[0]) = 136315394;
                              *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                              WORD2(buf[1]) = 1024;
                              *(&buf[1] + 6) = 1507;
                              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u);
                            }
                          }
                        }

                        HALB_Mutex::Locker::~Locker(&v59);
                      }
                    }
                  }
                }
              }

LABEL_32:
              OS::CF::UntypedObject::~UntypedObject(&v64);
              if (++v7 == 4)
              {
                if (*(v4 + 106))
                {
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (LODWORD(buf[0]) = 136315394, *(buf + 4) = "HALS_DefaultDeviceManager.cpp", WORD2(buf[1]) = 1024, *(&buf[1] + 6) = 1277, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges(newdevices):     <<<---", buf, 0x12u), (*(v4 + 106) & 1) != 0))
                  {
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      LODWORD(buf[0]) = 136315394;
                      *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                      WORD2(buf[1]) = 1024;
                      *(&buf[1] + 6) = 1278;
                      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u);
                    }
                  }
                }

                break;
              }
            }
          }

          HALS_DefaultDeviceManager::CheckForChanges(v4);
          std::mutex::unlock((v6 + 48));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

void sub_1DE4A7484(_Unwind_Exception *a1, int a2)
{
  v5 = v3;
  if (a2)
  {
    std::mutex::unlock((v2 + 48));
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE4A7448);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrI25HALS_DefaultDeviceManagerEE48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(void *a1)
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

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t __copy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrI25HALS_DefaultDeviceManagerEE48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(void *a1, void *a2)
{
  v2 = a2[5];
  a1[4] = a2[4];
  a1[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 2);
}

void sub_1DE4A75EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK11HALS_System20CopyClientByBundleIDERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = *(v2 + 1640);
  while (v4 != *(v2 + 1648))
  {
    v5 = *v4;
    v6 = *(*v4 + 31);
    if (!v6)
    {
      cf = 0;
LABEL_26:
      v5 = 0;
      ++v4;
      goto LABEL_27;
    }

    CFRetain(v6);
    v7 = *(v5 + 31);
    cf = v7;
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!cf)
    {
      goto LABEL_26;
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    v10 = *(v3 + 23);
    if (v10 >= 0)
    {
      v11 = *(v3 + 23);
    }

    else
    {
      v11 = v3[1];
    }

    v12 = v19;
    v13 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v12 = __p[1];
    }

    if (v11 == v12)
    {
      if (v10 >= 0)
      {
        v14 = v3;
      }

      else
      {
        v14 = *v3;
      }

      if ((v19 & 0x80u) == 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      v16 = memcmp(v14, v15, v11) == 0;
      if ((v13 & 0x80000000) == 0)
      {
LABEL_23:
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v16 = 0;
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    operator delete(__p[0]);
    if (!v16)
    {
      goto LABEL_26;
    }

LABEL_24:
    HALS_ObjectMap::RetainObject(v5, v9);
LABEL_27:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      goto LABEL_32;
    }
  }

  v5 = 0;
LABEL_32:
  *(*(a1[4] + 8) + 24) = v5;
}

void sub_1DE4A778C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_System::CopyClientByObjectID(HALS_System *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_System20CopyClientByObjectIDEj_block_invoke;
  v5[3] = &unk_1E8675B40;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void ___ZNK11HALS_System20CopyClientByObjectIDEj_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 1640);
  v5 = *(v3 + 1648);
  if (v4 == v5)
  {
LABEL_4:
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 4) == *(a1 + 48))
      {
        break;
      }

      if (++v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  *(*(*(a1 + 32) + 8) + 24) = v6;
}

void sub_1DE4A7920(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A7908);
}

void HALS_System::ProcessPropertyChanged(HALS_System *this, int a2, int a3, int a4, int a5)
{
  if (a5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke;
    v11[3] = &__block_descriptor_tmp_113_8135;
    v11[4] = this;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v15 = 0;
    v5 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v5, v11);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_115_8136;
    v6[4] = this;
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = 0;
    AMCP::Utility::Dispatch_Queue::async(this + 880, v6);
  }
}

void ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke_3;
  v3[3] = &__block_descriptor_tmp_114;
  v3[4] = v1;
  v4 = *(a1 + 40);
  v2 = (*(*v1 + 64))(v1);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void HALS_System::_ProcessPropertyChanged(HALS_ObjectMap **this, HALS_Object *a2, int a3, int a4, int a5, int a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    v10 = this;
    v11 = this;
    while (1)
    {
      v12 = *v11;
      if (*(*v11 + 16) == a3)
      {
        break;
      }

      v11 = (v11 + 8);
      if (v11 == a2)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v13 = *v10;
      HALS_ObjectMap::RetainObject(*v10, a2);
      v16[0] = a4;
      v16[1] = a5;
      v16[2] = a6;
      (*(*v13 + 168))(v13, v12, 0, 1, v16);
      HALS_ObjectMap::ReleaseObject(v13, v14);
      ++v10;
    }

    while (v10 != a2);
  }

LABEL_7:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_System::CopyTapByUUID(HALS_System *this, const __CFString *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_System13CopyTapByUUIDEPK10__CFString_block_invoke;
  v5[3] = &unk_1E8675CD8;
  v5[4] = &v6;
  v5[5] = this;
  v5[6] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void ___ZNK11HALS_System13CopyTapByUUIDEPK10__CFString_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    CFRetain(*(a1 + 48));
    cf = v2;
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFRetain(v2);
    v7 = v2;
    v5 = HALS_System::_CopyTapByUID(v3, &v7, 0);
    CFRelease(v2);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

void sub_1DE4A7DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void ___ZN11HALS_System15CreateIOContextEP11HALS_ClientPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  operator new();
}

void sub_1DE4A7F68(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HALS_ObjectMap *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  HALS_ObjectMap::ReleaseObject(v21, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 __Block_byref_object_copy__164(void *a1, uint64_t a2)
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

void ___ZNK11HALS_System23UpdateTapsForNewContextEP14HALS_IOContext_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 1664);
  for (i = *(v1 + 1672); v2 != i; ++v2)
  {
    v5 = *v2;
    v16 = v5;
    v7 = *(v5 + 33);
    v6 = *(v5 + 34);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_lock((v7 + 96));
    v8 = *(v7 + 120);
    v14 = 0;
    v15 = 0;
    v13 = 0;
    v9 = 0;
    if (v8)
    {
      v10 = v8;
      do
      {
        ++v9;
        v10 = *v10;
      }

      while (v10);
    }

    std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(&v13, v8, v9);
    os_unfair_lock_unlock((v7 + 96));
    v11 = v13;
    if (v13 != v14)
    {
      std::vector<HALS_Device *>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 40, &v16);
      HALS_ObjectMap::RetainObject(v5, v12);
    }

    if (v11)
    {
      operator delete(v11);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1DE4A8104(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

HALS_ObjectMap ***HALS_ArrayReleaser<HALS_Tap>::~HALS_ArrayReleaser(HALS_ObjectMap ***a1, HALS_Object *a2)
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

uint64_t std::vector<HALS_Releaser<HALS_IOContext>>::__emplace_back_slow_path<HALS_Releaser<HALS_IOContext>>(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  v18 = a1;
  if (v9)
  {
    std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v9);
  }

  v15 = 0;
  v16 = (8 * v5);
  *v16 = *a2;
  *a2 = 0;
  v17 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>(a1, v3, v4, 0);
  v10 = *a1;
  *a1 = 0;
  v11 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  v15 = v10;
  v16 = v10;
  std::__split_buffer<HALS_Releaser<HALS_IOContext>>::~__split_buffer(&v15, v12);
  return v14;
}

void sub_1DE4A8294(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<HALS_Releaser<HALS_IOContext>>::~__split_buffer(va, a2);
  _Unwind_Resume(a1);
}

void sub_1DE4A82CC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_System::SetIOContextIsRunning(HALS_System *this, int a2, char a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (HALS_System::sIsInitialized)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZN11HALS_System21SetIOContextIsRunningEjb_block_invoke;
    v8[3] = &__block_descriptor_tmp_152;
    v8[4] = this;
    v9 = a2;
    v10 = a3;
    AMCP::Utility::Dispatch_Queue::async(this + 208, v8);
  }

  else
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "HALS_System.cpp";
      v13 = 1024;
      v14 = 3266;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Cannot send IO Context Is Running on an uninitialized system.", buf, 0x12u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void ___ZN11HALS_System21SetIOContextIsRunningEjb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(v3);
  v7 = v5;
  if (v5)
  {
    v9 = HALS_ObjectMap::CopyObjectByObjectID(**(v5 + 72));
    if (v9)
    {
      v10 = HALS_ObjectMap::CopyObjectByObjectID(v3);
      v12 = v10;
      if (v10 && (*(*v10 + 232))(v10))
      {
        v29 = 0;
        v30 = &v29;
        v31 = 0x2000000000;
        v32 = 0;
        v22 = MEMORY[0x1E69E9820];
        v23 = 0x40000000;
        v24 = ___ZN11HALS_Client46UpdateStartCountAndMaybeNotifyProcessIsRunningEjb_block_invoke;
        v25 = &unk_1E8673998;
        v26 = &v29;
        v27 = v9;
        v28 = v4;
        v13 = (*(*v9 + 64))(v9);
        HALB_CommandGate::ExecuteCommand(v13, &v22);
        if (*(v30 + 24) == 1)
        {
          v19[0] = 0;
          v19[1] = 0;
          HALS_System::GetInstance(&v20, 0, v19);
          if (v20)
          {
            HALS_System::ProcessPropertyChanged(v20, v9[4], 1885958719, 1735159650, 1);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }

        _Block_object_dispose(&v29, 8);
      }

      HALS_ObjectMap::ReleaseObject(v12, v11);
    }

    HALS_ObjectMap::ReleaseObject(v9, v8);
  }

  HALS_ObjectMap::ReleaseObject(v7, v6);
  ServerBooleanSetting = HALS_SettingsManager::ReadServerBooleanSetting(v2[222], @"AllowStackShotsDuringIO", 0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  LOBYTE(v25) = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___ZN11HALS_System21SetIOContextIsRunningEjb_block_invoke_2;
  v16[3] = &unk_1E8675DA8;
  v16[5] = &v29;
  v16[6] = v2;
  v17 = *(a1 + 44);
  v18 = ServerBooleanSetting;
  v16[4] = &v22;
  v15 = (*(*v2 + 8))(v2);
  HALB_CommandGate::ExecuteCommand(v15, v16);
  if (*(v23 + 24) == 1)
  {
    TellKernelAudioIOIsRunning(*(v30 + 24));
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v22, 8);
}

void sub_1DE4A86F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Block_object_dispose((v24 - 112), 8);
  HALS_ObjectMap::ReleaseObject(v23, v26);
  HALS_ObjectMap::ReleaseObject(v22, v27);
  HALS_ObjectMap::ReleaseObject(v21, v28);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A86D8);
}

uint64_t ___ZN11HALS_System21SetIOContextIsRunningEjb_block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(v1 + 1728);
  if (*(result + 56) == 1)
  {
    *(v1 + 1728) = v2 + 1;
    if (!v2 && (*(result + 57) & 1) == 0)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
      *(*(*(result + 40) + 8) + 24) = 1;
LABEL_12:
      *(v1 + 1736) = *(*(*(result + 40) + 8) + 24);
      return result;
    }
  }

  else
  {
    v3 = v2 - 1;
    *(v1 + 1728) = v3;
    if (!v3 && (*(result + 57) & 1) == 0)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
      *(*(*(result + 40) + 8) + 24) = 0;
      goto LABEL_12;
    }
  }

  if (*(v1 + 1736) == 1 && *(result + 57) == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *(*(*(result + 40) + 8) + 24) = 0;
    *(v1 + 1736) = 0;
  }

  return result;
}

void ___ZN11HALS_System37IsUnderlyingIOContextRunningForDeviceEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void ___ZNK11HALS_System46CountRunningIOContextsForDeviceExcludingClientEjP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void ___ZNK11HALS_System32GetSmallestActiveBufferFrameSizeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void ___ZNK11HALS_System23GetActiveIOContextsInfoEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void std::vector<IOContextInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 17);
        v4 -= 5;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void HALS_System::RemoveTapFromAllContexts(uint64_t a1, uint64_t *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4002000000;
  v13 = __Block_byref_object_copy__46;
  v14 = __Block_byref_object_dispose__47;
  memset(v15, 0, sizeof(v15));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK11HALS_System24RemoveTapFromAllContextsENSt3__110shared_ptrI13HALS_MultiTapEE_block_invoke;
  v9[3] = &unk_1E8675EB8;
  v9[4] = &v10;
  v9[5] = a1;
  v3 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v3, v9);
  v4 = v11[5];
  for (i = v11[6]; v4 != i; ++v4)
  {
    v6 = *v4;
    v7 = *a2;
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOContext::RemoveTap(*(v6 + 104), v7, v8);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  _Block_object_dispose(&v10, 8);
  v16 = v15;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_1DE4A8B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  *(v9 - 56) = v8;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v9 - 56));
  _Unwind_Resume(a1);
}

void ___ZNK11HALS_System24RemoveTapFromAllContextsENSt3__110shared_ptrI13HALS_MultiTapEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

uint64_t ___ZN11HALS_System31ServerHighPriorityAsyncDispatchENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void sub_1DE4A8BBC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t AMCP::DAL::Container::get_data_handler(AMCP::DAL *a1, uint64_t a2, double a3)
{
  AMCP::DAL::demand_map(a1);
  if (!*(&AMCP::DAL::demand_map(void)::s_map + 1))
  {
    goto LABEL_17;
  }

  v5 = *(a2 + 8);
  v6 = vcnt_s8(*(&AMCP::DAL::demand_map(void)::s_map + 8));
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(a2 + 8);
    if (*(&AMCP::DAL::demand_map(void)::s_map + 1) <= v5)
    {
      v7 = v5 % DWORD2(AMCP::DAL::demand_map(void)::s_map);
    }
  }

  else
  {
    v7 = (DWORD2(AMCP::DAL::demand_map(void)::s_map) - 1) & v5;
  }

  v8 = *(AMCP::DAL::demand_map(void)::s_map + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v5)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *(&AMCP::DAL::demand_map(void)::s_map + 1))
      {
        v10 %= *(&AMCP::DAL::demand_map(void)::s_map + 1);
      }
    }

    else
    {
      v10 &= *(&AMCP::DAL::demand_map(void)::s_map + 1) - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_17;
    }

LABEL_16:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (*(v9 + 4) != v5)
  {
    goto LABEL_16;
  }

  v13 = a3;
  v11 = v9[6];
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v11 + 48))(v11, a2, &v13);
}

void sub_1DE4A8DA0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void AMCP::DAL::demand_map(AMCP::DAL *this)
{
  {
    if (this)
    {
      AMCP::DAL::demand_map(void)::s_map = 0u;
      *&qword_1EE013208 = 0u;
      dword_1EE013218 = 1065353216;
    }
  }

  if ((AMCP::DAL::demand_map(void)::hasBeenInitialized & 1) == 0)
  {
    AMCP::DAL::demand_map(void)::hasBeenInitialized = 1;

    AMCP::DAL::DALSupport::initialize_data_handlers(this);
  }
}

void std::__shared_ptr_emplace<AMCP::DAL::Default_Data_Handler>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<AMCP::DAL::Default_Data_Handler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::DAL::DALSupport::initialize_data_handlers(AMCP::DAL::DALSupport *this)
{
  v6 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E12C0B90](this);
  v3 = &unk_1F5972EA0;
  v5 = &v3;
  AMCP::DAL::Container::set_data_handler_format(0x6C70636D, &v3);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v3);
  v3 = &unk_1F5972F80;
  v5 = &v3;
  AMCP::DAL::Container::set_data_handler_format(0x73707673, &v3);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v3);
  v3 = &unk_1F5973050;
  v5 = &v3;
  AMCP::DAL::Container::set_data_handler_format(0x616C6163, &v3);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v3);
  v3 = &unk_1F5973120;
  v5 = &v3;
  AMCP::DAL::Container::set_data_handler_format(0x63616333, &v3);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v3);
  v3 = &unk_1F59731A0;
  v5 = &v3;
  AMCP::DAL::Container::set_data_handler_format(0x61632D33, &v3);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v3);
  v3 = &unk_1F5973220;
  v4 = AMCP::DAL::PCM_File_Factory;
  v5 = &v3;
  AMCP::DAL::File::set_file_handler_format(0x6C70636D, &v3);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](&v3);
  v3 = &unk_1F5973220;
  v4 = AMCP::DAL::Packetized_File_Factory;
  v5 = &v3;
  AMCP::DAL::File::set_file_handler_format(0x616C6163, &v3);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](&v3);
  v3 = &unk_1F5973220;
  v4 = AMCP::DAL::Packetized_File_Factory;
  v5 = &v3;
  AMCP::DAL::File::set_file_handler_format(0x63616333, &v3);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](&v3);
  v3 = &unk_1F5973220;
  v4 = AMCP::DAL::Packetized_File_Factory;
  v5 = &v3;
  AMCP::DAL::File::set_file_handler_format(0x61632D33, &v3);
  result = std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](&v3);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4A9180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Container::set_data_handler_format(AMCP::DAL *a1, uint64_t a2)
{
  v3 = a1;
  v17[3] = *MEMORY[0x1E69E9840];
  AMCP::DAL::demand_map(a1);
  if (!*(&AMCP::DAL::demand_map(void)::s_map + 1))
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(*(&AMCP::DAL::demand_map(void)::s_map + 8));
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (*(&AMCP::DAL::demand_map(void)::s_map + 1) <= v3)
    {
      v5 = v3 % DWORD2(AMCP::DAL::demand_map(void)::s_map);
    }
  }

  else
  {
    v5 = (DWORD2(AMCP::DAL::demand_map(void)::s_map) - 1) & v3;
  }

  v6 = *(AMCP::DAL::demand_map(void)::s_map + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v3)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *(&AMCP::DAL::demand_map(void)::s_map + 1))
      {
        v8 %= *(&AMCP::DAL::demand_map(void)::s_map + 1);
      }
    }

    else
    {
      v8 &= *(&AMCP::DAL::demand_map(void)::s_map + 1) - 1;
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

  if (*(v7 + 4) != v3)
  {
    goto LABEL_17;
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      v16 = &v15;
      (*(*v9 + 24))(v9, &v15);
    }

    else
    {
      v16 = (*(*v9 + 16))(v9);
    }
  }

  else
  {
    v16 = 0;
  }

  v10 = v7 + 3;
  if (v7 + 3 != &v15)
  {
    v11 = v16;
    v12 = v7[6];
    if (v16 == &v15)
    {
      if (v12 == v10)
      {
        (*(*v16 + 24))();
        (*(*v16 + 32))(v16);
        v16 = 0;
        (*(*v7[6] + 24))(v7[6], &v15);
        (*(*v7[6] + 32))(v7[6]);
        v7[6] = 0;
        v16 = &v15;
        (*(v17[0] + 24))(v17, v7 + 3);
        (*(v17[0] + 32))(v17);
      }

      else
      {
        (*(*v16 + 24))();
        (*(*v16 + 32))(v16);
        v16 = v7[6];
      }

      v7[6] = v10;
    }

    else if (v12 == v10)
    {
      (*(*v12 + 24))(v7[6], &v15);
      (*(*v7[6] + 32))(v7[6]);
      v7[6] = v16;
      v16 = &v15;
    }

    else
    {
      v16 = v7[6];
      v7[6] = v11;
    }
  }

  result = std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v15);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4A98C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> (*)(AMCP::DAL::DAL_Settings const&),std::allocator<std::shared_ptr<AMCP::DAL::DAL_File_Handler> (*)(AMCP::DAL::DAL_Settings const&)>,std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "PFNSt3__110shared_ptrIN4AMCP3DAL16DAL_File_HandlerEEERKNS2_12DAL_SettingsEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> (*)(AMCP::DAL::DAL_Settings const&),std::allocator<std::shared_ptr<AMCP::DAL::DAL_File_Handler> (*)(AMCP::DAL::DAL_Settings const&)>,std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5973220;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_4,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_4>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1DE4A9C24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Packetized_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::Packetized_Data_Handler>,std::allocator<AMCP::DAL::Packetized_Data_Handler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_Data_HandlerEE27__shared_ptr_default_deleteIS3_NS2_23Packetized_Data_HandlerEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Packetized_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::Packetized_Data_Handler>,std::allocator<AMCP::DAL::Packetized_Data_Handler>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::Packetized_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::Packetized_Data_Handler>,std::allocator<AMCP::DAL::Packetized_Data_Handler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_3,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_2,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_1,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1DE4AA19C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<AMCP::DAL::AUParameter_Data_Handler>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AMCP::DAL::AUParameter_Data_Handler>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table(v2 + 56);
    MEMORY[0x1E12C1730](v2, 0x10A1C40768A9574);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::__deallocate_node(a1, *(a1 + 24));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v2, *(a1 + 8));
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::__deallocate_node(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *v2;
      std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((v2 + 4));
      result = std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *>>>::deallocate[abi:ne200100](*(v3 + 32), v2);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::AUParameter_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::AUParameter_Data_Handler>,std::allocator<AMCP::DAL::AUParameter_Data_Handler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_Data_HandlerEE27__shared_ptr_default_deleteIS3_NS2_24AUParameter_Data_HandlerEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::AUParameter_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::AUParameter_Data_Handler>,std::allocator<AMCP::DAL::AUParameter_Data_Handler>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table(v1 + 56);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::AUParameter_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::AUParameter_Data_Handler>,std::allocator<AMCP::DAL::AUParameter_Data_Handler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::function<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::function<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_0,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_0>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::PCM_Data_Handler>,std::allocator<AMCP::DAL::PCM_Data_Handler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_Data_HandlerEE27__shared_ptr_default_deleteIS3_NS2_16PCM_Data_HandlerEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::PCM_Data_Handler>,std::allocator<AMCP::DAL::PCM_Data_Handler>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::PCM_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::PCM_Data_Handler>,std::allocator<AMCP::DAL::PCM_Data_Handler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *AMCP::DAL::Container::Container(void *a1, uint64_t a2, double a3)
{
  *a1 = 0;
  a1[1] = 0;
  AMCP::DAL::Container::get_data_handler(&v7, a2, a3);
  v4 = v7;
  v7 = 0uLL;
  v5 = a1[1];
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }
  }

  return a1;
}

void sub_1DE4AA890(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Container::erase_range(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = 0;
    (*(*a1 + 96))(a1, &v1);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

void sub_1DE4AA908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Container::copy_from_this_container(uint64_t *a1, uint64_t a2, uint64_t *a3, double *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*a1)
  {
    v8 = *a3;
    is_compatible = AMCP::DAL::Container::container_is_compatible(*a1, *a3);
    if (!is_compatible)
    {
      v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v13 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_compatible);
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

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "Container.cpp";
        v33 = 1024;
        v34 = 142;
        v35 = 2080;
        v36 = "not (container_is_compatible(dest_container))";
        _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container::copy_from_this_container: Containers Are Not Compatible", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Container::copy_from_this_container: Containers Are Not Compatible", &v22);
      std::logic_error::logic_error(&v23, &v22);
      v23.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v24, &v23);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = -1;
      v24.__vftable = &unk_1F5991430;
      v25 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v24);
      v37 = "void AMCP::DAL::Container::copy_from_this_container(const Sample_Time_Range &, const Container &, const Sample_Time_Range &, DAL_Operation_Context_Ref)";
      v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.cpp";
      v39 = 142;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
    }

    v10 = a3[1];
    v19 = v8;
    v20 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *a4;
    v17 = 0;
    v18 = 0;
    (*(*v4 + 80))(v4, a2, &v19, &v17, v11);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE4AAC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL AMCP::DAL::Container::container_is_compatible(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    memset(v7, 0, 40);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v6, 0, sizeof(v6));
    mSampleRate = 0.0;
    return *v7 == mSampleRate && DWORD2(v7[0]) == v6.mFormatID && *&v7[1] == *&v6.mBytesPerPacket && *(&v7[1] + 12) == *&v6.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(v7, &v6, 0);
  }

  v2 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v2;
  *&v7[2] = *(a1 + 40);
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(a2 + 24);
  *&v6.mSampleRate = *(a2 + 8);
  *&v6.mBytesPerPacket = v3;
  *&v6.mBitsPerChannel = *(a2 + 40);
  mSampleRate = v6.mSampleRate;
  return *v7 == mSampleRate && DWORD2(v7[0]) == v6.mFormatID && *&v7[1] == *&v6.mBytesPerPacket && *(&v7[1] + 12) == *&v6.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(v7, &v6, 0);
}

double AMCP::Graph::Converter_Cross_Timebase_Processor::calculate_samples_through_processor(AMCP::Graph::Converter **a1, int a2, double *a3, double a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = floor(a4);
  if (a4 != v4)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Converter.cpp";
      v26 = 1024;
      v27 = 557;
      v28 = 2080;
      v29 = "not (samples.get_double() == samples.floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("We should have no fractional samples", &v16);
    std::logic_error::logic_error(&v17, &v16);
    v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5991430;
    v19 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v18);
    v30 = "virtual AMCP::DAL::Sample_Time AMCP::Graph::Converter_Cross_Timebase_Processor::calculate_samples_through_processor(Buffer_Alignment, AMCP::DAL::Sample_Time, AMCP::DAL::Sample_Time &) const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v32 = 557;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v6 = v4;
  if (a2)
  {
    required_input_samples_for_output_samples = AMCP::Graph::Converter::get_required_input_samples_for_output_samples(a1[1], v6);
  }

  else
  {
    *buf = v4;
    required_input_samples_for_output_samples = AMCP::Graph::Converter::get_expected_output_samples_for_input_samples(a1[1], v6, buf);
    *a3 = *buf;
  }

  v9 = *MEMORY[0x1E69E9840];
  return required_input_samples_for_output_samples;
}

void sub_1DE4AB08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Converter::get_expected_output_samples_for_input_samples(AMCP::Graph::Converter *this, uint64_t a2, unint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "scale");
  v6 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(this + 6, &__p);
  if (v6)
  {
    v7 = AMCP::Thing::convert_to<BOOL>((v6 + 5));
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
    if (!v7)
    {
      return a2;
    }
  }

  else if (!v7)
  {
    return a2;
  }

  v37[0] = 0;
  v37[1] = 0;
  AMCP::DAL::DAL_Settings::DAL_Settings(&__p, v37);
  std::string::basic_string[abi:ne200100]<0>(v37, "expected output samples for input samples");
  AMCP::DAL::DAL_Settings::add<unsigned long long>(&__p, v37, a2);
  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v9 = *(this + 14);
  v8 = *(this + 15);
  v43 = *(this + 13);
  v44 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = (*(*v8 + 136))(v8, &v43, &__p);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v36[0] = 0;
  v36[1] = 0;
  AMCP::DAL::DAL_Settings::DAL_Settings(v37, v36);
  if (v49 == v40 || (*(*v49 + 32))(v49))
  {
    if (v50)
    {
      std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__deallocate_node(&__p, v48);
      v48 = 0;
      v11 = v46;
      if (v46)
      {
        v12 = 0;
        do
        {
          *(__p + v12++) = 0;
        }

        while (v11 != v12);
      }

      v50 = 0;
    }

    v13 = v37[0];
    v37[0] = 0;
    v14 = __p;
    __p = v13;
    if (v14)
    {
      std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>>::deallocate[abi:ne200100](v47, v14, v46);
    }

    v15 = v37[1];
    v37[1] = 0;
    v50 = v41;
    v51 = v42;
    v46 = v15;
    v48 = v39;
    if (v41)
    {
      v16 = *(v39 + 8);
      if ((v15 & (v15 - 1)) != 0)
      {
        if (v16 >= v15)
        {
          v16 %= v15;
        }
      }

      else
      {
        v16 &= v15 - 1;
      }

      *(__p + v16) = &v48;
      v39 = 0;
      v41 = 0;
    }
  }

  else
  {
    v51 = v42;
    v17 = v46;
    if (v46)
    {
      v18 = 0;
      do
      {
        *(__p + v18++) = 0;
      }

      while (v17 != v18);
      v19 = v48;
      v50 = 0;
      v48 = 0;
      for (i = v39; ; i = v22)
      {
        v21 = v19;
        if (!v19 || !v41)
        {
          break;
        }

        v22 = *i;
        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::remove(&v54, v37, i);
        v24 = v54;
        if (*(v21 + 39) < 0)
        {
          operator delete(*(v21 + 16));
        }

        v25 = *(v24 + 16);
        *(v21 + 32) = *(v24 + 32);
        *(v21 + 16) = v25;
        *(v24 + 39) = 0;
        *(v24 + 16) = 0;
        AMCP::swap((v24 + 40), (v21 + 40), v23);
        v26 = v54;
        v54 = 0;
        if (v26)
        {
          std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *>>>::operator()[abi:ne200100](v55, v26);
        }

        v19 = *v21;
        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__node_insert_multi(&__p, v21);
      }

      std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__deallocate_node(&__p, v19);
    }

    if (v41)
    {
      v27 = v39;
      do
      {
        v28 = *v27;
        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::remove(&v52, v37, v27);
        v29 = v52;
        v30 = (*(*v49 + 16))(v49, 80, 8);
        v55[0] = &v49;
        v55[1] = 1;
        *v30 = 0;
        v30[1] = 0;
        v56 = v29 + 40;
        std::pair<std::string const,AMCP::Thing>::pair[abi:ne200100]<std::string&&,AMCP::Thing&&,0ul,0ul>((v30 + 2), (v29 + 16), &v56);
        v30[1] = std::__string_hash<char>::operator()[abi:ne200100]((v30 + 2));
        v52 = 0;
        if (v29)
        {
          std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *>>>::operator()[abi:ne200100](&v53, v29);
        }

        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__node_insert_multi(&__p, v30);
        v27 = v28;
      }

      while (v41);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(v37);
  std::string::basic_string[abi:ne200100]<0>(v37, "actual input samples consumed");
  AMCP::DAL::DAL_Settings::add<unsigned long long>(&__p, v37, a2);
  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v32 = *(this + 14);
  v31 = *(this + 15);
  v34 = *(this + 13);
  v35 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = (*(*v31 + 136))(v31, &v34, &__p);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&__p);
  return v10;
}

void sub_1DE4AB584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&a25);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Converter::get_required_input_samples_for_output_samples(AMCP::Graph::Converter *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v4 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(this + 6, __p);
  if (v4)
  {
    v5 = AMCP::Thing::convert_to<BOOL>((v4 + 5));
  }

  else
  {
    v5 = 0;
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return a2;
    }
  }

  else if (!v5)
  {
    return a2;
  }

  v11[0] = 0;
  v11[1] = 0;
  AMCP::DAL::DAL_Settings::DAL_Settings(__p, v11);
  std::string::basic_string[abi:ne200100]<0>(v11, "required input samples for output samples");
  AMCP::DAL::DAL_Settings::add<unsigned long long>(__p, v11, a2);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v7 = *(this + 14);
  v6 = *(this + 15);
  v9 = *(this + 13);
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a2 = (*(*v6 + 136))(v6, &v9, __p);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(__p);
  return a2;
}

void sub_1DE4AB784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

void sub_1DE4AB7C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE4AB7BCLL);
}

void AMCP::DAL::DAL_Settings::add<unsigned long long>(unint64_t a1, __int128 *a2, uint64_t a3)
{
  v4[0] = a3;
  memset(&v4[1], 0, 24);
  v5 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&__p, a2, v4);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(a1, &__p, &__p);
  if (v8)
  {
    v8(0, &v7, 0, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    v5(0, v4, 0, 0);
  }
}

void sub_1DE4AB88C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::pair<std::string,AMCP::Thing>::~pair(va1);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  this[2].__r_.__value_.__l.__size_ = 0;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  v6 = *(a3 + 32);
  if (v6)
  {
    v6(2, a3);
  }

  return this;
}

unint64_t std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(unint64_t a1, void *a2, __int128 *a3)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13 + 2, a2);
            if (result)
            {
              return result;
            }
          }

          else
          {
            if (v11 > 1)
            {
              if (v14 >= v9)
              {
                v14 %= v9;
              }
            }

            else
            {
              v14 &= v9 - 1;
            }

            if (v14 != v3)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v16 = (*(**(a1 + 32) + 16))(*(a1 + 32), 80, 8);
  *v16 = 0;
  v16[1] = v8;
  v26 = a3 + 24;
  result = std::pair<std::string const,AMCP::Thing>::pair[abi:ne200100]<std::string&&,AMCP::Thing&&,0ul,0ul>((v16 + 2), a3, &v26);
  v17 = (*(a1 + 40) + 1);
  v18 = *(a1 + 48);
  if (!v9 || (v18 * v9) < v17)
  {
    v19 = 1;
    if (v9 >= 3)
    {
      v19 = (v9 & (v9 - 1)) != 0;
    }

    v20 = v19 | (2 * v9);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    result = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__rehash<true>(a1, v22);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v3);
  if (v24)
  {
    *v16 = *v24;
LABEL_38:
    *v24 = v16;
    goto LABEL_39;
  }

  *v16 = *(a1 + 24);
  *(a1 + 24) = v16;
  *(v23 + 8 * v3) = a1 + 24;
  if (*v16)
  {
    v25 = *(*v16 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v25 >= v9)
      {
        v25 %= v9;
      }
    }

    else
    {
      v25 &= v9 - 1;
    }

    v24 = (*a1 + 8 * v25);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 40);
  return result;
}

uint64_t std::pair<std::string const,AMCP::Thing>::pair[abi:ne200100]<std::string&&,AMCP::Thing&&,0ul,0ul>(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *a3;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  v6 = *(v5 + 32);
  if (v6)
  {
    v6(2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::remove(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
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

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 3)
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
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
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
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
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
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[5];
  *result = a3;
  *(result + 8) = a2 + 4;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

size_t std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v2 = a2;
  result = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  v5 = result;
  v2[1] = result;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 40) + 1);
  v8 = *(a1 + 48);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (v12 == 1)
    {
      v12 = 2;
    }

    else if ((v12 & (v12 - 1)) != 0)
    {
      result = std::__next_prime(v12);
      v12 = result;
      v6 = *(a1 + 8);
    }

    v40 = v5;
    v41 = v2;
    if (v12 > v6)
    {
LABEL_13:
      result = std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>::allocate[abi:ne200100](a1 + 16, v12);
      v13 = *a1;
      *a1 = result;
      if (v13)
      {
        result = std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v13, *(a1 + 8));
      }

      v14 = 0;
      *(a1 + 8) = v12;
      do
      {
        *(*a1 + 8 * v14++) = 0;
      }

      while (v12 != v14);
      v15 = *(a1 + 24);
      if (v15)
      {
        v16 = v15[1];
        v17 = vcnt_s8(v12);
        v17.i16[0] = vaddlv_u8(v17);
        v18 = v17.u32[0];
        if (v17.u32[0] > 1uLL)
        {
          if (v16 >= v12)
          {
            v16 %= v12;
          }
        }

        else
        {
          v16 &= v12 - 1;
        }

        *(*a1 + 8 * v16) = a1 + 24;
        v21 = *v15;
        if (*v15)
        {
          v39 = v17.u32[0];
          do
          {
            v22 = v21[1];
            if (v18 > 1)
            {
              if (v22 >= v12)
              {
                v22 %= v12;
              }
            }

            else
            {
              v22 &= v12 - 1;
            }

            if (v22 == v16)
            {
              v15 = v21;
            }

            else
            {
              v23 = *a1;
              if (*(*a1 + 8 * v22))
              {
                v24 = *v21;
                if (*v21)
                {
                  v25 = v21;
                  while (1)
                  {
                    v26 = v24;
                    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v21 + 2, v24 + 2);
                    if (!result)
                    {
                      break;
                    }

                    v24 = *v26;
                    v25 = v26;
                    if (!*v26)
                    {
                      goto LABEL_45;
                    }
                  }

                  v24 = v26;
                  v26 = v25;
LABEL_45:
                  v18 = v39;
                }

                else
                {
                  v26 = v21;
                }

                *v15 = v24;
                *v26 = **(v23 + 8 * v22);
                **(v23 + 8 * v22) = v21;
              }

              else
              {
                *(v23 + 8 * v22) = v15;
                v15 = v21;
                v16 = v22;
              }
            }

            v21 = *v15;
          }

          while (*v15);
        }
      }

      goto LABEL_57;
    }

    if (v12 < v6)
    {
      result = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 48));
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        result = std::__next_prime(result);
      }

      else
      {
        v20 = 1 << -__clz(result - 1);
        if (result >= 2)
        {
          result = v20;
        }
      }

      if (v12 <= result)
      {
        v12 = result;
      }

      if (v12 < v6)
      {
        if (v12)
        {
          goto LABEL_13;
        }

        v27 = *a1;
        *a1 = 0;
        if (v27)
        {
          result = std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v27, *(a1 + 8));
        }

        *(a1 + 8) = 0;
      }
    }

LABEL_57:
    v6 = *(a1 + 8);
    v5 = v40;
    v2 = v41;
  }

  v28 = vcnt_s8(v6);
  v28.i16[0] = vaddlv_u8(v28);
  v29 = v28.u32[0];
  if (v28.u32[0] > 1uLL)
  {
    v30 = v5;
    if (v6 <= v5)
    {
      v30 = v5 % v6;
    }
  }

  else
  {
    v30 = (v6 - 1) & v5;
  }

  v31 = *(*a1 + 8 * v30);
  v42 = *a1;
  if (v31)
  {
    v32 = *v31;
    if (*v31)
    {
      v33 = 0;
      do
      {
        v34 = v32;
        v35 = v32[1];
        if (v29 > 1)
        {
          v36 = v35;
          if (v35 >= v6)
          {
            v36 = v35 % v6;
          }
        }

        else
        {
          v36 = v35 & (v6 - 1);
        }

        if (v36 != v30)
        {
          break;
        }

        result = v35 == v5 && std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v34 + 2, v2 + 2);
        if ((v33 & (result != (v33 & 1))) != 0)
        {
          break;
        }

        v33 |= result != (v33 & 1);
        v32 = *v34;
        v31 = v34;
      }

      while (*v34);
    }
  }

  v37 = v2[1];
  if (v29 > 1)
  {
    if (v37 >= v6)
    {
      v37 %= v6;
    }
  }

  else
  {
    v37 &= v6 - 1;
  }

  if (!v31)
  {
    *v2 = *(a1 + 24);
    *(a1 + 24) = v2;
    *(v42 + 8 * v37) = a1 + 24;
    if (!*v2)
    {
      goto LABEL_93;
    }

    v38 = *(*v2 + 8);
    if (v29 > 1)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

LABEL_92:
    *(*a1 + 8 * v38) = v2;
    goto LABEL_93;
  }

  *v2 = *v31;
  *v31 = v2;
  if (*v2)
  {
    v38 = *(*v2 + 8);
    if (v29 > 1)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

    if (v38 != v37)
    {
      goto LABEL_92;
    }
  }

LABEL_93:
  ++*(a1 + 40);
  return result;
}

void AMCP::Graph::Converter_Cross_Timebase_Processor::process(uint64_t a1@<X0>, AMCP::Log::AMCP_Scope_Registry **a2@<X1>, double *a3@<X2>, void *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 24);
  if (round(v12) != 0.0)
  {
    if (*a2)
    {
      v13 = (*(**a2 + 48))(*a2);
      v12 = *(a1 + 24);
    }

    else
    {
      v13 = 0.0;
    }

    if (round(*a3) != round(fmod(v12, v13)))
    {
      v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v43 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v14);
      }

      v45 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v44 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        v46 = *v45;
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      else
      {
        v46 = *v45;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Converter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 543;
        v63 = 2080;
        v64 = "not (m_current_source == 0_S or source_local_range.start() == (m_current_source % source_container.get_length_in_frames()))";
        _os_log_error_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Discontiguous source ranges", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v61);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Discontiguous source ranges", &v53);
      std::logic_error::logic_error(&v54, &v53);
      v54.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v55, &v54);
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = -1;
      v55.__vftable = &unk_1F5991430;
      v56 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v55);
      v65 = "virtual std::pair<Object_ID, AMCP::DAL::Sample_Time_Range> AMCP::Graph::Converter_Cross_Timebase_Processor::process(AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &, AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &) const";
      v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
      v67 = 543;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
    }
  }

  v15 = *(a1 + 32);
  if (round(v15) != 0.0)
  {
    if (*a4)
    {
      v16 = (*(**a4 + 48))(*a4);
      v15 = *(a1 + 32);
    }

    else
    {
      v16 = 0.0;
    }

    if (round(*a5) != round(fmod(v15, v16)))
    {
      v47 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v47 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v17);
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
        *buf = 136315650;
        *&buf[4] = "Converter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 544;
        v63 = 2080;
        v64 = "not (m_current_dest == 0_S or dest_local_range.start() == (m_current_dest % dest_container.get_length_in_frames()))";
        _os_log_error_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Discontiguous source ranges", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v61);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Discontiguous source ranges", &v53);
      std::logic_error::logic_error(&v54, &v53);
      v54.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v55, &v54);
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = -1;
      v55.__vftable = &unk_1F5991430;
      v56 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v55);
      v65 = "virtual std::pair<Object_ID, AMCP::DAL::Sample_Time_Range> AMCP::Graph::Converter_Cross_Timebase_Processor::process(AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &, AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &) const";
      v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
      v67 = 544;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
    }
  }

  v18 = *(a1 + 8);
  v19 = *(v18 + 104);
  v51 = v19;
  if (v19.__imp_.__imp_)
  {
    atomic_fetch_add_explicit(v19.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
  }

  v20 = *a2;
  if (*a2)
  {
    if (*a4)
    {
      v21 = *(*a4 + 16);
    }

    else
    {
      v21 = 0;
    }

    if (*(v20 + 4) != v21)
    {
      v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v35 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v20);
      }

      v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        v38 = *v37;
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      else
      {
        v38 = *v37;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Container.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 129;
        v63 = 2080;
        v64 = "not (get_format().mFormatID == dest_container.get_format().mFormatID)";
        _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container::dal_operation_apply: Containers Are Not Compatible", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v61);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Container::dal_operation_apply: Containers Are Not Compatible", &v53);
      std::logic_error::logic_error(&v54, &v53);
      v54.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v55, &v54);
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = -1;
      v55.__vftable = &unk_1F5991430;
      v56 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v55);
      v65 = "Sample_Time_Range AMCP::DAL::Container::dal_operation_apply(const Sample_Time_Range &, const Container &, const Sample_Time_Range &, const DAL_Settings &, DAL_Operation_Context_Ref)";
      v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.cpp";
      v67 = 129;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
    }

    v24 = a4[1];
    *buf = *a4;
    *&buf[8] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *a5;
    v26 = a5[1];
    v55 = v51;
    v22 = (*(*v20 + 128))(v20, a3, buf, v18 + 48, &v55, v25, v26);
    v23 = v27;
    if (v55.__imp_.__imp_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55.__imp_.__imp_);
    }

    v51 = 0;
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  else
  {
    v22 = *a5;
    v23 = a5[1];
  }

  imp = v51.__imp_.__imp_;
  if (v51.__imp_.__imp_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51.__imp_.__imp_);
  }

  if (round(v22) != round(*a5))
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(imp);
    }

    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *v33;
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    else
    {
      v34 = *v33;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Converter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 548;
      v63 = 2080;
      v64 = "not (result_range.start() == dest_local_range.start())";
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v61);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v53);
    std::logic_error::logic_error(&v54, &v53);
    v54.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v55, &v54);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = -1;
    v55.__vftable = &unk_1F5991430;
    v56 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v55);
    v65 = "virtual std::pair<Object_ID, AMCP::DAL::Sample_Time_Range> AMCP::Graph::Converter_Cross_Timebase_Processor::process(AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &, AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &) const";
    v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v67 = 548;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
  }

  v29 = v23 - a5[1];
  if (round(v29) < 0.0)
  {
    v29 = 0.0 - v29;
  }

  if (round(v29) >= 2.0 && round(v23 - v22) != round(a3[1] - *a3))
  {
    v39 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v39 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(imp);
    }

    v41 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      v42 = *v41;
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    else
    {
      v42 = *v41;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Converter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 549;
      v63 = 2080;
      v64 = "not ((abs(result_range.end() - dest_local_range.end()) < 2_S) or result_range.length() == source_local_range.length())";
      _os_log_error_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v61);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v53);
    std::logic_error::logic_error(&v54, &v53);
    v54.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v55, &v54);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = -1;
    v55.__vftable = &unk_1F5991430;
    v56 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v55);
    v65 = "virtual std::pair<Object_ID, AMCP::DAL::Sample_Time_Range> AMCP::Graph::Converter_Cross_Timebase_Processor::process(AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &, AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &) const";
    v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v67 = 549;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
  }

  *a6 = *(a1 + 16);
  *(a6 + 8) = v22;
  *(a6 + 16) = v23;
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1DE4ACE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v28 = *(v26 - 152);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Converter::Converter(AMCP::Graph::Converter *this, const AMCP::Graph::Graph_Wire::Conversion_Info *a2, const AMCP::Graph::Graph_Wire::Wire_Info *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 16, "converter");
  *(this + 10) = *(a3 + 50);
  *&buf.__r_.__value_.__l.__data_ = 0uLL;
  AMCP::DAL::DAL_Settings::DAL_Settings(this + 48, &buf);
  v6 = *(a2 + 19);
  v7 = *(a2 + 21);
  if (v6 && v7)
  {
    v8 = (*(*v6 + 16))(v6);
    v9 = (*(**(a2 + 21) + 16))(*(a2 + 21));
    v10 = *(v8 + 23);
    if (v10 >= 0)
    {
      v11 = *(v8 + 23);
    }

    else
    {
      v11 = *(v8 + 8);
    }

    v12 = *(v9 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v9 + 8);
    }

    if (v11 == v12)
    {
      v14 = v10 >= 0 ? v8 : *v8;
      v15 = v13 >= 0 ? v9 : *v9;
      if (!memcmp(v14, v15, v11))
      {
LABEL_38:
        if (*a2 == 1)
        {
          v22 = *(a2 + 6);
          if (*(a2 + 1) != v22)
          {
            caulk::make_string(" - %s (%0.f -> %0.f)", &buf, "scale", *(a2 + 1), *&v22);
            v23 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
            v24 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(buf.__r_.__value_.__r.__words[2]) : buf.__r_.__value_.__l.__size_;
            std::string::append((this + 16), v23, v24);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          std::string::basic_string[abi:ne200100]<0>(&buf, "scale");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 48, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "resampler type");
          v43 = 0u;
          v44 = 0u;
          LODWORD(v43) = *(a2 + 22);
          v45 = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Type>::dispatch;
          std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&buf, __p, &v43);
          std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(this + 48, &buf, &buf);
          if (v48)
          {
            v48(0, v47, 0, 0);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v45)
          {
            (v45)(0, &v43, 0, 0);
          }

          if (v42 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "resampler quality");
          v43 = 0u;
          v44 = 0u;
          LODWORD(v43) = *(a2 + 23);
          v45 = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Quality>::dispatch;
          std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&buf, __p, &v43);
          std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(this + 48, &buf, &buf);
          if (v48)
          {
            v48(0, v47, 0, 0);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v45)
          {
            (v45)(0, &v43, 0, 0);
          }

          if (v42 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (*(a2 + 2) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "map channels");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 48, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v43, " - ");
          v25 = std::string::append(&v43, "map channels", 0xCuLL);
          v26 = *&v25->__r_.__value_.__l.__data_;
          buf.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
          *&buf.__r_.__value_.__l.__data_ = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = buf.__r_.__value_.__l.__size_;
          }

          std::string::append((this + 16), p_buf, size);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v44) < 0)
          {
            operator delete(v43);
          }
        }

        if (*(a2 + 3) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "convert format");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 48, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v43, " - ");
          v29 = std::string::append(&v43, "convert format", 0xEuLL);
          v30 = *&v29->__r_.__value_.__l.__data_;
          buf.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
          *&buf.__r_.__value_.__l.__data_ = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &buf;
          }

          else
          {
            v31 = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v32 = buf.__r_.__value_.__l.__size_;
          }

          std::string::append((this + 16), v31, v32);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v44) < 0)
          {
            operator delete(v43);
          }
        }

        if (*(a2 + 4) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "mix channels to mono");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 48, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v43, " - ");
          v33 = std::string::append(&v43, "mix channels to mono", 0x14uLL);
          v34 = *&v33->__r_.__value_.__l.__data_;
          buf.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&buf.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = &buf;
          }

          else
          {
            v35 = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v36 = buf.__r_.__value_.__l.__size_;
          }

          std::string::append((this + 16), v35, v36);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v44) < 0)
          {
            operator delete(v43);
          }
        }

        if (*(a2 + 5) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "volume processing");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 48, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v43, " - ");
          v37 = std::string::append(&v43, "volume processing", 0x11uLL);
          v38 = *&v37->__r_.__value_.__l.__data_;
          buf.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
          *&buf.__r_.__value_.__l.__data_ = v38;
          v37->__r_.__value_.__l.__size_ = 0;
          v37->__r_.__value_.__r.__words[2] = 0;
          v37->__r_.__value_.__r.__words[0] = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &buf;
          }

          else
          {
            v39 = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v40 = buf.__r_.__value_.__l.__size_;
          }

          std::string::append((this + 16), v39, v40);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v44) < 0)
          {
            operator delete(v43);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "source timebase");
        AMCP::DAL::DAL_Settings::add<std::shared_ptr<AMCP::Graph::Timebase>>(this + 48, &buf, *(a2 + 19), *(a2 + 20));
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "dest timebase");
        AMCP::DAL::DAL_Settings::add<std::shared_ptr<AMCP::Graph::Timebase>>(this + 48, &buf, *(a2 + 21), *(a2 + 22));
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "source format");
        AMCP::DAL::DAL_Settings::add<CA::StreamDescription>();
      }
    }
  }

  else if (!(v6 | v7))
  {
    goto LABEL_38;
  }

  (*(**(a2 + 19) + 24))(&v43);
  v16 = SBYTE7(v44);
  v17 = v43;
  (*(**(a2 + 21) + 24))(__p);
  v18 = &v43;
  if (v16 < 0)
  {
    v18 = v17;
  }

  if (v42 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  caulk::make_string(" timebase(%s -> %s)", &buf, v18, v19);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &buf;
  }

  else
  {
    v20 = buf.__r_.__value_.__r.__words[0];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = buf.__r_.__value_.__l.__size_;
  }

  std::string::append((this + 16), v20, v21);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v44) < 0)
  {
    operator delete(v43);
  }

  if ((*a2 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&buf, "change clock with drift correction disabled");
    AMCP::DAL::DAL_Settings::add<BOOL>(this + 48, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  goto LABEL_38;
}

void sub_1DE4AE610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, std::__shared_weak_count *a51, int a52, __int16 a53, char a54, char a55)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a51);
  }

  v58 = *(v56 - 184);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  v59 = *(v55 + 160);
  *(v55 + 160) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = *(v55 + 152);
  *(v55 + 152) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = *(v55 + 144);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v62 = *(v55 + 128);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  v63 = *(v55 + 112);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table((v55 + 48));
  if (*(v55 + 39) < 0)
  {
    operator delete(*(v55 + 16));
  }

  v64 = *(v55 + 8);
  if (v64)
  {
    std::__shared_weak_count::__release_weak(v64);
  }

  _Unwind_Resume(a1);
}

__n128 AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Timebase>>(__n128 *a1, void *a2, void *a3, __n128 *a4)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, a3);
  if (v6)
  {

    AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Timebase>>(a1, (v6 + 5));
  }

  else
  {
    result = *a4;
    *a1 = *a4;
    a4->n128_u64[0] = 0;
    a4->n128_u64[1] = 0;
  }

  return result;
}

void AMCP::Graph::Converter::update_settings(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5)
{
  v58 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v10 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((a1 + 48), __p);
  if (v10)
  {
    v11 = AMCP::Thing::convert_to<BOOL>((v10 + 5));
  }

  else
  {
    v11 = 0;
  }

  if (SBYTE3(v53) < 0)
  {
    operator delete(*__p);
    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else if (!v11)
  {
    goto LABEL_24;
  }

  if ((*(**a2 + 152))() != *a4)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      v50 = 1024;
      v51 = 284;
      v52 = 2080;
      v53 = "not (source_timebase->get_sample_rate() == source_format.mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s source sample rate differs from source timebase rate", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("source sample rate differs from source timebase rate", &v40);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5991430;
    v43 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v42);
    v54 = "void AMCP::Graph::Converter::update_settings(const Timebase_Ref &, const Timebase_Ref &, const CA::StreamDescription &, const CA::StreamDescription &) const";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v56 = 284;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  if ((*(**a3 + 152))() != *a5)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v13);
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
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      v50 = 1024;
      v51 = 285;
      v52 = 2080;
      v53 = "not (dest_timebase->get_sample_rate() == dest_format.mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s dest sample rate differs from source timebase rate", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("dest sample rate differs from source timebase rate", &v40);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5991430;
    v43 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v42);
    v54 = "void AMCP::Graph::Converter::update_settings(const Timebase_Ref &, const Timebase_Ref &, const CA::StreamDescription &, const CA::StreamDescription &) const";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v56 = 285;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  v14 = (*(**a2 + 48))();
  if (v14 == (*(**a3 + 48))() && (*(**a2 + 48))() && (v15 = (*(**a2 + 152))(), v15 == (*(**a3 + 152))()))
  {
    v19 = 1.0;
  }

  else
  {
    if ((*(**a2 + 152))() != *a4)
    {
      v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v29 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v16);
      }

      v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        v32 = *v31;
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      else
      {
        v32 = *v31;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "Converter.cpp";
        v50 = 1024;
        v51 = 291;
        v52 = 2080;
        v53 = "not (source_timebase->get_sample_rate() == source_format.mSampleRate)";
        _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v40);
      std::logic_error::logic_error(&v41, &v40);
      v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v42, &v41);
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = -1;
      v42.__vftable = &unk_1F5991430;
      v43 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v42);
      v54 = "void AMCP::Graph::Converter::update_settings(const Timebase_Ref &, const Timebase_Ref &, const CA::StreamDescription &, const CA::StreamDescription &) const";
      v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
      v56 = 291;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
    }

    if ((*(**a3 + 152))() != *a5)
    {
      v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v33 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v17);
      }

      v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        v36 = *v35;
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      else
      {
        v36 = *v35;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "Converter.cpp";
        v50 = 1024;
        v51 = 292;
        v52 = 2080;
        v53 = "not (dest_timebase->get_sample_rate() == dest_format.mSampleRate)";
        _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v40);
      std::logic_error::logic_error(&v41, &v40);
      v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v42, &v41);
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = -1;
      v42.__vftable = &unk_1F5991430;
      v43 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v42);
      v54 = "void AMCP::Graph::Converter::update_settings(const Timebase_Ref &, const Timebase_Ref &, const CA::StreamDescription &, const CA::StreamDescription &) const";
      v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
      v56 = 292;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
    }

    v18 = (*(**a3 + 72))();
    v19 = v18 / (*(**a2 + 72))();
  }

  std::string::basic_string[abi:ne200100]<0>(v38, "scale ratio");
  v42.__imp_.__imp_ = 0;
  v43 = 0;
  *&v42.__vftable = v19;
  v44 = 0;
  v45 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(__p, v38, &v42);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(a1 + 48, __p, __p);
  if (v57)
  {
    v57(0, &v53 + 4, 0, 0);
  }

  if (SBYTE3(v53) < 0)
  {
    operator delete(*__p);
  }

  if (v45)
  {
    v45(0, &v42, 0, 0);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

LABEL_24:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE4AF7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, void *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::DAL_Settings::add<BOOL>(unint64_t a1, __int128 *a2, char a3)
{
  memset(v4, 0, sizeof(v4));
  LOBYTE(v4[0]) = a3;
  v5 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&__p, a2, v4);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(a1, &__p, &__p);
  if (v8)
  {
    v8(0, &v7, 0, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    v5(0, v4, 0, 0);
  }
}

void sub_1DE4AF980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::pair<std::string,AMCP::Thing>::~pair(&a15);
  AMCP::Thing::~Thing(&a9);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Settings::add<std::shared_ptr<AMCP::Graph::Timebase>>(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5[2] = 0;
  v5[3] = 0;
  v5[0] = a3;
  v5[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Timebase>>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&__p, a2, v5);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(a1, &__p, &__p);
  if (v9)
  {
    v9(0, &v8, 0, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    v6(0, v5, 0, 0);
  }
}

void sub_1DE4AFA64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::pair<std::string,AMCP::Thing>::~pair(va1);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Settings::add<CA::StreamDescription>()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
  operator new();
}

void sub_1DE4AFB74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::pair<std::string,AMCP::Thing>::~pair(va1);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Settings::add<std::string>(unint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = 0u;
  v6 = 0u;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *&v6 = *(a3 + 2);
  }

  v7 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&__p, a2, &v5);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(a1, &__p, &__p);
  if (v10)
  {
    v10(0, &v9, 0, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    v7(0, &v5, 0, 0);
  }
}

void sub_1DE4AFC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::pair<std::string,AMCP::Thing>::~pair(&a15);
  AMCP::Thing::~Thing(&a9);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v9 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
        result = 0;
        *a4 = v9;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v18 = 0;
      memset(v17, 0, sizeof(v17));
      AMCP::swap(v17, a3, a3);
      if (v18)
      {
        v18(0, v17, 0, 0);
      }

      return 0;
    }

    v10 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
    v11 = *(a2 + 32);
    *&v17[0] = 0;
    if (v11)
    {
      v11(3, a2, 0, v17);
      v11 = *&v17[0];
    }

    if (v11 != v10)
    {
      goto LABEL_31;
    }

    v12 = *(a3 + 4);
    v19 = 0;
    if (v12)
    {
      v12(3, a3, 0, &v19);
      v12 = v19;
    }

    if (v12 == v10)
    {
      if (*(a2 + 32))
      {
        *&v17[0] = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
        v13 = (*(a2 + 32))(4, a2, 0, v17);
      }

      else
      {
        v13 = 0;
      }

      *&v17[0] = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
      if (*v13 == *(*(a3 + 4))(4, a3, 0, v17))
      {
        return 1;
      }
    }

    else
    {
LABEL_31:
      AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(v17, a2);
      AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(&v19, a3);
      v15 = *&v17[0];
      v16 = v19;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (*(&v17[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17[0] + 1));
      }

      if (v15 == v16)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!result)
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
LABEL_18:
    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result != 1)
  {
    if (result != 2)
    {
      return result;
    }

    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    *a3 = *a2;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>::dispatch;
    *(a2 + 32) = 0;
    goto LABEL_18;
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
  *a3 = *a2;
  v14 = *(a2 + 8);
  *(a3 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0;
  *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[128];
}

void *AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_15;
  }

  v4 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = result[1];
      *a1 = *result;
      a1[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      return result;
    }

LABEL_15:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = result[1];
  *a1 = *result;
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE4B0170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Quality>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, __objc2_meth_list **a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        *a3 = *a2;
        *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Quality>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 1) = 0u;
      *a3 = *a2;
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Quality>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      AMCP::swap(v14, a3, a3);
      if (v15)
      {
        v15(0, v14, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
    v10 = *(a2 + 32);
    *&v14[0] = 0;
    if (v10)
    {
      (v10)(3, a2, 0, v14);
      v10 = *&v14[0];
    }

    if (v10 != v9)
    {
      goto LABEL_27;
    }

    v11 = *(a3 + 4);
    v16 = 0;
    if (v11)
    {
      (v11)(3, a3, 0, &v16);
      v11 = v16;
    }

    if (v11 == v9)
    {
      if (*(a2 + 32))
      {
        *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
        v12 = (*(a2 + 32))(4, a2, 0, v14);
      }

      else
      {
        v12 = 0;
      }

      *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
      if (*v12 == *(*(a3 + 4))(4, a3, 0, v14))
      {
        return 1;
      }
    }

    else
    {
LABEL_27:
      v13 = AMCP::Thing::convert_to<AMCP::Resampler_Quality>(a2);
      if (v13 == AMCP::Thing::convert_to<AMCP::Resampler_Quality>(a3))
      {
        return 1;
      }
    }

    return 0;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Type>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        *a3 = *a2;
        *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Type>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 1) = 0u;
      *a3 = *a2;
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Type>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      AMCP::swap(v14, a3, a3);
      if (v15)
      {
        v15(0, v14, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
    v10 = *(a2 + 32);
    *&v14[0] = 0;
    if (v10)
    {
      v10(3, a2, 0, v14);
      v10 = *&v14[0];
    }

    if (v10 != v9)
    {
      goto LABEL_27;
    }

    v11 = *(a3 + 4);
    v16 = 0;
    if (v11)
    {
      v11(3, a3, 0, &v16);
      v11 = v16;
    }

    if (v11 == v9)
    {
      if (*(a2 + 32))
      {
        *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
        v12 = (*(a2 + 32))(4, a2, 0, v14);
      }

      else
      {
        v12 = 0;
      }

      *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
      if (*v12 == *(*(a3 + 4))(4, a3, 0, v14))
      {
        return 1;
      }
    }

    else
    {
LABEL_27:
      v13 = AMCP::Thing::convert_to<AMCP::Resampler_Type>(a2);
      if (v13 == AMCP::Thing::convert_to<AMCP::Resampler_Type>(a3))
      {
        return 1;
      }
    }

    return 0;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}