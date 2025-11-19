uint64_t HALB_FormatList::GetPhysicalFormats(uint64_t this, unint64_t a2, unint64_t *a3, AudioStreamBasicDescription *a4)
{
  *a3 = 0;
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 32);
    v7 = *(this + 40);
    v8 = -1;
    do
    {
      if (++v8 >= 0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 3))
      {
        break;
      }

      v9 = (v6 + v4);
      v10 = &a4[v5];
      v11 = *v9;
      v12 = v9[1];
      *&v10->mBitsPerChannel = *(v9 + 4);
      *&v10->mSampleRate = v11;
      *&v10->mBytesPerPacket = v12;
      v6 = *(this + 32);
      v7 = *(this + 40);
      if (0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 3) <= v8)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = v6 + v4;
      v4 += 56;
      v14 = *(v13 + 40);
      if (v14 != *(v13 + 48))
      {
        v14 = 0.0;
      }

      v15 = *a3;
      a4[*a3].mSampleRate = v14;
      v5 = v15 + 1;
      *a3 = v5;
    }

    while (v5 < a2);
  }

  return this;
}

void sub_1DE3A490C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3A498C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1},std::default_delete<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1DE3A4A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1DE3A4B20(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c77_ZTSKZ64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint__E3__6(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

id __copy_helper_block_ea8_32c77_ZTSKZ64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint__E3__5(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  result = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN10applesauce8dispatch2v19sync_implIZ56__Core_Audio_Driver_Service_Client_get_lazy_connection__E3__4EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*v1 connection_to_driver_service];

  if (!v2)
  {
    v3 = *v1;
    v4 = *(v1 + 16);
    v5 = *(v1 + 8);
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v3 connect_to_driver_service:&v5];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1DE3A5164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3A5418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  JUMPOUT(0x1DE3A5410);
}

void ___ZZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__ENK3__2cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  NSLog(&cfstr_ConnectionToDr.isa);
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 driver_service_undertaker];
    v3 = v8;
    if (v8)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        [v4 queue];
        v3 = v8;
      }

      else
      {
        v10 = 0;
      }

      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        [v5 driver_file];
      }

      v6 = v10;
      operator new();
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE3A55C8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(va);
  if (a8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a8);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__ENK3__3cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  NSLog(&cfstr_ConnectionToDr_0.isa);
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

id __copy_helper_block_ea8_32c75_ZTSKZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__E3__3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id __copy_helper_block_ea8_32c75_ZTSKZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__E3__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_1DE3A57AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1DE3A5A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = Core_Audio_Driver_Service_Client;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DE3A5B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void AMCP::Portal::IPC::IO_Sender::~IO_Sender(AMCP::Portal::IPC::IO_Sender *this)
{
  AMCP::Portal::IPC::IO_Sender::~IO_Sender(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596A7C0;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    MEMORY[0x1E12C1730](v2, 0x1020C401EC519C5);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::semaphore_sender>::__on_zero_shared(uint64_t a1)
{
  MEMORY[0x1E12C0DE0](a1 + 80);
  MEMORY[0x1E12C0DE0](a1 + 72);
  caulk::ipc::mapped_memory::reset((a1 + 48));

  return caulk::ipc::mapped_memory::reset((a1 + 24));
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::semaphore_sender>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596A840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::eventlink_sender>::__on_zero_shared(caulk::mach::details **a1, void *a2)
{
  caulk::mach::details::release_os_object(a1[9], a2);
  caulk::ipc::mapped_memory::reset((a1 + 6));

  return caulk::ipc::mapped_memory::reset((a1 + 3));
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::eventlink_sender>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596A7F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(uint64_t a1, const BOOL *a2, _OWORD *a3, double *a4)
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = 1768911973;
  v5 = atomic_load((a1 + 65));
  if (v5)
  {
    goto LABEL_2;
  }

  v12 = AMCP::Feature_Flags::access_event_link_oop_io(0, a2);
  if (v12)
  {
    v13 = *(a1 + 8);
    v14 = v13[1];
    if (!v14)
    {
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
      }

      v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = *v17;
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        v18 = *v17;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v83 = "IO_Sender.cpp";
        v84 = 1024;
        v85 = 157;
        v86 = 2080;
        v87 = "payload_data.empty()";
        _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get io sender payload", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v81);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v74, "Failed to get io sender payload");
      std::runtime_error::runtime_error(&v75, &v74);
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = -1;
      v75.__vftable = &unk_1F5992170;
      v76 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v75);
      v88 = "OSStatus AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(const sender_data_t &, receiver_data_t &, const double &)";
      v89 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/IO_Sender.cpp";
      v90 = 157;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v73);
    }
  }

  else
  {
    v13 = *(a1 + 24);
    v14 = v13[1];
    if (!v14)
    {
      goto LABEL_83;
    }
  }

  if (v14 <= 0x13F)
  {
    v12 = CAAssertRtn();
LABEL_83:
    v69 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v69 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v71 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v70 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v70)
    {
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
      v72 = *v71;
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    else
    {
      v72 = *v71;
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v83 = "IO_Sender.cpp";
      v84 = 1024;
      v85 = 163;
      v86 = 2080;
      v87 = "payload_data.empty()";
      _os_log_error_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get io sender payload", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v81);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v74, "Failed to get io sender payload");
    std::runtime_error::runtime_error(&v75, &v74);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = -1;
    v75.__vftable = &unk_1F5992170;
    v76 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v75);
    v88 = "OSStatus AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(const sender_data_t &, receiver_data_t &, const double &)";
    v89 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/IO_Sender.cpp";
    v90 = 163;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v73);
  }

  v19 = *v13;
  memcpy(*v13, a2, 0x110uLL);
  if (*a2 == 6)
  {
    v21 = *(a2 + 2);
    if (v21 == 1919513701 || v21 == 1919246692 || v21 == 1835628655)
    {
      kdebug_trace();
    }
  }

  v23 = 0;
  if (AMCP::Feature_Flags::access_collect_io_perfdata(0, v20))
  {
    v23 = mach_absolute_time();
  }

  v24 = AMCP::Feature_Flags::access_event_link_oop_io(0, v22);
  v25 = *a4;
  if (v24)
  {
    v26 = caulk::ipc::synchronous_messenger::eventlink_sender::send(*(a1 + 8), v25);
  }

  else
  {
    v26 = caulk::ipc::synchronous_messenger::semaphore_sender::send(*(a1 + 24), v25);
  }

  v28 = v26;
  if (*a2 == 6)
  {
    v29 = *(a2 + 2);
    if (v29 == 1919513701 || v29 == 1919246692 || v29 == 1835628655)
    {
      kdebug_trace();
    }
  }

  if (v28 & 0x100000000) != 0 && (v28)
  {
    goto LABEL_69;
  }

  v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_95;
  }

  v33 = *(v30 + 8);
  v34 = *a2;
  v35 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v35 + 16) = 0;
  *(v35 + 20) = 16;
  *(v35 + 24) = "IO_Sender.cpp";
  *(v35 + 32) = 188;
  *(v35 + 40) = v34;
  *v35 = &unk_1F596A890;
  *(v35 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v33, v35);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v37 = 0;
  while (1)
  {
    v38 = atomic_load((a1 + 65));
    if (v38)
    {
      break;
    }

    v39 = v36 & 0xFFFFFF00;
    if (AMCP::Feature_Flags::access_event_link_oop_io(0, v27))
    {
      v40 = caulk::ipc::synchronous_messenger::eventlink_sender::resynch(*(a1 + 8), 1.0);
      v41 = (v40 & 0x100000000uLL) >> 32;
      v36 = v39 | v40;
      if ((v40 & 0x100000000) == 0)
      {
        v36 = v40;
      }

      v42 = *(a1 + 8);
      if (v42[1] && v42[4])
      {
        v43 = v42[6] == 0;
LABEL_47:
        v45 = !v43;
        if ((v40 & 0x100000000) == 0)
        {
LABEL_74:
          v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v65 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v40);
          }

          v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v66 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            v68 = *v67;
            std::__shared_weak_count::__release_shared[abi:ne200100](v66);
          }

          else
          {
            v68 = *v67;
          }

          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v83 = "IO_Sender.cpp";
            v84 = 1024;
            v85 = 215;
            v86 = 2080;
            v87 = "resynch_result.has_value() != true";
            _os_log_error_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to resynch io sender/receiver after message failed to send", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v81);
          __cxa_allocate_exception(0x40uLL);
          std::runtime_error::runtime_error(&v74, "Failed to resynch io sender/receiver after message failed to send");
          std::runtime_error::runtime_error(&v75, &v74);
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = -1;
          v75.__vftable = &unk_1F5992170;
          v76 = &unk_1F5992198;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v75);
          v88 = "OSStatus AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(const sender_data_t &, receiver_data_t &, const double &)";
          v89 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/IO_Sender.cpp";
          v90 = 215;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v73);
        }

        if (v36)
        {
          goto LABEL_63;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v40 = caulk::ipc::synchronous_messenger::semaphore_sender::resynch(*(a1 + 24), 1.0);
      v41 = (v40 & 0x100000000uLL) >> 32;
      v36 = v39 | v40;
      if ((v40 & 0x100000000) == 0)
      {
        v36 = v40;
      }

      v44 = *(a1 + 24);
      if (*(v44 + 8) && *(v44 + 32) && *(v44 + 48))
      {
        v43 = *(v44 + 56) == 0;
        goto LABEL_47;
      }
    }

    if ((v41 & 1) == 0)
    {
      goto LABEL_74;
    }

    v45 = 0;
    if (v36)
    {
LABEL_63:
      v53 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*v32)
      {
        v49 = *(v53 + 8);
        v50 = caulk::rt_safe_memory_resource::rt_allocate(*v32);
        v51 = v50;
        *(v50 + 8) = 0;
        *(v50 + 16) = 0;
        *(v50 + 20) = 16;
        *(v50 + 24) = "IO_Sender.cpp";
        *(v50 + 32) = 218;
        v52 = &unk_1F596A940;
        goto LABEL_67;
      }

LABEL_95:
      __break(1u);
    }

LABEL_55:
    if (v37++ >= 4)
    {
      v45 = 0;
    }

    if ((v45 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  v47 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v48)
  {
    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*v32)
  {
    goto LABEL_95;
  }

  v49 = *(v47 + 8);
  v50 = caulk::rt_safe_memory_resource::rt_allocate(*v32);
  v51 = v50;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  *(v50 + 20) = 2;
  *(v50 + 24) = "IO_Sender.cpp";
  *(v50 + 32) = 200;
  v52 = &unk_1F596A8E8;
LABEL_67:
  *v50 = v52;
  caulk::concurrent::messenger::enqueue(v49, v51);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

LABEL_69:
  v54 = *(v19 + 17);
  v55 = *(v19 + 19);
  a3[1] = *(v19 + 18);
  a3[2] = v55;
  *a3 = v54;
  v4 = v19[68];
  if (AMCP::Feature_Flags::access_collect_io_perfdata(0, v27))
  {
    if (*a2 == 6)
    {
      v56 = *(v19 + 39);
      v57 = v56 - v23;
      if (v56 > v23)
      {
        v58 = *(a1 + 40);
        v59 = v19[60];
        v60 = (v58 + 16);
        v61 = atomic_load((v58 + 16));
        if (v61 <= 0xFFF)
        {
          v62 = v57 * 0.0000000416666667;
          v63 = atomic_load(v60);
          *(v58 + 8 * v63 + 24) = v62;
          v64 = atomic_load(v60);
          *(v58 + 4 * v64 + 32792) = v59;
          atomic_fetch_add(v60, 1uLL);
        }
      }
    }
  }

LABEL_2:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE3A6B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE3A6118);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_2,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
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
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Successfully resynched io sender/receiver", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_2,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
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
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Connection was invalidated, cannot resynch!", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_0,std::tuple<char const*,int,unsigned long long>>::perform(uint64_t a1)
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
    v8 = *(a1 + 40);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to send io sender message id %llu, need to resynch", &v11, 0x1Cu);
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

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_0,std::tuple<char const*,int,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Portal::IPC::IO_Sender::will_do_io_operation(AMCP::Portal::IPC::IO_Sender *this, AudioServerPlugInIOOperation a2, BOOL *a3, BOOL *a4)
{
  v4 = atomic_load(this + 65);
  if (v4)
  {
    return 1768911973;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = 4;
  v13 = a2;
  *(&v29 + 4) = *(this + 6);
  *(&v8 + 1) = 0;
  v9 = 0;
  v11 = 0;
  v10 = 0;
  result = AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(this, &v12, &v8, &AMCP::Portal::IPC::k_default_timeout);
  *a3 = v11 != 0;
  *a4 = HIBYTE(v11) != 0;
  return result;
}

void sub_1DE3A713C(void *a1)
{
  __cxa_begin_catch(a1);
  *v2 = 0;
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1DE3A7128);
}

uint64_t AMCP::Portal::IPC::IO_Sender::begin_io_operation(AMCP::Portal::IPC::IO_Sender *this, int a2, AMCP::Portal::IPC::IO_Sender *a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v4 = atomic_load(this + 65);
  if (v4)
  {
    return 1768911973;
  }

  v16 = 0;
  v17 = 0;
  v10 = 5;
  v11 = a2;
  AMCP::Portal::IPC::IO_Sender::translate_to_driver_IO_cycle_info(a3, &v12, a3);
  v7 = *(this + 7);
  v14 = *(this + 6);
  v15 = 0;
  v13 = 0;
  v8 = 0.0 / v7;
  return AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(this, &v10, &v9, &v8);
}

void sub_1DE3A71EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3A71DCLL);
}

Float64 AMCP::Portal::IPC::IO_Sender::translate_to_driver_IO_cycle_info(AMCP::Portal::IPC::IO_Sender *this, const AudioServerPlugInIOCycleInfo *a2, AudioServerPlugInIOCycleInfo *a3)
{
  a2->mIOCycleCounter = *this;
  a2->mNominalIOBufferFrameSize = *(this + 2);
  a2->mCurrentTime.mSampleTime = *(this + 2);
  a2->mCurrentTime.mHostTime = *(this + 3);
  a2->mCurrentTime.mRateScalar = *(this + 4);
  a2->mCurrentTime.mWordClockTime = *(this + 5);
  v3 = *(this + 3);
  *&a2->mCurrentTime.mSMPTETime.mHours = *(this + 8);
  *&a2->mCurrentTime.mSMPTETime.mSubframes = v3;
  a2->mCurrentTime.mFlags = *(this + 18);
  a2->mInputTime.mSampleTime = *(this + 10);
  a2->mInputTime.mHostTime = *(this + 11);
  a2->mInputTime.mRateScalar = *(this + 12);
  a2->mInputTime.mWordClockTime = *(this + 13);
  v4 = *(this + 7);
  *&a2->mInputTime.mSMPTETime.mHours = *(this + 16);
  *&a2->mInputTime.mSMPTETime.mSubframes = v4;
  a2->mInputTime.mFlags = *(this + 34);
  a2->mOutputTime.mSampleTime = *(this + 18);
  a2->mOutputTime.mHostTime = *(this + 19);
  a2->mOutputTime.mRateScalar = *(this + 20);
  a2->mOutputTime.mWordClockTime = *(this + 21);
  v5 = *(this + 11);
  *&a2->mOutputTime.mSMPTETime.mHours = *(this + 24);
  *&a2->mOutputTime.mSMPTETime.mSubframes = v5;
  a2->mOutputTime.mFlags = *(this + 50);
  a2->mMainHostTicksPerFrame = *(this + 26) * 24000000.0 / 24000000.0;
  result = *(this + 27) * 24000000.0 / 24000000.0;
  a2->mDeviceHostTicksPerFrame = result;
  return result;
}

uint64_t AMCP::Portal::IPC::IO_Sender::do_io_operation(uint64_t a1, int a2, AudioServerPlugInIOCycleInfo *a3, AMCP::Portal::IPC::IO_Sender *this, unsigned int a5, int a6, int a7, int a8, int a9)
{
  v9 = atomic_load((a1 + 65));
  if (v9)
  {
    return 1768911973;
  }

  v20 = 6;
  v21 = a3;
  AMCP::Portal::IPC::IO_Sender::translate_to_driver_IO_cycle_info(this, &v22, a3);
  v17 = *(a1 + 56);
  v24 = *(a1 + 48);
  v23 = a5;
  v25 = a2;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v18 = a5 / v17;
  return AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(a1, &v20, &v19, &v18);
}

void sub_1DE3A73B4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3A7398);
}

uint64_t AMCP::Portal::IPC::IO_Sender::end_io_operation(AMCP::Portal::IPC::IO_Sender *this, int a2, AMCP::Portal::IPC::IO_Sender *a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v4 = atomic_load(this + 65);
  if (v4)
  {
    return 1768911973;
  }

  v16 = 0;
  v17 = 0;
  v10 = 7;
  v11 = a2;
  AMCP::Portal::IPC::IO_Sender::translate_to_driver_IO_cycle_info(a3, &v12, a3);
  v7 = *(this + 7);
  v14 = *(this + 6);
  v15 = 0;
  v13 = 0;
  v8 = 0.0 / v7;
  return AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(this, &v10, &v9, &v8);
}

void sub_1DE3A745C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3A744CLL);
}

uint64_t *std::unordered_map<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>::insert_or_assign[abi:ne200100]<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  *(v8 + 6) = *a3;
  v11 = v8[4];
  v8[4] = *(a3 + 8);
  *(a3 + 8) = v11;
  v12 = v8[5];
  v8[5] = *(a3 + 16);
  *(a3 + 16) = v12;
  v13 = v8[6];
  v8[6] = *(a3 + 24);
  *(a3 + 24) = v13;
  v14 = v8[8];
  v8[8] = *(a3 + 40);
  *(a3 + 40) = v14;
  v15 = v8[9];
  v8[9] = *(a3 + 48);
  *(a3 + 48) = v15;
  v16 = v8[10];
  v8[10] = *(a3 + 56);
  *(a3 + 56) = v16;
  return v8;
}

void sub_1DE3A7944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::__wrap_iter<unsigned int *>::iterator_type AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique(std::vector<unsigned int> *a1, unsigned int *a2)
{
  v4 = *a2;
  result = AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::find(a1->__begin_, a1->__end_, *a2);
  if (result)
  {
    *v6.__i_ = v4;
  }

  else
  {

    return std::vector<unsigned int>::insert(a1, v6, a2).__i_;
  }

  return result;
}

BOOL AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::find(_DWORD *a1, _DWORD *a2, unsigned int a3)
{
  if (a2 == a1)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
    v4 = a2 - a1;
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[v4 >> 1];
      v8 = *v6;
      v7 = v6 + 1;
      v4 += ~(v4 >> 1);
      if (v8 < a3)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  return v3 != a2 && *v3 == a3;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void *AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::erase(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  result = AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::find(*a1, v4, a2);
  if (result)
  {
    v7 = v6;
    v8 = (v6 + 1);
    while (v8 != v4)
    {
      v9 = *v8;
      v8 += 4;
      if (v9 != a2)
      {
        v10 = v8 - 4;
        goto LABEL_7;
      }
    }

    v10 = v4;
LABEL_7:
    if (v6 != v10)
    {
      v11 = v10 - v6;
      v12 = v6 + v11;
      v13 = v4 - &v7[v11];
      if (v13)
      {
        result = memmove(v7, v12, v13);
      }

      *(a1 + 8) = &v7[v13];
    }
  }

  return result;
}

void AMCP::Core::Broker::gather_directly_owned_objects(std::vector<unsigned int> *a1, std::__shared_mutex_base *this, unsigned int **a3)
{
  std::__shared_mutex_base::lock_shared(this);
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::reserve(a1, *&this[2].__gate1_.__cv_.__opaque[24]);
  v7 = *a3;
  v6 = a3[1];
  while (v7 != v6)
  {
    v8 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this[2].__gate1_.__cv_.__opaque, *v7);
    if (v8)
    {
      AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(a1, v8[4], v8[5]);
    }

    ++v7;
  }

  std::__shared_mutex_base::unlock_shared(this);
}

std::__wrap_iter<unsigned int *>::iterator_type AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(std::__wrap_iter<unsigned int *>::iterator_type result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v4;
      result = AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::find(v5->__begin_, v5->__end_, *v4);
      if (result)
      {
        *v7.__i_ = v6;
      }

      else
      {
        result = std::vector<unsigned int>::insert(v5, v7, v4).__i_;
      }

      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

void AMCP::Core::Broker::fetch_core(AMCP::Core::Broker *this, std::__shared_mutex_base *a2, unsigned int a3)
{
  std::__shared_mutex_base::lock_shared(a2);
  v6 = *a2[1].__mut_.__m_.__opaque;
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a3;
    if (v6 <= a3)
    {
      v8 = a3 % v6;
    }
  }

  else
  {
    v8 = (v6 - 1) & a3;
  }

  v9 = *(a2[1].__mut_.__m_.__sig + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_17:
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == a3)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (*(v10 + 4) != a3)
  {
    goto LABEL_16;
  }

  v12 = v10[4];
  *this = v10[3];
  *(this + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_18:
  std::__shared_mutex_base::unlock_shared(a2);
}

void AMCP::Core::Broker::fetch_cores_if (void *a1, std::__shared_mutex_base *this, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::__shared_mutex_base::lock_shared(this);
  for (i = *&this[1].__mut_.__m_.__opaque[8]; i; i = *i)
  {
    v7 = *(a3 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v7 + 48))(v7, i + 3))
    {
      std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](a1, (i + 3));
    }
  }

  std::__shared_mutex_base::unlock_shared(this);
}

void AMCP::Core::Broker::fetch_object_ids_if (std::vector<unsigned int> *a1, std::__shared_mutex_base *a2, uint64_t a3)
{
  AMCP::Core::Broker::fetch_cores_if (&v6, a2, a3);
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  v5 = v6;
  v4 = v7;
  std::vector<unsigned int>::reserve(a1, (v7 - v6) >> 4);
  while (v5 != v4)
  {
    LODWORD(v8) = **v5;
    std::vector<unsigned int>::push_back[abi:ne200100](a1, &v8);
    v5 += 2;
  }

  v8 = &v6;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void AMCP::Core::Broker::fetch_first_core_if (void *a1, std::__shared_mutex_base *this, uint64_t a3)
{
  std::__shared_mutex_base::lock_shared(this);
  v6 = &this[1].__mut_.__m_.__opaque[8];
  do
  {
    v6 = *v6;
    if (!v6)
    {
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_8;
    }

    v7 = *(a3 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  while (!(*(*v7 + 48))(v7, v6 + 3));
  v8 = *(v6 + 4);
  *a1 = *(v6 + 3);
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_8:
  std::__shared_mutex_base::unlock_shared(this);
}

uint64_t AMCP::Core::Broker::fetch_first_object_id_if (std::__shared_mutex_base *this, uint64_t a2)
{
  AMCP::Core::Broker::fetch_first_core_if (&v4, this, a2);
  if (v4)
  {
    v2 = *v4;
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

void AMCP::Core::Broker::fetch_owned_object_ids_if (void *a1, std::__shared_mutex_base *a2, int a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v12 = a3;
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, &v12, &__p, 1uLL);
  AMCP::Core::Broker::gather_directly_owned_objects(&v16, a2, &__p);
  if (__p)
  {
    operator delete(__p);
  }

  begin = v16.__begin_;
  end = v16.__end_;
  if (v16.__begin_ != v16.__end_)
  {
    v9 = v16.__begin_;
    do
    {
      AMCP::Core::Broker::fetch_core(&__p, a2, *v9);
      if (__p)
      {
        v10 = *(a4 + 24);
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v10 + 48))(v10, &__p))
        {
          v12 = *__p;
          std::vector<unsigned int>::push_back[abi:ne200100](a1, &v12);
        }
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      ++v9;
    }

    while (v9 != end);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE3A80C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Core::Broker::make_snapshot(uint64_t a1, std::__shared_mutex_base *this, unsigned int **a3, char a4)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(&v30, 0, sizeof(v30));
  if (a4)
  {
    AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(&v30, *a3, a3[1]);
    if ((a4 & 2) != 0)
    {
LABEL_10:
      AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique(&v30, &AMCP::k_object_id_system);
    }
  }

  else
  {
    std::__shared_mutex_base::lock_shared(this);
    memset(&v31, 0, sizeof(v31));
    std::vector<unsigned int>::reserve(&v31, *&this[2].__gate1_.__cv_.__opaque[24]);
    AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(&v31, *a3, a3[1]);
    v9 = *a3;
    v8 = a3[1];
    while (v9 != v8)
    {
      v10 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this[2].__gate1_.__cv_.__opaque, *v9);
      if (v10)
      {
        AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(&v31, v10[8], v10[9]);
      }

      ++v9;
    }

    std::__shared_mutex_base::unlock_shared(this);
    v30 = v31;
    if ((a4 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v11 = *&v30.__begin_;
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, (v30.__end_ - v30.__begin_));
  if ((a4 & 4) != 0)
  {
    if (v11 != *(&v11 + 1))
    {
      v14 = v11;
      do
      {
        v29 = *v14;
        AMCP::Core::Broker::fetch_core(&v27, this, v29);
        v15 = v27;
        if (v27)
        {
          caulk::concurrent::shared_spin_lock::lock_shared((v27 + 48));
          *__p = 0u;
          *v25 = 0u;
          v26 = 1065353216;
          std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(__p, *(v15 + 32));
          for (i = *(v15 + 24); i; i = *i)
          {
            v17 = i[4];
            v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v17, v18))
            {
              if ((AMCP::is_invariant_property_selector(*(i + 4)) & 1) == 0)
              {
                v19 = i[4];
                Has_Property = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>();
                if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v19, Has_Property) || AMCP::Core::Operation::call_function<BOOL,AMCP::Core::Has_Property_Function>(i[4]))
                {
                  v21 = i[4];
                  AMCP::Core::Operation::call_function<AMCP::Thing>(&v31, v21);
                  std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::insert_or_assign[abi:ne200100]<AMCP::Thing>(__p, v21 + 10, &v31);
                  if (v32)
                  {
                    v32(0, &v31, 0, 0);
                  }
                }
              }
            }
          }

          caulk::concurrent::shared_spin_lock::unlock_shared((v15 + 48));
          std::unordered_map<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>::insert_or_assign[abi:ne200100]<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>(a1, &v29, __p);
          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v25[0]);
          v22 = __p[0];
          __p[0] = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        ++v14;
      }

      while (v14 != *(&v11 + 1));
    }
  }

  else if (v11 != *(&v11 + 1))
  {
    v12 = v11;
    do
    {
      LODWORD(v27) = *v12;
      AMCP::Core::Broker::fetch_core(__p, this, v27);
      if (__p[0])
      {
        AMCP::Core::Core::make_snapshot(&v31, __p[0]);
        std::unordered_map<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>::insert_or_assign[abi:ne200100]<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>(a1, &v27, &v31);
        std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v31.__end_cap_.__value_);
        begin = v31.__begin_;
        v31.__begin_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }

      ++v12;
    }

    while (v12 != *(&v11 + 1));
  }

  if (v11)
  {
    operator delete(v11);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1DE3A83D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::unordered_map<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>::insert_or_assign[abi:ne200100]<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>(void *a1, unsigned int *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
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

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  if (v9[6])
  {
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v9[5]);
    v9[5] = 0;
    v11 = v9[4];
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        *(v9[3] + 8 * i) = 0;
      }
    }

    v9[6] = 0;
  }

  v13 = *a3;
  *a3 = 0;
  v14 = v9[3];
  v9[3] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v17 = a3[2];
  v16 = a3 + 2;
  v15 = v17;
  v18 = *(v16 - 1);
  v9[5] = v17;
  v9[4] = v18;
  *(v16 - 1) = 0;
  v19 = v16[1];
  v9[6] = v19;
  *(v9 + 14) = *(v16 + 4);
  if (v19)
  {
    v20 = *(v15 + 8);
    v21 = v9[4];
    if ((v21 & (v21 - 1)) != 0)
    {
      if (v20 >= v21)
      {
        v20 %= v21;
      }
    }

    else
    {
      v20 &= v21 - 1;
    }

    *(v9[3] + 8 * v20) = v9 + 5;
    *v16 = 0;
    v16[1] = 0;
  }
}

void sub_1DE3A8724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unsigned int *AMCP::Core::Core::make_snapshot(AMCP::Core::Core *this, uint64_t a2)
{
  caulk::concurrent::shared_spin_lock::lock_shared((a2 + 48));
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(this, *(a2 + 32));
  for (i = *(a2 + 24); i; i = *i)
  {
    v5 = i[4];
    v6 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      v7 = i[4];
      Has_Property = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>();
      if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, Has_Property) || AMCP::Core::Operation::call_function<BOOL,AMCP::Core::Has_Property_Function>(i[4]))
      {
        v9 = i[4];
        AMCP::Core::Operation::call_function<AMCP::Thing>(v11, v9);
        std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::insert_or_assign[abi:ne200100]<AMCP::Thing>(this, (v9 + 40), v11);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }
      }
    }
  }

  return caulk::concurrent::shared_spin_lock::unlock_shared((a2 + 48));
}

AMCP::Thing *std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::insert_or_assign[abi:ne200100]<AMCP::Thing>(void *a1, unsigned int *a2, AMCP *this)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (v11[2] != __PAIR64__(v4, v3) || *(v11 + 6) != v5)
  {
    goto LABEL_18;
  }

  return AMCP::swap(this, (v11 + 4), this);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t AMCP::Core::Broker::reserve_id(AMCP::Core::Broker *this)
{
  std::__shared_mutex_base::lock(this);
  v2 = *(this + 27);
  v3 = *(this + 52);
  *(this + 52) = v3 + 1;
  __x = v3;
  v4.__i_ = *(this + 28);
  if (v4.__i_ != v2)
  {
    v5 = v4.__i_ - v2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v2[v5 >> 1];
      v9 = *v7;
      v8 = v7 + 1;
      v5 += ~(v5 >> 1);
      if (v9 < v3)
      {
        v2 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
    v4.__i_ = v2;
  }

  std::vector<unsigned int>::insert(this + 9, v4, &__x);
  std::__shared_mutex_base::unlock(this);
  return v3;
}

void AMCP::Core::Broker::make_core(void *a1, std::__shared_mutex_base *this, uint64_t a3, unsigned int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  std::__shared_mutex_base::lock(this);
  if (!a4)
  {
    ++*&this[1].__mut_.__m_.__opaque[32];
    goto LABEL_6;
  }

  v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[1].__mut_.__m_.__sig, a4);
  if (!v7)
  {
    v10 = *&this[1].__mut_.__m_.__opaque[40];
    v9 = *&this[1].__mut_.__m_.__opaque[48];
    if (v9 == v10)
    {
      v10 = *&this[1].__mut_.__m_.__opaque[48];
    }

    else
    {
      v11 = (v9 - v10) >> 2;
      do
      {
        v12 = v11 >> 1;
        v13 = &v10[4 * (v11 >> 1)];
        v15 = *v13;
        v14 = (v13 + 1);
        v11 += ~(v11 >> 1);
        if (v15 < a4)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
    }

    if (v9 == v10 && a4 > 0xF)
    {
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_24;
    }

    if (v9 != v10)
    {
      v17 = v9 - (v10 + 4);
      if (v9 != v10 + 4)
      {
        memmove(v10, v10 + 4, v9 - (v10 + 4));
      }

      *&this[1].__mut_.__m_.__opaque[48] = &v10[v17];
    }

LABEL_6:
    operator new();
  }

  v8 = v7[4];
  *a1 = v7[3];
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_24:
  std::__shared_mutex_base::unlock(this);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1DE3A9544(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<AMCP::Core::Core>::__on_zero_shared(uint64_t a1)
{
  caulk::concurrent::shared_spin_lock::~shared_spin_lock((a1 + 72));

  return std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(a1 + 32);
}

void std::__shared_ptr_emplace<AMCP::Core::Core>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596A998;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Core::Broker::destroy_core(std::__shared_mutex_base *this, unsigned int a2)
{
  if (a2)
  {
    std::__shared_mutex_base::lock(this);
    v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[1].__mut_.__m_.__sig, a2);
    if (v4)
    {
      v5 = *this[1].__mut_.__m_.__opaque;
      v6 = v4[1];
      v7 = vcnt_s8(v5);
      v7.i16[0] = vaddlv_u8(v7);
      if (v7.u32[0] > 1uLL)
      {
        if (v6 >= *&v5)
        {
          v6 %= *&v5;
        }
      }

      else
      {
        v6 &= *&v5 - 1;
      }

      sig = this[1].__mut_.__m_.__sig;
      v9 = *(sig + 8 * v6);
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9 != v4);
      if (v10 == &this[1].__mut_.__m_.__opaque[8])
      {
        goto LABEL_20;
      }

      v11 = *(v10 + 1);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_20:
        if (!*v4)
        {
          goto LABEL_21;
        }

        v12 = *(*v4 + 8);
        if (v7.u32[0] > 1uLL)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v6)
        {
LABEL_21:
          *(sig + 8 * v6) = 0;
        }
      }

      v13 = *v4;
      if (*v4)
      {
        v14 = *(v13 + 8);
        if (v7.u32[0] > 1uLL)
        {
          if (v14 >= *&v5)
          {
            v14 %= *&v5;
          }
        }

        else
        {
          v14 &= *&v5 - 1;
        }

        if (v14 != v6)
        {
          *(this[1].__mut_.__m_.__sig + 8 * v14) = v10;
          v13 = *v4;
        }
      }

      *v10 = v13;
      *v4 = 0;
      --*&this[1].__mut_.__m_.__opaque[16];
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v4);
    }

    std::__shared_mutex_base::unlock(this);
    std::__shared_mutex_base::lock(this);
    opaque = this[2].__gate1_.__cv_.__opaque;
    v16 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this[2].__gate1_.__cv_.__opaque, a2);
    if (v16)
    {
      v17 = v16;
      for (i = *(v16 + 6); i; i = *(v20 + 6))
      {
        v19 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this[2].__gate1_.__cv_.__opaque, i);
        if (!v19)
        {
          break;
        }

        v20 = v19;
        AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::erase((v19 + 4), a2);
        AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::erase((v20 + 8), a2);
      }

      v21 = *&this[2].__gate1_.__cv_.__opaque[8];
      v22 = v17[1];
      v23 = vcnt_s8(v21);
      v23.i16[0] = vaddlv_u8(v23);
      if (v23.u32[0] > 1uLL)
      {
        if (v22 >= *&v21)
        {
          v22 %= *&v21;
        }
      }

      else
      {
        v22 &= *&v21 - 1;
      }

      v24 = *(*opaque + 8 * v22);
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24 != v17);
      if (v25 == &this[2].__gate1_.__cv_.__opaque[16])
      {
        goto LABEL_51;
      }

      v26 = *(v25 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v26 >= *&v21)
        {
          v26 %= *&v21;
        }
      }

      else
      {
        v26 &= *&v21 - 1;
      }

      if (v26 != v22)
      {
LABEL_51:
        if (!*v17)
        {
          goto LABEL_52;
        }

        v27 = *(*v17 + 8);
        if (v23.u32[0] > 1uLL)
        {
          if (v27 >= *&v21)
          {
            v27 %= *&v21;
          }
        }

        else
        {
          v27 &= *&v21 - 1;
        }

        if (v27 != v22)
        {
LABEL_52:
          *(*opaque + 8 * v22) = 0;
        }
      }

      v28 = *v17;
      if (*v17)
      {
        v29 = *(v28 + 8);
        if (v23.u32[0] > 1uLL)
        {
          if (v29 >= *&v21)
          {
            v29 %= *&v21;
          }
        }

        else
        {
          v29 &= *&v21 - 1;
        }

        if (v29 != v22)
        {
          *(*opaque + 8 * v29) = v25;
          v28 = *v17;
        }
      }

      *v25 = v28;
      *v17 = 0;
      --*&this[2].__gate1_.__cv_.__opaque[24];
      v30[0] = v17;
      v30[1] = this + 408;
      v31 = 1;
      memset(v32, 0, sizeof(v32));
      std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>>>>::~unique_ptr[abi:ne200100](v30);
    }

    std::__shared_mutex_base::unlock(this);
  }
}

uint64_t std::__function::__func<AMCP::Core::Broker::destroy_all_cores(void)::$_1,std::allocator<AMCP::Core::Broker::destroy_all_cores(void)::$_1>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core6Broker17destroy_all_coresEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Core::Broker::destroy_all_cores(void)::$_0,std::allocator<AMCP::Core::Broker::destroy_all_cores(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core6Broker17destroy_all_coresEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void AMCP::IO_Core::Reflector::~Reflector(AMCP::IO_Core::Reflector *this)
{
  *this = &unk_1F596AAE8;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  AMCP::IO_Core::Node::~Node(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596AAE8;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  AMCP::IO_Core::Node::~Node(this);
}

void *std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1DE3A9EB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1DE3AA118(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core9Reflector18install_node_procsERKN2CA17StreamDescriptionEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

AMCP::Log::AMCP_Scope_Registry *std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::operator()@<X0>(AMCP::Log::AMCP_Scope_Registry *result@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      *buf = 136315650;
      v20 = "Reflector.cpp";
      v21 = 1024;
      v22 = 91;
      v23 = 2080;
      v24 = "not (index == 0)";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Reflector nodes only support one terminal in and one terminal out", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Reflector nodes only support one terminal in and one terminal out", &v10);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "auto AMCP::IO_Core::Reflector::install_node_procs(const CA::StreamDescription &)::(anonymous class)::operator()(Direction, size_t) const";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Reflector.cpp";
    v27 = 91;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v3 = *(result + 2);
  *a3 = *(result + 1);
  a3[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3AA480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596AC10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_1F596AC10;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_1F596AC10;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core9Reflector18install_node_procsERKN2CA17StreamDescriptionEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596AB90;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596AB90;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596AB90;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::DAL::Multi_Reader_Synchronized_Mixer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596AB40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_emplace<AMCP::DAL::Synchronizer>::__on_zero_shared(uint64_t a1)
{
  v6 = (a1 + 168);
  std::vector<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::~__hash_table(a1 + 32);
}

void std::__shared_ptr_emplace<AMCP::DAL::Synchronizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5978838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<int (*)(unsigned long long),std::allocator<int (*)(unsigned long long)>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001DE767634))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<int (*)(unsigned long long),std::allocator<int (*)(unsigned long long)>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596ACA8;
  a2[1] = v2;
  return result;
}

void AMCP::Graph::Manifest_Queue::flush(AMCP::Graph::Manifest_Queue *this)
{
  v53 = *MEMORY[0x1E69E9840];
  std::condition_variable::notify_all((this + 264));
  v2 = *(this + 70);
  if (v2)
  {
    AMCP::Graph::Manifest::end_processing(v2, *this, (this + 312));
    AMCP::Graph::Manifest::teardown_processing(*(this + 70));
    v3 = *(this + 71);
    *(this + 35) = 0u;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  std::mutex::lock((this + 112));
  *(this + 176) = 1;
  std::mutex::unlock((this + 112));
  AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue_with_lock(v36, this + 16);
  if (v52 == 1)
  {
    do
    {
      if (v36[0])
      {
        AMCP::Graph::Manifest::end_processing(v36[0], *this, &v42);
        AMCP::Graph::Manifest::teardown_processing(v36[0]);
      }

      AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue_with_lock(&v17, this + 16);
      if (v52 == v35)
      {
        if (v52)
        {
          v5 = v17;
          v17 = 0uLL;
          v6 = v36[1];
          *v36 = v5;
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v37 = v18;
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          __p = *v19;
          v39 = v20;
          v19[1] = 0;
          v20 = 0;
          v19[0] = 0;
          v40 = v21;
          v41 = v22;
          v42 = v23;
          v43 = v24;
          v7 = v25;
          v25 = 0uLL;
          v8 = *(&v44 + 1);
          v44 = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          v45 = v26;
          v9 = v47;
          v47 = v28;
          v28 = v9;
          caulk::mach::details::release_os_object(0, v4);
          v10 = *&v49[16];
          v12 = v48;
          v11 = *v49;
          v48 = v29;
          *v49 = v30;
          *&v49[16] = v31;
          v29 = v12;
          v30 = v11;
          v31 = v10;
          LOBYTE(v10) = v49[24];
          v49[24] = v32;
          v32 = v10;
          LOBYTE(v10) = v50;
          v50 = v33;
          v33 = v10;
          v51 = v34;
        }
      }

      else if (v52)
      {
        caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v46);
        if (*(&v44 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (v36[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36[1]);
        }

        v52 = 0;
      }

      else
      {
        *v36 = v17;
        v17 = 0uLL;
        __p = *v19;
        v37 = v18;
        v39 = v20;
        v19[1] = 0;
        v20 = 0;
        v19[0] = 0;
        v40 = v21;
        v41 = v22;
        v43 = v24;
        v42 = v23;
        v44 = v25;
        v25 = 0uLL;
        v45 = v26;
        v48 = 0u;
        memset(v49, 0, sizeof(v49));
        v50 = 0;
        v46 = MEMORY[0x1E69E3C20] + 16;
        v47 = v28;
        v28 = 0;
        caulk::mach::details::release_os_object(0, v4);
        v13 = *&v49[16];
        v15 = v48;
        v14 = *v49;
        v48 = v29;
        *v49 = v30;
        *&v49[16] = v31;
        v29 = v15;
        v30 = v14;
        v31 = v13;
        LOBYTE(v13) = v49[24];
        v49[24] = v32;
        v32 = v13;
        LOBYTE(v13) = v50;
        v50 = v33;
        v33 = v13;
        v51 = v34;
        v52 = 1;
      }

      if (v35 == 1)
      {
        caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v27);
        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
        }

        if (v19[0])
        {
          v19[1] = v19[0];
          operator delete(v19[0]);
        }

        if (*(&v17 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
        }
      }
    }

    while ((v52 & 1) != 0);
  }

  std::mutex::lock((this + 112));
  *(this + 176) = 0;
  std::mutex::unlock((this + 112));
  std::condition_variable::notify_all((this + 264));
  if (v52 == 1)
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v46);
    if (*(&v44 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v36[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36[1]);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t caulk::concurrent::stack<AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::Message,caulk::concurrent::intrusive_single_link_member<AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::Message,&AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::Message::m_next_free_message>>::pop()
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if (result)
  {
    v7 = result;
    do
    {
      _X6 = atomic_load((result + 200));
      _X5 = 0;
      __asm { CASPAL          X4, X5, X6, X7, [X8] }

      if (_X4 == v7)
      {
        break;
      }

      result = _X4;
      v7 = _X4;
    }

    while (_X4);
  }

  return result;
}

void AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue_with_lock(unint64_t a1, uint64_t a2)
{
  std::mutex::lock((a2 + 96));
  AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue(a1, a2);

  std::mutex::unlock((a2 + 96));
}

uint64_t std::optional<AMCP::Graph::Manifest_Queue::Incoming_Payload>::~optional(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 128));
    v2 = *(a1 + 112);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return a1;
}

__n128 caulk::mach::os_workgroup_interval_managed::swap(__n128 *this, __n128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = this->n128_u64[1];
  this->n128_u64[1] = 0;
  this->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[1] = v4;
  caulk::mach::details::release_os_object(0, a2);
  result = this[1];
  v6 = this[2];
  v7 = this[3].n128_u64[0];
  v8 = a2[3].n128_u64[0];
  v9 = a2[2];
  this[1] = a2[1];
  this[2] = v9;
  this[3].n128_u64[0] = v8;
  a2[3].n128_u64[0] = v7;
  a2[1] = result;
  a2[2] = v6;
  LOBYTE(v7) = this[3].n128_u8[8];
  this[3].n128_u8[8] = a2[3].n128_u8[8];
  a2[3].n128_u8[8] = v7;
  LOBYTE(v7) = this[3].n128_u8[9];
  this[3].n128_u8[9] = a2[3].n128_u8[9];
  a2[3].n128_u8[9] = v7;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue(unint64_t result, atomic_ullong *a2)
{
  v2 = result;
  v42 = *MEMORY[0x1E69E9840];
  _X22 = a2[8];
  if (!_X22)
  {
    v4 = atomic_exchange_explicit(a2, 0, memory_order_acquire);
    if (!v4)
    {
      *result = 0;
      *(result + 200) = 0;
      goto LABEL_22;
    }

    _X22 = 0;
    do
    {
      v5 = _X22;
      _X22 = v4;
      v6 = (v4 + 200);
      v4 = atomic_load((v4 + 200));
      atomic_store(v5, v6);
    }

    while (v4);
    a2[8] = _X22;
  }

  v7 = atomic_load((_X22 + 200));
  a2[8] = v7;
  v8 = *(_X22 + 8);
  *result = *_X22;
  *(result + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(_X22 + 16);
  *(result + 24) = 0;
  *(result + 16) = v9;
  *(result + 32) = 0;
  *(result + 40) = 0;
  std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(result + 24, *(_X22 + 24), *(_X22 + 32), (*(_X22 + 32) - *(_X22 + 24)) >> 2);
  v11 = *(_X22 + 64);
  *(v2 + 48) = *(_X22 + 48);
  *(v2 + 64) = v11;
  v12 = *(_X22 + 80);
  *(v2 + 96) = *(_X22 + 96);
  *(v2 + 80) = v12;
  v13 = *(_X22 + 112);
  *(v2 + 104) = *(_X22 + 104);
  *(v2 + 112) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(v2 + 120) = *(_X22 + 120);
  *(v2 + 128) = MEMORY[0x1E69E3C18] + 16;
  *(v2 + 136) = caulk::mach::details::retain_os_object(*(_X22 + 136), v10);
  v15 = *(_X22 + 169);
  v16 = *(_X22 + 160);
  *(v2 + 144) = *(_X22 + 144);
  *(v2 + 160) = v16;
  *(v2 + 169) = v15;
  *(v2 + 128) = MEMORY[0x1E69E3C20] + 16;
  *(v2 + 185) = *(_X22 + 185);
  *(v2 + 192) = *(_X22 + 192);
  *(v2 + 200) = 1;
  v41 = 0;
  memset(&__p[10], 0, 24);
  memset(__p, 0, 24);
  memset(v40 + 8, 0, 56);
  *&v40[0] = MEMORY[0x1E69E3C20] + 16;
  v17 = *(_X22 + 8);
  *_X22 = 0;
  *(_X22 + 8) = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    v18 = __p[0];
  }

  else
  {
    v18 = 0;
  }

  *(_X22 + 16) = v18;
  v19 = *(_X22 + 24);
  if (v19)
  {
    *(_X22 + 32) = v19;
    operator delete(v19);
    *(_X22 + 24) = 0;
    *(_X22 + 32) = 0;
    *(_X22 + 40) = 0;
  }

  *(_X22 + 24) = *&__p[1];
  *(_X22 + 40) = 0;
  *(_X22 + 48) = 0u;
  *(_X22 + 64) = 0u;
  *(_X22 + 80) = 0u;
  *(_X22 + 96) = __p[10];
  v20 = *(_X22 + 112);
  *(_X22 + 104) = *&__p[11];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  *(_X22 + 120) = 1065353216;
  v21 = *(_X22 + 136);
  *(_X22 + 136) = *(&v40[0] + 1);
  *(&v40[0] + 1) = v21;
  caulk::mach::details::release_os_object(0, v14);
  v22 = *(_X22 + 144);
  v23 = *(_X22 + 160);
  v24 = *(_X22 + 176);
  v25 = *&v40[3];
  v26 = v40[2];
  *(_X22 + 144) = v40[1];
  *(_X22 + 160) = v26;
  *(_X22 + 176) = v25;
  *&v40[3] = v24;
  v40[2] = v23;
  v40[1] = v22;
  LOBYTE(v24) = *(_X22 + 184);
  *(_X22 + 184) = BYTE8(v40[3]);
  BYTE8(v40[3]) = v24;
  LOBYTE(v24) = *(_X22 + 185);
  *(_X22 + 185) = BYTE9(v40[3]);
  BYTE9(v40[3]) = v24;
  *(_X22 + 192) = v41;
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v40);
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  atomic_store(_X2, (_X22 + 200));
  _X4 = _X22;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X4, X5, [X8] }

  if (result != _X2)
  {
    do
    {
      atomic_store(result, (_X22 + 200));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X22, X23, [X8] }

      _ZF = _X2 == result;
      result = _X2;
    }

    while (!_ZF);
  }

LABEL_22:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3AB518(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(AMCP::Graph::Manifest_Queue *this)
{
  v2 = (this + 312);
  v192 = *MEMORY[0x1E69E9840];
  v129 = (this + 200);
  v130 = (this + 376);
  v131 = (this + 264);
  v128 = (this + 312);
  do
  {
    AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue(&v172, this + 2);
    if (v190 != 1)
    {
      break;
    }

    v161 = *v2;
    v5 = *(this + 42);
    v4 = *(this + 43);
    v162 = *(v2 + 2);
    v163 = v5;
    v164 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v165 = *(this + 88);
    v166 = MEMORY[0x1E69E3C18] + 16;
    v167 = caulk::mach::details::retain_os_object(*(this + 46), v3);
    v7 = v130[1];
    v168 = *v130;
    *v169 = v7;
    *&v169[9] = *(v130 + 25);
    v166 = MEMORY[0x1E69E3C20] + 16;
    v170 = *(this + 417);
    v171 = *(this + 212);
    v8 = *(this + 42);
    v9 = *(this + 43);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v8)
    {
      v22 = 1;
      if (v9)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v10 = *(this + 42);
    v11 = *(this + 43);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v181;
    v13 = v182;
    if (v182)
    {
      atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10 && v12)
    {
      v14 = (*(*v10 + 16))(v10);
      v15 = (*(*v12 + 16))(v12);
      v16 = *(v14 + 23);
      if (v16 >= 0)
      {
        v17 = *(v14 + 23);
      }

      else
      {
        v17 = *(v14 + 8);
      }

      v18 = *(v15 + 23);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v15 + 8);
      }

      if (v17 != v18)
      {
        v22 = 1;
        v2 = v128;
        if (v13)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      if (v16 >= 0)
      {
        v20 = v14;
      }

      else
      {
        v20 = *v14;
      }

      if (v19 >= 0)
      {
        v21 = v15;
      }

      else
      {
        v21 = *v15;
      }

      v2 = v128;
      if (memcmp(v20, v21, v17))
      {
LABEL_27:
        v22 = 1;
        if (!v13)
        {
          goto LABEL_29;
        }

LABEL_28:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        goto LABEL_29;
      }
    }

    else if (v10 | v12)
    {
      goto LABEL_27;
    }

    if (*(this + 88) == v183 && *(this + 46) == v185 && *(this + 416) == v187[24] && *(this + 417) == v188)
    {
      v26 = AMCP::DAL::DAL_Time_Delta::operator==(v2, &v179);
      v2 = v128;
    }

    else
    {
      v26 = 0;
    }

    v22 = !v26;
    if (v13)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v9)
    {
LABEL_32:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

LABEL_33:
    if (!v22)
    {
      goto LABEL_65;
    }

    v24 = *(this + 42);
    v23 = *(this + 43);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v24)
      {
        v25 = v172;
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        if (!v25)
        {
          goto LABEL_51;
        }
      }

      else
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }

    else if (v24 && !v172)
    {
LABEL_51:
      *&v191.st_dev = v179;
      *&v191.st_uid = v180;
      *&v191.st_rdev = v181;
      v191.st_atimespec.tv_sec = v182;
      if (v182)
      {
        atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *&v191.st_atimespec.tv_nsec = v183;
      v191.st_mtimespec.tv_sec = MEMORY[0x1E69E3C18] + 16;
      v191.st_mtimespec.tv_nsec = caulk::mach::details::retain_os_object(v185, v6);
      v191.st_ctimespec = v186;
      v191.st_birthtimespec = *v187;
      *(&v191.st_birthtimespec.tv_nsec + 1) = *&v187[9];
      v191.st_mtimespec.tv_sec = MEMORY[0x1E69E3C20] + 16;
      BYTE1(v191.st_blocks) = v188;
      LOWORD(v191.st_blksize) = v189;
      LOBYTE(v191.st_gen) = 1;
      std::__optional_storage_base<AMCP::Graph::Manifest_Execution_Context,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AMCP::Graph::Manifest_Execution_Context,false>>(this + 432, &v191.st_dev);
      if (LOBYTE(v191.st_gen) == 1)
      {
        caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v191.st_mtimespec);
        tv_sec = v191.st_atimespec.tv_sec;
        if (v191.st_atimespec.tv_sec)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_65;
    }

    updated = AMCP::Graph::Manifest_Queue::update_execution_context(this, &v179);
    if (round(updated) != 0.0)
    {
      v29 = *(this + 70);
      v30 = *(v29 + 72);
      v31 = *(v29 + 80);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::Graph::Manifest_Counter::adjust_cycle_anchor_for_buffer_size_change(*(v30 + 64), 0.0 - updated);
      if (v31)
      {
        tv_sec = v31;
LABEL_64:
        std::__shared_weak_count::__release_shared[abi:ne200100](tv_sec);
      }
    }

LABEL_65:
    v32 = v172;
    if (v172)
    {
      if (!*(this + 70))
      {
        v37 = *(&v172 + 1);
        if (*(&v172 + 1))
        {
          atomic_fetch_add_explicit((*(&v172 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        *(this + 70) = v32;
        v38 = *(this + 71);
        *(this + 71) = v37;
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          v32 = *(this + 70);
        }

        AMCP::Graph::Manifest::get_iocontext_uid(&__str, v32);
        std::string::basic_string(&v191, &__str, 0, 0x3FuLL, &__p);
        if ((v191.st_gid & 0x80000000) == 0)
        {
          v39 = &v191;
        }

        else
        {
          v39 = *&v191.st_dev;
        }

        v40 = pthread_setname_np(v39);
        v41 = v40;
        if (SHIBYTE(v191.st_gid) < 0)
        {
          operator delete(*&v191.st_dev);
        }

        if (!v41)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          AMCP::Graph::Manifest::setup_processing(*(this + 70), v2, v173);
        }

        v119 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v119 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v40);
        }

        v121 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v120 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v120)
        {
          atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
          v122 = *v121;
          std::__shared_weak_count::__release_shared[abi:ne200100](v120);
        }

        else
        {
          v122 = *v121;
        }

        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          v191.st_dev = 136315906;
          *&v191.st_mode = "Manifest_Queue.cpp";
          WORD2(v191.st_ino) = 1024;
          *(&v191.st_ino + 6) = 261;
          HIWORD(v191.st_uid) = 2080;
          *&v191.st_gid = "not (error == 0)";
          *(&v191.st_rdev + 2) = 1024;
          *(&v191.st_rdev + 6) = v41;
          _os_log_error_impl(&dword_1DE1F9000, v122, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s pthread_setname_np failed: %d", &v191, 0x22u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v134);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("pthread_setname_np failed: %d", &v137, v41);
        std::logic_error::logic_error(&v133, &v137);
        v133.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&__p, &v133);
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = -1;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v191, &__p);
        v191.st_atimespec.tv_sec = "void AMCP::Graph::set_thread_name_from_manifest_name(const std::string &)";
        v191.st_atimespec.tv_nsec = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
        LODWORD(v191.st_mtimespec.tv_sec) = 261;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v135);
      }

      v34 = *(v172 + 96);
      v33 = *(v172 + 104);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        if (v34)
        {
          v32 = v172;
          v34 = *(v172 + 96);
          v35 = *(v172 + 104);
          if (v35)
          {
            v36 = 0;
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            goto LABEL_87;
          }

LABEL_86:
          v36 = 1;
LABEL_87:
          AMCP::Graph::Manifest::get_iocontext_uid(&v191, v32);
          if ((v191.st_gid & 0x80000000) == 0)
          {
            v47 = &v191;
          }

          else
          {
            LOBYTE(v47) = v191.st_dev;
          }

          v127 = *(this + 70);
          AMCP::Graph::Manifest_Log::add_message(v34, 5, "Manifest: %s from %p to %p", v42, v43, v44, v45, v46, v47);
          if (SHIBYTE(v191.st_gid) < 0)
          {
            operator delete(*&v191.st_dev);
            if ((v36 & 1) == 0)
            {
LABEL_92:
              std::__shared_weak_count::__release_shared[abi:ne200100](v35);
            }
          }

          else if ((v36 & 1) == 0)
          {
            goto LABEL_92;
          }
        }
      }

      else if (v34)
      {
        v35 = 0;
        goto LABEL_86;
      }

      v48 = v172;
      v49 = *(this + 35);
      *(this + 35) = v172;
      v172 = v49;
      v50 = *(v48 + 72);
      v51 = *(v48 + 80);
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = *(v50 + 64);
      v54 = *(v49 + 72);
      v53 = *(v49 + 80);
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v55 = *(v54 + 64);
      *(v52 + 8) = *(v55 + 8);
      *(v52 + 16) = *(v55 + 16);
      *(v52 + 40) = *(v55 + 40);
      *v52 = *v55;
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      v56 = *(this + 24);
      v57 = *this;
      v138 = v161;
      v139 = v162;
      v140 = v163;
      v141 = v164;
      if (v164)
      {
        atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v142 = v165;
      v143 = MEMORY[0x1E69E3C18] + 16;
      v58 = caulk::mach::details::retain_os_object(v167, v32);
      v145 = v168;
      *v146 = *v169;
      *&v146[9] = *&v169[9];
      v143 = MEMORY[0x1E69E3C20] + 16;
      v144 = v58;
      v147 = v170;
      v148 = v171;
      LODWORD(__p.__r_.__value_.__l.__data_) = v57;
      *&__p.__r_.__value_.__r.__words[1] = v138;
      v150 = v139;
      v151 = v140;
      v152 = v141;
      if (v141)
      {
        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
        v58 = v144;
      }

      v153 = v142;
      v154 = MEMORY[0x1E69E3C18] + 16;
      v60 = caulk::mach::details::retain_os_object(v58, v59);
      v156 = v145;
      *v157 = *v146;
      *&v157[9] = *&v146[9];
      v154 = MEMORY[0x1E69E3C20] + 16;
      v155 = v60;
      v158 = v147;
      v159 = v148;
      v160 = v172;
      if (*(&v172 + 1))
      {
        atomic_fetch_add_explicit((*(&v172 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
      }

      v61 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v61 + 16) = 0;
      *v61 = &unk_1F596AE20;
      *(v61 + 8) = 0;
      *(v61 + 24) = v129;
      *(v61 + 32) = v131;
      AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::Manifest_Disposal_Payload(&v191, &__p);
      AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::Manifest_Disposal_Payload(v61 + 40, &v191);
      AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload(&v191);
      *v61 = &unk_1F596ADC8;
      caulk::concurrent::messenger::enqueue(v56, v61);
      AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload(&__p);
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v143);
      if (v141)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
      }

      v62 = *(this + 70);
      v63 = *(v62 + 72);
      v64 = *(v62 + 80);
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v65 = *(v63 + 96);
      v66 = *(v63 + 104);
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v65 + 32))(&v191);
      v67 = *&v191.st_uid;
      *(this + 40) = *&v191.st_dev;
      *(this + 41) = v67;
      st_mtimespec = v191.st_mtimespec;
      *(this + 42) = v191.st_atimespec;
      *(this + 43) = st_mtimespec;
      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
      }

      v69 = *(this + 79);
      if (v69)
      {
        v69 = (*(*v69 + 48))(v69);
      }

      v70 = *(this + 70);
      v71 = *this;
      AMCP::Graph::File_Capture_Settings::instance(v69);
      if (byte_1ECDAB0CC == 1)
      {
        get_temporary_folder(&v191);
        v73 = std::string::append(&v191, "Graphs/", 7uLL);
        v74 = *&v73->__r_.__value_.__l.__data_;
        v137.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
        *&v137.__r_.__value_.__l.__data_ = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v191.st_gid) < 0)
        {
          operator delete(*&v191.st_dev);
        }

        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = &v137;
        }

        else
        {
          v75 = v137.__r_.__value_.__r.__words[0];
        }

        if (stat(v75, &v191) == -1)
        {
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = &v137;
          }

          else
          {
            v76 = v137.__r_.__value_.__r.__words[0];
          }

          mkdir(v76, 0x1FDu);
        }

        AMCP::Graph::Manifest::get_iocontext_uid(&v191, v70);
        if ((v191.st_gid & 0x80000000) == 0)
        {
          v77 = &v191;
        }

        else
        {
          v77 = *&v191.st_dev;
        }

        if ((v191.st_gid & 0x80000000) == 0)
        {
          st_gid_high = HIBYTE(v191.st_gid);
        }

        else
        {
          st_gid_high = v191.st_ino;
        }

        v79 = std::string::append(&v137, v77, st_gid_high);
        v80 = *&v79->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        v81 = std::string::append(&v136, "-Manifest-XXXXXX.dot", 0x14uLL);
        v82 = *&v81->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v82;
        v81->__r_.__value_.__l.__size_ = 0;
        v81->__r_.__value_.__r.__words[2] = 0;
        v81->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v191.st_gid) < 0)
        {
          operator delete(*&v191.st_dev);
        }

        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v84 = mkstemps(p_p, 4);
        if (v84 != -1)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v136, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v136 = __p;
          }

          AMCP::Graph::Manifest::write_to_dot_file(v70, &v136);
        }

        v85 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v85 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v84);
        }

        v87 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v86 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
          v88 = *v87;
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }

        else
        {
          v88 = *v87;
        }

        v72 = os_log_type_enabled(v88, OS_LOG_TYPE_ERROR);
        if (v72)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v89 = &__p;
          }

          else
          {
            v89 = __p.__r_.__value_.__r.__words[0];
          }

          v90 = __error();
          v91 = strerror(*v90);
          v191.st_dev = 136315906;
          *&v191.st_mode = "Manifest.cpp";
          WORD2(v191.st_ino) = 1024;
          *(&v191.st_ino + 6) = 972;
          HIWORD(v191.st_uid) = 2080;
          *&v191.st_gid = v89;
          *(&v191.st_rdev + 2) = 2080;
          *(&v191.st_rdev + 6) = v91;
          _os_log_error_impl(&dword_1DE1F9000, v88, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to make a manifest file for template %s - %s", &v191, 0x26u);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v92 = *(v70 + 96);
      if (v92)
      {
        AMCP::Graph::Manifest::get_iocontext_uid(&v191, v70);
        if ((v191.st_gid & 0x80000000) == 0)
        {
          v98 = &v191;
        }

        else
        {
          LOBYTE(v98) = v191.st_dev;
        }

        AMCP::Graph::Manifest_Log::add_message(v92, 0, "Manifest: %s Begin Processing  %p", v93, v94, v95, v96, v97, v98);
        if (SHIBYTE(v191.st_gid) < 0)
        {
          operator delete(*&v191.st_dev);
        }
      }

      if (*v70 != 1)
      {
        v123 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v123 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v72);
        }

        v125 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v124 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v124)
        {
          atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          v126 = *v125;
          std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        }

        else
        {
          v126 = *v125;
        }

        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          v191.st_dev = 136315650;
          *&v191.st_mode = "Manifest.cpp";
          WORD2(v191.st_ino) = 1024;
          *(&v191.st_ino + 6) = 555;
          HIWORD(v191.st_uid) = 2080;
          *&v191.st_gid = "not (m_processing_state == Processing_State::Configured)";
          _os_log_error_impl(&dword_1DE1F9000, v126, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", &v191, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v133);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v137);
        std::logic_error::logic_error(&__str, &v137);
        __str.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&__p, &__str);
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = -1;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v191, &__p);
        v191.st_atimespec.tv_sec = "void AMCP::Graph::Manifest::begin_processing(Object_ID, const Manifest_Execution_Context &, const Manifest_Start_State &)";
        v191.st_atimespec.tv_nsec = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
        LODWORD(v191.st_mtimespec.tv_sec) = 555;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v135);
      }

      v99 = *(*(v70 + 72) + 24);
      if (v173[1] == 2)
      {
        AMCP::Graph::Manifest_Inventory::begin_processing(v99, v71);
        AMCP::Graph::Manifest::calculate_anchor_time(&v191, v70, v2, v176, v177, v178);
        AMCP::Graph::Manifest_Inventory::anchor_time(*(v70 + 72), v71, v2, &v191);
        AMCP::Graph::Manifest::calculate_all_required_input_samples(v70, v2);
        v100 = *(v70 + 8);
        v101 = *(v70 + 16);
        while (v100 != v101)
        {
          v102 = *v100;
          v104 = **v100;
          v103 = (*v100)[1];
          while (v104 != v103)
          {
            v106 = *v104;
            v105 = v104[1];
            while (v106 != v105)
            {
              AMCP::Graph::Manifest_Inventory::cross_check_buffer(*(v70 + 72), *v106);
              v106 += 2;
            }

            v104 += 5;
          }

          v108 = v102[3];
          v107 = v102[4];
          while (v108 != v107)
          {
            v110 = *v108;
            v109 = v108[1];
            while (v110 != v109)
            {
              AMCP::Graph::Manifest_Inventory::cross_check_buffer(*(v70 + 72), *v110);
              v110 += 2;
            }

            v108 += 5;
          }

          v111 = *v100;
          *(v111 + 22) = 3;
          v112 = v111[6][23];
          if (v112)
          {
            std::function<void ()>::operator()(v112, v71);
          }

          v100 += 2;
        }

        *v70 = 3;
        if (v191.st_atimespec.tv_sec)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v191.st_atimespec.tv_sec);
        }

        v2 = v128;
      }

      else
      {
        AMCP::Graph::Manifest_Inventory::begin_processing(v99, v71);
        AMCP::Graph::Manifest::calculate_anchor_time(&v191, v70, v2, v176, v177, v178);
        v113 = *(v70 + 72);
        if (*(v113 + 32))
        {
          std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__deallocate_node(*(v113 + 24));
          *(v113 + 24) = 0;
          v114 = *(v113 + 16);
          if (v114)
          {
            for (i = 0; i != v114; ++i)
            {
              *(*(v113 + 8) + 8 * i) = 0;
            }
          }

          *(v113 + 32) = 0;
        }

        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((v113 + 112));
        AMCP::Graph::Manifest_Inventory::anchor_time(*(v70 + 72), v71, v2, &v191);
        *v70 = 2;
        if (v191.st_atimespec.tv_sec)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v191.st_atimespec.tv_sec);
        }
      }

      if (v172 && **(this + 70) == 2 && *v172 == 3)
      {
        AMCP::Graph::finish_manifest(&v172, *this, &v161);
      }

      std::mutex::lock(v129);
      std::condition_variable::notify_all(v131);
      v116 = *(&v172 + 1);
      v172 = 0uLL;
      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }

      std::mutex::unlock(v129);
    }

    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v166);
    if (v164)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v164);
    }

    if (v190)
    {
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v184);
      if (v182)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v182);
      }

      if (v174)
      {
        v175 = v174;
        operator delete(v174);
      }

      if (*(&v172 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v172 + 1));
      }
    }
  }

  while (!*(this + 70));
  v117 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE3AC8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  AMCP::Graph::Manifest_Execution_Context::~Manifest_Execution_Context(&STACK[0x210]);
  std::optional<AMCP::Graph::Manifest_Queue::Incoming_Payload>::~optional(&STACK[0x290]);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(AMCP::Graph::Manifest_Queue *this)
{
  v1 = *(this + 70);
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(v14, *(v3 + 64));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AMCP::Graph::Manifest::get_master_timebase(&v7, *(*(this + 70) + 72), *(*(this + 70) + 80));
  v8 = 2;
  v9 = 0x3FF0000000000000;
  v10 = 0;
  v11 = v7;
  boost::operators_impl::operator-(v12, v14, &v8);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  host_time = AMCP::DAL::DAL_Time::get_host_time(v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return host_time;
}

void sub_1DE3ACC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v23 = *(v21 - 24);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3ACC6C()
{
  if (!v0)
  {
    JUMPOUT(0x1DE3ACC64);
  }

  JUMPOUT(0x1DE3ACC60);
}

uint64_t AMCP::Graph::Manifest_Queue::wait_for_next_cycle(AMCP::Graph::Manifest_Queue *this)
{
  result = AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(this);
  if (result)
  {
    v4 = result;
    v3 = *(this + 75);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v3 + 48))(v3, &v4);
  }

  return result;
}

double AMCP::Graph::Manifest_Queue::update_execution_context(AMCP::Graph::Manifest_Queue *this, const AMCP::Graph::Manifest_Execution_Context *a2)
{
  if (*(this + 46))
  {
    caulk::mach::os_workgroup_interval_managed::finish((this + 360));
    if (*(this + 46))
    {
      caulk::mach::os_workgroup_managed::leave((this + 360));
    }
  }

  v4 = 0.0;
  if (*(this + 70))
  {
    v5 = *(a2 + 4);
    v20[0] = *(a2 + 3);
    v20[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::DAL_Time_Delta::translate_time_delta(v21, (this + 312), v20);
    v6 = AMCP::DAL::DAL_Time_Delta::operator==(v21, a2);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (!v6)
    {
      v7 = *(this + 70);
      v9 = *(v7 + 72);
      v8 = *(v7 + 80);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(this + 312) & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate((this + 312));
      }

      v10 = *(this + 40);
      if ((*a2 & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(a2);
      }

      v11 = *(a2 + 1);
      AMCP::Graph::Manifest_Inventory::set_nominal_buffer_size(*(v9 + 24), *this, a2);
      cycle_size_in_host_ticks = AMCP::Graph::Manifest_Queue::get_cycle_size_in_host_ticks(this);
      v13 = pthread_self();
      AMCP::Utility::configure_thread_for_realtime(v13, cycle_size_in_host_ticks, 0);
      v4 = v10 - v11;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  *(this + 78) = *a2;
  *(this + 40) = *(a2 + 1);
  v14 = *(a2 + 3);
  *(this + 41) = *(a2 + 2);
  v15 = *(a2 + 4);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(this + 43);
  *(this + 42) = v14;
  *(this + 43) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  *(this + 88) = *(a2 + 10);
  if ((this + 312) != a2)
  {
    caulk::mach::details::holder::operator=(this + 46, a2 + 7);
    v17 = *(a2 + 4);
    v18 = *(a2 + 5);
    *(this + 401) = *(a2 + 89);
    *(this + 376) = v17;
    *(this + 392) = v18;
    *(this + 417) = *(a2 + 105);
  }

  *(this + 212) = *(a2 + 56);
  AMCP::Graph::Manifest_Queue::join_workgroup_interval(this);
  AMCP::Graph::Manifest_Queue::start_workgroup_interval(this);
  return v4;
}

void sub_1DE3ACEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<AMCP::Graph::Manifest_Execution_Context,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AMCP::Graph::Manifest_Execution_Context,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 120) == *(a2 + 120))
  {
    if (*(a1 + 120))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      v5 = *(a2 + 24);
      *(a2 + 3) = 0;
      *(a2 + 4) = 0;
      v6 = *(a1 + 32);
      *(a1 + 24) = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      *(a1 + 40) = *(a2 + 10);
      caulk::mach::os_workgroup_interval_managed::swap((a1 + 48), a2 + 3);
      *(a1 + 112) = *(a2 + 56);
    }
  }

  else if (*(a1 + 120))
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 48));
    v7 = *(a1 + 32);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    *(a1 + 120) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a1 + 40) = *(a2 + 10);
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0;
    *(a1 + 48) = MEMORY[0x1E69E3C20] + 16;
    caulk::mach::os_workgroup_interval_managed::swap((a1 + 48), a2 + 3);
    *(a1 + 112) = *(a2 + 56);
    *(a1 + 120) = 1;
  }
}

uint64_t AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::Manifest_Disposal_Payload(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = MEMORY[0x1E69E3C18] + 16;
  *(a1 + 64) = caulk::mach::details::retain_os_object(*(a2 + 64), a2);
  v6 = *(a2 + 72);
  v7 = *(a2 + 97);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 97) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = MEMORY[0x1E69E3C20] + 16;
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  v8 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload(AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((this + 56));
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void AMCP::Graph::finish_manifest(uint64_t ***a1, int a2, const AMCP::Graph::Manifest_Execution_Context *a3)
{
  v4 = *a1;
  if ((*v4 & 0xFFFFFFFE) == 2)
  {
    AMCP::Graph::Manifest::end_processing(v4, a2, a3);
    v5 = *a1;

    AMCP::Graph::Manifest::teardown_processing(v5);
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::perform(uint64_t a1)
{
  v2 = a1;
  caulk::concurrent::details::message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::perform(a1);
  return caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_1DE3AD1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

void caulk::concurrent::details::message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::perform(uint64_t a1)
{
  v4.__m_ = *(a1 + 24);
  v4.__owns_ = 1;
  std::mutex::lock(v4.__m_);
  std::condition_variable::wait(*(a1 + 32), &v4);
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v5[0] = v2;
  v5[1] = v3;
  AMCP::Graph::finish_manifest(v5, *(a1 + 40), (a1 + 48));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v4.__owns_)
  {
    std::mutex::unlock(v4.__m_);
  }
}

void sub_1DE3AD254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::rt_cleanup::~rt_cleanup(uint64_t *a1)
{
  v2 = *a1;
  *v2 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((v2 + 40));
  caulk::concurrent::message::~message(v2);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::~rt_message_call(uint64_t a1)
{
  *a1 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((a1 + 40));
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((a1 + 40));

  caulk::concurrent::message::~message(a1);
}

void caulk::concurrent::details::message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::~message_call(uint64_t a1)
{
  *a1 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((a1 + 40));
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((a1 + 40));

  caulk::concurrent::message::~message(a1);
}

unint64_t AMCP::Graph::Manifest_Queue::get_cycle_size_in_host_ticks(AMCP::Graph::Manifest_Queue *this)
{
  sample_rate = AMCP::Graph::Manifest_Queue::get_sample_rate(*(this + 70));
  v3 = *(this + 70);
  if (v3)
  {
    AMCP::Graph::Manifest::get_master_timebase(&v7, *(v3 + 72), *(v3 + 80));
    v4 = (*(*v7 + 72))(v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if ((*(this + 312) & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate((this + 312));
    }

    v5 = floor(*(this + 40));
  }

  else
  {
    v5 = 1024.0;
    v4 = 24000000.0 / sample_rate;
  }

  return (v5 * v4);
}

void sub_1DE3AD534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Queue::join_workgroup_interval(AMCP::Graph::Manifest_Queue *this)
{
  if (*(this + 46))
  {
    v1 = caulk::mach::os_workgroup_managed::join((this + 360));
    if (v1)
    {
      v2 = v1;
      v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = *(v3 + 8);
      v6 = __error();
      v7 = strerror(*v6);
      if (*MEMORY[0x1E69E3C08])
      {
        v8 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v8 + 16) = 0;
        *(v8 + 20) = 16;
        *(v8 + 24) = "Manifest_Queue.cpp";
        *(v8 + 32) = 643;
        *(v8 + 36) = v2;
        *(v8 + 40) = v7;
        *v8 = &unk_1F596AEF8;
        *(v8 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v5, v8);
        if (v4)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1DE3AD650(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Queue::start_workgroup_interval(AMCP::Graph::Manifest_Queue *this)
{
  if (!*(this + 46))
  {
    return;
  }

  v2 = *(this + 70);
  v3 = v2 ? AMCP::Graph::Manifest::get_overload_time_in_host_time(v2, (this + 312)) : -1;
  wake_time_in_host_time = AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(this);
  v5 = caulk::mach::os_workgroup_interval_managed::start((this + 360));
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(v7 + 8);
  v10 = strerror(v5);
  v11 = MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_20;
  }

  v12 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v12 + 16) = 0;
  *(v12 + 20) = 16;
  *(v12 + 24) = "Manifest_Queue.cpp";
  *(v12 + 32) = 675;
  *(v12 + 36) = v6;
  *(v12 + 40) = v10;
  *v12 = &unk_1F596AF50;
  *(v12 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v9, v12);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6 == 22)
  {
    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*v11)
    {
      v15 = *(v13 + 8);
      v16 = caulk::rt_safe_memory_resource::rt_allocate(*v11);
      *(v16 + 16) = 0;
      *(v16 + 20) = 2;
      *(v16 + 24) = "Manifest_Queue.cpp";
      *(v16 + 32) = 678;
      *(v16 + 40) = wake_time_in_host_time;
      *(v16 + 48) = v3;
      *v16 = &unk_1F596AFA8;
      *(v16 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v15, v16);
      if (v14)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      return;
    }

LABEL_20:
    __break(1u);
  }
}

void sub_1DE3AD84C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::start_workgroup_interval(void)::$_1,std::tuple<char const*,int,unsigned long long,unsigned long long>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Args: Start - %llu, Deadline - %llu", &v12, 0x26u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::start_workgroup_interval(void)::$_1,std::tuple<char const*,int,unsigned long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::start_workgroup_interval(void)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Starting the workgroup interval in start_workgroup_interval resulted in error: %d (%s)", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::start_workgroup_interval(void)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::join_workgroup_interval(void)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to join the workgroup with code: %d - %s", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::join_workgroup_interval(void)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

double AMCP::Graph::Manifest_Queue::get_sample_rate(AMCP::Graph::Manifest_Queue *this)
{
  if (!this)
  {
    return 44100.0;
  }

  AMCP::Graph::Manifest::get_master_timebase(&v3, *(this + 9), *(this + 10));
  v1 = (*(*v3 + 152))(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

void sub_1DE3ADD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Manifest_Queue::timebases_are_valid(AMCP::Graph::Manifest_Queue *this)
{
  if (!this)
  {
    return 1;
  }

  v1 = *(this + 9);
  v2 = *(this + 10);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    do
    {
      v6 = v5[2];
      v7 = v5[3];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(*v6 + 168))(v6);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (!v8)
      {
        break;
      }

      v5 = *v5;
    }

    while (v5);
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = 1;
  if (v4)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_15:
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v8;
}

void sub_1DE3ADE1C(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  goto LABEL_5;
}

void AMCP::Graph::Manifest_Queue::enqueue_manifest(AMCP::Logging_Settings *a1, void *a2, unsigned int a3, unsigned int a4, uint64_t *a5, __int128 *a6, int a7, uint64_t a8, __int128 a9)
{
  v152 = *MEMORY[0x1E69E9840];
  AMCP::Logging_Settings::instance(a1);
  if (HIBYTE(AMCP::Logging_Settings::instance(void)::s_instance) == 1)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
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
      v68 = *a1;
      v21 = *a2;
      v72 = a4;
      if (*a2)
      {
        v22 = v86;
        AMCP::Graph::Manifest::get_iocontext_uid(v86, v21);
        if (v87 < 0)
        {
          v22 = v86[0];
        }

        if (*a2)
        {
          v23 = (*(*a2 + 16) - *(*a2 + 8)) >> 4;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
        v22 = "";
      }

      v70 = v21;
      v73 = a7;
      std::string::basic_string[abi:ne200100]<0>(&__p, off_1E8678810[a3]);
      v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v25 = __p.__r_.__value_.__r.__words[0];
      std::string::basic_string[abi:ne200100]<0>(v150, off_1E8678810[v72]);
      p_p = &__p;
      if (v24 < 0)
      {
        p_p = v25;
      }

      if (v151 >= 0)
      {
        v27 = v150;
      }

      else
      {
        v27 = v150[0];
      }

      v28 = (a5[1] - *a5) >> 2;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316930;
      *(buf.__r_.__value_.__r.__words + 4) = "Manifest_Queue.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 156;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v68;
      *v135 = 2080;
      *&v135[2] = v22;
      *&v135[10] = 2048;
      *&v135[12] = v23;
      *&v135[20] = 2080;
      *&v135[22] = p_p;
      *&v135[30] = 2080;
      v136 = v27;
      LOWORD(v137) = 2048;
      *(&v137 + 2) = v28;
      _os_log_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_INFO, "%32s:%-5d Manifest_Queue(%u|%s)::enqueue_manifest: size(%zu)  %s -> %s  (snapshot: %zu)", &buf, 0x4Au);
      if (v151 < 0)
      {
        operator delete(v150[0]);
      }

      a7 = v73;
      a4 = v72;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v70 && v87 < 0)
      {
        operator delete(v86[0]);
      }
    }
  }

  v29 = *(a1 + 70);
  if (v29)
  {
    v30 = *a2;
    if (!*a2)
    {
      goto LABEL_54;
    }

    v31 = *(v29 + 96);
    v32 = *(v29 + 104);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = *(v30 + 104);
    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }
  }

  v34 = *a2;
  if (!*a2)
  {
LABEL_54:
    if (!*(a1 + 24))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "manifest queue outbox");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __p;
      }

      v135[0] = 1;
      *&v135[8] = 0x100000037;
      *&v135[24] = 2;
      v135[28] = 1;
      LOBYTE(v136) = 0;
      BYTE4(v136) = 0;
      operator new();
    }

    v83 = 0;
    __p.__r_.__value_.__r.__words[0] = __PAIR64__(a4, a3);
    v80 = 0;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(&__p.__r_.__value_.__l.__size_, *a5, a5[1], (a5[1] - *a5) >> 2);
    LODWORD(v81) = a7;
    *(&v81 + 1) = 0x40B0000000000000;
    v82 = a9;
    v45 = a2[1];
    buf.__r_.__value_.__r.__words[0] = *a2;
    buf.__r_.__value_.__l.__size_ = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(buf.__r_.__value_.__r.__words[2]) = *a1;
    *v135 = *a6;
    v46 = *(a6 + 3);
    *&v135[16] = *(a6 + 2);
    *&v135[24] = v46;
    v47 = *(a6 + 4);
    v136 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v137) = *(a6 + 10);
    *(&v137 + 1) = MEMORY[0x1E69E3C18] + 16;
    v48 = caulk::mach::details::retain_os_object(*(a6 + 7), v44);
    v49 = a6[5];
    v139 = a6[4];
    v138 = v48;
    *v140 = v49;
    *&v140[9] = *(a6 + 89);
    *(&v137 + 1) = MEMORY[0x1E69E3C20] + 16;
    v141 = *(a6 + 105);
    v142 = *(a6 + 56);
    v50 = *&__p.__r_.__value_.__l.__data_;
    v143 = __p.__r_.__value_.__r.__words[0];
    v144 = 0;
    v146 = 0;
    v145 = 0;
    v51 = __p.__r_.__value_.__r.__words[2];
    v52 = (__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__l.__size_) >> 2;
    std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(&v144, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2], v52);
    v147 = v81;
    v148 = v82;
    *&v149 = a1 + 704;
    *(&v149 + 1) = &v83;
    v53 = *a2;
    v54 = a2[1];
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v75[0] = 0;
    v75[1] = 0;
    v76 = 0;
    std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(v75, *(&v50 + 1), v51, v52);
    v77 = v81;
    v78 = v82;
    v107 = *a6;
    v56 = *(a6 + 3);
    v108 = *(a6 + 2);
    *&v109 = v56;
    v57 = *(a6 + 4);
    *(&v109 + 1) = v57;
    if (v57)
    {
      atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
    }

    v110 = *(a6 + 10);
    v111 = MEMORY[0x1E69E3C18] + 16;
    v58 = caulk::mach::details::retain_os_object(*(a6 + 7), v55);
    v59 = a6[5];
    v113 = a6[4];
    *v114 = v59;
    *&v114[9] = *(a6 + 89);
    v111 = MEMORY[0x1E69E3C20] + 16;
    v115 = *(a6 + 105);
    v116 = *(a6 + 56);
    v117 = v53;
    v118 = v54;
    __src = *v75;
    v119 = v50;
    v121 = v76;
    v75[0] = 0;
    v75[1] = 0;
    v76 = 0;
    v122 = v81;
    v123 = v82;
    v124 = v107;
    v125 = v108;
    v126 = v109;
    v109 = 0uLL;
    v127 = v110;
    memset(v131, 0, sizeof(v131));
    v130 = 0u;
    v132 = 0;
    v128 = MEMORY[0x1E69E3C20] + 16;
    v129 = v58;
    v112 = 0;
    caulk::mach::details::release_os_object(0, v60);
    v62 = *v131;
    v63 = v130;
    v64 = *&v131[16];
    v130 = v113;
    *v131 = *v114;
    *&v131[16] = *&v114[16];
    *&v114[16] = v64;
    v113 = v63;
    *v114 = v62;
    LOBYTE(v64) = v131[24];
    v131[24] = v114[24];
    v114[24] = v64;
    LOBYTE(v64) = v132;
    v132 = v115;
    v115 = v64;
    v133 = v116;
    v88 = *&buf.__r_.__value_.__l.__data_;
    if (buf.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v89 = buf.__r_.__value_.__r.__words[2];
    v90 = *v135;
    v91 = *&v135[16];
    v92 = *&v135[24];
    v93 = v136;
    if (v136)
    {
      atomic_fetch_add_explicit(v136 + 1, 1uLL, memory_order_relaxed);
    }

    v94 = v137;
    v95 = MEMORY[0x1E69E3C18] + 16;
    v65 = caulk::mach::details::retain_os_object(v138, v61);
    v97 = v139;
    *v98 = *v140;
    *&v98[9] = *&v140[9];
    v95 = MEMORY[0x1E69E3C20] + 16;
    v96 = v65;
    v99 = v141;
    v100 = v142;
    v101 = v143;
    memset(v102, 0, sizeof(v102));
    std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(v102, v144, v145, (v145 - v144) >> 2);
    v103 = v147;
    v104 = v148;
    v105 = v149;
    v106 = 0;
    operator new();
  }

  v36 = v34[12];
  v35 = v34[13];
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    if (!v36)
    {
      goto LABEL_54;
    }

    v34 = *a2;
    v36 = *(*a2 + 96);
    v37 = *(*a2 + 104);
    if (v37)
    {
      v71 = 0;
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *a2;
      v67 = *a1;
      if (!*a2)
      {
        v69 = 1;
        v74 = a7;
        v66 = a5;
LABEL_45:
        std::string::basic_string[abi:ne200100]<0>(&buf, off_1E8678810[a3]);
        std::string::basic_string[abi:ne200100]<0>(&__p, off_1E8678810[a4]);
        AMCP::Graph::Manifest_Log::add_message(v36, 3, "Manifest_Queue(%u|%s)::enqueue_manifest: size(%zu)  %s -> %s", v39, v40, v41, v42, v43, v67);
        a7 = v74;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        a5 = v66;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if ((v69 & 1) == 0 && v85 < 0)
        {
          operator delete(v84);
        }

        if ((v71 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        goto LABEL_54;
      }

LABEL_43:
      AMCP::Graph::Manifest::get_iocontext_uid(&v84, v34);
      v74 = a7;
      v66 = a5;
      v69 = 0;
      if (*a2)
      {
        v38 = (*(*a2 + 16) - *(*a2 + 8)) >> 4;
      }

      goto LABEL_45;
    }
  }

  else if (!v36)
  {
    goto LABEL_54;
  }

  v37 = 0;
  v67 = *a1;
  v71 = 1;
  goto LABEL_43;
}

void sub_1DE3AEB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0::~$_0(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 9));
  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void AMCP::Graph::Manifest_Queue::Incoming_Payload::~Incoming_Payload(AMCP::Graph::Manifest_Queue::Incoming_Payload *this)
{
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((this + 128));
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph14Manifest_Queue16enqueue_manifestERKNSt3__110shared_ptrINS0_8ManifestEEENS_15Transport_StateES8_RKNS2_6vectorINS_7IO_Core18Play_State_Manager12Play_RequestENS2_9allocatorISC_EEEERKNS0_26Manifest_Execution_ContextE13Anchor_PolicyNS2_7variantIJNS_3DAL11Sample_TimeEyEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = result + 152;
  if (*(result + 152))
  {
    v2 = result;
    v3 = *(result + 8);
    if (v3)
    {
      v4 = *(v3 + 72);
      v5 = *(v3 + 80);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::Graph::Manifest_Inventory::set_nominal_buffer_size(*(v4 + 24), *(result + 24), result + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = *(v2 + 216);
      AMCP::Graph::Manifest::setup_processing(*(v2 + 8), (v2 + 32), v1);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3AF270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 10));
  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 10));
  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = MEMORY[0x1E69E3C18] + 16;
  *(a1 + 80) = caulk::mach::details::retain_os_object(*(a2 + 80), a2);
  v7 = *(a2 + 88);
  v8 = *(a2 + 113);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 113) = v8;
  *(a1 + 88) = v7;
  *(a1 + 72) = MEMORY[0x1E69E3C20] + 16;
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 136) = *(a2 + 136);
  v9 = *(a2 + 144);
  *(a1 + 152) = 0;
  *(a1 + 144) = v9;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(a1 + 152, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void sub_1DE3AF580(_Unwind_Exception *a1)
{
  AMCP::Graph::Manifest_Execution_Context::~Manifest_Execution_Context((v1 + 24));
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596AD48;
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 10));
  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596AD48;
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 10));
  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void AMCP::Graph::Manifest_Queue::process_once(AMCP::Graph::Manifest_Queue *a1, int a2, unsigned int a3)
{
  v5 = a1;
  v145 = *MEMORY[0x1E69E9840];
  v6 = AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(a1);
  if (v6)
  {
    v71 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v71 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v73 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v72 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      v74 = *v73;
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    else
    {
      v74 = *v73;
    }

    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Manifest_Queue.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 385;
      *&buf[18] = 2080;
      *&buf[20] = "not (success == Start_Stop_Result::success)";
      _os_log_error_impl(&dword_1DE1F9000, v74, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s maybe_acquire_new_manifest failed", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v119);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("maybe_acquire_new_manifest failed", &v121);
    std::logic_error::logic_error(&v128, &v121);
    v128.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v109, &v128);
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = -1;
    v109.__vftable = &unk_1F5991430;
    v110 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v109);
    *&v134 = "void AMCP::Graph::Manifest_Queue::process_once(Handle_Overloads, Process_Once_Option)";
    *(&v134 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    LODWORD(v135) = 385;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v120);
  }

  v7 = *(v5 + 70);
  if (!v7)
  {
    v75 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v75 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v77 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v76 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v76)
    {
      atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
      v78 = *v77;
      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
    }

    else
    {
      v78 = *v77;
    }

    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Manifest_Queue.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 386;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_current_manifiest)";
      _os_log_error_impl(&dword_1DE1F9000, v78, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no manifest", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v119);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("no manifest", &v121);
    std::logic_error::logic_error(&v128, &v121);
    v128.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v109, &v128);
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = -1;
    v109.__vftable = &unk_1F5991430;
    v110 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v109);
    *&v134 = "void AMCP::Graph::Manifest_Queue::process_once(Handle_Overloads, Process_Once_Option)";
    *(&v134 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    LODWORD(v135) = 386;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v120);
  }

  if ((*v7 & 0xFFFFFFFE) != 2)
  {
    v83 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v83 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v85 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v84 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v84)
    {
      atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
      v86 = *v85;
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }

    else
    {
      v86 = *v85;
    }

    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Manifest_Queue.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 389;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_current_manifiest->is_processing() or m_current_manifiest->is_prewarming())";
      _os_log_error_impl(&dword_1DE1F9000, v86, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v119);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v121);
    std::logic_error::logic_error(&v128, &v121);
    v128.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v109, &v128);
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = -1;
    v109.__vftable = &unk_1F5991430;
    v110 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v109);
    *&v134 = "void AMCP::Graph::Manifest_Queue::process_once(Handle_Overloads, Process_Once_Option)";
    *(&v134 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    LODWORD(v135) = 389;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v120);
  }

  v9 = *(v7 + 72);
  v8 = *(v7 + 80);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(v9 + 64);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v10 = *(v9 + 64);
  }

  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(buf, v10);
  if ((*(v5 + 312) & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate((v5 + 312));
  }

  v11 = *(v5 + 40);
  v12 = *(v10 + 40);
  AMCP::DAL::DAL_Time::get_sample_time(buf);
  AMCP::DAL::DAL_Time::get_host_time(buf);
  kdebug_trace();
  v13 = v134;
  if (v134)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v134);
  }

  v14 = *(v5 + 70);
  v108 = v5;
  if (*v14 == 3)
  {
    v15 = *v5;
    AMCP::Graph::Manifest::get_master_timebase(buf, *(v14 + 72), *(v14 + 80));
    v16 = *(*(v14 + 72) + 64);
    v18 = *(v16 + 24);
    v17 = *(v16 + 32);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *buf;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *buf;
    }

    v24 = *&buf[8];
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v19 != v18)
    {
      v91 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v91 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v24);
      }

      v93 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v92 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
        v94 = *v93;
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
      }

      else
      {
        v94 = *v93;
      }

      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 686;
        *&buf[18] = 2080;
        *&buf[20] = "not (get_master_timebase() == m_inventory->get_manifest_counter().get_master_timebase())";
        _os_log_error_impl(&dword_1DE1F9000, v94, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v119);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v121);
      std::logic_error::logic_error(&v128, &v121);
      v128.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v109, &v128);
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = -1;
      v109.__vftable = &unk_1F5991430;
      v110 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v109);
      *&v134 = "void AMCP::Graph::Manifest::process_once(Object_ID, const Manifest_Execution_Context &, Handle_Overloads, Process_Once_Option)";
      *(&v134 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
      LODWORD(v135) = 686;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v120);
    }

    AMCP::Graph::create_cycle_info(&v109, *(*(v14 + 72) + 64), (v5 + 312));
    v103 = a2;
    AMCP::Graph::Manifest_Inventory::begin_cycle(*(v14 + 72), (v14 + 96), v5 + 78);
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    memset(buf, 0, sizeof(buf));
    v25 = AMCP::Graph::io_proc_cycle_info_to_audio_io_cycle_info(&v109, buf);
    v26 = *(v14 + 8);
    v27 = *(v14 + 16);
    while (v26 != v27)
    {
      v28 = *v26;
      if (*(*v26 + 88) != 3)
      {
        v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v65 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v25);
        }

        v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v66 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          v68 = *v67;
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        else
        {
          v68 = *v67;
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = (v28 + 64);
          if (*(v28 + 87) < 0)
          {
            v69 = *v69;
          }

          *v130 = 136315906;
          *&v130[4] = "Manifest_Task.cpp";
          *&v130[12] = 1024;
          *&v130[14] = 150;
          *&v130[18] = 2080;
          *&v130[20] = "not (m_processing_state == Processing_State::Processing)";
          *&v130[28] = 2080;
          *&v130[30] = v69;
          _os_log_error_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s begin_cycle call in wrong state in %s", v130, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v126);
        __cxa_allocate_exception(0x40uLL);
        v70 = (v28 + 64);
        if (*(v28 + 87) < 0)
        {
          v70 = *v70;
        }

        caulk::make_string("begin_cycle call in wrong state in %s", &v128, v70);
        std::logic_error::logic_error(&v127, &v128);
        v127.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v121, &v127);
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = -1;
        v121.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v121.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v130, &v121);
        *&v130[32] = "void AMCP::Graph::Manifest_Task::begin_cycle(Object_ID, const Proc_Cycle_Info &)";
        v131 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
        v132 = 150;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v119);
      }

      v25 = *(*(v28 + 48) + 216);
      if (v25)
      {
        v25 = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(v25, v15);
      }

      v26 += 2;
    }

    AMCP::Graph::Manifest::calculate_all_required_input_samples(v14, (v5 + 312));
    v101 = a3;
    v29 = *(v14 + 8);
    v102 = v14;
    v105 = *(v14 + 16);
    if (v29 != v105)
    {
      v104 = v15;
      do
      {
        v106 = v29;
        v30 = *v29;
        v31 = *(*(*v29 + 48) + 120);
        if (v31)
        {
          (*(*v31 + 48))(&v127);
          if (v127.__vftable)
          {
            v32 = *(v30 + 24);
            v107 = *(v30 + 32);
            if (v32 != v107)
            {
              v33 = 0;
              do
              {
                v35 = *v32;
                v34 = v32[1];
                if (*v32 != v34)
                {
                  do
                  {
                    v36 = *v35;
                    *buf = *(*v35 + 208);
                    v37 = v36[29];
                    *&buf[16] = v36[28];
                    *&buf[24] = v37;
                    v38 = v36[30];
                    *&v134 = v38;
                    if (v38)
                    {
                      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
                    }

                    sample_time = AMCP::DAL::DAL_Time::get_sample_time(buf);
                    v40 = *v35;
                    *v130 = *(*v35 + 208);
                    v41 = v40[29];
                    *&v130[16] = v40[28];
                    *&v130[24] = v41;
                    v42 = v40[30];
                    *&v130[32] = v42;
                    if (v42)
                    {
                      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
                    }

                    v43 = AMCP::DAL::DAL_Time::get_sample_time(v130) + *(*v35 + 160);
                    v126[0] = sample_time;
                    v126[1] = v43;
                    if (*&v130[32])
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](*&v130[32]);
                    }

                    v44 = v134;
                    if (v134)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v134);
                    }

                    if (round(v126[0]) < 0.0)
                    {
                      v53 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                      if ((v53 & 1) == 0)
                      {
                        AMCP::Log::AMCP_Scope_Registry::initialize(v44);
                      }

                      v55 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                      v54 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                      if (v54)
                      {
                        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
                        v56 = *v55;
                        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
                      }

                      else
                      {
                        v56 = *v55;
                      }

                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        *&buf[4] = "Device_Connection.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 128;
                        *&buf[18] = 2080;
                        *&buf[20] = "not (required_samples.start() >= 0_S)";
                        _os_log_error_impl(&dword_1DE1F9000, v56, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to read sample before 0", buf, 0x1Cu);
                      }

                      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v129);
                      __cxa_allocate_exception(0x40uLL);
                      caulk::make_string("Attempt to read sample before 0", &v120);
                      std::logic_error::logic_error(&v119, &v120);
                      v119.__vftable = (MEMORY[0x1E69E55A8] + 16);
                      std::logic_error::logic_error(v130, &v119);
                      *&v130[24] = 0;
                      *&v130[32] = 0;
                      v131 = 0;
                      v132 = -1;
                      *v130 = &unk_1F5991430;
                      *&v130[16] = &unk_1F5991458;
                      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v130);
                      *&v134 = "void AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(Object_ID, size_t, const DAL::Sample_Time_Range &)";
                      *(&v134 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                      LODWORD(v135) = 128;
                      std::vector<void *>::vector[abi:ne200100](&v128);
                    }

                    v45 = v127.__vftable;
                    v46 = v127.~logic_error_0;
                    if (!v46 || (v46 = std::__shared_weak_count::lock(v46), (v47 = v46) == 0) || (v48 = v45->~logic_error) == 0)
                    {
                      v79 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                      if ((v79 & 1) == 0)
                      {
                        AMCP::Log::AMCP_Scope_Registry::initialize(v46);
                      }

                      v81 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                      v80 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                      if (v80)
                      {
                        atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                        v82 = *v81;
                        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
                      }

                      else
                      {
                        v82 = *v81;
                      }

                      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        *&buf[4] = "Device_Connection.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 130;
                        *&buf[18] = 2080;
                        *&buf[20] = "not (device_state.operator BOOL())";
                        _os_log_error_impl(&dword_1DE1F9000, v82, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                      }

                      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v129);
                      __cxa_allocate_exception(0x40uLL);
                      caulk::make_string("", &v120);
                      std::logic_error::logic_error(&v119, &v120);
                      v119.__vftable = (MEMORY[0x1E69E55A8] + 16);
                      std::logic_error::logic_error(v130, &v119);
                      *&v130[24] = 0;
                      *&v130[32] = 0;
                      v131 = 0;
                      v132 = -1;
                      *v130 = &unk_1F5991430;
                      *&v130[16] = &unk_1F5991458;
                      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v130);
                      *&v134 = "void AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(Object_ID, size_t, const DAL::Sample_Time_Range &)";
                      *(&v134 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                      LODWORD(v135) = 130;
                      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v128);
                    }

                    os_unfair_lock_lock(v48 + 1);
                    *buf = &unk_1F59665C8;
                    *&buf[8] = v33;
                    *&buf[16] = v126;
                    *&buf[24] = buf;
                    AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v48, 1u, buf);
                    std::__function::__value_func<BOOL ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](buf);
                    os_unfair_lock_unlock(v48 + 1);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                    v35 += 16;
                    v5 = v108;
                  }

                  while (v35 != v34);
                }

                ++v33;
                v32 += 5;
              }

              while (v32 != v107);
            }
          }
        }

        else
        {
          v127.__vftable = 0;
          v127.__imp_.__imp_ = 0;
        }

        if (v127.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v127.__imp_.__imp_);
        }

        v29 = v106 + 2;
        v15 = v104;
      }

      while (v106 + 2 != v105);
    }

    v49 = *(v14 + 72);
    v50 = *(v49 + 112);
    for (i = *(v49 + 120); v50 != i; v50 += 2)
    {
      AMCP::IO_Core::Device_Connection::begin_cycle(*v50, &v109, (v5 + 312));
    }

    if (v103)
    {
      overload_time_in_host_time = -1;
    }

    else
    {
      overload_time_in_host_time = AMCP::Graph::Manifest::get_overload_time_in_host_time(v14, (v5 + 312));
    }

    v59 = *(v102 + 1);
    v60 = *(v102 + 2);
    while (v59 != v60)
    {
      v61 = *v59;
      AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator(*v59);
      (*(**(v61 + 104) + 16))(*(v61 + 104), v15, &v109, v5 + 78, overload_time_in_host_time, v101);
      v59 += 2;
    }

    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    memset(buf, 0, sizeof(buf));
    AMCP::Graph::io_proc_cycle_info_to_audio_io_cycle_info(&v109, buf);
    v62 = *(v102 + 1);
    v63 = *(v102 + 2);
    while (v62 != v63)
    {
      v64 = *(*(*v62 + 48) + 280);
      if (v64)
      {
        std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(v64, v15);
      }

      v62 += 16;
    }

    AMCP::Graph::Manifest_Inventory::end_cycle(*(v102 + 9), &v109, v5 + 39);
    if (v118)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v118);
    }

    if (v117)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v117);
    }

    if (v116)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v116);
    }

    if (v115)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v115);
    }

    v58 = v112;
    if (v112)
    {
LABEL_93:
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }
  }

  else
  {
    if (*v14 != 2)
    {
      v87 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v87 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v13);
      }

      v89 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v88 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v88)
      {
        atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
        v90 = *v89;
        std::__shared_weak_count::__release_shared[abi:ne200100](v88);
      }

      else
      {
        v90 = *v89;
      }

      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 671;
        *&buf[18] = 2080;
        *&buf[20] = "not (is_prewarming())";
        _os_log_error_impl(&dword_1DE1F9000, v90, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s prewarm_once() called before begin_processing()", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v119);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("prewarm_once() called before begin_processing()", &v121);
      std::logic_error::logic_error(&v128, &v121);
      v128.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v109, &v128);
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = -1;
      v109.__vftable = &unk_1F5991430;
      v110 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v109);
      *&v134 = "void AMCP::Graph::Manifest::prewarm_once(Object_ID, const Manifest_Execution_Context &)";
      *(&v134 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
      LODWORD(v135) = 671;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v120);
    }

    AMCP::Graph::Manifest::get_master_timebase(buf, *(v14 + 72), *(v14 + 80));
    v20 = *(*(v14 + 72) + 64);
    v22 = *(v20 + 24);
    v21 = *(v20 + 32);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *buf;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *buf;
    }

    v57 = *&buf[8];
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v23 != v22)
    {
      v95 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v95 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v57);
      }

      v97 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v96 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
        v98 = *v97;
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }

      else
      {
        v98 = *v97;
      }

      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 672;
        *&buf[18] = 2080;
        *&buf[20] = "not (get_master_timebase() == m_inventory->get_manifest_counter().get_master_timebase())";
        _os_log_error_impl(&dword_1DE1F9000, v98, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v119);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v121);
      std::logic_error::logic_error(&v128, &v121);
      v128.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v109, &v128);
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = -1;
      v109.__vftable = &unk_1F5991430;
      v110 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v109);
      *&v134 = "void AMCP::Graph::Manifest::prewarm_once(Object_ID, const Manifest_Execution_Context &)";
      *(&v134 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
      LODWORD(v135) = 672;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v120);
    }

    AMCP::Graph::create_cycle_info(buf, *(*(v14 + 72) + 64), (v5 + 312));
    AMCP::Graph::Manifest_Inventory::begin_cycle(*(v14 + 72), (v14 + 96), v5 + 78);
    AMCP::Graph::Manifest_Inventory::end_cycle(*(v14 + 72), buf, v5 + 39);
    if (*(&v142 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v142 + 1));
    }

    if (*(&v141 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v141 + 1));
    }

    if (v139)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v139);
    }

    if (*(&v136 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v136 + 1));
    }

    v58 = v134;
    if (v134)
    {
      goto LABEL_93;
    }
  }

  if (AMCP::Graph::Manifest_Queue::timebases_are_valid(*(v5 + 70)))
  {
    wake_time_in_host_time = AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(v5);
    AMCP::Graph::Manifest::get_master_timebase(&v121, *(*(v5 + 70) + 72), *(*(v5 + 70) + 80));
    *v130 = 1;
    *&v130[8] = 0;
    *&v130[16] = wake_time_in_host_time;
    *&v130[24] = *&v121.__r_.__value_.__l.__data_;
    *&v121.__r_.__value_.__l.__data_ = 0uLL;
    AMCP::DAL::DAL_Time::get_sample_time(v130);
    AMCP::DAL::DAL_Time::get_host_time(v130);
    AMCP::Graph::Manifest_Queue::get_sample_rate(*(v5 + 70));
    kdebug_trace();
    if (*&v130[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v130[32]);
    }
  }

  v100 = *MEMORY[0x1E69E9840];
}

void sub_1DE3B17A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a69)
  {
    JUMPOUT(0x1DE3B17ACLL);
  }

  JUMPOUT(0x1DE3B1594);
}

void AMCP::Graph::Manifest_Queue::reanchor_after_time_change(AMCP::Graph::Manifest_Queue *this)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(this + 70);
  v4 = *(v2 + 72);
  v3 = *(v2 + 80);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (v4)
    {
      v2 = *(this + 70);
      goto LABEL_5;
    }

LABEL_31:
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v57 = "Manifest_Queue.cpp";
      v58 = 1024;
      v59 = 597;
      v60 = 2080;
      v61 = "not (m_current_manifiest->get_inventory())";
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We need a valid inventory in order to reanchor_after_time_change", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("We need a valid inventory in order to reanchor_after_time_change", &v40);
    std::logic_error::logic_error(&v49, &v40);
    v49.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v50, &v49);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -1;
    v50.__vftable = &unk_1F5991430;
    v51 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v50);
    v62 = "void AMCP::Graph::Manifest_Queue::reanchor_after_time_change()";
    v63 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    v64 = 597;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v44);
  }

  if (!v4)
  {
    goto LABEL_31;
  }

LABEL_5:
  AMCP::Graph::Manifest::calculate_anchor_time(&v40, v2, this + 78, 2, 0, 0);
  v5 = *(this + 70);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(*(v6 + 64) + 40);
  v9 = *this;
  kdebug_trace();
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v10 = *(this + 70);
  v12 = *(v10 + 72);
  v11 = *(v10 + 80);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *this;
  for (i = *(v12 + 3); i; i = *i)
  {
    v15 = i[12];
    v16 = *(v15 + 296);
    if (v16)
    {
      *(v15 + 296) = v16 - 1;
    }
  }

  v17 = *(v12 + 8);
  v19 = v41;
  v18 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = *(v17 + 24);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    if (v19 == v20)
    {
      goto LABEL_17;
    }

LABEL_27:
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v57 = "Manifest_Counter.cpp";
      v58 = 1024;
      v59 = 48;
      v60 = 2080;
      v61 = "not (anchor_time.get_clock() == m_master_timebase)";
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v44);
    std::logic_error::logic_error(&v43, &v44);
    v43.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v50, &v43);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -1;
    v50.__vftable = &unk_1F5991430;
    v51 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v50);
    v62 = "void AMCP::Graph::Manifest_Counter::reanchor(const DAL_Time &)";
    v63 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Counter.cpp";
    v64 = 48;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v49);
  }

  if (v41 != *(v17 + 24))
  {
    goto LABEL_27;
  }

LABEL_17:
  if ((*v17 & 1) == 0)
  {
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
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
      *buf = 136315650;
      v57 = "Manifest_Counter.cpp";
      v58 = 1024;
      v59 = 49;
      v60 = 2080;
      v61 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v44);
    std::logic_error::logic_error(&v43, &v44);
    v43.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v50, &v43);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -1;
    v50.__vftable = &unk_1F5991430;
    v51 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v50);
    v62 = "void AMCP::Graph::Manifest_Counter::reanchor(const DAL_Time &)";
    v63 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Counter.cpp";
    v64 = 49;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v49);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v40);
  *(v17 + 8) = sample_time;
  *(v17 + 16) = sample_time;
  *(v17 + 40) = 0;
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(v47, *(v12 + 8));
  v22 = AMCP::DAL::DAL_Time::operator<(&v40, v47);
  if (v22)
  {
    v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v36 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v22);
    }

    v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v39 = *v38;
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    else
    {
      v39 = *v38;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v57 = "Manifest_Inventory.cpp";
      v58 = 1024;
      v59 = 341;
      v60 = 2080;
      v61 = "not (current_anchor <= time)";
      _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to anchor_time is in the past", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to anchor_time is in the past", &v49);
    std::logic_error::logic_error(&v45, &v49);
    v45.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v50, &v45);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -1;
    v50.__vftable = &unk_1F5991430;
    v51 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v50);
    v62 = "void AMCP::Graph::Manifest_Inventory::reanchor_time(Object_ID, const Manifest_Execution_Context &, const DAL::DAL_Time &) const";
    v63 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
    v64 = 341;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
  }

  AMCP::Graph::Manifest_Inventory::anchor_time(v12, v13, (this + 312), &v40);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1DE3B21D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::report_and_handle_discontinuity(void)::$_0,std::tuple<char const*,int,char const*>>::perform(uint64_t a1)
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
    v8 = *(a1 + 40);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d %s", &v11, 0x1Cu);
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

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::report_and_handle_discontinuity(void)::$_0,std::tuple<char const*,int,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

BOOL AMCP::Graph::Manifest_Queue::check_if_catchup_mode_is_still_active(AMCP::Graph::Manifest_Queue *this)
{
  v1 = *(this + 70);
  if (!v1)
  {
    return 0;
  }

  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v4[8];
  v28 = *v5;
  v6 = *(v5 + 3);
  v29 = *(v5 + 2);
  v30 = v6;
  v7 = *(v5 + 4);
  v31 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *(v5 + 10);
  if ((*(this + 312) & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate((this + 312));
  }

  AMCP::Graph::Manifest_Counter::advance(&v28, *(this + 40));
  v8 = v4[13];
  v22 = v4[12];
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Counter::calculate_buffer_start(v26, &v28, &v22, 1, (this + 312), *(this + 88));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(v26);
  if ((*(this + 312) & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate((this + 312));
  }

  v10 = *(this + 40);
  v11 = mach_absolute_time();
  v12 = *(v4 + 6);
  v13 = v4[13];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v22) = 1;
  v23 = 0;
  v24 = v11;
  v25 = v12;
  v14 = v4[12];
  v15 = v4[13];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = (*(*v14 + 144))(v14, 1);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = AMCP::DAL::DAL_Time::get_sample_time(&v22);
  v18 = round(sample_time + v10);
  v19 = round(v17 - v16);
  v20 = v18 < v19;
  if (v18 >= v19)
  {
    AMCP::DAL::DAL_Time::get_sample_time(v26);
    AMCP::DAL::DAL_Time::get_host_time(v26);
    kdebug_trace();
  }

  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v20;
}

void sub_1DE3B2730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::report_and_handle_overload(unsigned long long,unsigned long long)::$_0,std::tuple<char const*,int,char const*,unsigned int,double,double>>::perform(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v14 = 136316418;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 2080;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Overload %s(%u) - current time: %0.f  deadline time: %0.f", &v14, 0x36u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::report_and_handle_overload(unsigned long long,unsigned long long)::$_0,std::tuple<char const*,int,char const*,unsigned int,double,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_MetaManager::_CopyDeviceList(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 688);
  for (i = *(a1 + 696); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_MetaManager::GetPropertyData(HALS_System **this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, int *a6, unsigned int a7, const __CFDictionary **a8, HALS_Client *a9)
{
  v29 = *MEMORY[0x1E69E9840];
  if (((*(*this + 12))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v20 = 2003332927;
    goto LABEL_29;
  }

  if (a3->mSelector == 1684105063)
  {
    if (a4 != 4)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v25 = 136315394;
      v26 = "HALS_MetaManager.cpp";
      v27 = 1024;
      v28 = 178;
      v21 = MEMORY[0x1E69E9C10];
      v22 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: wrong data size for kAudioPlugInDestroyAggregateDevice";
      goto LABEL_21;
    }

    if (!a6)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        v20 = 1852797029;
LABEL_29:
        exception[2] = v20;
      }

      v25 = 136315394;
      v26 = "HALS_MetaManager.cpp";
      v27 = 1024;
      v28 = 179;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: nowhere to put the output data for kAudioPlugInDestroyAggregateDevice";
LABEL_27:
      _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, v24, &v25, 0x12u);
      goto LABEL_28;
    }

    HALS_MetaManager::DestroyDevice(this, *a6);
    *a5 = 4;
    v17 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (a3->mSelector == 1667327847)
    {
      if (a7 == 8)
      {
        if (a4 == 4)
        {
          if (a6)
          {
            HALS_MetaManager::CreateDevice(this, *a8, a9);
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_28;
          }

          v25 = 136315394;
          v26 = "HALS_MetaManager.cpp";
          v27 = 1024;
          v28 = 172;
          v23 = MEMORY[0x1E69E9C10];
          v24 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: nowhere to put the output data for kAudioPlugInCreateAggregateDevice";
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v25 = 136315394;
          v26 = "HALS_MetaManager.cpp";
          v27 = 1024;
          v28 = 171;
          v21 = MEMORY[0x1E69E9C10];
          v22 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: wrong data size for kAudioPlugInCreateAggregateDevice";
          goto LABEL_21;
        }

LABEL_22:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        v20 = 561211770;
        goto LABEL_29;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v25 = 136315394;
      v26 = "HALS_MetaManager.cpp";
      v27 = 1024;
      v28 = 170;
      v21 = MEMORY[0x1E69E9C10];
      v22 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: wrong qualifier size for kAudioPlugInCreateAggregateDevice";
LABEL_21:
      _os_log_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, v22, &v25, 0x12u);
      goto LABEL_22;
    }

    v18 = *MEMORY[0x1E69E9840];

    HALS_DeviceManager::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void HALS_MetaManager::CreateDevice(HALS_MetaManager *this, const __CFDictionary *a2, HALS_Client *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = 0;
  cf = 0;
  v7 = 1;
  CACFDictionary::GetCACFString(&v8, @"uid", &cf);
  if (cf)
  {
    if (!HALS_DeviceManager::CopyDeviceByUID(this, cf, 0))
    {
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "HALS_MetaManager.cpp";
      v12 = 1024;
      v13 = 204;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaManager::CreateDevice: there is already a device with this UID", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    buf = 136315394;
    buf_4 = "HALS_MetaManager.cpp";
    v12 = 1024;
    v13 = 200;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaManager::CreateDevice: the description has no UID", &buf, 0x12u);
  }

  v4 = __cxa_allocate_exception(0x10uLL);
  *v4 = off_1F5991DD8;
  v4[2] = 1852797029;
}

void sub_1DE3B340C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_Device::~HALS_Device(v19);
  MEMORY[0x1E12C1730](v19, 0x10F3C4035C184EALL);
  HALS_ObjectMap::ReleaseObject(v18, v21);
  CACFString::~CACFString(&a11);
  CACFDictionary::~CACFDictionary(&a13);
  _Unwind_Resume(a1);
}

void HALS_MetaManager::DestroyDevice(HALS_System **this, int a2)
{
  v3 = HALS_DeviceManager::CopyDeviceByObjectID(this, a2, 0);
  v5 = v3;
  if (v3)
  {
    atomic_load(v3 + 1592);
    (*(*v3 + 464))(v3);
    (*(*v5 + 8))(v5);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1174405120;
    v13[2] = ___ZN16HALS_MetaManager13DestroyDeviceEj_block_invoke;
    v13[3] = &__block_descriptor_tmp_4398;
    v13[4] = this;
    v14 = v5;
    HALS_ObjectMap::RetainObject(v5, v6);
    v7 = (*(*this + 8))(this);
    HALB_CommandGate::ExecuteCommand(v7, v13);
    HALS_System::DeviceDied(this[40], v5);
    v8 = *(this + 4);
    v11 = 0x676C6F6264657623;
    LODWORD(v12) = 0;
    HALS_Object::PropertiesChanged(this, v8, 0, 1, &v11);
    v10[0] = 0;
    v10[1] = 0;
    HALS_System::GetInstance(&v11, 0, v10);
    HALS_System::CheckForDefaultDeviceChanges(v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    HALS_ObjectMap::ReleaseObject(v14, v9);
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
}

void sub_1DE3B36EC(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, HALS_ObjectMap *a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  HALS_ObjectMap::ReleaseObject(a18, a2);
  HALS_ObjectMap::ReleaseObject(v18, v20);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c38_ZTS13HALS_ReleaserI15HALS_MetaDeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 5);
  *(a1 + 40) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void HALS_MetaManager::_RemoveDevice(HALS_MetaManager *this, HALS_MetaDevice *a2)
{
  v4 = *(this + 86);
  v5 = *(this + 87);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        v6 = *(this + 87);
        break;
      }
    }
  }

  if (v5 != v6)
  {
    v7 = v5 - (v6 + 1);
    if (v5 != v6 + 1)
    {
      memmove(v6, v6 + 1, v5 - (v6 + 1));
      v4 = *(this + 86);
    }

    v8 = (v6 + v7);
    *(this + 87) = v6 + v7;
    v9 = *(this + 88);
    if (((v6 + v7 - v4) >> 3) + 20 < ((v9 - v4) >> 3))
    {
      v10 = v9 - v4;
      if (v10 > (v8 - v4))
      {
        v11 = v8 - v4;
        if (v8 != v4)
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v8 - v4);
        }

        v12 = 0;
        if (v10 >> 3)
        {
          v13 = 8 * v11;
          v14 = *(this + 87) - v4;
          v15 = 8 * v11 - v14;
          memcpy((v13 - v14), v4, v14);
          v12 = *(this + 86);
          *(this + 86) = v15;
          *(this + 87) = v13;
          *(this + 88) = 0;
        }

        if (v12)
        {
          operator delete(v12);
        }
      }
    }

    HALS_ObjectMap::ObjectIsDead(a2, v4);
  }
}

void sub_1DE3B38D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3B38B0);
}

void ___ZN16HALS_MetaManager9AddDeviceEP15HALS_MetaDevice_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[87];
  v4 = v2[88];
  if (v3 >= v4)
  {
    v6 = v2[86];
    v7 = (v3 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - v6;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = (8 * v7);
    *v11 = *(a1 + 40);
    v5 = 8 * v7 + 8;
    v12 = v2[86];
    v13 = v2[87] - v12;
    v14 = v11 - v13;
    memcpy(v11 - v13, v12, v13);
    v15 = v2[86];
    v2[86] = v14;
    v2[87] = v5;
    v2[88] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v3 = *(a1 + 40);
    v5 = (v3 + 1);
  }

  v2[87] = v5;
}

BOOL HALS_MetaManager::GetPropertyDataSize(HALS_MetaManager *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, unsigned int a4, int *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  return a3->mSelector == 1667327847 || a3->mSelector == 1684105063 || HALS_DeviceManager::GetPropertyDataSize(this, a2, a3, a4, a5, a6) != 0;
}

uint64_t HALS_MetaManager::IsPropertySettable(HALS_MetaManager *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a3->mSelector == 1667327847 || a3->mSelector == 1684105063)
  {
    return 0;
  }

  return HALS_DeviceManager::IsPropertySettable(this, a2, a3);
}

uint64_t HALS_MetaManager::GetMIGDispatchQueue(HALS_MetaManager *this)
{
  return this + 352;
}

{
  return this + 352;
}

uint64_t HALS_MetaManager::GetCommandGate(HALS_MetaManager *this)
{
  return *(this + 42);
}

{
  return *(this + 42);
}

uint64_t HALS_MetaManager::_Deactivate(uint64_t this)
{
  v1 = *(this + 688);
  v2 = *(this + 696);
  v3 = v2 - v1;
  if (v2 != v1)
  {
    if (!((v3 >> 3) >> 61))
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v3 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 8) = 0;
  return this;
}

void sub_1DE3B3CE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_MetaManager::~HALS_MetaManager(std::__shared_weak_count **this)
{
  HALS_MetaManager::~HALS_MetaManager(this);

  JUMPOUT(0x1E12C1730);
}

{
  v15 = *MEMORY[0x1E69E9840];
  *this = &unk_1F596B000;
  if (HALS_MetaManager::sInstance != this)
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "HALS_MetaManager.cpp";
      v11 = 1024;
      v12 = 50;
      v13 = 2080;
      v14 = "sInstance == this";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s HALS_MetaManager::HALS_MetaManager: there can be only one", &v9, 0x1Cu);
    }

    abort();
  }

  HALS_MetaManager::sInstance = 0;
  v2 = this[86];
  if (v2)
  {
    this[87] = v2;
    operator delete(v2);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 44));
  v3 = this[43];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 6));
  v4 = *MEMORY[0x1E69E9840];

  HALS_Object::~HALS_Object(this);
}

void sub_1DE3B3ED0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN16HALS_MetaManager10DeviceDiedEP11HALS_Device_block_invoke(__n128 *a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x4802000000;
  v26 = __Block_byref_object_copy__6128;
  v27 = __Block_byref_object_dispose__6129;
  __p = 0u;
  v29 = 0u;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4002000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__2;
  memset(v22, 0, sizeof(v22));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN15HALS_MetaDevice14RealDeviceDiedEP11HALS_Device_block_invoke;
  v15[3] = &unk_1E8674A30;
  v16 = a1[2];
  v15[4] = &v23;
  v15[5] = &v17;
  v1 = v16.n128_u64[0];
  v2 = (*(*v16.n128_u64[0] + 64))(v16.n128_u64[0], v16);
  HALB_CommandGate::ExecuteCommand(v2, v15);
  v3 = v24[5];
  v4 = v24[6];
  if (v3 != v4)
  {
    HALS_Object::PropertiesChanged(v1, v1[4], 0, -1431655765 * ((v4 - v3) >> 2), v3);
  }

  v5 = v18[5];
  v6 = v18[6] - v5;
  if ((v6 & 0x1FFFFFFFE0) != 0)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8 >= v6 >> 5)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v9 = v5 + v7;
      v10 = HALS_ObjectMap::CopyObjectByObjectID(*(v5 + v7 + 24));
      v12 = v10;
      v13 = *(v9 + 8);
      if (*v9 != v13 && v10 != 0)
      {
        HALS_Object::PropertiesChanged(v1, *(v10 + 16), 0, -1431655765 * ((v13 - *v9) >> 2), *v9);
      }

      HALS_ObjectMap::ReleaseObject(v12, v11);
      ++v8;
      v5 = v18[5];
      v6 = v18[6] - v5;
      v7 += 32;
    }

    while (v8 < (v6 >> 5));
  }

  _Block_object_dispose(&v17, 8);
  v30 = v22;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&v30);
  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }
}

void sub_1DE3B4130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a17, 8);
  *(v32 - 72) = v31;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100]((v32 - 72));
  _Block_object_dispose(&a25, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AMCP::Meta::Stream::~Stream(AMCP::Meta::Stream *this)
{
  *this = &unk_1F596B180;
  AMCP::Core::Broker::destroy_core(*(*(this + 1) + 16), *(this + 6));
  *this = &unk_1F59748E8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596B180;
  AMCP::Core::Broker::destroy_core(*(*(this + 1) + 16), *(this + 6));
  *this = &unk_1F59748E8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void AMCP::Meta::Stream::update_core_common()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = 0x676C6F6273646972;
  LODWORD(v1) = 0;
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE3B4C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, std::runtime_error a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v42 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v42 - 184);
  std::runtime_error::~runtime_error(&a34);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (v41)
  {
    __cxa_free_exception(v40);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a38);
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<AMCP::Direction ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Direction ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(uint64_t a1)
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

void sub_1DE3B504C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(uint64_t a1)
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

void sub_1DE3B530C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v5)
  {
    v3 = 0x676C6F626F776E72;
    v4 = 0;
    v1 = AMCP::Core::Core::call_operation_function<unsigned int>(v5, &v3);
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v1;
}

void sub_1DE3B53E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B538;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINSt3__16vectorINS3_5tupleIJN2CA14ValueRangeListENS6_17StreamDescriptionEEEENS3_9allocatorIS9_EEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(&v3, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a2, v3, v4, (v4 - v3) >> 6);
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>::dispatch;
  v5 = &v3;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1DE3B5558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597EF58;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597EF58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597EF58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>())
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
      std::__function::__value_func<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  AMCP::Core::Broker::fetch_core(&v13, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v13)
  {
    v11 = 0x676C6F62666D7423;
    v12 = 0;
    operation = AMCP::Core::Core::find_operation(&v25, v13, &v11);
    if (!v25)
    {
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(operation);
      }

      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "Core.h";
        v29 = 1024;
        v30 = 202;
        _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Operation does not have requested function", &v16);
      std::runtime_error::runtime_error(&v17, &v16);
      std::runtime_error::runtime_error(&v18, &v17);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = -1;
      v18.__vftable = &unk_1F5992170;
      v19 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
      v31 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::vector<std::tuple<CA::ValueRangeList, CA::StreamDescription>>, Argument_Types = <>]";
      v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v33 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
    }

    AMCP::Core::Operation::call_function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(a2, v25);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v4 = v14;
  if (v14)
  {
    v5 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE3B5C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v28)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 145));
  v31 = *(v29 - 136);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B4B8;
  a2[1] = v2;
  return result;
}

void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(uint64_t a1)
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

void sub_1DE3B5F10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN2CA17StreamDescriptionEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<CA::StreamDescription>(&v3, (a1 + 8));
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
  operator new();
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597F068;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597F068;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597F068;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<CA::StreamDescription ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<CA::StreamDescription ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<CA::StreamDescription ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<CA::StreamDescription ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<CA::StreamDescription ()(void)>>())
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
      std::__function::__value_func<CA::StreamDescription ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<CA::StreamDescription ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::StreamDescription ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::StreamDescription ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN2CA17StreamDescriptionEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 40);
  return result;
}

__n128 std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596B438;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4>,int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4>,int ()(void)>::operator()(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  AMCP::Core::Broker::fetch_core(&v10, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v10)
  {
    v8 = 0x676C6F62736C7463;
    v9 = 0;
    AMCP::Core::Core::find_operation(&v22, v10, &v8);
    if (!v22)
    {
      v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v4 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "Core.h";
        v26 = 1024;
        v27 = 202;
        _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Operation does not have requested function", &v13);
      std::runtime_error::runtime_error(&v14, &v13);
      std::runtime_error::runtime_error(&v15, &v14);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = -1;
      v15.__vftable = &unk_1F5992170;
      v16 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v15);
      v28 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = int, Argument_Types = <>]";
      v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v30 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
    }

    v1 = AMCP::Core::Operation::call_function<int>(v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else
  {
    v1 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_1DE3B6878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v28)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 145));
  v31 = *(v29 - 136);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4>,int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B3B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v5)
  {
    v3 = 0x676C6F627465726DLL;
    v4 = 0;
    v1 = AMCP::Core::Core::call_operation_function<unsigned int>(v5, &v3);
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v1;
}

void sub_1DE3B6A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B338;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_2>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_2>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B2B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v5)
  {
    v3 = 0x676C6F6274617073;
    v4 = 0;
    v1 = AMCP::Core::Core::call_operation_function<unsigned int>(v5, &v3);
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v1;
}

void sub_1DE3B6CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B238;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINS_9DirectionEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = AMCP::Core::Operation::call_function<AMCP::Direction>((a1 + 8));
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = v3;
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598CA18;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CA18;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CA18;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Direction ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Direction ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Direction ()(void)>>())
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
      std::__function::__value_func<AMCP::Direction ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<AMCP::Direction ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Direction ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Direction ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_0>,AMCP::Direction ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_0>,AMCP::Direction ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B1B8;
  a2[1] = v2;
  return result;
}

void AMCP::Meta::Stream::Stream(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &unk_1F596B180;
  *(a1 + 24) = 0;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 36) = a6;
  *(a1 + 40) = a7;
  v8 = AMCP::Core::Broker::reserve_id(*(a2 + 16));
  *(a1 + 24) = v8;
  *__p = 0u;
  *v12 = 0u;
  v13 = 1065353216;
  v9 = 0x676C6F6269646E74;
  LODWORD(v10) = 0;
  LODWORD(v14) = v8;
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
}

void sub_1DE3B7584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v4 - 48));
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va);
  *v3 = &unk_1F59748E8;
  v6 = v3[2];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void AMCP::Meta::Stream::update_core(AMCP::Meta::Stream *this)
{
  AMCP::Core::Broker::fetch_core(&v1, *(*(this + 1) + 16), *(this + 6));
  if (v1)
  {
    AMCP::Meta::Stream::update_core_common();
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE3B774C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_1DE3B79D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    HALS_ClockDeviceState::sStandardDevicePropertiesToCapture = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE3B78FCLL);
  }

  _Unwind_Resume(a1);
}

void HALS_ClockDeviceState::HALS_ClockDeviceState(HALS_ClockDeviceState *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = this + 16;
  pthread_once(&HALS_ClockDeviceState::sPropertiesToCaptureInitialized, HALS_ClockDeviceState::InitializeStandardPropertiesToCapture);
}

void HALS_ClockDeviceState::Capture(HALS_ClockDeviceState *this, HALS_ClockDevice *a2, const CAPropertyAddressList *a3)
{
  v74[2] = *MEMORY[0x1E69E9840];
  *this = *(a2 + 4);
  v6 = (this + 16);
  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*(this + 2));
  *(this + 1) = v6;
  *(this + 3) = 0;
  *v6 = 0;
  v9 = *a3;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 2);
  if (!v10)
  {
    goto LABEL_86;
  }

  v11 = 0;
  do
  {
    v56 = 0;
    v55 = 0;
    if (v10 > v11)
    {
      v12 = v9 + 12 * v11;
      v13 = *(v12 + 8);
      v55 = *v12;
      v56 = v13;
      v14 = v55 == 707406378 || HIDWORD(v55) == 707406378;
      if (v14 || v13 == -1)
      {
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v67 = "HALS_ClockDeviceState.cpp";
          LOWORD(v68) = 1024;
          *(&v68 + 2) = 60;
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ClockDeviceState::Capture: properties with a wildcard are not supported", buf, 0x12u);
        }
      }
    }

    PropertyQualifierDataType = HALB_Info::GetPropertyQualifierDataType(v55, 0, v8);
    if (PropertyQualifierDataType)
    {
      v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v21 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(PropertyQualifierDataType);
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
        *buf = 136315394;
        v67 = "HALS_ClockDeviceState.cpp";
        LOWORD(v68) = 1024;
        *(&v68 + 2) = 61;
        _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ClockDeviceState::Capture: properties with a qualifier are not supported", buf, 0x12u);
      }
    }

    IsAVTProperty = HALB_Info::IsAVTProperty(v55);
    if (IsAVTProperty)
    {
      v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v27 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(IsAVTProperty);
      }

      v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        v30 = *v29;
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      else
      {
        v30 = *v29;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v67 = "HALS_ClockDeviceState.cpp";
        LOWORD(v68) = 1024;
        *(&v68 + 2) = 62;
        _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ClockDeviceState::Capture: properties that use an AVT are not supported", buf, 0x12u);
      }
    }

    memset(v53, 0, 80);
    v53[10] = &unk_1F5991080;
    cf = 0;
    PropertyDataType = HALB_Info::GetPropertyDataType(v55, 0, v26);
    v52 = PropertyDataType;
    if (PropertyDataType <= 1718367025)
    {
      if (PropertyDataType == 1634951780)
      {
        if (!(*(*a2 + 96))(a2, *(a2 + 4), &v55, 0))
        {
          goto LABEL_85;
        }

        v36 = *(a2 + 4);
        v63 = 0;
        (*(*a2 + 120))(a2, v36, &v55, 40, &v63, &v53[5], 0, 0, 0);
        goto LABEL_65;
      }

      if (PropertyDataType != 1667658612 && PropertyDataType != 1668641388)
      {
        goto LABEL_54;
      }

LABEL_49:
      if (!(*(*a2 + 96))(a2, *(a2 + 4), &v55, 0))
      {
        goto LABEL_85;
      }

      v34 = *(a2 + 4);
      v65 = 0;
      v64 = 0;
      (*(*a2 + 120))(a2, v34, &v55, 8, &v64, &v65, 0, 0, 0);
      v35 = cf;
      cf = v65;
      if (v35)
      {
        CFRelease(v35);
      }

      goto LABEL_65;
    }

    if (PropertyDataType > 1886155635)
    {
      if (PropertyDataType == 1886155636)
      {
        goto LABEL_49;
      }

      if (PropertyDataType != 1969828658)
      {
        goto LABEL_54;
      }

      if (!(*(*a2 + 96))(a2, *(a2 + 4), &v55, 0))
      {
        goto LABEL_85;
      }

      v33 = *(a2 + 4);
      v57 = 0;
      v58 = 0;
      (*(*a2 + 120))(a2, v33, &v55, 4, &v57, &v58, 0, 0, 0);
      LODWORD(v53[3]) = v58;
    }

    else
    {
      if (PropertyDataType == 1718367026)
      {
        if (!(*(*a2 + 96))(a2, *(a2 + 4), &v55, 0))
        {
          goto LABEL_85;
        }

        v40 = *(a2 + 4);
        v59 = 0;
        v60 = 0;
        (*(*a2 + 120))(a2, v40, &v55, 4, &v59, &v60, 0, 0, 0);
        HIDWORD(v53[3]) = v60;
        goto LABEL_65;
      }

      if (PropertyDataType != 1718367796)
      {
LABEL_54:
        if (!(*(*a2 + 96))(a2, *(a2 + 4), &v55, 0))
        {
          goto LABEL_85;
        }

        v52 = 1918990199;
        v37 = (*(*a2 + 112))(a2, *(a2 + 4), &v55, 0, 0, 0);
        v38 = v37;
        *buf = v37;
        v39 = v53[0];
        if (v37 <= (v53[1] - v53[0]))
        {
          if (v37 < (v53[1] - v53[0]))
          {
            v53[1] = &v53[0][v37];
          }
        }

        else
        {
          std::vector<unsigned char>::__append(v53, v37 - (v53[1] - v53[0]));
          v38 = *buf;
          v39 = v53[0];
        }

        (*(*a2 + 120))(a2, *(a2 + 4), &v55, v38, buf, v39, 0, 0, 0);
        if (*buf <= (v53[1] - v53[0]))
        {
          if (*buf < (v53[1] - v53[0]))
          {
            v53[1] = &v53[0][*buf];
          }
        }

        else
        {
          std::vector<unsigned char>::__append(v53, *buf - (v53[1] - v53[0]));
        }

        goto LABEL_65;
      }

      if (!(*(*a2 + 96))(a2, *(a2 + 4), &v55, 0))
      {
        goto LABEL_85;
      }

      v32 = *(a2 + 4);
      v62 = 0;
      v61 = 0;
      (*(*a2 + 120))(a2, v32, &v55, 8, &v61, &v62, 0, 0, 0);
      v53[4] = v62;
    }

LABEL_65:
    v41 = *(a2 + 4);
    v67 = v55;
    v68 = __PAIR64__(v52, v56);
    *buf = v41;
    memset(v69, 0, sizeof(v69));
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v69, v53[0], v53[1], v53[1] - v53[0]);
    v70 = *&v53[3];
    v71 = *&v53[5];
    v72 = *&v53[7];
    v73 = v53[9];
    OS::CF::UntypedObject::UntypedObject(v74, cf);
    v42 = *v6;
    if (!*v6)
    {
LABEL_83:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v43 = v42;
        v44 = *(v42 + 8);
        if (*buf >= v44)
        {
          break;
        }

LABEL_67:
        v42 = *v43;
        if (!*v43)
        {
          goto LABEL_83;
        }
      }

      if (*buf != v44)
      {
        v50 = v44 >= *buf;
        goto LABEL_81;
      }

      v45 = *(v43 + 10);
      v46 = HIDWORD(v67) >= v45;
      if (HIDWORD(v67) == v45)
      {
        v47 = *(v43 + 9);
        v46 = v67 >= v47;
        if (v67 == v47)
        {
          v46 = v68 >= *(v43 + 11);
        }
      }

      if (!v46)
      {
        goto LABEL_67;
      }

      if (v44 >= *buf)
      {
        break;
      }

LABEL_82:
      v42 = v43[1];
      if (!v42)
      {
        goto LABEL_83;
      }
    }

    if (*buf != v44)
    {
      goto LABEL_84;
    }

    v48 = *(v43 + 10);
    v50 = v48 >= HIDWORD(v67);
    if (v48 == HIDWORD(v67))
    {
      v49 = *(v43 + 9);
      v50 = v49 >= v67;
      if (v49 == v67)
      {
        v50 = *(v43 + 11) >= v68;
      }
    }

LABEL_81:
    if (!v50)
    {
      goto LABEL_82;
    }

LABEL_84:
    HALS_DeviceState::Value::~Value((&v68 + 4));
LABEL_85:
    HALS_DeviceState::Value::~Value(&v52);
    ++v11;
    v9 = *a3;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 2);
  }

  while (v11 < v10);
LABEL_86:
  v51 = *MEMORY[0x1E69E9840];
}