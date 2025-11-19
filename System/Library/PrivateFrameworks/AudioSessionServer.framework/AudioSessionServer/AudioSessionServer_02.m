unint64_t avas::server::DeviceTimeObserver::SharedBlockOwner::deviceTimeAtIdx(avas::server::DeviceTimeObserver::SharedBlockOwner *this, unint64_t a2)
{
  v3 = caulk::ipc::mapped_memory::get_ptr<avas::DTSharedBlock>(this + 2, 0);
  if (a2 >= 0x42)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  return v3 + 136 * a2 + 56480;
}

__n128 caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::store(unsigned int *a1, uint64_t a2)
{
  for (i = 0; ; caulk::concurrent::details::spinloop::spin(&i))
  {
    v4 = atomic_load(a1);
    if ((v4 & 1) == 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong(a1, &v5, v4 | 1);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = v4 >> 2;
  v7 = v4 & 0xFFFFFFFC;
  v8 = &a1[12 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 2);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 1) = result;
  *(v8 + 2) = v10;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 2);
  atomic_store((v7 + 5) & 0xFFFFFFFC | 2, a1);
  return result;
}

uint64_t avas::util::interpolateTimeStamp@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v4)
  {
    v7 = 1.0;
    v8 = *(result + 40);
    if (*result)
    {
      v7 = *(result + 48);
    }

    v9 = llround(v5 * 41.6666667 * v7) + *(result + 16);
    *a3 = *result;
    *(a3 + 1) = *(result + 1);
    *(a3 + 8) = a2;
    *(a3 + 16) = v9;
    *(a3 + 24) = *(result + 24);
    *(a3 + 40) = v8;
    *(a3 + 48) = v7;
  }

  else
  {
    v6 = *(result + 16);
    *a3 = *result;
    *(a3 + 16) = v6;
    *(a3 + 32) = *(result + 32);
    *(a3 + 48) = *(result + 48);
  }

  return result;
}

void avas::server::DeviceTimeObserver::sessionIsActive(avas::server::DeviceTimeObserver *this, unsigned int a2, char a3)
{
  v9 = a2;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::find(this + 3, &v9, &v8);
  v5 = *(this + 3);
  v6 = *(this + 4);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v8 != v5 + 32 * v6)
  {
    *(*(v8 + 8) + 12) = a3;
  }
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (a2 >= 0xA)
    {
      v6 = 4;
      v7 = a2;
      while (1)
      {
        if (v7 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_15;
        }

        if (v7 <= 0x3E7)
        {
          break;
        }

        if (v7 >> 4 < 0x271)
        {
          goto LABEL_15;
        }

        v8 = v7 >> 5;
        v7 /= 0x2710uLL;
        v6 += 4;
        if (v8 <= 0xC34)
        {
          v6 -= 3;
          goto LABEL_15;
        }
      }

      --v6;
LABEL_15:
      if (v6 >= 0x3F)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
      }

      v3 = a1 + v6 + 16;
      if (a2 < 0x64)
      {
        v9 = a2;
      }

      else
      {
        do
        {
          v9 = v2 / 0x64;
          *(v3 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (v2 % 0x64)];
          v3 -= 2;
          v10 = v2 >> 4;
          v2 /= 0x64uLL;
        }

        while (v10 > 0x270);
      }

      if (v9 >= 0xA)
      {
        *(v3 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * v9];
LABEL_24:
        v11 = (**a1)[1];

        return v11();
      }

      LOBYTE(v2) = v9;
    }

    else
    {
      v3 = a1 + 17;
    }

    *(v3 - 1) = v2 | 0x30;
    goto LABEL_24;
  }

  v4 = ***a1;

  return v4();
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},AVAudioSessionSpatialPreferences * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1)
  {
    v5 = MEMORY[0x245CEF0E0](v3);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP32AVAudioSessionSpatialPreferencesEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c168_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP32AVAudioSessionSpatialPreferencesEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E__e54_v24__0__NSError_8__AVAudioSessionSpatialPreferences_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v9 = MEMORY[0x245CEF0E0](v4);
    v11 = v8;
    v12 = MEMORY[0x245CEF0E0](v9);
    v5 = MEMORY[0x245CEF0E0](v10);

    v6 = v11;
    v11 = 0;
  }

  return v5;
}

uint64_t __copy_helper_block_ea8_32c168_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP32AVAudioSessionSpatialPreferencesEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},AVAudioSessionSpatialPreferences * {__strong}>(void({block_pointer})(NSError * {__strong},AVAudioSessionSpatialPreferences * {__strong}),int)::{lambda(NSError *,AVAudioSessionSpatialPreferences *)#1}::operator()(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = applesauce::dispatch::v1::queue::operator*(a1);
  dispatch_source_cancel(v6);

  (*(*(a1 + 8) + 16))();
}

void __destroy_helper_block_ea8_32c168_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP32AVAudioSessionSpatialPreferencesEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

id avas::server::GetActivationQueue(avas::server *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.coreaudio.ActivationQueue");
    avas::CreateFixedPriorityDispatchQueue(__p, QOS_CLASS_USER_INTERACTIVE, &avas::server::GetActivationQueue(void)::callbackQueue);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v1 = applesauce::dispatch::v1::queue::operator*(&avas::server::GetActivationQueue(void)::callbackQueue);

  return v1;
}

void sub_24172B4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::GetProxyProcessPID(_anonymous_namespace_ *this, avas::server::AudioSessionInfoAccessor *a2, const audit_token_t *a3)
{
  v4 = *(a2 + 1);
  *v14.val = *a2;
  *&v14.val[4] = v4;
  v5 = audit_token_to_pid(&v14);
  v6 = *this;
  if (!*this)
  {
    avas::server::require_acq::GetAudioQueueOptions();
  }

  v7 = v5;
  v8 = *(this + 1);
  if (!v8)
  {
    if (v7 == *(v6 + 84))
    {
      goto LABEL_4;
    }

LABEL_6:
    v12 = v7 & 0xFFFFFF00;
    v11 = v7;
    v10 = 0x100000000;
    return v10 | v12 | v11;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = *(v6 + 84);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (v7 != v9)
  {
    goto LABEL_6;
  }

LABEL_4:
  v10 = 0;
  v11 = 0;
  v12 = 0;
  return v10 | v12 | v11;
}

uint64_t avas::server::ff_acq::GetInterruptionPriority(avas::server::ff_acq *this, avas::server::AudioSessionInfoAccessor *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (!*this)
  {
    avas::server::require_acq::GetAudioQueueOptions();
  }

  v3 = *(this + 1);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::mx::MXAccessor::GetMXProperty(*(v2 + 120), *MEMORY[0x277D271F0], &v9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v9 || (v4 = v10) == 0)
  {
    v5 = *avas::server::gSessionServerLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "AudioSessionServerImp_iOS.mm";
      v13 = 1024;
      v14 = 847;
      _os_log_impl(&dword_241701000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error reading kMXSessionProperty_ClientPriority. Assuming default priority.", buf, 0x12u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [v10 intValue];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void anonymous namespace::BuildActivationDetailsJSON(int a1@<W2>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = "exit";
  if (a1)
  {
    v4 = "entry";
  }

  v5 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v6);
}

void sub_24172B8DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(va);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(v2);
  _Unwind_Resume(a1);
}

uint64_t avas::server::mx::MXObjectBase::ActivateMXSession(avas::server::mx::MXObjectBase *this, unint64_t a2, __SecTask *a3)
{
  v7 = 0;
  pthread_threadid_np(0, &v7);
  ACQThreadID = GetACQThreadID();
  v5 = *(this + 2);
  if (v7 == ACQThreadID)
  {
    return _MXSessionBeginInterruption_WithSecTaskAndFlags();
  }

  else
  {
    return MXSessionBeginInterruption_WithSecTaskAndFlags();
  }
}

uint64_t avas::server::forbid_acq::SetPropertyLocal(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v90[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  if (avas::AudioSessionMuteEnabled(void)::enabled != 1 || ![v7 isEqualToString:@"MuteSessionInputs"])
  {
    v16 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v73, a1, a2, 1);
    v17 = v73;
    if (!v73)
    {
      v15 = 561210739;
      v21 = *avas::server::gSessionServerLog(v16);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
LABEL_52:
        avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v73);
        goto LABEL_53;
      }

      *buf = 136315650;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[12] = 1024;
      *&buf[14] = 586;
      *&buf[18] = 1024;
      *&buf[20] = a1;
      v22 = "%25s:%-5d Cannot get session info for session ID: 0x%x";
      v23 = v21;
      v24 = OS_LOG_TYPE_DEFAULT;
      v25 = 24;
LABEL_11:
      _os_log_impl(&dword_241701000, v23, v24, v22, buf, v25);
      goto LABEL_52;
    }

    v18 = v74;
    if (v74)
    {
      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      v19 = v73;
      v20 = v17 + 59;
      if (!v73)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v20 = v73 + 59;
      v19 = v73;
    }

    os_unfair_lock_unlock(v19 + 134);
    v75 = 0;
LABEL_14:
    if ([v7 isEqualToString:@"AS_HostProcessAttribution"])
    {
      v26 = avas::server::TranslateSetter_HostProcessAttribution(v8, a2);
      v15 = avas::server::forbid_acq::SetPropertyMX(a1, a2, *MEMORY[0x277D27270], v26);

      goto LABEL_52;
    }

    if ([v7 isEqualToString:@"RecordingFromRemoteInput"])
    {
      v27 = v8;
      v28 = v27;
      if (v27)
      {
        v29 = avas::server::GetAudioControlQueue(v27);
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = ___ZN4avas6server10forbid_acq16SetPropertyLocalEjRK13audit_token_tP8NSStringPU25objcproto14NSSecureCoding11objc_object_block_invoke_123;
        v68[3] = &unk_278CEADC0;
        v72 = a1;
        v70 = &v82;
        v71 = v20;
        v69 = v28;
        avas::server::DispatchBlock(v29, v68, 1, "SetPropertyLocal", "AudioSessionServerImp_iOS.mm", 607, 0, 0);

        v15 = *(v83 + 6);
      }

      else
      {
        v15 = 4294967246;
      }

      goto LABEL_52;
    }

    v30 = [v7 isEqualToString:@"PreferredMicrophoneInjectionMode"];
    if (v30)
    {
      v31 = avas::server::LegacySessionManager::Instance(v30);
      v32 = [v8 intValue];
      v33 = v32;
      avas::server::LegacySessionManager::SetPreferredMicrophoneInjectionMode(v31, v32, a1);
      v34 = v73;
      if (!v73)
      {
        v62 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v62 process:? delegate:?];
      }

      v35 = v74;
      if (v74)
      {
        atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        v36 = *&v34[28]._os_unfair_lock_opaque;
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      else
      {
        v36 = *&v73[28]._os_unfair_lock_opaque;
      }

      v50 = objc_opt_respondsToSelector();
      if (v50)
      {
        v51 = *avas::server::gSessionServerLog(v50);
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_INFO);
        if (v52)
        {
          *buf = 136315906;
          *&buf[4] = "AudioSessionServerImp_iOS.mm";
          *&buf[12] = 1024;
          *&buf[14] = 622;
          *&buf[18] = 1024;
          *&buf[20] = v32;
          *&buf[24] = 1024;
          *&buf[26] = a1;
          _os_log_impl(&dword_241701000, v51, OS_LOG_TYPE_INFO, "%25s:%-5d Updating audio toolbox about preferredMicrophoneInjectionMode to %d for session:0x%x", buf, 0x1Eu);
        }

        v53 = avas::server::GetAudioControlQueue(v52);
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = ___ZN4avas6server10forbid_acq16SetPropertyLocalEjRK13audit_token_tP8NSStringPU25objcproto14NSSecureCoding11objc_object_block_invoke_124;
        v64[3] = &unk_278CEAC28;
        v65 = v36;
        v66 = v33;
        v67 = a1;
        avas::server::DispatchBlock(v53, v64, 1, "SetPropertyLocal", "AudioSessionServerImp_iOS.mm", 626, 0, 0);
      }

      else
      {
        v54 = *avas::server::gSessionServerLog(v50);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "AudioSessionServerImp_iOS.mm";
          *&buf[12] = 1024;
          *&buf[14] = 630;
          *&buf[18] = 1024;
          *&buf[20] = v32;
          *&buf[24] = 1024;
          *&buf[26] = a1;
          _os_log_impl(&dword_241701000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot update audio toolbox about preferredMicrophoneInjectionMode to %d for session:0x%x", buf, 0x1Eu);
        }
      }

      goto LABEL_40;
    }

    v37 = [v7 isEqualToString:@"SubscribeToMicrophoneInjectionCapabilityChangeNotification"];
    if (v37)
    {
      v38 = avas::server::LegacySessionManager::Instance(v37);
      v39 = *(a2 + 16);
      *buf = *a2;
      *&buf[16] = v39;
      avas::server::LegacySessionManager::SubscribeToMicrophoneInjectionCapabilityChangeNotification(v38, buf, v8);
      v41 = *avas::server::gSessionServerLog(v40);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
LABEL_40:
        v15 = 0;
        goto LABEL_52;
      }

      *buf = 136315650;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[12] = 1024;
      *&buf[14] = 641;
      *&buf[18] = 2112;
      *&buf[20] = v8;
      v42 = "%25s:%-5d Setting SubscribeToMicrophoneInjectionCapabilityChangeNotification for process:%@";
      v43 = v41;
      v44 = 28;
LABEL_26:
      _os_log_impl(&dword_241701000, v43, OS_LOG_TYPE_INFO, v42, buf, v44);
      goto LABEL_40;
    }

    v45 = [v7 isEqualToString:@"MicrophoneInjectionIsEnabled"];
    if (v45)
    {
      v46 = [v8 BOOLValue];
      v47 = avas::server::LegacySessionManager::Instance(v46);
      avas::server::LegacySessionManager::SetMicrophoneInjectionIsEnabled(v47, v46);
      v49 = *avas::server::gSessionServerLog(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        *&buf[4] = "AudioSessionServerImp_iOS.mm";
        *&buf[12] = 1024;
        *&buf[14] = 647;
        *&buf[18] = 1024;
        *&buf[20] = v46;
        *&buf[24] = 1024;
        *&buf[26] = a1;
        _os_log_impl(&dword_241701000, v49, OS_LOG_TYPE_INFO, "%25s:%-5d Setting MicrophoneInjectionMode to %d for session:0x%x", buf, 0x1Eu);
      }

      goto LABEL_51;
    }

    if ((avas::EnhanceDialogueBriocheEnabled(v45) & 1) != 0 || ![v7 isEqualToString:@"AllowEnhanceDialogue"])
    {
LABEL_51:
      v15 = 4294967246;
      goto LABEL_52;
    }

    v55 = v73;
    if (!v73)
    {
      v63 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v63 process:? delegate:?];
    }

    v56 = v74;
    if (v74)
    {
      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v57 = avas::server::ConstAudioSessionInfo::SetAVASProperty(v55, @"AllowEnhanceDialogue", v8);
    v15 = v57;
    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    if (!v15)
    {
      v61 = *avas::server::gSessionServerLog(v57);
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 136315906;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[12] = 1024;
      *&buf[14] = 657;
      *&buf[18] = 2112;
      *&buf[20] = v8;
      *&buf[28] = 1024;
      *&buf[30] = a1;
      v42 = "%25s:%-5d Setting AllowEnhanceDialogue %@ for session:0x%x";
      v43 = v61;
      v44 = 34;
      goto LABEL_26;
    }

    v58 = *avas::server::gSessionServerLog(v57);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136316162;
    *&buf[4] = "AudioSessionServerImp_iOS.mm";
    *&buf[12] = 1024;
    *&buf[14] = 654;
    *&buf[18] = 2112;
    *&buf[20] = v8;
    *&buf[28] = 1024;
    *&buf[30] = a1;
    v87 = 1024;
    v88 = v15;
    v22 = "%25s:%-5d Failed to set AllowEnhanceDialogue %@ for session:0x%x, err: %d";
    v23 = v58;
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 40;
    goto LABEL_11;
  }

  v89[0] = @"RemoteClientID";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  v90[0] = v9;
  v10 = *MEMORY[0x277D27260];
  v89[1] = v10;
  v90[1] = MEMORY[0x277CBEC28];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];

  v13 = avas::server::GetAudioControlQueue(v12);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = ___ZN4avas6server10forbid_acq16SetPropertyLocalEjRK13audit_token_tP8NSStringPU25objcproto14NSSecureCoding11objc_object_block_invoke;
  v76[3] = &unk_278CEAD98;
  v81 = a1;
  v79 = &v82;
  v80 = a2;
  v77 = v8;
  v14 = v11;
  v78 = v14;
  avas::server::DispatchBlock(v13, v76, 1, "SetPropertyLocal", "AudioSessionServerImp_iOS.mm", 579, 0, 0);

  v15 = *(v83 + 6);
LABEL_53:
  _Block_object_dispose(&v82, 8);

  v59 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_24172C2FC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 192), 8);

  _Unwind_Resume(a1);
}

void ___ZN4avas6server10forbid_acq16SetPropertyLocalEjRK13audit_token_tP8NSStringPU25objcproto14NSSecureCoding11objc_object_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v22, *(a1 + 64), *(a1 + 56), 1);
  v2 = v22;
  if (v22)
  {
    v3 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = (*(*v2 + 16))(v2);
    v5 = v4;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v6 = *(a1 + 64);
    v7 = *avas::server::gSessionServerLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      v9 = [*(a1 + 32) BOOLValue];
      v10 = "Proxy session";
      *buf = 136316418;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[12] = 1024;
      *&buf[14] = 574;
      if (v5 == v6)
      {
        v10 = "Source session";
      }

      v25 = 2080;
      v26 = v10;
      v27 = 1024;
      v11 = "MUTED";
      v28 = v8;
      if (!v9)
      {
        v11 = "UNMUTED";
      }

      v29 = 2080;
      v30 = v11;
      v31 = 1024;
      v32 = v5;
      _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s 0x%x setting input mute: %s on session 0x%x", buf, 0x32u);
    }

    v13 = avas::server::LegacySessionManager::Instance(v12);
    if (!v22)
    {
      v18 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v18 process:? delegate:?];
    }

    v20 = v22;
    v21 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::LegacySessionManager::FindAudioApplicationForSession(v13, &v20, 1, buf);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v14 = *&buf[8];
    v19[0] = *buf;
    v19[1] = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    *(*(*(a1 + 48) + 8) + 24) = avas::server::require_acq::MuteSessionInput(v19, *(a1 + 64), *(a1 + 56), *(a1 + 32), *(a1 + 40));
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  else
  {
    v15 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 64);
      *buf = 136315650;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[12] = 1024;
      *&buf[14] = 566;
      v25 = 1024;
      LODWORD(v26) = v16;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 561210739;
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24172C6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::require_acq::MuteSessionInput(uint64_t a1, unsigned int a2, const audit_token_t *a3, void *a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  if ((avas::AudioSessionMuteEnabled(void)::enabled & 1) == 0)
  {
    v18 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v18 process:? delegate:?];
  }

  v11 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(v20, a2, a3, 1);
  if (v20[0])
  {
    if (v9)
    {
      v12 = *(a1 + 8);
      v19[0] = *a1;
      v19[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
      }

      v13 = avas::server::require_acq::MuteSessionInput(v19, v20, [v9 BOOLValue], v10);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    else
    {
      v15 = *avas::server::gSessionServerLog(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "AudioSessionServerImp_iOS.mm";
        v23 = 1024;
        v24 = 272;
        v25 = 1024;
        v26 = a2;
        _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - nil mute value provided, session ID: 0x%x", buf, 0x18u);
      }

      v13 = 4294967246;
    }
  }

  else
  {
    v13 = 561210739;
    v14 = *avas::server::gSessionServerLog(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "AudioSessionServerImp_iOS.mm";
      v23 = 1024;
      v24 = 268;
      v25 = 1024;
      v26 = a2;
      _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
    }
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(v20);

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_24172C9C4(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t avas::server::require_acq::MuteSessionInput(avas::server::AudioApplicationInfo **a1, os_unfair_lock_s **a2, uint64_t a3, void *a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v64 = a4;
  v7 = *a2;
  if (!*a2)
  {
    v51 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v51 process:? delegate:?];
  }

  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = (*(*&v7->_os_unfair_lock_opaque + 16))(v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v10 = *a2;
  if (!*a2)
  {
    v52 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v52 process:? delegate:?];
  }

  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_opaque = v10[21]._os_unfair_lock_opaque;
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    v10 = *a2;
    if (!*a2)
    {
      v53 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v53 process:? delegate:?];
    }

    v13 = a2[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v63 = *&v10[28]._os_unfair_lock_opaque;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_13;
    }
  }

  else
  {
    os_unfair_lock_opaque = v10[21]._os_unfair_lock_opaque;
  }

  v63 = *&v10[28]._os_unfair_lock_opaque;
LABEL_13:
  v14 = *a2;
  if (!*a2)
  {
    v54 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v54 process:? delegate:?];
  }

  v15 = a2[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(**(*&v14[30]._os_unfair_lock_opaque + 8) + 64))(v68);
  v16 = *v68;
  v17 = v16;
  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v17)
  {
    if (*a2)
    {
      os_unfair_lock_unlock(*a2 + 134);
      *(a2 + 16) = 0;
    }

    v68[0] = 1;
    *&v68[4] = 3974;
    *&v68[8] = v9;
    *&v68[16] = 0;
    v69 = 0;
    v70 = 0;
    kdebug_trace();
    v18 = [v63 muteSessionInput:v9 clientPID:os_unfair_lock_opaque muted:a3];
    v19 = v18;
    if (*a2)
    {
      os_unfair_lock_lock(*a2 + 134);
      *(a2 + 16) = 1;
    }

    if (v19)
    {
      v59 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v59 process:? delegate:?];
    }

    v20 = *avas::server::gSessionServerLog(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = "UNMUTED";
      *buf = 136315906;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[14] = 302;
      *&buf[12] = 1024;
      if (a3)
      {
        v21 = "MUTED";
      }

      v66 = 1024;
      *v67 = v9;
      *&v67[4] = 2080;
      *&v67[6] = v21;
      _os_log_impl(&dword_241701000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session ID 0x%x is setting an input mute state of %s", buf, 0x22u);
    }

    v62 = [v64 objectForKeyedSubscript:@"RemoteClientID"];
    v60 = a1;
    v22 = *MEMORY[0x277D27260];
    v61 = [v64 objectForKeyedSubscript:v22];

    v24 = 1;
    if (v61 && v62)
    {
      v25 = *a2;
      if (!*a2)
      {
        v57 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v57 process:? delegate:?];
      }

      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*&v25->_os_unfair_lock_opaque + 64))(buf, v25, [v62 unsignedIntValue]);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (*buf && avas::server::ProcessIdentity::ProcessHasEntitlement((*buf + 232), "com.apple.private.coreaudio.mutenotificationincludecontextkey"))
      {
        v24 = [v61 BOOLValue];
      }

      else
      {
        v24 = 1;
      }

      v23 = *&buf[8];
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    v32 = *avas::server::gSessionServerLog(v23);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = "NO";
      *buf = 136315906;
      *&buf[4] = "AudioSessionServerImp_iOS.mm";
      *&buf[14] = 322;
      v66 = 2080;
      *&buf[12] = 1024;
      if (v24)
      {
        v33 = "YES";
      }

      *v67 = v33;
      *&v67[8] = 1024;
      *&v67[10] = v9;
      _os_log_impl(&dword_241701000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d client setting input mute has external provenance: %s (session: 0x%x", buf, 0x22u);
    }

    v34 = *a2;
    if (!*a2)
    {
      v55 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v55 process:? delegate:?];
    }

    v35 = a2[1];
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = v22;
    v37 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    v38 = avas::server::mx::MXAccessor::SetMXProperty(*&v34[30]._os_unfair_lock_opaque, v36, v37);

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v38)
    {
      v40 = *avas::server::gSessionServerLog(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "AudioSessionServerImp_iOS.mm";
        *&buf[12] = 1024;
        *&buf[14] = 327;
        v66 = 1024;
        *v67 = v38;
        *&v67[4] = 1024;
        *&v67[6] = v9;
        _os_log_impl(&dword_241701000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting HasExternalMuteNotificationContext failed: %d, session: 0x%x", buf, 0x1Eu);
      }
    }

    v41 = *a2;
    if (!*a2)
    {
      v56 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v56 process:? delegate:?];
    }

    v42 = a2[1];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v43 = *MEMORY[0x277D272B8];
    v44 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v31 = avas::server::mx::MXAccessor::SetMXProperty(*&v41[30]._os_unfair_lock_opaque, v43, v44);

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (v31)
    {
      v46 = *avas::server::gSessionServerLog(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "AudioSessionServerImp_iOS.mm";
        *&buf[12] = 1024;
        *&buf[14] = 332;
        v66 = 1024;
        *v67 = v31;
        *&v67[4] = 1024;
        *&v67[6] = v9;
        _os_log_impl(&dword_241701000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting IsRecordingMuted failed: %d, session: 0x%x", buf, 0x1Eu);
      }
    }

    if (*v60)
    {
      avas::server::AudioApplicationInfo::HandleSessionInputMuteChange(*v60, v9, a3, v62 != 0);
    }

    else
    {
      v47 = *avas::server::gSessionServerLog(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = "UNMUTED";
        *&buf[4] = "AudioSessionServerImp_iOS.mm";
        *&buf[14] = 343;
        v66 = 2080;
        *buf = 136315906;
        *&buf[12] = 1024;
        if (a3)
        {
          v48 = "MUTED";
        }

        *v67 = v48;
        *&v67[8] = 1024;
        *&v67[10] = v9;
        _os_log_impl(&dword_241701000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - invalid AVAudioApp instance after input mute (%s) of session: 0x%x", buf, 0x22u);
      }
    }

    avas::ScopedTrace::~ScopedTrace(v68);
  }

  else
  {
    v27 = *avas::server::gSessionServerLog(v16);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *a2;
      if (!*a2)
      {
        v58 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v58 process:? delegate:?];
      }

      v29 = a2[1];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = (*(*&v28->_os_unfair_lock_opaque + 16))(v28);
      *v68 = 136315650;
      *&v68[4] = "AudioSessionServerImp_iOS.mm";
      *&v68[12] = 1024;
      *&v68[14] = 288;
      *&v68[18] = 1024;
      *&v68[20] = v30;
      _os_log_impl(&dword_241701000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to find MX session for Session ID 0x%x", v68, 0x18u);
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }
    }

    v31 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v31;
}

void sub_24172D2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::destroy(a1, *a2);
    std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

BOOL avas::server::DeviceTimeObserver::mapSessionToDevice(uint64_t *a1, int a2, int a3, CFTypeRef *a4, unint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  *buf = a2;
  v10 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(a1 + 9, buf);
  v11 = v10 + 20;
  if (!v10)
  {
    v11 = buf;
  }

  v44 = *v11;
  avas::server::DeviceTimeObserver::findSessionSlot(a1, v44, v43);
  if ((v43[16] & 1) == 0)
  {
    v24 = *avas::server::gSessionServerLog(v12);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_50;
    }

    *buf = 136315650;
    v46 = "DeviceTimeObserver.mm";
    v47 = 1024;
    v48 = 630;
    v49 = 1024;
    LODWORD(v50) = v44;
    v26 = "%25s:%-5d SessionSlot for session: 0x%x not found";
    goto LABEL_31;
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::find(a1 + 3, &v44, &v42);
  v14 = a1[3];
  v15 = a1[4];
  if (!v14 && v15)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v42 == v14 + 32 * v15)
  {
    v24 = *avas::server::gSessionServerLog(v13);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_50;
    }

    *buf = 136315650;
    v46 = "DeviceTimeObserver.mm";
    v47 = 1024;
    v48 = 635;
    v49 = 1024;
    LODWORD(v50) = a2;
    v26 = "%25s:%-5d Session 0x%x not found in the DTO session map";
LABEL_31:
    _os_log_impl(&dword_241701000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0x18u);
LABEL_40:
    result = 0;
    goto LABEL_50;
  }

  v16 = *a4;
  if (*a4)
  {
    v13 = CFRetain(*a4);
  }

  v41 = v16;
  v17 = a1[6];
  v18 = a1[7];
  if (v17 != v18)
  {
    while (1)
    {
      v13 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>((v17 + 8), &v41);
      if (!v13)
      {
        break;
      }

      v17 += 96;
      if (v17 == v18)
      {
        v17 = v18;
        break;
      }
    }

    v16 = v41;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17 == a1[7])
  {
    v27 = *avas::server::gSessionServerLog(v13);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = CFCopyDescription(*a4);
      v35 = v28;
      applesauce::CF::details::CFString_get_value<true>(v28, &__p);
      if (v28)
      {
        CFRelease(v28);
      }

      p_p = &__p;
      if (v40 < 0)
      {
        p_p = __p;
      }

      *buf = 136315650;
      v46 = "DeviceTimeObserver.mm";
      v47 = 1024;
      v48 = 641;
      v49 = 2080;
      v50 = p_p;
      _os_log_impl(&dword_241701000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Device %s not found", buf, 0x1Cu);
      if (v40 < 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_40;
  }

  v19 = avas::server::DeviceTimeObserver::SessionSlot::sessionState(v43);
  caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::load(v19, buf);
  v20 = *(v42 + 16);
  v37[0] = *(v42 + 8);
  v37[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::DeviceTimeObserver::getSourceAndSiblingIDs(v37, &__p);
  if (a3)
  {
    v21 = 0;
  }

  else
  {
    v21 = 16;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v22 = avas::server::DeviceTimeObserver::removeReferringSessionsFromDevice(a1, a3, buf[v21], &__p);
  if (0xAAAAAAAAAAAAAAABLL * ((v17 - a1[6]) >> 5) >= 0x100)
  {
    v35 = &unk_28535A5C0;
    gsl::details::terminate(v22);
  }

  if (a3)
  {
    avas::server::DeviceTimeObserver::SessionSlot::setDeviceIndex(v43, 1, *(v17 + 16), (-85 * ((v17 - a1[6]) >> 5)), a5);
    v23 = 24;
  }

  else
  {
    avas::server::DeviceTimeObserver::SessionSlot::setDeviceIndex(v43, 0, 0, (-85 * ((v17 - a1[6]) >> 5)), a5);
    v23 = 48;
  }

  v30 = __p;
  if (__p != &v39)
  {
    do
    {
      v36 = v30[7];
      boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique((v17 + v23), &v36, &v35);
      v31 = *(v30 + 1);
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = *(v30 + 2);
          v33 = *v32 == v30;
          v30 = v32;
        }

        while (!v33);
      }

      v30 = v32;
    }

    while (v32 != &v39);
  }

  std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::destroy(&__p, v39);
  result = 1;
LABEL_50:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24172D8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  __src = 0;
  v4 = *a1;
  v5 = a1[1];
  v17 = v4;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v16 = (v4 + 4 * v5);
  inserted = boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_insert_unique_prepare(a1, &v17, &v16, a2, &__src);
  *(a3 + 8) = inserted;
  if (inserted)
  {
    v10 = __src;
    v11 = *a1;
    if (*a1 > __src)
    {
      goto LABEL_22;
    }

    v12 = a1[1];
    if (!v11 && v12)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v13 = (v11 + 4 * v12);
    if (__src > v13)
    {
LABEL_22:
      boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
    }

    v14 = a1[2];
    if (v14 < v12)
    {
      boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
    }

    if (v14 == v12)
    {
      boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int const&>>(a1, __src, 1, a2, &v17);
      v10 = v17;
    }

    else if (v13 == __src)
    {
      *v13 = *a2;
      a1[1] = v12 + 1;
    }

    else
    {
      *v13 = *(v13 - 1);
      a1[1] = v12 + 1;
      if (v13 - 1 != v10)
      {
        memmove(v10 + 1, v10, (v13 - 1) - v10);
      }

      *v10 = *a2;
    }
  }

  else
  {
    v10 = __src;
    if (!*a1 && __src)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  *a3 = v10;
}

{
  *a3 = 0;
  *(a3 + 8) = 0;
  __src = 0;
  v4 = *a1;
  v5 = a1[1];
  v17 = v4;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v16 = (v4 + 4 * v5);
  inserted = boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_insert_unique_prepare(a1, &v17, &v16, a2, &__src);
  *(a3 + 8) = inserted;
  if (inserted)
  {
    v10 = __src;
    v11 = *a1;
    if (*a1 > __src)
    {
      goto LABEL_22;
    }

    v12 = a1[1];
    if (!v11 && v12)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v13 = (v11 + 4 * v12);
    if (__src > v13)
    {
LABEL_22:
      boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
    }

    v14 = a1[2];
    if (v14 < v12)
    {
      boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
    }

    if (v14 == v12)
    {
      boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int>>(a1, __src, 1, a2, &v17);
      v10 = v17;
    }

    else if (v13 == __src)
    {
      *v13 = *a2;
      a1[1] = v12 + 1;
    }

    else
    {
      *v13 = *(v13 - 1);
      a1[1] = v12 + 1;
      if (v13 - 1 != v10)
      {
        memmove(v10 + 1, v10, (v13 - 1) - v10);
      }

      *v10 = *a2;
    }
  }

  else
  {
    v10 = __src;
    if (!*a1 && __src)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  *a3 = v10;
}

BOOL boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int **a3, unsigned int *a4, unsigned int **a5)
{
  v8 = *a2;
  v11 = *a3;
  v12 = v8;
  boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_lower_bound<boost::container::vec_iterator<unsigned int *,true>,unsigned int>(&v12, &v11, a4, &v13);
  v9 = v13;
  *a5 = v13;
  if (v9 == *a3)
  {
    return 1;
  }

  if (!v9)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a4 < *v9;
}

BOOL boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::erase_unique(uint64_t *a1, unsigned int *a2)
{
  boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::find(a1, a2, &v9);
  v3 = a1[1];
  if (*a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v5 = *a1 + 4 * v3;
  v6 = v9;
  if (v9 != v5)
  {
    v10 = v9;
    boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::erase(a1, &v10, &v8);
  }

  return v6 != v5;
}

uint64_t avas::server::DeviceTimeObserver::removeReferringSessionsFromDevice(uint64_t result, int a2, unsigned int a3, void *a4)
{
  if (a3 != 255)
  {
    v4 = *(result + 48);
    if (0xAAAAAAAAAAAAAAABLL * ((*(result + 56) - v4) >> 5) <= a3)
    {
      std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__throw_out_of_range[abi:ne200100]();
    }

    v5 = (a4 + 1);
    v6 = *a4;
    if (*a4 != a4 + 1)
    {
      v7 = v4 + 96 * a3;
      if (a2)
      {
        v8 = 24;
      }

      else
      {
        v8 = 48;
      }

      do
      {
        result = boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::erase_unique((v7 + v8), v6 + 7);
        if (result != 1)
        {
          avas::server::DeviceTimeObserver::removeReferringSessionsFromDevice();
        }

        v9 = *(v6 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v6 + 2);
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v5);
    }
  }

  return result;
}

unint64_t *boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::erase@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *a2;
  v4 = *result;
  if (*result > *a2)
  {
    goto LABEL_12;
  }

  v5 = result;
  v7 = result[1];
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = v4 + 4 * v7;
  if (v3 >= v9)
  {
LABEL_12:
    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::erase();
  }

  if (v3 && v3 + 4 != v9)
  {
    result = memmove(v3, (v3 + 4), v9 - (v3 + 4));
    v7 = v5[1];
  }

  v5[1] = v7 - 1;
  *a3 = v3;
  return result;
}

void boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::find(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v14 = v4;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v13 = v4 + 4 * v5;
  boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_lower_bound<boost::container::vec_iterator<unsigned int *,false>,unsigned int>(&v14, &v13, a2, a3);
  v9 = a1[1];
  if (*a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v11 = *a1 + 4 * v9;
  v12 = *a3;
  if (*a3 != v11)
  {
    if (!v12)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a2 < *v12)
    {
      *a3 = v11;
    }
  }
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_lower_bound<boost::container::vec_iterator<unsigned int *,true>,unsigned int>(void *a1@<X1>, void *a2@<X2>, unsigned int *a3@<X3>, void *a4@<X8>)
{
  v4 = *a1;
  if (*a2 != *a1)
  {
    v5 = (*a2 - *a1) >> 2;
    v6 = *a3;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = v5 >> 1;
      v8 = &v4[v5 >> 1];
      if (*v8 < v6)
      {
        v4 = v8 + 1;
        *a1 = v8 + 1;
        v7 = v5 + ~v7;
      }

      v5 = v7;
    }

    while (v7);
  }

  *a4 = v4;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_lower_bound<boost::container::vec_iterator<unsigned int *,false>,unsigned int>(void *a1@<X1>, void *a2@<X2>, unsigned int *a3@<X3>, void *a4@<X8>)
{
  v4 = *a1;
  if (*a2 != *a1)
  {
    v5 = (*a2 - *a1) >> 2;
    v6 = *a3;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = v5 >> 1;
      v8 = &v4[v5 >> 1];
      if (*v8 < v6)
      {
        v4 = v8 + 1;
        *a1 = v8 + 1;
        v7 = v5 + ~v7;
      }

      v5 = v7;
    }

    while (v7);
  }

  *a4 = v4;
}

BOOL avas::server::require_acq::AudioSessionSetClientPlayState_Inner(std::variant<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,AVAudioSessionClientPlayerType,void *,unsigned int,AVAudioSessionClientPlayState,AudioSessionDuckingInfo *,void const*)::$_0::operator()(uint64_t a1)
{
  v2 = **(a1 + 8);
  v14[0] = 4;
  v15 = v2;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v14);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v14);
  v3 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(*a1, "IsRecordingMuted");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v14);
  v4 = *v3;
  *v3 = v14[0];
  v14[0] = v4;
  v5 = *(v3 + 8);
  *(v3 + 8) = v15;
  v15 = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v14);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v15, v14[0]);
  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  if (avas::AudioSessionMuteEnabled(void)::enabled)
  {
    return 1;
  }

  v6 = *(a1 + 24);
  v7 = *v6;
  if (!*v6)
  {
    avas::server::require_acq::GetAudioQueueOptions();
  }

  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *MEMORY[0x277D272B8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:**(a1 + 8)];
  **(a1 + 16) = avas::server::mx::MXAccessor::SetMXProperty(*(v7 + 120), v9, v10);

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v11 = **(a1 + 16);
  if (!v11)
  {
    return 1;
  }

  v12 = avas::server::TranslateCMSessionErrorCode("set_is_recording_muted_property", *(a1 + 32), 643, v11);
  **(a1 + 16) = v12;
  return v12 == 0;
}

void avas::server::AudioApplicationInfo::IssueInputMuteNotification(avas::server::AudioApplicationInfo *this)
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  avas::server::AudioAppInfoImpl::GetPropertyAudioApp(this + 3, &cfstr_Inputmute.isa, &v10);
  v3 = v11;
  if (v10)
  {
    v4 = 1;
  }

  else
  {
    v4 = v11 == 0;
  }

  if (!v4)
  {
    v5 = *avas::server::gSessionServerLog(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSNumber *)v11 BOOLValue];
      v7 = "MUTED";
      if (!v6)
      {
        v7 = "UNMUTED";
      }

      v8 = (this + 88);
      if (*(this + 111) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315906;
      v13 = "AudioApplicationInfo.mm";
      v14 = 1024;
      v15 = 232;
      v16 = 2080;
      v17 = v7;
      v18 = 2080;
      v19 = v8;
      _os_log_impl(&dword_241701000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Forcing input mute notification %s  { %s }", buf, 0x26u);
    }

    avas::server::AudioAppInfoImpl::IssueInputMuteNotification(this + 3, v11);
    v3 = v11;
  }

  os_unfair_lock_unlock(this + 4);
  v9 = *MEMORY[0x277D85DE8];
}

void avas::server::AudioAppInfoImpl::IssueInputMuteNotification(void **this, NSNumber *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = @"AVAudioApplicationMuteStateKey";
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  avas::server::AudioAppInfoImpl::GetAudioAppRemoteClients(this, v6);
  avas::server::AudioAppInfoImpl::DeferPropertyChangeCallback(v6, @"AVAudioApplicationInputMuteStateChangeNotification", v4, 0);
  v7 = v6;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&v7);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_24172E84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void **avas::server::AudioAppInfoImpl::GetAudioAppRemoteClients@<X0>(void **this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = this[14];
  v3 = this + 15;
  if (v2 != this + 15)
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 5);
      v7 = v2[6];
      if (*(&v6 + 1))
      {
        atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
        v5 = a2[1];
      }

      v8 = a2[2];
      if (v5 >= v8)
      {
        v9 = *a2;
        v10 = v5 - *a2;
        v11 = (v10 >> 4) + 1;
        if (v11 >> 60)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (v12 >> 3 > v11)
        {
          v11 = v12 >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        v20[4] = a2;
        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>>(a2, v13);
        }

        v14 = (16 * (v10 >> 4));
        *v14 = v6;
        v5 = (v14 + 1);
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v5;
        v16 = a2[2];
        a2[2] = 0;
        v20[2] = v15;
        v20[3] = v16;
        v20[0] = v15;
        v20[1] = v15;
        this = std::__split_buffer<std::shared_ptr<avas::server::AudioSessionInfo>>::~__split_buffer(v20);
      }

      else
      {
        *v5 = v6;
        *(v5 + 1) = v7;
        v5 += 16;
      }

      a2[1] = v5;
      v17 = v2[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v2[2];
          v19 = *v18 == v2;
          v2 = v18;
        }

        while (!v19);
      }

      v2 = v18;
    }

    while (v18 != v3);
  }

  return this;
}

void sub_24172EA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void avas::server::AudioAppInfoImpl::DeferPropertyChangeCallback(uint64_t **a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    do
    {
      v13 = *v10;
      v12 = v10[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = avas::server::AudioApplicationInfo::GetAudioAppCallbackQueue(v8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3321888768;
      block[2] = ___ZN4avas6server16AudioAppInfoImpl27DeferPropertyChangeCallbackEONSt3__16vectorINS2_10shared_ptrINS0_20AudioAppRemoteClientEEENS2_9allocatorIS6_EEEEPK8NSStringP12NSDictionaryb_block_invoke;
      block[3] = &unk_28535B218;
      v17 = v13;
      v18 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      block[4] = v7;
      v16 = v9;
      v19 = a4;
      dispatch_async(v14, block);

      v8 = v18;
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v10 += 2;
    }

    while (v10 != v11);
  }
}

void sub_24172EB7C(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__emplace_unique_key_args<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>,std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__find_equal<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__find_equal<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      v8 = v4;
      v9 = v4[4];
      if (v6 == v9)
      {
        v10 = v8[5];
        if (v7 >= v10)
        {
          v11 = v10 == v7;
          if (v10 >= v7)
          {
            v12 = 1;
          }

          else
          {
            v12 = -1;
          }

          if (v11)
          {
            v12 = 0;
          }

          if ((v12 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_13:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 < v9)
        {
          goto LABEL_13;
        }

        if (v9 >= v6)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        result = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v8 = result;
LABEL_22:
  *a2 = v8;
  return result;
}

void anonymous namespace::MSNSetMicrophoneState(_anonymous_namespace_ *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMSNMonitorSetMicrophoneStateSymbolLoc(void)::ptr;
  v9 = getMSNMonitorSetMicrophoneStateSymbolLoc(void)::ptr;
  if (!getMSNMonitorSetMicrophoneStateSymbolLoc(void)::ptr)
  {
    v3 = MediaSafetyNetLibrary();
    v7[3] = dlsym(v3, "MSNMonitorSetMicrophoneState");
    getMSNMonitorSetMicrophoneStateSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(this);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ATMSNMonitorSetMicrophoneState(BOOL)"];
    [v4 handleFailureInFunction:v5 file:@"MSNSoftLink.h" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_24172EDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[17],char [17],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[17]>();
}

os_unfair_lock_s **avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(os_unfair_lock_s **this, unsigned int a2, audit_token_t *a3, int a4, int a5)
{
  *this = 0;
  this[1] = 0;
  *(this + 16) = 0;
  v10 = avas::server::LegacySessionManager::Instance(this);
  if (a5)
  {
    if (a4)
    {
      v15 = 1;
      v14 = 1;
    }

    else
    {
      LOBYTE(v14) = 0;
      v15 = 0;
    }

    avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v10, a2, a3, &v14, &v16);
  }

  else
  {
    avas::server::LegacySessionManager::FindSession(v10, a2, &v16);
  }

  v11 = v16;
  v16 = 0uLL;
  v12 = this[1];
  *this = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }
  }

  if (*this)
  {
    os_unfair_lock_lock(*this + 134);
    *(this + 16) = 1;
  }

  return this;
}

void sub_24172EFA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(uint64_t a1, os_unfair_lock_s **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4[2], 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  *(a1 + 16) = 0;
  if (v3)
  {
    os_unfair_lock_lock(v3 + 134);
    *(a1 + 16) = 1;
  }

  return a1;
}

avas::server::AudioSessionInfoAccessor *avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(avas::server::AudioSessionInfoAccessor *this, avas::server::LegacySessionManager *a2, int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  avas::server::LegacySessionManager::FindSession(a2, a3, &v8);
  v4 = v8;
  v8 = 0uLL;
  v5 = *(this + 1);
  *this = v4;
  if (!v5)
  {
    v6 = v4;
    if (!v4)
    {
      return this;
    }

    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }

  v6 = *this;
  if (*this)
  {
LABEL_5:
    os_unfair_lock_lock(v6 + 134);
    *(this + 16) = 1;
  }

  return this;
}

void sub_24172F0B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24172F3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void applesauce::dispatch::v1::queue::~queue(id *this)
{
  v2 = *this;
  *this = 0;
}

void sub_24172F758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_24172FA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AVAudioSessionXPCServer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24172FE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  objc_destroyWeak((v32 + 16));

  avas::server::ProcessInfo::~ProcessInfo(&__p);
  _Unwind_Resume(a1);
}

void avas::server::ProcessInfo::~ProcessInfo(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  objc_destroyWeak(this + 2);
}

void sub_241730038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2417303E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a12);

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSString * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1)
  {
    v5 = MEMORY[0x245CEF0E0](v3);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP8NSStringEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c143_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP8NSStringEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E__e30_v24__0__NSError_8__NSString_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v9 = MEMORY[0x245CEF0E0](v4);
    v11 = v8;
    v12 = MEMORY[0x245CEF0E0](v9);
    v5 = MEMORY[0x245CEF0E0](v10);

    v6 = v11;
    v11 = 0;
  }

  return v5;
}

void sub_241730A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  avas::ScopedTrace::~ScopedTrace(va);

  _Unwind_Resume(a1);
}

id BuildInvalidSessionError(avas::server *a1, int a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *avas::server::gSessionServerLog(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v15 = "AVAudioSessionXPCServer.mm";
    v16 = 1024;
    v17 = 228;
    v18 = 2080;
    v19 = a1;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed due to session lookup failure for SessionID 0x%x", buf, 0x22u);
  }

  v7 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13 = @"Session lookup failed";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:*MEMORY[0x277CCA590] code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_241730E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  avas::ScopedTrace::~ScopedTrace(va);

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},BOOL>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1)
  {
    v5 = MEMORY[0x245CEF0E0](v3);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbEEEU13block_pointerFvDpT_ES9_i_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbEEEU13block_pointerFvDpT_ES9_iEUlS4_bE__e20_v20__0__NSError_8B16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v9 = MEMORY[0x245CEF0E0](v4);
    v11 = v8;
    v12 = MEMORY[0x245CEF0E0](v9);
    v5 = MEMORY[0x245CEF0E0](v10);

    v6 = v11;
    v11 = 0;
  }

  return v5;
}

void sub_2417311BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_2417315AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_241731BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  avas::ScopedTrace::~ScopedTrace(va);

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1)
  {
    v5 = MEMORY[0x245CEF0E0](v3);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c148_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E__e34_v24__0__NSError_8__NSDictionary_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v9 = MEMORY[0x245CEF0E0](v4);
    v11 = v8;
    v12 = MEMORY[0x245CEF0E0](v9);
    v5 = MEMORY[0x245CEF0E0](v10);

    v6 = v11;
    v11 = 0;
  }

  return v5;
}

void sub_241732A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  __cxa_guard_abort(&_ZGVZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute);

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  avas::ScopedTrace::~ScopedTrace(&a34);
  _Unwind_Resume(a1);
}

uint64_t avas::AudioSessionMuteEnabled(avas *this)
{
  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  return avas::AudioSessionMuteEnabled(void)::enabled;
}

{
  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  return avas::AudioSessionMuteEnabled(void)::enabled;
}

void sub_241732E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_2417331D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  avas::ScopedTrace::~ScopedTrace(va);

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},double,unsigned long>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1)
  {
    v5 = MEMORY[0x245CEF0E0](v3);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrordmEEEU13block_pointerFvDpT_ES9_i_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c124_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrordmEEEU13block_pointerFvDpT_ES9_iEUlS4_dmE__e23_v32__0__NSError_8d16Q24l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v9 = MEMORY[0x245CEF0E0](v4);
    v11 = v8;
    v12 = MEMORY[0x245CEF0E0](v9);
    v5 = MEMORY[0x245CEF0E0](v10);

    v6 = v11;
    v11 = 0;
  }

  return v5;
}

void sub_2417334E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  os_unfair_lock_unlock(v15);
  avas::ScopedTrace::~ScopedTrace(&a14);

  _Unwind_Resume(a1);
}

void sub_241733680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_241733818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_241733BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a15);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  avas::ScopedTrace::~ScopedTrace(&a22);

  _Unwind_Resume(a1);
}

void sub_241733DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_241734790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::optional<avas::server::SessionCreationDescription>::~optional(&a29);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  avas::ScopedTrace::~ScopedTrace(&a16);

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},unsigned int,NSObject  {objcproto13OS_xpc_object}* {__strong},unsigned int,unsigned int,NSString * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1)
  {
    v5 = MEMORY[0x245CEF0E0](v3);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjU8__strongPU24objcproto13OS_xpc_object8NSObjectjjU8__strongP8NSStringEEEU13block_pointerFvDpT_ESG_i_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c199_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjU8__strongPU24objcproto13OS_xpc_object8NSObjectjjU8__strongP8NSStringEEEU13block_pointerFvDpT_ESG_iEUlS4_jS8_jjSB_E__e67_v44__0__NSError_8I16__NSObject_OS_xpc_object__20I28I32__NSString_36l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v9 = MEMORY[0x245CEF0E0](v4);
    v11 = v8;
    v12 = MEMORY[0x245CEF0E0](v9);
    v5 = MEMORY[0x245CEF0E0](v10);

    v6 = v11;
    v11 = 0;
  }

  return v5;
}

void sub_241734E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  avas::ScopedTrace::~ScopedTrace(&a30);

  _Unwind_Resume(a1);
}

void sub_241735360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  avas::ScopedTrace::~ScopedTrace((v26 - 152));

  _Unwind_Resume(a1);
}

void sub_2417355A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_241735A84(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_241735E90(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_2417361F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_2417363BC(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

id getAllCachedPropertyNames(void)
{
  v17[14] = *MEMORY[0x277D85DE8];
  {
    v12 = *MEMORY[0x277D272E0];
    v17[0] = v12;
    v13 = *MEMORY[0x277D272F0];
    v17[1] = v13;
    v14 = *MEMORY[0x277D272F8];
    v17[2] = v14;
    v15 = *MEMORY[0x277D27300];
    v17[3] = v15;
    v16 = *MEMORY[0x277D272D8];
    v17[4] = v16;
    v3 = *MEMORY[0x277D27190];
    v17[5] = v3;
    v4 = *MEMORY[0x277D26E90];
    v17[6] = v4;
    v5 = *MEMORY[0x277D27330];
    v17[7] = v5;
    v6 = *MEMORY[0x277D27360];
    v17[8] = v6;
    v7 = *MEMORY[0x277D27338];
    v17[9] = v7;
    v8 = *MEMORY[0x277D27218];
    v17[10] = v8;
    v9 = *MEMORY[0x277D27230];
    v17[11] = v9;
    v10 = *MEMORY[0x277D27210];
    v17[12] = v10;
    v11 = *MEMORY[0x277D27220];
    v17[13] = v11;
    getAllCachedPropertyNames(void)::mxProperties = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:14];
  }

  v0 = getAllCachedPropertyNames(void)::mxProperties;
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_241736840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_241736D08(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_241737044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_241737350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void sub_24173781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, id a26)
{
  std::tuple<std::shared_ptr<avas::server::AudioApplicationInfo>,std::shared_ptr<avas::server::AudioAppRemoteClient>>::~tuple(&a9);

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},unsigned int>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1)
  {
    v5 = MEMORY[0x245CEF0E0](v3);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_i_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_iEUlS4_jE__e20_v20__0__NSError_8I16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v9 = MEMORY[0x245CEF0E0](v4);
    v11 = v8;
    v12 = MEMORY[0x245CEF0E0](v9);
    v5 = MEMORY[0x245CEF0E0](v10);

    v6 = v11;
    v11 = 0;
  }

  return v5;
}

uint64_t std::tuple<std::shared_ptr<avas::server::AudioApplicationInfo>,std::shared_ptr<avas::server::AudioAppRemoteClient>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_241737CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a9 = &a15;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::tuple<std::shared_ptr<avas::server::AudioApplicationInfo>,std::shared_ptr<avas::server::AudioAppRemoteClient>>::~tuple(&a21);

  _Unwind_Resume(a1);
}

id BuildInvalidAudioAppError(avas::server *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *avas::server::gSessionServerLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a2 + 36);
    *buf = 136315906;
    v14 = "AVAudioSessionXPCServer.mm";
    v15 = 1024;
    v16 = 1094;
    v17 = 2080;
    v18 = a1;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&dword_241701000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed due to audio application (pid: %d) lookup failure", buf, 0x22u);
  }

  v6 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12 = @"AudioApp lookup failed";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_241738218(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  std::tuple<std::shared_ptr<avas::server::AudioApplicationInfo>,std::shared_ptr<avas::server::AudioAppRemoteClient>>::~tuple(va);
  _Unwind_Resume(a1);
}

void sub_2417386C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  std::tuple<std::shared_ptr<avas::server::AudioApplicationInfo>,std::shared_ptr<avas::server::AudioAppRemoteClient>>::~tuple(va);
  _Unwind_Resume(a1);
}

void sub_241738AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  std::tuple<std::shared_ptr<avas::server::AudioApplicationInfo>,std::shared_ptr<avas::server::AudioAppRemoteClient>>::~tuple(va);
  _Unwind_Resume(a1);
}

void sub_241738D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  std::tuple<std::shared_ptr<avas::server::AudioApplicationInfo>,std::shared_ptr<avas::server::AudioAppRemoteClient>>::~tuple(va);
  _Unwind_Resume(a1);
}

void sub_2417390D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2417393CC(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t caulk::expected<NSDictionary * {__strong},NSError * {__strong}>::value(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    caulk::bad_expected_access<NSError * {__strong}>::bad_expected_access(exception, *v1);
  }

  return result;
}

void sub_241739D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_24173A0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v36 = *(v34 - 104);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(a1);
}

void sub_24173A268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void *__copy_helper_block_ea8_64c59_ZTSNSt3__110shared_ptrIN4avas6server17IONodeSessionInfoEEE80c58_ZTSNSt3__110shared_ptrIN4avas6server16AudioSessionInfoEEE(void *result, void *a2)
{
  v2 = a2[9];
  result[8] = a2[8];
  result[9] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[11];
  result[10] = a2[10];
  result[11] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_64c59_ZTSNSt3__110shared_ptrIN4avas6server17IONodeSessionInfoEEE80c58_ZTSNSt3__110shared_ptrIN4avas6server16AudioSessionInfoEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_24173A4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_24173A738(_Unwind_Exception *a1)
{
  v5 = *(v3 - 104);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c59_ZTSNSt3__110shared_ptrIN4avas6server17IONodeSessionInfoEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c59_ZTSNSt3__110shared_ptrIN4avas6server17IONodeSessionInfoEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_24173A9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void sub_24173AC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t avas::server::HandleDispatchBlockException(avas::server *this, const char *a2, const char *a3, const char *a4, unint64_t a5, unint64_t a6)
{
  v8 = a4;
  std::string::basic_string[abi:ne200100]<0>(&v43, "Exception thrown: ");
  v12 = strlen(this);
  v13 = std::string::append(&v43, this, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v44, ", ", 2uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = strlen(a2);
  v18 = std::string::append(&v45, a2, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v46, ", ", 2uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = strlen(a3);
  v23 = std::string::append(&v47, a3, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v48, ":", 1uLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v42, v8);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v42;
  }

  else
  {
    v27 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  v29 = std::string::append(&v49, v27, size);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(", ", &v50, &v51);
  std::to_string(&v41, a5);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v41;
  }

  else
  {
    v31 = v41.__r_.__value_.__r.__words[0];
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v41.__r_.__value_.__l.__size_;
  }

  v33 = std::string::append(&v51, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(", ", &v52, &v53);
  std::to_string(&__p, a6);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = __p.__r_.__value_.__l.__size_;
  }

  v37 = std::string::append(&v53, p_p, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v55 = v37->__r_.__value_.__r.__words[2];
  v54 = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void sub_24173B528(_Unwind_Exception *a1)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJjNS_10shared_ptrIN4avas6server16AudioSessionInfoEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJjSC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::optional<avas::server::SessionCreationDescription>::~optional(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {

    v2 = *(a1 + 120);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(a1 + 104);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  return a1;
}

void gsl::narrowing_error::~narrowing_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x245CEEB60);
}

void *caulk::bad_expected_access<NSError * {__strong}>::bad_expected_access(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_28535A618;
  a1[1] = v3;
  return a1;
}

void caulk::bad_expected_access<NSError * {__strong}>::~bad_expected_access(std::exception *a1)
{

  std::exception::~exception(a1);
}

{

  std::exception::~exception(a1);

  JUMPOUT(0x245CEEB60);
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void AudioSessionServerXPCTimeout(char *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((atomic_exchange(AudioSessionServerXPCTimeout(char const*)::onceFlag, 1u) & 1) == 0)
  {
    LogACQEvents();
    std::string::basic_string[abi:ne200100]<0>(&v17, a1);
    v2 = std::string::insert(&v17, 0, "XPC message timeout in ", 0x17uLL);
    v3 = *&v2->__r_.__value_.__l.__data_;
    *&v20[16] = *(&v2->__r_.__value_.__l + 2);
    *v20 = v3;
    v2->__r_.__value_.__l.__size_ = 0;
    v2->__r_.__value_.__r.__words[2] = 0;
    v2->__r_.__value_.__r.__words[0] = 0;
    v4 = std::string::append(v20, ", probably deadlocked. Writing a stackshot and terminating.", 0x3BuLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v19 = v4->__r_.__value_.__r.__words[2];
    *__p = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if ((v20[23] & 0x80000000) != 0)
    {
      operator delete(*v20);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    v6 = *avas::server::gSessionServerLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = __p;
      if (v19 < 0)
      {
        v7 = __p[0];
      }

      *v20 = 136315650;
      *&v20[4] = "AVAudioSessionXPCServer.mm";
      *&v20[12] = 1024;
      *&v20[14] = 142;
      *&v20[18] = 2080;
      *&v20[20] = v7;
      _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", v20, 0x1Cu);
    }

    {
      avas::PanicOnXPCTimeoutEnabled(void)::enabled = _os_feature_enabled_impl();
    }

    if (avas::PanicOnXPCTimeoutEnabled(void)::enabled == 1)
    {
      if (v19 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      MEMORY[0x245CEF2A0](3072, v8);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v16 = __p;
      if (v19 < 0)
      {
        v16 = __p[0];
      }

      *v20 = 136315138;
      *&v20[4] = v16;
      _os_log_fault_impl(&dword_241701000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s", v20, 0xCu);
    }

    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v19 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = [v9 initWithCString:v10 encoding:1];
    v12 = getpid();
    v13 = WriteStackshotReportWithPID();
    if ((v13 & 1) == 0)
    {
      v14 = *avas::server::gSessionServerLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v20 = 136315394;
        *&v20[4] = "AVAudioSessionXPCServer.mm";
        *&v20[12] = 1024;
        *&v20[14] = 162;
        _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Writing stackshot failed", v20, 0x12u);
      }
    }

    kill(v12, 9);

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24173BE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSString * {__strong}>(void({block_pointer})(NSError * {__strong},NSString * {__strong}),int)::{lambda(NSError *,NSString *)#1}::operator()(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = applesauce::dispatch::v1::queue::operator*(a1);
  dispatch_source_cancel(v6);

  (*(*(a1 + 8) + 16))();
}

uint64_t __copy_helper_block_ea8_32c143_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP8NSStringEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c143_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP8NSStringEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbEEEU13block_pointerFvDpT_ES9_i_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = applesauce::dispatch::v1::queue::operator*((a1 + 32));
  dispatch_source_cancel(v3);

  (*(*(a1 + 40) + 16))();
}

uint64_t __copy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbEEEU13block_pointerFvDpT_ES9_iEUlS4_bE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbEEEU13block_pointerFvDpT_ES9_iEUlS4_bE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong}>(void({block_pointer})(NSError * {__strong},NSDictionary * {__strong}),int)::{lambda(NSError *,NSDictionary *)#1}::operator()(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = applesauce::dispatch::v1::queue::operator*(a1);
  dispatch_source_cancel(v6);

  (*(*(a1 + 8) + 16))();
}

uint64_t __copy_helper_block_ea8_32c148_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c148_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrordmEEEU13block_pointerFvDpT_ES9_i_block_invoke(uint64_t a1, void *a2, double a3)
{
  v6 = a2;
  v5 = applesauce::dispatch::v1::queue::operator*((a1 + 32));
  dispatch_source_cancel(v5);

  (*(*(a1 + 40) + 16))(a3);
}

uint64_t __copy_helper_block_ea8_32c124_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrordmEEEU13block_pointerFvDpT_ES9_iEUlS4_dmE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c124_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrordmEEEU13block_pointerFvDpT_ES9_iEUlS4_dmE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},unsigned int,NSObject  {objcproto13OS_xpc_object}* {__strong},unsigned int,unsigned int,NSString * {__strong}>(void({block_pointer})(NSError * {__strong},unsigned int,NSObject  {objcproto13OS_xpc_object}* {__strong},unsigned int,unsigned int,NSString * {__strong}),int)::{lambda(NSError *,unsigned int,NSObject  {objcproto13OS_xpc_object}*,unsigned int,unsigned int,NSString *)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a7;
  v11 = a4;
  v13 = a2;
  v12 = applesauce::dispatch::v1::queue::operator*(a1);
  dispatch_source_cancel(v12);

  (*(*(a1 + 8) + 16))();
}

uint64_t __copy_helper_block_ea8_32c199_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjU8__strongPU24objcproto13OS_xpc_object8NSObjectjjU8__strongP8NSStringEEEU13block_pointerFvDpT_ESG_iEUlS4_jS8_jjSB_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c199_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjU8__strongPU24objcproto13OS_xpc_object8NSObjectjjU8__strongP8NSStringEEEU13block_pointerFvDpT_ESG_iEUlS4_jS8_jjSB_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_i_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = applesauce::dispatch::v1::queue::operator*((a1 + 32));
  dispatch_source_cancel(v3);

  (*(*(a1 + 40) + 16))();
}

uint64_t __copy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_iEUlS4_jE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_iEUlS4_jE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void avas::server::HandleMXNotificationCallback(uint64_t a1, AudioSession *a2, void *a3, uint64_t a4, const void *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a3;
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], a5, 2uLL);
  v9 = *avas::server::gSessionServerLog(DeepCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    AudioSession::FormatSessionIDAsHex(a2, v61);
    v10 = v62 >= 0 ? v61 : v61[0];
    *buf = 136316162;
    *&buf[4] = "AudioSessionServerImpNotificationHandlers.mm";
    *&buf[12] = 1024;
    *&buf[14] = 760;
    *&buf[18] = 2080;
    *&buf[20] = v10;
    *&buf[28] = 2112;
    *&buf[30] = v7;
    *&buf[38] = 2112;
    v58 = DeepCopy;
    _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d HandleMXNotification, session ID = %s, name = %@, payload = %@", buf, 0x30u);
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }
  }

  LODWORD(v52) = a2;
  v11 = v7;
  v53 = v11;
  v12 = DeepCopy;
  v54 = v12;
  if ([(avas::server *)v11 isEqualToString:*MEMORY[0x277D27148], v52])
  {
    v13 = v12;
    v14 = avas::server::GetAudioControlQueue(v13);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN12_GLOBAL__N_132HandleAppStateChangeNotificationEjP12NSDictionary_block_invoke;
    *&buf[24] = &unk_278CEABD8;
    LODWORD(v58) = a2;
    v15 = v13;
    *&buf[32] = v15;
    avas::server::DispatchBlock(v14, buf, 0, "HandleAppStateChangeNotification", "AudioSessionServerImpNotificationHandlers.mm", 618, 0, 0);

    v16 = v11;
    goto LABEL_26;
  }

  if ([(avas::server *)v11 isEqualToString:*MEMORY[0x277D27170]])
  {
    v16 = v11;
    v15 = v12;
    goto LABEL_26;
  }

  v17 = [(avas::server *)v11 isEqualToString:*MEMORY[0x277D27178]];
  if (!v17)
  {
    if ([(avas::server *)v11 isEqualToString:*MEMORY[0x277D27150]])
    {
      v26 = avas::server::GetASCallbackQueue(v25);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZZN4avas6server28HandleMXNotificationCallbackEP26opaqueCMNotificationCenterPKvPK10__CFStringS4_S4_ENK3__0clEb_block_invoke;
      *&buf[24] = &unk_278CEAC70;
      LODWORD(v59) = a2;
      v16 = v11;
      *&buf[32] = v16;
      v15 = v12;
      v58 = v15;
      BYTE4(v59) = 1;
      dispatch_async(v26, buf);

      goto LABEL_26;
    }

    if ([(avas::server *)v11 isEqualToString:*MEMORY[0x277D27140]])
    {
      v27 = v11;
      v28 = v12;
      v29 = avas::server::GetASCallbackQueue(v28);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZN12_GLOBAL__N_129HandleRouteChangeNotificationEjP8NSStringP19NSMutableDictionary_block_invoke;
      *&buf[24] = &unk_278CEAC00;
      LODWORD(v59) = a2;
      *&buf[32] = v28;
      v58 = v27;
      v15 = v28;
      v16 = v27;
      dispatch_async(v29, buf);

      goto LABEL_26;
    }

    if ([(avas::server *)v11 isEqualToString:*MEMORY[0x277D27160]])
    {
      avas::server::HandleMXNotificationCallback(opaqueCMNotificationCenter *,void const*,__CFString const*,void const*,void const*)::$_0::operator()(&v52, 0);
      v33 = MEMORY[0x277D27130];
    }

    else
    {
      if (![(avas::server *)v11 isEqualToString:*MEMORY[0x277D27158]])
      {
        if (([(avas::server *)v11 isEqualToString:*MEMORY[0x277D27180]]& 1) != 0 || ![(avas::server *)v11 isEqualToString:*MEMORY[0x277D27188]])
        {
          avas::server::HandleMXNotificationCallback(opaqueCMNotificationCenter *,void const*,__CFString const*,void const*,void const*)::$_0::operator()(&v52, 1);
          v16 = v11;
          v15 = v12;
        }

        else
        {
          avas::server::HandleMXNotificationCallback(opaqueCMNotificationCenter *,void const*,__CFString const*,void const*,void const*)::$_0::operator()(&v52, 1);
          v16 = v11;
          v15 = v12;
        }

        goto LABEL_26;
      }

      avas::server::HandleMXNotificationCallback(opaqueCMNotificationCenter *,void const*,__CFString const*,void const*,void const*)::$_0::operator()(&v52, 0);
      v33 = MEMORY[0x277D27128];
    }

    v16 = v11;
    v15 = v12;
    goto LABEL_26;
  }

  v18 = avas::server::GetASCallbackQueue(v17);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZZN4avas6server28HandleMXNotificationCallbackEP26opaqueCMNotificationCenterPKvPK10__CFStringS4_S4_ENK3__0clEb_block_invoke;
  *&buf[24] = &unk_278CEAC70;
  LODWORD(v59) = a2;
  *&buf[32] = v11;
  v19 = v12;
  v58 = v19;
  BYTE4(v59) = 0;
  dispatch_async(v18, buf);

  v20 = v19;
  v21 = avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v55, a2);
  if (!v55)
  {
    v30 = *avas::server::gSessionServerLog(v21);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AudioSessionServerImpNotificationHandlers.mm";
      *&buf[12] = 1024;
      *&buf[14] = 339;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      _os_log_impl(&dword_241701000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Did not find matching audio session 0x%x. Bailing.", buf, 0x18u);
    }

    goto LABEL_23;
  }

  v22 = [(avas::server *)v20 objectForKey:*MEMORY[0x277D270F8]];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 intValue];
    if ((v24 - 2) < 6)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[8],char [8],0>(buf);
    }

    if (v24 == 1)
    {
      v43 = avas::server::LegacySessionManager::Instance(v24);
      v44 = *(v43 + 296);
      if (v44)
      {
        os_unfair_lock_lock(*(v43 + 296));
        avas::server::DeviceTimeObserver::sessionIsActive(&v44[2], a2, 1);
        os_unfair_lock_unlock(v44);
      }

      v45 = v55;
      if (!v55)
      {
        v50 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v50 process:? delegate:?];
      }

      v46 = v56;
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = (*(**(*(v45 + 15) + 8) + 64))(v61);
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      v48 = avas::server::GetASCallbackQueue(v47);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3321888768;
      *&buf[16] = ___ZN12_GLOBAL__N_130HandleInterruptionNotificationEjP12NSDictionary_block_invoke_105;
      *&buf[24] = &unk_28535A918;
      v60 = a2;
      v49 = v61[0];
      if (v61[0])
      {
        CFRetain(v61[0]);
      }

      v58 = v49;
      *&buf[32] = v20;
      v59 = 0;
      dispatch_async(v48, buf);

      if (v58)
      {
        CFRelease(v58);
      }

      v41 = v61[0];
      if (!v61[0])
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v24)
      {
        goto LABEL_16;
      }

      v34 = avas::server::LegacySessionManager::Instance(v24);
      v35 = *(v34 + 296);
      if (v35)
      {
        os_unfair_lock_lock(*(v34 + 296));
        avas::server::DeviceTimeObserver::sessionIsActive(&v35[2], a2, 0);
        os_unfair_lock_unlock(v35);
      }

      v36 = v55;
      if (!v55)
      {
        v51 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v51 process:? delegate:?];
      }

      v37 = v56;
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = (*(**(*(v36 + 15) + 8) + 64))(v61);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v39 = avas::server::GetASCallbackQueue(v38);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3321888768;
      *&buf[16] = ___ZN12_GLOBAL__N_130HandleInterruptionNotificationEjP12NSDictionary_block_invoke;
      *&buf[24] = &unk_28535A918;
      v60 = a2;
      v40 = v61[0];
      if (v61[0])
      {
        CFRetain(v61[0]);
      }

      v58 = v40;
      *&buf[32] = v20;
      v59 = 0;
      dispatch_async(v39, buf);

      if (v58)
      {
        CFRelease(v58);
      }

      v41 = v61[0];
      if (!v61[0])
      {
        goto LABEL_16;
      }
    }

    CFRelease(v41);
  }

LABEL_16:

LABEL_23:
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v16 = v53;
  v15 = v54;
LABEL_26:

  v31 = *MEMORY[0x277D85DE8];
}

void sub_24173D108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::HandleMXNotificationCallback(opaqueCMNotificationCenter *,void const*,__CFString const*,void const*,void const*)::$_0::operator()(id *a1, char a2)
{
  v4 = avas::server::GetASCallbackQueue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZZN4avas6server28HandleMXNotificationCallbackEP26opaqueCMNotificationCenterPKvPK10__CFStringS4_S4_ENK3__0clEb_block_invoke;
  block[3] = &unk_278CEAC70;
  v8 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v9 = a2;
  dispatch_async(v4, block);
}

void avas::server::HandleCFNotification(avas::server *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = a2;
  v7 = a3;
  v8 = [v7 isEqualToString:*MEMORY[0x277CEFD10]];
  if (v8)
  {
    v9 = avas::server::GetASCallbackQueue(v8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN4avas6server20HandleCFNotificationEP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke;
    v10[3] = &unk_278CEABD8;
    v12 = v6;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

void ___ZN4avas6server20HandleCFNotificationEP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v29, v1);
  if (v29)
  {
    os_unfair_lock_unlock(v29 + 134);
    v31 = 0;
    v4 = v29;
    if (v29)
    {
      v5 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = v4;
      *&buf[8] = v5;
      v6 = avas::server::forbid_acq::CopyCMSessionAudioMode(buf);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      v7 = v29;
      if (v29)
      {
        v8 = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::GetSpatialPreferences(*(v7 + 14), v1, v6, &v27);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v9 = objc_alloc(MEMORY[0x277CBEAC0]);
        v10 = v28;
        v11 = [MEMORY[0x277CCABB0] numberWithBool:v28];
        [v9 initWithObjectsAndKeys:{v11, @"AVAudioSessionSpatializationEnabledKey", 0}];

        if (v29)
        {
          os_unfair_lock_lock(v29 + 134);
          v31 = 1;
          v12 = v29;
          if (v29)
          {
            v13 = v30;
            if (v30)
            {
              atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v14 = [MEMORY[0x277CCABB0] numberWithBool:v10];
            avas::server::ConstAudioSessionInfo::SetAVASProperty(v12, @"IsSpatialEnabled", v14);

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            v15 = v29;
            if (v29)
            {
              v16 = v30;
              if (v30)
              {
                atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              avas::server::AudioSessionInfo::SetSpatialPreferences(v15, v27);
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v17 = v29;
              if (v29)
              {
                v18 = v30;
                if (v30)
                {
                  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v17, v1, &__p);
                if (v18)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
                }

                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[4],char [4],0>(buf);
              }

              v24 = _os_crash();
              [AVAudioSessionRemoteXPCClient initWithServer:v24 process:? delegate:?];
            }

            v23 = _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:v23 process:? delegate:?];
          }
        }

        v25 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v25 process:? delegate:?];
      }

      v22 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v22 process:? delegate:?];
    }

    v21 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v21 process:? delegate:?];
  }

  v19 = *avas::server::gSessionServerLog(v3);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AudioSessionServerImpNotificationHandlers.mm";
    *&buf[12] = 1024;
    *&buf[14] = 662;
    _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid session pointer.", buf, 0x12u);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v29);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_24173D9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, os_unfair_lock_s *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  v31 = v30;

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a23);
  _Unwind_Resume(a1);
}

void avas::server::HandleMicrophoneInjectionCapabilityChangeNotification(avas::server *this, NSDictionary *a2)
{
  v2 = this;
  v3 = *MEMORY[0x277CEFD00];
  v4 = v2;
  v5 = avas::server::GetASCallbackQueue(v4);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3321888768;
  v7[2] = ___ZN4avas6server53HandleMicrophoneInjectionCapabilityChangeNotificationEP12NSDictionary_block_invoke;
  v7[3] = &__block_descriptor_48_ea8_32c95_ZTSKZN4avas6server53HandleMicrophoneInjectionCapabilityChangeNotificationEP12NSDictionaryE3__0_e5_v8__0l;
  v8 = v3;
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void ___ZN4avas6server53HandleMicrophoneInjectionCapabilityChangeNotificationEP12NSDictionary_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = avas::server::LegacySessionManager::Instance(a1);
  avas::server::LegacySessionManager::GetMicrophoneInjectionSubscribersList(v2, &v12);
  v3 = v12;
  v4 = v13;
  if (v12 != v13)
  {
    do
    {
      v5 = *v3;
      v6 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v14, *v3);
      if (v14)
      {
        v7 = *avas::server::gSessionServerLog(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v17 = "AudioSessionServerImpNotificationHandlers.mm";
          v18 = 1024;
          v19 = 875;
          v20 = 1024;
          v21 = v5;
          _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching MicrophoneInjectionCapabilityChangeNotification for session:0x%x", buf, 0x18u);
        }

        v8 = v14;
        if (!v14)
        {
          v11 = _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:v11 process:? delegate:?];
        }

        v9 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::AudioSessionInfo::DeferPropertyChangeCallback(v8, *(a1 + 32), *(a1 + 40), 1);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v14);
      ++v3;
    }

    while (v3 != v4);
    v3 = v12;
  }

  if (v3)
  {
    v13 = v3;
    operator delete(v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_24173DD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, os_unfair_lock_s *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c95_ZTSKZN4avas6server53HandleMicrophoneInjectionCapabilityChangeNotificationEP12NSDictionaryE3__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c95_ZTSKZN4avas6server53HandleMicrophoneInjectionCapabilityChangeNotificationEP12NSDictionaryE3__0(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void ___ZZN4avas6server28HandleMXNotificationCallbackEP26opaqueCMNotificationCenterPKvPK10__CFStringS4_S4_ENK3__0clEb_block_invoke(uint64_t a1)
{
  avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v4, *(a1 + 48));
  v2 = v4;
  if (v4)
  {
    v3 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::AudioSessionInfo::DeferPropertyChangeCallback(v2, *(a1 + 32), *(a1 + 40), *(a1 + 52));
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v4);
}

void sub_24173DEB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(va);
  _Unwind_Resume(a1);
}

void ___ZN12_GLOBAL__N_130HandleInterruptionNotificationEjP12NSDictionary_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRetain(*(a1 + 40));
  }

  v4 = *(a1 + 32);
  avas::server::ForbidAudioControlQueue(v4);
  if (!v2 || !v3)
  {
    v45 = avas::server::gSessionServerLog(v5);
    ___ZN12_GLOBAL__N_130HandleInterruptionNotificationEjP12NSDictionary_block_invoke_cold_8(v45);
    v46 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v46 process:? delegate:?];
  }

  v6 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v55, v2);
  if (v55)
  {
    v8 = avas::server::GetPickableRoutesFromMX(&v55, v7);
    v9 = v55;
    if (!v55)
    {
      v40 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v40 process:? delegate:?];
    }

    v10 = v56;
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v9, v2, &v53);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v12 = *avas::server::gSessionServerLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v50[0] = 0;
      v51 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(__p);
    }

    v13 = [(avas::server *)v4 objectForKey:*MEMORY[0x277D270F0]];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 BOOLValue];
      if (v15)
      {
        v16 = *avas::server::gSessionServerLog(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AudioSessionServerImpNotificationHandlers.mm";
          v58 = 1024;
          v59 = 112;
          _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dropping wasSuspended interruption notification (see rdar://91116492)", buf, 0x12u);
        }

LABEL_61:

        if (v54 < 0)
        {
          operator delete(v53);
        }

        goto LABEL_64;
      }
    }

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:1];
    [(NSDictionary *)v17 setObject:v18 forKey:*MEMORY[0x277CEFCE8]];

    v19 = [(avas::server *)v4 objectForKey:*MEMORY[0x277D27110]];
    v20 = [(avas::server *)v4 objectForKey:*MEMORY[0x277D27108]];
    v47 = [(avas::server *)v4 objectForKey:*MEMORY[0x277D270E8]];
    v50[0] = 0;
    v51 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
    v21 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
    if (v19)
    {
      v22 = v19;
      *buf = [v19 UTF8String];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v49);
    }

    if (v20)
    {
      v24 = v20;
      *buf = [v20 UTF8String];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v48);
    }

    if (v47)
    {
      v25 = v55;
      if (!v55)
      {
        v44 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v44 process:? delegate:?];
      }

      v21 = v56;
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        v26 = *(v25 + 144);
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        if (!v26)
        {
          goto LABEL_30;
        }
      }

      else if (!*(v55 + 144))
      {
        goto LABEL_30;
      }

      v21 = [(NSDictionary *)v17 setObject:v47 forKey:*MEMORY[0x277CEFCE0]];
    }

LABEL_30:
    v27 = *avas::server::gSessionServerLog(v21);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(__p);
    }

    if (v14 && [v14 BOOLValue])
    {
      [(NSDictionary *)v17 setObject:v14 forKey:*MEMORY[0x277CEFCF8]];
    }

    v28 = [(avas::server *)v4 objectForKey:*MEMORY[0x277D27100]];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 unsignedIntValue];
      if ([v29 unsignedIntValue] == 4)
      {
        v31 = 4;
      }

      else
      {
        v31 = 2 * (v30 == 1);
      }

      if (!v14)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v31 = 0;
      if (!v14)
      {
LABEL_45:
        v32 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v31];
        [(NSDictionary *)v17 setObject:v32 forKey:*MEMORY[0x277CEFCC8]];

        v33 = v55;
        if (!v55)
        {
          v41 = _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:v41 process:? delegate:?];
        }

        v34 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::GetCurrentlyPickedRoute(v8, buf);
        avas::server::AudioSessionInfo::SetPickedRouteAtTimeOfInterruption(v33, buf);
        std::unique_ptr<avas::server::PickableRoute>::~unique_ptr[abi:ne200100](buf);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        v35 = v55;
        if (!v55)
        {
          v42 = _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:v42 process:? delegate:?];
        }

        v36 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::AudioSessionInfo::SetInterrupted(v35, 1, 0);
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        v37 = v55;
        if (!v55)
        {
          v43 = _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:v43 process:? delegate:?];
        }

        v38 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::AudioSessionInfo::DeferPropertyChangeCallback(v37, *MEMORY[0x277CEFCC0], v17, 0);
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v51, v50[0]);

        goto LABEL_61;
      }
    }

    if ([v14 BOOLValue])
    {
      v31 = 1;
    }

    else
    {
      v31 = v31;
    }

    goto LABEL_45;
  }

  v23 = *avas::server::gSessionServerLog(v6);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "AudioSessionServerImpNotificationHandlers.mm";
    v58 = 1024;
    v59 = 93;
    v60 = 1024;
    v61 = v2;
    _os_log_impl(&dword_241701000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot get session info for session ID: 0x%x. Session may have expired", buf, 0x18u);
  }

LABEL_64:
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v55);

  CFRelease(v3);
  v39 = *MEMORY[0x277D85DE8];
}

void sub_24173E83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, os_unfair_lock_s *a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a31);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a13);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_ea8_40c36_ZTSN10applesauce2CF9ObjectRefIPKvEE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 40);
  if (v3)
  {
    result = CFRetain(*(a2 + 40));
  }

  v2[5] = v3;
  return result;
}

void __destroy_helper_block_ea8_40c36_ZTSN10applesauce2CF9ObjectRefIPKvEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZN12_GLOBAL__N_130HandleInterruptionNotificationEjP12NSDictionary_block_invoke_105(uint64_t a1)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRetain(*(a1 + 40));
  }

  v4 = *(a1 + 32);
  avas::server::ForbidAudioControlQueue(v4);
  if (!v2 || !v3)
  {
    v25 = avas::server::gSessionServerLog(v5);
    ___ZN12_GLOBAL__N_130HandleInterruptionNotificationEjP12NSDictionary_block_invoke_105_cold_12(v25);
    v26 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v26 process:? delegate:?];
  }

  v6 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v30, v2);
  if (v30)
  {
    v27 = avas::server::GetPickableRoutesFromMX(&v30, v7);
    v8 = v30;
    if (!v30)
    {
      v22 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v22 process:? delegate:?];
    }

    v9 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v8, v2, &v29);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v11 = *avas::server::gSessionServerLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOBYTE(__p[0]) = 0;
      __p[1] = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(__p);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(__p);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(v37);
    }

    v12 = [(avas::server *)v4 objectForKey:*MEMORY[0x277D27118]];
    if (v12)
    {
      v14 = CFStringFind(v12, @"non-resumable", 8uLL);
      if (v14.length)
      {
        if (!v14.location)
        {
LABEL_28:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(buf);
        }
      }
    }

    v15 = v30;
    if (!v30)
    {
      v23 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v23 process:? delegate:?];
    }

    v16 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *(v15 + 226);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      if (!v17)
      {
        goto LABEL_28;
      }

      v15 = v30;
      if (!v30)
      {
        v24 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v24 process:? delegate:?];
      }

      v18 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = *(v15 + 31);
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        if (!v19)
        {
          goto LABEL_28;
        }

LABEL_27:
        avas::server::InterruptionIsResumable(v19, v27, v13);
        goto LABEL_28;
      }
    }

    else if (!*(v30 + 226))
    {
      goto LABEL_28;
    }

    v19 = *(v15 + 31);
    if (!v19)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v20 = *avas::server::gSessionServerLog(v6);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315650;
    *&buf[1] = "AudioSessionServerImpNotificationHandlers.mm";
    v33 = 1024;
    v34 = 224;
    v35 = 1024;
    v36 = v2;
    _os_log_impl(&dword_241701000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot get session info for session ID: 0x%x. Session may have expired", buf, 0x18u);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v30);

  CFRelease(v3);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_24173F564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, const void *a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, os_unfair_lock_s *a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a31);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a11);
  _Unwind_Resume(a1);
}

id **std::unique_ptr<avas::server::PickableRoute>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x245CEEB60](v2, 0x80C40B8603338);
  }

  return a1;
}

void nlohmann::detail::exception::name(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "] ", 2uLL);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_24173F8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::detail::exception *nlohmann::detail::exception::exception(nlohmann::detail::exception *this, int a2, const char *a3)
{
  *this = &unk_28535A970;
  *(this + 2) = a2;
  MEMORY[0x245CEE8B0](this + 16, a3);
  return this;
}

void nlohmann::detail::exception::~exception(std::exception *this)
{
  this->__vftable = &unk_28535A970;
  MEMORY[0x245CEE8C0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28535A970;
  MEMORY[0x245CEE8C0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x245CEEB60);
}

void nlohmann::detail::type_error::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "type_error");
  nlohmann::detail::exception::name(a1, &v14);
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

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = &unk_28535A9B0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_24173FB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

const char *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return (&off_278CEACC0)[v1];
  }
}

void nlohmann::detail::type_error::~type_error(std::exception *this)
{
  this->__vftable = &unk_28535A970;
  MEMORY[0x245CEE8C0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28535A970;
  MEMORY[0x245CEE8C0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x245CEEB60);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[10]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[110],char [110],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[110]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[8],char [8],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[8]>();
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<nlohmann::byte_container_with_subtype<std::vector<unsigned char>>,nlohmann::byte_container_with_subtype<std::vector<unsigned char>> const&>();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void *std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(void *a1, uint64_t a2, void **a3)
{
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
  }

  return result;
}

void **std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_241740424(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&this[1], a2 + 24);
  return this;
}

void sub_24174049C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24174058C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v4, v6);
      v6 += 16;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 16;
    v7 = a3 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v8 = *v7;
      v7 -= 16;
      result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v8);
      v10 = v6 == a5;
      v6 = v7;
    }

    while (!v10);
  }

  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241740810(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void std::__shared_ptr_emplace<nlohmann::detail::output_string_adapter<char,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535A9D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[(a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[a2];
  return (*(**a1 + 8))();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[12]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[86],char [86],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[86]>();
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

id OUTLINED_FUNCTION_3(void **a1)
{
  v2 = *a1;

  return v2;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t ___ZL25MediaSafetyNetLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaSafetyNetLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *___ZL45getMSNMonitorSetLastMicrophoneClientSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaSafetyNetLibrary();
  result = dlsym(v2, "MSNMonitorSetLastMicrophoneClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSNMonitorSetLastMicrophoneClientSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaSafetyNetLibrary(void)
{
  v5 = 0;
  v0 = MediaSafetyNetLibraryCore(&v5);
  if (!v0)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaSafetyNetLibrary()"];
    [v1 handleFailureInFunction:v4 file:@"MSNSoftLink.h" lineNumber:18 description:{@"%s", v5}];

    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = v5;
  if (v5)
  {
LABEL_5:
    free(v2);
  }

  return v1;
}

void *___ZL40getMSNMonitorSetMicrophoneStateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaSafetyNetLibrary();
  result = dlsym(v2, "MSNMonitorSetMicrophoneState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSNMonitorSetMicrophoneStateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t *std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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

void avas::server::DeferredMessageState::EnqueueDefaultRouteChange(avas::server::DeferredMessageState *this, const avas::RouteIdentifier *a2)
{
  v6 = *(this + 12);
  v5 = *(this + 13);
  v4 = this + 96;
  if (v6 != v5)
  {
    v7 = *(a2 + 6);
    v8 = v6 + 4;
    while (*(v8 - 2) != v7)
    {
      v9 = v8 == v5;
      v8 += 4;
      if (v9)
      {
        v6 = *(this + 13);
        goto LABEL_13;
      }
    }

    v6 = v8 - 4;
    if (v8 - 4 != v5 && v8 != v5)
    {
      do
      {
        if (*(v8 + 6) != v7)
        {
          avas::RouteIdentifier::operator=();
          v6 += 4;
        }

        v8 += 4;
      }

      while (v8 != v5);
      v5 = *(this + 13);
    }
  }

LABEL_13:
  std::vector<avas::RouteIdentifier>::erase(v4, v6, v5);
  std::vector<avas::RouteIdentifier>::push_back[abi:ne200100](v4, a2);

  avas::server::DeferredMessageState::EnqueueEventType(this, 1);
}

BOOL avas::server::DeferredMessageState::SendSingleMessage(avas::server::DeferredMessageState *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    v2 = *avas::server::gSessionServerLog(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      avas::ProcessToken::description((this + 16), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v4 = *(this + 1);
      *buf = 136315906;
      v10 = "AVAudioSessionXPCClientRelay.mm";
      v11 = 1024;
      v12 = 382;
      v13 = 2080;
      v14 = p_p;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_241701000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d deferring message for client process %s. Count=%u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v5 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    if (*(this + 4) - *(this + 3) != 4)
    {
      avas::server::DeferredMessageState::SendSingleMessage();
    }

    v7 = *MEMORY[0x277D85DE8];

    return avas::server::DeferredMessageState::SendDeferredMessages(this);
  }
}

BOOL avas::server::DeferredMessageState::SendInterruptionMessage(avas::server::DeferredMessageState *this, int a2, NSDictionary *a3)
{
  v5 = a3;
  avas::server::DeferredMessageState::EnqueueInterruptionMessage(this, a2, v5);
  v6 = avas::server::DeferredMessageState::SendSingleMessage(this);

  return v6;
}

void avas::server::DeferredMessageState::EnqueueInterruptionMessage(avas::server::DeferredMessageState *this, int a2, NSDictionary *a3)
{
  v9 = a2;
  v5 = a3;
  v10 = v5;
  v6 = *(this + 22);
  if (v6 >= *(this + 23))
  {
    v8 = std::vector<std::pair<unsigned int,NSDictionary * {__strong}>>::__emplace_back_slow_path<std::pair<unsigned int,NSDictionary * {__strong}>>(this + 21, &v9);
    v7 = v10;
  }

  else
  {
    v7 = 0;
    *v6 = a2;
    v10 = 0;
    v8 = v6 + 16;
    *(v6 + 8) = v5;
  }

  *(this + 22) = v8;

  avas::server::DeferredMessageState::EnqueueEventType(this, 4);
}

void avas::server::DeferredMessageState::EnqueueStoppedForAppStateChange(avas::server::DeferredMessageState *this, int a2)
{
  v6 = a2;
  v4 = *(this + 15);
  v3 = *(this + 16);
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      if (++v4 == v3)
      {
        goto LABEL_13;
      }
    }

    if (v4 != v3)
    {
      for (i = v4 + 1; i != v3; ++i)
      {
        if (*i != v6)
        {
          *v4++ = *i;
        }
      }
    }
  }

  if (v4 != v3)
  {
    *(this + 16) = v4;
  }

LABEL_13:
  std::vector<unsigned int>::push_back[abi:ne200100](this + 15, &v6);
  avas::server::DeferredMessageState::EnqueueEventType(this, 2);
}

void avas::server::DeferredMessageState::EnqueueHasProxies(avas::server::DeferredMessageState *this, unsigned int a2, int a3)
{
  v5 = *(this + 24);
  v6 = *(this + 25);
  v4 = this + 192;
  v7 = v5;
  if (v5 != v6)
  {
    while (*v7 != a2)
    {
      if (++v7 == v6)
      {
        goto LABEL_13;
      }
    }

    if (v7 != v6)
    {
      for (i = v7 + 1; i != v6; ++i)
      {
        if (*i != a2)
        {
          *v7 = *i;
          *(v7++ + 4) = *(i + 4);
        }
      }
    }
  }

  if (v7 != v6)
  {
    *(this + 25) = v7;
    v6 = v7;
  }

LABEL_13:
  v9 = 0x100000000;
  if (!a3)
  {
    v9 = 0;
  }

  v10 = v9 | a2;
  v11 = *(this + 26);
  if (v6 >= v11)
  {
    v13 = v6 - v5;
    if ((v13 + 1) >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v14 = v11 - v5;
    v15 = v14 >> 2;
    if (v14 >> 2 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,BOOL>>>(v4, v16);
    }

    v17 = (8 * v13);
    *v17 = v10;
    v12 = 8 * v13 + 8;
    v18 = *(this + 24);
    v19 = *(this + 25) - v18;
    v20 = v17 - v19;
    memcpy(v17 - v19, v18, v19);
    v21 = *(this + 24);
    *(this + 24) = v20;
    *(this + 25) = v12;
    *(this + 26) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v6 = v10;
    v12 = (v6 + 1);
  }

  *(this + 25) = v12;

  avas::server::DeferredMessageState::EnqueueEventType(this, 5);
}

void avas::server::DeferredMessageState::EnqueueNeedsStateSync(avas::server::DeferredMessageState *this, int a2)
{
  v6 = a2;
  v4 = *(this + 18);
  v3 = *(this + 19);
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      if (++v4 == v3)
      {
        goto LABEL_13;
      }
    }

    if (v4 != v3)
    {
      for (i = v4 + 1; i != v3; ++i)
      {
        if (*i != v6)
        {
          *v4++ = *i;
        }
      }
    }
  }

  if (v4 != v3)
  {
    *(this + 19) = v4;
  }

LABEL_13:
  std::vector<unsigned int>::push_back[abi:ne200100](this + 18, &v6);
  avas::server::DeferredMessageState::EnqueueEventType(this, 3);
}

void avas::server::DeferredMessageState::EnqueueConfigurationChange(avas::server::DeferredMessageState *this, const avas::server::ConfigChangeSummary *a2)
{
  if (*(this + 88) == 1)
  {
    avas::server::ConfigChangeSummary::ConfigChangeSummary(&v31, a2);
    v3 = avas::server::ConfigChangeSummary::mutableHardwareSystemChange((this + 48));
    v4 = avas::server::ConfigChangeSummary::mutableHardwareSystemChange(&v31);
    v6 = v32;
    v7 = v33;
    if (v32 != v33)
    {
      v8 = (this + 56);
      v9 = *(this + 8);
      do
      {
        v10 = *v8;
        v11 = *v8;
        if (*v8 != v9)
        {
          v11 = *v8;
          while (*(*v6 + 12) != *(*v11 + 12))
          {
            v11 += 8;
            if (v11 == v9)
            {
              goto LABEL_11;
            }
          }
        }

        if (v11 == v9)
        {
LABEL_11:
          v16 = *(this + 9);
          if (v9 >= v16)
          {
            v18 = v9 - v10;
            v19 = (v9 - v10) >> 3;
            v20 = v19 + 1;
            if ((v19 + 1) >> 61)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v21 = v16 - v10;
            if (v21 >> 2 > v20)
            {
              v20 = v21 >> 2;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            v34[4] = this + 56;
            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::server::ObjectDescription>>>(this + 56, v22);
            }

            v23 = (v9 - v10) >> 3;
            v24 = (8 * v19);
            v25 = *v6;
            *v6 = 0;
            v26 = (8 * v19 - 8 * v23);
            *v24 = v25;
            v9 = (v24 + 1);
            memcpy(v26, v10, v18);
            v27 = *(this + 7);
            *(this + 7) = v26;
            *(this + 8) = v9;
            v28 = *(this + 9);
            *(this + 9) = 0;
            v34[2] = v27;
            v34[3] = v28;
            v34[0] = v27;
            v34[1] = v27;
            std::__split_buffer<std::unique_ptr<avas::server::ObjectDescription>>::~__split_buffer(v34);
          }

          else
          {
            v17 = *v6;
            *v6 = 0;
            *v9 = v17;
            v9 += 8;
          }

          *(this + 8) = v9;
        }

        else
        {
          v12 = *v11;
          v13 = *v6;
          v14 = *(*v6 + 16) | v12[4];
          v15 = v12[2];
          v12[2] = v15 | 2;
          LODWORD(v13) = *(v13 + 20);
          v12[4] = v14;
          v12[5] = v13;
          v12[2] = v15 | 6;
        }

        ++v6;
      }

      while (v6 != v7);
      v6 = v32;
      v7 = v33;
    }

    while (v7 != v6)
    {
      v30 = *--v7;
      v29 = v30;
      *v7 = 0;
      if (v30)
      {
        (*(*v29 + 8))(v29);
      }
    }

    v33 = v6;
    avas::server::ConfigChangeSummary::~ConfigChangeSummary(&v31);
  }

  else
  {
    std::optional<avas::server::ConfigChangeSummary>::operator=[abi:ne200100]<avas::server::ConfigChangeSummary const&,void>((this + 48), a2);
  }

  avas::server::DeferredMessageState::EnqueueEventType(this, 0);
}

void avas::server::DeferredMessageState::EnqueueControlValueChanged(avas::server::DeferredMessageState *this, const ControlValue *a2)
{
  v5 = *(this + 27);
  v6 = *(this + 28);
  v4 = this + 216;
  avas::server::ControlValue::ControlValue(v9, a2);
  if (v5 != v6)
  {
    v7 = v5 + 10;
    while (*(v7 - 3) != v10)
    {
      v8 = v7 == v6;
      v7 += 10;
      if (v8)
      {
        v5 = v6;
        goto LABEL_12;
      }
    }

    v5 = v7 - 10;
    if (v7 - 10 != v6)
    {
      while (v7 != v6)
      {
        if (v7[7] != v10)
        {
          avas::server::ControlValue::operator=();
          v5 += 10;
        }

        v7 += 10;
      }
    }
  }

LABEL_12:
  avas::server::ControlValue::~ControlValue(v9);
  std::vector<avas::server::ControlValue>::erase(v4, v5, *(this + 28));
  std::vector<avas::server::ControlValue>::push_back[abi:ne200100](v4, a2);
  avas::server::DeferredMessageState::EnqueueEventType(this, 6);
}

avas::server::ConfigChangeSummary *std::optional<avas::server::ConfigChangeSummary>::operator=[abi:ne200100]<avas::server::ConfigChangeSummary const&,void>(avas::server::ConfigChangeSummary *a1, const avas::server::ConfigChangeSummary *a2)
{
  if (*(a1 + 40) == 1)
  {
    avas::server::ConfigChangeSummary::operator=();
  }

  else
  {
    avas::server::ConfigChangeSummary::ConfigChangeSummary(a1, a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

void avas::server::DeferredMessageState::EnqueueEventType(avas::server::DeferredMessageState *this, int a2)
{
  v5 = *(this + 3);
  v6 = *(this + 4);
  v4 = this + 24;
  v7 = v5;
  if (v5 != v6)
  {
    v7 = v5;
    while (*v7 != a2)
    {
      v7 += 4;
      if (v7 == v6)
      {
        goto LABEL_7;
      }
    }
  }

  if (v7 == v6)
  {
LABEL_7:
    v8 = *(this + 5);
    if (v6 >= v8)
    {
      v10 = v6 - v5;
      v11 = (v6 - v5) >> 2;
      v12 = v11 + 1;
      if ((v11 + 1) >> 62)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v13 = v8 - v5;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
      v15 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v4, v15);
      }

      v16 = (v6 - v5) >> 2;
      v17 = (4 * v11);
      v18 = (4 * v11 - 4 * v16);
      *v17 = a2;
      v9 = v17 + 1;
      memcpy(v18, v5, v10);
      v19 = *(this + 3);
      *(this + 3) = v18;
      *(this + 4) = v9;
      *(this + 5) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v6 = a2;
      v9 = v6 + 4;
    }

    *(this + 4) = v9;
  }

  ++*(this + 1);
}

void (***std::vector<avas::RouteIdentifier>::erase(uint64_t a1, void (***a2)(void), void (***a3)(void)))(void)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        avas::RouteIdentifier::operator=();
        v4 += 4;
        v7 += 4;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    if (v6 != v7)
    {
      v8 = v6 - 4;
      v9 = v8;
      v10 = v8;
      do
      {
        v11 = *v10;
        v10 -= 4;
        (*v11)(v9);
        v8 -= 4;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::vector<avas::RouteIdentifier>::push_back[abi:ne200100](uint64_t a1, const RouteIdentifier *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<avas::RouteIdentifier>::__emplace_back_slow_path<avas::RouteIdentifier const&>(a1, a2);
  }

  else
  {
    result = avas::RouteIdentifier::RouteIdentifier(v3, a2) + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

void (***std::vector<avas::server::ControlValue>::erase(uint64_t a1, void (***a2)(void), void (***a3)(void)))(void)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        avas::server::ControlValue::operator=();
        v4 += 10;
        v7 += 10;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    if (v6 != v7)
    {
      v8 = v6 - 10;
      v9 = v8;
      v10 = v8;
      do
      {
        v11 = *v10;
        v10 -= 10;
        (*v11)(v9);
        v8 -= 10;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::vector<avas::server::ControlValue>::push_back[abi:ne200100](uint64_t a1, const ControlValue *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<avas::server::ControlValue>::__emplace_back_slow_path<avas::server::ControlValue const&>(a1, a2);
  }

  else
  {
    result = avas::server::ControlValue::ControlValue(v3, a2) + 80;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL avas::server::DeferredMessageState::SendDeferredMessages(avas::server::DeferredMessageState *this)
{
  v17 = *MEMORY[0x277D85DE8];
  *this = 0;
  if (*(this + 1) >= 2u)
  {
    v2 = *avas::server::gSessionServerLog(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(this + 1);
      avas::ProcessToken::description((this + 16), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v10 = "AVAudioSessionXPCClientRelay.mm";
      v11 = 1024;
      v12 = 393;
      v13 = 1024;
      v14 = v3;
      v15 = 2080;
      v16 = p_p;
      _os_log_impl(&dword_241701000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d sending %u deferred messages for client process %s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v5 = *(this + 3);
  result = v5 != *(this + 4);
  *this = result;
  *(this + 4) = v5;
  *(this + 1) = 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void avas::ProcessToken::description(avas::ProcessToken *this@<X0>, std::string *a2@<X8>)
{
  v3 = *this;
  *(&v9.__r_.__value_.__s + 23) = ((*this << 14) >> 31) & 5;
  v4 = &v9;
  if ((v3 & 0x20000) != 0)
  {
    v4 = (v9.__r_.__value_.__r.__words + 5);
    qmemcpy(&v9, "Test.", 5);
  }

  v4->__r_.__value_.__s.__data_[0] = 0;
  std::to_string(&__p, v3 & 0x1FFFF);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = std::string::append(&v9, p_p, size);
  *a2 = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_241742600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2417426D8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void sub_241742828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);

  objc_destroyWeak((v6 - 24));
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::MergeChangedHardwareObject(_anonymous_namespace_ *this, uint64_t **a2, avas::server::ChangedObject *a3)
{
  v5 = *(avas::server::ChangedObject::objectDescription(this) + 96);
  if (v5 != *(avas::server::ChangedObject::objectDescription(a2) + 96))
  {
  }

  v6 = *(avas::server::ChangedObject::objectDescription(this) + 104);
  if (v6 != *(avas::server::ChangedObject::objectDescription(a2) + 104))
  {
  }

  v7 = (this + 56);
  v99 = a2;
  v8 = a2[7];
  v10 = a2[8];
  v9 = a2 + 7;
  if (v8 != v10)
  {
    v11 = *(this + 8);
    do
    {
      v12 = *(this + 9);
      if (v11 >= v12)
      {
        v14 = *v7;
        v15 = v11 - *v7;
        v16 = v15 >> 3;
        v17 = (v15 >> 3) + 1;
        if (v17 >> 61)
        {
LABEL_106:
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v18 = v12 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        v107 = this + 56;
        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::server::ObjectDescription>>>(this + 56, v19);
        }

        v20 = *v8;
        *v8 = 0;
        *(8 * v16) = v20;
        v11 = (8 * v16 + 8);
        memcpy(0, v14, v15);
        v21 = *(this + 7);
        *(this + 7) = 0;
        *(this + 8) = v11;
        v22 = *(this + 9);
        *(this + 9) = 0;
        v105 = v21;
        v106 = v22;
        v103 = v21;
        v104 = v21;
        std::__split_buffer<std::unique_ptr<avas::server::ObjectDescription>>::~__split_buffer(&v103);
      }

      else
      {
        v13 = *v8;
        *v8 = 0;
        *v11 = v13;
        v11 += 8;
      }

      *(this + 8) = v11;
      ++v8;
    }

    while (v8 != v10);
  }

  std::vector<std::unique_ptr<avas::server::ObjectDescription>>::clear[abi:ne200100](v9);
  v23 = (this + 104);
  v24 = *(v99 + 10);
  v25 = *(v99 + 11);
  if (v24 != v25)
  {
    v26 = (this + 80);
    do
    {
      v27 = *(this + 7);
      v28 = *(this + 8);
      if (v27 != v28)
      {
        while (*(*v24 + 96) != *(*v27 + 96))
        {
          if (++v27 == v28)
          {
            v27 = *(this + 8);
            goto LABEL_31;
          }
        }

        if (v27 != v28)
        {
          v29 = v27 + 1;
          if (v27 + 1 != v28)
          {
            do
            {
              v30 = *v29;
              if (*(*v24 + 96) != *(*v29 + 96))
              {
                *v29 = 0;
                v31 = *v27;
                *v27 = v30;
                if (v31)
                {
                  (*(*v31 + 8))(v31);
                }

                ++v27;
              }

              ++v29;
            }

            while (v29 != v28);
            v28 = *(this + 8);
          }
        }
      }

LABEL_31:
      std::vector<std::unique_ptr<avas::server::ObjectDescription>>::erase(this + 56, v27, v28);
      v32 = *(this + 13);
      v33 = *(this + 14);
      if (v32 != v33)
      {
        while (1)
        {
          v34 = *(*v24 + 96);
          if (v34 == *(avas::server::ChangedObject::objectDescription(*v32) + 96))
          {
            break;
          }

          if (++v32 == v33)
          {
            v32 = v33;
            goto LABEL_43;
          }
        }

        if (v32 != v33)
        {
          for (i = v32 + 1; i != v33; ++i)
          {
            v36 = *(*v24 + 96);
            if (v36 != *(avas::server::ChangedObject::objectDescription(*i) + 96))
            {
              v37 = *i;
              *i = 0;
              v38 = *v32;
              *v32 = v37;
              if (v38)
              {
                (*(*v38 + 8))(v38);
              }

              ++v32;
            }
          }
        }
      }

LABEL_43:
      std::vector<std::unique_ptr<avas::server::ObjectDescription>>::erase(this + 104, v32, *(this + 14));
      v40 = *(this + 11);
      v39 = *(this + 12);
      if (v40 >= v39)
      {
        v43 = *v26;
        v44 = v40 - *v26;
        v45 = v44 >> 3;
        v46 = (v44 >> 3) + 1;
        if (v46 >> 61)
        {
          goto LABEL_106;
        }

        v47 = v39 - v43;
        if (v47 >> 2 > v46)
        {
          v46 = v47 >> 2;
        }

        v48 = v47 >= 0x7FFFFFFFFFFFFFF8;
        v49 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v48)
        {
          v49 = v46;
        }

        v107 = this + 80;
        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::server::ObjectDescription>>>(this + 80, v49);
        }

        v50 = *v24;
        *v24 = 0;
        *(8 * v45) = v50;
        v42 = 8 * v45 + 8;
        memcpy(0, v43, v44);
        v51 = *(this + 10);
        *(this + 10) = 0;
        *(this + 11) = v42;
        v52 = *(this + 12);
        *(this + 12) = 0;
        v105 = v51;
        v106 = v52;
        v103 = v51;
        v104 = v51;
        std::__split_buffer<std::unique_ptr<avas::server::ObjectDescription>>::~__split_buffer(&v103);
      }

      else
      {
        v41 = *v24;
        *v24 = 0;
        *v40 = v41;
        v42 = (v40 + 8);
      }

      *(this + 11) = v42;
      ++v24;
    }

    while (v24 != v25);
  }

  std::vector<std::unique_ptr<avas::server::ObjectDescription>>::clear[abi:ne200100](v99 + 10);
  v53 = *(this + 1);
  v54 = *(this + 2);
  v55 = (this + 8);
  v56 = 126 - 2 * __clz((v54 - v53) >> 4);
  if (v54 == v53)
  {
    v57 = 0;
  }

  else
  {
    v57 = v56;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,false>(v53, v54, &v103, v57, 1);
  v58 = *(v99 + 1);
  v59 = *(v99 + 2);
  v60 = 126 - 2 * __clz((v59 - v58) >> 4);
  if (v59 == v58)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,false>(v58, v59, &v103, v61, 1);
  v100 = 0;
  v101 = 0;
  v102 = 0;
  std::__set_union[abi:ne200100]<std::__less<void,void> &,std::__wrap_iter<caulk::xstring *>,std::__wrap_iter<caulk::xstring *>,std::__wrap_iter<caulk::xstring *>,std::__wrap_iter<caulk::xstring *>,std::back_insert_iterator<std::vector<caulk::xstring>>>(*v55, *(v99 + 1), *(this + 2), *(v99 + 2), &v100, &v103);
  std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](v99 + 8, *(v99 + 1));
  if (v55 != &v100)
  {
    std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 1, v100, v101, (v101 - v100) >> 4);
  }

  v103 = &v100;
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v103);
  v62 = *(v99 + 4);
  v63 = *(v99 + 5);
  if (v62 != v63)
  {
    v64 = (this + 32);
    v65 = *(this + 5);
    do
    {
      v66 = *v64;
      if (*v64 == v65)
      {
        goto LABEL_69;
      }

      while (1)
      {
        v67 = *v62;
        v68 = *v66;
        if (avas::server::CustomPropertyAddress::operator==())
        {
          break;
        }

        v66 += 8;
        if (v66 == v65)
        {
          v66 = v65;
          break;
        }
      }

      v65 = *(this + 5);
      if (v66 == v65)
      {
LABEL_69:
        v69 = *(this + 6);
        if (v65 >= v69)
        {
          v71 = *v64;
          v72 = v65 - *v64;
          v73 = v72 >> 3;
          v74 = (v72 >> 3) + 1;
          if (v74 >> 61)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v75 = v69 - v71;
          if (v75 >> 2 > v74)
          {
            v74 = v75 >> 2;
          }

          if (v75 >= 0x7FFFFFFFFFFFFFF8)
          {
            v76 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v74;
          }

          v107 = this + 32;
          if (v76)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::server::ObjectDescription>>>(this + 32, v76);
          }

          v77 = *v62;
          *v62 = 0;
          *(8 * v73) = v77;
          v65 = (8 * v73 + 8);
          memcpy(0, v71, v72);
          v78 = *(this + 4);
          *(this + 4) = 0;
          *(this + 5) = v65;
          v79 = *(this + 6);
          *(this + 6) = 0;
          v105 = v78;
          v106 = v79;
          v103 = v78;
          v104 = v78;
          std::__split_buffer<std::unique_ptr<avas::server::ObjectDescription>>::~__split_buffer(&v103);
        }

        else
        {
          v70 = *v62;
          *v62 = 0;
          *v65 = v70;
          v65 += 8;
        }

        *(this + 5) = v65;
      }

      ++v62;
    }

    while (v62 != v63);
  }

  std::vector<std::unique_ptr<avas::server::ObjectDescription>>::clear[abi:ne200100](v99 + 4);
  v81 = *(v99 + 13);
  for (j = *(v99 + 14); v81 != j; ++v81)
  {
    v83 = *(this + 13);
    v84 = *(this + 14);
    if (v83 != v84)
    {
      while (1)
      {
        v85 = *(avas::server::ChangedObject::objectDescription(*v81) + 96);
        if (v85 == *(avas::server::ChangedObject::objectDescription(*v83) + 96))
        {
          break;
        }

        if (++v83 == v84)
        {
          v83 = v84;
          break;
        }
      }

      v84 = *(this + 14);
    }

    if (v83 == v84)
    {
      v86 = *(this + 15);
      if (v84 >= v86)
      {
        v89 = *v23;
        v90 = v84 - *v23;
        v91 = v90 >> 3;
        v92 = (v90 >> 3) + 1;
        if (v92 >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v93 = v86 - v89;
        if (v93 >> 2 > v92)
        {
          v92 = v93 >> 2;
        }

        if (v93 >= 0x7FFFFFFFFFFFFFF8)
        {
          v94 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v94 = v92;
        }

        v107 = this + 104;
        if (v94)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::server::ObjectDescription>>>(this + 104, v94);
        }

        v95 = *v81;
        *v81 = 0;
        *(8 * v91) = v95;
        v88 = 8 * v91 + 8;
        memcpy(0, v89, v90);
        v96 = *(this + 13);
        *(this + 13) = 0;
        *(this + 14) = v88;
        v97 = *(this + 15);
        *(this + 15) = 0;
        v105 = v96;
        v106 = v97;
        v103 = v96;
        v104 = v96;
        std::__split_buffer<std::unique_ptr<avas::server::ObjectDescription>>::~__split_buffer(&v103);
      }

      else
      {
        v87 = *v81;
        *v81 = 0;
        *v84 = v87;
        v88 = (v84 + 1);
      }

      *(this + 14) = v88;
    }

    else
    {
    }
  }

  std::vector<std::unique_ptr<avas::server::ObjectDescription>>::clear[abi:ne200100](v99 + 13);
  avas::server::ChangedObject::objectDescription(v99);
  avas::server::ChangedObject::mutableObjectDescription(this);
  return avas::server::ObjectDescription::operator=();
}

void sub_241743404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<avas::server::ObjectDescription>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::server::ObjectDescription>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<avas::server::ObjectDescription>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<avas::server::ObjectDescription>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<avas::server::ObjectDescription>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::vector<std::unique_ptr<avas::server::ObjectDescription>>::erase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<avas::server::ObjectDescription> *,std::unique_ptr<avas::server::ObjectDescription> *,std::unique_ptr<avas::server::ObjectDescription> *,0>(a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v9 = *--v7;
        v8 = v9;
        *v7 = 0;
        if (v9)
        {
          (*(*v8 + 8))(v8);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<avas::server::ObjectDescription> *,std::unique_ptr<avas::server::ObjectDescription> *,std::unique_ptr<avas::server::ObjectDescription> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,false>(uint64_t result, const caulk::xstring *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v19 = a2;
  v20 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 4;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v19 = (v7 - 16);
      result = caulk::xstring::compare((v7 - 16), v8);
      if ((result & 0x80000000) != 0)
      {
        v17 = &v20;
        v18 = &v19;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(v17, v18);
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(v8, v7);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,caulk::xstring *>(v8, v7, v7, a3);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = (v7 - 16);
    if (v10 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>((v8 + 16 * (v10 >> 1)), v8, v12);
      v8 = v20;
      if (a5)
      {
LABEL_14:
        v7 = v19;
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(v8, (v8 + 16 * (v10 >> 1)), v12);
      v8 = v20;
      v13 = &v20[16 * v11];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>((v20 + 16), (v13 - 16), (v19 - 32));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>((v20 + 32), (v13 + 16), (v19 - 48));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>((v13 - 16), v13, (v13 + 16));
      v24[0] = 0;
      v24[1] = 0;
      caulk::xstring::move();
      caulk::xstring::move();
      caulk::xstring::move();
      caulk::xstring::clear(v24);
      if (a5)
      {
        goto LABEL_14;
      }
    }

    v7 = v19;
    if ((caulk::xstring::compare((v8 - 16), v8) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,caulk::xstring *,std::__less<void,void> &>(v8, v19);
      v8 = result;
      goto LABEL_26;
    }

LABEL_17:
    v14 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,caulk::xstring *,std::__less<void,void> &>(v8, v7);
    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }

    v16 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(v8, v14);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>((v14 + 16), v7);
    if (!result)
    {
      if (v16)
      {
        v20 = v14 + 16;
        v8 = (v14 + 16);
        continue;
      }

LABEL_24:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,false>(v8, v14, a3, -i, a5 & 1);
      v8 = (v14 + 16);
LABEL_26:
      a5 = 0;
      v20 = v8;
      a4 = -i;
      goto LABEL_2;
    }

    if (v16)
    {
      return result;
    }

    v19 = v14;
    v7 = v14;
  }

  if (v10 == 3)
  {
    v19 = (v7 - 16);
    return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(v8, (v8 + 16), (v7 - 16));
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v19 = (v7 - 16);
      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48), (v7 - 16));
    }

    goto LABEL_10;
  }

  v19 = (v7 - 16);
  v23 = (v8 + 16);
  v24[0] = v8;
  v21 = v7 - 16;
  v22 = (v8 + 32);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(v8, (v8 + 16), (v8 + 32));
  result = caulk::xstring::compare((v7 - 16), (v8 + 32));
  if ((result & 0x80000000) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v22, &v21);
    result = caulk::xstring::compare(v22, (v8 + 16));
    if ((result & 0x80000000) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v23, &v22);
      result = caulk::xstring::compare(v23, v8);
      if ((result & 0x80000000) != 0)
      {
        v17 = v24;
        v18 = &v23;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(v17, v18);
      }
    }
  }

  return result;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5[0] = 0;
  v5[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  return caulk::xstring::clear(v5);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(caulk::xstring *a1, caulk::xstring *this, caulk::xstring *a3)
{
  v11 = this;
  v12 = a1;
  v10 = a3;
  v5 = caulk::xstring::compare(this, a1);
  v6 = caulk::xstring::compare(a3, this);
  if (v5 < 0)
  {
    if (v6 < 0)
    {
      v8 = &v12;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v12, &v11);
      if ((caulk::xstring::compare(v10, v11) & 0x80000000) == 0)
      {
        return 1;
      }

      v8 = &v11;
    }

    v9 = &v10;
    goto LABEL_11;
  }

  if ((v6 & 0x80000000) == 0)
  {
    return 0;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v11, &v10);
  if ((caulk::xstring::compare(v11, v12) & 0x80000000) != 0)
  {
    v8 = &v12;
    v9 = &v11;
LABEL_11:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(v8, v9);
  }

  return 1;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(caulk::xstring *a1, caulk::xstring *a2, caulk::xstring *a3, caulk::xstring *a4, caulk::xstring *a5)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = a4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(a1, a2, a3);
  if ((caulk::xstring::compare(a4, a3) & 0x80000000) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v17, &v16);
    if ((caulk::xstring::compare(v17, a2) & 0x80000000) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v18, &v17);
      if ((caulk::xstring::compare(v18, a1) & 0x80000000) != 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v19, &v18);
      }
    }
  }

  result = caulk::xstring::compare(a5, a4);
  if ((result & 0x80000000) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v12, &v11);
    result = caulk::xstring::compare(v12, a3);
    if ((result & 0x80000000) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v13, &v12);
      result = caulk::xstring::compare(v13, a2);
      if ((result & 0x80000000) != 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v14, &v13);
        result = caulk::xstring::compare(v14, a1);
        if ((result & 0x80000000) != 0)
        {
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v15, &v14);
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 16);
    if (result + 16 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        result = caulk::xstring::compare(v4, v7);
        if ((result & 0x80000000) != 0)
        {
          v10[0] = 0;
          v10[1] = 0;
          caulk::xstring::move();
          v8 = v5;
          do
          {
            caulk::xstring::move();
            if (!v8)
            {
              break;
            }

            v9 = caulk::xstring::compare(v10, (v3 + v8 - 16));
            v8 -= 16;
          }

          while (v9 < 0);
          caulk::xstring::move();
          result = caulk::xstring::clear(v10);
        }

        v4 = (v6 + 16);
        v5 += 16;
      }

      while (v6 + 16 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(uint64_t result, caulk::xstring *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 16);
    while (v4 != a2)
    {
      v5 = v4;
      result = caulk::xstring::compare(v4, v3);
      if ((result & 0x80000000) != 0)
      {
        v6[0] = 0;
        v6[1] = 0;
        caulk::xstring::move();
        do
        {
          caulk::xstring::move();
          v3 = (v3 - 16);
        }

        while ((caulk::xstring::compare(v6, v3) & 0x80000000) != 0);
        caulk::xstring::move();
        result = caulk::xstring::clear(v6);
      }

      v4 = (v5 + 16);
      v3 = v5;
    }
  }

  return result;
}

const caulk::xstring *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,caulk::xstring *,std::__less<void,void> &>(const caulk::xstring *a1, const caulk::xstring *a2)
{
  v11 = a2;
  v12 = a1;
  v10[0] = 0;
  v10[1] = 0;
  caulk::xstring::move();
  if ((caulk::xstring::compare(v10, (a2 - 16)) & 0x80000000) != 0)
  {
    v5 = a1;
    do
    {
      v5 = (v5 + 16);
      v12 = v5;
    }

    while ((caulk::xstring::compare(v10, v5) & 0x80000000) == 0);
  }

  else
  {
    v4 = (a1 + 16);
    do
    {
      v5 = v4;
      v12 = v4;
      if (v4 >= v11)
      {
        break;
      }

      v6 = caulk::xstring::compare(v10, v4);
      v4 = (v5 + 16);
    }

    while ((v6 & 0x80000000) == 0);
  }

  v7 = v11;
  if (v5 < v11)
  {
    do
    {
      v7 = (v7 - 16);
      v11 = v7;
    }

    while ((caulk::xstring::compare(v10, v7) & 0x80000000) != 0);
    v5 = v12;
  }

  if (v5 < v7)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v12, &v11);
      do
      {
        v12 = (v12 + 16);
      }

      while ((caulk::xstring::compare(v10, v12) & 0x80000000) == 0);
      do
      {
        v11 = (v11 - 16);
      }

      while ((caulk::xstring::compare(v10, v11) & 0x80000000) != 0);
      v5 = v12;
    }

    while (v12 < v11);
  }

  if ((v5 - 16) != a1)
  {
    caulk::xstring::move();
  }

  caulk::xstring::move();
  v8 = v12;
  caulk::xstring::clear(v10);
  return v8;
}

char *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,caulk::xstring *,std::__less<void,void> &>(caulk::xstring *a1, caulk::xstring *a2)
{
  v12 = a2;
  v13 = a1;
  v11[0] = 0;
  v11[1] = 0;
  caulk::xstring::move();
  v3 = 0;
  do
  {
    v13 = (a1 + v3 + 16);
    v3 += 16;
  }

  while ((caulk::xstring::compare(v13, v11) & 0x80000000) != 0);
  v4 = v12;
  if (v3 == 16)
  {
    v7 = (a1 + 16);
    do
    {
      if (v7 >= v4)
      {
        break;
      }

      v4 = (v4 - 16);
      v12 = v4;
    }

    while ((caulk::xstring::compare(v4, v11) & 0x80000000) == 0);
  }

  else
  {
    v5 = (v12 - 16);
    do
    {
      v12 = v5;
      v6 = caulk::xstring::compare(v5, v11);
      v5 = (v5 - 16);
    }

    while ((v6 & 0x80000000) == 0);
    v7 = v13;
  }

  v8 = v7;
  if (v7 < v12)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v13, &v12);
      do
      {
        v13 = (v13 + 16);
      }

      while ((caulk::xstring::compare(v13, v11) & 0x80000000) != 0);
      do
      {
        v12 = (v12 - 16);
      }

      while ((caulk::xstring::compare(v12, v11) & 0x80000000) == 0);
      v8 = v13;
    }

    while (v13 < v12);
  }

  v9 = v8 - 16;
  if ((v8 - 16) != a1)
  {
    caulk::xstring::move();
  }

  caulk::xstring::move();
  caulk::xstring::clear(v11);
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(caulk::xstring *a1, caulk::xstring *a2)
{
  v15 = a2;
  v16 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        v14[0] = a1;
        v12 = (a2 - 16);
        v19 = (a1 + 16);
        v17 = a2 - 16;
        v18 = (a1 + 32);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(a1, (a1 + 16), (a1 + 32));
        if ((caulk::xstring::compare(v12, (a1 + 32)) & 0x80000000) == 0)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v18, &v17);
        if ((caulk::xstring::compare(v18, (a1 + 16)) & 0x80000000) == 0)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v19, &v18);
        if ((caulk::xstring::compare(v19, a1) & 0x80000000) == 0)
        {
          return 1;
        }

        v5 = v14;
        v6 = &v19;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v15 = (a2 - 16);
      if ((caulk::xstring::compare((a2 - 16), a1) & 0x80000000) != 0)
      {
        v5 = &v16;
        v6 = &v15;
LABEL_6:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(v5, v6);
      }

      return 1;
    }
  }

  v7 = (a1 + 32);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,0>(a1, (a1 + 16), (a1 + 32));
  v8 = (a1 + 48);
  if (v8 == a2)
  {
    return 1;
  }

  v9 = 0;
  while ((caulk::xstring::compare(v8, v7) & 0x80000000) == 0)
  {
    v10 = v15;
LABEL_20:
    v7 = v8;
    v8 = (v8 + 16);
    if (v8 == v10)
    {
      return 1;
    }
  }

  v14[0] = 0;
  v14[1] = 0;
  caulk::xstring::move();
  do
  {
    v11 = v7;
    caulk::xstring::move();
    if (v7 == v16)
    {
      break;
    }

    v7 = (v7 - 16);
  }

  while ((caulk::xstring::compare(v14, (v11 - 16)) & 0x80000000) != 0);
  caulk::xstring::move();
  v10 = v15;
  caulk::xstring::clear(v14);
  if (++v9 != 8)
  {
    goto LABEL_20;
  }

  return (v8 + 16) == v10;
}

void sub_24174434C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::xstring::clear(va);
  _Unwind_Resume(a1);
}

caulk::xstring *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *,caulk::xstring *>(caulk::xstring *a1, caulk::xstring *this, caulk::xstring *a3, uint64_t a4)
{
  v16 = a1;
  if (a1 != this)
  {
    v6 = this;
    v7 = a1;
    v8 = (this - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(v7, a4, v8, v11);
        v11 = (v11 - 16);
        --v10;
      }

      while (v10);
    }

    v15 = v6;
    v12 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((caulk::xstring::compare(v12, v16) & 0x80000000) != 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<caulk::xstring *&,caulk::xstring *&>(&v15, &v16);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(v16, a4, v8, v16);
        }

        v12 = (v15 + 16);
        v15 = v12;
      }

      while (v12 != a3);
      v7 = v16;
      v8 = (v6 - v16) >> 4;
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,caulk::xstring *>(v7, v6, a4, v8);
        v6 = (v6 - 16);
      }

      while (v8-- > 2);
      return v15;
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(uint64_t result, int a2, uint64_t a3, caulk::xstring *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = result + 16 * (v9 + 1);
      v12 = v9 + 2;
      if (v9 + 2 < a3 && caulk::xstring::compare((result + 16 * (v9 + 1)), (v11 + 16)) < 0)
      {
        v11 += 16;
        v10 = v12;
      }

      result = caulk::xstring::compare(v11, a4);
      if ((result & 0x80000000) == 0)
      {
        v15[0] = 0;
        v15[1] = 0;
        caulk::xstring::move();
        do
        {
          caulk::xstring::move();
          if (v7 < v10)
          {
            break;
          }

          v13 = (2 * v10) | 1;
          v14 = v6 + 16 * v13;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v13;
          }

          else if (caulk::xstring::compare((v6 + 16 * v13), (v14 + 16)) >= 0)
          {
            v10 = v13;
          }

          else
          {
            v14 += 16;
          }
        }

        while ((caulk::xstring::compare(v14, v15) & 0x80000000) == 0);
        caulk::xstring::move();
        return caulk::xstring::clear(v15);
      }
    }
  }

  return result;
}

uint64_t std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,caulk::xstring *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    v9[0] = 0;
    v9[1] = 0;
    caulk::xstring::move();
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(v7, a3, a4);
    caulk::xstring::move();
    if (v8 != a2 - 16)
    {
      caulk::xstring::move();
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(v7, v8 + 16, a3, (v8 + 16 - v7) >> 4);
    }

    return caulk::xstring::clear(v9);
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 16 * v5;
    v8 = v7 + 16;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = v7 + 32;
      if (caulk::xstring::compare((v7 + 16), (v7 + 32)) < 0)
      {
        v8 = v11;
        v5 = v10;
      }
    }

    caulk::xstring::move();
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,caulk::xstring *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    result = caulk::xstring::compare((result + 16 * (v4 >> 1)), (a2 - 16));
    if ((result & 0x80000000) != 0)
    {
      v7[0] = 0;
      v7[1] = 0;
      caulk::xstring::move();
      do
      {
        caulk::xstring::move();
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
      }

      while ((caulk::xstring::compare((v5 + 16 * v6), v7) & 0x80000000) != 0);
      caulk::xstring::move();
      return caulk::xstring::clear(v7);
    }
  }

  return result;
}

uint64_t *std::__set_union[abi:ne200100]<std::__less<void,void> &,std::__wrap_iter<caulk::xstring *>,std::__wrap_iter<caulk::xstring *>,std::__wrap_iter<caulk::xstring *>,std::__wrap_iter<caulk::xstring *>,std::back_insert_iterator<std::vector<caulk::xstring>>>@<X0>(uint64_t *result@<X0>, caulk::xstring *this@<X2>, uint64_t *a3@<X1>, caulk::xstring *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v8 = result;
  v11 = a5;
  if (result == a3)
  {
    v10 = result;
LABEL_10:
    v12 = a5;
    if (this != a4)
    {
      do
      {
        result = std::back_insert_iterator<std::vector<caulk::xstring>>::operator=[abi:ne200100](&v12, this);
        this = (this + 16);
      }

      while (this != a4);
LABEL_15:
      a5 = v12;
    }
  }

  else
  {
    v10 = a3;
    while (this != a4)
    {
      if ((caulk::xstring::compare(this, v8) & 0x80000000) != 0)
      {
        result = std::back_insert_iterator<std::vector<caulk::xstring>>::operator=[abi:ne200100](&v11, this);
        this = (this + 16);
      }

      else
      {
        this = (this + 16 * (caulk::xstring::compare(v8, this) >= 0));
        result = std::back_insert_iterator<std::vector<caulk::xstring>>::operator=[abi:ne200100](&v11, v8);
        v8 = (v8 + 16);
      }

      if (v8 == v10)
      {
        a5 = v11;
        goto LABEL_10;
      }
    }

    a5 = v11;
    v12 = v11;
    if (v8 != v10)
    {
      do
      {
        result = std::back_insert_iterator<std::vector<caulk::xstring>>::operator=[abi:ne200100](&v12, v8);
        v8 = (v8 + 16);
      }

      while (v8 != v10);
      goto LABEL_15;
    }
  }

  *a6 = v10;
  a6[1] = a4;
  a6[2] = a5;
  return result;
}

uint64_t *std::back_insert_iterator<std::vector<caulk::xstring>>::operator=[abi:ne200100](uint64_t *a1, const caulk::xstring *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (v4 >= *(*a1 + 16))
  {
    v5 = std::vector<caulk::xstring>::__emplace_back_slow_path<caulk::xstring const&>(*a1, a2);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    caulk::xstring::assign(v4, a2);
    v5 = v4 + 16;
    *(v3 + 8) = v4 + 16;
  }

  *(v3 + 8) = v5;
  return a1;
}

uint64_t std::vector<caulk::xstring>::__emplace_back_slow_path<caulk::xstring const&>(uint64_t a1, const caulk::xstring *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<caulk::xstring>>(a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  v17 = (16 * v2);
  *v8 = 0;
  *(v8 + 1) = 0;
  caulk::xstring::assign((16 * v2), a2);
  *&v17 = v17 + 16;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<caulk::xstring>::~__split_buffer(&v15);
  return v14;
}

void sub_241744AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<caulk::xstring>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<caulk::xstring>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*>(uint64_t a1, caulk::xstring *this, caulk::xstring *a3, void *a4)
{
  v6 = a1;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (this != a3)
  {
    v7 = this;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      caulk::xstring::move();
      v7 = (v7 + 16);
      a4 = v12 + 2;
      v12 += 2;
    }

    while (v7 != a3);
  }

  v10 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*,caulk::xstring*>(v6, this, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*,caulk::xstring*>(int a1, caulk::xstring *this, caulk::xstring *a3)
{
  if (this != a3)
  {
    v4 = this;
    do
    {
      result = caulk::xstring::clear(v4);
      v4 = (v4 + 16);
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>::operator()[abi:ne200100](uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  while (v1 != v2)
  {
    v1 = (v1 - 16);
    result = caulk::xstring::clear(v1);
  }

  return result;
}

uint64_t std::__split_buffer<caulk::xstring>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<caulk::xstring>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<caulk::xstring>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(v3 + 16) = v4 - 16;
    result = caulk::xstring::clear((v4 - 16));
  }

  return result;
}

uint64_t std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](uint64_t result, caulk::xstring *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = caulk::xstring::clear(i))
  {
    i = (i - 16);
  }

  *(v3 + 8) = a2;
  return result;
}

caulk::xstring *std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(caulk::xstring **a1, caulk::xstring *a2, caulk::xstring *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<caulk::xstring>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<caulk::xstring>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 4)
  {
    while (v6 != a3)
    {
      caulk::xstring::assign(v8, v6);
      v6 = (v6 + 16);
      v8 = (v8 + 16);
    }

    return std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        caulk::xstring::assign(v8, v15);
        v15 = (v15 + 16);
        v8 = (v8 + 16);
        v14 -= 16;
      }

      while (v14);
      v12 = a1[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*,caulk::xstring*,caulk::xstring*>(a1, (v6 + v13), a3, v12);
    a1[1] = result;
  }

  return result;
}

void std::vector<caulk::xstring>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<caulk::xstring>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<caulk::xstring>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

caulk::xstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<caulk::xstring>,caulk::xstring*,caulk::xstring*,caulk::xstring*>(uint64_t a1, caulk::xstring *a2, caulk::xstring *a3, caulk::xstring *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 1) = 0;
      caulk::xstring::assign(v4, v6);
      v6 = (v6 + 16);
      v4 = (v11 + 16);
      v11 = (v11 + 16);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<caulk::xstring>,caulk::xstring*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void avas::server::ConfigChangeSummary::~ConfigChangeSummary(avas::server::ConfigChangeSummary *this)
{
  *this = MEMORY[0x277CEFCB8] + 16;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 8);
  std::vector<std::unique_ptr<avas::server::SessionUpdateSummary>>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void std::vector<std::unique_ptr<avas::server::SessionUpdateSummary>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<avas::server::ObjectDescription>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<avas::RouteIdentifier>::__emplace_back_slow_path<avas::RouteIdentifier const&>(uint64_t a1, const RouteIdentifier *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<avas::RouteIdentifier>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  avas::RouteIdentifier::RouteIdentifier((32 * v2), a2);
  v16 = (32 * v2 + 32);
  v8 = *(a1 + 8);
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<avas::RouteIdentifier>,avas::RouteIdentifier*>(a1, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<avas::RouteIdentifier>::~__split_buffer(&v14);
  return v13;
}

void sub_241745244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<avas::RouteIdentifier>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<avas::RouteIdentifier>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<avas::RouteIdentifier>,avas::RouteIdentifier*>(uint64_t a1, void (***a2)(void), void (***a3)(void))
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v5 += 4;
      avas::RouteIdentifier::RouteIdentifier();
    }

    while (v5 != a3);
    if (v4 != a3)
    {
      v6 = v4;
      v7 = v4;
      do
      {
        v8 = *v7;
        v7 += 4;
        (*v8)(v4);
        v6 += 4;
        v4 = v7;
      }

      while (v7 != a3);
    }
  }
}

uint64_t std::__split_buffer<avas::RouteIdentifier>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<unsigned int,NSDictionary * {__strong}>>::__emplace_back_slow_path<std::pair<unsigned int,NSDictionary * {__strong}>>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,NSDictionary * {__strong}>>>(a1, v6);
  }

  v9 = 16 * v5;
  v15 = 0;
  v16 = v9;
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v9 + 8) = v10;
  v17 = (16 * v5 + 16);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned int,NSDictionary * {__strong}>>,std::pair<unsigned int,NSDictionary * {__strong}>*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<unsigned int,NSDictionary * {__strong}>>::~__split_buffer(&v15);
  return v14;
}

void sub_2417454B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<unsigned int,NSDictionary * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,NSDictionary * {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned int,NSDictionary * {__strong}>>,std::pair<unsigned int,NSDictionary * {__strong}>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 8) = v7;
      v6 += 16;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 16;
    }
  }
}

uint64_t std::__split_buffer<std::pair<unsigned int,NSDictionary * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void avas::server::ControlValue::~ControlValue(avas::server::ControlValue *this)
{
  *this = MEMORY[0x277CEFCB0] + 16;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

uint64_t std::vector<avas::server::ControlValue>::__emplace_back_slow_path<avas::server::ControlValue const&>(uint64_t a1, const ControlValue *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<avas::server::ControlValue>>(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  avas::server::ControlValue::ControlValue((80 * v2), a2);
  v15 = 80 * v2 + 80;
  v7 = *(a1 + 8);
  v8 = 80 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<avas::server::ControlValue>,avas::server::ControlValue*>(a1, *a1, v7);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<avas::server::ControlValue>::~__split_buffer(&v13);
  return v12;
}

void sub_2417457E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<avas::server::ControlValue>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<avas::server::ControlValue>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<avas::server::ControlValue>,avas::server::ControlValue*>(uint64_t a1, void (***a2)(void), void (***a3)(void))
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v5 += 10;
      avas::server::ControlValue::ControlValue();
    }

    while (v5 != a3);
    if (v4 != a3)
    {
      v6 = v4;
      v7 = v4;
      do
      {
        v8 = *v7;
        v7 += 10;
        (*v8)(v4);
        v6 += 10;
        v4 = v7;
      }

      while (v7 != a3);
    }
  }
}

uint64_t std::__split_buffer<avas::server::ControlValue>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 80);
    *(a1 + 16) = i - 80;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void avas::server::DeferredMessageState::~DeferredMessageState(avas::server::DeferredMessageState *this)
{
  v6 = (this + 216);
  std::vector<avas::server::ControlValue>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v6 = (this + 168);
  std::vector<std::pair<unsigned int,NSDictionary * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v6 = (this + 96);
  std::vector<avas::RouteIdentifier>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 88) == 1)
  {
    avas::server::ConfigChangeSummary::~ConfigChangeSummary((this + 48));
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}