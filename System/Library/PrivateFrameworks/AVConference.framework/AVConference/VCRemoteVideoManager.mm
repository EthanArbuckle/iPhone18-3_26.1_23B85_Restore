@interface VCRemoteVideoManager
+ (id)allowablePublicAPINames;
- (BOOL)doesQueueExistForStreamToken:(id)token;
- (BOOL)setLayerBoundsForStreamTokenWithArguments:(id)arguments error:(id *)error;
- (BOOL)setTransformForRemoteVideoOrientationEnabledWithArguments:(id)arguments error:(id *)error;
- (VCRemoteVideoManager)init;
- (id)contextIdForStreamTokenWithArguments:(id)arguments error:(id *)error;
- (id)newQueueForStreamToken:(int64_t)token videoMode:(int)mode imageQueueProtected:(BOOL)protected;
- (unsigned)slotForStreamToken:(int64_t)token videoMode:(int)mode;
- (void)cleanupDictionaries;
- (void)connectionDidChangeWithLocalInterfaceType:(id)type remoteInterfaceType:(id)interfaceType streamToken:(int64_t)token;
- (void)dealloc;
- (void)dispatchNetworkQualityDidDegrade:(BOOL)degrade isLocalNetworkQualityDegraded:(BOOL)degraded streamToken:(int64_t)token;
- (void)dispatchedConnectionDidChangeWithLocalInterfaceType:(id)type remoteInterfaceType:(id)interfaceType streamToken:(int64_t)token;
- (void)dispatchedNotifyCachedStateForStreamToken:(id)token;
- (void)dispatchedRemoteMediaDidStall:(BOOL)stall streamToken:(int64_t)token;
- (void)dispatchedRemoteVideoDidDegrade:(BOOL)degrade streamToken:(int64_t)token;
- (void)dispatchedRemoteVideoDidPause:(BOOL)pause streamToken:(int64_t)token;
- (void)dispatchedRemoteVideoDidSuspend:(BOOL)suspend streamToken:(int64_t)token;
- (void)networkQualityDidDegrade:(BOOL)degrade isLocalNetworkQualityDegraded:(BOOL)degraded streamToken:(int64_t)token;
- (void)notifyCachedStateForStreamToken:(id)token;
- (void)registerBlocksForService;
- (void)releaseQueueForStreamToken:(int64_t)token;
- (void)remoteMediaDidStall:(BOOL)stall streamToken:(int64_t)token;
- (void)remoteVideoDidDegrade:(BOOL)degrade streamToken:(int64_t)token;
- (void)remoteVideoDidPause:(BOOL)pause streamToken:(int64_t)token;
- (void)remoteVideoDidSuspend:(BOOL)suspend streamToken:(int64_t)token;
- (void)resetDidReceiveFirstFrameForStreamToken:(int64_t)token;
@end

@implementation VCRemoteVideoManager

void __VCRemoteVideoManager_DefaultManager_block_invoke()
{
  if (!_vcRemoteVideoManager)
  {
    _vcRemoteVideoManager = objc_alloc_init(VCRemoteVideoManager);
  }
}

- (VCRemoteVideoManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCRemoteVideoManager;
  v2 = [(VCRemoteVideoManager *)&v5 init];
  if (v2)
  {
    v2->_queuesForStreamTokenDict = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_stateCacheForStreamTokenDict = objc_alloc_init(MEMORY[0x1E695DF90]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v2->_dispatchQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCRemoteVideoManager.XPCCommandQueue", 0, CustomRootQueue);
    v2->_xpcCallbackQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCRemoteVideoManager.XPCNotificationQueue", 0, CustomRootQueue);
  }

  return v2;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  xpcCallbackQueue = self->_xpcCallbackQueue;
  if (xpcCallbackQueue)
  {
    dispatch_release(xpcCallbackQueue);
  }

  [(VCRemoteVideoManager *)self cleanupDictionaries];

  v5.receiver = self;
  v5.super_class = VCRemoteVideoManager;
  [(VCRemoteVideoManager *)&v5 dealloc];
}

+ (id)allowablePublicAPINames
{
  if (allowablePublicAPINames_onceToken_1 != -1)
  {
    +[VCRemoteVideoManager allowablePublicAPINames];
  }

  return allowablePublicAPINames__allowableAPIs_1;
}

void __47__VCRemoteVideoManager_allowablePublicAPINames__block_invoke()
{
  if (!allowablePublicAPINames__allowableAPIs_1)
  {
    allowablePublicAPINames__allowableAPIs_1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"vcRemoteVideoInitializeRemoteVideoForStreamToken", @"vcRemoteVideoTerminate", @"vcRemoteVideoGetCachedNotifications", 0}];
  }
}

- (id)newQueueForStreamToken:(int64_t)token videoMode:(int)mode imageQueueProtected:(BOOL)protected
{
  protectedCopy = protected;
  v35 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__22;
  v21 = __Block_byref_object_dispose__22;
  v22 = 0;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCRemoteVideoManager-newQueueForStreamToken");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v24 = v9;
      v25 = 2080;
      v26 = "[VCRemoteVideoManager newQueueForStreamToken:videoMode:imageQueueProtected:]";
      v27 = 1024;
      v28 = 172;
      v29 = 2048;
      tokenCopy = token;
      v31 = 1024;
      modeCopy = mode;
      v33 = 1024;
      v34 = protectedCopy;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCRemoteVideoManager-newQueueForStreamToken streamToken=%ld mode=%d imageQueueProtected=%d", buf, 0x32u);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__VCRemoteVideoManager_newQueueForStreamToken_videoMode_imageQueueProtected___block_invoke;
  v14[3] = &unk_1E85F81E8;
  v14[4] = self;
  v14[5] = &v17;
  v14[6] = token;
  modeCopy2 = mode;
  v16 = protectedCopy;
  dispatch_sync(dispatchQueue, v14);
  v12 = v18[5];
  _Block_object_dispose(&v17, 8);
  return v12;
}

void __77__VCRemoteVideoManager_newQueueForStreamToken_videoMode_imageQueueProtected___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 48);
  if ([*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      v5 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *v2;
          *buf = 136315906;
          v39 = v3;
          v40 = 2080;
          v41 = "[VCRemoteVideoManager newQueueForStreamToken:videoMode:imageQueueProtected:]_block_invoke";
          v42 = 1024;
          v43 = 183;
          v44 = 2048;
          *v45 = v6;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d queuesForStreamToken exists for streamToken %ld", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __77__VCRemoteVideoManager_newQueueForStreamToken_videoMode_imageQueueProtected___block_invoke_cold_1(v3, v2, v4);
      }
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(*(a1 + 32) + 8) setObject:v7 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}];

    v8 = objc_opt_new();
    [*(*(a1 + 32) + 16) setObject:v8 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}];
  }

  v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}];
  *(*(*(a1 + 40) + 8) + 40) = [v9 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *(a1 + 56))}];
  v10 = *(*(*(a1 + 40) + 8) + 40);
  if (v10)
  {
    v11 = v10;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 48);
          v16 = *(a1 + 56);
          *buf = 136316162;
          v39 = v12;
          v40 = 2080;
          v41 = "[VCRemoteVideoManager newQueueForStreamToken:videoMode:imageQueueProtected:]_block_invoke";
          v42 = 1024;
          v43 = 189;
          v44 = 1024;
          *v45 = v15;
          *&v45[4] = 1024;
          *&v45[6] = v16;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Queue exists for streamToken %u, videoMode %d", buf, 0x28u);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 48);
        v35 = *(a1 + 56);
        *buf = 136316162;
        v39 = v12;
        v40 = 2080;
        v41 = "[VCRemoteVideoManager newQueueForStreamToken:videoMode:imageQueueProtected:]_block_invoke";
        v42 = 1024;
        v43 = 189;
        v44 = 1024;
        *v45 = v34;
        *&v45[4] = 1024;
        *&v45[6] = v35;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Queue exists for streamToken %u, videoMode %d", buf, 0x28u);
      }
    }
  }

  else
  {
    v17 = *(a1 + 56);
    v18 = [VCImageQueue alloc];
    if (v17 == 2)
    {
      v19 = 60;
    }

    else
    {
      v19 = 30;
    }

    *(*(*(a1 + 40) + 8) + 40) = [(VCImageQueue *)v18 initWithFrameRate:v19 imageQueueProtected:*(a1 + 60)];
    [v9 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *(a1 + 56))}];
    [*(*(*(a1 + 40) + 8) + 40) setStreamToken:*(a1 + 48)];
    [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager registerStreamOutputSource:"registerStreamOutputSource:forStreamToken:" forStreamToken:*(*(*(a1 + 40) + 8) + 40), *(a1 + 48)];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v20 = *(*(*(a1 + 40) + 8) + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = [*(*(a1 + 32) + 8) allKeys] ? objc_msgSend(objc_msgSend(objc_msgSend(*(*(a1 + 32) + 8), "allKeys"), "description"), "UTF8String") : "<nil>";
    asprintf(&__str, "Returning queue %p for streamToken %u, video mode %d, _queuesForStreamTokenDict %s", v20, v21, v22, v23);
    if (__str)
    {
      __lasts = 0;
      v24 = strtok_r(__str, "\n", &__lasts);
      v25 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *v25;
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v39 = v26;
            v40 = 2080;
            v41 = "[VCRemoteVideoManager newQueueForStreamToken:videoMode:imageQueueProtected:]_block_invoke";
            v42 = 1024;
            v43 = 197;
            v44 = 2080;
            *v45 = "";
            *&v45[8] = 2080;
            v46 = v24;
            _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v24 = strtok_r(0, "\n", &__lasts);
      }

      while (v24);
      free(__str);
    }
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCRemoteVideoManager-newQueueForStreamToken");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 48);
      v31 = *(*(*(a1 + 40) + 8) + 40);
      v32 = *(a1 + 56);
      v33 = *(a1 + 60);
      *buf = 136316674;
      v39 = v28;
      v40 = 2080;
      v41 = "[VCRemoteVideoManager newQueueForStreamToken:videoMode:imageQueueProtected:]_block_invoke";
      v42 = 1024;
      v43 = 198;
      v44 = 2048;
      *v45 = v31;
      *&v45[8] = 2048;
      v46 = v30;
      v47 = 1024;
      v48 = v32;
      v49 = 1024;
      v50 = v33;
      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCRemoteVideoManager-newQueueForStreamToken queue=%p streamToken=%ld mode=%d imageQueueProtected=%d", buf, 0x3Cu);
    }
  }
}

- (void)resetDidReceiveFirstFrameForStreamToken:(int64_t)token
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCRemoteVideoManager-resetDidReceiveFirstFrame");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCRemoteVideoManager resetDidReceiveFirstFrameForStreamToken:]";
      v13 = 1024;
      v14 = 206;
      v15 = 2048;
      tokenCopy = token;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCRemoteVideoManager-resetDidReceiveFirstFrame streamToken=%ld", buf, 0x26u);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__VCRemoteVideoManager_resetDidReceiveFirstFrameForStreamToken___block_invoke;
  v8[3] = &unk_1E85F40E0;
  v8[4] = self;
  v8[5] = token;
  dispatch_async(dispatchQueue, v8);
}

uint64_t __64__VCRemoteVideoManager_resetDidReceiveFirstFrameForStreamToken___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}];

  return [v1 setHasReceivedFirstFrame:0];
}

- (BOOL)doesQueueExistForStreamToken:(id)token
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__VCRemoteVideoManager_doesQueueExistForStreamToken___block_invoke;
  v6[3] = &unk_1E85F3E08;
  v6[5] = token;
  v6[6] = &v7;
  v6[4] = self;
  dispatch_sync(dispatchQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __53__VCRemoteVideoManager_doesQueueExistForStreamToken___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = result != 0;
  return result;
}

- (void)releaseQueueForStreamToken:(int64_t)token
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCRemoteVideoManager_releaseQueueForStreamToken___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = token;
  dispatch_async(dispatchQueue, block);
}

void __51__VCRemoteVideoManager_releaseQueueForStreamToken___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v2];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v3)
  {
    v5 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 136316162;
        v19 = v6;
        v20 = 2080;
        v21 = "[VCRemoteVideoManager releaseQueueForStreamToken:]_block_invoke";
        v22 = 1024;
        v23 = 253;
        v24 = 1024;
        v25 = v8;
        v26 = 2048;
        v27 = [v3 count];
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d will release queues for streamToken=%u, [queuesForVideoMode count]=%lu", buf, 0x2Cu);
      }
    }

    [v3 removeAllObjects];
    [*(*(a1 + 32) + 8) removeObjectForKey:v2];
    [*(*(a1 + 32) + 16) removeObjectForKey:v2];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = [*(*(a1 + 32) + 8) count];
        *buf = 136316162;
        v19 = v9;
        v20 = 2080;
        v21 = "[VCRemoteVideoManager releaseQueueForStreamToken:]_block_invoke";
        v22 = 1024;
        v23 = 257;
        v24 = 1024;
        v25 = v11;
        v26 = 2048;
        v27 = v12;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d did release for streamToken=%u, [queueDict count]=%lu", buf, 0x2Cu);
      }
    }

    [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager deregisterStreamOutputSourceForStreamToken:"deregisterStreamOutputSourceForStreamToken:", *(a1 + 40)];
    v13 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VCRemoteVideoManager_releaseQueueForStreamToken___block_invoke_98;
    block[3] = &unk_1E85F3778;
    block[4] = v2;
    dispatch_async(v13, block);
  }

  else if (ErrorLogLevelForModule >= 5)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      *buf = 136315906;
      v19 = v14;
      v20 = 2080;
      v21 = "[VCRemoteVideoManager releaseQueueForStreamToken:]_block_invoke";
      v22 = 1024;
      v23 = 249;
      v24 = 1024;
      v25 = v16;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d queue doesn't exist for streamToken=%u", buf, 0x22u);
    }
  }
}

uint64_t __51__VCRemoteVideoManager_releaseQueueForStreamToken___block_invoke_98(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"vcRemoteVideoDidReleaseRemoteVideoQueue" arguments:0 toAllClientsWithContext:v3];
}

- (void)dispatchedRemoteVideoDidPause:(BOOL)pause streamToken:(int64_t)token
{
  pauseCopy = pause;
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = v7;
      v16 = 2080;
      v17 = "[VCRemoteVideoManager dispatchedRemoteVideoDidPause:streamToken:]";
      v18 = 1024;
      v19 = 378;
      v20 = 1024;
      tokenCopy = token;
      v22 = 1024;
      v23 = pauseCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken[%u] didPause[%d]", buf, 0x28u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_stateCacheForStreamTokenDict objectForKeyedSubscript:{v9), "setIsVideoPaused:", pauseCopy}];
  [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager remoteVideoDidPause:"remoteVideoDidPause:streamToken:" streamToken:pauseCopy, token];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:pauseCopy];
  v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"conferenceVideoPause", 0}];
  xpcCallbackQueue = self->_xpcCallbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VCRemoteVideoManager_dispatchedRemoteVideoDidPause_streamToken___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = v11;
  block[5] = v9;
  dispatch_async(xpcCallbackQueue, block);
}

uint64_t __66__VCRemoteVideoManager_dispatchedRemoteVideoDidPause_streamToken___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 sendMessageAsync:"vcRemoteVideoDidRemoteVideoPause" arguments:v3 toAllClientsWithContext:v4];
}

- (void)remoteVideoDidPause:(BOOL)pause streamToken:(int64_t)token
{
  v7 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__VCRemoteVideoManager_remoteVideoDidPause_streamToken___block_invoke;
  v5[3] = &unk_1E85F4180;
  pauseCopy = pause;
  v5[4] = self;
  v5[5] = token;
  dispatch_async(dispatchQueue, v5);
}

- (void)dispatchedRemoteMediaDidStall:(BOOL)stall streamToken:(int64_t)token
{
  stallCopy = stall;
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = v7;
      v16 = 2080;
      v17 = "[VCRemoteVideoManager dispatchedRemoteMediaDidStall:streamToken:]";
      v18 = 1024;
      v19 = 411;
      v20 = 1024;
      tokenCopy = token;
      v22 = 1024;
      v23 = stallCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken[%u] didStall[%d]", buf, 0x28u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_stateCacheForStreamTokenDict objectForKeyedSubscript:{v9), "setIsMediaStalled:", stallCopy}];
  [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager remoteMediaDidStall:"remoteMediaDidStall:streamToken:" streamToken:stallCopy, token];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:stallCopy];
  v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"conferenceIsRemoteMediaStalled", 0}];
  xpcCallbackQueue = self->_xpcCallbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VCRemoteVideoManager_dispatchedRemoteMediaDidStall_streamToken___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = v11;
  block[5] = v9;
  dispatch_async(xpcCallbackQueue, block);
}

uint64_t __66__VCRemoteVideoManager_dispatchedRemoteMediaDidStall_streamToken___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 sendMessageAsync:"vcRemoteVideoDidRemoteMediaStall" arguments:v3 toAllClientsWithContext:v4];
}

- (void)remoteMediaDidStall:(BOOL)stall streamToken:(int64_t)token
{
  v7 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__VCRemoteVideoManager_remoteMediaDidStall_streamToken___block_invoke;
  v5[3] = &unk_1E85F4180;
  stallCopy = stall;
  v5[4] = self;
  v5[5] = token;
  dispatch_async(dispatchQueue, v5);
}

- (void)dispatchedRemoteVideoDidDegrade:(BOOL)degrade streamToken:(int64_t)token
{
  degradeCopy = degrade;
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = v7;
      v16 = 2080;
      v17 = "[VCRemoteVideoManager dispatchedRemoteVideoDidDegrade:streamToken:]";
      v18 = 1024;
      v19 = 445;
      v20 = 1024;
      tokenCopy = token;
      v22 = 1024;
      v23 = degradeCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken[%u] isDegraded[%d]", buf, 0x28u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_stateCacheForStreamTokenDict objectForKeyedSubscript:{v9), "setIsVideoDegraded:", degradeCopy}];
  [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager remoteVideoDidDegrade:"remoteVideoDidDegrade:streamToken:" streamToken:degradeCopy, token];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:degradeCopy];
  v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"conferenceIsVideoDegraded", 0}];
  xpcCallbackQueue = self->_xpcCallbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCRemoteVideoManager_dispatchedRemoteVideoDidDegrade_streamToken___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = v11;
  block[5] = v9;
  dispatch_async(xpcCallbackQueue, block);
}

uint64_t __68__VCRemoteVideoManager_dispatchedRemoteVideoDidDegrade_streamToken___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 sendMessageAsync:"vcRemoteVideoDidVideoDegrade" arguments:v3 toAllClientsWithContext:v4];
}

- (void)remoteVideoDidDegrade:(BOOL)degrade streamToken:(int64_t)token
{
  v7 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__VCRemoteVideoManager_remoteVideoDidDegrade_streamToken___block_invoke;
  v5[3] = &unk_1E85F4180;
  degradeCopy = degrade;
  v5[4] = self;
  v5[5] = token;
  dispatch_async(dispatchQueue, v5);
}

- (void)dispatchNetworkQualityDidDegrade:(BOOL)degrade isLocalNetworkQualityDegraded:(BOOL)degraded streamToken:(int64_t)token
{
  degradedCopy = degraded;
  degradeCopy = degrade;
  v28 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v19 = v9;
      v20 = 2080;
      v21 = "[VCRemoteVideoManager dispatchNetworkQualityDidDegrade:isLocalNetworkQualityDegraded:streamToken:]";
      v22 = 1024;
      v23 = 480;
      v24 = 1024;
      tokenCopy = token;
      v26 = 1024;
      v27 = degradeCopy;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken=%u isDegraded=%d", buf, 0x28u);
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  v12 = [(NSMutableDictionary *)self->_stateCacheForStreamTokenDict objectForKeyedSubscript:v11];
  [v12 setIsNetworkDegraded:degradeCopy];
  [v12 setIsLocalNetworkDegraded:degradedCopy];
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:degradeCopy];
  v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:degradedCopy];
  v15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v13, @"conferenceIsNetworkDegraded", v14, @"conferenceIsNetworkDegradedLocal", 0}];
  xpcCallbackQueue = self->_xpcCallbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__VCRemoteVideoManager_dispatchNetworkQualityDidDegrade_isLocalNetworkQualityDegraded_streamToken___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = v15;
  block[5] = v11;
  dispatch_async(xpcCallbackQueue, block);
}

uint64_t __99__VCRemoteVideoManager_dispatchNetworkQualityDidDegrade_isLocalNetworkQualityDegraded_streamToken___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 sendMessageAsync:"vcRemoteVideoDidNetworkDegrade" arguments:v3 toAllClientsWithContext:v4];
}

- (void)networkQualityDidDegrade:(BOOL)degrade isLocalNetworkQualityDegraded:(BOOL)degraded streamToken:(int64_t)token
{
  v9 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__VCRemoteVideoManager_networkQualityDidDegrade_isLocalNetworkQualityDegraded_streamToken___block_invoke;
  v6[3] = &unk_1E85F6C48;
  degradeCopy = degrade;
  degradedCopy = degraded;
  v6[4] = self;
  v6[5] = token;
  dispatch_async(dispatchQueue, v6);
}

- (void)dispatchedRemoteVideoDidSuspend:(BOOL)suspend streamToken:(int64_t)token
{
  suspendCopy = suspend;
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = v7;
      v16 = 2080;
      v17 = "[VCRemoteVideoManager dispatchedRemoteVideoDidSuspend:streamToken:]";
      v18 = 1024;
      v19 = 510;
      v20 = 1024;
      tokenCopy = token;
      v22 = 1024;
      v23 = suspendCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken[%u] isSuspended[%d]", buf, 0x28u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_stateCacheForStreamTokenDict objectForKeyedSubscript:{v9), "setIsVideoSuspended:", suspendCopy}];
  [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager remoteVideoDidSuspend:"remoteVideoDidSuspend:streamToken:" streamToken:suspendCopy, token];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:suspendCopy];
  v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"conferenceIsVideoSuspended", 0}];
  xpcCallbackQueue = self->_xpcCallbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCRemoteVideoManager_dispatchedRemoteVideoDidSuspend_streamToken___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = v11;
  block[5] = v9;
  dispatch_async(xpcCallbackQueue, block);
}

uint64_t __68__VCRemoteVideoManager_dispatchedRemoteVideoDidSuspend_streamToken___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 sendMessageAsync:"vcRemoteVideoDidVideoSuspend" arguments:v3 toAllClientsWithContext:v4];
}

- (void)remoteVideoDidSuspend:(BOOL)suspend streamToken:(int64_t)token
{
  v7 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__VCRemoteVideoManager_remoteVideoDidSuspend_streamToken___block_invoke;
  v5[3] = &unk_1E85F4180;
  suspendCopy = suspend;
  v5[4] = self;
  v5[5] = token;
  dispatch_async(dispatchQueue, v5);
}

- (void)dispatchedConnectionDidChangeWithLocalInterfaceType:(id)type remoteInterfaceType:(id)interfaceType streamToken:(int64_t)token
{
  block[6] = *MEMORY[0x1E69E9840];
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  v9 = [(NSMutableDictionary *)self->_stateCacheForStreamTokenDict objectForKeyedSubscript:v8];
  [v9 setLocalInterfaceType:type];
  [v9 setRemoteInterfaceType:interfaceType];
  v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{type, @"conferenceConnectionTypeLocal", interfaceType, @"conferenceConnectionTypeRemote", 0}];
  xpcCallbackQueue = self->_xpcCallbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__VCRemoteVideoManager_dispatchedConnectionDidChangeWithLocalInterfaceType_remoteInterfaceType_streamToken___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = v10;
  block[5] = v8;
  dispatch_async(xpcCallbackQueue, block);
}

uint64_t __108__VCRemoteVideoManager_dispatchedConnectionDidChangeWithLocalInterfaceType_remoteInterfaceType_streamToken___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 sendMessageAsync:"vcRemoteVideoDidConnectionChange" arguments:v3 toAllClientsWithContext:v4];
}

- (void)connectionDidChangeWithLocalInterfaceType:(id)type remoteInterfaceType:(id)interfaceType streamToken:(int64_t)token
{
  block[8] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCRemoteVideoManager_connectionDidChangeWithLocalInterfaceType_remoteInterfaceType_streamToken___block_invoke;
  block[3] = &unk_1E85F4AB8;
  block[4] = self;
  block[5] = type;
  block[6] = interfaceType;
  block[7] = token;
  dispatch_async(dispatchQueue, block);
}

void ___VCRemoteVideoManager_DispatchedDidDetectSensitiveContentWithAnalysis_block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{*(a1 + 32), @"conferenceSensitivityAnalysis", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (unsigned)slotForStreamToken:(int64_t)token videoMode:(int)mode
{
  v4 = *&mode;
  v26 = *MEMORY[0x1E69E9840];
  if (VCRemoteVideoManager_DefaultManager_onceToken != -1)
  {
    VCRemoteVideoManager_DefaultManager_cold_1();
  }

  QueueForStreamToken = _VCRemoteVideoManager_GetQueueForStreamToken(_vcRemoteVideoManager, token, v4);
  v7 = [QueueForStreamToken setVideoDestination:0];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (QueueForStreamToken)
      {
        v10 = [objc_msgSend(QueueForStreamToken "description")];
      }

      else
      {
        v10 = "<nil>";
      }

      v12 = 136316674;
      v13 = v8;
      v14 = 2080;
      v15 = "[VCRemoteVideoManager slotForStreamToken:videoMode:]";
      v16 = 1024;
      v17 = 608;
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = v7;
      v22 = 1024;
      tokenCopy = token;
      v24 = 1024;
      v25 = v4;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCRemoteVideoManager: queue %s --> get slot# %lu for streamToken %u(%d)", &v12, 0x3Cu);
    }
  }

  return v7;
}

- (void)cleanupDictionaries
{
  [(NSMutableDictionary *)self->_queuesForStreamTokenDict removeAllObjects];
  stateCacheForStreamTokenDict = self->_stateCacheForStreamTokenDict;

  [(NSMutableDictionary *)stateCacheForStreamTokenDict removeAllObjects];
}

- (id)contextIdForStreamTokenWithArguments:(id)arguments error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = [arguments objectForKeyedSubscript:@"conferenceCallID"];
  v8 = [arguments objectForKeyedSubscript:@"conferenceVisualRectangle"];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [VCRemoteVideoManager contextIdForStreamTokenWithArguments:error:];
    goto LABEL_16;
  }

  v10 = v8;
  if (![(NSMutableDictionary *)self->_queuesForStreamTokenDict objectForKeyedSubscript:v7])
  {
    [VCRemoteVideoManager contextIdForStreamTokenWithArguments:v7 error:?];
LABEL_16:
    if (error)
    {
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCRemoteVideoManager" code:*buf userInfo:0];
      v19 = 0;
      *error = v21;
    }

    else
    {
      v19 = 0;
    }

    return v19;
  }

  unsignedIntValue = [v7 unsignedIntValue];
  v12 = unsignedIntValue;
  QueueForStreamToken = _VCRemoteVideoManager_GetQueueForStreamToken(self, unsignedIntValue, 0);
  v38 = NSRectFromString(v10);
  v14 = [QueueForStreamToken createCAContextWithSize:{v38.origin.x, v38.origin.y, v38.size.width, v38.size.height}];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (QueueForStreamToken)
      {
        v17 = [objc_msgSend(QueueForStreamToken "description")];
      }

      else
      {
        v17 = "<nil>";
      }

      *buf = 136316674;
      *&buf[4] = v15;
      v25 = 2080;
      v26 = "[VCRemoteVideoManager contextIdForStreamTokenWithArguments:error:]";
      v27 = 1024;
      v28 = 636;
      v29 = 2080;
      v30 = v17;
      v31 = 2048;
      v32 = v14;
      v33 = 1024;
      v34 = v12;
      v35 = 1024;
      v36 = 0;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCRemoteVideoManager: queue=%s --> get context=%lu for streamToken=%u(mode=%d)", buf, 0x3Cu);
    }
  }

  v22[0] = [&unk_1F579A3C8 stringValue];
  v23[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
  v22[1] = [&unk_1F579A3E0 stringValue];
  v23[1] = &unk_1F579A3C8;
  v22[2] = [&unk_1F579A3F8 stringValue];
  v23[2] = &unk_1F579A3C8;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"CONTEXT", v18, @"vcRemoteVideoSlotsForModes", 0}];
  return v19;
}

- (BOOL)setLayerBoundsForStreamTokenWithArguments:(id)arguments error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = [arguments objectForKeyedSubscript:@"conferenceCallID"];
  v8 = [arguments objectForKeyedSubscript:@"conferenceVisualRectangle"];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [VCRemoteVideoManager setLayerBoundsForStreamTokenWithArguments:error:];
    goto LABEL_34;
  }

  v10 = v8;
  unsignedIntValue = [v7 unsignedIntValue];
  v12 = unsignedIntValue;
  if ([(NSMutableDictionary *)self->_queuesForStreamTokenDict objectForKeyedSubscript:v7])
  {
    QueueForStreamToken = _VCRemoteVideoManager_GetQueueForStreamToken(self, unsignedIntValue, 0);
    v47 = NSRectFromString(v10);
    if (VideoUtil_LayerBoundsAreValid(v47.origin.x, v47.origin.y, v47.size.width, v47.size.height))
    {
      v14 = [arguments objectForKeyedSubscript:@"USERXPCARGUMENTS"];
      v15 = [MEMORY[0x1E6979370] handleFromXPCRepresentation:v14];
      if (v15)
      {
        v16 = v15;
        v17 = VCImageQueue_setCALayerSize(QueueForStreamToken, v15);
        if (v17)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *MEMORY[0x1E6986650];
            v20 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                if (QueueForStreamToken)
                {
                  v21 = [objc_msgSend(QueueForStreamToken "description")];
                }

                else
                {
                  v21 = "<nil>";
                }

                *buf = 136316930;
                *&buf[4] = v18;
                v32 = 2080;
                v33 = "[VCRemoteVideoManager setLayerBoundsForStreamTokenWithArguments:error:]";
                v34 = 1024;
                v35 = 669;
                v36 = 2080;
                v37 = v21;
                v38 = 2112;
                selfCopy = v10;
                v40 = 2048;
                v41 = v16;
                v42 = 1024;
                v43 = unsignedIntValue;
                v44 = 1024;
                v45 = 0;
                _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCRemoteVideoManager: queue=%s --> set layer bounds=%@ caFenceHandle=%p for streamToken=%u(mode=%d)", buf, 0x46u);
              }
            }

            else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              if (QueueForStreamToken)
              {
                v22 = [objc_msgSend(QueueForStreamToken "description")];
              }

              else
              {
                v22 = "<nil>";
              }

              *buf = 136316930;
              *&buf[4] = v18;
              v32 = 2080;
              v33 = "[VCRemoteVideoManager setLayerBoundsForStreamTokenWithArguments:error:]";
              v34 = 1024;
              v35 = 669;
              v36 = 2080;
              v37 = v22;
              v38 = 2112;
              selfCopy = v10;
              v40 = 2048;
              v41 = v16;
              v42 = 1024;
              v43 = unsignedIntValue;
              v44 = 1024;
              v45 = 0;
              _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCRemoteVideoManager: queue=%s --> set layer bounds=%@ caFenceHandle=%p for streamToken=%u(mode=%d)", buf, 0x46u);
            }
          }

          v23 = 0;
        }

        else
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCRemoteVideoManager setLayerBoundsForStreamTokenWithArguments:error:];
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v26 = [(VCRemoteVideoManager *)self performSelector:sel_logPrefix];
            }

            else
            {
              v26 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v27 = VRTraceErrorLogLevelToCSTR();
              v28 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                *&buf[4] = v27;
                v32 = 2080;
                v33 = "[VCRemoteVideoManager setLayerBoundsForStreamTokenWithArguments:error:]";
                v34 = 1024;
                v35 = 668;
                v36 = 2112;
                v37 = v26;
                v38 = 2048;
                selfCopy = self;
                v40 = 2048;
                v41 = v12;
                _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid CALayer for queue wiht streamToken=%ld", buf, 0x3Au);
              }
            }
          }

          v23 = -3;
        }

        v24 = v17 ^ 1;
        [v16 invalidate];
        goto LABEL_21;
      }

      [VCRemoteVideoManager setLayerBoundsForStreamTokenWithArguments:error:];
    }

    else
    {
      [VCRemoteVideoManager setLayerBoundsForStreamTokenWithArguments:error:];
    }

LABEL_34:
    v23 = *buf;
    LOBYTE(v17) = v29;
    v24 = v30;
    goto LABEL_21;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCRemoteVideoManager setLayerBoundsForStreamTokenWithArguments:error:];
    }
  }

  LOBYTE(v17) = 0;
  v24 = 1;
  v23 = -2;
LABEL_21:
  if (error && v24)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCRemoteVideoManager" code:v23 userInfo:0];
  }

  return v17;
}

- (BOOL)setTransformForRemoteVideoOrientationEnabledWithArguments:(id)arguments error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = [arguments objectForKeyedSubscript:@"conferenceCallID"];
  v8 = [arguments objectForKeyedSubscript:@"conferenceTransformForRemoteVideoOrientationEnabled"];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [VCRemoteVideoManager setTransformForRemoteVideoOrientationEnabledWithArguments:error:];
    goto LABEL_13;
  }

  v10 = v8;
  unsignedIntValue = [v7 unsignedIntValue];
  if (![(NSMutableDictionary *)self->_queuesForStreamTokenDict objectForKeyedSubscript:v7])
  {
    [VCRemoteVideoManager setTransformForRemoteVideoOrientationEnabledWithArguments:unsignedIntValue error:?];
LABEL_13:
    if (!error)
    {
      return 0;
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCRemoteVideoManager" code:*v17 userInfo:0];
    result = 0;
    *error = v16;
    return result;
  }

  QueueForStreamToken = _VCRemoteVideoManager_GetQueueForStreamToken(self, unsignedIntValue, 0);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 136316162;
      *&v17[4] = v13;
      v18 = 2080;
      v19 = "[VCRemoteVideoManager setTransformForRemoteVideoOrientationEnabledWithArguments:error:]";
      v20 = 1024;
      v21 = 693;
      v22 = 2112;
      v23 = v10;
      v24 = 2048;
      v25 = unsignedIntValue;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting transformForRemoteVideoOrientationEnabled=%@ for streamToken=%ld", v17, 0x30u);
    }
  }

  [QueueForStreamToken setTransformForRemoteVideoOrientationEnabled:{objc_msgSend(v10, "BOOLValue")}];
  return 1;
}

- (void)notifyCachedStateForStreamToken:(id)token
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCRemoteVideoManager_notifyCachedStateForStreamToken___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = token;
  dispatch_async(dispatchQueue, block);
}

- (void)dispatchedNotifyCachedStateForStreamToken:(id)token
{
  v23 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [(NSMutableDictionary *)self->_stateCacheForStreamTokenDict objectForKeyedSubscript:token];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      unsignedIntegerValue = [token unsignedIntegerValue];
      if (v5)
      {
        v9 = [objc_msgSend(v5 "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      v11 = 136316418;
      v12 = v6;
      v13 = 2080;
      v14 = "[VCRemoteVideoManager dispatchedNotifyCachedStateForStreamToken:]";
      v15 = 1024;
      v16 = 713;
      v17 = 1024;
      v18 = 713;
      v19 = 2048;
      v20 = unsignedIntegerValue;
      v21 = 2080;
      v22 = v9;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCRemoteVideoManager.m:%d: token[%ld] state[%s]", &v11, 0x36u);
    }
  }

  if (v5)
  {
    unsignedIntegerValue2 = [token unsignedIntegerValue];
    if ([v5 isMediaStalled])
    {
      -[VCRemoteVideoManager dispatchedRemoteMediaDidStall:streamToken:](self, "dispatchedRemoteMediaDidStall:streamToken:", [v5 isMediaStalled], unsignedIntegerValue2);
    }

    if ([v5 isVideoPaused])
    {
      -[VCRemoteVideoManager dispatchedRemoteVideoDidPause:streamToken:](self, "dispatchedRemoteVideoDidPause:streamToken:", [v5 isVideoPaused], unsignedIntegerValue2);
    }

    if ([v5 isVideoDegraded])
    {
      -[VCRemoteVideoManager dispatchedRemoteVideoDidDegrade:streamToken:](self, "dispatchedRemoteVideoDidDegrade:streamToken:", [v5 isVideoDegraded], unsignedIntegerValue2);
    }

    if ([v5 isVideoSuspended])
    {
      -[VCRemoteVideoManager dispatchedRemoteVideoDidSuspend:streamToken:](self, "dispatchedRemoteVideoDidSuspend:streamToken:", [v5 isVideoSuspended], unsignedIntegerValue2);
    }

    if ([v5 isNetworkDegraded] && objc_msgSend(v5, "isLocalNetworkDegraded"))
    {
      -[VCRemoteVideoManager dispatchNetworkQualityDidDegrade:isLocalNetworkQualityDegraded:streamToken:](self, "dispatchNetworkQualityDidDegrade:isLocalNetworkQualityDegraded:streamToken:", [v5 isNetworkDegraded], objc_msgSend(v5, "isLocalNetworkDegraded"), unsignedIntegerValue2);
    }

    if ([v5 remoteVideoAttributes])
    {
      _VCRemoteVideoManager_DispatchedRemoteVideoAttributesDidChange(self, [v5 remoteVideoAttributes], unsignedIntegerValue2);
    }

    if ([v5 remoteScreenAttributes])
    {
      _VCRemoteVideoManager_DispatchedRemoteScreenAttributesDidChange(self, [v5 remoteScreenAttributes], unsignedIntegerValue2);
    }

    if ([v5 hasReceivedFirstFrame])
    {
      _VCRemoteVideoManager_DispatchedDidReceiveFirstRemoteFrameForStreamToken(self, unsignedIntegerValue2);
    }

    if ([v5 localInterfaceType] && objc_msgSend(v5, "remoteInterfaceType"))
    {
      -[VCRemoteVideoManager dispatchedConnectionDidChangeWithLocalInterfaceType:remoteInterfaceType:streamToken:](self, "dispatchedConnectionDidChangeWithLocalInterfaceType:remoteInterfaceType:streamToken:", [v5 localInterfaceType], objc_msgSend(v5, "remoteInterfaceType"), unsignedIntegerValue2);
    }

    if ([v5 sensitivityAnalysisData])
    {
      _VCRemoteVideoManager_DispatchedDidDetectSensitiveContentWithAnalysis(self, unsignedIntegerValue2, [v5 sensitivityAnalysisData]);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCRemoteVideoManager dispatchedNotifyCachedStateForStreamToken:];
    }
  }
}

- (void)registerBlocksForService
{
  v9[5] = *MEMORY[0x1E69E9840];
  v3 = +[VCRemoteVideoManager allowablePublicAPINames];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__VCRemoteVideoManager_registerBlocksForService__block_invoke;
  v9[3] = &unk_1E85F5100;
  v9[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v4 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_179;
  v8[3] = &unk_1E85F5100;
  v8[4] = v4;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_2;
  v7[3] = &unk_1E85F5100;
  v7[4] = v4;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_3;
  v6[3] = &unk_1E85F5100;
  v6[4] = v4;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
}

uint64_t __48__VCRemoteVideoManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v8 = [v7 unsignedIntValue];
  v9 = [a2 objectForKeyedSubscript:@"USERXPCARGUMENTS"];
  if ([*(*(a1 + 32) + 8) objectForKeyedSubscript:v7])
  {
    if (v9)
    {
      QueueForStreamToken = _VCRemoteVideoManager_GetQueueForStreamToken(*(a1 + 32), v8, 0);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v11;
          v27 = 2080;
          v28 = "[VCRemoteVideoManager registerBlocksForService]_block_invoke";
          v29 = 1024;
          v30 = 772;
          v31 = 2048;
          v32 = v8;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting EndpointID for streamToken=%ld", buf, 0x26u);
        }
      }

      [QueueForStreamToken setEndpointID:v9];
      v13 = objc_alloc(MEMORY[0x1E695DF20]);
      v14 = [v13 initWithObjectsAndKeys:{v7, @"CONTEXT", MEMORY[0x1E695E118], @"vcRemoteVideoInitialized", 0, v22, v23}];
    }

    else
    {
      v24[0] = [&unk_1F579A3C8 stringValue];
      v25[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "slotForStreamToken:videoMode:", v8, 0)}];
      v24[1] = [&unk_1F579A3E0 stringValue];
      v25[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "slotForStreamToken:videoMode:", v8, 1)}];
      v24[2] = [&unk_1F579A3F8 stringValue];
      v25[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "slotForStreamToken:videoMode:", v8, 2)}];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      v14 = [v16 initWithObjectsAndKeys:{v7, @"CONTEXT", v15, @"vcRemoteVideoSlotsForModes", MEMORY[0x1E695E118], @"vcRemoteVideoInitialized", 0}];
    }

    v6 = v14;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v17;
        v27 = 2080;
        v28 = "[VCRemoteVideoManager registerBlocksForService]_block_invoke";
        v29 = 1024;
        v30 = 784;
        v31 = 2048;
        v32 = v8;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCRemoteVideoManager: new client initialized for streamToken=%ld", buf, 0x26u);
      }
    }
  }

  else
  {
    __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_cold_1(v8, a3, buf);
    v6 = *buf;
  }

  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v19;
      v27 = 2080;
      v28 = "[VCRemoteVideoManager registerBlocksForService]_block_invoke";
      v29 = 1024;
      v30 = 790;
      v31 = 1024;
      LODWORD(v32) = v8;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localPreviewStreamToken=%d", buf, 0x22u);
    }
  }

  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  VCVideoCaptureServer_UpdateRemoteScreenAttributes([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")], 0);
  return v6;
}

id __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_179(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [objc_msgSend(*(a1 + 32) "strong")];

  return v7;
}

uint64_t __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(*(a1 + 32) "strong")];
  }

  return 0;
}

uint64_t __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(*(a1 + 32) "strong")];
  }

  return 0;
}

uint64_t __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_4(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    v3 = [v4 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v5 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCRemoteVideoManager registerBlocksForService]_block_invoke_4";
      v13 = 1024;
      v14 = 840;
      v15 = 1024;
      v16 = [v5 unsignedIntValue];
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCRemoteVideoManager: Terminate connection for streamToken=%u", buf, 0x22u);
    }
  }

  return v3;
}

uint64_t __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_187(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [*(a1 + 32) dispatchedNotifyCachedStateForStreamToken:{objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceCallID"}];
  }

  return 0;
}

uint64_t ___VCRemoteVideoManager_DispatchedDidReceiveFirstRemoteFrameForStreamToken_block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"vcRemoteVideoDidReceiveRemoteFrame" arguments:0 toAllClientsWithContext:v3];
}

uint64_t ___VCRemoteVideoManager_DispatchedRemoteScreenAttributesDidChange_block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 sendMessageAsync:"vcRemoteVideoDidRemoteScreenAttributesChange" arguments:v3 toAllClientsWithContext:v4];
}

uint64_t ___VCRemoteVideoManager_DispatchedRemoteVideoAttributesDidChange_block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 sendMessageAsync:"vcRemoteVideoDidRemoteAttributesChange" arguments:v3 toAllClientsWithContext:v4];
}

void __77__VCRemoteVideoManager_newQueueForStreamToken_videoMode_imageQueueProtected___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCRemoteVideoManager newQueueForStreamToken:videoMode:imageQueueProtected:]_block_invoke";
  v8 = 1024;
  v9 = 183;
  v10 = 2048;
  v11 = v3;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d queuesForStreamToken exists for streamToken %ld", &v4, 0x26u);
}

- (void)contextIdForStreamTokenWithArguments:(void *)a1 error:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [a1 unsignedIntValue];
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  OUTLINED_FUNCTION_11_11(-2);
}

- (void)contextIdForStreamTokenWithArguments:error:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_11_11(-1);
}

- (void)setLayerBoundsForStreamTokenWithArguments:error:.cold.1()
{
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_2_21();
}

- (void)setLayerBoundsForStreamTokenWithArguments:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  HIWORD(v5) = v0;
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid CALayer for queue wiht streamToken=%ld", v2, v3, v4, v5);
}

- (void)setLayerBoundsForStreamTokenWithArguments:error:.cold.3()
{
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_2_21();
}

- (void)setLayerBoundsForStreamTokenWithArguments:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  HIWORD(v5) = v0;
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCRemoteVideoManager: video queue does not exist for streamToken=%ld", v2, v3, v4, v5);
}

- (void)setLayerBoundsForStreamTokenWithArguments:error:.cold.5()
{
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_2_21();
}

- (void)setTransformForRemoteVideoOrientationEnabledWithArguments:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v4 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCRemoteVideoManager: video queue does not exist for streamToken=%ld", v3, 0x26u);
    }
  }

  OUTLINED_FUNCTION_11_11(-2);
}

- (void)setTransformForRemoteVideoOrientationEnabledWithArguments:error:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_11_11(-1);
}

- (void)dispatchedNotifyCachedStateForStreamToken:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "[VCRemoteVideoManager dispatchedNotifyCachedStateForStreamToken:]";
  v4 = 1024;
  v5 = 752;
  v6 = 1024;
  v7 = 752;
  v8 = v0;
  v9 = "[VCRemoteVideoManager dispatchedNotifyCachedStateForStreamToken:]";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCRemoteVideoManager.m:%d: %s Error no VCRemoteVideoState for this stream token", v2, 0x2Cu);
}

void __48__VCRemoteVideoManager_registerBlocksForService__block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if (a2)
  {
LABEL_4:
    *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCRemoteVideoManager" code:-2 userInfo:0];
  }

LABEL_5:
  *a3 = 0;
}

@end