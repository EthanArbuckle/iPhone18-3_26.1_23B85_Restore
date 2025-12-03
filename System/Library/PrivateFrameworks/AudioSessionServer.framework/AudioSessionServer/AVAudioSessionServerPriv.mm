@interface AVAudioSessionServerPriv
- (AVAudioSessionServerPriv)init;
- (AVAudioSessionServerPriv)initWithAudioControlQueue:(id)queue delegate:(id)delegate;
- (BOOL)checkMicrophoneInjectionPermission;
- (id)createTimestampWriterForDevice:(id)device halID:(unsigned int)d isDecoupledInput:(BOOL)input;
- (id)getSessionsWithMicrophoneInjectionPreference;
- (int)queuePIDOverridden:(int)overridden;
- (int)setMXSessionProperty:(id)property forSessionID:(unsigned int)d value:(id)value;
- (opaqueCMSession)copyCMSession:(unsigned int)session;
- (tuple<int,)getDescriptionForSession:(int> *__return_ptr)retstr;
- (tuple<int,)getJSONDescriptionForSession:(int> *__return_ptr)retstr;
- (tuple<int,)getMXSessionProperty:(id)property forSessionID:(unsigned int)d;
- (tuple<int,)getSourceProcessAuditToken:(AVAudioSessionServerPriv *)self;
- (tuple<int,)setPlayState:(unsigned int)state sessionID:(unsigned int)d playerType:(unsigned int)type playerRef:(void *)ref modes:(unsigned int)modes subsessionRef:(void *)subsessionRef;
- (tuple<opaqueCMSession)createCoreMXSessionForPID:(unsigned int> *__return_ptr)retstr;
- (tuple<opaqueCMSession)createCoreMXSessionForProcID:(unsigned int> *__return_ptr)retstr type:(AVAudioSessionServerPriv *)self;
- (tuple<opaqueCMSession)getPrimarySessionForProcID:(unsigned int> *__return_ptr)retstr createIfNecessary:(AVAudioSessionServerPriv *)self;
- (unint64_t)dynamicLatencyForDevice:(unsigned int)device isInput:(BOOL)input;
- (vector<unsigned)getSessionIDsForToken:(AVAudioSessionServerPriv *)self;
- (void)destroyTimestampWriterForDevice:(id)device;
- (void)mapSession:(unsigned int)session isInput:(BOOL)input toDevice:(id)device;
- (void)sampleRateChanged:(double)changed forDevice:(unsigned int)device;
- (void)startXPCServer;
@end

@implementation AVAudioSessionServerPriv

- (AVAudioSessionServerPriv)init
{
  v6.receiver = self;
  v6.super_class = AVAudioSessionServerPriv;
  v2 = [(AVAudioSessionServerPriv *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVAudioSessionXPCServer);
    xpcServer = v2->_xpcServer;
    v2->_xpcServer = v3;
  }

  return v2;
}

- (AVAudioSessionServerPriv)initWithAudioControlQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = AVAudioSessionServerPriv;
  v8 = [(AVAudioSessionServerPriv *)&v12 init];
  if (v8)
  {
    avas::server::SetAudioControlQueue(queueCopy);
    v9 = [[AVAudioSessionXPCServer alloc] initWithDelegate:delegateCopy];
    xpcServer = v8->_xpcServer;
    v8->_xpcServer = v9;

    objc_storeStrong(&v8->_serverDelegate, delegate);
  }

  return v8;
}

- (void)startXPCServer
{
  avas::server::forbid_acq::SystemController::Instance(self);
  xpcServer = self->_xpcServer;

  [(AVAudioSessionXPCServer *)xpcServer start];
}

- (vector<unsigned)getSessionIDsForToken:(AVAudioSessionServerPriv *)self
{
  v6 = avas::server::LegacySessionManager::Instance(self);

  avas::server::LegacySessionManager::GetSessionIDsForToken(v6, a4, &retstr->__begin_);
  return result;
}

- (tuple<int,)getDescriptionForSession:(int> *__return_ptr)retstr
{
  v3 = v2;
  v17 = *MEMORY[0x277D85DE8];
  if (avas::server::SessionIDIsReserved(v2))
  {
    retstr->var0.var0 = -50;
    result = std::string::basic_string[abi:ne200100]<0>(retstr->var0.var1.__rep_.__s.__data_, "");
    retstr[1].var0.var0 = 0;
  }

  else
  {
    avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v14, v3);
    v6 = v14;
    if (!v14)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(buf);
    }

    v7 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->var0.var1.__rep_.__l, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*v6 + 88))(v6);
    v9 = v14;
    if (!v14)
    {
      v13 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v13 process:? delegate:?];
    }

    v10 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->var0.var1.__rep_.__l, 1uLL, memory_order_relaxed);
    }

    v11 = *(v9 + 84);
    retstr->var0.var0 = 0;
    std::string::basic_string[abi:ne200100]<0>(retstr->var0.var1.__rep_.__s.__data_, v8);
    retstr[1].var0.var0 = v11;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    result = v15;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (tuple<int,)getJSONDescriptionForSession:(int> *__return_ptr)retstr
{
  v3 = v2;
  v18 = *MEMORY[0x277D85DE8];
  if (avas::server::SessionIDIsReserved(v2))
  {
    retstr->var0.var0 = -50;
    result = std::string::basic_string[abi:ne200100]<0>(retstr->var0.var1.__rep_.__s.__data_, "");
    retstr[1].var0.var0 = 0;
  }

  else
  {
    avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v14, v3);
    v6 = v14;
    if (!v14)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(buf);
    }

    v7 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->var0.var1.__rep_.__l, 1uLL, memory_order_relaxed);
    }

    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v6, v3, buf);
    v8 = v14;
    if (!v14)
    {
      v13 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v13 process:? delegate:?];
    }

    v9 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->var0.var1.__rep_.__l, 1uLL, memory_order_relaxed);
    }

    v10 = *(v8 + 21);
    retstr->var0.var0 = 0;
    p_var1 = &retstr->var0.var1;
    if (SHIBYTE(v17) < 0)
    {
      std::string::__init_copy_ctor_external(p_var1, *buf, *&buf[8]);
    }

    else
    {
      *&p_var1->__r_.__value_.__l.__data_ = *buf;
      *(&retstr->var0.var1.__rep_.__l + 2) = v17;
    }

    retstr[1].var0.var0 = v10;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    result = v15;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)queuePIDOverridden:(int)overridden
{
  v5 = avas::server::LegacySessionManager::Instance(self);
  v8[0] = 0;
  v8[32] = 0;
  overriddenCopy = overridden;
  avas::server::LegacySessionManager::FindOrCreatePrimarySession(v5, v8, 0, self->_serverDelegate, 1, &v10);
  if (v10)
  {
    v6 = 0;
    *(v10 + 224) = 1;
  }

  else
  {
    v6 = 2003329396;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v6;
}

- (tuple<int,)setPlayState:(unsigned int)state sessionID:(unsigned int)d playerType:(unsigned int)type playerRef:(void *)ref modes:(unsigned int)modes subsessionRef:(void *)subsessionRef
{
  memset(v12, 0, 12);
  v11[0] = d;
  v11[4] = 0;
  v8 = avas::server::require_acq::AudioSessionServerSetClientPlayState(v11, type, ref, modes, state, v12, subsessionRef);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
  v9 = *(v12 + 4);
  v10 = v8 | (LODWORD(v12[0]) << 32);
  *&result.var0.var1.var1 = v9;
  *&result.var0.var0 = v10;
  return result;
}

- (opaqueCMSession)copyCMSession:(unsigned int)session
{
  cf[13] = *MEMORY[0x277D85DE8];
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v8, session);
  v3 = v8;
  if (!v8)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(cf);
  }

  v4 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(**(*(v3 + 120) + 8) + 72))(cf);
  v5 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v5)
  {
    CFRetain(v5);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (tuple<opaqueCMSession)createCoreMXSessionForProcID:(unsigned int> *__return_ptr)retstr type:(AVAudioSessionServerPriv *)self
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 1);
  v24[0] = *a4;
  v24[1] = v7;
  v25 = *(a4 + 4);
  v26 = a5;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v8 = avas::server::LegacySessionManager::Instance(self);
  avas::server::LegacySessionManager::CreateSession(v8, v24, 0, self->_serverDelegate, &v22);
  if (v22)
  {
    strcpy(v37, "create_core_session");
    v10 = *avas::server::gSessionServerLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v22;
      v12 = (*(*v22 + 16))(v22);
      avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v11, v12, cf);
      v18[0] = 0;
      v19 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__p);
    }

    (*(**(*(v22 + 15) + 8) + 72))(buf);
    v13 = *buf;
    (*(**(*(v22 + 15) + 8) + 64))(cf);
    v14 = cf[0];
    v15 = (*(*v22 + 16))(v22);
    retstr->var0.var0 = v13;
    retstr->var0.var1 = v14;
    retstr->var0.var2 = v15;
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr->var0.var1 = 0;
    retstr->var0.var2 = 0;
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*(&v34 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
  }

  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (tuple<opaqueCMSession)createCoreMXSessionForPID:(unsigned int> *__return_ptr)retstr
{
  v5[0] = 0;
  v5[32] = 0;
  v6 = a4;
  return [(AVAudioSessionServerPriv *)self createCoreMXSessionForProcID:v5 type:1718183795];
}

- (tuple<opaqueCMSession)getPrimarySessionForProcID:(unsigned int> *__return_ptr)retstr createIfNecessary:(AVAudioSessionServerPriv *)self
{
  v5 = a5;
  v9 = avas::server::LegacySessionManager::Instance(self);
  avas::server::LegacySessionManager::FindOrCreatePrimarySession(v9, a4, 0, self->_serverDelegate, v5, &v16);
  if (v16)
  {
    (*(**(v16[15] + 8) + 72))(&v15);
    v10 = v15;
    (*(**(v16[15] + 8) + 64))(&cf);
    v11 = cf;
    v12 = (*(*v16 + 16))(v16);
    retstr->var0.var0 = v10;
    retstr->var0.var1 = v11;
    retstr->var0.var2 = v12;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr->var0.var1 = 0;
    retstr->var0.var2 = 0;
  }

  result = v17;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return result;
}

- (id)createTimestampWriterForDevice:(id)device halID:(unsigned int)d isDecoupledInput:(BOOL)input
{
  inputCopy = input;
  deviceCopy = device;
  v8 = avas::server::LegacySessionManager::Instance(deviceCopy);
  v9 = v8[37];
  if (v9)
  {
    os_unfair_lock_lock(v8[37]);
    dCopy = d;
    applesauce::CF::StringRef::from_ns(deviceCopy, &cf);
    v15 = inputCopy;
    v10 = mach_absolute_time();
    Device = avas::server::DeviceTimeObserver::createDevice((v9 + 8), &dCopy, v10, !inputCopy);
    v17 = v11;
    if (cf)
    {
      CFRelease(cf);
    }

    os_unfair_lock_unlock(v9);
    v9 = avas::server::DeviceTimeObserver::DeviceSlot::timestampWriter(&Device);
  }

  return v9;
}

- (void)destroyTimestampWriterForDevice:(id)device
{
  deviceCopy = device;
  v4 = avas::server::LegacySessionManager::Instance(deviceCopy);
  v5 = *(v4 + 37);
  if (v5)
  {
    os_unfair_lock_lock(*(v4 + 37));
    applesauce::CF::StringRef::from_ns(deviceCopy, &cf);
    v6 = mach_absolute_time();
    avas::server::DeviceTimeObserver::removeDevice(&v5[2], &cf, v6);
    if (cf)
    {
      CFRelease(cf);
    }

    os_unfair_lock_unlock(v5);
  }
}

- (void)mapSession:(unsigned int)session isInput:(BOOL)input toDevice:(id)device
{
  inputCopy = input;
  deviceCopy = device;
  v8 = avas::server::LegacySessionManager::Instance(deviceCopy);
  v9 = *(v8 + 37);
  if (v9)
  {
    os_unfair_lock_lock(*(v8 + 37));
    applesauce::CF::StringRef::from_ns(deviceCopy, &cf);
    v10 = mach_absolute_time();
    avas::server::DeviceTimeObserver::mapSessionToDevice((v9 + 8), session, inputCopy, &cf, v10);
    if (cf)
    {
      CFRelease(cf);
    }

    os_unfair_lock_unlock(v9);
  }
}

- (void)sampleRateChanged:(double)changed forDevice:(unsigned int)device
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = avas::server::LegacySessionManager::Instance(self);
  v7 = *(v6 + 37);
  if (v7)
  {
    os_unfair_lock_lock(*(v6 + 37));
    avas::server::DeviceTimeObserver::setSampleRate(&v7[2], device, changed);
    os_unfair_lock_unlock(v7);
    outData = 0;
    ioDataSize = 4;
    inAddress = *"tlwhptuo";
    inAddress_8 = 0;
    *&v15.mSelector = *"tlwhtpni";
    v15.mElement = 0;
    PropertyData = AudioObjectGetPropertyData(device, &inAddress, 0, 0, &ioDataSize, &outData);
    if (PropertyData)
    {
      v9 = *avas::server::gSessionServerLog(PropertyData);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "AVAudioSessionServer.mm";
        v22 = 1024;
        v23 = 471;
LABEL_8:
        _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to get output device constant latency", buf, 0x12u);
      }
    }

    else
    {
      v10 = AudioObjectGetPropertyData(device, &v15, 0, 0, &ioDataSize, &inAddress_8 + 4);
      if (!v10)
      {
        os_unfair_lock_lock(v7);
        LODWORD(v11) = HIDWORD(inAddress_8);
        v12 = 1000000000.0 / changed * v11;
        v13 = llround(v12);
        LODWORD(v12) = outData;
        avas::server::DeviceTimeObserver::setFixedLatency(&v7[2], device, v13, llround(1000000000.0 / changed * *&v12));
        os_unfair_lock_unlock(v7);
        goto LABEL_10;
      }

      v9 = *avas::server::gSessionServerLog(v10);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "AVAudioSessionServer.mm";
        v22 = 1024;
        v23 = 477;
        goto LABEL_8;
      }
    }
  }

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkMicrophoneInjectionPermission
{
  v2 = avas::server::LegacySessionManager::Instance(self);

  return avas::server::LegacySessionManager::UserAllowsMicrophoneInjection(v2);
}

- (id)getSessionsWithMicrophoneInjectionPreference
{
  v2 = avas::server::LegacySessionManager::Instance(self);

  return avas::server::LegacySessionManager::GetSessionsWithMicrophoneInjectionPreference(v2);
}

- (unint64_t)dynamicLatencyForDevice:(unsigned int)device isInput:(BOOL)input
{
  v6 = avas::server::LegacySessionManager::Instance(self);
  v7 = *(v6 + 37);
  if (!v7)
  {
    return 0;
  }

  os_unfair_lock_lock(*(v6 + 37));
  v8 = avas::server::DeviceTimeObserver::nanosecondLatency(&v7[2], device, input);
  os_unfair_lock_unlock(v7);
  return v8;
}

- (tuple<int,)getSourceProcessAuditToken:(AVAudioSessionServerPriv *)self
{
  v17 = *MEMORY[0x277D85DE8];
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v13, a4);
  v5 = v13;
  if (v13)
  {
    v6 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->var0.var1.var0[1], 1uLL, memory_order_relaxed);
      v7 = *(v5 + 64);
      v15 = *(v5 + 48);
      v16 = v7;
      v8 = *(v5 + 80);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (v8)
      {
LABEL_4:
        retstr->var0.var0 = 0;
        v9 = v16;
        *retstr->var0.var1.var0 = v15;
        *&retstr->var0.var1.var0[4] = v9;
        goto LABEL_7;
      }
    }

    else
    {
      v10 = *(v13 + 64);
      v15 = *(v13 + 48);
      v16 = v10;
      if (*(v13 + 80))
      {
        goto LABEL_4;
      }
    }
  }

  *&retstr->var0.var1.var0[4] = 0u;
  *retstr->var0.var1.var0 = 0u;
  retstr->var0.var0 = -50;
LABEL_7:
  result = v14;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (tuple<int,)getMXSessionProperty:(id)property forSessionID:(unsigned int)d
{
  v6 = v4;
  propertyCopy = property;
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v12, d);
  v8 = v12;
  if (v12)
  {
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::mx::MXAccessor::GetMXProperty(*(v8 + 120), propertyCopy, v6);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    *v6 = -50;
    *(v6 + 8) = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  result.var0.var1 = v11;
  *&result.var0.var0 = v10;
  return result;
}

- (int)setMXSessionProperty:(id)property forSessionID:(unsigned int)d value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v13, d);
  v9 = v13;
  if (v13)
  {
    v10 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = avas::server::mx::MXAccessor::SetMXProperty(*(v9 + 120), propertyCopy, valueCopy);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v11 = -50;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v11;
}

@end