@interface AVAudioSessionRemoteXPCClient
- (AVAudioSessionRemoteXPCClient)initWithServer:(id)a3 process:(ProcessInfo *)a4 delegate:;
- (id).cxx_construct;
- (void)activateSession:(unsigned int)a3 options:(unint64_t)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)allowAppToInitiatePlaybackTemporarilyFromBackground:(id)a3 reply:(id)a4;
- (void)createAudioApplicationForSpecification:(id)a3 reply:(id)a4;
- (void)createProxySession:(unsigned int)a3 reply:(id)a4;
- (void)createSession:(unint64_t)a3 sourceAuditToken:(id *)a4 sourceSessionID:(unsigned int)a5 nameOrDeviceUID:(id)a6 clientProcessName:(id)a7 clientProcessBundleID:(id)a8 useCaseIdentifier:(unsigned int)a9 reply:(id)a10;
- (void)deactivateSession:(unsigned int)a3 options:(unint64_t)a4 priority:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)dealloc;
- (void)destroySession:(unsigned int)a3 reply:(id)a4;
- (void)getApplicationMessages:(id *)a3 clientID:(unsigned int)a4 reply:(id)a5;
- (void)getApplicationProperty:(id *)a3 clientID:(unsigned int)a4 propertyID:(id)a5 isMXProperty:(BOOL)a6 reply:(id)a7;
- (void)getDeferredMessages:(unsigned int)a3 reply:(id)a4;
- (void)getEnhanceDialogueLevelWithReply:(id)a3;
- (void)getIOControllerPeriod:(unsigned int)a3 decoupledInput:(BOOL)a4 reply:(id)a5;
- (void)getMXPropertyGenericPipe:(unsigned int)a3 propertyName:(id)a4 reply:(id)a5;
- (void)getProperties:(unsigned int)a3 properties:(id)a4 reply:(id)a5;
- (void)getPropertiesForCache:(unsigned int)a3 reply:(id)a4;
- (void)getPropertiesIONode:(unsigned int)a3 properties:(id)a4 reply:(id)a5;
- (void)getProperty:(unsigned int)a3 propertyName:(id)a4 MXProperty:(BOOL)a5 reply:(id)a6;
- (void)initWithServer:process:delegate:;
- (void)invalidate;
- (void)invalidateIONode:(unsigned int)a3 reply:(id)a4;
- (void)muteInputForRecordingProcesses:(id)a3;
- (void)sessionIDs:(id *)a3 clientID:(unsigned int)a4 reply:(id)a5;
- (void)setEnhanceDialogueLevel:(id)a3 reply:(id)a4;
- (void)setEnhanceDialoguePreference:(id)a3 reply:(id)a4;
- (void)setIONode:(unsigned int)a3 playState:(unsigned int)a4 modes:(unsigned int)a5 reply:(id)a6;
- (void)setMXPropertyOnAllSessions:(id *)a3 clientID:(unsigned int)a4 MXProperty:(id)a5 values:(id)a6 reply:(id)a7;
- (void)setProperties:(unsigned int)a3 values:(id)a4 MXProperties:(BOOL)a5 batchStrategy:(int)a6 genericMXPipe:(BOOL)a7 reply:(id)a8;
- (void)setPropertiesIONode:(unsigned int)a3 values:(id)a4 reply:(id)a5;
- (void)setSessionPlayState:(unsigned int)a3 playState:(unsigned int)a4 playerType:(unsigned int)a5 playerRef:(id)a6 modes:(unsigned int)a7 reply:(id)a8;
- (void)silenceOutput:(unsigned int)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)simulatePrimarySessionCreationInsideServerWithReply:(id)a3;
- (void)sleepWithReply:(unsigned int)a3 reply:(id)a4;
- (void)toggleInputMuteForRecordingProcess:(id)a3;
- (void)updateApplicationProperty:(id *)a3 clientID:(unsigned int)a4 propertyID:(id)a5 propertyValue:(id)a6 context:(id)a7 reply:(id)a8;
- (void)updateMicrophonePermission:(int64_t)a3 clientToken:(id *)a4 reply:(id)a5;
- (void)verifySessionExists:(unsigned int)a3 reply:(id)a4;
@end

@implementation AVAudioSessionRemoteXPCClient

- (id).cxx_construct
{
  self->_clientProcess.token.mValue = 0;
  self->_clientProcess.xpcConnection = 0;
  self->_clientProcess.mClientRelay = 0;
  *&self->_clientProcess.mProcessName.__rep_.__l.__size_ = 0uLL;
  self->_clientProcess.mProcessName.__rep_.__l.__data_ = 0;
  self->_replyWatchdogFunctionName = 0;
  caulk::xpc::reply_watchdog_factory::reply_watchdog_factory(&self->_replyWatchdogMinTimestamp);
  caulk::xpc::reply_watchdog_factory::reply_watchdog_factory(&self->_defaultReplyWatchdogFactory.mTimeoutHandler.__f_.__f_);
  return self;
}

- (AVAudioSessionRemoteXPCClient)initWithServer:(id)a3 process:(ProcessInfo *)a4 delegate:
{
  v5 = v4;
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v5;
  v25.receiver = self;
  v25.super_class = AVAudioSessionRemoteXPCClient;
  v10 = [(AVAudioSessionRemoteXPCClient *)&v25 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_server, v8);
    v12 = [[AVAudioSessionXPCClientRelay alloc] initWithConnection:a4->xpcConnection token:a4->token.mValue];
    v13 = *&v11->_clientProcess.var0;
    *&v11->_clientProcess.var0 = v12;

    v11->_clientProcess.token.mValue = a4->token.mValue;
    objc_storeStrong(&v11->_clientProcess.xpcConnection, a4->xpcConnection);
    WeakRetained = objc_loadWeakRetained(&a4->mClientRelay);
    objc_storeWeak(&v11->_clientProcess.mClientRelay, WeakRetained);

    std::string::operator=(&v11->_clientProcess.mProcessName, &a4->mProcessName);
    objc_storeWeak(&v11->_clientProcess.mClientRelay, *&v11->_clientProcess.var0);
    if (!v11->_clientProcess.xpcConnection)
    {
      v20 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v20 process:? delegate:?];
    }

    objc_storeStrong(&v11->_clientRelay, v5);
    objc_initWeak(&location, v11);
    objc_copyWeak(&to, &location);
    LOBYTE(v11->_serverDelegate) = 0;
    *&v11->_invalidated = "unknown";
    v11->_replyWatchdogFunctionName = std::chrono::system_clock::now().__d_.__rep_;
    objc_copyWeak(&from, &to);
    v39 = 0;
    v37 = &unk_28535A640;
    objc_moveWeak(&v38, &from);
    v39 = &v37;
    objc_destroyWeak(&from);
    caulk::xpc::reply_watchdog_factory::init2();
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v37);
    objc_copyWeak(&v21, &to);
    v36 = 0;
    v34 = &unk_28535A640;
    objc_moveWeak(&v35, &v21);
    v36 = &v34;
    objc_destroyWeak(&v21);
    caulk::xpc::reply_watchdog_factory::init2();
    v15 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v34);
    v16 = *avas::server::gSessionServerLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      xpcConnection = v11->_clientProcess.xpcConnection;
      *buf = 136315906;
      v27 = "AVAudioSessionXPCServer.mm";
      v28 = 1024;
      v29 = 606;
      v30 = 2112;
      v31 = xpcConnection;
      v32 = 2048;
      v33 = v11;
      _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New connection: %@ (%p)", buf, 0x26u);
    }

    objc_destroyWeak(&to);
    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *avas::server::gSessionServerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v7 = "AVAudioSessionXPCServer.mm";
    v8 = 1024;
    v9 = 613;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_241701000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Deallocated connection %p", buf, 0x1Cu);
  }

  v5.receiver = self;
  v5.super_class = AVAudioSessionRemoteXPCClient;
  [(AVAudioSessionRemoteXPCClient *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sleepWithReply:(unsigned int)a3 reply:(id)a4
{
  v6 = a4;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient sleepWithReply:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSString * {__strong}>(&self->_replyWatchdogMinTimestamp, v6);

  sleep(a3);
  v7[2](v7, 0, &stru_28535B610);
}

- (void)invalidate
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = self->_clientProcess.xpcConnection;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v5 = WeakRetained;
  if (!v3)
  {
    v10 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v10 process:? delegate:?];
  }

  v6 = *avas::server::gSessionServerLog(WeakRetained);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v11 = 136315906;
    v12 = "AVAudioSessionXPCServer.mm";
    v13 = 1024;
    v14 = 634;
    v15 = 2112;
    v16 = v3;
    v17 = 2048;
    v18 = self;
    _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalidated connection: %@ (%p)", &v11, 0x26u);
  }

  LOBYTE(self->_serverDelegate) = 1;
  if (v5)
  {
    v8 = avas::server::LegacySessionManager::Instance(v7);
    avas::server::LegacySessionManager::RemoveProxyClientsForInvalidatedXPCConnection(v8, v3);
    avas::server::LegacySessionManager::RemoveSessionsForInvalidatedXPCConnection(v8, v3);
    avas::server::LegacySessionManager::RemoveApplicationForInvalidatedXPCConnection(v8, v3);
    avas::server::LegacySessionManager::RemoveIONodeSessionsForInvalidatedXPCConnection(v8, v3);
    [(avas::server *)v5 removeConnection:v3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)createProxySession:(unsigned int)a3 reply:(id)a4
{
  v6 = a4;
  v17[0] = 1;
  v18 = 3842;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient createProxySession:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v6);

  v9 = avas::server::LegacySessionManager::Instance(v8);
  memset(v16, 0, sizeof(v16));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  v12 = 1;
  v13 = 1;
  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v9, a3, v16, &v12, &v14);
  if (v14)
  {
    v7[2](v7, 0);
  }

  else
  {
    v11 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient createProxySession:reply:]", a3, -50);
    (v7)[2](v7, v11);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  avas::ScopedTrace::~ScopedTrace(v17);
}

- (void)verifySessionExists:(unsigned int)a3 reply:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v19[0] = 1;
  v20 = 3844;
  v21 = a3;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient verifySessionExists:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},BOOL>(&self->_replyWatchdogMinTimestamp, v6);

  v9 = avas::server::LegacySessionManager::Instance(v8);
  memset(v18, 0, sizeof(v18));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  *buf = 1;
  LOBYTE(v26) = 1;
  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v9, a3, v18, buf, &v16);
  v11 = v16;
  v13 = *avas::server::gSessionServerLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "failed";
    *buf = 136315906;
    v26 = "AVAudioSessionXPCServer.mm";
    v28 = 684;
    v27 = 1024;
    if (v11)
    {
      v14 = "succeeded";
    }

    v29 = 1024;
    v30 = a3;
    v31 = 2080;
    v32 = v14;
    _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Look up of session ID 0x%x %s", buf, 0x22u);
  }

  (v7)[2](v7, 0, v11 != 0);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  avas::ScopedTrace::~ScopedTrace(v19);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)simulatePrimarySessionCreationInsideServerWithReply:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = avas::server::LegacySessionManager::Instance(v4);
  memset(&v15, 0, sizeof(v15));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  buf = v15;
  v20 = 1;
  atoken = v15;
  v21 = audit_token_to_pid(&atoken);
  avas::server::LegacySessionManager::FindOrCreatePrimarySession(v5, &buf, 0, self->_clientRelay, 1, &v13);
  if (v13)
  {
    v7 = (*(*v13 + 16))(v13);
    (*(v4 + 2))(v4, 0, v7);
  }

  else
  {
    v8 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 136315394;
      *&buf.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 704;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Session creation failed", &buf, 0x12u);
    }

    v9 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"Session creation failed in server";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [v9 errorWithDomain:*MEMORY[0x277CCA590] code:2003329396 userInfo:v10];

    (*(v4 + 2))(v4, v11, 0);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)destroySession:(unsigned int)a3 reply:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a4;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient destroySession:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v5);
  objc_claimAutoreleasedReturnValue();

  avas::server::LegacySessionManager::Instance(v6);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  operator new();
}

void __54__AVAudioSessionRemoteXPCClient_destroySession_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5[0] = 1;
  v6 = 3972;
  v7 = v2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x245CEEB60](v3, 0x20C40A4A59CD2);
  }

  avas::ScopedTrace::~ScopedTrace(v5);
}

- (void)setProperties:(unsigned int)a3 values:(id)a4 MXProperties:(BOOL)a5 batchStrategy:(int)a6 genericMXPipe:(BOOL)a7 reply:(id)a8
{
  v14 = a4;
  v15 = a8;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setProperties:values:MXProperties:batchStrategy:genericMXPipe:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v16 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, v15);

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply___block_invoke;
  v23[3] = &unk_278CEAA48;
  v26 = a3;
  v23[4] = self;
  v17 = v16;
  v25 = v17;
  v28 = a7;
  v18 = v14;
  v24 = v18;
  v29 = a5;
  v27 = a6;
  v19 = MEMORY[0x245CEF0E0](v23);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  v22 = WeakRetained[6];
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply___block_invoke(uint64_t a1)
{
  v112 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v84[0] = 1;
  v85 = 3849;
  v86 = v2;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  kdebug_trace();
  memset(&v83, 0, sizeof(v83));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    [v3 auditToken];
  }

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v81, *(a1 + 56), &v83, 1);
  v4 = v81;
  if (v81)
  {
    if (*(a1 + 64) != 1)
    {
      goto LABEL_10;
    }

    v5 = v82;
    if (v82)
    {
      atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasMXPropertyPipeEntitlement = avas::server::ConstAudioSessionInfo::HasMXPropertyPipeEntitlement(v4, &v83);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (HasMXPropertyPipeEntitlement)
    {
LABEL_10:
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v90 objects:buf count:16];
      if (v10)
      {
        v11 = *v91;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v91 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v90 + 1) + 8 * i);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              v19 = *avas::server::gSessionServerLog(isKindOfClass);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *v100 = 136315650;
                *&v100[4] = "AVAudioSessionXPCServer.mm";
                v101 = 1024;
                v102 = 255;
                v103 = 2112;
                v104 = v13;
                _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unexpected dictionary key %@. All keys must be NSStrings", v100, 0x1Cu);
              }

              v20 = [*(v7 + 24) processIdentifier];
              v21 = MEMORY[0x277CCACA8];
              avas::server::ProcessInfo::processName((v7 + 16), v100);
              if ((v104 & 0x80000000) == 0)
              {
                v22 = v100;
              }

              else
              {
                v22 = *v100;
              }

              v23 = [v21 stringWithUTF8String:v22];
              if (SBYTE3(v104) < 0)
              {
                operator delete(*v100);
              }

              v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"SetProperties failed for client %@(%d). Invalid dictionary key=%@", v23, v20, v13];
              v25 = MEMORY[0x277CCA9B8];
              v99 = *MEMORY[0x277CCA450];
              *v100 = v24;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:&v99 count:1];
              v74 = [v25 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v26];

              goto LABEL_30;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v90 objects:buf count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v74 = 0;
LABEL_30:

      if (v74)
      {
        v27 = *(*(a1 + 48) + 16);
        v28 = v74;
        v27();
LABEL_74:

        goto LABEL_75;
      }

      if (*(a1 + 65) == 1)
      {
        v29 = *(a1 + 40);
        v30 = *(a1 + 56);
        v31 = *(a1 + 60);
        v80 = 0;
        v32 = avas::server::forbid_acq::SetPropertiesOnMXSession(v30, &v83, v29);
        v33 = 0;
        if (!v32)
        {
          (*(*(a1 + 48) + 16))();
LABEL_73:

          v28 = 0;
          goto LABEL_74;
        }

        v34 = MEMORY[0x277CCA9B8];
        v97 = *MEMORY[0x277CCA450];
        v98 = @"Failed to set properties";
        v73 = v33;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v36 = [v34 errorWithDomain:*MEMORY[0x277CCA590] code:v32 userInfo:v35];

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v73 = [*(a1 + 40) mutableCopy];
        if ((atomic_load_explicit(&_ZGVZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute, memory_order_acquire) & 1) == 0)
        {
          v72 = __cxa_guard_acquire(&_ZGVZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute);
          if (v72)
          {
            _ZZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute = avas::AudioSessionMuteEnabled(v72);
            __cxa_guard_release(&_ZGVZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute);
          }
        }

        v51 = [v73 objectForKey:@"MuteSessionInputs"];
        v36 = v51;
        if ((_ZZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute & 1) != 0 || !v51)
        {
          goto LABEL_57;
        }

        [v73 removeObjectForKey:@"MuteSessionInputs"];
        if (!v81)
        {
          v71 = _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:v71 process:? delegate:?];
        }

        *buf = v81;
        *&buf[8] = v82;
        if (v82)
        {
          atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v52 = avas::server::forbid_acq::MuteSessionInputsForAudioApp(buf, v36);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        if (v52)
        {
          v53 = MEMORY[0x277CCA9B8];
          v95 = *MEMORY[0x277CCA450];
          v96 = @"MuteSessionInput error";
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v55 = [v53 errorWithDomain:*MEMORY[0x277CCA590] code:v52 userInfo:v54];

          (*(*(a1 + 48) + 16))();
LABEL_71:

          goto LABEL_72;
        }

        if ([v73 count])
        {
LABEL_57:

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v36 = v73;
          v56 = [v36 countByEnumeratingWithState:&v76 objects:v94 count:16];
          if (v56)
          {
            v57 = *v77;
            while (2)
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v77 != v57)
                {
                  objc_enumerationMutation(v36);
                }

                v59 = *(*(&v76 + 1) + 8 * j);
                v60 = *(a1 + 56);
                v61 = [v36 valueForKey:v59];
                v62 = avas::server::forbid_acq::SetPropertyLocal(v60, &v83, v59, v61);

                if (v62)
                {
                  v67 = *avas::server::gSessionServerLog(v63);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                  {
                    v68 = *(a1 + 56);
                    *buf = 136316162;
                    *&buf[4] = "AVAudioSessionXPCServer.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 894;
                    v106 = 2112;
                    v107 = v59;
                    v108 = 1024;
                    v109 = v62;
                    v110 = 1024;
                    v111 = v68;
                    _os_log_impl(&dword_241701000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set %@, err:%d, session: 0x%x", buf, 0x28u);
                  }

                  v69 = *(a1 + 48);
                  v55 = NSErrorWithString(&cfstr_Audiosessionse.isa);
                  (*(v69 + 16))(v69, v55, 0);
                  v73 = v36;
                  goto LABEL_71;
                }

                v64 = *avas::server::gSessionServerLog(v63);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  v65 = *(a1 + 56);
                  *buf = 136315906;
                  *&buf[4] = "AVAudioSessionXPCServer.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 898;
                  v106 = 2112;
                  v107 = v59;
                  v108 = 1024;
                  v109 = v65;
                  _os_log_impl(&dword_241701000, v64, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Success setting AVAS property: %@, session: 0x%x", buf, 0x22u);
                }
              }

              v56 = [v36 countByEnumeratingWithState:&v76 objects:v94 count:16];
              if (v56)
              {
                continue;
              }

              break;
            }
          }

          v66 = *(*(a1 + 48) + 16);
          v28 = 0;
          v66();
          goto LABEL_74;
        }

        (*(*(a1 + 48) + 16))();
      }

LABEL_72:

      v33 = v73;
      goto LABEL_73;
    }

    v37 = *(a1 + 56);
    v38 = *(a1 + 40);
    v39 = *(a1 + 48);
    v40 = v38;
    v41 = v39;
    v42 = *avas::server::gSessionServerLog(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AVAudioSessionXPCServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 102;
      v106 = 2112;
      v107 = v40;
      v108 = 1024;
      v109 = v37;
      _os_log_impl(&dword_241701000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set MXProperty: %@ on generic pipe for session: 0x%x due to missing entitlement.", buf, 0x22u);
    }

    v99 = *MEMORY[0x277CCA450];
    *v100 = @"Entitlement required to use generic property setter SPI";
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:&v99 count:1];
    v43 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:1701737535 userInfo:v75];
    v44 = objc_opt_new();
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v45 = v40;
    v46 = [v45 countByEnumeratingWithState:&v90 objects:buf count:16];
    if (v46)
    {
      v47 = *v91;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v91 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{&unk_28535D1E8, *(*(&v90 + 1) + 8 * k), 0}];
          [v44 addObject:v49];
        }

        v46 = [v45 countByEnumeratingWithState:&v90 objects:buf count:16];
      }

      while (v46);
    }

    v50 = [v44 copy];
    (*(v41 + 2))(v41, v43, v50);
  }

  else
  {
    v15 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 56);
      *buf = 136315650;
      *&buf[4] = "AVAudioSessionXPCServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 827;
      v106 = 1024;
      LODWORD(v107) = v16;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
    }

    v17 = *(a1 + 48);
    v18 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient setProperties:values:MXProperties:batchStrategy:genericMXPipe:reply:]_block_invoke", *(a1 + 56), 561210739);
    (*(v17 + 16))(v17, v18, 0);
  }

LABEL_75:
  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v82);
  }

  avas::ScopedTrace::~ScopedTrace(v84);
  v70 = *MEMORY[0x277D85DE8];
}

- (void)silenceOutput:(unsigned int)a3 options:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  v17[0] = 1;
  v18 = 3854;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient silenceOutput:options:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v8);

  v11 = avas::server::GetAudioControlQueue(v10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__AVAudioSessionRemoteXPCClient_silenceOutput_options_reply___block_invoke;
  v13[3] = &unk_278CEAA70;
  v16 = a3;
  v15 = a4;
  v12 = v9;
  v14 = v12;
  avas::server::DispatchBlock(v11, v13, 1, "[AVAudioSessionRemoteXPCClient silenceOutput:options:reply:]", "AVAudioSessionXPCServer.mm", 931, 0, 0);

  avas::ScopedTrace::~ScopedTrace(v17);
}

void __61__AVAudioSessionRemoteXPCClient_silenceOutput_options_reply___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  LOBYTE(v8) = 1;
  HIDWORD(v8) = 3973;
  v9 = v2;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  v3 = avas::server::require_acq::AudioSessionSilenceOutput(*(a1 + 48), *(a1 + 40));
  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"AudioSessionSilenceOutput error";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:{1, v8, v9, v10, v11, v12}];
    v6 = [v4 errorWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();

  avas::ScopedTrace::~ScopedTrace(&v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getIOControllerPeriod:(unsigned int)a3 decoupledInput:(BOOL)a4 reply:(id)a5
{
  v5 = a4;
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v20[0] = 1;
  v21 = 3855;
  v22 = a3;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getIOControllerPeriod:decoupledInput:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},double,unsigned long>(&self->_replyWatchdogMinTimestamp, v8);

  v11 = avas::server::LegacySessionManager::Instance(v10);
  v12 = *(v11 + 37);
  if (!v12)
  {
    v13 = -1;
LABEL_6:
    v14 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"sessionDeviceIOPeriod error";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v16 = [v14 errorWithDomain:*MEMORY[0x277CCA590] code:v13 userInfo:v15];

    (v9)[2](v9, v16, 0, 0.0);
    goto LABEL_7;
  }

  os_unfair_lock_lock(*(v11 + 37));
  avas::server::DeviceTimeObserver::sessionDeviceIOPeriod(&v12[2], a3, v5, v18);
  os_unfair_lock_unlock(v12);
  if (v19 != 1)
  {
    v13 = SLODWORD(v18[0]);
    goto LABEL_6;
  }

  v9[2](v9, 0, *&v18[2], v18[0]);
LABEL_7:
  avas::ScopedTrace::~ScopedTrace(v20);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setSessionPlayState:(unsigned int)a3 playState:(unsigned int)a4 playerType:(unsigned int)a5 playerRef:(id)a6 modes:(unsigned int)a7 reply:(id)a8
{
  v13 = a6;
  v14 = a8;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__AVAudioSessionRemoteXPCClient_setSessionPlayState_playState_playerType_playerRef_modes_reply___block_invoke;
  v19[3] = &unk_278CEAA98;
  v15 = v13;
  v20 = v15;
  v22 = a3;
  v23 = a5;
  v24 = a7;
  v25 = a4;
  v16 = v14;
  v21 = v16;
  v17 = MEMORY[0x245CEF0E0](v19);
  v18 = avas::server::GetAudioControlQueue(v17);
  avas::server::DispatchBlock(v18, v17, 1, "[AVAudioSessionRemoteXPCClient setSessionPlayState:playState:playerType:playerRef:modes:reply:]", "AVAudioSessionXPCServer.mm", 1081, 0, 0);
}

void __96__AVAudioSessionRemoteXPCClient_setSessionPlayState_playState_playerType_playerRef_modes_reply___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  v2 = [*(a1 + 32) UTF8String];
  v3 = *(a1 + 52);
  v9[0] = *(a1 + 48);
  v9[4] = 0;
  v4 = avas::server::require_acq::AudioSessionServerSetClientPlayState(v9, v3, v2, *(a1 + 56), *(a1 + 60), &v10, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
  if (v4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Setting Play State Failed";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [v5 errorWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:v6];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)createSession:(unint64_t)a3 sourceAuditToken:(id *)a4 sourceSessionID:(unsigned int)a5 nameOrDeviceUID:(id)a6 clientProcessName:(id)a7 clientProcessBundleID:(id)a8 useCaseIdentifier:(unsigned int)a9 reply:(id)a10
{
  v72[1] = *MEMORY[0x277D85DE8];
  v48 = a6;
  v49 = a7;
  v16 = a8;
  v17 = a10;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient createSession:sourceAuditToken:sourceSessionID:nameOrDeviceUID:clientProcessName:clientProcessBundleID:useCaseIdentifier:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 30000000);
  v18 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},unsigned int,NSObject  {objcproto13OS_xpc_object}* {__strong},unsigned int,unsigned int,NSString * {__strong}>(&self->_defaultReplyWatchdogFactory.mTimeoutHandler.__f_.__f_, v17);

  memset(&v60, 0, sizeof(v60));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  atoken = v60;
  v54[0] = 1;
  v55 = 3846;
  v56 = audit_token_to_pid(&atoken);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v20 = kdebug_trace();
  if (a3 > 1886550136)
  {
    if (a3 <= 1935897188)
    {
      if (a3 == 1886550137)
      {
        v22 = 1886550016;
        v21 = 121;
        goto LABEL_26;
      }

      if (a3 == 1935830119)
      {
        v22 = 1935830016;
        v21 = 103;
        goto LABEL_26;
      }
    }

    else
    {
      switch(a3)
      {
        case 0x73637265uLL:
          v22 = 1935897088;
          v21 = 101;
          goto LABEL_26;
        case 0x7369646BuLL:
          v22 = 1936286720;
          v21 = 107;
          goto LABEL_26;
        case 0x77686F3FuLL:
          v22 = 2003332864;
          v21 = 63;
          goto LABEL_26;
      }
    }

LABEL_62:
    v42 = NSErrorWithString(&cfstr_InvalidSession.isa);
    v43 = *avas::server::gSessionServerLog(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      atoken.val[0] = 136315650;
      *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = 1184;
      HIWORD(atoken.val[4]) = 2112;
      *&atoken.val[5] = @"Invalid session type";
      _os_log_impl(&dword_241701000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &atoken, 0x1Cu);
    }

    (v18)[2](v18, v42, 0, 0, 0, 0, 0);

    goto LABEL_56;
  }

  if (a3 <= 1668314225)
  {
    if (a3 == 1635088489)
    {
      v22 = 1635088384;
      v21 = 105;
      goto LABEL_26;
    }

    if (a3 == 1635148646)
    {
      v22 = 1635148544;
      v21 = 102;
      goto LABEL_26;
    }

    goto LABEL_62;
  }

  if (a3 == 1668314226)
  {
    v22 = 1668314112;
    v21 = 114;
    goto LABEL_26;
  }

  if (a3 == 1718183795)
  {
    v22 = 1718183680;
    v21 = 115;
    goto LABEL_26;
  }

  if (a3 != 1886546285)
  {
    goto LABEL_62;
  }

  v21 = 109;
  v22 = 1886546176;
LABEL_26:
  v23 = v22 | v21;
  if (v23 == 1886550137)
  {
    v24 = *&v60.val[4];
    *a4->var0 = *v60.val;
    *&a4->var0[4] = v24;
  }

  v25 = avas::server::LegacySessionManager::Instance(v20);
  if (v23 != 1886550137 && v23 != 1935830119)
  {
    v30 = 0;
    v29 = 0;
    v52 = 0;
    v53 = 0;
    goto LABEL_35;
  }

  if (a5 != -1 || (v26 = *&a4->var0[4], *atoken.val = *a4->var0, *&atoken.val[4] = v26, v27 = audit_token_to_pid(&atoken), v27 != -1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);
    avas::server::LegacySessionManager::FindSourceSessionForSibling(v25, a4, a5, WeakRetained[8], &atoken);
    v30 = *atoken.val;
    v29 = *&atoken.val[2];
    *atoken.val = 0;
    *&atoken.val[2] = 0;

    v52 = v30;
    v53 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_35:
    v50 = 0;
    v51 = 0;
    avas::server::LegacySessionManager::BuildCreationDescription(&atoken, v25, &v60, v23, v49, v16, &v52, &v50, v48, a9);
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    v31 = v53;
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if (v70 == 1)
    {
      if (v23 == 1886550137)
      {
        avas::server::LegacySessionManager::CreateProxySession(v25, &atoken, self->_clientProcess.xpcConnection);
      }

      v36 = self->_clientProcess.xpcConnection;
      v37 = objc_loadWeakRetained(&self->_server);
      avas::server::LegacySessionManager::CreateSession(v25, &atoken, v36, v37[8], buf);
      v38 = *buf;
      v32 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;

      if (v38)
      {
        v39 = (*(*v38 + 16))(v38);
        if (v30)
        {
          v30 = (*(*v30 + 16))(v30);
        }

        v40 = *(v25 + 37);
        if (v40)
        {
          os_unfair_lock_lock(v40);
          v41 = avas::server::DeviceTimeObserver::xpcSharedMemoryObject(&v40[2]);
          (v18)[2](v18, 0, v39, v41, v38[110], v30, 0);

          os_unfair_lock_unlock(v40);
        }

        else
        {
          v18[2](v18, 0, v39, 0, 0, v30, 0);
        }

LABEL_46:
        if (v70 == 1)
        {

          if (v68)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v68);
          }

          if (v67)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          }
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        goto LABEL_56;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = *avas::server::gSessionServerLog(v31);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioSessionXPCServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1307;
      _os_log_impl(&dword_241701000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Session creation failed", buf, 0x12u);
    }

    v34 = NSErrorWithString(&cfstr_SessionCreatio.isa);
    (v18)[2](v18, v34, 0, 0, 0, 0, 0);

    goto LABEL_46;
  }

  v44 = *avas::server::gSessionServerLog(v27);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    atoken.val[0] = 136315394;
    *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
    LOWORD(atoken.val[3]) = 1024;
    *(&atoken.val[3] + 2) = 1214;
    _os_log_impl(&dword_241701000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d Session creation failed due to AVAudioSessionTokenNoAudioSessionForServer and invalid audit token", &atoken, 0x12u);
  }

  v45 = MEMORY[0x277CCA9B8];
  v71 = *MEMORY[0x277CCA450];
  v72[0] = @"Session creation failed in server";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
  v47 = [v45 errorWithDomain:*MEMORY[0x277CCA590] code:2003329396 userInfo:v46];

  (v18)[2](v18, v47, 0, 0, 0, 0, 0);
LABEL_56:
  avas::ScopedTrace::~ScopedTrace(v54);

  v35 = *MEMORY[0x277D85DE8];
}

- (void)activateSession:(unsigned int)a3 options:(unint64_t)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v42[0] = 1;
  v43 = 3840;
  v44 = a3;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient activateSession:options:requestID:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v11 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v10);

  memset(&v41, 0, sizeof(v41));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v39, a3, &v41, 1);
  if (v39)
  {
    IsSessionActive = [MEMORY[0x277CCACA8] stringWithFormat:@"Activating [id:%llu]", a5];
    v14 = IsSessionActive;
    if ((a4 & 0x20008000) != 0)
    {
      goto LABEL_40;
    }

    v15 = v39;
    if (!v39)
    {
      v33 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v33 process:? delegate:?];
    }

    v16 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IsSessionActive = avas::server::ConstAudioSessionInfo::IsSessionActive(v15);
    v17 = IsSessionActive;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (!v17)
    {
LABEL_40:
      if (HIDWORD(a4))
      {
        v18 = *avas::server::gSessionServerLog(IsSessionActive);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v49 = "AVAudioSessionXPCServer.mm";
          v50 = 1024;
          v51 = 1363;
          v52 = 2048;
          v53 = a4;
          v54 = 1024;
          v55 = a3;
          _os_log_impl(&dword_241701000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid AVAudioSessionSetActiveOptions value: %lu in activation for sessionID 0x%x", buf, 0x22u);
        }
      }

      v19 = v39;
      if (!v39)
      {
        v31 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v31 process:? delegate:?];
      }

      v20 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SessionType = avas::server::ConstAudioSessionInfo::GetSessionType(v19);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (SessionType == 1935897189)
      {
        v22 = v39;
        if (!v39)
        {
          v32 = _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:v32 process:? delegate:?];
        }

        v23 = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          v24 = *(v22 + 14);
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        else
        {
          v24 = *(v39 + 14);
        }

        if (objc_opt_respondsToSelector())
        {
          v25 = [v24 waitForConclaveLaunch];
          if ((v25 & 1) == 0)
          {
            v26 = *avas::server::gSessionServerLog(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v49 = "AVAudioSessionXPCServer.mm";
              v50 = 1024;
              v51 = 1373;
              v52 = 1024;
              LODWORD(v53) = a3;
              _os_log_impl(&dword_241701000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Waiting for conclave launch timed out, sessionID 0x%x", buf, 0x18u);
            }
          }
        }
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v38 = v41;
      v34[2] = __73__AVAudioSessionRemoteXPCClient_activateSession_options_requestID_reply___block_invoke;
      v34[3] = &unk_278CEAAC0;
      v37 = a3;
      v34[4] = self;
      v36 = a4;
      v27 = v11;
      v35 = v27;
      v28 = MEMORY[0x245CEF0E0](v34);
      v29 = avas::server::GetActivationQueue(v28);
      dispatch_async_and_wait(v29, v28);

      (*(v27 + 2))(v27, 0);
    }

    else
    {
      v11[2](v11, 0);
    }
  }

  else
  {
    v14 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient activateSession:options:requestID:reply:]", a3, -50);
    (v11)[2](v11, v14);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  avas::ScopedTrace::~ScopedTrace(v42);

  v30 = *MEMORY[0x277D85DE8];
}

void __73__AVAudioSessionRemoteXPCClient_activateSession_options_requestID_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v12[0] = 1;
  v13 = 3968;
  v14 = v2;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v3 = kdebug_trace();
  v4 = *(a1 + 48);
  if (HIDWORD(v4))
  {
    v18 = &unk_28535A5C0;
    gsl::details::terminate(v3);
  }

  if (avas::server::ff_acq::AudioSessionServerActivateWithFlags(*(*(a1 + 32) + 72), *(a1 + 56), a1 + 60, v4, 1))
  {
    v8 = NSErrorWithString(&cfstr_SessionActivat.isa);
    (*(*(a1 + 40) + 16))(*(a1 + 40), v8, v9, v10, v11);
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v5, v6, v7);
  }

  avas::ScopedTrace::~ScopedTrace(v12);
}

- (void)deactivateSession:(unsigned int)a3 options:(unint64_t)a4 priority:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a7;
  v33[0] = 1;
  v34 = 3841;
  v35 = a3;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient deactivateSession:options:priority:requestID:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v13 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v12);

  memset(&v32, 0, sizeof(v32));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v30, a3, &v32, 1);
  v15 = v30;
  if (v30)
  {
    if (a4 || v11)
    {
      if (!HIDWORD(a4))
      {
LABEL_17:
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __84__AVAudioSessionRemoteXPCClient_deactivateSession_options_priority_requestID_reply___block_invoke;
        v23[3] = &unk_278CEAAE8;
        v28 = a3;
        v24 = v11;
        v25 = self;
        v29 = v32;
        v27 = a4;
        v26 = v13;
        v20 = MEMORY[0x245CEF0E0](v23);
        v21 = avas::server::GetActivationQueue(v20);
        dispatch_async_and_wait(v21, v20);

        v18 = v24;
        goto LABEL_18;
      }

      v19 = *avas::server::gSessionServerLog(v30);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v40 = "AVAudioSessionXPCServer.mm";
        v41 = 1024;
        v42 = 1486;
        v43 = 2048;
        v44 = a4;
        v45 = 1024;
        v46 = a3;
        _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid AVAudioSessionSetActiveOptions value: %lu in deactivation for sessionID: 0x%x. Clearing options to 0.", buf, 0x22u);
      }
    }

    else
    {
      v16 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IsSessionActive = avas::server::ConstAudioSessionInfo::IsSessionActive(v15);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if ((IsSessionActive & 1) == 0)
      {
        v13[2](v13, 0);
        goto LABEL_19;
      }
    }

    a4 = 0;
    goto LABEL_17;
  }

  v18 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient deactivateSession:options:priority:requestID:reply:]", a3, -50);
  (v13)[2](v13, v18);
LABEL_18:

LABEL_19:
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  avas::ScopedTrace::~ScopedTrace(v33);

  v22 = *MEMORY[0x277D85DE8];
}

void __84__AVAudioSessionRemoteXPCClient_deactivateSession_options_priority_requestID_reply___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v11[0] = 1;
  v12 = 3969;
  v13 = v2;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = avas::server::ff_acq::AudioSessionServerDeactivateAndSetPriority(*(*(a1 + 40) + 72), *(a1 + 64), (a1 + 68), [v3 unsignedIntValue]);
  }

  else
  {
    v5 = *(a1 + 56);
    if (HIDWORD(v5))
    {
      v17 = &unk_28535A5C0;
      gsl::details::terminate(0);
    }

    v4 = avas::server::ff_acq::AudioSessionServerDeactivateWithFlags(*(*(a1 + 40) + 72), *(a1 + 64), (a1 + 68), v5, 1);
  }

  v6 = v4;
  if (v4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Session deactivation failed";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v7 errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:v8];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  avas::ScopedTrace::~ScopedTrace(v11);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)getProperty:(unsigned int)a3 propertyName:(id)a4 MXProperty:(BOOL)a5 reply:(id)a6
{
  v10 = a4;
  v11 = a6;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getProperty:propertyName:MXProperty:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v12 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object  {objcproto14NSSecureCoding}* {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, v11);

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__AVAudioSessionRemoteXPCClient_getProperty_propertyName_MXProperty_reply___block_invoke;
  v19[3] = &unk_278CEAB10;
  v22 = a3;
  v19[4] = self;
  v13 = v12;
  v21 = v13;
  v23 = a5;
  v14 = v10;
  v20 = v14;
  v15 = MEMORY[0x245CEF0E0](v19);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  v18 = WeakRetained[6];
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __75__AVAudioSessionRemoteXPCClient_getProperty_propertyName_MXProperty_reply___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v20[0] = 1;
  v21 = 3848;
  v22 = v2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  kdebug_trace();
  memset(&v19, 0, sizeof(v19));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    [v3 auditToken];
  }

  if (VerifySessionOwnership(*(a1 + 56), &v19, 1))
  {
    if (*(a1 + 60) == 1)
    {
      avas::server::forbid_acq::GetPropertyMX(*(a1 + 56), *(a1 + 40), 0, &v19, buf);
      v4 = *buf;
      if (*buf)
      {
        v5 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA450];
        v33[0] = @"MXSessionGetProperty error";
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        v7 = [v5 errorWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:v6];

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      avas::server::forbid_acq::GetPropertyLocal(*(a1 + 56), *(a1 + 40), &v19, &v17);
      if (v17)
      {
        v11 = *(a1 + 48);
        v12 = NSErrorWithString(&cfstr_Getpropertyloc.isa);
        (*(v11 + 16))(v11, v12, 0, 0);
      }

      else
      {
        v13 = *avas::server::gSessionServerLog(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          v15 = *(a1 + 56);
          *buf = 136315906;
          *v27 = "AVAudioSessionXPCServer.mm";
          *&v27[8] = 1024;
          *&v27[10] = 1569;
          v28 = 2112;
          v29 = v14;
          v30 = 1024;
          v31 = v15;
          _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Success getting AVAS property: %@, session: 0x%x", buf, 0x22u);
        }

        (*(*(a1 + 48) + 16))();
      }
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getProperty:propertyName:MXProperty:reply:]_block_invoke", *(a1 + 56), -50);
    (*(v8 + 16))(v8, v9, 0, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v20);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)getMXPropertyGenericPipe:(unsigned int)a3 propertyName:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getMXPropertyGenericPipe:propertyName:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object  {objcproto14NSSecureCoding}* {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, v9);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__AVAudioSessionRemoteXPCClient_getMXPropertyGenericPipe_propertyName_reply___block_invoke;
  v17[3] = &unk_278CEAB38;
  v20 = a3;
  v17[4] = self;
  v11 = v10;
  v19 = v11;
  v12 = v8;
  v18 = v12;
  v13 = MEMORY[0x245CEF0E0](v17);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  v16 = WeakRetained[6];
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __77__AVAudioSessionRemoteXPCClient_getMXPropertyGenericPipe_propertyName_reply___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v14[0] = 1;
  v15 = 3850;
  v16 = v2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  kdebug_trace();
  memset(&v13, 0, sizeof(v13));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    [v3 auditToken];
  }

  if (VerifySessionOwnership(*(a1 + 56), &v13, 1))
  {
    avas::server::forbid_acq::GetPropertyMX(*(a1 + 56), *(a1 + 40), 1, &v13, &v11);
    v4 = v11;
    if (v11)
    {
      v5 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"MXSessionGetProperty error";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v7 = [v5 errorWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:v6];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getMXPropertyGenericPipe:propertyName:reply:]_block_invoke", *(a1 + 56), -50);
    (*(v8 + 16))(v8, v9, 0, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v14);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)getProperties:(unsigned int)a3 properties:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getProperties:properties:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong},NSDictionary * {__strong}>(&self->_replyWatchdogMinTimestamp, v9);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__AVAudioSessionRemoteXPCClient_getProperties_properties_reply___block_invoke;
  v17[3] = &unk_278CEAB38;
  v20 = a3;
  v17[4] = self;
  v11 = v10;
  v19 = v11;
  v12 = v8;
  v18 = v12;
  v13 = MEMORY[0x245CEF0E0](v17);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  v16 = WeakRetained[6];
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __64__AVAudioSessionRemoteXPCClient_getProperties_properties_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v13[0] = 1;
  v14 = 3979;
  v15 = v2;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  kdebug_trace();
  memset(&v12, 0, sizeof(v12));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    [v3 auditToken];
  }

  if (VerifySessionOwnership(*(a1 + 56), &v12, 1))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    v9 = 0;
    avas::server::forbid_acq::GetPropertiesFromMXSession(v4, &v12, v5, &v9, 0, &v10);
    v6 = v9;
    if (v10)
    {
      v7 = NSErrorWithString(&cfstr_ErrorInGetting.isa);
    }

    else
    {
      v7 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(a1 + 48);
    v6 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getProperties:properties:reply:]_block_invoke", *(a1 + 56), -50);
    (*(v8 + 16))(v8, v6, 0, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v13);
}

- (void)getPropertiesForCache:(unsigned int)a3 reply:(id)a4
{
  v6 = a4;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getPropertiesForCache:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong},NSDictionary * {__strong}>(&self->_replyWatchdogMinTimestamp, v6);

  {
    [AVAudioSessionRemoteXPCClient getPropertiesForCache:reply:]::mxProperties = getAllCachedPropertyNames();
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__AVAudioSessionRemoteXPCClient_getPropertiesForCache_reply___block_invoke;
  v13[3] = &unk_278CEAB60;
  v15 = a3;
  v13[4] = self;
  v8 = v7;
  v14 = v8;
  v9 = MEMORY[0x245CEF0E0](v13);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  v12 = WeakRetained[6];
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __61__AVAudioSessionRemoteXPCClient_getPropertiesForCache_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v12[0] = 1;
  v13 = 3979;
  v14 = v2;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  kdebug_trace();
  memset(&v11, 0, sizeof(v11));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    [v3 auditToken];
  }

  if (VerifySessionOwnership(*(a1 + 48), &v11, 1))
  {
    v4 = *(a1 + 48);
    v8 = 0;
    avas::server::forbid_acq::GetPropertiesFromMXSession(v4, &v11, [AVAudioSessionRemoteXPCClient getPropertiesForCache:reply:]::mxProperties, &v8, 1, &v9);
    v5 = v8;
    if (v9)
    {
      v6 = NSErrorWithString(&cfstr_ErrorInGetting.isa);
    }

    else
    {
      v6 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v5 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getPropertiesForCache:reply:]_block_invoke", *(a1 + 48), -50);
    (*(v7 + 16))(v7, v5, 0, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v12);
}

- (void)getDeferredMessages:(unsigned int)a3 reply:(id)a4
{
  v6 = a4;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getDeferredMessages:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, v6);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__AVAudioSessionRemoteXPCClient_getDeferredMessages_reply___block_invoke;
  v13[3] = &unk_278CEAB60;
  v15 = a3;
  v13[4] = self;
  v8 = v7;
  v14 = v8;
  v9 = MEMORY[0x245CEF0E0](v13);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  v12 = WeakRetained[6];
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __59__AVAudioSessionRemoteXPCClient_getDeferredMessages_reply___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v25[0] = 1;
  v26 = 3843;
  v27 = v2;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v3 = kdebug_trace();
  v4 = avas::server::LegacySessionManager::Instance(v3);
  memset(v24, 0, sizeof(v24));
  v5 = *(*(a1 + 32) + 24);
  if (v5)
  {
    [v5 auditToken];
  }

  v6 = *(a1 + 48);
  *buf = 1;
  v32[0] = 1;
  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v4, v6, v24, buf, &v22);
  if (v22)
  {
    v7 = *(a1 + 48);
    (*(*v22 + 64))(&v20);
    if (v20)
    {
      avas::server::AudioSessionRemoteClient::GetDeferredMessages(v20, buf);
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      for (i = *&v32[4]; i != buf; i = *(i + 8))
      {
        v10 = *(i + 16);
        [v8 addObject:v10];
      }

      (*(*(a1 + 40) + 16))();

      std::__list_imp<NSDictionary * {__strong}>::clear(buf);
    }

    else
    {
      v15 = *avas::server::gSessionServerLog(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        *buf = 136315650;
        *v32 = "AVAudioSessionXPCServer.mm";
        *&v32[8] = 1024;
        *&v32[10] = 1703;
        v33 = 1024;
        v34 = v16;
        _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d client 0x%x not found in remote clients", buf, 0x18u);
      }

      v17 = *(a1 + 40);
      v18 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getDeferredMessages:reply:]_block_invoke", *(a1 + 48), -50);
      (*(v17 + 16))(v17, v18, 0);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  else
  {
    v11 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 48);
      *buf = 136315650;
      *v32 = "AVAudioSessionXPCServer.mm";
      *&v32[8] = 1024;
      *&v32[10] = 1697;
      v33 = 1024;
      v34 = v12;
      _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d session info 0x%x not found in sessionMap", buf, 0x18u);
    }

    v13 = *(a1 + 40);
    v14 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getDeferredMessages:reply:]_block_invoke", *(a1 + 48), -50);
    (*(v13 + 16))(v13, v14, 0);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  avas::ScopedTrace::~ScopedTrace(v25);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)createAudioApplicationForSpecification:(id)a3 reply:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient createAudioApplicationForSpecification:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v8 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, v7);

  memset(&v26[1], 0, sizeof(audit_token_t));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    xpcConnection = [(NSXPCConnection *)xpcConnection auditToken];
  }

  v10 = avas::server::LegacySessionManager::Instance(xpcConnection);
  if (v6)
  {
    [v6 appAuditToken];
  }

  else
  {
    memset(v26, 0, 32);
  }

  *v29 = v26[0];
  v29[32] = 1;
  v23 = v26[0];
  *&v29[36] = audit_token_to_pid(&v23);
  v23 = v26[1];
  v24 = 1;
  atoken = v26[1];
  v25 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  if (avas::server::LegacySessionManager::VerifyAudioAppPermission(v10, v29, &v23, &atoken))
  {
    *v29 = [v6 attributionBundleID];
    v11 = [v6 processName];
    if (v11)
    {
      v12 = [v6 processName];
    }

    else
    {
      v12 = @"?";
    }

    *&v29[8] = v12;
    *&v29[16] = v26[1];
    v30 = 1;
    v23 = v26[1];
    v31 = audit_token_to_pid(&v23);
    if (v6)
    {
      [v6 appAuditToken];
    }

    else
    {
      memset(&atoken, 0, sizeof(atoken));
    }

    v32 = atoken;
    v33 = 1;
    v23 = atoken;
    v34 = audit_token_to_pid(&v23);
    v35 = [v6 audioAppType];
    v36 = 0;
    if (v11)
    {
    }

    avas::server::LegacySessionManager::CreateAudioApplication(v10, v29, self->_clientProcess.xpcConnection, &v23);
    if (*v23.val && *&v23.val[4])
    {
      v8[2](v8, 0, *(*&v23.val[4] + 8));
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28 = @"AudioApp creation failed";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v21 = [v19 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v20];

      (v8)[2](v8, v21, 0);
    }

    if (*&v23.val[6])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v23.val[6]);
    }

    if (*&v23.val[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v23.val[2]);
    }
  }

  else
  {
    if (v6)
    {
      [v6 appAuditToken];
    }

    else
    {
      memset(&v23, 0, sizeof(v23));
    }

    *v29 = v23;
    v13 = audit_token_to_pid(v29);
    v14 = v13;
    v15 = *avas::server::gSessionServerLog(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v29 = 136315906;
      *&v29[4] = "AVAudioSessionXPCServer.mm";
      *&v29[12] = 1024;
      *&v29[14] = 1105;
      *&v29[18] = 2080;
      *&v29[20] = "[AVAudioSessionRemoteXPCClient createAudioApplicationForSpecification:reply:]";
      *&v29[28] = 1024;
      *&v29[30] = v14;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed due to audio application (pid: %d) entitlement check failure", v29, 0x22u);
    }

    v16 = MEMORY[0x277CCA9B8];
    *atoken.val = *MEMORY[0x277CCA450];
    *v29 = @"AVAudioApplication error - missing entitlement";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&atoken count:{1, *v23.val}];
    v18 = [v16 errorWithDomain:*MEMORY[0x277CCA590] code:1701737535 userInfo:v17];

    (v8)[2](v8, v18, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sessionIDs:(id *)a3 clientID:(unsigned int)a4 reply:(id)a5
{
  v8 = a5;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient sessionIDs:clientID:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, v8);

  v11 = avas::server::LegacySessionManager::Instance(v10);
  memset(&v35, 0, sizeof(v35));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  v13 = *&a3->var0[4];
  v27 = *a3->var0;
  v28 = v13;
  v29 = 1;
  v14 = *&a3->var0[4];
  *v24.val = *a3->var0;
  *&v24.val[4] = v14;
  v30 = audit_token_to_pid(&v24);
  v24 = v35;
  v25 = 1;
  atoken = v35;
  v26 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v11, &v27, &v24, a4, &atoken, &v31);
  if (v31 && v33)
  {
    avas::server::AudioApplicationInfo::GetSessions(v31, &v27);
    v15 = objc_opt_new();
    v17 = *(&v27 + 1);
    for (i = v27; i != v17; i += 2)
    {
      v18 = *i;
      v19 = i[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*v18 + 16))(v18)];
      [v15 addObject:v20];

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    (v9)[2](v9, 0, v15);

    *v24.val = &v27;
    std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&v24);
  }

  else
  {
    v21 = *&a3->var0[4];
    v27 = *a3->var0;
    v28 = v21;
    v29 = 1;
    v22 = *&a3->var0[4];
    *v24.val = *a3->var0;
    *&v24.val[4] = v22;
    v30 = audit_token_to_pid(&v24);
    v23 = BuildInvalidAudioAppError("[AVAudioSessionRemoteXPCClient sessionIDs:clientID:reply:]", &v27);
    (v9)[2](v9, v23, 0);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

- (void)getApplicationProperty:(id *)a3 clientID:(unsigned int)a4 propertyID:(id)a5 isMXProperty:(BOOL)a6 reply:(id)a7
{
  v8 = a6;
  v44 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a7;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getApplicationProperty:clientID:propertyID:isMXProperty:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v14 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object  {objcproto14NSSecureCoding}* {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, v13);

  v16 = avas::server::LegacySessionManager::Instance(v15);
  memset(&v38, 0, sizeof(v38));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  v18 = *&a3->var0[4];
  *buf = *a3->var0;
  *&buf[16] = v18;
  buf[32] = 1;
  v19 = *&a3->var0[4];
  *v31.val = *a3->var0;
  *&v31.val[4] = v19;
  v43 = audit_token_to_pid(&v31);
  v31 = v38;
  v32 = 1;
  atoken = v38;
  v33 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v16, buf, &v31, a4, &atoken, &v34);
  if (v34 && v36)
  {
    if (v8)
    {
      v20 = 1836595770;
    }

    else
    {
      v20 = 1634744890;
    }

    avas::server::AudioApplicationInfo::GetProperty(v34, v12, v20, &v31);
    v21 = v31.val[0];
    if (v31.val[0])
    {
      v22 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      v41 = @"Failed to get property";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v24 = [v22 errorWithDomain:*MEMORY[0x277CCA590] code:v21 userInfo:v23];

      v26 = *avas::server::gSessionServerLog(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "AVAudioSessionXPCServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1895;
        *&buf[18] = 2112;
        *&buf[20] = v12;
        *&buf[28] = 1024;
        *&buf[30] = v31.val[0];
        _os_log_impl(&dword_241701000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get property: %@, err: %d", buf, 0x22u);
      }

      (v14)[2](v14, v24, 0, 0);
    }

    else
    {
      v14[2](v14, 0, *&v31.val[2], 0);
    }
  }

  else
  {
    v27 = *&a3->var0[4];
    *buf = *a3->var0;
    *&buf[16] = v27;
    buf[32] = 1;
    v28 = *&a3->var0[4];
    *v31.val = *a3->var0;
    *&v31.val[4] = v28;
    v43 = audit_token_to_pid(&v31);
    v29 = BuildInvalidAudioAppError("[AVAudioSessionRemoteXPCClient getApplicationProperty:clientID:propertyID:isMXProperty:reply:]", buf);
    (v14)[2](v14, v29, 0, 0);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)updateApplicationProperty:(id *)a3 clientID:(unsigned int)a4 propertyID:(id)a5 propertyValue:(id)a6 context:(id)a7 reply:(id)a8
{
  v45 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient updateApplicationProperty:clientID:propertyID:propertyValue:context:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v18 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v17);

  v20 = avas::server::LegacySessionManager::Instance(v19);
  memset(&v41, 0, sizeof(v41));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  v22 = *&a3->var0[4];
  *buf = *a3->var0;
  *&buf[16] = v22;
  buf[32] = 1;
  v23 = *&a3->var0[4];
  *v34.val = *a3->var0;
  *&v34.val[4] = v23;
  *&buf[36] = audit_token_to_pid(&v34);
  v34 = v41;
  v35 = 1;
  atoken = v41;
  v36 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v20, buf, &v34, a4, &atoken, &v37);
  if (!v37 || !v39)
  {
    v31 = *&a3->var0[4];
    *buf = *a3->var0;
    *&buf[16] = v31;
    buf[32] = 1;
    v32 = *&a3->var0[4];
    *v34.val = *a3->var0;
    *&v34.val[4] = v32;
    *&buf[36] = audit_token_to_pid(&v34);
    v30 = BuildInvalidAudioAppError("[AVAudioSessionRemoteXPCClient updateApplicationProperty:clientID:propertyID:propertyValue:context:reply:]", buf);
    (v18)[2](v18, v30);
LABEL_14:

    goto LABEL_15;
  }

  v25 = *avas::server::gSessionServerLog(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = (v39 + 176);
    if (*(v39 + 199) < 0)
    {
      v26 = *v26;
    }

    *buf = 136316162;
    *&buf[4] = "AVAudioSessionXPCServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1958;
    *&buf[18] = 2112;
    *&buf[20] = v14;
    *&buf[28] = 2112;
    *&buf[30] = v15;
    *&buf[38] = 2080;
    v44 = v26;
    _os_log_impl(&dword_241701000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Update audio app property: %@, value: %@ (client: %s)", buf, 0x30u);
  }

  updated = avas::server::AudioApplicationInfo::UpdateProperty(v37, v14, v15, 1634744890, 0, v16);
  v28 = updated;
  if (updated)
  {
    v29 = *avas::server::gSessionServerLog(updated);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AVAudioSessionXPCServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1962;
      *&buf[18] = 2112;
      *&buf[20] = v14;
      *&buf[28] = 1024;
      *&buf[30] = v28;
      _os_log_impl(&dword_241701000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update property: %@, err: %d", buf, 0x22u);
    }

    v30 = NSErrorWithString(&cfstr_FailedToUpdate.isa);
    (v18)[2](v18, v30);
    goto LABEL_14;
  }

  v18[2](v18, 0);
LABEL_15:
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)getApplicationMessages:(id *)a3 clientID:(unsigned int)a4 reply:(id)a5
{
  v8 = a5;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getApplicationMessages:clientID:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, v8);

  memset(&v28, 0, sizeof(v28));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    xpcConnection = [(NSXPCConnection *)xpcConnection auditToken];
  }

  v11 = avas::server::LegacySessionManager::Instance(xpcConnection);
  v12 = *&a3->var0[4];
  v20 = *a3->var0;
  v21 = v12;
  v22 = 1;
  v13 = *&a3->var0[4];
  *v17.val = *a3->var0;
  *&v17.val[4] = v13;
  v23 = audit_token_to_pid(&v17);
  v17 = v28;
  v18 = 1;
  atoken = v28;
  v19 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v11, &v20, &v17, a4, &atoken, &v24);
  if (v24 && v26)
  {
    v14 = avas::server::AudioAppRemoteClient::GetDeferredMessages(v26);
    (v9)[2](v9, 0, v14);
  }

  else
  {
    v15 = *&a3->var0[4];
    v20 = *a3->var0;
    v21 = v15;
    v22 = 1;
    v16 = *&a3->var0[4];
    *v17.val = *a3->var0;
    *&v17.val[4] = v16;
    v23 = audit_token_to_pid(&v17);
    v14 = BuildInvalidAudioAppError("[AVAudioSessionRemoteXPCClient getApplicationMessages:clientID:reply:]", &v20);
    (v9)[2](v9, v14, 0);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

- (void)setMXPropertyOnAllSessions:(id *)a3 clientID:(unsigned int)a4 MXProperty:(id)a5 values:(id)a6 reply:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setMXPropertyOnAllSessions:clientID:MXProperty:values:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v15 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v14);

  v18 = 0u;
  v19 = 0u;
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken:v18];
  }

  v17 = avas::server::forbid_acq::SetPropertyMXOnAppSessions(a3, &v18, a4, v12, v13);
  (v15)[2](v15, v17);
}

- (void)toggleInputMuteForRecordingProcess:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient toggleInputMuteForRecordingProcess:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v5 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v4);

  memset(&v19, 0, sizeof(v19));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  v16 = v19;
  v17 = 1;
  atoken = v19;
  v18 = audit_token_to_pid(&atoken);
  HasEntitlement = avas::server::ProcessIdentity::ProcessHasEntitlement(&v16, "com.apple.private.coreaudio.borrowaudioapplication.allow");
  if (HasEntitlement)
  {
    atoken = v19;
    v8 = audit_token_to_pid(&atoken);
    v9 = v8;
    v10 = *avas::server::gSessionServerLog(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v11)
    {
      atoken.val[0] = 136315650;
      *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = 2021;
      HIWORD(atoken.val[4]) = 1024;
      atoken.val[5] = v9;
      _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Toggle input mute, triggered by process: %d", &atoken, 0x18u);
    }

    v12 = avas::server::LegacySessionManager::Instance(v11);
    v13 = avas::server::LegacySessionManager::ToggleInputMuteForRecordingApplication(v12, &v19);
    (v5)[2](v5, v13);
  }

  else
  {
    v14 = *avas::server::gSessionServerLog(HasEntitlement);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      atoken.val[0] = 136315650;
      *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = 2016;
      HIWORD(atoken.val[4]) = 1024;
      atoken.val[5] = v18;
      _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Toggle input mute attempted but caller (pid: %d) doesn't have entitlement", &atoken, 0x18u);
    }

    v13 = NSErrorWithString(&cfstr_NotAllowed.isa);
    (v5)[2](v5, v13);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)muteInputForRecordingProcesses:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v13 = v12;
  v14 = 1;
  atoken = v12;
  HasEntitlement = audit_token_to_pid(&atoken);
  v15 = HasEntitlement;
  {
    if (HasEntitlement)
    {
      avas::SmartRoutingPrioritizesCall(void)::enabled = _os_feature_enabled_impl();
    }
  }

  if (avas::SmartRoutingPrioritizesCall(void)::enabled == 1 && (HasEntitlement = avas::server::ProcessIdentity::ProcessHasEntitlement(&v13, "com.apple.private.coreaudio.borrowaudioapplication.allow"), (HasEntitlement & 1) == 0))
  {
    v9 = *avas::server::gSessionServerLog(HasEntitlement);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      atoken.val[0] = 136315650;
      *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = 2035;
      HIWORD(atoken.val[4]) = 1024;
      atoken.val[5] = v15;
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Error - muteInputForRecordingProcesses attempted but caller (pid: %d) doesn't have entitlement", &atoken, 0x18u);
    }

    v10 = NSErrorWithString(&cfstr_NotAllowed.isa);
    v4[2](v4, v10, 0);
  }

  else
  {
    {
      if (HasEntitlement)
      {
        avas::SmartRoutingPrioritizesCall(void)::enabled = _os_feature_enabled_impl();
      }
    }

    if (avas::SmartRoutingPrioritizesCall(void)::enabled == 1)
    {
      avas::server::LegacySessionManager::Instance(HasEntitlement);
      avas::server::LegacySessionManager::MuteInputsForRecordingApplications(&v13);
      if ((v13.val[2] & 1) == 0)
      {
        v4[2](v4, *v13.val, 0);

        goto LABEL_16;
      }

      v7 = caulk::expected<NSDictionary * {__strong},NSError * {__strong}>::value(&v13);
      v4[2](v4, 0, *v7);
    }

    v8 = NSErrorWithString(&cfstr_Unsupported.isa);
    v4[2](v4, v8, 0);
  }

LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setEnhanceDialoguePreference:(id)a3 reply:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *avas::server::gSessionServerLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "AVAudioSessionXPCServer.mm";
    v12 = 1024;
    v13 = 2056;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d set enhance dialogue preference to %@", &v10, 0x1Cu);
  }

  if (v5 && ([v5 integerValue] & 0x8000000000000000) == 0 && objc_msgSend(v5, "integerValue") < 3)
  {
    CFPreferencesSetAppValue(@"enhancedialogueoptin", v5, @"com.apple.preferences-sounds");
    v8 = 0;
    notify_post("com.apple.preferences-sounds.enhancedialogueoptin");
  }

  else
  {
    v8 = NSErrorWithString(&cfstr_InvalidValue.isa);
  }

  (*(v6 + 2))(v6, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setEnhanceDialogueLevel:(id)a3 reply:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *avas::server::gSessionServerLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "AVAudioSessionXPCServer.mm";
    v13 = 1024;
    v14 = 2073;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d set enhance dialogue level to %@", &v11, 0x1Cu);
  }

  if (v5 && ([v5 integerValue] & 0x8000000000000000) == 0 && objc_msgSend(v5, "integerValue") < 4)
  {
    CFPreferencesSetAppValue(@"enhancedialoguelevel", v5, @"com.apple.preferences-sounds");
    if ([v5 integerValue])
    {
      v10 = &unk_28535D1D0;
    }

    else
    {
      v10 = &unk_28535D1B8;
    }

    CFPreferencesSetAppValue(@"enhancedialog", v10, @"com.apple.preferences-sounds");
    notify_post("com.apple.preferences-sounds.enhancedialog");
    notify_post("com.apple.preferences-sounds.enhancedialoguelevel");
    v8 = 0;
  }

  else
  {
    v8 = NSErrorWithString(&cfstr_InvalidLevelVa.isa);
  }

  (*(v6 + 2))(v6, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getEnhanceDialogueLevelWithReply:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  *keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"enhancedialog", @"com.apple.preferences-sounds", &keyExistsAndHasValidFormat[1]);
  v5 = CFPreferencesGetAppIntegerValue(@"enhancedialoguelevel", @"com.apple.preferences-sounds", keyExistsAndHasValidFormat);
  v6 = v5;
  if (v5 < 4)
  {
    v8 = *avas::server::gSessionServerLog(v5);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v9)
    {
      v18 = "AVAudioSessionXPCServer.mm";
      *buf = 136315906;
      v19 = 1024;
      if (keyExistsAndHasValidFormat[1])
      {
        v10 = "";
      }

      else
      {
        v10 = "(no value)";
      }

      v20 = 2109;
      v21 = 2048;
      v22 = AppIntegerValue;
      v23 = 2080;
      v24 = v10;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d got enhance dialogue mode: %ld %s", buf, 0x26u);
    }

    v11 = *avas::server::gSessionServerLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = "AVAudioSessionXPCServer.mm";
      *buf = 136315906;
      v19 = 1024;
      if (keyExistsAndHasValidFormat[0])
      {
        v12 = "";
      }

      else
      {
        v12 = "(no value)";
      }

      v20 = 2111;
      v21 = 2048;
      v22 = v6;
      v23 = 2080;
      v24 = v12;
      _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d got enhance dialogue level: %ld %s", buf, 0x26u);
    }

    v7 = 0;
  }

  else
  {
    v7 = NSErrorWithString(&cfstr_InvalidValue.isa);
  }

  if (AppIntegerValue)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  v3[2](v3, v7, v14, 0);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)allowAppToInitiatePlaybackTemporarilyFromBackground:(id)a3 reply:(id)a4
{
  v5 = a4;
  v4 = NSErrorWithString(&cfstr_NotSupportedOn.isa);
  v5[2](v5, v4);
}

void __102__AVAudioSessionRemoteXPCClient_reconfigureIONode_withSourceSession_sessionOwnerPID_playerType_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 88);
  v5 = *(a1 + 80);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(*(*(a1 + 48) + 8) + 24) = avas::server::LegacySessionManager::ReconfigureIONodeSession(v2, &v7, &v5, *(a1 + 96), *(a1 + 32), *(a1 + 40));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

- (void)invalidateIONode:(unsigned int)a3 reply:(id)a4
{
  v6 = a4;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient invalidateIONode:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v6);

  if (a3)
  {
    v9 = avas::server::LegacySessionManager::Instance(v8);
    v10 = self->_clientProcess.xpcConnection;
    v11 = v10;
    memset(&v18, 0, sizeof(v18));
    if (v10)
    {
      [(NSXPCConnection *)v10 auditToken];
    }

    v13 = v18;
    v14 = 1;
    atoken = v18;
    v15 = audit_token_to_pid(&atoken);
    avas::server::LegacySessionManager::FindIONodeSession(v9, a3, &v13, &v16);
    if (v16 && avas::server::LegacySessionManager::RemoveIONodeSession(v9, a3))
    {
      v7[2](v7, 0);
    }

    else
    {
      v12 = NSErrorWithCode();
      (v7)[2](v7, v12);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v11 = NSErrorWithCode();
    (v7)[2](v7, v11);
  }
}

- (void)setIONode:(unsigned int)a3 playState:(unsigned int)a4 modes:(unsigned int)a5 reply:(id)a6
{
  v10 = a6;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setIONode:playState:modes:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v11 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v10);

  v13 = avas::server::LegacySessionManager::Instance(v12);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  v27 = v26;
  v28 = 1;
  atoken = v26;
  v29 = audit_token_to_pid(&atoken);
  avas::server::LegacySessionManager::FindIONodeSession(v13, a3, &v27, &v30);
  if (v30)
  {
    *v27.val = 0;
    *&v27.val[2] = &v27;
    *&v27.val[4] = 0x2020000000;
    v27.val[6] = 0;
    v16 = avas::server::GetAudioControlQueue(v15);
    v17 = v16;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3321888768;
    v22[2] = __65__AVAudioSessionRemoteXPCClient_setIONode_playState_modes_reply___block_invoke;
    v22[3] = &unk_28535A530;
    v22[4] = &v27;
    v22[5] = v30;
    v23 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = a4;
    v25 = a5;
    avas::server::DispatchBlock(v16, v22, 1, "[AVAudioSessionRemoteXPCClient setIONode:playState:modes:reply:]", "AVAudioSessionXPCServer.mm", 2452, 0, 0);

    v18 = *(*&v27.val[2] + 24);
    if (v18)
    {
      v19 = *(*&v27.val[2] + 24);
      v20 = NSErrorWithCode();
    }

    else
    {
      v20 = 0;
    }

    (v11)[2](v11, v20);
    if (v18)
    {
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v21 = NSErrorWithCode();
    (v11)[2](v11, v21);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

uint64_t __65__AVAudioSessionRemoteXPCClient_setIONode_playState_modes_reply___block_invoke(uint64_t a1)
{
  result = avas::server::IONodeSessionInfo::SetPlayState(*(a1 + 40), *(a1 + 56), *(a1 + 60));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setPropertiesIONode:(unsigned int)a3 values:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setPropertiesIONode:values:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, v9);

  v12 = avas::server::LegacySessionManager::Instance(v11);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  v20 = v19;
  v21 = 1;
  atoken = v19;
  v22 = audit_token_to_pid(&atoken);
  avas::server::LegacySessionManager::FindIONodeSession(v12, a3, &v20, &v23);
  if (v23)
  {
    v14 = [v8 allKeys];
    v15 = [(AVAudioSessionRemoteXPCClient *)self containsPrivilegedIONodeProperties:v14];

    avas::server::IONodeSessionInfo::SetProperties(v23, v8, v15, &v20);
    v16 = v20.val[0];
    if (v20.val[0])
    {
      v17 = NSErrorWithCode();
    }

    else
    {
      v17 = 0;
    }

    (v10)[2](v10, v17, *&v20.val[2]);
    if (v16)
    {
    }
  }

  else
  {
    v18 = NSErrorWithCode();
    (v10)[2](v10, v18, 0);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

- (void)getPropertiesIONode:(unsigned int)a3 properties:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getPropertiesIONode:properties:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong},NSDictionary * {__strong}>(&self->_replyWatchdogMinTimestamp, v9);

  v12 = avas::server::LegacySessionManager::Instance(v11);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
  }

  else
  {
    memset(&v18[1], 0, 32);
  }

  v19 = *&v18[1];
  v20 = 1;
  atoken = *&v18[1];
  v21 = audit_token_to_pid(&atoken);
  avas::server::LegacySessionManager::FindIONodeSession(v12, a3, &v19, &v22);
  if (v22)
  {
    v14 = [(AVAudioSessionRemoteXPCClient *)self containsPrivilegedIONodeProperties:v8];
    v18[0] = 0;
    avas::server::IONodeSessionInfo::GetProperties(v22, v8, v14, v18, &v19);
    v15 = v18[0];
    v16 = v19.val[0];
    if (v19.val[0])
    {
      v17 = NSErrorWithCode();
    }

    else
    {
      v17 = 0;
    }

    (v10)[2](v10, v17, *&v19.val[2], v15);
    if (v16)
    {
    }
  }

  else
  {
    v15 = NSErrorWithCode();
    (v10)[2](v10, v15, 0, 0);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

- (void)updateMicrophonePermission:(int64_t)a3 clientToken:(id *)a4 reply:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (a4)
  {
    v9 = *a4->var0;
    v10 = *&a4->var0[4];
  }

  else
  {
    xpcConnection = self->_clientProcess.xpcConnection;
    if (xpcConnection)
    {
      [(NSXPCConnection *)xpcConnection auditToken];
    }

    else
    {
      memset(&atoken, 0, sizeof(atoken));
    }

    v9 = *atoken.val;
    v10 = *&atoken.val[4];
  }

  v34 = v9;
  v35 = v10;
  *atoken.val = v9;
  *&atoken.val[4] = v10;
  v12 = audit_token_to_pid(&atoken);
  LOBYTE(atoken.val[0]) = 1;
  atoken.val[1] = 3844;
  *&atoken.val[2] = v12;
  *&atoken.val[4] = 0;
  *&atoken.val[6] = 0;
  v27 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient updateMicrophonePermission:clientToken:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v13 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, v8);

  if (!self->_clientRelay)
  {
    v20 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v20 process:? delegate:?];
  }

  v15 = *avas::server::gSessionServerLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v29 = "AVAudioSessionXPCServer.mm";
    v30 = 1024;
    v31 = 2555;
    v32 = 1024;
    v33 = v12;
    _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Calling out to AudioToolbox to update microphone permission for client process %d", buf, 0x18u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v24 = v34;
  v25 = v35;
  v21[2] = __78__AVAudioSessionRemoteXPCClient_updateMicrophonePermission_clientToken_reply___block_invoke;
  v21[3] = &unk_278CEAB88;
  v23 = a3;
  v21[4] = self;
  v16 = v13;
  v22 = v16;
  v17 = MEMORY[0x245CEF0E0](v21);
  v18 = avas::server::GetAudioControlQueue(v17);
  avas::server::DispatchBlock(v18, v17, 1, "[AVAudioSessionRemoteXPCClient updateMicrophonePermission:clientToken:reply:]", "AVAudioSessionXPCServer.mm", 2575, 0, 0);

  avas::ScopedTrace::~ScopedTrace(&atoken);
  v19 = *MEMORY[0x277D85DE8];
}

void __78__AVAudioSessionRemoteXPCClient_updateMicrophonePermission_clientToken_reply___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (v2 == 1768843892)
  {
    v3 = 0;
    [*(a1[4] + 72) refreshMicrophoneInjectionPermissions:a1 + 7];
  }

  else if (v2 == 1919119972)
  {
    v3 = 0;
    [*(a1[4] + 72) refreshRecordPermissions:a1 + 7];
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"Invalid permission type";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v3 = [v4 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v5];
  }

  (*(a1[5] + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithServer:process:delegate:
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = getpid();
  if ((caulk::is_debugger_attached(v2) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v4 = WeakRetained;
    if (WeakRetained && (WeakRetained[10] & 1) == 0)
    {
      v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v5.__d_.__rep_ >= v4[12])
      {
        AudioSessionServerXPCTimeout(v4[11]);
      }

      else
      {
        v6 = *avas::server::gSessionServerLog(v5.__d_.__rep_);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315394;
          v9 = "AVAudioSessionXPCServer.mm";
          v10 = 1024;
          v11 = 593;
          _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d XPC watchdog timer fired too soon, skipping timeout handling", &v8, 0x12u);
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end