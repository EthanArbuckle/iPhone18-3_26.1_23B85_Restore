void sub_2372210A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10)
{
  xpc_release(v10);
  if (a10 == 1)
  {
    xpc_release(object);
  }

  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::make_DataRef(applesauce::CF *this, const UInt8 *a2, CFIndex a3)
{
  v4 = CFDataCreate(0, a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  *this = v4;
  v5 = CFGetTypeID(v4);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v8, "Could not construct");
  }

  return result;
}

void sub_237221190(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t MIDIProcessXPC::InitOnce(MIDIProcessXPC *this)
{
  std::mutex::lock((this + 552));
  v2 = atomic_load(this + 12);
  if (v2)
  {
    v3 = *(this + 2);
  }

  else
  {
    v3 = (*(*this + 32))(this);
    *(this + 2) = v3;
    atomic_store(1u, this + 12);
  }

  std::mutex::unlock((this + 552));
  return v3;
}

void MIDIProcessXPC::Uninitialize(MIDIProcessXPC *this)
{
  std::mutex::lock((this + 552));
  *(this + 14) = 1;
  atomic_store(0, this + 12);
  if (*(this + 3))
  {
    std::unique_ptr<XClientMachPort>::reset[abi:ne200100](this + 3, 0);
  }

  MIDIProcess::deleteInThread(this);
  std::unique_ptr<XServerMachPort>::reset[abi:ne200100](this + 2, 0);
  MIDIProcess::deleteIOBuffers(this);

  std::mutex::unlock((this + 552));
}

void MIDIProcessXPC::Initialize(MIDIProcessXPC *this)
{
  v2 = *(*(this + 58) + 8);
  if (v2)
  {
    swix::connection::activate(v2);
    MIDIProcess::createInPort(this);
  }

  std::terminate();
}

void sub_23722143C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2372213B8);
}

void swix::connection::activate(swix::connection *this)
{
  swix::connection::xpc_connection(&connection, this);
  xpc_connection_activate(connection);
  xpc_release(connection);
}

void MIDIProcessXPC::~MIDIProcessXPC(MIDIProcessXPC *this)
{
  MIDIProcessXPC::~MIDIProcessXPC(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A45F18;
  if (*(this + 64))
  {
    if (*(this + 544) == 1)
    {
      MEMORY[0x2383C7E40](this + 528);
      *(this + 544) = 0;
    }

    caulk::semaphore::semaphore((this + 528));
    *(this + 544) = 1;
    v2 = *(this + 65);
    *(this + 32) = 0u;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    caulk::semaphore::timed_wait((this + 528), -1.0);
    __dmb(9u);
  }

  std::mutex::~mutex((this + 552));
  caulk::details::lifetime_guard_base<MIDIProcessXPC>::~lifetime_guard_base(this + 504);
  v4 = (this + 480);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 58);
  *(this + 58) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  MIDIProcess::~MIDIProcess(this);
}

uint64_t caulk::details::lifetime_guard_base<MIDIProcessXPC>::~lifetime_guard_base(uint64_t a1)
{
  if (*(a1 + 8))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (*(a1 + 40) == 1)
    {
      MEMORY[0x2383C7E40](a1 + 24);
    }

    v2 = *(a1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    return a1;
  }

  return result;
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::optional<swix::connection_config>::~optional(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 120) == 1)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 88);
    }

    v2 = *(a1 + 56);
    if (v2)
    {
      dispatch_release(v2);
    }

    xpc_release(*(a1 + 48));
    *(a1 + 48) = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 120) == 1)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 88);
    }

    v2 = *(a1 + 56);
    if (v2)
    {
      dispatch_release(v2);
    }

    xpc_release(*(a1 + 48));
    *(a1 + 48) = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::function<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::__value_func[abi:ne200100](v6, a2);
  if (v6 != a1)
  {
    v3 = v7;
    v4 = *(a1 + 24);
    if (v7 == v6)
    {
      if (v4 == a1)
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v6);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v7;
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](v6);
  return a1;
}

void sub_237221A1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RunLoopSourceRelease(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_weak(v1);
    }

    JUMPOUT(0x2383C8250);
  }

  return result;
}

void RunLoopSourcePerform(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        os_unfair_lock_lock((v5 + 472));
        v7 = *(v5 + 480);
        v6 = *(v5 + 488);
        if (v7 != v6)
        {
          do
          {
            v8 = *(v7 + 24);
            if (!v8)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v8 + 48))(v8);
            v7 += 32;
          }

          while (v7 != v6);
          v7 = *(v5 + 480);
          v6 = *(v5 + 488);
        }

        while (v6 != v7)
        {
          v6 -= 32;
          std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
        }

        *(v5 + 488) = v7;
        os_unfair_lock_unlock((v5 + 472));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_237221B64(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 118);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIDIProcessXPC::MIDIProcessXPC(void)::$_0,std::allocator<MIDIProcessXPC::MIDIProcessXPC(void)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A457C8;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<MIDIProcessXPC>::control_block,std::allocator<caulk::details::lifetime_guard_base<MIDIProcessXPC>::control_block>>::__on_zero_shared(uint64_t a1)
{
  __dmb(0xBu);
  caulk::semaphore::signal((*(a1 + 40) + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<MIDIProcessXPC>::control_block,std::allocator<caulk::details::lifetime_guard_base<MIDIProcessXPC>::control_block>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A48948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383C8250);
}

void MIDIProcessXPC::MIDIProcessXPC(MIDIProcessXPC *this)
{
  v12 = *MEMORY[0x277D85DE8];
  MIDIProcess::MIDIProcess(MIDIProcess::defaultInstance(int)::xpcImpl);
  MIDIProcess::defaultInstance(int)::xpcImpl[0] = &unk_284A45F18;
  inactive = dispatch_workloop_create_inactive("MIDIClient");
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  v2[23] = 20;
  strcpy(v2, "com.apple.midiserver");
  v4 = 0;
  v5 = 0;
  v3 = 0;
  v6 = xpc_null_create();
  if (inactive)
  {
    dispatch_retain(inactive);
  }

  v7 = inactive;
  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  v9 = 256;
  v10 = 0;
  v11 = 0;
  dispatch_release(inactive);
  operator new();
}

void sub_237222204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  qword_27DE98238 = 0;
  (*(*v9 + 8))(v9);
  swix::connection_config::~connection_config(&a9);
  MIDIProcess::~MIDIProcess(MIDIProcess::defaultInstance(int)::xpcImpl);
  _Unwind_Resume(a1);
}

uint64_t MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0::operator()(uint64_t *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v3 = *a1;
  BytePtr = CFDataGetBytePtr(v2);
  v5 = a1[1];
  if (!v5)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v20);
  }

  Length = CFDataGetLength(v5);
  v7 = MIDIProcess::Notify(v3, BytePtr, Length);
  if (v7)
  {
    gMIDIClientLog();
    v8 = gMIDIClientLog(void)::clilib;
    if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "MIDIProcessXPC.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 142;
      *&buf[18] = 1024;
      *&buf[20] = v7;
      _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error from Notify(), err = %d", buf, 0x18u);
    }
  }

  else
  {
    v9 = *(v3 + 464);
    v30[0] = &unk_284A48900;
    v30[3] = v30;
    swix::encode_message::encode_message(v21, 190206330);
    v10 = *(v9 + 8);
    if (!v10)
    {
      std::terminate();
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 1174405120;
    *&buf[16] = ___ZN20MIDIServerXPC_Client23acknowledgeNotificationENSt3__18functionIFvN4swix6resultIJEEEEEE_block_invoke;
    v32 = &__block_descriptor_tmp_3876;
    _ZNSt3__110__function12__value_funcIFvN4swix6resultIJEEEEEC2B8ne200100ERKS6_(v33, v30);
    swix::connection::xpc_connection(&connection, v10);
    swix::encode_message::xpc_message(&message, v21);
    v11 = *(v10 + 8);
    if (*(v11 + 88))
    {
      v12 = *(v11 + 80);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      v14 = message;
      if (v13)
      {
        v15 = connection;
        v16 = MEMORY[0x2383C9080](message);
        std::string::basic_string[abi:ne200100]<0>(__p, v16);
        free(v16);
        v17 = SHIBYTE(v24) >= 0 ? __p : __p[0];
        *v34 = 134218242;
        v35 = v15;
        v36 = 2080;
        v37 = v17;
        _os_log_impl(&dword_2371C2000, v12, OS_LOG_TYPE_DEFAULT, "%p send msg %s", v34, 0x16u);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v14 = message;
    }

    __p[0] = MEMORY[0x277D85DD0];
    __p[1] = 0x40000000;
    v24 = ___ZN4swix10connection21send_with_async_replyERKNS_14encode_messageEU13block_pointerFvPvE_block_invoke;
    v25 = &unk_278A288C8;
    v26 = buf;
    v27 = v10;
    xpc_connection_send_message_with_reply(connection, v14, 0, __p);
    xpc_release(v14);
    xpc_release(connection);
    _ZNSt3__110__function12__value_funcIFvN4swix6resultIJEEEEED2B8ne200100Ev(v33);
    xpc_release(object);
    _ZNSt3__110__function12__value_funcIFvN4swix6resultIJEEEEED2B8ne200100Ev(v30);
  }

  return v7;
}

void sub_2372226C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2)
  {
    xpc_release(v24);
    xpc_release(object);
    _ZNSt3__110__function12__value_funcIFvN4swix6resultIJEEEEED2B8ne200100Ev(v25 + 32);
    v28 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v29 = v28[4];
    }

    else
    {
      v29 = 4294966994;
    }

    _ZNKSt3__18functionIFvN4swix6resultIJEEEEEclES3_(a24, v29);
    __cxa_end_catch();
    JUMPOUT(0x237222628);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__110__function12__value_funcIFvN4swix6resultIJEEEEED2B8ne200100Ev(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZZN14MIDIProcessXPC14DispatchNotifyEPKvmENK3__0clEvEUlT_E_NS_9allocatorIS7_EEFvN4swix6resultIJEEEEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if ((*a2 & 0x100000000) == 0 && v2)
  {
    gMIDIClientLog();
    v3 = gMIDIClientLog(void)::clilib;
    if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = "MIDIProcessXPC.cpp";
      v6 = 1024;
      v7 = 149;
      v8 = 1024;
      v9 = v2;
      _os_log_impl(&dword_2371C2000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Received error from async acknowledgeNotification(), err = %d", &v4, 0x18u);
    }
  }
}

void std::__function::__func<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0,std::allocator<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0>,void ()(void)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0,std::allocator<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0>,void ()(void)>::destroy[abi:ne200100](a1[2]);

  operator delete(a1);
}

void std::__function::__alloc_func<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0,std::allocator<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0>,void ()(void)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void *std::__function::__func<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0,std::allocator<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v4 = result[2];
  *a2 = &unk_284A48980;
  a2[1] = v3;
  if (v4)
  {
    result = CFRetain(v4);
  }

  a2[2] = v4;
  return result;
}

void std::__function::__func<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0,std::allocator<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284A48980;
  v1 = a1[2];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2383C8250);
}

void *std::__function::__func<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0,std::allocator<MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284A48980;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void MIDISetup::FromPList(MIDISetup *this, __CFDictionary *a2)
{
  if (a2)
  {
    v4 = DictGetAndDelete(a2, @"devices");
    DeviceList::FromPList(this + 6, v4);
    CFRelease(v4);
    v5 = DictGetAndDelete(a2, @"externalDevices");
    if (v5)
    {
      v6 = v5;
      DeviceList::FromPList(this + 17, v5);
      CFRelease(v6);
    }

    v7 = DictGetAndDelete(a2, @"thruConnections");
    if (v7)
    {
      v8 = v7;
      Count = CFArrayGetCount(v7);
      v10 = *(this + 23);
      v11 = ((*(this + 24) - v10) >> 3) + Count;
      if (v11 > (*(this + 25) - v10) >> 3)
      {
        if (!(v11 >> 61))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ClientProcess *>>(v11);
        }

        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      if (Count >= 1)
      {
        CFArrayGetValueAtIndex(v8, 0);
        operator new();
      }

      CFRelease(v8);
    }

    MIDIObject::FromDictionary(this, a2);
  }
}

__CFDictionary *MIDISetup::ToPList(CFDictionaryRef *this)
{
  v2 = MIDIObject::ToDictionary(this[3]);
  v3 = DeviceList::ToPList((this + 6));
  CFDictionarySetValue(v2, @"devices", v3);
  CFRelease(v3);
  if (this[20] != this[19])
  {
    v4 = DeviceList::ToPList((this + 17));
    CFDictionarySetValue(v2, @"externalDevices", v4);
    CFRelease(v4);
  }

  v5 = this[24] - this[23];
  if (v5)
  {
    theDict = v2;
    Mutable = CFArrayCreateMutable(0, v5 >> 3, MEMORY[0x277CBF128]);
    v8 = this[23];
    v7 = this[24];
    if (v8 != v7)
    {
      v9 = MEMORY[0x277CBF138];
      v10 = MEMORY[0x277CBF150];
      do
      {
        v11 = *v8;
        if (*(*v8 + 16))
        {
          if (*(v11 + 48))
          {
            v12 = CFDictionaryCreateMutable(0, 0, v9, v10);
            cf = v12;
            v17 = 257;
            CFDictionarySetValue(v12, @"owner", *(v11 + 16));
            CFDictionarySetValue(v12, @"data", *(v11 + 48));
            v13 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            XCFObject<__CFDictionary const*>::~XCFObject(&cf);
          }

          else
          {
            v13 = 0;
          }

          CFArrayAppendValue(Mutable, v13);
          CFRelease(v13);
          v7 = this[24];
        }

        v8 = (v8 + 8);
      }

      while (v8 != v7);
    }

    v2 = theDict;
    CFDictionarySetValue(theDict, @"thruConnections", Mutable);
    CFRelease(Mutable);
  }

  return v2;
}

void sub_2372230F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XCFObject<__CFDictionary const*>::~XCFObject(va);
  _Unwind_Resume(a1);
}

uint64_t MIDISetup::SetProperty(CFTypeRef *this, const __CFString *cf1, const __CFString *a3)
{
  if (CFEqual(cf1, kMIDIPropertyName))
  {
    v6 = CFGetTypeID(a3);
    if (v6 != CFStringGetTypeID() || CFEqual(a3, this[26]))
    {
      return 0;
    }

    if (CFStringGetLength(this[26]))
    {
      MIDIConfigFileRenameOrDelete(this[26], a3);
      if (v9)
      {
        return 1;
      }
    }

    CFRelease(this[26]);
    this[26] = a3;
    v10 = CFRetain(a3);
    v11 = SetupManager::instance(v10);
    v7 = 1;
    *(v11 + 81) = 1;
    *(this + 217) = 1;
    v12 = SetupManager::instance(v11);
    SetupManager::SchedulePrefSaver(v12);
    MIDISetup::CheckWritePrefFile(this);
    return v7;
  }

  else
  {

    return MIDIObject::SetProperty(this, cf1, a3);
  }
}

void SetupManager::SchedulePrefSaver(SetupManager *this)
{
  if ((*(this + 83) & 1) == 0)
  {
    *(this + 83) = 1;
    v2 = *(this + 12);
    v3 = CFAbsoluteTimeGetCurrent() + 3.0;

    CFRunLoopTimerSetNextFireDate(v2, v3);
  }
}

void MIDISetup::CheckWritePrefFile(MIDISetup *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(this + 26);
  v2 = *(this + 217);
  if (v2 != 1)
  {
    if (*(SetupManager::instance(this) + 81) != 1)
    {
      return;
    }

    goto LABEL_16;
  }

  if (CFStringGetLength(*(this + 26)))
  {
    MIDIConfigGetFullPathToFile(v1, buf);
    gMIDISetup();
    v4 = gMIDISetup(void)::midiso;
    if (os_log_type_enabled(gMIDISetup(void)::midiso, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315650;
      v18 = "MIDISetup.cpp";
      v19 = 1024;
      v20 = 846;
      v21 = 2080;
      v22 = buf;
      _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Writing %s...", &v17, 0x1Cu);
    }

    v5 = (*(*this + 56))(this);
    Data = CFPropertyListCreateData(0, v5, kCFPropertyListXMLFormat_v1_0, 0, 0);
    CFRelease(v5);
    if (WriteFileFromCFData(buf, Data))
    {
      CFRelease(Data);
      *(SetupManager::instance(v7) + 81) = 1;
      v8 = "success";
    }

    else
    {
      if (Data)
      {
        CFRelease(Data);
      }

      v8 = "failed";
    }

    gMIDISetup();
    v9 = gMIDISetup(void)::midiso;
    if (os_log_type_enabled(gMIDISetup(void)::midiso, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315650;
      v18 = "MIDISetup.cpp";
      v19 = 1024;
      v20 = 858;
      v21 = 2080;
      v22 = v8;
      _os_log_impl(&dword_2371C2000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d -> %s", &v17, 0x1Cu);
    }
  }

  v10 = (*(*this + 56))(this);
  v11 = *MEMORY[0x277CBF040];
  v12 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"MIDISetup", v10, @"com.apple.MIDI", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFRelease(v10);
  *(this + 217) = 0;
  if (*(SetupManager::instance(v13) + 81))
  {
LABEL_16:
    if (CFStringGetLength(v1))
    {
      v11 = *MEMORY[0x277CBF040];
      v12 = *MEMORY[0x277CBF030];
      CFPreferencesSetValue(@"CurrentSetupFilename", v1, @"com.apple.MIDI", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
      gMIDISetup();
      v14 = gMIDISetup(void)::midiso;
      v15 = os_log_type_enabled(gMIDISetup(void)::midiso, OS_LOG_TYPE_DEBUG);
      if (v15)
      {
        *buf = 136315650;
        v24 = "MIDISetup.cpp";
        v25 = 1024;
        v26 = 876;
        v27 = 2112;
        v28 = v1;
        _os_log_impl(&dword_2371C2000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Set current document to %@", buf, 0x1Cu);
      }

      *(SetupManager::instance(v15) + 81) = 0;
    }

    else
    {
      *(SetupManager::instance(0) + 81) = 0;
      if (!v2)
      {
        return;
      }

      v11 = *MEMORY[0x277CBF040];
      v12 = *MEMORY[0x277CBF030];
    }
  }

  CFPreferencesSynchronize(@"com.apple.MIDI", v11, v12);
  gMIDISetup();
  v16 = gMIDISetup(void)::midiso;
  if (os_log_type_enabled(gMIDISetup(void)::midiso, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "MIDISetup.cpp";
    v25 = 1024;
    v26 = 885;
    _os_log_impl(&dword_2371C2000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Synchronized prefs", buf, 0x12u);
  }
}

void gMIDISetup(void)
{
  {
    gMIDISetup(void)::midiso = os_log_create("com.apple.coremidi", "midiso");
  }
}

uint64_t MIDISetup::GetProperty(MIDISetup *this, const __CFString *cf1, const void **a3)
{
  if (CFEqual(cf1, kMIDIPropertyName))
  {
    v6 = *(this + 26);
    *a3 = v6;
    CFRetain(v6);
    return 0;
  }

  else
  {

    return MIDIObject::GetProperty(this, cf1, a3, 1);
  }
}

uint64_t MIDISetup::PrintObject(MIDISetup *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDISetupRef", *(this + 2), this);
  fprintf(a2, " parent=0x%X", *(this + 2));

  return fputc(10, a2);
}

void MIDISetup::~MIDISetup(MIDISetup *this)
{
  MIDISetup::~MIDISetup(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46708;
  v2 = 1;
  do
  {
    v3 = v2;
    if (v2)
    {
      v4 = 136;
    }

    else
    {
      v4 = 48;
    }

    v5 = this + v4;
    while (1)
    {
      v6 = *(v5 + 3);
      if (*(v5 + 2) == v6)
      {
        break;
      }

      v7 = *(v6 - 8);
      *(v5 + 3) = v6 - 8;
      MIDISetup::DeviceRemoveEffects(this, v7);
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    v2 = 0;
  }

  while ((v3 & 1) != 0);
  OwnedPtrVector<MIDIConnection *>::~OwnedPtrVector(this + 22);
  v8 = *(this + 19);
  if (v8)
  {
    *(this + 20) = v8;
    operator delete(v8);
  }

  BaseOpaqueObject::~BaseOpaqueObject((this + 136));
  v9 = *(this + 14);
  if (v9)
  {
    *(this + 15) = v9;
    operator delete(v9);
  }

  v10 = *(this + 11);
  if (v10)
  {
    *(this + 12) = v10;
    operator delete(v10);
  }

  v11 = *(this + 8);
  if (v11)
  {
    *(this + 9) = v11;
    operator delete(v11);
  }

  BaseOpaqueObject::~BaseOpaqueObject((this + 48));
  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void *OwnedPtrVector<MIDIConnection *>::~OwnedPtrVector(void *a1)
{
  *a1 = &unk_284A46A50;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    v4 = a1[1];
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      v4 += 8;
    }

    while (v4 != v3);
    v5 = a1[2];
    v6 = v5 - v3;
    if (v5 != v3)
    {
      memmove(v2, v3, v5 - v3);
    }

    v7 = a1[1];
    a1[2] = &v2[v6];
    v2 = v7;
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void MIDISetup::DeviceRemoveEffects(MIDISetup *this, MIDIDevice *a2)
{
  v4 = *(a2 + 11) - *(a2 + 10);
  if ((v4 >> 3) >= 1)
  {
    v5 = 0;
    v6 = (v4 >> 3) & 0x7FFFFFFF;
    do
    {
      MIDISetup::EntityRemoveEffects(this, *(*(a2 + 10) + 8 * v5++));
    }

    while (v6 != v5);
  }

  MIDISetup::ObjectRemoved(this, a2);
}

void MIDISetup::ObjectRemoved(MIDISetup *this, MIDIObject *a2)
{
  if ((*(SetupManager::instance(this) + 80) & 1) == 0 && (*(a2 + 41) != 1 || *(a2 + 40) == 1))
  {
    *(a2 + 20) = 256;
    v4 = *(a2 + 2);
    if (v4)
    {
      (*(*v4 + 72))(v4);
    }

    (*(*a2 + 72))(a2);
    MIDISetup::GenerateNotification(this);
  }
}

void MIDISetup::EntityRemoveEffects(MIDISetup *this, MIDIEntity *a2)
{
  v4 = *(a2 + 10) - *(a2 + 9);
  if ((v4 >> 3) >= 1)
  {
    v5 = 0;
    v6 = (v4 >> 3) & 0x7FFFFFFF;
    do
    {
      v7 = *(*(a2 + 9) + 8 * v5);
      v9 = *(this + 11);
      v8 = *(this + 12);
      if (v9 != v8)
      {
        while (*v9 != v7)
        {
          if (++v9 == v8)
          {
            goto LABEL_11;
          }
        }
      }

      if (v9 != v8)
      {
        v10 = v8 - (v9 + 1);
        if (v8 != v9 + 1)
        {
          memmove(v9, v9 + 1, v8 - (v9 + 1));
        }

        *(this + 12) = v9 + v10;
      }

LABEL_11:
      MIDISetup::ObjectRemoved(this, v7);
      ++v5;
    }

    while (v5 != v6);
  }

  v11 = *(a2 + 14) - *(a2 + 13);
  if ((v11 >> 3) >= 1)
  {
    v12 = 0;
    v13 = (v11 >> 3) & 0x7FFFFFFF;
    do
    {
      v14 = *(*(a2 + 13) + 8 * v12);
      v16 = *(this + 14);
      v15 = *(this + 15);
      if (v16 != v15)
      {
        while (*v16 != v14)
        {
          if (++v16 == v15)
          {
            goto LABEL_22;
          }
        }
      }

      if (v16 != v15)
      {
        v17 = v15 - (v16 + 1);
        if (v15 != v16 + 1)
        {
          memmove(v16, v16 + 1, v15 - (v16 + 1));
        }

        *(this + 15) = v16 + v17;
      }

LABEL_22:
      MIDISetup::ObjectRemoved(this, v14);
      ++v12;
    }

    while (v12 != v13);
  }

  MIDISetup::ObjectRemoved(this, a2);
}

void MIDISetup::GenerateNotification(SetupManager *a1)
{
  if ((*(a1 + 216) & 1) == 0)
  {
    v2 = SetupManager::instance(a1);
    if (*v2 == a1 || (v2 = SetupManager::instance(v2), !*v2))
    {
      v3 = SetupManager::instance(v2);
      v4 = SetupManager::AddNotification(v3);
      if ((*(a1 + 218) & 1) == 0)
      {
        *(a1 + 217) = 1;
        v5 = SetupManager::instance(v4);

        SetupManager::SchedulePrefSaver(v5);
      }
    }
  }
}

uint64_t SetupManager::AddNotification(uint64_t result)
{
  if ((*(result + 80) & 1) == 0)
  {
    operator new();
  }

  return result;
}

void OwnedPtrVector<MIDIConnection *>::~OwnedPtrVector(void *a1)
{
  OwnedPtrVector<MIDIConnection *>::~OwnedPtrVector(a1);

  JUMPOUT(0x2383C8250);
}

void DeviceList::~DeviceList(DeviceList *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);

  JUMPOUT(0x2383C8250);
}

void MIDISetup::ThruConnectionList::~ThruConnectionList(MIDISetup::ThruConnectionList *this)
{
  OwnedPtrVector<MIDIConnection *>::~OwnedPtrVector(this);

  JUMPOUT(0x2383C8250);
}

void MIDISetup::MIDISetup(MIDISetup *this)
{
  BaseOpaqueObject::BaseOpaqueObject(this);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0;
  *v2 = &unk_284A46708;
  BaseOpaqueObject::BaseOpaqueObject((v2 + 48));
  *(this + 88) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 6) = &unk_284A47040;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  BaseOpaqueObject::BaseOpaqueObject((this + 136));
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 17) = &unk_284A47040;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  *(this + 22) = &unk_284A46328;
  *(this + 26) = &stru_284A49B90;
  *(this + 108) = 0;
  *(this + 218) = 0;
}

void sub_237224028(_Unwind_Exception *a1)
{
  v5 = *(v1 + 14);
  if (v5)
  {
    *(v1 + 15) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 12) = v6;
    operator delete(v6);
  }

  DeviceList::~DeviceList(v2);
  MIDIObject::~MIDIObject(v1);
  _Unwind_Resume(a1);
}

void MIDISetup::ScanForDriverDevices(MIDISetup *this)
{
  v3 = *(this + 8);
  v2 = *(this + 9);
  if (v3 != v2)
  {
    while (1)
    {
      v4 = *(*v3 + 8);
      if (!v4)
      {
        break;
      }

      if (*(v4 + 64) != 1)
      {
        goto LABEL_6;
      }

      MIDISetup::RemoveDevice(this, *v3);
      v3 = *(this + 8);
      v2 = *(this + 9);
LABEL_7:
      if (v3 == v2)
      {
        goto LABEL_8;
      }
    }

    MIDIObject::SetProperty(*v3, kMIDIPropertyOffline, 1);
    v2 = *(this + 9);
LABEL_6:
    ++v3;
    goto LABEL_7;
  }

LABEL_8:
  BaseOpaqueObject::BaseOpaqueObject(&v11);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v11 = &unk_284A47040;
  v6 = MIDIServer::defaultInstance(v5)[33];
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v7 != v8)
  {
    v9 = v12;
    do
    {
      if (*(*v7 + 64) == 1)
      {
        (*(**v7 + 80))(*v7, v9);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  v10 = v13;
  if (v13 != v14)
  {
    do
    {
      MIDISetup::AddDevice(this, *v10++);
    }

    while (v10 != v14);
    v10 = v13;
  }

  if (v10)
  {
    v14 = v10;
    operator delete(v10);
  }

  BaseOpaqueObject::~BaseOpaqueObject(&v11);
}

void sub_2372241C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DeviceList::~DeviceList(va);
  _Unwind_Resume(a1);
}

void MIDISetup::RemoveDevice(MIDISetup *this, MIDIDevice *a2)
{
  v4 = 48;
  if (!*(a2 + 6))
  {
    v4 = 136;
  }

  v5 = this + v4;
  v7 = *(this + v4 + 16);
  v6 = *(this + v4 + 24);
  if (v7 != v6)
  {
    while (*v7 != a2)
    {
      if (++v7 == v6)
      {
        return;
      }
    }
  }

  if (v7 != v6)
  {
    v8 = v6 - (v7 + 1);
    if (v6 != v7 + 1)
    {
      memmove(v7, v7 + 1, v6 - (v7 + 1));
    }

    *(v5 + 3) = v7 + v8;
    MIDISetup::DeviceRemoveEffects(this, a2);
    if (a2)
    {
      v9 = *(*a2 + 8);

      v9(a2);
    }
  }
}

void MIDISetup::AddDevice(MIDISetup *this, MIDIDevice *a2)
{
  v9 = a2;
  v4 = 48;
  if (!*(a2 + 6))
  {
    v4 = 136;
  }

  v5 = this + v4;
  v7 = *(v5 + 2);
  v8 = *(v5 + 3);
  v6 = (v5 + 16);
  if (v7 != v8)
  {
    while (*v7 != a2)
    {
      if (++v7 == v8)
      {
        goto LABEL_8;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_8:
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](v6, &v9);

    MIDISetup::DeviceAddEffects(this, a2, 0);
  }
}

void MIDISetup::DeviceAddEffects(MIDISetup *this, MIDIDevice *a2, char a3)
{
  MIDISetup::AssignUniqueID(this, a2);
  MIDISetup::ObjectAdded(this, a2);
  v6 = *(a2 + 11) - *(a2 + 10);
  if ((v6 >> 3) >= 1)
  {
    v7 = 0;
    v8 = (v6 >> 3) & 0x7FFFFFFF;
    do
    {
      MIDISetup::EntityAddEffects(this, *(*(a2 + 10) + 8 * v7++), a3);
    }

    while (v8 != v7);
  }
}

uint64_t MIDISetup::AssignUniqueID(MIDISetup *this, MIDIObject *a2)
{
  v12 = 0;
  IntegerProperty = MIDIObject::GetIntegerProperty(a2, kMIDIPropertyUniqueID, &v12);
  v5 = v12;
  if (IntegerProperty)
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = rand();
    v5 = v6 ^ (2 * rand());
  }

  do
  {
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    ObjectByUniqueID = MIDISetup::FindObjectByUniqueID(this, v7, a2);
    v5 = v7 + 1;
  }

  while (ObjectByUniqueID);
  v13 = 0;
  result = MIDIObject::GetIntegerProperty(a2, kMIDIPropertyUniqueID, &v13);
  if (result)
  {
    v10 = 0;
  }

  else
  {
    v10 = v13 == v7;
  }

  if (!v10)
  {
    v11 = *(this + 218);
    *(this + 218) = 0;
    result = MIDIObject::SetProperty(a2, kMIDIPropertyUniqueID, v7);
    *(this + 218) = v11;
  }

  return result;
}

void MIDISetup::ObjectAdded(MIDISetup *this, MIDIObject *a2)
{
  if ((*(SetupManager::instance(this) + 80) & 1) == 0 && (*(a2 + 40) != 1 || *(a2 + 41) == 1))
  {
    *(a2 + 20) = 1;
    v4 = *(a2 + 2);
    if (v4)
    {
      (*(*v4 + 72))(v4);
    }

    (*(*a2 + 72))(a2);
    MIDISetup::GenerateNotification(this);
  }
}

void MIDISetup::EntityAddEffects(MIDIConnection ***this, MIDIEntity *a2, char a3)
{
  v6 = *(a2 + 6);
  v7 = *(v6 + 6);
  v24 = 0;
  if (MIDIObject::GetIntegerProperty(v6, kMIDIPropertyAdvanceScheduleTimeMuSec, &v24))
  {
    v24 = 0;
  }

  MIDISetup::AssignUniqueID(this, a2);
  MIDISetup::ObjectAdded(this, a2);
  v8 = *(a2 + 10) - *(a2 + 9);
  if ((v8 >> 3) < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = (v8 >> 3) & 0x7FFFFFFF;
    do
    {
      v12 = *(*(a2 + 9) + 8 * v9);
      v23 = v12;
      if (v7)
      {
        v13 = this[11];
        v14 = this[12];
        if (v13 != v14)
        {
          while (*v13 != v12)
          {
            if (++v13 == v14)
            {
              goto LABEL_11;
            }
          }
        }

        if (v13 == v14)
        {
LABEL_11:
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100]((this + 11), &v23);
          v10 = 1;
        }
      }

      MIDISetup::AssignUniqueID(this, v12);
      MIDISetup::ObjectAdded(this, v12);
      ++v9;
    }

    while (v9 != v11);
  }

  v15 = *(a2 + 14) - *(a2 + 13);
  if ((v15 >> 3) >= 1)
  {
    v16 = 0;
    v17 = (v15 >> 3) & 0x7FFFFFFF;
    do
    {
      v18 = *(*(a2 + 13) + 8 * v16);
      v23 = v18;
      if (v7)
      {
        v19 = this[14];
        v20 = this[15];
        if (v19 != v20)
        {
          while (*v19 != v18)
          {
            if (++v19 == v20)
            {
              goto LABEL_23;
            }
          }
        }

        if (v19 == v20)
        {
LABEL_23:
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100]((this + 14), &v23);
          v10 = 1;
        }
      }

      MIDISetup::AssignUniqueID(this, v18);
      *(v18 + 219) = v24;
      MIDISetup::ObjectAdded(this, v18);
      ++v16;
    }

    while (v16 != v17);
  }

  if ((v10 & 1) != 0 && (a3 & 1) == 0)
  {
    for (i = this[23]; i != this[24]; ++i)
    {
      v22 = *i;
      MIDIConnection::MaintainEndpoints(v22, this);
    }
  }
}

MIDIObject *MIDISetup::FindObjectByUniqueID(MIDISetup *this, int a2, MIDIObject *a3)
{
  ObjectInDeviceListByUniqueID = MIDISetup::FindObjectInDeviceListByUniqueID(this + 48, a2, a3);
  if (ObjectInDeviceListByUniqueID)
  {
    return ObjectInDeviceListByUniqueID;
  }

  ObjectInDeviceListByUniqueID = MIDISetup::FindObjectInDeviceListByUniqueID(this + 136, a2, a3);
  if (ObjectInDeviceListByUniqueID)
  {
    return ObjectInDeviceListByUniqueID;
  }

  IntegerProperty = SetupManager::instance(0);
  v11 = *(IntegerProperty + 1);
  v10 = *(IntegerProperty + 2);
  if (v11 != v10)
  {
    v12 = IntegerProperty;
    do
    {
      v7 = *v11;
      if (*v11 != a3)
      {
        v20 = 0;
        IntegerProperty = MIDIObject::GetIntegerProperty(v7, kMIDIPropertyUniqueID, &v20);
        v13 = v20;
        if (IntegerProperty)
        {
          v13 = 0;
        }

        if (v13 == a2)
        {
          return v7;
        }

        v10 = *(v12 + 2);
      }

      ++v11;
    }

    while (v11 != v10);
  }

  v14 = SetupManager::instance(IntegerProperty);
  v16 = *(v14 + 32);
  v15 = *(v14 + 40);
  if (v16 != v15)
  {
    v17 = v14;
    do
    {
      v7 = *v16;
      if (*v16 != a3)
      {
        v21 = 0;
        v18 = MIDIObject::GetIntegerProperty(v7, kMIDIPropertyUniqueID, &v21);
        v19 = v21;
        if (v18)
        {
          v19 = 0;
        }

        if (v19 == a2)
        {
          return v7;
        }

        v15 = *(v17 + 40);
      }

      ++v16;
    }

    while (v16 != v15);
  }

  return 0;
}

MIDIObject *MIDISetup::FindObjectInDeviceListByUniqueID(uint64_t a1, int a2, MIDIObject *a3)
{
  v3 = *(a1 + 16);
  if (v3 == *(a1 + 24))
  {
    return 0;
  }

  while (1)
  {
    v6 = *v3;
    if (*v3 != a3)
    {
      v28 = 0;
      IntegerProperty = MIDIObject::GetIntegerProperty(v6, kMIDIPropertyUniqueID, &v28);
      v8 = v28;
      if (IntegerProperty)
      {
        v8 = 0;
      }

      if (v8 == a2)
      {
        return v6;
      }
    }

    v9 = *(v6 + 11) - *(v6 + 10);
    if ((v9 >> 3) >= 1)
    {
      break;
    }

LABEL_27:
    if (++v3 == *(a1 + 24))
    {
      return 0;
    }
  }

  v10 = 0;
  v27 = (v9 >> 3) & 0x7FFFFFFF;
  while (1)
  {
    v11 = *(*(v6 + 10) + 8 * v10);
    if (v11 != a3)
    {
      v28 = 0;
      v12 = MIDIObject::GetIntegerProperty(v11, kMIDIPropertyUniqueID, &v28);
      v13 = v28;
      if (v12)
      {
        v13 = 0;
      }

      if (v13 == a2)
      {
        return v11;
      }
    }

    v14 = *(v11 + 10) - *(v11 + 9);
    if ((v14 >> 3) >= 1)
    {
      break;
    }

LABEL_19:
    v20 = *(v11 + 14) - *(v11 + 13);
    if ((v20 >> 3) >= 1)
    {
      v21 = 0;
      v22 = (v20 >> 3) & 0x7FFFFFFF;
      do
      {
        v17 = *(*(v11 + 13) + 8 * v21);
        if (v17 != a3)
        {
          v28 = 0;
          v23 = MIDIObject::GetIntegerProperty(v17, kMIDIPropertyUniqueID, &v28);
          v24 = v28;
          if (v23)
          {
            v24 = 0;
          }

          if (v24 == a2)
          {
            return v17;
          }
        }
      }

      while (v22 != ++v21);
    }

    if (++v10 == v27)
    {
      goto LABEL_27;
    }
  }

  v15 = 0;
  v16 = (v14 >> 3) & 0x7FFFFFFF;
  while (1)
  {
    v17 = *(*(v11 + 9) + 8 * v15);
    if (v17 != a3)
    {
      v28 = 0;
      v18 = MIDIObject::GetIntegerProperty(v17, kMIDIPropertyUniqueID, &v28);
      v19 = v28;
      if (v18)
      {
        v19 = 0;
      }

      if (v19 == a2)
      {
        return v17;
      }
    }

    if (v16 == ++v15)
    {
      goto LABEL_19;
    }
  }
}

uint64_t MIDISetup::FromData(MIDISetup *this, const __CFData *a2)
{
  error = 0;
  v3 = CFPropertyListCreateWithData(0, a2, 0, 0, &error);
  if (error)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    if (error)
    {
      CFRelease(error);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    return 4294956456;
  }

  else
  {
    (*(*this + 64))(this, v3);
    CFRelease(v3);
    MIDISetup::CreationEffects(this);
    return 0;
  }
}

void MIDISetup::CreationEffects(MIDISetup *this)
{
  *(this + 218) = 1;
  *(this + 12) = *(this + 11);
  *(this + 15) = *(this + 14);
  v3 = *(this + 8);
  for (i = *(this + 9); v3 != i; i = *(this + 9))
  {
    v4 = *v3++;
    MIDISetup::DeviceAddEffects(this, v4, 1);
  }

  for (j = *(this + 19); j != *(this + 20); ++j)
  {
    v6 = *j;
    MIDISetup::DeviceAddEffects(this, v6, 1);
  }

  *(this + 218) = 0;
  for (k = *(this + 23); k != *(this + 24); ++k)
  {
    v8 = *k;
    MIDIConnection::MaintainEndpoints(v8, this);
  }
}

void MIDISetup::SetMIDIRunning(MIDISetup *this, int a2)
{
  v2 = this;
  v3 = MIDIServer::defaultInstance(this, a2);
  if (v2)
  {
    v5 = v3;
    v6 = v3[122];
    v7 = v3 + 123;
    if (v6 != v3 + 123)
    {
      do
      {
        UMPStream::EndpointManager::sendEndpointDiscoveryMessage((v5 + 110), *(v6 + 7));
        v8 = v6[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v7);
    }

    std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(v5[123]);
    v5[122] = v7;
    *v7 = 0u;
  }

  v11 = (MIDIServer::defaultInstance(v3, v4) + 688);

  MIDICI::DeviceManager::setMIDIRunning(v11, v2);
}

void *std::vector<MIDIDevice *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClientProcess *>>(a2);
    }

    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<MIDISource *>::__init_with_size[abi:ne200100]<MIDISource **,MIDISource **>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClientProcess *>>(a4);
    }

    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_237224EEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

MIDIServer *SetupManager::NotificationTimerCallback(MIDIServer *this, __CFRunLoopTimer *a2, void *a3)
{
  if (*(a2 + 9))
  {
    v4 = (a2 + 56);
    v5 = MIDIServer::defaultInstance(this, a2);
    v7 = *(v5 + 200);
    v6 = *(v5 + 208);
    for (i = v5; v7 != v6; ++v7)
    {
      v8 = *v7;
      if (!*(*v7 + 48))
      {
        for (j = *(a2 + 8); j != v4; j = j[1])
        {
          v10 = *(v8 + 56);
          if (v10)
          {
            (*(v10 + 16))(v10, j + 2);
          }
        }

        v18[0] = 0x800000001;
        v11 = *(v8 + 56);
        if (v11)
        {
          (*(v11 + 16))(v11, v18);
        }

        v6 = i[26];
      }
    }

    v12 = i[29];
    if (v12 == i[30])
    {
      goto LABEL_30;
    }

    while (1)
    {
      v13 = *v12;
      if (*(*v12 + 13))
      {
        goto LABEL_29;
      }

      v14 = *(a2 + 8);
      if (v14 == v4)
      {
        goto LABEL_27;
      }

      do
      {
        v15 = *(v14 + 16);
        if (v15 > 4099)
        {
          if (v15 == 4100 || v15 == 4101)
          {
            v16 = *(v14 + 40);
            if (v16)
            {
              goto LABEL_23;
            }
          }
        }

        else if ((v15 - 4096) < 3 || v15 == 4)
        {
          v16 = *(v14 + 32);
LABEL_23:
          CFRetain(v16);
        }

        v14 = *(v14 + 8);
      }

      while (v14 != v4);
      if (*(a2 + 8) != v4)
      {
        operator new();
      }

LABEL_27:
      if ((*(v13 + 320) & 1) == 0)
      {
        ClientProcess::DeliverNotifications(v13);
      }

LABEL_29:
      if (++v12 == i[30])
      {
LABEL_30:
        this = NotificationQueue::eraseall(v4);
        break;
      }
    }
  }

  *(a2 + 82) = 0;
  return this;
}

void sub_237225168(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void SetupManager::PrefSaverTimerCallback(SetupManager *this, MIDISetup **a2, void *a3)
{
  if (*a2)
  {
    MIDISetup::CheckWritePrefFile(*a2);
  }

  *(a2 + 83) = 0;
}

void UMPCIClients::instance(UMPCIClients *this)
{
  {
    if (v1)
    {
      UMPCIClients::UMPCIClients(v1);
    }
  }
}

void UMPCIClients::UMPCIClients(UMPCIClients *this)
{
  std::string::basic_string[abi:ne200100]<0>(bytes, "UMPCI shared client");
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3321888768;
  v8[2] = ___ZN12UMPCIClientsC2Ev_block_invoke;
  v8[3] = &__block_descriptor_40_ea8_32c50_ZTSKZN12UMPCIClientsC1EvEUlPK16MIDINotificationE__e30_v16__0r__MIDINotification_iI_8l;
  v8[4] = &UMPCIClients::instance(void)::all;
  v1 = v8;
  UMPCIClients::instance(void)::all = 0;
  v2 = v10;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v3 = bytes[0];
    if (!bytes[0])
    {
      v4 = 0;
      v12 = 0;
      goto LABEL_6;
    }

    v2 = bytes[1];
  }

  else
  {
    v3 = bytes;
  }

  v4 = CFStringCreateWithBytes(0, v3, v2, 0x8000100u, 0);
  v12 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

LABEL_6:
  v5 = MIDIClientCreateWithBlockInternal(v4, &UMPCIClients::instance(void)::all, v1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "Creating MIDI client failed miserably.");
  if (v5)
  {
    v6 = __cxa_allocate_exception(0x18uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = __p;
    }

    MIDI::Exception::Exception(v6, v5, &v13);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v10 < 0)
  {
    operator delete(bytes[0]);
  }
}

void sub_237225430(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_free_exception(v26);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef((v27 - 72));

  if (a19 < 0)
  {
    operator delete(a14);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

void ___ZN12UMPCIClientsC2Ev_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 4098)
  {
    switch(v3)
    {
      case 4099:
        v14 = *(a2 + 8);
        v28 = +[MIDICIDeviceManager sharedInstance];
        [v28 setServerMUID:v14];
        break;
      case 4100:
        v28 = +[MIDICIDeviceManager sharedInstance];
        [v28 handleProfileDetailsReplyMessage:a2];
        break;
      case 4101:
        v28 = +[MIDICIDeviceManager sharedInstance];
        [v28 handleProcessInquiryReplyMessage:a2];
        break;
      default:
        return;
    }

    goto LABEL_30;
  }

  switch(v3)
  {
    case 4096:
      v9 = *(a2 + 16);
      if (!v9)
      {
        return;
      }

      cf = *(a2 + 16);
      v10 = CFGetTypeID(v9);
      if (v10 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](exception, "Could not construct");
      }

      v6 = cf;
      v11 = applesauce::CF::details::at_key<char const* const&>(cf, "type");
      if (!v11)
      {
        goto LABEL_43;
      }

      valuePtr = 0;
      if (!CFNumberGetValue(v11, kCFNumberIntType, &valuePtr))
      {
        goto LABEL_54;
      }

      if (valuePtr > 2)
      {
        if (valuePtr == 3)
        {
          v12 = [[MIDIUMPCIProfile alloc] initWithDescription:v9];
          v13 = +[MIDICIDeviceManager sharedInstance];
          [v13 addProfile:v12];
        }

        else
        {
          if (valuePtr != 4)
          {
            goto LABEL_54;
          }

          v12 = [[MIDICIDevice alloc] initWithDescription:v9];
          v13 = +[MIDICIDeviceManager sharedInstance];
          [v13 addDevice:v12];
        }
      }

      else if (valuePtr == 1)
      {
        v12 = [[MIDIUMPFunctionBlock alloc] initWithDescription:v9];
        v13 = +[MIDIUMPEndpointManager sharedInstance];
        [v13 addFunctionBlock:v12];
      }

      else
      {
        if (valuePtr != 2)
        {
          goto LABEL_54;
        }

        v12 = [[MIDIUMPEndpoint alloc] initWithDescription:v9];
        v13 = +[MIDIUMPEndpointManager sharedInstance];
        [v13 addEndpoint:v12];
      }

LABEL_54:
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    case 4097:
      v15 = *(a2 + 8);
      v28 = +[MIDIUMPEndpointManager sharedInstance];
      if (([v28 removeFunctionBlock:v15] & 1) == 0)
      {
        v16 = +[MIDIUMPEndpointManager sharedInstance];
        if (([v16 removeEndpoint:v15] & 1) == 0)
        {
          v17 = +[MIDICIDeviceManager sharedInstance];
          if (([v17 removeDevice:v15] & 1) == 0)
          {
            v18 = +[MIDICIDeviceManager sharedInstance];
            [v18 removeProfile:v15];
          }
        }
      }

LABEL_30:

      return;
    case 4098:
      v4 = *(a2 + 16);
      cf = v4;
      if (!v4)
      {
        goto LABEL_57;
      }

      v5 = CFGetTypeID(v4);
      if (v5 != CFDictionaryGetTypeID())
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v26, "Could not construct");
      }

      v6 = cf;
      if (!cf)
      {
LABEL_57:
        v25 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v25, "Could not construct");
      }

      v7 = applesauce::CF::details::at_key<char const* const&>(cf, "object");
      if (v7)
      {
        v8 = applesauce::CF::convert_as<unsigned int,0>(v7);
      }

      else
      {
        v8 = 0;
      }

      v19 = applesauce::CF::details::find_at_key_or_optional<UMPCIObjectType,char const* const&>(cf, "type");
      if ((v8 & 0x100000000) != 0 && v19 >> 32)
      {
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = +[MIDICIDeviceManager sharedInstance];
            v24 = cf;
            cf = 0;
            [v20 updateProfile:v8 description:v24];
            goto LABEL_49;
          }

          if (v19 == 4)
          {
            v20 = +[MIDICIDeviceManager sharedInstance];
            v22 = cf;
            cf = 0;
            [v20 updateDevice:v8 description:v22];
            goto LABEL_49;
          }
        }

        else
        {
          if (v19 == 1)
          {
            v20 = +[MIDIUMPEndpointManager sharedInstance];
            v23 = cf;
            cf = 0;
            [v20 updateFunctionBlock:v8 description:v23];
            goto LABEL_49;
          }

          if (v19 == 2)
          {
            v20 = +[MIDIUMPEndpointManager sharedInstance];
            v21 = cf;
            cf = 0;
            [v20 updateEndpoint:v8 description:v21];
LABEL_49:

            return;
          }
        }
      }

LABEL_43:
      CFRelease(v6);
      break;
  }
}

void sub_237225A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, const void *a12)
{
  v14 = v12;

  applesauce::CF::DictionaryRef::~DictionaryRef(&a12);
  _Unwind_Resume(a1);
}

uint64_t MIDI::Exception::Exception(uint64_t a1, int __val, uint64_t a3)
{
  std::to_string(&v22, __val);
  v6 = std::string::insert(&v22, 0, "Error code: ", 0xCuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a3 + 23);
  if (v8 < 0)
  {
    v8 = *(a3 + 8);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (*(a3 + 23))
  {
LABEL_3:
    std::operator+<char>();
    v9 = std::string::append(&v19, ")", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v21 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = HIBYTE(v21);
    v13 = __p[0];
    v12 = __p[1];
    goto LABEL_6;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
LABEL_6:
  if ((v11 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = v13;
  }

  if ((v11 & 0x80u) == 0)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  v16 = std::string::append(&v23, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v24);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_284A48A10;
  *(a1 + 16) = __val;
  return a1;
}

void sub_237225CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void MIDI::Exception::~Exception(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x2383C8250);
}

void sendUMPMessage(MIDIEndpointRef dest, const MIDIEventList *evtlist)
{
  {
    if (v5)
    {
      UMPCIClients::instance(v5);
      v6 = UMPCIClients::instance(void)::all;
      std::string::basic_string[abi:ne200100]<0>(&v9, "MIDI_CLIENT_UMPCI_PORT");
      MIDI::OutputPort::OutputPort(v6, &v9);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }
    }
  }

  v4 = MIDISendEventList(sendUMPMessage(unsigned int,MIDIEventList const*)::port, dest, evtlist);
  std::string::basic_string[abi:ne200100]<0>(&__p, "failed to send data to endpoint");
  if (v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = __p;
    }

    MIDI::Exception::Exception(exception, v4, &v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_237225EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIDI::OutputPort::OutputPort(MIDIClientRef a1, uint64_t a2)
{
  sendUMPMessage(unsigned int,MIDIEventList const*)::port = 0;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v4)
  {
    if (v3 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = *(a2 + 8);
    }

    v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    cf = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }
  }

  else
  {
    v6 = 0;
    cf = 0;
  }

  v8 = MIDIOutputPortCreate(a1, v6, &sendUMPMessage(unsigned int,MIDIEventList const*)::port);
  std::string::basic_string[abi:ne200100]<0>(&__p, "failed to create output port");
  if (v8)
  {
    v9 = __cxa_allocate_exception(0x18uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = __p;
    }

    MIDI::Exception::Exception(v9, v8, &v12);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2372260E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a15);
  MIDI::Port::~Port(v23);
  _Unwind_Resume(a1);
}

void sendUMPMessage(MIDIEndpointRef a1, unsigned int a2, const midi::sysex7 *a3)
{
  v6 = 3;
  if ((*a3 & 0xFF0000) != 0)
  {
    v6 = 1;
  }

  if (*a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  std::vector<unsigned char>::vector[abi:ne200100](&__p, ((2 * (((v7 + *(a3 + 2) - *(a3 + 1)) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFF8) + 28);
  v8 = __p;
  evtlist[0] = __p;
  evtlist[1] = (v22 - __p);
  *__p = 1;
  evtlist[2] = (v8 + 8);
  *(v8 + 4) = 0;
  if (a2 >= 0x10)
  {
    __assert_rtn("set_group", "universal_packet.h", 414, "c < 16");
  }

  v9 = *a3;
  v10 = 3;
  if ((*a3 & 0xFF0000) != 0)
  {
    v10 = 1;
  }

  if (!v9)
  {
    v10 = 0;
  }

  v11 = (v10 + *(a3 + 2) - *(a3 + 1)) >= 7;
  v12 = 806354944;
  if (!v11)
  {
    v12 = 805306368;
  }

  v23 = v12 | (a2 << 24);
  v24 = 0;
  midi::sysex7_packet::add_payload_byte(&v23, BYTE2(v9) & 0x7F);
  if (*a3)
  {
    midi::sysex7_packet::add_payload_byte(&v23, BYTE1(*a3) & 0x7F);
    midi::sysex7_packet::add_payload_byte(&v23, *a3 & 0x7F);
  }

  v15 = a3 + 8;
  v13 = *(a3 + 1);
  v14 = *(v15 + 1);
  if (v13 == v14)
  {
    LODWORD(v18) = v23;
  }

  else
  {
    v16 = a2 << 24;
    v17 = &v14[~v13];
    do
    {
      midi::sysex7_packet::add_payload_byte(&v23, *v13);
      LODWORD(v18) = v23;
      if ((v23 & 0xF0000) == 0x60000)
      {
        SysexMessageToEventList<[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2>(unsigned char,midi::sysex7 const&,[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2)::{lambda(midi::data_message const&)#1}::operator()(evtlist, &v23);
        if (v17 >= 7)
        {
          v19 = 807403520;
        }

        else
        {
          v19 = 808452096;
        }

        v18 = v19 | v16;
        v23 = v18;
        v24 = 0;
      }

      ++v13;
      --v17;
    }

    while (v13 != v14);
  }

  if ((v18 & 0xF0000) != 0)
  {
    SysexMessageToEventList<[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2>(unsigned char,midi::sysex7 const&,[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2)::{lambda(midi::data_message const&)#1}::operator()(evtlist, &v23);
  }

  sendUMPMessage(a1, evtlist[0]);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_23722637C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADeprecated::CAPThread::Start(uint64_t this)
{
  v18 = *MEMORY[0x277D85DE8];
  if (atomic_load((this + 8)))
  {
    CAVerboseAbort();
  }

  if (!atomic_load((this + 8)))
  {
    v3 = this;
    v4 = pthread_attr_init(&v17);
    if (v4)
    {
      v7 = v4;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      v14 = "CAPThread.cpp";
      v15 = 1024;
      v16 = 255;
      v8 = MEMORY[0x277D86220];
      v9 = "%25s:%-5d  CAPThread::Start: Thread attributes could not be created.";
    }

    else
    {
      v5 = pthread_attr_setdetachstate(&v17, 2);
      if (v5)
      {
        v7 = v5;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 136315394;
        v14 = "CAPThread.cpp";
        v15 = 1024;
        v16 = 258;
        v8 = MEMORY[0x277D86220];
        v9 = "%25s:%-5d  CAPThread::Start: A thread could not be created in the detached state.";
      }

      else
      {
        pthread_attr_getschedparam(&v17, &v12);
        v12.sched_priority = *(v3 + 104);
        pthread_attr_setschedparam(&v17, &v12);
        if (*(v3 + 122) == 1)
        {
          pthread_attr_setschedpolicy(&v17, 4);
        }

        v11 = 0;
        v6 = pthread_create(&v11, &v17, CADeprecated::CAPThread::Entry, v3);
        if (!v6 && v11)
        {
          atomic_store(v11, (v3 + 8));
          return pthread_attr_destroy(&v17);
        }

        v7 = v6;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_19:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &unk_284A46E20;
          exception[2] = v7;
        }

        *buf = 136315394;
        v14 = "CAPThread.cpp";
        v15 = 1024;
        v16 = 272;
        v8 = MEMORY[0x277D86220];
        v9 = "%25s:%-5d  CAPThread::Start: Could not create a thread.";
      }
    }

    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
    goto LABEL_19;
  }

  return this;
}

uint64_t CADeprecated::CAPThread::Entry(CADeprecated::CAPThread *this, void *a2)
{
  atomic_store(pthread_self(), this + 1);
  if (*(this + 40))
  {
    pthread_setname_np(this + 40);
  }

  if (*(this + 121) == 1)
  {
    CADeprecated::CAPThread::SetTimeConstraints(this, *(this + 27), *(this + 28), *(this + 29), *(this + 120));
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = v3(*(this + 4));
  }

  else
  {
    v4 = 0;
  }

  atomic_store(0, this + 1);
  if (*(this + 123) == 1)
  {
    (*(*this + 8))(this);
  }

  return v4;
}

uint64_t CADeprecated::CAPThread::SetTimeConstraints(uint64_t this, int a2, int a3, int a4, char a5)
{
  *(this + 108) = a2;
  *(this + 112) = a3;
  *(this + 116) = a4;
  *(this + 120) = a5;
  *(this + 121) = 1;
  if (atomic_load((this + 8)))
  {
    *policy_info = *(this + 108);
    v6 = *(this + 120);
    v11 = *(this + 116);
    v12 = v6;
    v7 = atomic_load((this + 8));
    v8 = pthread_mach_thread_np(v7);
    this = thread_policy_set(v8, 2u, policy_info, 4u);
    if (this)
    {
      v9 = CAVerboseAbort();
      CADeprecated::CAPThread::~CAPThread(v9);
    }
  }

  return this;
}

CADeprecated::CAPThread *CADeprecated::CAPThread::CAPThread(CADeprecated::CAPThread *this, void *(*a2)(void *), void *a3, int a4, BOOL a5, BOOL a6, const char *a7)
{
  *this = &unk_284A46400;
  *(this + 1) = 0;
  v11 = pthread_self();
  *(this + 4) = CADeprecated::CAPThread::getScheduledPriority(v11, v12);
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 26) = a4;
  *(this + 27) = 0;
  *(this + 14) = 0;
  *(this + 30) = 1;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return this;
}

_opaque_pthread_t *CADeprecated::CAPThread::getScheduledPriority(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  if (this)
  {
    v2 = this;
    thread_info_outCnt = 10;
    v3 = pthread_mach_thread_np(this);
    thread_info(v3, 3u, thread_info_out, &thread_info_outCnt);
    switch(v12)
    {
      case 4:
        thread_info_outCnt = 4;
        v6 = pthread_mach_thread_np(v2);
        thread_info(v6, 0xCu, v10, &thread_info_outCnt);
        return v10[1];
      case 2:
        thread_info_outCnt = 5;
        v5 = pthread_mach_thread_np(v2);
        thread_info(v5, 0xBu, v9, &thread_info_outCnt);
        return v9[1];
      case 1:
        thread_info_outCnt = 5;
        v4 = pthread_mach_thread_np(v2);
        thread_info(v4, 0xAu, v8, &thread_info_outCnt);
        return v8[1];
      default:
        return 0;
    }
  }

  return this;
}

uint64_t MIDIProcess::MIDIInPortThread::Run(MIDIProcess::MIDIInPortThread *this)
{
  v24 = *MEMORY[0x277D85DE8];
  *(this + 137) = 1;
  v1 = *(this + 18);
  do
  {
    while (1)
    {
      while (1)
      {
        v15 = 32;
        v16 = 0;
        result = XServerMachPort::ReceiveMessage(**(v1 + 16), &v16, v20, &v15);
        if (v16 != 1)
        {
          break;
        }

        *msg = 1;
        while (MIDIIORingBufferReader::readPacketList(*(v1 + 40), &v14, msg))
        {
          if (*&msg[4])
          {
            v6 = v14;
            v5 = HIDWORD(v14);
            atomic_fetch_add((v1 + 284), 1u);
            while (*(v1 + 280))
            {
              atomic_fetch_add((v1 + 284), 0xFFFFFFFF);
              usleep(0x1F4u);
              atomic_fetch_add((v1 + 284), 1u);
            }

            for (i = *(v1 + 168); i != *(v1 + 176); ++i)
            {
              v8 = *i;
              if (*(*i + 4) == v6)
              {
                for (j = *(v8 + 32); j != *(v8 + 40); j += 16)
                {
                  if (*j == v5)
                  {
                    (*(**(j + 8) + 16))(*(j + 8), msg);
                    goto LABEL_23;
                  }
                }

                break;
              }
            }

LABEL_23:
            atomic_fetch_add((v1 + 284), 0xFFFFFFFF);
          }
        }

        v10 = *(v1 + 40);
        v11 = atomic_load((*(v10 + 88) + 16));
        if (v11 && !atomic_fetch_or((*(v10 + 88) + 24), 1u))
        {
          v12 = atomic_load((*(*(v1 + 40) + 88) + 8));
          v13 = **(v1 + 24);
          *v21 = 0x2800000013;
          *&v21[8] = v13;
          *&v21[20] = 0;
          *&v21[12] = 0;
          v22 = 0x400000002;
          v23 = v12;
          mach_msg(v21, 1, 0x28u, 0, 0, 0, 0);
        }
      }

      if (v16 != 2)
      {
        break;
      }

      if (MIDIIORingBufferWriter::emptySecondaryQueue(*(v1 + 48)))
      {
        v3 = atomic_load((*(*(v1 + 48) + 88) + 8));
        v4 = **(v1 + 24);
        *msg = 0x2800000013;
        *&msg[8] = v4;
        *&msg[20] = 0;
        *&msg[12] = 0;
        v18 = 0x400000001;
        v19 = v3;
        mach_msg(msg, 1, 0x28u, 0, 0, 0, 0);
      }
    }
  }

  while (v16 != 3);
  return result;
}

uint64_t MIDIProcess::MIDIInPortThread::RequestStop(MIDIProcess::MIDIInPortThread *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = **(*(this + 18) + 16);
  v3 = 0x2400000013;
  v4 = v1;
  v6 = 0;
  v5 = 0;
  v7 = 3;
  return mach_msg(&v3, 1, 0x24u, 0, 0, 0, 0);
}

uint64_t MIDIProcess::MIDIInPortThread::Start(MIDIProcess::MIDIInPortThread *this)
{
  CADeprecated::CAPThread::SetTimeConstraints(this, 0, 6000, 12000, 1);

  return CADeprecated::CAPThread::Start(this);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<LocalMIDIClient>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<LocalMIDIClient>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::__shared_ptr_emplace<LocalMIDIClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A462A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383C8250);
}

void LocalClientList::Copy(uint64_t **a1, uint64_t *a2)
{
  v4 = (a1 + 11);
  v5 = ((*a1)[2])(a1);
  if (v4 == a2)
  {
LABEL_15:
    if (!v5)
    {
      return;
    }

    goto LABEL_16;
  }

  v7 = a1[11];
  v6 = a1[12];
  v8 = v6 - v7;
  v9 = a2[2];
  v10 = *a2;
  if (v9 - *a2 < (v6 - v7))
  {
    v11 = v8 >> 4;
    if (v10)
    {
      std::vector<std::shared_ptr<LocalMIDIClient>>::clear[abi:ne200100](a2);
      operator delete(*a2);
      v9 = 0;
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    if (!(v11 >> 60))
    {
      v12 = v9 >> 3;
      if (v9 >> 3 <= v11)
      {
        v12 = v11;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 60))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<LocalMIDIClient>>>(v13);
      }
    }

    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }

  v14 = a2[1] - v10;
  if (v14 < v8)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<LocalMIDIClient> *,std::shared_ptr<LocalMIDIClient> *,std::shared_ptr<LocalMIDIClient> *>(a1[11], (v7 + v14), v10);
    a2[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<LocalMIDIClient>>,std::shared_ptr<LocalMIDIClient>*,std::shared_ptr<LocalMIDIClient>*,std::shared_ptr<LocalMIDIClient>*>(a2, (v7 + v14), v6, a2[1]);
    goto LABEL_15;
  }

  v15 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<LocalMIDIClient> *,std::shared_ptr<LocalMIDIClient> *,std::shared_ptr<LocalMIDIClient> *>(a1[11], a1[12], v10);
  for (i = a2[1]; i != v15; i -= 2)
  {
    v17 = *(i - 1);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  a2[1] = v15;
  if (v5)
  {
LABEL_16:
    ((*a1)[3])(a1);
  }
}

void *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<LocalMIDIClient> *,std::shared_ptr<LocalMIDIClient> *,std::shared_ptr<LocalMIDIClient> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<LocalMIDIClient>>,std::shared_ptr<LocalMIDIClient>*,std::shared_ptr<LocalMIDIClient>*,std::shared_ptr<LocalMIDIClient>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  for (result = a4; a2 != a3; result += 2)
  {
    v5 = a2[1];
    *result = *a2;
    result[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 2;
  }

  return result;
}

void LocalMIDIReceiver::~LocalMIDIReceiver(const void **this)
{
  _Block_release(this[2]);
  _Block_release(this[3]);
  v2 = this[4];
  if (v2)
  {
    v3 = this[5];
    v4 = this[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        *(v3 - 1) = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = this[4];
    }

    this[5] = v2;
    operator delete(v4);
  }
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<LocalMIDIReceiver::connectEndpoint(unsigned int,void *)::$_2>(caulk::inplace_function_detail::wrapper<LocalMIDIReceiver::connectEndpoint(unsigned int,void *)::$_2>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<LocalMIDIReceiver::connectEndpoint(unsigned int,void *)::$_2>(caulk::inplace_function_detail::wrapper<LocalMIDIReceiver::connectEndpoint(unsigned int,void *)::$_2>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<LocalMIDIReceiver::connectEndpoint(unsigned int,void *)::$_1>(caulk::inplace_function_detail::wrapper<LocalMIDIReceiver::connectEndpoint(unsigned int,void *)::$_1>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<LocalMIDIReceiver::connectEndpoint(unsigned int,void *)::$_1>(caulk::inplace_function_detail::wrapper<LocalMIDIReceiver::connectEndpoint(unsigned int,void *)::$_1>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t LocalMIDIReceiverList::Remove(LocalMIDIReceiverList *this, int a2)
{
  v4 = this + 24;
  v10 = this + 24;
  result = (*(*(this + 3) + 16))(this + 24);
  v11 = result;
  for (i = *this; ; ++i)
  {
    if (i == *(this + 1))
    {
      if (!result)
      {
        return result;
      }

      return (*(*v4 + 24))(v4);
    }

    v7 = *i;
    if (*(*i + 1) == a2)
    {
      break;
    }
  }

  atomic_fetch_add(this + 28, 1u);
  while (*(this + 29))
  {
    result = usleep(0x1F4u);
  }

  v8 = *(this + 1);
  v9 = v8 - (i + 1);
  if (v8 != i + 1)
  {
    result = memmove(i, i + 1, v8 - (i + 1));
  }

  *(this + 1) = i + v9;
  if (v7)
  {
    LocalMIDIReceiver::~LocalMIDIReceiver(v7);
    result = MEMORY[0x2383C8250]();
  }

  atomic_fetch_add(this + 28, 0xFFFFFFFF);
  if (v11)
  {
    v4 = v10;
    return (*(*v4 + 24))(v4);
  }

  return result;
}

uint64_t LocalMIDIReceiverList::ReceiverConnectEndpoint(LocalMIDIReceiverList *this, int a2, int a3, void *a4, int a5)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v10 = this + 24;
  v22 = this + 24;
  result = (*(*(this + 3) + 16))(this + 24);
  v23 = result;
  for (i = *this; ; ++i)
  {
    if (i == *(this + 1))
    {
      if (!result)
      {
        return result;
      }

      return (*(*v10 + 24))(v10);
    }

    v13 = *i;
    if (*(*i + 4) == a2)
    {
      break;
    }
  }

  atomic_fetch_add(this + 28, 1u);
  while (*(this + 29))
  {
    result = usleep(0x1F4u);
  }

  if (a5)
  {
    v14 = *(v13 + 32);
    v15 = *(v13 + 40);
    if (v14 != v15)
    {
      while (*v14 != a3)
      {
        v14 += 4;
        if (v14 == v15)
        {
          goto LABEL_20;
        }
      }
    }

    if (v14 == v15)
    {
LABEL_20:
      if (*(v13 + 16))
      {
        operator new();
      }

      v20 = *(v13 + 8);
      v21 = *(v13 + 24);
      v24[1] = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<LocalMIDIReceiver::connectEndpoint(unsigned int,void *)::$_2>;
      v24[2] = v21;
      v24[3] = a4;
      MIDI::EventListDeliverer::create(v24, v20);
    }
  }

  else
  {
    v16 = *(v13 + 32);
    v17 = *(v13 + 40);
    while (v16 != v17)
    {
      if (*v16 == a3)
      {
        if (v16 != v17)
        {
          v18 = v16 + 16;
          if (v16 + 16 != v17)
          {
            do
            {
              if (*v18 != a3)
              {
                *v16 = *v18;
                v19 = *(v18 + 8);
                *(v18 + 8) = 0;
                result = *(v16 + 8);
                *(v16 + 8) = v19;
                if (result)
                {
                  result = (*(*result + 8))(result);
                }

                v16 += 16;
              }

              v18 += 16;
            }

            while (v18 != v17);
            v17 = *(v13 + 40);
          }
        }

        if (v16 != v17)
        {
          while (v17 != v16)
          {
            result = *(v17 - 8);
            *(v17 - 8) = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            v17 -= 16;
          }

          *(v13 + 40) = v16;
        }

        break;
      }

      v16 += 16;
    }
  }

  atomic_fetch_add(this + 28, 0xFFFFFFFF);
  if (v23)
  {
    v10 = v22;
    return (*(*v10 + 24))(v10);
  }

  return result;
}

void sub_23722794C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIDIProcess::CheckInitialization(MIDIProcess *this, int *a2)
{
  *this = -1;
  if (gInMIDIServer)
  {
    return 0;
  }

  v4 = MIDIProcess::defaultInstance(this);
  v2 = v4;
  v5 = atomic_load(v4 + 12);
  if (v5)
  {
    v6 = *(v4 + 2);
  }

  else
  {
    v6 = (*(*v4 + 48))(v4);
  }

  *this = v6;
  return v2;
}

uint64_t *MIDIProcess::defaultInstance(MIDIProcess *this)
{
  {
    MIDIProcess::defaultInstance(int)::cachedVersion = CoreMIDIServerImplVersion();
  }

  if (MIDIProcess::defaultInstance(int)::cachedVersion == 1)
  {
    {
      if (v2)
      {
        MIDIProcessMIG::MIDIProcessMIG(v2);
      }
    }

    return MIDIProcess::defaultInstance(int)::migImpl;
  }

  else
  {
    {
      if (v3)
      {
        MIDIProcessXPC::MIDIProcessXPC(v3);
      }
    }

    return MIDIProcess::defaultInstance(int)::xpcImpl;
  }
}

void MIDIProcess::~MIDIProcess(MIDIProcess *this)
{
  *this = &unk_284A460E8;
  v2 = *(this + 56);
  if (v2)
  {
    CFRunLoopRemoveSource(v2, *(this + 57), *MEMORY[0x277CBF048]);
  }

  v3 = *(this + 57);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  TCFDictionaryBase::~TCFDictionaryBase((this + 400));
  TCFDictionaryBase::~TCFDictionaryBase((this + 384));
  CADeprecated::CAMutex::~CAMutex((this + 288));
  LocalMIDIReceiverList::~LocalMIDIReceiverList(this + 21);
  v8 = (this + 144);
  std::vector<std::shared_ptr<LocalMIDIClient>>::__destroy_vector::operator()[abi:ne200100](&v8);
  CADeprecated::CAMutex::~CAMutex((this + 56));
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::unique_ptr<XClientMachPort>::reset[abi:ne200100](this + 3, 0);
  std::unique_ptr<XServerMachPort>::reset[abi:ne200100](this + 2, 0);
}

mach_port_name_t *std::unique_ptr<XClientMachPort>::reset[abi:ne200100](mach_port_name_t **a1, mach_port_name_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    XClientMachPort::~XClientMachPort(result);

    JUMPOUT(0x2383C8250);
  }

  return result;
}

mach_port_name_t *std::unique_ptr<XServerMachPort>::reset[abi:ne200100](mach_port_name_t **a1, mach_port_name_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    XServerMachPort::~XServerMachPort(result);

    JUMPOUT(0x2383C8250);
  }

  return result;
}

void MIDIProcess::WriteOutput<MIDI::LegacyPacketList>(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v19[127] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  os_unfair_lock_lock((v6 + 100));
  v9 = *a2;
  v10 = 1;
  v12 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDIIORingBufferWriter::copyPacketList(PacketHeader &,MIDIPacketList const*)::{lambda(MIDI::EventList const*)#1}>;
  *&v13 = v6;
  *(&v13 + 1) = &v9;
  *msg = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDIIORingBufferWriter::copyPacketList(PacketHeader &,MIDIPacketList const*)::{lambda(MIDI::EventList const*)#1}>;
  *&msg[8] = v13;
  v18 = 1;
  v17 = v19;
  v11 = msg;
  MIDI::LegacyPacketList::traverse<MIDI::MIDIPacketList_to_MIDIEventList(MIDIPacketList const*,caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>)::{lambda(MIDIPacket const*)#1}>(a3, &v11);
  MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(msg);
  (v12[3])(&v13);
  LODWORD(a3) = atomic_fetch_or((*(v6 + 88) + 20), 1u);
  os_unfair_lock_unlock((v6 + 100));
  if (!a3)
  {
    v7 = atomic_load((*(*(a1 + 48) + 88) + 8));
    v8 = **(a1 + 24);
    *msg = 0x2800000013;
    *&msg[8] = v8;
    *&msg[20] = 0;
    *&msg[12] = 0;
    v15 = 0x400000001;
    v16 = v7;
    mach_msg(msg, 1, 0x28u, 0, 0, 0, 0);
  }
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIIORingBufferWriter::copyPacketList(PacketHeader &,MIDIPacketList const*)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<MIDIIORingBufferWriter::copyPacketList(PacketHeader &,MIDIPacketList const*)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIIORingBufferWriter::copyPacketList(PacketHeader &,MIDIPacketList const*)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<MIDIIORingBufferWriter::copyPacketList(PacketHeader &,MIDIPacketList const*)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void MIDIIORingBufferWriter::copyPacketList(uint64_t a1, void *__src, uint64_t a3)
{
  if (*(a3 + 4))
  {
    v6 = 0;
    v7 = a3 + 8;
    do
    {
      __src[1] = *v7;
      v8 = *(v7 + 8);
      if (v8 < 0xFB)
      {
        v14 = 4 * v8;
        v9 = (v7 + 12);
      }

      else
      {
        v9 = (v7 + 12);
        do
        {
          for (i = 0; i < 0xFB; i += MIDI::UniversalPacket::word_sizes[*&v9[4 * i] >> 28])
          {
            v11 = i;
            if (i >= v8)
            {
              break;
            }
          }

          if (v11 >= v8)
          {
            v12 = v8;
          }

          else
          {
            v12 = v11;
          }

          *(__src + 9) = 4 * v12;
          MIDIIORingBufferWriter::writePacket2(a1, __src, v9);
          v13 = &v9[4 * v8];
          v8 -= v12;
          v9 = &v13[-4 * v8];
          v14 = 4 * v8;
        }

        while (4 * v8 > 0x3E8);
      }

      *(__src + 9) = v14;
      MIDIIORingBufferWriter::writePacket2(a1, __src, v9);
      v7 += 12 + 4 * *(v7 + 8);
      ++v6;
    }

    while (v6 < *(a3 + 4));
  }
}

uint64_t MIDIProcess::WriteOutput<MIDI::EventList>(uint64_t a1, uint64_t *a2, __int16 a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  result = MIDIIORingBufferWriter::writePacketList<MIDI::EventList>(*(a1 + 48), a2, a3, a4);
  if (result)
  {
    v6 = atomic_load((*(*(a1 + 48) + 88) + 8));
    v7 = **(a1 + 24);
    v8 = 0x2800000013;
    v9 = v7;
    v11 = 0;
    v10 = 0;
    v12 = 0x400000001;
    v13 = v6;
    return mach_msg(&v8, 1, 0x28u, 0, 0, 0, 0);
  }

  return result;
}

BOOL MIDIIORingBufferWriter::writePacketList<MIDI::EventList>(uint64_t a1, uint64_t *a2, __int16 a3, uint64_t a4)
{
  os_unfair_lock_lock((a1 + 100));
  __src = *a2;
  v11 = a3;
  MIDIIORingBufferWriter::copyPacketList(a1, &__src, a4);
  v8 = atomic_fetch_or((*(a1 + 88) + 20), 1u) == 0;
  os_unfair_lock_unlock((a1 + 100));
  return v8;
}

uint64_t MIDIProcess::Notify(uint64_t **this, const UniChar *a2, size_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 0;
  v37 = 0;
  LocalClientList::Copy(this + 7, &v35);
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = *(a2 + 1);
      if (a3 < v7)
      {
LABEL_49:
        v29 = 4294956458;
        goto LABEL_50;
      }

      memcpy(&__dst, a2, v7);
      v8 = a3 - *(a2 + 1);
      v9 = a2 + a3;
      a2 = (a2 + *(a2 + 1));
      if (__dst > 4099)
      {
        if (__dst == 4100)
        {
          v14 = *a2;
          v18 = v8 - 4;
          a3 = v18 - v14;
          if (v18 < v14)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (__dst != 4101)
          {
            goto LABEL_15;
          }

          v14 = *a2;
          v15 = v8 - 4;
          a3 = v15 - v14;
          if (v15 < v14)
          {
            goto LABEL_49;
          }
        }

        v34 = cf_deserialize<__CFData const*,true>((a2 + 2), v14);
      }

      else if ((__dst - 4096) >= 3)
      {
        if (__dst != 4)
        {
LABEL_15:
          a3 = v8;
          goto LABEL_19;
        }

        v16 = *a2;
        v17 = v8 - 4;
        a3 = v17 - v16;
        if (v17 < v16)
        {
          goto LABEL_49;
        }

        cf = CFStringCreateWithCharacters(0, a2 + 2, v16 >> 1);
      }

      else
      {
        v10 = *a2;
        v11 = v8 - 4;
        a3 = v11 - v10;
        if (v11 < v10)
        {
          goto LABEL_49;
        }

        v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a2 + 2 length:? freeWhenDone:?];
        v13 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:v12];

        cf = v13;
      }

      a2 = &v9[-a3];
LABEL_19:
      v19 = __dst;
      if (!(((__dst - 4) < 0xFFFFFFFD) | v6 & 1))
      {
        ObjectTreeCache::Invalidate((this + 36));
        v6 = 1;
        v19 = __dst;
      }

      gMIDIClientLog();
      v20 = gMIDIClientLog(void)::clilib;
      v21 = os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG);
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          if (!v21)
          {
            goto LABEL_38;
          }

          *buf = 136315650;
          v39 = "MIDIProcess.cpp";
          v40 = 1024;
          v41 = 378;
          v42 = 1024;
          v43 = cf;
          v22 = v20;
          v23 = "%25s:%-5d kMIDIMsgObjectRemoved: 0x%x";
          goto LABEL_36;
        }

        if (v19 == 4)
        {
          if (!v21)
          {
            goto LABEL_38;
          }

          *buf = 136315906;
          v39 = "MIDIProcess.cpp";
          v40 = 1024;
          v41 = 383;
          v42 = 1024;
          v43 = v32;
          v44 = 2112;
          v45 = cf;
          v22 = v20;
          v23 = "%25s:%-5d kMIDIMsgPropertyChanged: 0x%x %@";
          v24 = 34;
          goto LABEL_37;
        }

LABEL_30:
        if (!v21)
        {
          goto LABEL_38;
        }

        *buf = 136315650;
        v39 = "MIDIProcess.cpp";
        v40 = 1024;
        v41 = 387;
        v42 = 1024;
        v43 = __dst;
        v22 = v20;
        v23 = "%25s:%-5d MIDI notification %d";
        goto LABEL_36;
      }

      if (v19 == 1)
      {
        if (!v21)
        {
          goto LABEL_38;
        }

        *buf = 136315394;
        v39 = "MIDIProcess.cpp";
        v40 = 1024;
        v41 = 370;
        v22 = v20;
        v23 = "%25s:%-5d kMIDIMsgSetupChanged";
        v24 = 18;
        goto LABEL_37;
      }

      if (v19 != 2)
      {
        goto LABEL_30;
      }

      if (!v21)
      {
        goto LABEL_38;
      }

      *buf = 136315650;
      v39 = "MIDIProcess.cpp";
      v40 = 1024;
      v41 = 374;
      v42 = 1024;
      v43 = cf;
      v22 = v20;
      v23 = "%25s:%-5d kMIDIMsgObjectAdded: 0x%x";
LABEL_36:
      v24 = 24;
LABEL_37:
      _os_log_impl(&dword_2371C2000, v22, OS_LOG_TYPE_DEBUG, v23, buf, v24);
LABEL_38:
      v25 = v35;
      v26 = v36;
      while (v25 != v26)
      {
        v27 = *v25;
        if (__dst < 4096 || (*(v27 + 16) & 1) != 0)
        {
          v28 = *(v27 + 8);
          if (v28)
          {
            (*(v28 + 16))(v28, &__dst);
          }
        }

        v25 += 2;
      }

      if (__dst == 4)
      {
        CFRelease(cf);
      }
    }

    while (a3);
  }

  v29 = 0;
LABEL_50:
  __dst = &v35;
  std::vector<std::shared_ptr<LocalMIDIClient>>::__destroy_vector::operator()[abi:ne200100](&__dst);
  return v29;
}

void sub_23722864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a15 = &a20;
  std::vector<std::shared_ptr<LocalMIDIClient>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void ObjectTreeCache::Invalidate(ObjectTreeCache *this)
{
  v2 = (*(*this + 16))(this);
  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
    *(this + 11) = 0;
  }

  if (v2)
  {
    (*(*this + 24))(this);
  }
}

CADeprecated::XThread *MIDIProcess::deleteInThread(CADeprecated::XThread **this)
{
  CADeprecated::XThread::Stop(this[4]);
  result = this[4];
  this[4] = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void MIDIProcess::createOutPort(mach_port_name_t **this)
{
  v9 = *MEMORY[0x277D85DE8];
  special_port = 0;
  task_get_special_port(*MEMORY[0x277D85F48], 4, &special_port);
  if (!bootstrap_look_up2())
  {
    operator new();
  }

  std::unique_ptr<XClientMachPort>::reset[abi:ne200100](this + 3, 0);
  if (!this[3])
  {
    gMIDIClientLog();
    v2 = gMIDIClientLog(void)::clilib;
    if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_ERROR))
    {
      special_port = 136315650;
      v4 = "MIDIProcess.cpp";
      v5 = 1024;
      v6 = 441;
      v7 = 2080;
      v8 = "com.apple.midiserver.io";
      _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Couldn't connect to %s; CoreMIDI will not be usable", &special_port, 0x1Cu);
    }
  }
}

void MIDIProcess::setupIOBuffers(MIDIProcess *this)
{
  v1 = *MEMORY[0x277D85DE8];
  getpid();
  operator new();
}

void MIDIIORingBufferWriter::~MIDIIORingBufferWriter(MIDIIORingBufferWriter *this)
{
  *this = &unk_284A467F8;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  MIDIRingBuffer::~MIDIRingBuffer(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A467F8;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  MIDIRingBuffer::~MIDIRingBuffer(this);
}

void MIDIIORingBufferReader::~MIDIIORingBufferReader(MIDIIORingBufferReader *this)
{
  MIDIRingBuffer::~MIDIRingBuffer(this);

  JUMPOUT(0x2383C8250);
}

uint64_t MIDIProcess::deleteIOBuffers(MIDIProcess *this)
{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(this + 6);
  *(this + 6) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void MIDIProcess::SetCallbackRunLoop(MIDIProcess *this, CFRunLoopRef rl)
{
  v4 = *(this + 56);
  v5 = MEMORY[0x277CBF048];
  if (v4)
  {
    CFRunLoopRemoveSource(v4, *(this + 57), *MEMORY[0x277CBF048]);
  }

  if (rl)
  {
    CFRetain(rl);
  }

  v6 = *(this + 56);
  *(this + 56) = rl;
  if (v6)
  {
    CFRelease(v6);
    rl = *(this + 56);
  }

  v7 = *(this + 57);
  v8 = *v5;

  CFRunLoopAddSource(rl, v7, v8);
}

void mshRelease(mach_port_name_t *a1)
{
  v2 = a1[1];
  if ((v2 & 1) == 0)
  {
    v3 = *MEMORY[0x277D85F48];
    v4 = *a1;
    if ((v2 & 4) == 0)
    {
      mach_port_mod_refs(*MEMORY[0x277D85F48], *a1, 0, -1);
    }

    mach_port_mod_refs(v3, v4, 1u, -1);
  }

  free(a1);
}

CFRunLoopSourceRef MSHCreateMIGServerSource(uint64_t a1, int a2, int a3, uint64_t a4)
{
  perform_high = a3;
  HIDWORD(v14.perform) = a3;
  v8 = malloc_type_malloc(0x28uLL, 0x10A0040C7231A41uLL);
  v14.version = 1;
  v14.info = v8;
  v14.retain = 0;
  v14.release = mshRelease;
  v14.copyDescription = mshCopyDescription;
  v14.equal = mshEqual;
  v14.hash = mshHash;
  v14.schedule = mshGetPort;
  v14.cancel = mshMIGPerform;
  v9 = *MEMORY[0x277D85F48];
  if (!perform_high)
  {
    if (mach_port_allocate(*MEMORY[0x277D85F48], 1u, &v14.perform + 1))
    {
      goto LABEL_9;
    }

    inserted = mach_port_insert_right(v9, HIDWORD(v14.perform), HIDWORD(v14.perform), 0x14u);
    perform_high = HIDWORD(v14.perform);
    if (inserted)
    {
      v12 = v9;
      v11 = HIDWORD(v14.perform);
      goto LABEL_8;
    }

    a2 = 0;
  }

  *v8 = perform_high;
  v8[1] = a2;
  *(v8 + 3) = 0;
  *(v8 + 4) = a1;
  *(v8 + 1) = a4;
  *(v8 + 2) = 0;
  result = CFRunLoopSourceCreate(0, 0, &v14);
  if (result)
  {
    return result;
  }

  if ((a2 & 1) == 0)
  {
    mach_port_mod_refs(v9, HIDWORD(v14.perform), 0, -1);
    v11 = HIDWORD(v14.perform);
    v12 = v9;
LABEL_8:
    mach_port_mod_refs(v12, v11, 1u, -1);
  }

LABEL_9:
  free(v8);
  return 0;
}

uint64_t mshMIGPerform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 32);
  v7 = *(a1 + 20);
  v8 = *(v6 + 8);
  if (*(v6 + 12) <= v7 || v7 < v8)
  {
    MEMORY[0x28223BE20]();
    v11 = &v30;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = *(v6 + 40 * (v7 - v8) + 40);
    v14 = MEMORY[0x28223BE20]();
    v11 = (&previous - v15);
    if (v14 <= 0x2000)
    {
      v12 = 0;
    }

    else
    {
      v11 = malloc_type_malloc(v14, 0xDAD373C7uLL);
      v10 = *(a1 + 20);
      v12 = 1;
    }
  }

  v16 = *(a1 + 8);
  v11->msgh_bits = *a1 & 0x1F;
  v11->msgh_size = 36;
  *&v11->msgh_remote_port = v16;
  v11->msgh_id = v10 + 100;
  if (v13)
  {
    if ((*(a4 + 4) & 2) != 0)
    {
      *(a1 + 12) = *(a4 + 8);
    }

    v13(a1, v11);
    if ((v11->msgh_bits & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    msgh_remote_port = v11[1].msgh_remote_port;
    if (!msgh_remote_port)
    {
      goto LABEL_30;
    }

    if (msgh_remote_port == -305)
    {
      v11->msgh_remote_port = 0;
LABEL_38:
      if (v12)
      {
        free(v11);
      }

      return 0;
    }

LABEL_28:
    if ((*a1 & 0x80000000) != 0)
    {
      *(a1 + 8) = 0;
      mach_msg_destroy(a1);
    }

LABEL_30:
    if (v11->msgh_remote_port)
    {
      if ((v11->msgh_bits & 0x1F) == 0x12)
      {
        v25 = 1;
      }

      else
      {
        v25 = 17;
      }

      v26 = mach_msg(v11, v25, v11->msgh_size, 0, 0, 0, 0);
      if ((v26 - 268435459) >= 2)
      {
        if (v26)
        {
          v27 = *MEMORY[0x277D85DF8];
          v28 = getpid();
          fprintf(v27, "%d: badly generated MIG reply for port %x\n", v28, *a4);
        }
      }

      else
      {
        mach_msg_destroy(v11);
      }
    }

    goto LABEL_38;
  }

  v18 = *(a1 + 20);
  if (v18 == 71)
  {
    v24 = *(a4 + 24);
    if (v24)
    {
      v24(a1, *(a4 + 8));
    }
  }

  else
  {
    if (v18 != 70)
    {
      *&v11[1].msgh_bits = *MEMORY[0x277D85EF8];
      v11[1].msgh_remote_port = -303;
      goto LABEL_28;
    }

    v19 = *(a4 + 16);
    if (v19)
    {
      v20 = *(a1 + 32);
      v32 = *(a1 + 32);
      if (*(a1 + 28) != *(MEMORY[0x277D85EF8] + 4))
      {
        v20 = bswap32(v32);
      }

      v21 = v19(v20, a1, *(a4 + 8));
      v32 = v21;
      if (v21)
      {
        previous = 0;
        v22 = *a4;
        v23 = *MEMORY[0x277D85F48];
        mach_port_request_notification(*MEMORY[0x277D85F48], v22, 70, v21, v22, 0x15u, &previous);
        if (previous)
        {
          mach_port_mod_refs(v23, previous, 2u, -1);
        }
      }

      else
      {
        *(a4 + 16) = 0;
      }
    }
  }

  return 0;
}

void sub_237229DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIDICIDiscoveryManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t MIDI::EventList::size(MIDI::EventList *this)
{
  v1 = this + 8;
  for (i = *(this + 1); i; --i)
  {
    v1 += 4 * *(v1 + 2) + 12;
  }

  return v1 - this;
}

_DWORD *MIDI::EventList::create@<X0>(int a1@<W0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = 4 * a4;
  result = malloc_type_malloc(4 * a4 + 20, 0xC3A25D3EuLL);
  *a5 = result;
  a5[1] = MIDI::packet_list_deleter;
  *result = a1;
  result[1] = 1;
  *(result + 1) = a2;
  result[4] = a4;
  if (v10)
  {
    v12 = result + 5;

    return memmove(v12, a3, 4 * a4);
  }

  return result;
}

void *MIDI::EventList::create@<X0>(MIDI::EventList *this@<X0>, void *a2@<X8>)
{
  v5 = this + 8;
  for (i = *(this + 1); i; --i)
  {
    v5 += 4 * *(v5 + 2) + 12;
  }

  v7 = v5 - this;
  v8 = malloc_type_malloc(v5 - this, 0x49233628uLL);
  *v8 = *this;
  *a2 = v8;
  a2[1] = MIDI::packet_list_deleter;

  return memcpy(v8, this, v7);
}

void *MIDI::LegacyPacketList::dump(_DWORD *a1)
{
  v21 = a1;
  v1 = MEMORY[0x277D82678];
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "MIDIPacketList @ ", 17);
  v3 = MEMORY[0x2383C8000](v2, &v21);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", ", 2);
  v5 = MEMORY[0x2383C8020](v4, *v21);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " packets:\n", 10);
  if (*v21)
  {
    v7 = 0;
    v8 = (v21 + 1);
    do
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "  [", 3);
      v10 = MEMORY[0x2383C8020](v9, v7);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
      v12 = MEMORY[0x2383C8000](v11, v8);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "] ts ", 5);
      v14 = MEMORY[0x2383C8040](v13, *v8);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
      v16 = MEMORY[0x2383C8030](v15, *(v8 + 8));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " bytes:", 7);
      if (*(v8 + 8))
      {
        v17 = 0;
        do
        {
          v23 = 32;
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, &v23, 1);
          v19 = *v1;
          *(v1 + *(*v1 - 24) + 8) = *(v1 + *(*v1 - 24) + 8) & 0xFFFFFFB5 | 8;
          *(v1 + *(v19 - 24) + 24) = 2;
          v20 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, 48);
          MEMORY[0x2383C8020](v20, *(v8 + 10 + v17++));
        }

        while (v17 < *(v8 + 8));
      }

      *(v1 + *(*v1 - 24) + 8) = *(v1 + *(*v1 - 24) + 8) & 0xFFFFFFB5 | 2;
      v22 = 10;
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, &v22, 1);
      v8 = (v8 + *(v8 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
      v7 = (v7 + 1);
    }

    while (v7 < *v21);
  }

  return result;
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v4 + 36) = v6;
  }

  *(v4 + 36) = a2;
  return a1;
}

void *MIDI::EventList::dump(MIDI::EventList *this, const MIDI::EventList *a2)
{
  v25 = this;
  v2 = MEMORY[0x277D82678];
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "MIDIEvent @ ", 12);
  v4 = MEMORY[0x2383C8000](v3, &v25);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", protocol ", 11);
  v6 = MEMORY[0x2383C8010](v5, *v25);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  v8 = MEMORY[0x2383C8020](v7, *(v25 + 1));
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " packets:\n", 10);
  if (*(v25 + 1))
  {
    v10 = 0;
    v11 = v25 + 8;
    do
    {
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "  [", 3);
      v13 = MEMORY[0x2383C8020](v12, v10);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 1);
      v15 = MEMORY[0x2383C8000](v14, v11);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] ts ", 5);
      v17 = MEMORY[0x2383C8040](v16, *v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", ", 2);
      v18 = *(v11 + 2);
      v19 = MEMORY[0x2383C8020](v2, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " words:", 7);
      if (v18)
      {
        v20 = (v11 + 12);
        do
        {
          v27 = 32;
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, &v27, 1);
          v22 = *v2;
          *(v2 + *(*v2 - 24) + 8) = *(v2 + *(*v2 - 24) + 8) & 0xFFFFFFB5 | 8;
          *(v2 + *(v22 - 24) + 24) = 8;
          v23 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, 48);
          v24 = *v20++;
          MEMORY[0x2383C8020](v23, v24);
          --v18;
        }

        while (v18);
      }

      *(v2 + *(*v2 - 24) + 8) = *(v2 + *(*v2 - 24) + 8) & 0xFFFFFFB5 | 2;
      v26 = 10;
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, &v26, 1);
      v11 += 4 * *(v11 + 2) + 12;
      v10 = (v10 + 1);
    }

    while (v10 < *(v25 + 1));
  }

  return result;
}

void *MIDI::LegacyPacketList::create@<X0>(int a1@<W0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, void *a5@<X8>)
{
  if (a1 != 1)
  {
    std::terminate();
  }

  v9 = malloc_type_malloc(a4 + 14, 0x100004013C699A6uLL);
  *v9 = 1;
  *(v9 + 4) = a2;
  *(v9 + 6) = a4;
  result = memcpy(v9 + 14, a3, a4);
  *a5 = v9;
  return result;
}

void MIDIServerXPC::Init(MIDIServerXPC *this, int a2)
{
  MIDIServer::Init(this, a2);

  swix::connection::activate((this + 1016));
}

void MIDIServerXPC::~MIDIServerXPC(MIDIServerXPC *this)
{
  *this = &unk_284A45FB8;
  v2 = *(this + 132);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 127) = &unk_284A45A00;
  v3 = *(this + 129);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIDIServer::~MIDIServer(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A45FB8;
  v2 = *(this + 132);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 127) = &unk_284A45A00;
  v3 = *(this + 129);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIDIServer::~MIDIServer(this);
}

uint64_t ClientProcessXPC::Notify(uint64_t a1, CFDataRef *a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  BytePtr = CFDataGetBytePtr(*a2);
  if (!*a2)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v9);
  }

  Length = CFDataGetLength(*a2);
  swix::data::data(&value, BytePtr, Length);
  swix::encode_message::encode_message(v11, 190206329);
  xpc_dictionary_set_value(xdict, "data", value);
  v6 = *(a1 + 360);
  if (!v6)
  {
    std::terminate();
  }

  swix::connection::send(v6, v11);
  xpc_release(xdict);
  xpc_release(value);
  return 0;
}

void sub_23722A974(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23722A8E4);
}

swix::data *swix::data::data(swix::data *this, const void *bytes, size_t length)
{
  v4 = xpc_data_create(bytes, length);
  *this = v4;
  if (!v4)
  {
    *this = xpc_null_create();
  }

  return this;
}

void non-virtual thunk toClientProcessXPC::~ClientProcessXPC(ClientProcessXPC *this)
{
  ClientProcessXPC::~ClientProcessXPC((this - 16));

  JUMPOUT(0x2383C8250);
}

{
  ClientProcessXPC::~ClientProcessXPC((this - 16));
}

void ClientProcessXPC::~ClientProcessXPC(ClientProcessXPC *this)
{
  *this = &unk_284A45E08;
  v2 = (this + 16);
  *(this + 2) = &unk_284A45E50;
  v3 = *(this + 45);
  *(this + 44) = &unk_284A459B0;
  *(this + 45) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  ClientProcess::~ClientProcess(v2);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  ClientProcessXPC::~ClientProcessXPC(this);

  JUMPOUT(0x2383C8250);
}

uint64_t ClientProcessXPC::PrintObject(ClientProcessXPC *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "ClientProcessXPC", *(this + 2), this);

  return fputc(10, a2);
}

void MIDIServerXPC::XPCListener::accept_connection(MIDIServerXPC::XPCListener *this, xpc_object_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  dispatch_retain(MEMORY[0x277D85CD0]);
  gMIDIServerLog();
  std::__optional_copy_base<swix::timeout_config,false>::__optional_copy_base[abi:ne200100](v3, *(this + 1) + 96);
  xpc_connection_get_audit_token();
  memset(&atoken, 0, sizeof(atoken));
  if (audit_token_to_pid(&atoken) == -1)
  {
    getpid();
  }

  operator new();
}

void sub_23722B0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t a25, dispatch_object_t object, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0,std::allocator<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::operator()(uint64_t a1)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 24) + 360);
  if (!v1)
  {
    std::terminate();
  }

  v3 = v1[2];
  v18 = v1[1];
  v19 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::__value_func[abi:ne200100](v20, (v1 + 3));
  v20[4] = v1[7];
  v4 = *(a1 + 8);
  v5 = os_unfair_recursive_lock_lock_with_options();
  v7 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v7 != v6)
  {
    while (*(v7 + 32) != *(a1 + 24))
    {
      v7 += 40;
      if (v7 == v6)
      {
        goto LABEL_20;
      }
    }
  }

  if (v7 == v6)
  {
LABEL_20:
    if (v4)
    {
      v5 = os_unfair_recursive_lock_unlock();
    }
  }

  else
  {
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;
    if (v7 + 40 != v6)
    {
      do
      {
        v9 = *(v7 + 56);
        *v7 = *(v7 + 40);
        *(v7 + 16) = v9;
        v10 = *(v7 + 72);
        *(v7 + 72) = 0;
        v11 = *(v7 + 32);
        *(v7 + 32) = v10;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v12 = v7 + 40;
        v13 = v7 + 80;
        v7 += 40;
      }

      while (v13 != v6);
      v6 = *(v4 + 16);
      v7 = v12;
    }

    while (v6 != v7)
    {
      v14 = *(v6 - 8);
      *(v6 - 8) = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      v6 -= 40;
    }

    *(v4 + 16) = v7;
    v5 = os_unfair_recursive_lock_unlock();
    if (v8)
    {
      (*(*v8 + 8))(v8);
      goto LABEL_26;
    }
  }

  MIDIServer::defaultInstance(v5);
  v16 = *(a1 + 24);
  if (v16)
  {
    v17 = (v16 + 16);
  }

  else
  {
    v17 = 0;
  }

  MIDIServer::ClientDied(v17, v15);
LABEL_26:
  swix::connection::state::cancel_connection(v18, 0);
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](v20);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_23722B4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0,std::allocator<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0,std::allocator<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0,std::allocator<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_284A45810;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0,std::allocator<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__func(void *a1)
{
  *a1 = &unk_284A45810;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383C8250);
}

void *std::__function::__func<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0,std::allocator<MIDIServerXPC::XPCListener::accept_connection(applesauce::xpc::connection const&)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__func(void *a1)
{
  *a1 = &unk_284A45810;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void MIDIServerXPC::XPCListener::~XPCListener(MIDIServerXPC::XPCListener *this)
{
  *this = &unk_284A45A00;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A45A00;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<caulk::synchronized<CentralState,caulk::mach::unfair_recursive_lock,caulk::empty_atomic_interface<CentralState>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        *(v3 - 8) = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v3 -= 40;
      }

      while (v3 != v1);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<caulk::synchronized<CentralState,caulk::mach::unfair_recursive_lock,caulk::empty_atomic_interface<CentralState>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A48AD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383C8250);
}

void MIDIServerXPC_Server::registerProcess(uint64_t a1, uint64_t a2, int a3)
{
  v47 = *MEMORY[0x277D85DE8];
  swix::ipc_interface::audit_token(&v44, *(a1 + 8));
  if (v45)
  {
    v5 = &v44;
  }

  else
  {
    v5 = &gBogusAuditToken;
  }

  v6 = *&v5->val[4];
  *v46.val = *v5->val;
  *&v46.val[4] = v6;
  *v44.val = *v46.val;
  *&v44.val[4] = v6;
  v7 = audit_token_to_pid(&v44);
  if (v7 == -1)
  {
    v7 = getpid();
  }

  v8 = *(*(a1 + 16) + 344);
  v9 = *(v8 + 1048);
  os_unfair_recursive_lock_lock_with_options();
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  if (v10 != v11)
  {
    while (1)
    {
      v12 = *(v10 + 16);
      *v44.val = *v10;
      *&v44.val[4] = v12;
      v13 = audit_token_to_pid(&v44);
      v44 = v46;
      if (v13 == audit_token_to_pid(&v44))
      {
        v14 = *(v10 + 16);
        *v44.val = *v10;
        *&v44.val[4] = v14;
        v15 = audit_token_to_pidversion(&v44);
        v44 = v46;
        if (v15 == audit_token_to_pidversion(&v44))
        {
          break;
        }
      }

      v10 += 40;
      if (v10 == v11)
      {
        v10 = v11;
        break;
      }
    }

    v11 = *(v9 + 16);
  }

  if (v10 == v11)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v16 = *(v10 + 32);
    *(v10 + 32) = 0;
    if (v10 + 40 != v11)
    {
      do
      {
        v17 = *(v10 + 56);
        *v10 = *(v10 + 40);
        *(v10 + 16) = v17;
        v18 = *(v10 + 72);
        *(v10 + 72) = 0;
        v19 = *(v10 + 32);
        *(v10 + 32) = v18;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        v20 = v10 + 40;
        v21 = v10 + 80;
        v10 += 40;
      }

      while (v21 != v11);
      v11 = *(v9 + 16);
      v10 = v20;
    }

    while (v11 != v10)
    {
      v22 = *(v11 - 8);
      *(v11 - 8) = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      v11 -= 40;
    }

    *(v9 + 16) = v10;
    v23 = os_unfair_recursive_lock_unlock();
    if (v16)
    {
      v24 = MIDIServer::defaultInstance(v23) + 2;
      v25 = (*(*v24 + 16))(v24);
      v26 = v25;
      v27 = MIDIServer::defaultInstance(v25);
      v28 = v27;
      for (i = v27[29]; i != v27[30]; ++i)
      {
        if (*(*i + 2) == v7)
        {
          ClientTable::ProcessQuit((v27 + 24), *i);
          break;
        }
      }

      v30 = xpc_mach_send_copy_right();
      v31 = v16 + 16;
      ClientProcess::setupIO((v16 + 16), v30, a3);
      v33 = v28[30];
      v32 = v28[31];
      if (v33 >= v32)
      {
        v35 = v28[29];
        v36 = (v33 - v35) >> 3;
        if ((v36 + 1) >> 61)
        {
          std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
        }

        v37 = v32 - v35;
        v38 = v37 >> 2;
        if (v37 >> 2 <= (v36 + 1))
        {
          v38 = v36 + 1;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          v39 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v38;
        }

        if (v39)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ClientProcess *>>(v39);
        }

        *(8 * v36) = v31;
        v34 = 8 * v36 + 8;
        v40 = v28[29];
        v41 = v28[30] - v40;
        v42 = (8 * v36 - v41);
        memcpy(v42, v40, v41);
        v43 = v28[29];
        v28[29] = v42;
        v28[30] = v34;
        v28[31] = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        *v33 = v31;
        v34 = (v33 + 1);
      }

      v28[30] = v34;
      ClientTable::CheckActiveProcesses((v28 + 24));
      BackgroundAppManager::Update((v8 + 1000));
      if (v26)
      {
        (*(*v24 + 24))(v24);
      }
    }
  }
}

void sub_23722BCA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void swix::ipc_interface::audit_token(swix::ipc_interface *this, uint64_t a2)
{
  if (a2)
  {
    swix::connection::state::xpc_connection(&v4, *(a2 + 8));
    v3 = v4;
    if (MEMORY[0x2383C9190](v4) == MEMORY[0x277D86450])
    {
      xpc_connection_get_audit_token();
      *this = 0u;
      *(this + 1) = 0u;
      *(this + 32) = 1;
    }

    else
    {
      *this = 0;
      *(this + 32) = 0;
    }

    xpc_release(v3);
  }

  else
  {
    *this = 0;
    *(this + 32) = 0;
  }
}

unint64_t MIDIServerXPC_Server::createClient(MIDIServerXPC_Server *this, xpc_object_t *a2)
{
  swix::ipc_interface::audit_token(__p, this);
  if (v18)
  {
    v3 = __p;
  }

  else
  {
    v3 = &gBogusAuditToken;
  }

  v4 = *(v3 + 1);
  *atoken.val = *v3;
  *&atoken.val[4] = v4;
  v5 = audit_token_to_pid(&atoken);
  if (v5 == -1)
  {
    v5 = getpid();
  }

  v15 = 0;
  string_ptr = xpc_string_get_string_ptr(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v17 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v7)
  {
    if ((v17 & 0x80u) == 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
    *atoken.val = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v17 & 0x80) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
    *atoken.val = 0;
    if ((v17 & 0x80) != 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }
  }

  v10 = _MIDIClientCreate(v5, v9, &v15);
  v11 = v15;
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  return v12 | ((v10 == 0) << 32);
}

void sub_23722BEDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::createInputPort(MIDIServerXPC_Server *this, xpc_object_t xstring, const swix::string *a3)
{
  v16 = 0;
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v14 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v5)
  {
    if ((v14 & 0x80u) == 0)
    {
      v6 = v14;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    v15 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v14 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v15 = 0;
    if ((v14 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  v8 = _MIDIInputPortCreate(this);
  v9 = v16;
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return v10 | ((v8 == 0) << 32);
}

void sub_23722C064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::createOutputPort(MIDIServerXPC_Server *this, xpc_object_t xstring, const swix::string *a3)
{
  v16 = 0;
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v14 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v5)
  {
    if ((v14 & 0x80u) == 0)
    {
      v6 = v14;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    v15 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v14 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v15 = 0;
    if ((v14 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  v8 = _MIDIOutputPortCreate(this);
  v9 = v16;
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return v10 | ((v8 == 0) << 32);
}

void sub_23722C1B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

uint64_t MIDIServerXPC_Server::acknowledgeNotification(uint64_t a1, uint64_t a2)
{
  swix::ipc_interface::audit_token(v12, a1);
  if (v12[32])
  {
    v3 = v12;
  }

  else
  {
    v3 = &gBogusAuditToken;
  }

  v4 = v3[1];
  *atoken.val = *v3;
  *&atoken.val[4] = v4;
  v5 = audit_token_to_pid(&atoken);
  v6 = v5;
  if (v5 == -1)
  {
    v5 = getpid();
    v6 = v5;
  }

  v7 = MIDIServer::defaultInstance(v5);
  v8 = v7[29];
  v9 = v7[30];
  while (v8 != v9)
  {
    v10 = *v8;
    if (*(*v8 + 8) == v6)
    {
      *(v10 + 320) = 0;
      if (*(v10 + 312))
      {
        ClientProcess::DeliverNotifications(v10);
      }

      return _ZNKSt3__18functionIFvN4swix6resultIJEEEEEclES3_(*(a2 + 24), 0x100000000);
    }

    v8 += 8;
  }

  return _ZNKSt3__18functionIFvN4swix6resultIJEEEEEclES3_(*(a2 + 24), 0x100000000);
}

uint64_t _ZNKSt3__18functionIFvN4swix6resultIJEEEEEclES3_(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

unint64_t MIDIServerXPC_Server::createSource(MIDIServerXPC_Server *this, xpc_object_t xstring, const swix::string *a3)
{
  v16 = 0;
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v14 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v5)
  {
    if ((v14 & 0x80u) == 0)
    {
      v6 = v14;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    v15 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v14 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v15 = 0;
    if ((v14 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  v8 = _MIDISourceCreate(this);
  v9 = v16;
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return v10 | ((v8 == 0) << 32);
}

void sub_23722C490(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::createDestination(MIDIServerXPC_Server *this, xpc_object_t xstring, const swix::string *a3)
{
  v16 = 0;
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v14 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v5)
  {
    if ((v14 & 0x80u) == 0)
    {
      v6 = v14;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    v15 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v14 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v15 = 0;
    if ((v14 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  v8 = _MIDIDestinationCreate(this);
  v9 = v16;
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return v10 | ((v8 == 0) << 32);
}

void sub_23722C5EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::objectSetIntegerProperty(MIDIServerXPC_Server *this, xpc_object_t xstring, const swix::string *a3)
{
  v3 = a3;
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v6)
  {
    if ((v13 & 0x80u) == 0)
    {
      v7 = v13;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
    v14 = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v13 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
    v14 = 0;
    if ((v13 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  v9 = _MIDIObjectSetIntegerProperty(this, v8, v3);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9 | ((v9 == 0) << 32);
}

void sub_23722C760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::objectGetIntegerProperty(MIDIServerXPC_Server *this, xpc_object_t xstring, const swix::string *a3)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v14 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v5)
  {
    if ((v14 & 0x80u) == 0)
    {
      v6 = v14;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    v15 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v14 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v15 = 0;
    if ((v14 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  LODWORD(__p[0]) = 0;
  IntegerProperty = _MIDIObjectGetIntegerProperty(this, v7, __p);
  v9 = __p[0];
  if (v7)
  {
    CFRelease(v7);
  }

  if (IntegerProperty)
  {
    v10 = IntegerProperty;
  }

  else
  {
    v10 = v9;
  }

  return v10 | ((IntegerProperty == 0) << 32);
}

void sub_23722C8AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::objectSetStringProperty(MIDIServerXPC_Server *this, xpc_object_t xstring, xpc_object_t *a3, const swix::string *a4)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(&__p, string_ptr);
  if ((v20 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (p_p)
  {
    if ((v20 & 0x80u) == 0)
    {
      v8 = v20;
    }

    else
    {
      v8 = v19;
    }

    v9 = CFStringCreateWithBytes(0, p_p, v8, 0x8000100u, 0);
    v21 = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v20 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v21 = 0;
    if ((v20 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p);
    }
  }

  v10 = xpc_string_get_string_ptr(*a3);
  std::string::basic_string[abi:ne200100]<0>(&__p, v10);
  if ((v20 & 0x80u) == 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  if (v11)
  {
    if ((v20 & 0x80u) == 0)
    {
      v12 = v20;
    }

    else
    {
      v12 = v19;
    }

    v13 = CFStringCreateWithBytes(0, v11, v12, 0x8000100u, 0);
    if (!v13)
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](v17, "Could not construct");
    }

    if ((v20 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 0;
    if ((v20 & 0x80) != 0)
    {
LABEL_20:
      operator delete(__p);
    }
  }

  v14 = _MIDIObjectSetStringProperty(this, v9, v13);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v14 | ((v14 == 0) << 32);
}

void sub_23722CAB4(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void MIDIServerXPC_Server::objectGetStringProperty(MIDIServerXPC_Server *this, MIDIServer *a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v20 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (!v6)
  {
    v8 = 0;
    v21 = 0;
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v20 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  v21 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  if ((v20 & 0x80) != 0)
  {
LABEL_10:
    operator delete(__p[0]);
  }

LABEL_11:
  cf = 0;
  StringProperty = _MIDIObjectGetStringProperty(a2, v8, &cf);
  if (StringProperty || (v10 = cf) == 0)
  {
    v13 = xpc_null_create();
    v17 = v13;
    if (StringProperty)
    {
      *this = StringProperty;
      *(this + 8) = 0;
    }

    else
    {
      swix::result<swix::string>::result(this, &v17);
      v13 = v17;
    }

    xpc_release(v13);
    v17 = 0;
    if (!v8)
    {
      return;
    }

LABEL_27:
    CFRelease(v8);
    return;
  }

  object[1] = cf;
  v11 = CFGetTypeID(cf);
  if (v11 != CFStringGetTypeID())
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v15, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, v10);
  CFRelease(v10);
  if ((v20 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  swix::string::string(object, v12);
  swix::result<swix::string>::result(this, object);
  xpc_release(object[0]);
  object[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    goto LABEL_27;
  }
}

void sub_23722CD08(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

uint64_t swix::result<swix::string>::result(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  *a1 = v3;
  v4 = xpc_null_create();
  *(a1 + 8) = 1;
  xpc_release(v4);
  return a1;
}

_BYTE *applesauce::CF::convert_to<std::string,0>(_BYTE *a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a2);
    maxBufLen = 0;
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(a2, v13, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v8 = maxBufLen;
    if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (maxBufLen >= 0x17)
    {
      operator new();
    }

    a1[23] = maxBufLen;
    if (v8)
    {
      bzero(a1, v8);
    }

    a1[v8] = 0;
    if (a1[23] >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v14.location = 0;
    v14.length = Length;
    return CFStringGetBytes(a2, v14, 0x8000100u, 0, 0, v9, maxBufLen, &maxBufLen);
  }
}

void sub_23722CF78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

swix::string *swix::string::string(swix::string *this, const char *string)
{
  v3 = xpc_string_create(string);
  *this = v3;
  if (!v3)
  {
    *this = xpc_null_create();
  }

  return this;
}

unint64_t MIDIServerXPC_Server::objectSetDataProperty(MIDIServerXPC_Server *this, xpc_object_t xstring, xpc_object_t *a3, const swix::data *a4)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v16 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v8 = v16;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
    v17 = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v16 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v17 = 0;
    if ((v16 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  bytes_ptr = xpc_data_get_bytes_ptr(*a3);
  length = xpc_data_get_length(*a3);
  applesauce::CF::make_DataRef(__p, bytes_ptr, length);
  v12 = _MIDIObjectSetDataProperty(this, v9, __p[0]);
  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v12 | ((v12 == 0) << 32);
}

void sub_23722D12C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void MIDIServerXPC_Server::objectGetDataProperty(MIDIServerXPC_Server *this, MIDIServer *a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v20 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (!v6)
  {
    v8 = 0;
    v21 = 0;
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v20 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  v21 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  if ((v20 & 0x80) != 0)
  {
LABEL_10:
    operator delete(__p[0]);
  }

LABEL_11:
  __p[0] = 0;
  DataProperty = _MIDIObjectGetDataProperty(a2, v8, __p);
  if (!DataProperty)
  {
    v10 = __p[0];
    if (__p[0])
    {
      object[1] = __p[0];
      v11 = CFGetTypeID(__p[0]);
      if (v11 != CFDataGetTypeID())
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v16, "Could not construct");
      }

      BytePtr = CFDataGetBytePtr(v10);
      Length = CFDataGetLength(v10);
      swix::data::data(object, BytePtr, Length);
      swix::result<swix::data>::result(this, object);
      xpc_release(object[0]);
      object[0] = 0;
      CFRelease(v10);
      if (!v8)
      {
        return;
      }

LABEL_22:
      CFRelease(v8);
      return;
    }
  }

  v14 = xpc_null_create();
  v18 = v14;
  if (DataProperty)
  {
    *this = DataProperty;
    *(this + 8) = 0;
  }

  else
  {
    swix::result<swix::data>::result(this, &v18);
    v14 = v18;
  }

  xpc_release(v14);
  v18 = 0;
  if (v8)
  {
    goto LABEL_22;
  }
}

void sub_23722D350(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a11);
  __clang_call_terminate(a1);
}

uint64_t swix::result<swix::data>::result(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  *a1 = v3;
  v4 = xpc_null_create();
  *(a1 + 8) = 1;
  xpc_release(v4);
  return a1;
}

unint64_t MIDIServerXPC_Server::objectSetDictionaryProperty(MIDIServerXPC_Server *this, xpc_object_t xstring, xpc_object_t *a3, const swix::data *a4)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v17 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v7)
  {
    if ((v17 & 0x80u) == 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
    v18 = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v17 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v18 = 0;
    if ((v17 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  bytes_ptr = xpc_data_get_bytes_ptr(*a3);
  length = xpc_data_get_length(*a3);
  applesauce::CF::make_DataRef(__p, bytes_ptr, length);
  applesauce::CF::make_DictionaryRef(&cf, __p[0]);
  v12 = _MIDIObjectSetDictionaryProperty(this, v9, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v12 | ((v12 == 0) << 32);
}

void sub_23722D578(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

CFTypeID applesauce::CF::make_DictionaryRef(applesauce::CF *this, const applesauce::CF::DataRef *a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v3 = CFPropertyListCreateWithData(0, a2, 0, 0, 0);
  if (!v3)
  {
    result = CFDictionaryGetTypeID();
    if (!result)
    {
      *this = 0;
      return result;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
    goto LABEL_10;
  }

  *this = v4;
  v6 = CFGetTypeID(v4);
  result = CFDictionaryGetTypeID();
  if (v6 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v8, "Could not construct");
  }

  return result;
}

void sub_23722D6A8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void MIDIServerXPC_Server::objectGetDictionaryProperty(MIDIServerXPC_Server *this, MIDIServer *a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v25 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (!v6)
  {
    v8 = 0;
    v26 = 0;
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v25 & 0x80u) == 0)
  {
    v7 = v25;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  v26 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  if ((v25 & 0x80) != 0)
  {
LABEL_10:
    operator delete(__p[0]);
  }

LABEL_11:
  __p[0] = 0;
  DictionaryProperty = _MIDIObjectGetDictionaryProperty(a2, v8, __p);
  if (DictionaryProperty || (v10 = __p[0]) == 0)
  {
    v17 = xpc_null_create();
    v23 = v17;
    if (DictionaryProperty)
    {
      *this = DictionaryProperty;
      *(this + 8) = 0;
    }

    else
    {
      swix::result<swix::data>::result(this, &v23);
      v17 = v23;
    }

    xpc_release(v17);
    v23 = 0;
  }

  else
  {
    v22[1] = __p[0];
    v11 = CFGetTypeID(__p[0]);
    if (v11 != CFDictionaryGetTypeID())
    {
      v19 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](v19, "Could not construct");
    }

    Data = CFPropertyListCreateData(0, v10, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    v13 = Data;
    if (Data)
    {
      object[1] = Data;
      v14 = CFGetTypeID(Data);
      if (v14 != CFDataGetTypeID())
      {
        v20 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v20, "Could not construct");
      }

      BytePtr = CFDataGetBytePtr(v13);
      Length = CFDataGetLength(v13);
      swix::data::data(object, BytePtr, Length);
      swix::result<swix::data>::result(this, object);
      xpc_release(object[0]);
      object[0] = 0;
      CFRelease(v13);
    }

    else
    {
      v22[0] = xpc_null_create();
      swix::result<swix::data>::result(this, v22);
      xpc_release(v22[0]);
      v22[0] = 0;
    }

    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_23722D984(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a11);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::objectRemoveProperty(MIDIServerXPC_Server *this, xpc_object_t xstring, const swix::string *a3)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v12 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v5)
  {
    if ((v12 & 0x80u) == 0)
    {
      v6 = v12;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    v13 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v12 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v13 = 0;
    if ((v12 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  v8 = _MIDIObjectRemoveProperty(this, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8 | ((v8 == 0) << 32);
}

void sub_23722DB28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::createSetupFromData(xpc_object_t *this, const swix::data *a2)
{
  v10 = 0;
  bytes_ptr = xpc_data_get_bytes_ptr(*this);
  length = xpc_data_get_length(*this);
  applesauce::CF::make_DataRef(&cf, bytes_ptr, length);
  v5 = _MIDISetupFromData(cf, &v10);
  v6 = v10;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return v7 | ((v5 == 0) << 32);
}

unint64_t MIDIServerXPC_Server::getCurrentSetup(MIDIServerXPC_Server *this)
{
  v4 = 0;
  Current = _MIDISetupGetCurrent(&v4);
  if (Current)
  {
    v2 = Current;
  }

  else
  {
    v2 = v4;
  }

  return v2 | ((Current == 0) << 32);
}

unint64_t MIDIServerXPC_Server::createExternalDevice(MIDIServerXPC_Server *this, xpc_object_t *a2, xpc_object_t *a3, const swix::string *a4)
{
  outDevice = 0;
  string_ptr = xpc_string_get_string_ptr(this);
  std::string::basic_string[abi:ne200100]<0>(&__p, string_ptr);
  if ((v27 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (p_p)
  {
    if ((v27 & 0x80u) == 0)
    {
      v8 = v27;
    }

    else
    {
      v8 = v26;
    }

    v9 = CFStringCreateWithBytes(0, p_p, v8, 0x8000100u, 0);
    v28 = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v27 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v28 = 0;
    if ((v27 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p);
    }
  }

  v10 = xpc_string_get_string_ptr(*a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, v10);
  if ((v27 & 0x80u) == 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  if (v11)
  {
    if ((v27 & 0x80u) == 0)
    {
      v12 = v27;
    }

    else
    {
      v12 = v26;
    }

    v13 = CFStringCreateWithBytes(0, v11, v12, 0x8000100u, 0);
    if (!v13)
    {
      v23 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](v23, "Could not construct");
    }

    if ((v27 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 0;
    if ((v27 & 0x80) != 0)
    {
LABEL_20:
      operator delete(__p);
    }
  }

  v14 = xpc_string_get_string_ptr(*a3);
  std::string::basic_string[abi:ne200100]<0>(&__p, v14);
  if ((v27 & 0x80u) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v15)
  {
    if ((v27 & 0x80u) == 0)
    {
      v16 = v27;
    }

    else
    {
      v16 = v26;
    }

    v17 = CFStringCreateWithBytes(0, v15, v16, 0x8000100u, 0);
    if (!v17)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](v24, "Could not construct");
    }

    if ((v27 & 0x80) != 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v17 = 0;
    if ((v27 & 0x80) != 0)
    {
LABEL_30:
      operator delete(__p);
    }
  }

  v18 = MIDIDeviceCreate(0, v9, v13, v17, &outDevice);
  v19 = outDevice;
  if (v17)
  {
    CFRelease(v17);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  return v20 | ((v18 == 0) << 32);
}

void sub_23722DF80(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::deviceAddEntity(MIDIServerXPC_Server *this, xpc_object_t xstring, const swix::string *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = 0;
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v21 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v12)
  {
    if ((v21 & 0x80u) == 0)
    {
      v13 = v21;
    }

    else
    {
      v13 = __p[1];
    }

    v14 = CFStringCreateWithBytes(0, v12, v13, 0x8000100u, 0);
    v22 = v14;
    if (!v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    if ((v21 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    v22 = 0;
    if ((v21 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  v15 = _MIDIDeviceAddEntity(this, v14, a3, a4, a5, a6, &v23);
  v16 = v23;
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  return v17 | ((v15 == 0) << 32);
}

void sub_23722E134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::setupAddDevice(MIDIServerXPC_Server *this, int a2)
{
  if (a2)
  {
    v2 = _MIDISetupAddExternalDevice(this);
  }

  else
  {
    v2 = _MIDISetupAddDevice(this);
  }

  return v2 | ((v2 == 0) << 32);
}

unint64_t MIDIServerXPC_Server::setupRemoveDevice(MIDIServerXPC_Server *this, int a2)
{
  if (a2)
  {
    v2 = _MIDISetupRemoveExternalDevice(this);
  }

  else
  {
    v2 = _MIDISetupRemoveDevice(this);
  }

  return v2 | ((v2 == 0) << 32);
}

void MIDIServerXPC_Server::objectGetProperties(MIDIServerXPC_Server *this, MIDIServer *a2, int a3)
{
  propertyList = 0;
  Properties = _MIDIObjectGetProperties(a2, &propertyList, a3);
  if (!Properties)
  {
    v5 = propertyList;
    if (propertyList)
    {
      Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      v7 = Data;
      if (Data)
      {
        v8 = CFGetTypeID(Data);
        if (v8 == CFDataGetTypeID())
        {
          BytePtr = CFDataGetBytePtr(v7);
          Length = CFDataGetLength(v7);
          swix::data::data(&object, BytePtr, Length);
          swix::result<swix::data>::result(this, &object);
          xpc_release(object);
          object = 0;
          CFRelease(v7);
LABEL_12:
          CFRelease(v5);
          return;
        }

        CFRelease(v7);
      }

      v13 = xpc_null_create();
      swix::result<swix::data>::result(this, &v13);
      xpc_release(v13);
      v13 = 0;
      goto LABEL_12;
    }
  }

  v11 = xpc_null_create();
  v14 = v11;
  if (Properties)
  {
    *this = Properties;
    *(this + 8) = 0;
  }

  else
  {
    swix::result<swix::data>::result(this, &v14);
    v11 = v14;
  }

  xpc_release(v11);
}

unint64_t MIDIServerXPC_Server::createThruConnection(MIDIServerXPC_Server *this, xpc_object_t *a2, xpc_object_t *a3)
{
  swix::ipc_interface::audit_token(__p, this);
  if (v24)
  {
    v5 = __p;
  }

  else
  {
    v5 = &gBogusAuditToken;
  }

  v6 = *(v5 + 1);
  *atoken.val = *v5;
  *&atoken.val[4] = v6;
  v7 = audit_token_to_pid(&atoken);
  if (v7 == -1)
  {
    v7 = getpid();
  }

  v21 = 0;
  v8 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  *atoken.val = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  if (MEMORY[0x2383C9190](*a2) == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(*a2);
    std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
    if ((v23 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v11)
    {
      if ((v23 & 0x80u) == 0)
      {
        v12 = v23;
      }

      else
      {
        v12 = __p[1];
      }

      v9 = CFStringCreateWithBytes(0, v11, v12, 0x8000100u, 0);
      if (!v9)
      {
        v13 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v13, "Could not construct");
      }
    }

    else
    {
      v9 = 0;
    }

    *atoken.val = v9;
    CFRelease(v8);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v9 = v8;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(*a3);
  length = xpc_data_get_length(*a3);
  applesauce::CF::make_DataRef(__p, bytes_ptr, length);
  v16 = _MIDIThruConnectionCreate(v7, v9, __p[0], &v21);
  v17 = v21;
  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (*atoken.val)
  {
    CFRelease(*atoken.val);
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  return v18 | ((v16 == 0) << 32);
}

void sub_23722E624(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void MIDIServerXPC_Server::thruConnectionGetParams(MIDIServerXPC_Server *this, MIDIServer *a2)
{
  cf = 0;
  Params = _MIDIThruConnectionGetParams(a2, &cf);
  if (Params || (v4 = cf) == 0)
  {
    v8 = xpc_null_create();
    v11 = v8;
    if (Params)
    {
      *this = Params;
      *(this + 8) = 0;
    }

    else
    {
      swix::result<swix::data>::result(this, &v11);
      v8 = v11;
    }

    xpc_release(v8);
  }

  else
  {
    object[1] = cf;
    v5 = CFGetTypeID(cf);
    if (v5 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    swix::data::data(object, BytePtr, Length);
    swix::result<swix::data>::result(this, object);
    xpc_release(object[0]);
    object[0] = 0;
    CFRelease(v4);
  }
}

void sub_23722E7C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::thruConnectionSetParams(MIDIServerXPC_Server *this, xpc_object_t *a2, const swix::data *a3)
{
  bytes_ptr = xpc_data_get_bytes_ptr(*a2);
  length = xpc_data_get_length(*a2);
  applesauce::CF::make_DataRef(&cf, bytes_ptr, length);
  v7 = _MIDIThruConnectionSetParams(this, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7 | ((v7 == 0) << 32);
}

void MIDIServerXPC_Server::thruConnectionFind(MIDIServerXPC_Server *this, xpc_object_t xstring)
{
  v20 = 0;
  string_ptr = xpc_string_get_string_ptr(xstring);
  std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
  if ((v18 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (!v4)
  {
    v6 = 0;
    v19 = 0;
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v18 & 0x80u) == 0)
  {
    v5 = v18;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
  v19 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  if ((v18 & 0x80) != 0)
  {
LABEL_10:
    operator delete(__p[0]);
  }

LABEL_11:
  v7 = _MIDIThruConnectionFind(v6, &v20);
  if (!v7)
  {
    v8 = v20;
    if (v20)
    {
      __p[0] = v20;
      v9 = CFGetTypeID(v20);
      if (v9 != CFDataGetTypeID())
      {
        v14 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v14, "Could not construct");
      }

      BytePtr = CFDataGetBytePtr(v8);
      Length = CFDataGetLength(v8);
      swix::data::data(&object, BytePtr, Length);
      swix::result<swix::data>::result(this, &object);
      xpc_release(object);
      object = 0;
      CFRelease(v8);
      if (!v6)
      {
        return;
      }

LABEL_22:
      CFRelease(v6);
      return;
    }
  }

  v12 = xpc_null_create();
  v16 = v12;
  if (v7)
  {
    *this = v7;
    *(this + 8) = 0;
  }

  else
  {
    swix::result<swix::data>::result(this, &v16);
    v12 = v16;
  }

  xpc_release(v12);
  v16 = 0;
  if (v6)
  {
    goto LABEL_22;
  }
}

void sub_23722EA84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a12);
  __clang_call_terminate(a1);
}

unint64_t MIDIServerXPC_Server::objectFindByUniqueID(MIDIServerXPC_Server *this)
{
  v5 = 0;
  v4 = 0;
  v1 = _MIDIObjectFindByUniqueID(this, &v5, &v4);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = v5;
  }

  return v2 | (v4 << 32);
}

void MIDIServerXPC_Server::getObjectTree(MIDIServerXPC_Server *this, int a2)
{
  v4 = MIDIServer::defaultInstance(this) + 2;
  v5 = (*(*v4 + 16))(v4);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  ObjectTreeCache::GetObjectTree(&v12);
  v6 = v12;
  swix::data::data(&xdata, v12, v13 - v12);
  if (a2)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(xdata);
    v8 = xpc_data_get_length(xdata) >> 2;
    if (v8 >= 1)
    {
      v9 = v8 + 1;
      do
      {
        *bytes_ptr = bswap32(*bytes_ptr);
        ++bytes_ptr;
        --v9;
      }

      while (v9 > 1);
    }
  }

  object = xdata;
  if (xdata)
  {
    xpc_retain(xdata);
  }

  else
  {
    object = xpc_null_create();
  }

  swix::result<swix::data>::result(this, &object);
  xpc_release(object);
  object = 0;
  xpc_release(xdata);
  if (v6)
  {
    operator delete(v6);
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }
}

unint64_t MIDIServerXPC_Server::umpciObjectCreate(MIDIServerXPC_Server *this, int a2, xpc_object_t *a3)
{
  swix::ipc_interface::audit_token(cf, this);
  if (v16)
  {
    v5 = cf;
  }

  else
  {
    v5 = &gBogusAuditToken;
  }

  v6 = *(v5 + 1);
  *atoken.val = *v5;
  *&atoken.val[4] = v6;
  v7 = audit_token_to_pid(&atoken);
  if (v7 == -1)
  {
    v7 = getpid();
  }

  bytes_ptr = xpc_data_get_bytes_ptr(*a3);
  length = xpc_data_get_length(*a3);
  applesauce::CF::make_DataRef(cf, bytes_ptr, length);
  applesauce::CF::make_DictionaryRef(&atoken, cf[0]);
  v14 = 0;
  v10 = _UMPCIObjectCreate(v7, a2, *atoken.val, &v14);
  v11 = v14;
  if (*atoken.val)
  {
    CFRelease(*atoken.val);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  return v12 | ((v10 == 0) << 32);
}

unint64_t MIDIServerXPC_Server::umpciObjectSetDescription(MIDIServerXPC_Server *this, xpc_object_t *a2, const swix::data *a3)
{
  bytes_ptr = xpc_data_get_bytes_ptr(*a2);
  length = xpc_data_get_length(*a2);
  applesauce::CF::make_DataRef(&v10, bytes_ptr, length);
  applesauce::CF::make_DictionaryRef(&cf, v10);
  v7 = _UMPCIObjectSetDescription(this, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7 | ((v7 == 0) << 32);
}

void MIDIServerXPC_Server::umpciGlobalState(MIDIServerXPC_Server *this)
{
  cf = 0;
  v2 = _UMPCIGlobalState(&cf);
  if (v2 || (v3 = cf) == 0)
  {
    v10 = xpc_null_create();
    v15 = v10;
    if (v2)
    {
      *this = v2;
      *(this + 8) = 0;
    }

    else
    {
      swix::result<swix::data>::result(this, &v15);
      v10 = v15;
    }

    xpc_release(v10);
  }

  else
  {
    v14[1] = cf;
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    Data = CFPropertyListCreateData(0, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    v6 = Data;
    if (Data)
    {
      object[1] = Data;
      v7 = CFGetTypeID(Data);
      if (v7 != CFDataGetTypeID())
      {
        v12 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v12, "Could not construct");
      }

      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v6);
      swix::data::data(object, BytePtr, Length);
      swix::result<swix::data>::result(this, object);
      xpc_release(object[0]);
      object[0] = 0;
      CFRelease(v6);
    }

    else
    {
      v14[0] = xpc_null_create();
      swix::result<swix::data>::result(this, v14);
      xpc_release(v14[0]);
      v14[0] = 0;
    }

    CFRelease(v3);
  }
}

void sub_23722F05C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

void MIDIServerXPC_Server::umpciServerSideMIDICITransaction(MIDIServerXPC_Server *this, xpc_object_t *a2)
{
  bytes_ptr = xpc_data_get_bytes_ptr(*a2);
  length = xpc_data_get_length(*a2);
  applesauce::CF::make_DataRef(&v22, bytes_ptr, length);
  applesauce::CF::make_DictionaryRef(&v21, v22);
  cf = 0;
  v6 = _UMPCIServerSideMIDICITransaction(v21, &cf);
  if (v6 || (v7 = cf) == 0)
  {
    v14 = xpc_null_create();
    v19 = v14;
    if (v6)
    {
      *this = v6;
      *(this + 8) = 0;
    }

    else
    {
      swix::result<swix::data>::result(this, &v19);
      v14 = v19;
    }

    xpc_release(v14);
    v19 = 0;
  }

  else
  {
    v18[1] = cf;
    v8 = CFGetTypeID(cf);
    if (v8 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    Data = CFPropertyListCreateData(0, v7, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    v10 = Data;
    if (Data)
    {
      object[1] = Data;
      v11 = CFGetTypeID(Data);
      if (v11 != CFDataGetTypeID())
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v16, "Could not construct");
      }

      BytePtr = CFDataGetBytePtr(v10);
      v13 = CFDataGetLength(v10);
      swix::data::data(object, BytePtr, v13);
      swix::result<swix::data>::result(this, object);
      xpc_release(object[0]);
      object[0] = 0;
      CFRelease(v10);
    }

    else
    {
      v18[0] = xpc_null_create();
      swix::result<swix::data>::result(this, v18);
      xpc_release(v18[0]);
      v18[0] = 0;
    }

    CFRelease(v7);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

void sub_23722F318(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

void CADeprecated::TimerTaskMgr::Run(CADeprecated::TimerTaskMgr *this)
{
  CADeprecated::CAMutex::Lock((this + 144));
  if ((*(this + 136) & 1) == 0)
  {
    do
    {
      if (*(this + 40) == -1)
      {
        v4 = *(this + 37);
        v3 = -1;
      }

      else
      {
        v2 = mach_absolute_time();
        v3 = *(this + 40);
        v4 = *(this + 37);
        if (v2 >= v3)
        {
          *(this + 156) = 256;
          v5 = *(this + 36);
          while (v5 != v4)
          {
            v6 = mach_absolute_time();
            v7 = *v5;
            if (*(this + 35) + v6 >= *(*v5 + 8) && (v7[1] = -1, CADeprecated::CAMutex::Unlock((this + 144)), (*(*v7 + 16))(v7, v6), CADeprecated::CAMutex::Lock((this + 144)), (*(this + 312) & 1) != 0))
            {
              *(this + 312) = 0;
              v5 = *(this + 36);
            }

            else
            {
              ++v5;
            }

            v4 = *(this + 37);
          }

          v3 = -1;
          *(this + 40) = -1;
          *(this + 313) = 0;
        }
      }

      v8 = *(this + 36);
      if (v8 == v4)
      {
        goto LABEL_20;
      }

      v9 = -1;
      do
      {
        v10 = *v8++;
        v11 = *(v10 + 8);
        if (v11 < v9)
        {
          v9 = v11;
        }
      }

      while (v8 != v4);
      if (v9 >= v3)
      {
LABEL_20:
        if (v3 == -1)
        {
          CADeprecated::CAGuard::Wait((this + 144));
          continue;
        }
      }

      else
      {
        *(this + 40) = v9;
      }

      v12 = __udivti3();
      CADeprecated::CAGuard::WaitUntil((this + 144), v12);
    }

    while (*(this + 136) != 1);
  }

  CADeprecated::CAMutex::Unlock((this + 144));
}

void CADeprecated::TimerTaskMgr::~TimerTaskMgr(CADeprecated::TimerTaskMgr *this)
{
  CADeprecated::TimerTaskMgr::~TimerTaskMgr(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A465C8;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  CADeprecated::CAGuard::~CAGuard((this + 144));
}

void CADeprecated::TimerTaskMgr::AddTask(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 144);
  v5 = (*(*(a1 + 144) + 16))(a1 + 144);
  *(a2 + 8) = -1;
  v7 = v4[19];
  v6 = v4[20];
  if (v7 >= v6)
  {
    v9 = *(a1 + 288);
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v7 - v9) >> 3;
    v16 = (8 * v11);
    v17 = (8 * v11 - 8 * v15);
    *v16 = a2;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    *(a1 + 288) = v17;
    *(a1 + 296) = v8;
    *(a1 + 304) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = a2;
    v8 = v7 + 8;
  }

  *(a1 + 296) = v8;
  *(a1 + 312) = 1;
  if (v5)
  {
    (*(*v4 + 24))(v4);
  }
}

void CADeprecated::CAGuard::Locker::~Locker(CADeprecated::CAGuard::Locker *this)
{
  if (*(this + 8) == 1)
  {
    (*(**this + 24))();
  }
}

uint64_t CADeprecated::TimerTaskMgr::SetTaskNextWakeTime(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = (a1 + 144);
  result = (*(*(a1 + 144) + 16))(a1 + 144);
  if (*(a2 + 8) <= a3)
  {
    goto LABEL_14;
  }

  *(a2 + 8) = a3;
  v8 = *(a1 + 288);
  v9 = *(a1 + 296);
  if (v8 == v9)
  {
    goto LABEL_14;
  }

  v10 = -1;
  do
  {
    v11 = *v8++;
    v12 = *(v11 + 8);
    if (v12 < v10)
    {
      v10 = v12;
    }
  }

  while (v8 != v9);
  if (v10 >= *(a1 + 320))
  {
LABEL_14:
    if (result)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  else
  {
    *(a1 + 320) = v10;
    v13 = *(a1 + 313);
    if (result)
    {
      result = (*(*v6 + 24))(v6);
    }

    if ((v13 & 1) == 0)
    {

      return CADeprecated::CAGuard::Notify(v6);
    }
  }

  return result;
}

os_unfair_lock_s *caulk::concurrent::lf_read_synchronized_write<applesauce::dispatch::v1::block<void ()(MIDIEventList const*,void *)>>::operator=(os_unfair_lock_s *a1, const void **a2)
{
  v4 = _Block_copy(*a2);
  v5 = *a2;
  *a2 = 0;

  os_unfair_lock_lock(a1 + 1);
  v6 = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(a1);
  v7 = _Block_copy(v4);

  v8 = a1 + 2;
  v9 = (a1 + 9);
  if (v6)
  {
    v9 = a1 + 2;
  }

  v10 = a1 + 4;
  if (LOBYTE(v9->_os_unfair_lock_opaque) == 1)
  {
    v11 = *&v10[2 * (v6 == 0)]._os_unfair_lock_opaque;
    *&v10[2 * (v6 == 0)]._os_unfair_lock_opaque = 0;
  }

  else
  {
    *(&v8->_os_unfair_lock_opaque + (v6 == 0)) = 1;
  }

  *&v10[2 * (v6 == 0)]._os_unfair_lock_opaque = _Block_copy(v7);

  caulk::concurrent::details::lf_read_sync_write_impl::end_mutate(a1);
  *(&v8->_os_unfair_lock_opaque + v6) = 0;
  v12 = *&v10[2 * v6]._os_unfair_lock_opaque;
  *&v10[2 * v6]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(a1 + 1);
  return a1;
}

void sub_237230574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_237230BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_237230E64(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void sub_237230FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = MIDIUMPMutableEndpoint;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_23723137C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void ObjectTreeCache::GetObjectTree(MIDIServer *a1)
{
  v2 = _MIDIGetNumberOfDevices(a1);
  v21 = v2;
  std::vector<unsigned int>::push_back[abi:ne200100](a1, &v21);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = (v2 & 0x7FFFFFFF);
    do
    {
      v21 = _MIDIGetDevice(v4);
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &v21);
      v4 = (v4 + 1);
    }

    while (v5 != v4);
    v6 = 0;
    do
    {
      v7 = _MIDIGetDevice(v6);
      AddDeviceChildren(a1, v7);
      v6 = (v6 + 1);
    }

    while (v5 != v6);
  }

  v8 = _MIDIGetNumberOfSources(v3);
  v21 = v8;
  std::vector<unsigned int>::push_back[abi:ne200100](a1, &v21);
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = (v8 & 0x7FFFFFFF);
    do
    {
      v21 = _MIDIGetSource(v10);
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &v21);
      v10 = (v10 + 1);
    }

    while (v11 != v10);
  }

  v12 = _MIDIGetNumberOfDestinations(v9);
  v21 = v12;
  std::vector<unsigned int>::push_back[abi:ne200100](a1, &v21);
  if (v12 >= 1)
  {
    v14 = 0;
    v15 = (v12 & 0x7FFFFFFF);
    do
    {
      v21 = _MIDIGetDestination(v14);
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &v21);
      v14 = (v14 + 1);
    }

    while (v15 != v14);
  }

  v16 = _MIDIGetNumberOfExternalDevices(v13);
  v21 = v16;
  std::vector<unsigned int>::push_back[abi:ne200100](a1, &v21);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = (v16 & 0x7FFFFFFF);
    do
    {
      v21 = _MIDIGetExternalDevice(v17);
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &v21);
      v17 = (v17 + 1);
    }

    while (v18 != v17);
    v19 = 0;
    do
    {
      v20 = _MIDIGetExternalDevice(v19);
      AddDeviceChildren(a1, v20);
      v19 = (v19 + 1);
    }

    while (v18 != v19);
  }
}

void AddDeviceChildren(uint64_t a1, MIDIServer *a2)
{
  v19 = 0uLL;
  v20 = 0;
  NumberOfEntities = _MIDIDeviceGetNumberOfEntities(a2);
  Source = NumberOfEntities;
  std::vector<unsigned int>::push_back[abi:ne200100](a1, &Source);
  if (NumberOfEntities < 1)
  {
    v8 = 0uLL;
  }

  else
  {
    v5 = 0;
    v6 = NumberOfEntities & 0x7FFFFFFF;
    do
    {
      Entity = _MIDIDeviceGetEntity(a2, v5);
      Source = Entity;
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &Source);
      Source = Entity;
      std::vector<unsigned int>::push_back[abi:ne200100](&v19, &Source);
      ++v5;
    }

    while (v6 != v5);
    v8 = v19;
  }

  v9 = v8;
  if (v8 != *(&v8 + 1))
  {
    v10 = v8;
    do
    {
      v11 = *v10;
      NumberOfSources = _MIDIEntityGetNumberOfSources(v11);
      Source = NumberOfSources;
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &Source);
      if (NumberOfSources >= 1)
      {
        v13 = 0;
        v14 = NumberOfSources & 0x7FFFFFFF;
        do
        {
          Source = _MIDIEntityGetSource(v11, v13);
          std::vector<unsigned int>::push_back[abi:ne200100](a1, &Source);
          ++v13;
        }

        while (v14 != v13);
      }

      NumberOfDestinations = _MIDIEntityGetNumberOfDestinations(v11);
      Source = NumberOfDestinations;
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &Source);
      if (NumberOfDestinations >= 1)
      {
        v16 = 0;
        v17 = NumberOfDestinations & 0x7FFFFFFF;
        do
        {
          Source = _MIDIEntityGetDestination(v11, v16);
          std::vector<unsigned int>::push_back[abi:ne200100](a1, &Source);
          ++v16;
        }

        while (v17 != v16);
      }

      ++v10;
    }

    while (v10 != *(&v9 + 1));
  }

  if (v9)
  {

    operator delete(v9);
  }
}

void sub_237231814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ObjectTreeCache::AddChildNodeList(uint64_t a1, void *key, _DWORD *a3)
{
  v5 = key;
  CFDictionarySetValue(*(a1 + 104), key, a3);
  if (*a3)
  {
    v6 = 0;
    do
    {
      CFDictionarySetValue(*(a1 + 120), a3[++v6], v5);
    }

    while (v6 < *a3);
  }
}

unsigned int *ObjectTreeCache::ParseDeviceChildren(uint64_t a1, void *a2, _DWORD *a3)
{
  ObjectTreeCache::AddChildNodeList(a1, a2, a3);
  v6 = a3 + 1;
  v5 = *a3;
  v7 = &a3[v5 + 1];
  if (v5)
  {
    v8 = 0;
    do
    {
      ObjectTreeCache::AddChildNodeList(a1, v6[v8], v7);
      v9 = &v7[*v7];
      v11 = v9[1];
      v10 = v9 + 1;
      if (v11)
      {
        v12 = 0;
        v13 = v6[v8];
        do
        {
          CFDictionarySetValue(*(a1 + 120), v10[++v12], v13);
          v14 = *v10;
        }

        while (v12 < v14);
      }

      else
      {
        v14 = 0;
      }

      v7 = &v10[v14 + 1];
      ++v8;
    }

    while (v8 < *a3);
  }

  return v7;
}

void std::vector<CIAsyncTransaction>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 48)
  {
  }

  *(a1 + 8) = a2;
}

void sub_237232254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2372324FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

uint64_t std::vector<CIAsyncTransaction>::__emplace_back_slow_path<CIAsyncTransaction>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v3) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - v3) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v3) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  v24 = a1;
  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = 16 * (v4 >> 4);
  v21 = 0;
  v22 = v8;
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  v9 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v8 + 24) = v9;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 36) = *(a2 + 36);
  v10 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v8 + 40) = v10;
  v11 = v8 - v4;
  v23 = (v8 + 48);
  if (v3 != v2)
  {
    v12 = v3;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      v15 = *(v12 + 3);
      *(v12 + 3) = 0;
      *(v13 + 24) = v15;
      LODWORD(v15) = *(v12 + 8);
      *(v13 + 36) = *(v12 + 36);
      *(v13 + 32) = v15;
      v16 = *(v12 + 5);
      *(v12 + 5) = 0;
      *(v13 + 40) = v16;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v2);
    while (v3 != v2)
    {

      v3 += 6;
    }
  }

  v17 = *a1;
  *a1 = v11;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<CIAsyncTransaction>::~__split_buffer(&v21);
  return v20;
}

uint64_t std::__split_buffer<CIAsyncTransaction>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_237232CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_237232EF8(_Unwind_Exception *a1)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_237232F24(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    OSStatusToNSError(*v13, v10);
    __cxa_end_catch();
    JUMPOUT(0x237232E88);
  }

  JUMPOUT(0x237232F0CLL);
}

void sub_23723333C(_Unwind_Exception *a1)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_2372334DC(_Unwind_Exception *a1)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_23723380C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    OSStatusToNSError(*v15, v12);
    __cxa_end_catch();
    JUMPOUT(0x2372337E4);
  }

  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_2372341B0(_Unwind_Exception *a1)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_2372347E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

uint64_t MIDIConnection::PrintObject(MIDIConnection *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIThruConnectionRef", *(this + 2), this);

  return fputc(10, a2);
}

void MIDIConnection::~MIDIConnection(MIDIConnection *this)
{
  MIDIConnection::~MIDIConnection(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46BF8;
  MIDIConnection::ConnectToSources(this, 0);
  v2 = this + 14096;
  v3 = -7168;
  do
  {
    v4 = *(v2 + 38);
    *(v2 + 38) = 0;
    if (v4)
    {
      std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(*(v4 + 8));
      MEMORY[0x2383C8250](v4, 0x1020C4062D53EE8);
    }

    v5 = *v2;
    if (*v2)
    {
      *(v2 + 1) = v5;
      operator delete(v5);
    }

    v2 -= 448;
    v3 += 448;
  }

  while (v3);
  v6 = this + 6928;
  v7 = -7168;
  do
  {
    v8 = *(v6 + 38);
    *(v6 + 38) = 0;
    if (v8)
    {
      std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(*(v8 + 8));
      MEMORY[0x2383C8250](v8, 0x1020C4062D53EE8);
    }

    v9 = *v6;
    if (*v6)
    {
      *(v6 + 1) = v9;
      operator delete(v9);
    }

    v6 -= 448;
    v7 += 448;
  }

  while (v7);
  XCFObject<__CFData const*>::~XCFObject(this + 48);
  XCFObject<__CFString const*>::~XCFObject(this + 16);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void MIDIConnection::ConnectToSources(MIDIConnection *this, int a2)
{
  v41[128] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 4);
    if (v3 >= 1)
    {
      v4 = a2;
      while (1)
      {
        v6 = *(v2 + 8);
        v2 += 8;
        v7 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v6);
        if (v7)
        {
          v8 = (*(*v7 + 80))(v7);
          if (v8)
          {
            break;
          }
        }

LABEL_46:
        if (v3-- <= 1)
        {
          return;
        }
      }

      v9 = v8;
      if (v4)
      {
        v10 = v8[16];
        v11 = v8[17];
        if (v10 != v11)
        {
          while (*v10 != this)
          {
            if (++v10 == v11)
            {
              goto LABEL_18;
            }
          }
        }

        if (v10 == v11)
        {
LABEL_18:
          if (!v8[19])
          {
            operator new();
          }

          v18 = MIDIServer::defaultInstance(v8) + 13;
          v17 = *v18;
          v37 = v18;
          v19 = (*(v17 + 16))(v18);
          LOBYTE(v38) = v19;
          v21 = v9[17];
          v20 = v9[18];
          if (v21 >= v20)
          {
            v25 = v9[16];
            v26 = (v21 - v25) >> 3;
            if ((v26 + 1) >> 61)
            {
              std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
            }

            v27 = v20 - v25;
            v28 = v27 >> 2;
            if (v27 >> 2 <= (v26 + 1))
            {
              v28 = v26 + 1;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v28;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ClientProcess *>>(v29);
            }

            *(8 * v26) = this;
            v22 = 8 * v26 + 8;
            v30 = v9[16];
            v31 = v9[17] - v30;
            v32 = (8 * v26 - v31);
            memcpy(v32, v30, v31);
            v33 = v9[16];
            v9[16] = v32;
            v9[17] = v22;
            v9[18] = 0;
            if (v33)
            {
              operator delete(v33);
            }

            v4 = a2;
          }

          else
          {
            *v21 = this;
            v22 = (v21 + 1);
          }

          v9[17] = v22;
          if (v19)
          {
            (*(*v18 + 24))(v18);
          }
        }

        goto LABEL_46;
      }

      v12 = MIDIServer::defaultInstance(v8) + 13;
      v13 = (*(*v12 + 16))(v12);
      v14 = v13;
      v16 = v9[16];
      v15 = v9[17];
      if (v16 == v15)
      {
LABEL_15:
        if (!v13)
        {
          goto LABEL_30;
        }
      }

      else
      {
        while (*v16 != this)
        {
          if (++v16 == v15)
          {
            v16 = v9[17];
            goto LABEL_15;
          }
        }

        if (!*(this + 3602))
        {
          v37 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<ConnectionEmitter::ConnectionEmitter(MIDIConnection *)::{lambda(MIDI::EventList const*)#1}>;
          v38 = &v37;
          v40 = 1;
          v39 = v41;
          v41[127] = this;
          MIDI::StreamState::reset((this + 72), &v37);
          if (HIDWORD(v40))
          {
            v36 = &v40;
            (*v37)(&v38, &v36);
          }

          HIDWORD(v40) = 0;
          v39 = v41;
          MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v37);
          v15 = v9[17];
        }

        v23 = v15 - (v16 + 1);
        if (v15 != v16 + 1)
        {
          memmove(v16, v16 + 1, v15 - (v16 + 1));
        }

        v16 = (v16 + v23);
        v9[17] = v16;
        if (!v14)
        {
          goto LABEL_30;
        }
      }

      (*(*v12 + 24))(v12);
      v16 = v9[17];
LABEL_30:
      if (v9[16] == v16)
      {
        v24 = v9[19];
        v9[19] = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }
      }

      goto LABEL_46;
    }
  }
}

void sub_237235084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  CADeprecated::CAMutex::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t XCFObject<__CFData const*>::~XCFObject(uint64_t a1)
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

void MIDI::StreamState::~StreamState(MIDI::StreamState *this)
{
  v2 = 7168;
  do
  {
    v3 = *(this + v2 - 8);
    *(this + v2 - 8) = 0;
    if (v3)
    {
      std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(*(v3 + 8));
      MEMORY[0x2383C8250](v3, 0x1020C4062D53EE8);
    }

    v4 = *(this + v2 - 312);
    if (v4)
    {
      *(this + v2 - 304) = v4;
      operator delete(v4);
    }

    v2 -= 448;
  }

  while (v2);
}

void XCFObject<__CFString const*>::Set(uint64_t a1, const void *a2)
{
  if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
      v5 = *(a1 + 8);
    }

    else
    {
      v5 = 1;
    }

    *a1 = a2;
    *(a1 + 9) = 0;
    if (a2 && (v5 & 1) != 0)
    {

      CFRetain(a2);
    }
  }

  else
  {
    *a1 = a2;
    *(a1 + 9) = 0;
  }
}

uint64_t MIDIConnection::SetParams(MIDIConnection *this, MIDISetup *a2, CFDataRef theData)
{
  if (!theData)
  {
    return 4294967246;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (CFDataGetLength(theData) < ((*(BytePtr + 97) << 7) + 8 * *(BytePtr + 96) + 204))
  {
    return 4294967246;
  }

  ++*(this + 3602);
  MIDIConnection::ConnectToSources(this, 0);
  if (*(this + 5))
  {
    *(this + 5) = 0;
  }

  if (*(this + 56))
  {
    v8 = *(this + 6);
    if (v8)
    {
      CFRelease(v8);
      v9 = *(this + 56);
      *(this + 6) = theData;
      *(this + 57) = 0;
      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(this + 6) = theData;
      *(this + 57) = 0;
    }

    CFRetain(theData);
  }

  else
  {
    *(this + 6) = theData;
    *(this + 57) = 0;
  }

LABEL_14:
  *(this + 17) = 0;
  *(this + 64) = 0;
  if (*(BytePtr + 96))
  {
    v10 = *(BytePtr + 96) + 1;
    v11 = (BytePtr + 206);
    do
    {
      v12 = *(v11 - 2);
      if (v12 == 1)
      {
        v13 = *v11;
        if (v13 <= 0x1F)
        {
          *(this + (v13 >> 3) + 68) |= 1 << (v13 & 7);
        }
      }

      else if ((v12 & 6) != 0)
      {
        *(this + 64) = 1;
      }

      --v10;
      v11 += 4;
    }

    while (v10 > 1);
  }

  *(this + 5) = BytePtr;
  if (a2)
  {
    MIDIConnection::MaintainEndpoints(this, a2);
  }

  result = 0;
  --*(this + 3602);
  return result;
}

void MIDIConnection::MaintainEndpoints(MIDIConnection *this, MIDISetup *a2)
{
  v3 = *(this + 5);
  v4 = v3[1];
  if (v4)
  {
    if ((v4 & 0xF8) != 0)
    {
      v5 = 8;
    }

    else
    {
      v5 = v4;
    }

    v6 = *(this + 5);
    do
    {
      v7 = v6[2];
      v6 += 2;
      IntegerProperty = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v7);
      if (IntegerProperty)
      {
        goto LABEL_22;
      }

      v9 = v3[3];
      for (i = *(a2 + 11); i != *(a2 + 12); ++i)
      {
        v11 = *i;
        v39 = 0;
        IntegerProperty = MIDIObject::GetIntegerProperty(v11, kMIDIPropertyUniqueID, &v39);
        v12 = v39;
        if (IntegerProperty)
        {
          v12 = 0;
        }

        if (v12 == v9)
        {
          goto LABEL_20;
        }
      }

      v13 = SetupManager::instance(IntegerProperty);
      v14 = *(v13 + 8);
      if (v14 == *(v13 + 16))
      {
LABEL_19:
        v18 = 0;
        goto LABEL_21;
      }

      v15 = v13;
      while (1)
      {
        v11 = *v14;
        v39 = 0;
        v16 = MIDIObject::GetIntegerProperty(v11, kMIDIPropertyUniqueID, &v39);
        v17 = v39;
        if (v16)
        {
          v17 = 0;
        }

        if (v17 == v9)
        {
          break;
        }

        if (++v14 == *(v15 + 16))
        {
          goto LABEL_19;
        }
      }

LABEL_20:
      v18 = *(v11 + 2);
LABEL_21:
      *v6 = v18;
      IntegerProperty = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v18);
      if (IntegerProperty)
      {
LABEL_22:
        v39 = 0;
        v19 = MIDIObject::GetIntegerProperty(IntegerProperty, kMIDIPropertyUniqueID, &v39);
        v20 = v39;
        if (v19)
        {
          v20 = 0;
        }

        v3[3] = v20;
      }

      v3 = v6;
      v21 = v5-- > 1;
    }

    while (v21);
    v3 = *(this + 5);
  }

  v22 = v3[18];
  if (v22)
  {
    if ((v22 & 0xF8) != 0)
    {
      v23 = 8;
    }

    else
    {
      v23 = v22;
    }

    v24 = v3 + 19;
    do
    {
      v25 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, *v24);
      if (v25)
      {
        goto LABEL_48;
      }

      v26 = v24[1];
      for (j = *(a2 + 14); j != *(a2 + 15); ++j)
      {
        v28 = *j;
        v39 = 0;
        v25 = MIDIObject::GetIntegerProperty(v28, kMIDIPropertyUniqueID, &v39);
        v29 = v39;
        if (v25)
        {
          v29 = 0;
        }

        if (v29 == v26)
        {
          goto LABEL_46;
        }
      }

      v30 = SetupManager::instance(v25);
      v31 = *(v30 + 32);
      if (v31 == *(v30 + 40))
      {
LABEL_45:
        v35 = 0;
        goto LABEL_47;
      }

      v32 = v30;
      while (1)
      {
        v28 = *v31;
        v39 = 0;
        v33 = MIDIObject::GetIntegerProperty(v28, kMIDIPropertyUniqueID, &v39);
        v34 = v39;
        if (v33)
        {
          v34 = 0;
        }

        if (v34 == v26)
        {
          break;
        }

        if (++v31 == *(v32 + 40))
        {
          goto LABEL_45;
        }
      }

LABEL_46:
      v35 = *(v28 + 2);
LABEL_47:
      *v24 = v35;
      v25 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v35);
      if (v25)
      {
LABEL_48:
        v39 = 0;
        v36 = MIDIObject::GetIntegerProperty(v25, kMIDIPropertyUniqueID, &v39);
        v37 = v39;
        if (v36)
        {
          v37 = 0;
        }

        v24[1] = v37;
      }

      v24 += 2;
      v21 = v23-- > 1;
    }

    while (v21);
  }

  MIDIConnection::ConnectToSources(this, 1);
}

uint64_t TransformValue(uint64_t result, int a2, unsigned int a3, unsigned __int16 *a4, int a5)
{
  v5 = *a4;
  if (a2 <= 9)
  {
    if (a2 == 8)
    {
      v8 = v5 + a3;
    }

    else
    {
      if (a2 != 9)
      {
        return result;
      }

      v8 = (v5 * a3 + 2048) >> 12;
    }
  }

  else if (a2 == 10)
  {
    if (v5 <= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a4;
    }
  }

  else if (a2 == 11)
  {
    if (v5 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a4;
    }
  }

  else
  {
    if (a2 != 12 || (a3 & 0x80000000) != 0 || a3 >= *(result + 194))
    {
      return result;
    }

    v6 = result + 8 * *(result + 192) + (a3 << 7) + 204;
    if (a5)
    {
      v7 = *(v6 + (v5 >> 7));
      v8 = v7 << 7;
      if ((v5 & 0x7F) != 0 && v5 >> 7 <= 0x7E)
      {
        v8 += ((v5 & 0x7F) * (*(v6 + (v5 >> 7) + 1) - v7)) & 0x1FFFFFF;
      }
    }

    else
    {
      v8 = *(v6 + *a4);
    }
  }

  if (a5)
  {
    v9 = 0x3FFF;
  }

  else
  {
    v9 = 127;
  }

  if (v9 >= v8)
  {
    LOWORD(v9) = v8;
  }

  *a4 = v9;
  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<ConnectionEmitter::ConnectionEmitter(MIDIConnection *)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<ConnectionEmitter::ConnectionEmitter(MIDIConnection *)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(uint64_t result, const MIDI::EventList **a2)
{
  v2 = *(*result + 1088);
  v3 = v2[5];
  v4 = *(v3 + 72);
  if (v4 >= 1)
  {
    v5 = *a2;
    v6 = (v3 + 76);
    v7 = v4 + 1;
    do
    {
      result = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, *v6);
      if (result)
      {
        result = (*(*result + 88))(result);
        if (result)
        {
          result = MIDIDestination::SendPacketList(result, v2, v5);
        }
      }

      v6 += 2;
      --v7;
    }

    while (v7 > 1);
  }

  return result;
}

void MIDICI::Device::serialize(MIDICI::Device *this)
{
  v16[34] = *MEMORY[0x277D85DE8];
  v2 = *(this + 24);
  if (v2)
  {
    CFRetain(*(this + 24));
    v9 = v2;
  }

  else
  {
    v3 = CFArrayCreate(0, 0, 0, MEMORY[0x277CBF128]);
    v9 = v3;
    if (v3)
    {
      v4 = CFGetTypeID(v3);
      if (v4 != CFArrayGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](exception, "Could not construct");
      }
    }
  }

  v8 = *(this + 2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(v11, "object", &v8);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int const&>(&v12, "muid", this + 16);
  applesauce::CF::TypeRef::TypeRef(&v13, "device_type");
  LOBYTE(valuePtr) = *(this + 68);
  if (CFNumberCreate(0, kCFNumberCharType, &valuePtr))
  {
    applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int const&>(&v15, "source", this + 18);
    applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int const&>(v16, "destination", this + 19);
    MIDI2::DeviceInfo::serialize(&cf, this + 80);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383C7ED0](v5, "Could not construct");
}

void sub_237235DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  __cxa_free_exception(v30);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a18);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void MIDICI::Device::deserialize(MIDICI::Device *this@<X0>, const __CFDictionary **a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "muid");
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  v6 = applesauce::CF::details::at_key<std::string const&>(*a2, &__p);
  if (v6)
  {
    v7 = applesauce::CF::convert_as<unsigned int,0>(v6);
    v8 = v7;
    if ((v7 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
      v9 = 0;
      v10 = v8;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  v9 = 1;
LABEL_7:
  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  operator delete(__p.isa);
  if ((v9 & 1) == 0)
  {
LABEL_9:
    *(this + 16) = v10 | v8 & 0xFFFFFF00;
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(&__p, "device_type");
  if (!*a2)
  {
    v71 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v71, "Could not construct");
  }

  v11 = applesauce::CF::details::at_key<std::string const&>(*a2, &__p);
  if (v11)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v11))
    {
      LOBYTE(valuePtr) = 0;
      if (CFNumberGetValue(v11, kCFNumberCharType, &valuePtr))
      {
        LOBYTE(v11) = valuePtr;
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
        v13 = 0;
        goto LABEL_17;
      }
    }

    LOBYTE(v11) = 0;
  }

  v13 = 1;
LABEL_17:
  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  operator delete(__p.isa);
  if ((v13 & 1) == 0)
  {
LABEL_19:
    *(this + 68) = v11;
  }

LABEL_20:
  std::string::basic_string[abi:ne200100]<0>(&__p, "source");
  if (!*a2)
  {
    v72 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v72, "Could not construct");
  }

  v14 = applesauce::CF::details::at_key<std::string const&>(*a2, &__p);
  if (v14)
  {
    v15 = applesauce::CF::convert_as<unsigned int,0>(v14);
    v16 = v15;
    if ((v15 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
      v17 = 0;
      v18 = v16;
      goto LABEL_30;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = 0;
  v17 = 1;
LABEL_30:
  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if (v17)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  operator delete(__p.isa);
  if ((v17 & 1) == 0)
  {
LABEL_32:
    *(this + 18) = v18 | v16 & 0xFFFFFF00;
  }

LABEL_33:
  std::string::basic_string[abi:ne200100]<0>(&__p, "destination");
  if (!*a2)
  {
    v73 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v73, "Could not construct");
  }

  v19 = applesauce::CF::details::at_key<std::string const&>(*a2, &__p);
  if (v19)
  {
    v20 = applesauce::CF::convert_as<unsigned int,0>(v19);
    v21 = v20;
    if ((v20 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
      v22 = 0;
      v23 = v21;
      goto LABEL_41;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = 0;
  v22 = 1;
LABEL_41:
  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if (v22)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  operator delete(__p.isa);
  if ((v22 & 1) == 0)
  {
LABEL_43:
    *(this + 19) = v23 | v21 & 0xFFFFFF00;
  }

LABEL_44:
  std::string::basic_string[abi:ne200100]<0>(&__p, "device_info");
  if (!*a2)
  {
    v74 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v74, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,std::string const&>(&valuePtr, *a2, &__p);
  if (v94 == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
  }

  else
  {
    LOBYTE(valuePtr) = 0;
    LOBYTE(v94) = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v94 == 1)
  {
    MIDI2::DeviceInfo::deserialize(v100, (this + 80), &valuePtr);
    std::__tree<std::string>::destroy(v101);
    if (v94)
    {
      if (valuePtr)
      {
        CFRelease(valuePtr);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "supports_protocol_negotiation");
  if (!*a2)
  {
    v75 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v75, "Could not construct");
  }

  v24 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__p);
  if (v24 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v24 >= 0x100u)
  {
    *(this + 92) = v25;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "supports_profile_capability");
  if (!*a2)
  {
    v76 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v76, "Could not construct");
  }

  v26 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__p);
  if (v26 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v26 >= 0x100u)
  {
    *(this + 93) = v27;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "supports_property_exchange_capability");
  if (!*a2)
  {
    v77 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v77, "Could not construct");
  }

  v28 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__p);
  if (v28 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v28 >= 0x100u)
  {
    *(this + 94) = v29;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "supports_process_inquiry_capability");
  if (!*a2)
  {
    v78 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v78, "Could not construct");
  }

  v30 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__p);
  if (v30 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v30 >= 0x100u)
  {
    *(this + 95) = v31;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "max_sysex_size");
  if (!*a2)
  {
    v79 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v79, "Could not construct");
  }

  v32 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,std::string const&>(*a2, &__p);
  v34 = v33;
  if (v33)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v35 = v32;
  }

  else
  {
    v35 = 0;
  }

  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  operator delete(__p.isa);
  if (v34)
  {
LABEL_92:
    *(this + 12) = v35 | v32 & 0xFFFFFFFFFFFFFF00;
  }

LABEL_93:
  std::string::basic_string[abi:ne200100]<0>(&__p, "max_property_requests");
  if (!*a2)
  {
    v80 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v80, "Could not construct");
  }

  v36 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,std::string const&>(*a2, &__p);
  v38 = v37;
  if (v37)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v39 = v36;
  }

  else
  {
    v39 = 0;
  }

  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if ((v38 & 1) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  operator delete(__p.isa);
  if (v38)
  {
LABEL_99:
    *(this + 13) = v39 | v36 & 0xFFFFFFFFFFFFFF00;
  }

LABEL_100:
  std::string::basic_string[abi:ne200100]<0>(&__p, "enabled");
  if (!*a2)
  {
    v81 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v81, "Could not construct");
  }

  v40 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__p);
  if (v40 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v40 >= 0x100u)
  {
    *(this + 112) = v41;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "client_owned");
  if (!*a2)
  {
    v82 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v82, "Could not construct");
  }

  v42 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__p);
  if (v42 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v42 >= 0x100u)
  {
    *(this + 113) = v43;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "owner_client_ref");
  if (!*a2)
  {
    v83 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v83, "Could not construct");
  }

  v44 = applesauce::CF::details::at_key<std::string const&>(*a2, &__p);
  if (v44)
  {
    v45 = applesauce::CF::convert_as<unsigned int,0>(v44);
    v46 = v45;
    if ((v45 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
      v47 = 0;
      v48 = v46;
      goto LABEL_128;
    }
  }

  else
  {
    v46 = 0;
  }

  v48 = 0;
  v47 = 1;
LABEL_128:
  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if (v47)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

  operator delete(__p.isa);
  if ((v47 & 1) == 0)
  {
LABEL_130:
    *(this + 13) = v48 | v46 & 0xFFFFFF00;
  }

LABEL_131:
  std::string::basic_string[abi:ne200100]<0>(&__p, "function_block_id");
  if (!*a2)
  {
    v84 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v84, "Could not construct");
  }

  v49 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__p);
  if (v49 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v49 >= 0x100u)
  {
    *(this + 168) = v50;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "profiles");
  if (!*a2)
  {
    v85 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v85, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,std::string const&>(&theArray, *a2, &__p);
  if (v99 == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
  }

  else
  {
    LOBYTE(theArray) = 0;
    v99 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v99 == 1)
  {
    v51 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v53 = Count;
      v54 = theArray;
      if (theArray)
      {
        v89 = CFArrayGetCount(theArray);
        if (!v53)
        {
          goto LABEL_171;
        }
      }

      else
      {
        v89 = 0;
        if (!Count)
        {
          goto LABEL_171;
        }
      }

      v55 = 0;
      do
      {
        if (v51 == v54 && v55 == v89)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v97, v51, v55);
        applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&cf, &v97);
        valuePtr = 0;
        v94 = 0;
        v95 = 0;
        if (!cf)
        {
          v69 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383C7ED0](v69, "Could not construct");
        }

        applesauce::CF::details::find_at_key_or_optional<std::vector<unsigned long long>,char const* const&>(&__p, cf, "id");
        if (LOBYTE(__p.length) == 1)
        {
          v56 = 0;
          isa = __p.isa;
          do
          {
            LOBYTE(v90) = *&isa[v56];
            std::vector<unsigned char>::push_back[abi:ne200100](&valuePtr, &v90);
            v56 += 8;
          }

          while (v56 != 40);
          operator delete(isa);
        }

        v58 = valuePtr;
        v59 = MIDICI::Device::profile(*(this + 18), *(this + 19), valuePtr, v94 - valuePtr);
        if (!v59)
        {
          operator new();
        }

        MIDICI::Profile::deserialize(v59, &cf, v91);
        std::__tree<std::string>::destroy(v91[1]);
        if (v58)
        {
          operator delete(v58);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v97)
        {
          CFRelease(v97);
        }

        ++v55;
      }

      while (v55 != v53);
    }
  }

LABEL_171:
  if (v99 == 1 && theArray)
  {
    CFRelease(theArray);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "timestamp");
  if (!*a2)
  {
    v86 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v86, "Could not construct");
  }

  v60 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,std::string const&>(*a2, &__p);
  v62 = v61;
  if (v61)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v63 = v60;
  }

  else
  {
    v63 = 0;
  }

  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if ((v62 & 1) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

  operator delete(__p.isa);
  if (v62)
  {
LABEL_180:
    *(this + 7) = v63 | v60 & 0xFFFFFFFFFFFFFF00;
  }

LABEL_181:
  std::string::basic_string[abi:ne200100]<0>(&__p, "resource_list");
  if (!*a2)
  {
    v87 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v87, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,std::string const&>(&valuePtr, *a2, &__p);
  v64 = v94;
  if (v94 == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
  }

  else
  {
    LOBYTE(valuePtr) = 0;
    LOBYTE(v94) = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v64)
    {
      goto LABEL_197;
    }
  }

  else if (!v64)
  {
    goto LABEL_197;
  }

  v65 = *(this + 24);
  v66 = valuePtr;
  *(this + 24) = valuePtr;
  if (v66)
  {
    CFRetain(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

LABEL_197:
  std::string::basic_string[abi:ne200100]<0>(&__p, "group");
  if (!*a2)
  {
    v88 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v88, "Could not construct");
  }

  v67 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__p);
  if (v67 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p.isa);
    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (v67 >= 0x100u)
  {
    *(this + 169) = v68;
  }
}