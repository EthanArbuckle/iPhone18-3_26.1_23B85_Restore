@interface ATPhasePlatform
- (ATPhasePlatform)init;
- (BOOL)enableIO:(BOOL)o direction:(unsigned __int8)direction;
- (BOOL)registerIOBlock:(id)block;
- (BOOL)registerOverloadNotification:(id)notification;
- (BOOL)registerRouteChangeNotification:(id)notification;
- (BOOL)start;
- (BOOL)stop;
- (OS_os_workgroup)workgroup;
- (double)sampleRate;
- (float)volumeScalarMappedToHWCurve:(float)curve;
- (id)lazyInitRoomCongruenceInterface;
- (id)lazyInitSessionInterface;
- (unsigned)bufferFrameSize;
- (unsigned)deviceLatencyInFramesForDirection:(unsigned __int8)direction;
- (void)dealloc;
- (void)lazyInitServerManager;
- (void)refreshInputMuteOnAllSessions:(float)sessions;
- (void)registerTapInterface:(id)interface;
@end

@implementation ATPhasePlatform

- (OS_os_workgroup)workgroup
{
  v11[8] = *MEMORY[0x1E69E9840];
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];
  v3 = *lazyInitServerManager;
  if (*lazyInitServerManager)
  {
    v4 = lazyInitServerManager;
    v5 = *(*v3[3] + 32);
    os_unfair_recursive_lock_lock_with_options();
    v6 = ((*v3)[51])(v3, v4 + 3);
    (*(*v6 + 88))(v11);
    v8 = caulk::mach::details::retain_os_object(v11[1], v7);
    caulk::mach::os_workgroup_managed::~os_workgroup_managed(v11);
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (float)volumeScalarMappedToHWCurve:(float)curve
{
  v23 = *MEMORY[0x1E69E9840];
  ptr = self->_serverManager.__ptr_;
  if (ptr)
  {
    v5 = *ptr;
    if (*ptr)
    {
      v6 = *(*v5[3] + 32);
      os_unfair_recursive_lock_lock_with_options();
      v7 = ((*v5)[51])(v5, ptr + 24);
      v8.n128_u32[0] = 1.0;
      if (curve <= 1.0)
      {
        v8.n128_f32[0] = curve;
      }

      if (curve < 0.0)
      {
        v8.n128_f32[0] = 0.0;
      }

      v9 = (*(*v7 + 176))(v7, v8);
      os_unfair_recursive_lock_unlock();
      v10 = gPhaseManagerLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v13 = 136316162;
        v14 = "PhaseServerManager.mm";
        v15 = 1024;
        v16 = 239;
        v17 = 2048;
        v18 = ptr;
        v19 = 2048;
        curveCopy = curve;
        v21 = 2048;
        v22 = v9;
        _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d servermgr@%p: volume %.3f, HW mapped volume %.3f", &v13, 0x30u);
      }

      curve = v9;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return curve;
}

- (void)refreshInputMuteOnAllSessions:(float)sessions
{
  lazyInitSessionInterface = [(ATPhasePlatform *)self lazyInitSessionInterface];

  if (lazyInitSessionInterface)
  {
    lazyInitSessionInterface2 = [(ATPhasePlatform *)self lazyInitSessionInterface];
    *&v6 = sessions;
    [lazyInitSessionInterface2 refreshInputMuteOnAllSessions:v6];
  }
}

- (void)registerTapInterface:(id)interface
{
  v15 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  tapInterface = self->_tapInterface;
  if (tapInterface != interfaceCopy)
  {
    if (interfaceCopy && tapInterface)
    {
      v7 = gPhaseManagerLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315650;
        v10 = "ATPhasePlatform.mm";
        v11 = 1024;
        v12 = 781;
        v13 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d platform@%p: error: cannot override tapsInterface", &v9, 0x1Cu);
      }
    }

    else
    {
      objc_storeStrong(&self->_tapInterface, interface);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)stop
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = gPhaseManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "ATPhasePlatform.mm";
    v8 = 1024;
    v9 = 764;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d platform@%p: stopping IO", &v6, 0x1Cu);
  }

  Phase::ServerManager::stop([(ATPhasePlatform *)self lazyInitServerManager]);
  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)start
{
  v37 = *MEMORY[0x1E69E9840];
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];
  v4 = lazyInitServerManager;
  sessionInterface_high = HIDWORD(lazyInitServerManager->_sessionInterface);
  if ((sessionInterface_high & 3) == 0)
  {
    v8 = -66681;
    v9 = gPhaseManagerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "PhaseServerManager.mm";
      v31 = 1024;
      v32 = 427;
      v33 = 2048;
      selfCopy2 = v4;
      v35 = 1024;
      v36 = -66681;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: both input and output are disabled, err = %d", buf, 0x22u);
    }

    goto LABEL_14;
  }

  if (!lazyInitServerManager[16]._tapInterface)
  {
    v8 = -66681;
    v9 = gPhaseManagerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "PhaseServerManager.mm";
      v31 = 1024;
      v32 = 434;
      v33 = 2048;
      selfCopy2 = v4;
      v35 = 1024;
      v36 = -66681;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: IOBlock is nil, err = %d", buf, 0x22u);
    }

    goto LABEL_14;
  }

  if (!lazyInitServerManager->super.isa)
  {
    v8 = -66681;
    v9 = gPhaseManagerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "PhaseServerManager.mm";
      v31 = 1024;
      v32 = 440;
      v33 = 2048;
      selfCopy2 = v4;
      v35 = 1024;
      v36 = -66681;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: error initializing, err = %d", buf, 0x22u);
    }

LABEL_14:

    goto LABEL_26;
  }

  if ((HIDWORD(lazyInitServerManager->_sessionInterface) & 3) == 3)
  {
    Phase::ServerManager::maxBufferSizeFrames(lazyInitServerManager);
    std::__optional_destruct_base<CA::AudioBuffersBase,false>::reset[abi:ne200100](&v4[18]);
    isa_high = HIDWORD(v4[11].super.isa);
    v7 = ExtendedAudioBufferList_Create();
    CA::AudioBuffersBase::AudioBuffersBase(&v4[18].super.isa, v7);
    LOBYTE(v4[18]._serverManager.__ptr_) = 1;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    goto LABEL_16;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if ((sessionInterface_high & 2) != 0)
  {
LABEL_16:
    (*(v4[8]._tapInterface + 8))(&v21);
    operator new();
  }

  if ((sessionInterface_high & 1) == 0)
  {
    goto LABEL_24;
  }

  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v10 = AudioControlQueue(void)::gAudioControlQueue;
  __p[0] = MEMORY[0x1E69E9820];
  __p[1] = 3221225472;
  __p[2] = ___ZN5Phase13ServerManager5startEv_block_invoke_30;
  __p[3] = &unk_1E7ED0258;
  __p[4] = &v22;
  __p[5] = v4;
  AT::DispatchBlock(v10, __p, 0, "start", "PhaseServerManager.mm", 479);

  if (*(v23 + 6))
  {
    Phase::ServerManager::stop(v4);
    v11 = gPhaseManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v23 + 6);
      v26[0] = 136315906;
      *&v26[1] = "PhaseServerManager.mm";
      LOWORD(v26[3]) = 1024;
      *(&v26[3] + 2) = 484;
      HIWORD(v26[4]) = 2048;
      *&v26[5] = v4;
      v27 = 1024;
      v28 = v12;
      _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: could not start output client, err = %d", v26, 0x22u);
    }

    v8 = *(v23 + 6);
  }

  else
  {
LABEL_24:
    v8 = 0;
    LOBYTE(v4->_sessionInterface) = 1;
  }

  _Block_object_dispose(&v22, 8);
LABEL_26:
  v13 = gPhaseManagerLog();
  v14 = v13;
  if (v8)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "ATPhasePlatform.mm";
      v31 = 1024;
      v32 = 755;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 1024;
      v36 = v8;
      v15 = "%25s:%-5d platform@%p: failed to start IO, err = %d";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 34;
LABEL_31:
      _os_log_impl(&dword_1B9A08000, v16, v17, v15, buf, v18);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315650;
    *&buf[1] = "ATPhasePlatform.mm";
    v31 = 1024;
    v32 = 751;
    v33 = 2048;
    selfCopy2 = self;
    v15 = "%25s:%-5d platform@%p: successfully started IO";
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
    v18 = 28;
    goto LABEL_31;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v8 == 0;
}

- (BOOL)registerRouteChangeNotification:(id)notification
{
  notificationCopy = notification;
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];
  v6 = notificationCopy;
  v7 = lazyInitServerManager[84];
  if (v7)
  {
    _Block_release(v7);
    v8 = lazyInitServerManager[84];
    lazyInitServerManager[84] = 0;
  }

  if (v6)
  {
    v9 = _Block_copy(v6);
    v10 = lazyInitServerManager[84];
    lazyInitServerManager[84] = v9;
  }

  return 1;
}

- (BOOL)registerOverloadNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  if (notification)
  {
    v5 = gPhaseManagerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "ATPhasePlatform.mm";
      v10 = 1024;
      v11 = 735;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d platform@%p: registering overload notification not supported yet!", &v8, 0x1Cu);
    }
  }

  result = notification == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)registerIOBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];
  v6 = blockCopy;
  if ((*(lazyInitServerManager + 43) & 1) != 0 || *(lazyInitServerManager + 363) == 1)
  {
    v7 = gPhaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = _Block_copy(v6);
      v16 = 136315906;
      v17 = "PhaseServerManager.mm";
      v18 = 1024;
      v19 = 146;
      v20 = 2048;
      v21 = lazyInitServerManager;
      v22 = 2048;
      v23 = v8;
      _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: cannot set the block@%p when IO is running!", &v16, 0x26u);
    }

    if (!lazyInitServerManager[83])
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    v9 = 0;
  }

  else
  {
    v10 = lazyInitServerManager[83];
    if (v10)
    {
      _Block_release(v10);
      v11 = lazyInitServerManager[83];
      lazyInitServerManager[83] = 0;
    }

    if (v6)
    {
      v12 = _Block_copy(v6);
      v13 = lazyInitServerManager[83];
      lazyInitServerManager[83] = v12;
    }

    v9 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unsigned)deviceLatencyInFramesForDirection:(unsigned __int8)direction
{
  directionCopy = direction;
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];

  return Phase::ServerManager::deviceLatencyInFrames(lazyInitServerManager, directionCopy);
}

- (BOOL)enableIO:(BOOL)o direction:(unsigned __int8)direction
{
  directionCopy = direction;
  oCopy = o;
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];

  return Phase::ServerManager::enableIO(lazyInitServerManager, oCopy, directionCopy);
}

- (unsigned)bufferFrameSize
{
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];

  return Phase::ServerManager::maxBufferSizeFrames(lazyInitServerManager);
}

- (double)sampleRate
{
  v2 = Phase::ServerManager::ioFormat([(ATPhasePlatform *)self lazyInitServerManager], 0);
  [v2 sampleRate];
  v4 = v3;

  return v4;
}

- (id)lazyInitRoomCongruenceInterface
{
  roomCongruenceInterface = self->_roomCongruenceInterface;
  if (roomCongruenceInterface || (v4 = objc_opt_new(), v5 = self->_roomCongruenceInterface, self->_roomCongruenceInterface = v4, v5, (roomCongruenceInterface = self->_roomCongruenceInterface) != 0))
  {

    return roomCongruenceInterface;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

- (id)lazyInitSessionInterface
{
  sessionInterface = self->_sessionInterface;
  if (sessionInterface || (v4 = [[PHASESessionInterfaceImpl alloc] initWithPhasePlatform:self], v5 = self->_sessionInterface, self->_sessionInterface = v4, v5, (sessionInterface = self->_sessionInterface) != 0))
  {

    return sessionInterface;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

- (void)lazyInitServerManager
{
  v4 = *MEMORY[0x1E69E9840];
  result = self->_serverManager.__ptr_;
  if (!result)
  {
    operator new();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  std::unique_ptr<Phase::ServerManager>::reset[abi:ne200100](&self->_serverManager, 0);
  sessionInterface = self->_sessionInterface;
  self->_sessionInterface = 0;

  tapInterface = self->_tapInterface;
  self->_tapInterface = 0;

  roomCongruenceInterface = self->_roomCongruenceInterface;
  self->_roomCongruenceInterface = 0;

  v6.receiver = self;
  v6.super_class = ATPhasePlatform;
  [(ATPhasePlatform *)&v6 dealloc];
}

- (ATPhasePlatform)init
{
  v8.receiver = self;
  v8.super_class = ATPhasePlatform;
  v2 = [(ATPhasePlatform *)&v8 init];
  v3 = v2;
  if (v2)
  {
    std::unique_ptr<Phase::ServerManager>::reset[abi:ne200100](v2 + 1, 0);
    sessionInterface = v3->_sessionInterface;
    v3->_sessionInterface = 0;

    tapInterface = v3->_tapInterface;
    v3->_tapInterface = 0;

    roomCongruenceInterface = v3->_roomCongruenceInterface;
    v3->_roomCongruenceInterface = 0;
  }

  return v3;
}

@end