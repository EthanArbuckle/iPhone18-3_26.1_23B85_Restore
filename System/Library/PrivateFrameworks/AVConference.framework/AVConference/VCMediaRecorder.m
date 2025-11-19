@interface VCMediaRecorder
+ (BOOL)validateIncomingRequest:(id)a3;
+ (BOOL)validateNonzeroAudioRecordingLengthURL:(id)a3 error:(id *)a4;
+ (unint64_t)countForRequestType:(unsigned int)a3 requestMode:(unsigned __int8)a4;
+ (unint64_t)deviceFreeDiskSpace;
+ (unsigned)typeForRequest:(id)a3;
- (BOOL)dispatchedAssertAudioStackStartedIfNeededForRequest:(id)a3;
- (BOOL)dispatchedProcessClientRequest:(id)a3 error:(id *)a4;
- (BOOL)processClientRequest:(id)a3 error:(id *)a4;
- (BOOL)validateNumberOfRequestsWithError:(id *)a3;
- (VCMediaRecorder)initWithStreamToken:(unsigned int)a3 delegate:(id)a4 reportingAgent:(opaqueRTCReporting *)a5;
- (VideoAttributes)targetScreenAttributes;
- (id)dispatchedMediaRecorderDelegate;
- (id)dispatchedTransportDelegate;
- (id)endCompletionHandlerForRequest:(id)a3;
- (int)imageType;
- (int)videoCodec;
- (unsigned)capabilities;
- (void)addOrAmendRequest:(id)a3;
- (void)dealloc;
- (void)deregisterClient;
- (void)dispatchedCleanUpAllOutstandingRequests;
- (void)dispatchedProcessRequest:(id)a3;
- (void)dispatchedRemoveAsynchronousAudioAssertionIfNeeded;
- (void)dispatchedSetCapabilities:(unsigned int)a3;
- (void)handleInsufficientFreeSpaceWithRequest:(id)a3 delegate:(id)a4;
- (void)invalidate;
- (void)notifyFinishWithRequest:(id)a3 didSucceed:(BOOL)a4 fileSize:(int64_t)a5;
- (void)notifyLocalFinishWithRequest:(id)a3 didSucceed:(BOOL)a4 fileSize:(int64_t)a5;
- (void)notifyRemoteFinishWithRequest:(id)a3 didSucceed:(BOOL)a4 fileSize:(int64_t)a5;
- (void)printEndRecordingCheckpointWithMediaType:(unsigned __int8)a3;
- (void)processRemoteLivePhotoRequest:(id)a3;
- (void)processRemotePhotoRequest:(id)a3;
- (void)processRemoteRequest:(id)a3 withMediaType:(unsigned __int8)a4;
- (void)processRequest:(id)a3;
- (void)registerClient;
- (void)removeRequest:(id)a3;
- (void)reportingMediaRecorderLivePhotoWithRequest:(id)a3;
- (void)reportingMediaRecorderWithRequest:(id)a3 fileLength:(double)a4 fileSize:(unint64_t)a5;
- (void)setCapabilities:(unsigned int)a3;
- (void)setFrameRate:(float)a3;
- (void)setImageType:(int)a3;
- (void)setInitialRemoteScreenAttributes:(id)a3;
- (void)setMediaRecorderDelegate:(id)a3;
- (void)setTransportDelegate:(id)a3;
- (void)setUpReportingAgent;
- (void)setVideoCodec:(int)a3;
- (void)updateActiveStatus;
@end

@implementation VCMediaRecorder

- (VCMediaRecorder)initWithStreamToken:(unsigned int)a3 delegate:(id)a4 reportingAgent:(opaqueRTCReporting *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCMediaRecorder;
  v8 = [(VCObject *)&v13 init];
  if (v8)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v8->_stateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMediaRecorder.stateQueue", 0, CustomRootQueue);
    v8->_streamToken = a3;
    [(VCMediaRecorder *)v8 setTransportDelegate:a4];
    v10 = VCDispatchQueue_GetCustomRootQueue(37);
    v8->_delegateNotificationQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMediaRecorder.notificationQueue", 0, v10);
    v8->_mode = 0;
    v8->_requests = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8->_transactionIDToRequestMap = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8->_mediaRecorderHistory = [[VCMediaRecorderHistory alloc] initWithDelegateQueue:v8->_stateQueue];
    v8->_isActive = 0;
    v8->_currentTimestamp = 0;
    if (a5)
    {
      v11 = CFRetain(a5);
      v8->super._reportingAgent = v11;
      if (v11)
      {
LABEL_7:
        v8->_lastHealthPrintCallAbsoluteSeconds = NAN;
        return v8;
      }
    }

    else
    {
      v8->super._reportingAgent = 0;
    }

    [(VCMediaRecorder *)v8 setUpReportingAgent];
    goto LABEL_7;
  }

  return v8;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_transportDelegate, 0);
  delegateNotificationQueue = self->_delegateNotificationQueue;
  if (delegateNotificationQueue)
  {
    dispatch_release(delegateNotificationQueue);
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v5.receiver = self;
  v5.super_class = VCMediaRecorder;
  [(VCObject *)&v5 dealloc];
}

- (int)videoCodec
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 128;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__VCMediaRecorder_videoCodec__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__VCMediaRecorder_videoCodec__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 192) videoCodec];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setVideoCodec:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__VCMediaRecorder_setVideoCodec___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_sync(stateQueue, block);
}

- (int)imageType
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__VCMediaRecorder_imageType__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__VCMediaRecorder_imageType__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 192) imageType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setImageType:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__VCMediaRecorder_setImageType___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_sync(stateQueue, block);
}

- (VideoAttributes)targetScreenAttributes
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCMediaRecorder_targetScreenAttributes__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __41__VCMediaRecorder_targetScreenAttributes__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 232);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setInitialRemoteScreenAttributes:(id)a3
{
  if (![a3 orientation])
  {

    VCMediaRecorder_UpdateTargetScreenAttributes(self, a3);
  }
}

void __VCMediaRecorder_UpdateTargetScreenAttributes_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 232);
  if (v2 != v4)
  {
    if (v4)
    {
      CFRelease(v4);
      v2 = *(a1 + 32);
    }

    if (v2)
    {
      v5 = CFRetain(v2);
    }

    else
    {
      v5 = 0;
    }

    *(*(a1 + 40) + 232) = v5;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
  }

  v6 = *(v3 + 192);

  VCMediaRecorderHistory_UpdateTargetScreenAttributes(v6, v2);
}

- (void)addOrAmendRequest:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = [a3 objectForKeyedSubscript:@"vcMomentsTransactionID"];
  transactionIDToRequestMap = self->_transactionIDToRequestMap;

  [(NSMutableDictionary *)transactionIDToRequestMap setObject:a3 forKeyedSubscript:v5];
}

- (void)removeRequest:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = [a3 objectForKeyedSubscript:@"vcMomentsTransactionID"];
  transactionIDToRequestMap = self->_transactionIDToRequestMap;

  [(NSMutableDictionary *)transactionIDToRequestMap setObject:0 forKeyedSubscript:v5];
}

+ (BOOL)validateIncomingRequest:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (!+[VCHardwareSettings isMediaRecordingSupported])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      +[VCMediaRecorder validateIncomingRequest:];
    }

    goto LABEL_15;
  }

  v4 = [VCMediaRecorder typeForRequest:a3];
  v5 = [a3 objectForKeyedSubscript:@"vcMomentsRequestMode"];
  if (!v5)
  {
    +[VCMediaRecorder validateIncomingRequest:];
    goto LABEL_39;
  }

  v6 = [v5 intValue];
  if (!v4)
  {
    +[VCMediaRecorder validateIncomingRequest:];
    goto LABEL_39;
  }

  v7 = v6;
  v8 = [a3 count];
  if (v8 > [VCMediaRecorder countForRequestType:v4 requestMode:v7])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      v13 = 136316418;
      v14 = v10;
      v15 = 2080;
      v16 = "+[VCMediaRecorder validateIncomingRequest:]";
      v17 = 1024;
      v18 = 257;
      v19 = 2048;
      v20 = [a3 count];
      v21 = 1024;
      v22 = v4;
      v23 = 1024;
      v24 = v7;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid count=%lu requestType=%u requestMode=%hhu", &v13, 0x32u);
    }

LABEL_15:
    LOBYTE(v9) = 0;
    return v9;
  }

  if (![a3 objectForKeyedSubscript:@"vcMomentsTransactionID"])
  {
    +[VCMediaRecorder validateIncomingRequest:];
    goto LABEL_39;
  }

  if (![a3 objectForKeyedSubscript:@"vcMomentsRequestState"])
  {
    +[VCMediaRecorder validateIncomingRequest:];
    goto LABEL_39;
  }

  if (![a3 objectForKeyedSubscript:@"vcMomentsRequestTimestamp"])
  {
    +[VCMediaRecorder validateIncomingRequest:];
    goto LABEL_39;
  }

  if (![a3 objectForKeyedSubscript:@"vcMomentsMediaType"])
  {
    +[VCMediaRecorder validateIncomingRequest:];
    goto LABEL_39;
  }

  if (v4 == 1)
  {
    if (![a3 objectForKeyedSubscript:@"vcMomentsInitiatorID"])
    {
      +[VCMediaRecorder validateIncomingRequest:];
LABEL_39:
      LOBYTE(v9) = v13;
      return v9;
    }

LABEL_24:
    LOBYTE(v9) = 1;
    return v9;
  }

  if ((v4 & 0xFFFFFFFE) == 4)
  {
    if (v7 != 1 && ![a3 objectForKeyedSubscript:@"vcMomentsRequesteeID"])
    {
      +[VCMediaRecorder validateIncomingRequest:];
      goto LABEL_39;
    }

    if (![a3 objectForKeyedSubscript:@"vcMomentsRequesterID"])
    {
      +[VCMediaRecorder validateIncomingRequest:];
      goto LABEL_39;
    }
  }

  LOBYTE(v9) = 1;
  if (v4 <= 7 && ((1 << v4) & 0xE8) != 0)
  {
    if (![a3 objectForKeyedSubscript:@"vcMomentsFileSize"])
    {
      +[VCMediaRecorder validateIncomingRequest:];
      goto LABEL_39;
    }

    if (![a3 objectForKeyedSubscript:@"vcMomentsRequestDidSucceed"])
    {
      +[VCMediaRecorder validateIncomingRequest:];
      goto LABEL_39;
    }

    goto LABEL_24;
  }

  return v9;
}

- (void)processRequest:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__VCMediaRecorder_processRequest___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(stateQueue, block);
}

- (void)dispatchedProcessRequest:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  MEMORY[0x1E128B590](&dword_1DB56E000, "[VCMediaRecorder dispatchedProcessRequest:]");
  if ([VCMediaRecorder validateIncomingRequest:a3])
  {
    self->_mode = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestMode", "intValue"}];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a3];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(v5, "objectForKeyedSubscript:", @"vcMomentsTransactionID"}];
    if (v6)
    {
      v7 = v6;
      [v5 setObject:objc_msgSend(v6 forKeyedSubscript:{"UUIDString"), @"vcMomentsTransactionID"}];

      if (([(NSMutableSet *)self->_requests containsObject:v5]& 1) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315906;
            v14 = v8;
            v15 = 2080;
            v16 = "[VCMediaRecorder dispatchedProcessRequest:]";
            v17 = 1024;
            v18 = 323;
            v19 = 2112;
            v20 = [v5 objectForKeyedSubscript:@"vcMomentsTransactionID"];
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaRecorder request %@ is processed, ignoring the duplicate", &v13, 0x26u);
          }
        }

        return;
      }

      [(NSMutableSet *)self->_requests addObject:v5];
      v12 = [objc_msgSend(v5 objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}];
      if (v12 > 3u)
      {
        if (v12 - 4 >= 2)
        {
          return;
        }

LABEL_22:

        [(VCMediaRecorder *)self processRemoteRequest:v5 withMediaType:v12];
        return;
      }

      if (v12 != 1)
      {
        if (v12 != 2)
        {
          if (v12 == 3)
          {

            [(VCMediaRecorder *)self processRemoteLivePhotoRequest:v5];
          }

          return;
        }

        goto LABEL_22;
      }

      [(VCMediaRecorder *)self processRemotePhotoRequest:v5];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCMediaRecorder *)v10 dispatchedProcessRequest:v5, v11];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaRecorder dispatchedProcessRequest:];
    }
  }
}

- (unsigned)capabilities
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__VCMediaRecorder_capabilities__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCapabilities:(unsigned int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VCMediaRecorder_setCapabilities___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, block);
}

- (void)dispatchedSetCapabilities:(unsigned int)a3
{
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  capabilities = self->_capabilities;
  if (+[VCMediaRecorder deviceHasSufficientFreeSpace])
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  self->_capabilities = v6;
  if (v6 != capabilities)
  {
    v7 = [(VCMediaRecorder *)self dispatchedMediaRecorderDelegate];
    streamToken = self->_streamToken;
    v9 = self->_capabilities;
    delegateNotificationQueue = self->_delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__VCMediaRecorder_dispatchedSetCapabilities___block_invoke;
    block[3] = &unk_1E85F3908;
    block[4] = v7;
    block[5] = streamToken;
    v15 = v9;
    dispatch_async(delegateNotificationQueue, block);
  }

  [(VCMediaRecorder *)self updateActiveStatus];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_capabilities;
      *buf = 136315906;
      v17 = v11;
      v18 = 2080;
      v19 = "[VCMediaRecorder dispatchedSetCapabilities:]";
      v20 = 1024;
      v21 = 376;
      v22 = 1024;
      v23 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaRecorder set capabilities %d", buf, 0x22u);
    }
  }
}

- (void)setFrameRate:(float)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__VCMediaRecorder_setFrameRate___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, block);
}

- (id)dispatchedTransportDelegate
{
  dispatch_assert_queue_V2(self->_stateQueue);

  return objc_loadWeak(&self->_transportDelegate);
}

- (void)setTransportDelegate:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCMediaRecorder_setTransportDelegate___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(stateQueue, block);
}

- (id)dispatchedMediaRecorderDelegate
{
  dispatch_assert_queue_V2(self->_stateQueue);

  return objc_loadWeak(&self->_delegate);
}

- (void)setMediaRecorderDelegate:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCMediaRecorder_setMediaRecorderDelegate___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(stateQueue, block);
}

void __44__VCMediaRecorder_setMediaRecorderDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 168), *(a1 + 40));
  if (!*(a1 + 40))
  {
    v2 = *(*(a1 + 32) + 216);

    dispatch_sync(v2, &__block_literal_global_33);
  }
}

- (BOOL)processClientRequest:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCMediaRecorder_processClientRequest_error___block_invoke;
  block[3] = &unk_1E85F61F8;
  block[4] = self;
  block[5] = a3;
  block[6] = &v8;
  block[7] = a4;
  dispatch_sync(stateQueue, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __46__VCMediaRecorder_processClientRequest_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedProcessClientRequest:*(a1 + 40) error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)dispatchedProcessClientRequest:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  self->_mode = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestMode", "intValue"}];
  v6 = [a3 mutableCopy];
  [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_currentTimestamp), @"vcMomentsRequestTimestamp"}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      mode = self->_mode;
      currentTimestamp = self->_currentTimestamp;
      *buf = 136316418;
      v17 = v7;
      v18 = 2080;
      v19 = "[VCMediaRecorder dispatchedProcessClientRequest:error:]";
      v20 = 1024;
      v21 = 430;
      v22 = 1024;
      v23 = mode;
      v24 = 1024;
      v25 = currentTimestamp;
      v26 = 2112;
      v27 = a3;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mode=%d, timestamp=%d, request=%@", buf, 0x32u);
    }
  }

  v11 = self->_mode;
  if (v11 == 1)
  {
    [(VCMediaRecorder *)self dispatchedProcessRequest:v6];
  }

  else if (v11 == 2)
  {
    v12 = [(VCMediaRecorder *)self dispatchedTransportDelegate];
    delegateNotificationQueue = self->_delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__VCMediaRecorder_dispatchedProcessClientRequest_error___block_invoke;
    block[3] = &unk_1E85F3E30;
    block[4] = v12;
    block[5] = self;
    block[6] = a3;
    dispatch_async(delegateNotificationQueue, block);
  }

  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}] == 3)
  {
    -[VCMediaRecorderHistory cancelRequestWithTransactionID:](self->_mediaRecorderHistory, "cancelRequestWithTransactionID:", [a3 objectForKeyedSubscript:@"vcMomentsTransactionID"]);
  }

  return 0;
}

uint64_t __56__VCMediaRecorder_dispatchedProcessClientRequest_error___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [v3 objectForKeyedSubscript:@"vcMomentsRequesteeID"];

  return [v1 mediaRecorder:v2 shouldProcessRequest:v3 recipientID:v4];
}

- (void)printEndRecordingCheckpointWithMediaType:(unsigned __int8)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = VCMediaRecorderUtil_CopyDescriptionForMediaType(*MEMORY[0x1E695E480], a3);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaRecorder-endRecording");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCMediaRecorder printEndRecordingCheckpointWithMediaType:]";
      v11 = 1024;
      v12 = 459;
      v13 = 2112;
      v14 = self;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCMediaRecorder-endRecording instance=%@, mediaType=%@", &v7, 0x30u);
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)dispatchedCleanUpAllOutstandingRequests
{
  v33 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (self->_currentActiveRequestsCount)
  {
    self->_lastRequest = 1;
    currentTimestamp = self->_currentTimestamp;
    transactionIDToRequestMap = self->_transactionIDToRequestMap;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__VCMediaRecorder_dispatchedCleanUpAllOutstandingRequests__block_invoke_2;
    v18[3] = &unk_1E85F6220;
    v18[4] = self;
    v19 = currentTimestamp;
    [(NSMutableDictionary *)transactionIDToRequestMap enumerateKeysAndObjectsUsingBlock:v18];
    dispatch_assert_queue_V2(self->_stateQueue);
    VCMediaRecorderHistory_StopProcessingAllRequests(self->_mediaRecorderHistory);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    streamToken = self->_streamToken;
    *buf = 136315906;
    v22 = v6;
    v23 = 2080;
    v24 = "[VCMediaRecorder dispatchedCleanUpAllOutstandingRequests]";
    v25 = 1024;
    v26 = 472;
    v27 = 1024;
    LODWORD(v28) = streamToken;
    v9 = " [%s] %s:%d No active requests for token=%d";
    v10 = v7;
    v11 = 34;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCMediaRecorder *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v14 = self->_streamToken;
    *buf = 136316418;
    v22 = v12;
    v23 = 2080;
    v24 = "[VCMediaRecorder dispatchedCleanUpAllOutstandingRequests]";
    v25 = 1024;
    v26 = 472;
    v27 = 2112;
    v28 = v5;
    v29 = 2048;
    v30 = self;
    v31 = 1024;
    v32 = v14;
    v9 = " [%s] %s:%d %@(%p) No active requests for token=%d";
    v10 = v13;
    v11 = 54;
  }

  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_14:
  v15 = [(VCMediaRecorder *)self dispatchedMediaRecorderDelegate];
  v16 = self->_streamToken;
  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCMediaRecorder_dispatchedCleanUpAllOutstandingRequests__block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = v15;
  block[5] = v16;
  dispatch_async(delegateNotificationQueue, block);
}

void __58__VCMediaRecorder_dispatchedCleanUpAllOutstandingRequests__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}];
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}];
  if (v6 == 1)
  {
    v8 = v7;
    v9 = [a3 mutableCopy];
    [v9 setObject:&unk_1F5799750 forKeyedSubscript:@"vcMomentsRequestState"];
    [*(a1 + 32) printEndRecordingCheckpointWithMediaType:v8];
    [*(*(a1 + 32) + 192) endRecording:a2 timestamp:*(a1 + 40) completionHandler:{objc_msgSend(*(a1 + 32), "endCompletionHandlerForRequest:", v9)}];
  }
}

- (void)dispatchedRemoveAsynchronousAudioAssertionIfNeeded
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  currentActiveRequestsCount = self->_currentActiveRequestsCount;
  v4 = [(VCMediaRecorder *)self dispatchedTransportDelegate];
  streamToken = self->_streamToken;
  v16[0] = 0xAAAAAAAAAAAAAA01;
  v16[1] = &streamToken;
  v15 = 0;
  if (currentActiveRequestsCount)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    return;
  }

  v6 = v4;
  if ([(VCMediaRecorder *)v4 actionDidFinishForContext:v16 withError:&v15])
  {
    if (!v15)
    {
      return;
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136316418;
    v19 = v8;
    v20 = 2080;
    v21 = "[VCMediaRecorder dispatchedRemoveAsynchronousAudioAssertionIfNeeded]";
    v22 = 1024;
    v23 = 519;
    v24 = 2048;
    v25 = streamToken;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v15;
    v10 = " [%s] %s:%d Failed to remove assertion on audio for token=%ld on transportDelegate=%@ with error=%@";
    v11 = v9;
    v12 = 58;
LABEL_18:
    _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCMediaRecorder *)self performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316930;
      v19 = v13;
      v20 = 2080;
      v21 = "[VCMediaRecorder dispatchedRemoveAsynchronousAudioAssertionIfNeeded]";
      v22 = 1024;
      v23 = 519;
      v24 = 2112;
      v25 = v7;
      v26 = 2048;
      v27 = self;
      v28 = 2048;
      v29 = streamToken;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v15;
      v10 = " [%s] %s:%d %@(%p) Failed to remove assertion on audio for token=%ld on transportDelegate=%@ with error=%@";
      v11 = v14;
      v12 = 78;
      goto LABEL_18;
    }
  }
}

- (id)endCompletionHandlerForRequest:(id)a3
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__VCMediaRecorder_endCompletionHandlerForRequest___block_invoke;
  v4[3] = &unk_1E85F6270;
  v4[4] = self;
  v4[5] = a3;
  return [v4 copy];
}

uint64_t __50__VCMediaRecorder_endCompletionHandlerForRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a4;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 208));
  v6 = [*(a1 + 32) dispatchedMediaRecorderDelegate];
  v7 = *(a1 + 32);
  v8 = *(v7 + 184);
  v9 = *(v7 + 256) == 1 && (*(v7 + 224))-- == 1;
  v10 = [*(a1 + 40) objectForKeyedSubscript:@"vcMediaRecorderDirectoryURL"];
  v11 = [VCFileUtil sizeOfFile:a3];
  [VCFileUtil contentLengthOfFile:a3];
  v13 = v12;
  if (![VCMediaRecorder validateNonzeroAudioRecordingLengthURL:a3 error:&v21]&& VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v23 = v14;
      v24 = 2080;
      v25 = "[VCMediaRecorder endCompletionHandlerForRequest:]_block_invoke";
      v26 = 1024;
      v27 = 533;
      v28 = 2112;
      v29 = a3;
      v30 = 2112;
      v31 = v21;
      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed audio recording length validation movieURL=%@, error=%@", buf, 0x30u);
    }
  }

  [*(a1 + 32) reportingMediaRecorderWithRequest:*(a1 + 40) fileLength:v11 fileSize:v13];
  v16 = *(*(a1 + 32) + 216);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCMediaRecorder_endCompletionHandlerForRequest___block_invoke_51;
  block[3] = &unk_1E85F6248;
  v19 = v10 == 0;
  block[4] = a3;
  block[5] = v6;
  block[6] = *(a1 + 40);
  block[7] = v21;
  block[8] = v8;
  v20 = v9;
  dispatch_async(v16, block);
  [*(a1 + 32) notifyFinishWithRequest:*(a1 + 40) didSucceed:v21 == 0 fileSize:v11];
  [*(a1 + 32) removeRequest:*(a1 + 40)];
  return [*(a1 + 32) dispatchedRemoveAsynchronousAudioAssertionIfNeeded];
}

uint64_t __50__VCMediaRecorder_endCompletionHandlerForRequest___block_invoke_51(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = 0;
  v5[1] = v3;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v6) = *(a1 + 72);
  result = [v2 streamToken:*(a1 + 64) didEndProcessingRequest:*(a1 + 48) urlContext:v5 error:*(a1 + 56)];
  if (*(a1 + 73) == 1)
  {
    return [*(a1 + 40) streamTokenDidCleanupAllRequests:*(a1 + 64)];
  }

  return result;
}

void __VCMediaRecorder_StopProcessingAllRequests_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 208));
  v2 = *(v1 + 192);

  VCMediaRecorderHistory_StopProcessingAllRequests(v2);
}

void __VCMediaRecorder_ClearHistoryBuffer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 208));
  ++*(v1 + 320);
  *(v1 + 280) = *(v1 + 272);
  *(v1 + 296) = *(v1 + 288);
  *(v1 + 312) = *(v1 + 304);
  v2 = *(v1 + 192);

  VCMediaRecorderHistory_ClearHistoryBuffer(v2);
}

- (void)registerClient
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCMediaRecorder registerClient]";
      v11 = 1024;
      v12 = 593;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__VCMediaRecorder_registerClient__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)deregisterClient
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCMediaRecorder deregisterClient]";
      v9 = 1024;
      v10 = 602;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v5, 0x1Cu);
    }
  }

  self->_isClientRegistered = 0;
  [(VCMediaRecorder *)self updateActiveStatus];
}

- (void)invalidate
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__VCMediaRecorder_invalidate__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(stateQueue, v3);
}

uint64_t __29__VCMediaRecorder_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) deregisterClient];
  v2 = *(a1 + 32);

  return [v2 dispatchedCleanUpAllOutstandingRequests];
}

- (void)updateActiveStatus
{
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  isActive = self->_isActive;
  if (self->_isClientRegistered && [(VCMediaRecorder *)self isHistorySupported])
  {
    capabilities = self->_capabilities;
    if (capabilities)
    {
      VCMediaRecorderHistory_UpdateTargetScreenAttributes(self->_mediaRecorderHistory, self->_targetScreenAttributes);
      LOBYTE(capabilities) = 1;
    }
  }

  else
  {
    LOBYTE(capabilities) = 0;
  }

  self->_isActive = capabilities;
  if (self->_isActive != isActive)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = self->_isActive;
          v15 = 136315906;
          v16 = v6;
          v17 = 2080;
          v18 = "[VCMediaRecorder updateActiveStatus]";
          v19 = 1024;
          v20 = 630;
          v21 = 1024;
          LODWORD(v22) = v8;
          v9 = " [%s] %s:%d isActive=%{BOOL}d";
          v10 = v7;
          v11 = 34;
LABEL_17:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCMediaRecorder *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = self->_isActive;
          v15 = 136316418;
          v16 = v12;
          v17 = 2080;
          v18 = "[VCMediaRecorder updateActiveStatus]";
          v19 = 1024;
          v20 = 630;
          v21 = 2112;
          v22 = v5;
          v23 = 2048;
          v24 = self;
          v25 = 1024;
          v26 = v14;
          v9 = " [%s] %s:%d %@(%p) isActive=%{BOOL}d";
          v10 = v13;
          v11 = 54;
          goto LABEL_17;
        }
      }
    }
  }
}

- (void)setUpReportingAgent
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCMediaRecorder *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316162;
    v13 = v9;
    LOWORD(v14) = 2080;
    *(&v14 + 2) = "[VCMediaRecorder setUpReportingAgent]";
    WORD5(v14) = 1024;
    HIDWORD(v14) = 635;
    LOWORD(v15[0]) = 2112;
    *(v15 + 2) = v3;
    WORD5(v15[0]) = 2048;
    *(v15 + 12) = self;
    v6 = " [%s] %s:%d %@(%p) Register Reporting Agent";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = v4;
      LOWORD(v14) = 2080;
      *(&v14 + 2) = "[VCMediaRecorder setUpReportingAgent]";
      WORD5(v14) = 1024;
      HIDWORD(v14) = 635;
      v6 = " [%s] %s:%d Register Reporting Agent";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  *buf = VCUniqueIDGenerator_GenerateID();
  *&v14 = 0;
  v13 = 0;
  *(&v14 + 1) = 0x700000000;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  Agent = reportingCreateAgent();
  [(VCObject *)self setReportingAgent:Agent];
  if (Agent)
  {
    CFRelease(Agent);
  }

  [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  [(VCObject *)self reportingAgent];
  reportingSetUserInfo();
}

void __38__VCMediaRecorder_setUpReportingAgent__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (![a2 count])
  {
    [*(a1 + 32) strong];
    v3 = objc_opt_class();
    if (v3 == [*(a1 + 32) strong])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __38__VCMediaRecorder_setUpReportingAgent__block_invoke_cold_1();
        }
      }
    }

    else
    {
      [*(a1 + 32) strong];
      if (objc_opt_respondsToSelector())
      {
        v4 = [objc_msgSend(*(a1 + 32) "strong")];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v7 = [*(a1 + 32) strong];
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "[VCMediaRecorder setUpReportingAgent]_block_invoke";
          v12 = 1024;
          v13 = 647;
          v14 = 2112;
          v15 = v4;
          v16 = 2048;
          v17 = v7;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Reporting not available (no backends)", &v8, 0x30u);
        }
      }
    }
  }
}

- (void)reportingMediaRecorderLivePhotoWithRequest:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}];
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}];
  v6 = [a3 objectForKeyedSubscript:@"vcMomentsRequesteeID"];
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsFileSize", "longLongValue"}];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestDidSucceed", "BOOLValue"}];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v4), @"VCMRState"}];
  [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v5), @"VCMRMediaType"}];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &stru_1F570E008;
  }

  [v10 setObject:v9 forKeyedSubscript:@"VCMRRecipientUUID"];
  [v10 setObject:&unk_1F5799768 forKeyedSubscript:@"VCMRMode"];
  if ([a3 objectForKeyedSubscript:@"vcMomentsFileSize"])
  {
    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v7), @"VCMRFileSize"}];
  }

  if ([a3 objectForKeyedSubscript:@"vcMomentsRequestDidSucceed"])
  {
    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v8), @"VCMRFinishDidSucceed"}];
  }

  reportingMediaRecorderEvents();
}

- (void)reportingMediaRecorderWithRequest:(id)a3 fileLength:(double)a4 fileSize:(unint64_t)a5
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}];
  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}];
  v10 = [a3 objectForKeyedSubscript:@"vcMomentsRequesteeID"];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v8), @"VCMRState"}];
  [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v9), @"VCMRMediaType"}];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_1F570E008;
  }

  [v15 setObject:v11 forKeyedSubscript:@"VCMRRecipientUUID"];
  [v15 setObject:&unk_1F5799780 forKeyedSubscript:@"VCMRMode"];
  if (v8 == 4)
  {
    v14 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestDidSucceed", "BOOLValue"}];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    v13 = @"VCMRFinishDidSucceed";
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_9;
    }

    [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", a5), @"VCMRFileSize"}];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v13 = @"VCMRFileLength";
  }

  [v15 setObject:v12 forKeyedSubscript:v13];
LABEL_9:
  reportingMediaRecorderEvents();
}

- (BOOL)dispatchedAssertAudioStackStartedIfNeededForRequest:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  v21 = 0;
  v5 = [(VCMediaRecorder *)self dispatchedTransportDelegate];
  streamToken = self->_streamToken;
  result = 1;
  v19[0] = 0xAAAAAAAAAAAAAA01;
  v19[1] = &streamToken;
  if (self->_currentActiveRequestsCount <= 0 && v5 != 0)
  {
    if ([(VCMediaRecorder *)v5 actionWillBeginForContext:v19 withError:&v21]&& !v21)
    {
      return 1;
    }

    v8 = [(VCMediaRecorder *)self dispatchedMediaRecorderDelegate];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_17;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136316162;
      v23 = v10;
      v24 = 2080;
      v25 = "[VCMediaRecorder dispatchedAssertAudioStackStartedIfNeededForRequest:]";
      v26 = 1024;
      v27 = 726;
      v28 = 2048;
      v29 = streamToken;
      v30 = 2112;
      v31 = v5;
      v12 = " [%s] %s:%d Failed to assert audio stack with token=%ld for delegate=%@";
      v13 = v11;
      v14 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCMediaRecorder *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_17;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136316674;
      v23 = v15;
      v24 = 2080;
      v25 = "[VCMediaRecorder dispatchedAssertAudioStackStartedIfNeededForRequest:]";
      v26 = 1024;
      v27 = 726;
      v28 = 2112;
      v29 = v9;
      v30 = 2048;
      v31 = self;
      v32 = 2048;
      v33 = streamToken;
      v34 = 2112;
      v35 = v5;
      v12 = " [%s] %s:%d %@(%p) Failed to assert audio stack with token=%ld for delegate=%@";
      v13 = v16;
      v14 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_17:
    delegateNotificationQueue = self->_delegateNotificationQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__VCMediaRecorder_dispatchedAssertAudioStackStartedIfNeededForRequest___block_invoke;
    v18[3] = &unk_1E85F4AB8;
    v18[4] = v8;
    v18[5] = a3;
    v18[6] = v21;
    v18[7] = streamToken;
    dispatch_async(delegateNotificationQueue, v18);
    return 0;
  }

  return result;
}

void __54__VCMediaRecorder_processRemoteRequest_withMediaType___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 208));
  if (!a2)
  {
    ++*(*(a1 + 32) + 224);
    [*(a1 + 32) addOrAmendRequest:*(a1 + 40)];
  }

  [*(a1 + 32) reportingMediaRecorderWithRequest:*(a1 + 40) fileLength:0 fileSize:0.0];
  v4 = *(*(a1 + 32) + 216);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCMediaRecorder_processRemoteRequest_withMediaType___block_invoke_2;
  block[3] = &unk_1E85F4AB8;
  v5 = *(a1 + 56);
  v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v8 = a2;
  v9 = v5;
  dispatch_async(v4, block);
}

uint64_t __54__VCMediaRecorder_processRemoteRequest_withMediaType___block_invoke_3(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"vcMomentsRequestDidSucceed", "BOOLValue"}];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return [v3 streamToken:v4 didFinishRequest:v5 didSucceed:v2];
}

- (void)processRemoteLivePhotoRequest:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  MEMORY[0x1E128B590](&dword_1DB56E000, "[VCMediaRecorder processRemoteLivePhotoRequest:]");
  streamToken = self->_streamToken;
  v6 = [(VCMediaRecorder *)self dispatchedMediaRecorderDelegate];
  v23 = 0;
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}];
  switch(v7)
  {
    case 4:
      [(VCMediaRecorder *)self reportingMediaRecorderLivePhotoWithRequest:a3];
      delegateNotificationQueue = self->_delegateNotificationQueue;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_2_87;
      v18[3] = &unk_1E85F50D8;
      v18[4] = a3;
      v18[5] = v6;
      v18[6] = streamToken;
      v15 = v18;
      goto LABEL_12;
    case 3:
      delegateNotificationQueue = self->_delegateNotificationQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_3;
      v17[3] = &unk_1E85F50D8;
      v17[5] = a3;
      v17[6] = streamToken;
      v17[4] = v6;
      v15 = v17;
LABEL_12:
      dispatch_async(delegateNotificationQueue, v15);
      return;
    case 1:
      if (+[VCMediaRecorder deviceHasSufficientFreeSpace])
      {
        v8 = self->_delegateNotificationQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke;
        block[3] = &unk_1E85F50D8;
        block[5] = a3;
        block[6] = streamToken;
        block[4] = v6;
        dispatch_async(v8, block);
        if ([(VCMediaRecorder *)self validateNumberOfRequestsWithError:&v23])
        {
          ++self->_currentActiveRequestsCount;
          v9 = [[VCMediaRecorderHistoryRequestContext alloc] initWithSerializedRequest:a3];
          MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaRecorder-startRecording");
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v25 = v10;
              v26 = 2080;
              v27 = "[VCMediaRecorder processRemoteLivePhotoRequest:]";
              v28 = 1024;
              v29 = 819;
              v30 = 2112;
              v31 = self;
              v32 = 2112;
              v33 = v9;
              _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCMediaRecorder-startRecording instance=%@, requestContext=%@", buf, 0x30u);
            }
          }

          v12 = [(VCMediaRecorderHistoryRequestContext *)v9 hasDirectoryURL];
          mediaRecorderHistory = self->_mediaRecorderHistory;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_85;
          v20[3] = &unk_1E85F62E8;
          v21 = !v12;
          v20[4] = self;
          v20[5] = v6;
          v20[6] = a3;
          v20[7] = streamToken;
          [(VCMediaRecorderHistory *)mediaRecorderHistory takeLivePhotoWithContext:v9 completionHandler:v20];
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCMediaRecorder processRemoteLivePhotoRequest:];
            }
          }

          v16 = self->_delegateNotificationQueue;
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_86;
          v19[3] = &unk_1E85F4AB8;
          v19[4] = v6;
          v19[5] = a3;
          v19[6] = v23;
          v19[7] = streamToken;
          dispatch_async(v16, v19);
          [(VCMediaRecorder *)self notifyFinishWithRequest:a3 didSucceed:0 fileSize:0];
        }
      }

      else
      {

        [(VCMediaRecorder *)self handleInsufficientFreeSpaceWithRequest:a3 delegate:v6];
      }

      break;
  }
}

uint64_t __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 208));
  --*(*(a1 + 32) + 224);
  v8 = *(a1 + 32);
  v9 = *(v8 + 256) == 1 && *(v8 + 224) == 0;
  if (a2)
  {
    v10 = a3 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v12 = [VCFileUtil sizeOfFile:a2];
    v13 = [VCFileUtil sizeOfFile:a3]+ v12;
    v8 = *(a1 + 32);
  }

  v14 = *(v8 + 216);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_2;
  v17[3] = &unk_1E85F62C0;
  v21 = v11;
  v17[4] = a2;
  v17[5] = a3;
  v22 = *(a1 + 64);
  v15 = *(a1 + 56);
  v18 = *(a1 + 40);
  v19 = a4;
  v20 = v15;
  v23 = v9;
  dispatch_async(v14, v17);
  return [*(a1 + 32) notifyFinishWithRequest:*(a1 + 48) didSucceed:a4 == 0 fileSize:v13];
}

uint64_t __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80) == 1)
  {
    v4 = 0xAAAAAAAAAAAAAAAALL;
    v3 = *(a1 + 32);
    LOBYTE(v4) = *(a1 + 81);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_2_cold_1();
      }
    }

    v3 = 0uLL;
    v4 = 0;
  }

  result = [*(a1 + 48) streamToken:*(a1 + 72) didEndProcessingRequest:*(a1 + 56) urlContext:&v3 error:*(a1 + 64)];
  if (*(a1 + 82) == 1)
  {
    return [*(a1 + 48) streamTokenDidCleanupAllRequests:{*(a1 + 72), v3, v4, v5}];
  }

  return result;
}

uint64_t __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_86(uint64_t a1)
{
  v2[3] = *MEMORY[0x1E69E9840];
  memset(v2, 0, 24);
  return [*(a1 + 32) streamToken:*(a1 + 56) didEndProcessingRequest:*(a1 + 40) urlContext:v2 error:*(a1 + 48)];
}

uint64_t __49__VCMediaRecorder_processRemoteLivePhotoRequest___block_invoke_2_87(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"vcMomentsRequestDidSucceed", "BOOLValue"}];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return [v3 streamToken:v4 didFinishRequest:v5 didSucceed:v2];
}

- (void)processRemotePhotoRequest:(id)a3
{
  block[7] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  MEMORY[0x1E128B590](&dword_1DB56E000, "[VCMediaRecorder processRemotePhotoRequest:]");
  streamToken = self->_streamToken;
  v6 = [(VCMediaRecorder *)self dispatchedMediaRecorderDelegate];
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}];
  switch(v7)
  {
    case 4:
      delegateNotificationQueue = self->_delegateNotificationQueue;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __45__VCMediaRecorder_processRemotePhotoRequest___block_invoke_4;
      v15[3] = &unk_1E85F50D8;
      v15[4] = a3;
      v15[5] = v6;
      v15[6] = streamToken;
      v13 = v15;
      goto LABEL_8;
    case 3:
      delegateNotificationQueue = self->_delegateNotificationQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __45__VCMediaRecorder_processRemotePhotoRequest___block_invoke_5;
      v14[3] = &unk_1E85F50D8;
      v14[5] = a3;
      v14[6] = streamToken;
      v14[4] = v6;
      v13 = v14;
LABEL_8:
      dispatch_async(delegateNotificationQueue, v13);
      return;
    case 1:
      if (+[VCMediaRecorder deviceHasSufficientFreeSpace])
      {
        v8 = self->_delegateNotificationQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__VCMediaRecorder_processRemotePhotoRequest___block_invoke;
        block[3] = &unk_1E85F50D8;
        block[5] = a3;
        block[6] = streamToken;
        block[4] = v6;
        dispatch_async(v8, block);
        v9 = [[VCMediaRecorderHistoryRequestContext alloc] initWithSerializedRequest:a3];
        v10 = [(VCMediaRecorderHistoryRequestContext *)v9 hasDirectoryURL];
        mediaRecorderHistory = self->_mediaRecorderHistory;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __45__VCMediaRecorder_processRemotePhotoRequest___block_invoke_2;
        v16[3] = &unk_1E85F62E8;
        v17 = !v10;
        v16[4] = self;
        v16[5] = v6;
        v16[6] = a3;
        v16[7] = streamToken;
        [(VCMediaRecorderHistory *)mediaRecorderHistory takePhotoWithContext:v9 completionHandler:v16];
      }

      else
      {

        [(VCMediaRecorder *)self handleInsufficientFreeSpaceWithRequest:a3 delegate:v6];
      }

      break;
  }
}

uint64_t __45__VCMediaRecorder_processRemotePhotoRequest___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = [VCFileUtil sizeOfFile:a2];
  v8 = *(*(a1 + 32) + 216);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCMediaRecorder_processRemotePhotoRequest___block_invoke_3;
  block[3] = &unk_1E85F6310;
  block[4] = a2;
  v15 = *(a1 + 64);
  v9 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = a4;
  v14 = v9;
  dispatch_async(v8, block);
  return [*(a1 + 32) notifyFinishWithRequest:*(a1 + 48) didSucceed:a4 == 0 fileSize:v7];
}

uint64_t __45__VCMediaRecorder_processRemotePhotoRequest___block_invoke_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[1] = 0;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v1 = *(a1 + 40);
  v3[0] = *(a1 + 32);
  LOBYTE(v4) = *(a1 + 72);
  return [v1 streamToken:*(a1 + 64) didEndProcessingRequest:*(a1 + 48) urlContext:v3 error:*(a1 + 56)];
}

uint64_t __45__VCMediaRecorder_processRemotePhotoRequest___block_invoke_4(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"vcMomentsRequestDidSucceed", "BOOLValue"}];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return [v3 streamToken:v4 didFinishRequest:v5 didSucceed:v2];
}

- (void)notifyFinishWithRequest:(id)a3 didSucceed:(BOOL)a4 fileSize:(int64_t)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      mode = self->_mode;
      v13 = 136316418;
      v14 = v9;
      v15 = 2080;
      v16 = "[VCMediaRecorder notifyFinishWithRequest:didSucceed:fileSize:]";
      v17 = 1024;
      v18 = 933;
      v19 = 1024;
      v20 = mode;
      v21 = 1024;
      v22 = v6;
      v23 = 2048;
      v24 = a5;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mode=%d, didSucceed=%d, fileSize=%ld", &v13, 0x32u);
    }
  }

  v12 = self->_mode;
  if (v12 == 1)
  {
    [(VCMediaRecorder *)self notifyLocalFinishWithRequest:a3 didSucceed:v6 fileSize:a5];
  }

  else if (v12 == 2)
  {
    [(VCMediaRecorder *)self notifyRemoteFinishWithRequest:a3 didSucceed:v6 fileSize:a5];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaRecorder notifyFinishWithRequest:didSucceed:fileSize:];
    }
  }
}

- (void)notifyRemoteFinishWithRequest:(id)a3 didSucceed:(BOOL)a4 fileSize:(int64_t)a5
{
  v6 = a4;
  v12[7] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  v9 = [a3 mutableCopy];
  [v9 setObject:&unk_1F5799798 forKeyedSubscript:@"vcMomentsRequestState"];
  [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v6), @"vcMomentsRequestDidSucceed"}];
  [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLong:", a5), @"vcMomentsFileSize"}];
  v10 = [(VCMediaRecorder *)self dispatchedTransportDelegate];
  delegateNotificationQueue = self->_delegateNotificationQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__VCMediaRecorder_notifyRemoteFinishWithRequest_didSucceed_fileSize___block_invoke;
  v12[3] = &unk_1E85F3E30;
  v12[4] = v10;
  v12[5] = self;
  v12[6] = v9;
  dispatch_async(delegateNotificationQueue, v12);
}

uint64_t __69__VCMediaRecorder_notifyRemoteFinishWithRequest_didSucceed_fileSize___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [v3 objectForKeyedSubscript:@"vcMomentsRequesterID"];

  return [v1 mediaRecorder:v2 shouldProcessRequest:v3 recipientID:v4];
}

- (void)notifyLocalFinishWithRequest:(id)a3 didSucceed:(BOOL)a4 fileSize:(int64_t)a5
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v9 = [a3 mutableCopy];
  [v9 setObject:&unk_1F5799798 forKeyedSubscript:@"vcMomentsRequestState"];
  [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v6), @"vcMomentsRequestDidSucceed"}];
  [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLong:", a5), @"vcMomentsFileSize"}];
  [(VCMediaRecorder *)self dispatchedProcessRequest:v9];
}

- (BOOL)validateNumberOfRequestsWithError:(id *)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  currentActiveRequestsCount = self->_currentActiveRequestsCount;
  if (a3 && currentActiveRequestsCount >= 100000)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderError" code:-1 userInfo:0];
  }

  return currentActiveRequestsCount < 100000;
}

- (void)handleInsufficientFreeSpaceWithRequest:(id)a3 delegate:(id)a4
{
  block[8] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  [(VCMediaRecorder *)self notifyFinishWithRequest:a3 didSucceed:0 fileSize:0];
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderError" code:-2 userInfo:0];
  streamToken = self->_streamToken;
  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VCMediaRecorder_handleInsufficientFreeSpaceWithRequest_delegate___block_invoke;
  block[3] = &unk_1E85F4AB8;
  block[4] = a4;
  block[5] = a3;
  block[6] = v7;
  block[7] = streamToken;
  dispatch_async(delegateNotificationQueue, block);
}

+ (BOOL)validateNonzeroAudioRecordingLengthURL:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      +[VCMediaRecorder validateNonzeroAudioRecordingLengthURL:error:];
    }

    goto LABEL_9;
  }

  [VCFileUtil audioContentLengthOfFile:?];
  LOBYTE(v6) = v5 > 0.0;
  if (a4 && v5 <= 0.0)
  {
    if (!*a4)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderError" code:-3 userInfo:0];
      LOBYTE(v6) = 0;
      *a4 = v7;
      return v6;
    }

LABEL_9:
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (unint64_t)deviceFreeDiskSpace
{
  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];

  return [v2 unsignedLongValue];
}

+ (unsigned)typeForRequest:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"vcMomentsRequestState"];
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      +[VCMediaRecorder typeForRequest:];
    }

    return 0;
  }

  v5 = [v4 intValue];
  v6 = [a3 objectForKeyedSubscript:@"vcMomentsRequesterID"];
  v7 = [a3 objectForKeyedSubscript:@"vcMomentsInitiatorID"];
  v8 = v5 == 4;
  if (v6)
  {
    v9 = 4;
    goto LABEL_12;
  }

  if (v5 != 4)
  {
    v8 = v7 == 0;
    v9 = 1;
LABEL_12:
    if (v8)
    {
      return v9 + 1;
    }

    else
    {
      return v9;
    }
  }

  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}] == 5)
  {
    return 6;
  }

  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}] == 4)
  {
    return 7;
  }

  return 3;
}

+ (unint64_t)countForRequestType:(unsigned int)a3 requestMode:(unsigned __int8)a4
{
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1u:
        return 6;
      case 2u:
        if (a4 == 1)
        {
          return 7;
        }

        else
        {
          return 5;
        }

      case 3u:
        return 7;
    }

    return -1;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      return 9;
    }

    if (a3 == 7)
    {
      return 8;
    }

    return -1;
  }

  if (a3 == 4)
  {
    v4 = 6;
  }

  else
  {
    v4 = 8;
  }

  if (a4 == 1)
  {
    return v4;
  }

  else
  {
    return v4 + 1;
  }
}

- (void)processRemoteRequest:(id)a3 withMediaType:(unsigned __int8)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  [a3 objectForKeyedSubscript:@"vcMomentsTransactionID"];
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}];
  [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestTimestamp", "intValue"}];
  streamToken = self->_streamToken;
  v9 = [(VCMediaRecorder *)self dispatchedMediaRecorderDelegate];
  switch(v7)
  {
    case 1:
      if (+[VCMediaRecorder deviceHasSufficientFreeSpace])
      {
        if ([OUTLINED_FUNCTION_27() dispatchedAssertAudioStackStartedIfNeededForRequest:?])
        {
          v10 = [[VCMediaRecorderHistoryRequestContext alloc] initWithSerializedRequest:a3];
          MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaRecorder-startRecording");
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v24 = v11;
              v25 = 2080;
              v26 = "[VCMediaRecorder processRemoteRequest:withMediaType:]";
              v27 = 1024;
              v28 = 751;
              v29 = 2112;
              v30 = self;
              v31 = 2112;
              v32 = v10;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCMediaRecorder-startRecording instance=%@, requestContext=%@", buf, 0x30u);
            }
          }

          mediaRecorderHistory = self->_mediaRecorderHistory;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __54__VCMediaRecorder_processRemoteRequest_withMediaType___block_invoke;
          v22[3] = &unk_1E85F6298;
          v22[4] = self;
          v22[5] = a3;
          v22[6] = v9;
          v22[7] = streamToken;
          [(VCMediaRecorderHistory *)mediaRecorderHistory startRecordingWithContext:v10 completionHandler:v22];
        }

        goto LABEL_11;
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_11_5();

      [v18 handleInsufficientFreeSpaceWithRequest:? delegate:?];
      return;
    case 2:
      [(VCMediaRecorder *)self printEndRecordingCheckpointWithMediaType:v4];
      [OUTLINED_FUNCTION_27() addOrAmendRequest:?];
      [OUTLINED_FUNCTION_27() endCompletionHandlerForRequest:?];
      OUTLINED_FUNCTION_11_5();

      [v16 endRecording:? timestamp:? completionHandler:?];
      return;
    case 3:
      delegateNotificationQueue = self->_delegateNotificationQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__VCMediaRecorder_processRemoteRequest_withMediaType___block_invoke_4;
      v20[3] = &unk_1E85F50D8;
      v20[5] = a3;
      v20[6] = streamToken;
      v20[4] = v9;
      v15 = v20;
      goto LABEL_10;
    case 4:
      [OUTLINED_FUNCTION_27() reportingMediaRecorderWithRequest:? fileLength:? fileSize:?];
      delegateNotificationQueue = self->_delegateNotificationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__VCMediaRecorder_processRemoteRequest_withMediaType___block_invoke_3;
      block[3] = &unk_1E85F50D8;
      block[4] = a3;
      block[5] = v9;
      block[6] = streamToken;
      v15 = block;
LABEL_10:
      dispatch_async(delegateNotificationQueue, v15);
      goto LABEL_11;
    default:
LABEL_11:
      OUTLINED_FUNCTION_11_5();
      return;
  }
}

+ (void)validateIncomingRequest:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Media recording is not supported on this platform!", v2, v3, v4, v5, v6);
}

+ (void)validateIncomingRequest:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d RequesteeID is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d RequestDidSucceed is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d FileSize is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d RequesterID is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d InitiatorID is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d MediaType is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d RequestTimestamp is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d RequestState is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d TransactionID is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid request!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)validateIncomingRequest:.cold.12()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d RequestMode is nil!", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)dispatchedProcessRequest:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)dispatchedProcessRequest:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  [a2 objectForKeyedSubscript:@"vcMomentsTransactionID"];
  v6 = 136315906;
  v7 = a1;
  v8 = 2080;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  v9 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCMediaRecorder request %@ invalid transactionID!", &v6, 0x26u);
}

void __38__VCMediaRecorder_setUpReportingAgent__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Reporting not available (no backends)", v2, v3, v4, v5, v6);
}

- (void)notifyFinishWithRequest:didSucceed:fileSize:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCMomentsRequestMode invalid", v2, v3, v4, v5, v6);
}

+ (void)validateNonzeroAudioRecordingLengthURL:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to get audio recording length for null movieURL", v2, v3, v4, v5, v6);
}

+ (void)typeForRequest:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end