@interface VCStreamInputManager
+ (id)allowablePublicAPINames;
+ (id)sharedInstance;
- (BOOL)clientProcessDiedWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5;
- (BOOL)getServerPidWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5;
- (BOOL)initializeStreamInputWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5;
- (BOOL)pushSampleBufferWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5;
- (BOOL)terminateStreamInputWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5;
- (VCStreamInputManager)init;
- (id)newStreamInputID;
- (id)streamInputWithID:(int64_t)a3;
- (void)dealloc;
- (void)deregisterBlocksForService;
- (void)didResumeStreamInput:(id)a3;
- (void)didStartStreamInput:(id)a3;
- (void)didStopStreamInput:(id)a3;
- (void)didSuspendStreamInput:(id)a3;
- (void)init;
- (void)registerBlocksForService;
- (void)registerService:(char *)a3 weakSelf:(id)a4 eventLogLevel:(int)a5 block:(id)a6;
@end

@implementation VCStreamInputManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[VCStreamInputManager sharedInstance];
  }

  return _vcStreamInputManager;
}

VCStreamInputManager *__38__VCStreamInputManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCStreamInputManager);
  _vcStreamInputManager = result;
  return result;
}

+ (id)allowablePublicAPINames
{
  if (allowablePublicAPINames_onceToken_0 != -1)
  {
    +[VCStreamInputManager allowablePublicAPINames];
  }

  return allowablePublicAPINames__allowableAPIs_0;
}

void __47__VCStreamInputManager_allowablePublicAPINames__block_invoke()
{
  if (!allowablePublicAPINames__allowableAPIs_0)
  {
    allowablePublicAPINames__allowableAPIs_0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"VCStreamInputInitialize", @"VCStreamInputTerminate", @"VCStreamInputPushSampleBuffer", @"VCStreamInputGetServerPid", @"VCStreamInputDidClientDie", 0}];
  }
}

- (VCStreamInputManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VCStreamInputManager;
  v2 = [(VCObject *)&v15 init];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [objc_msgSend(v3 stringWithFormat:@"%@.%@.connectionQueue", @"com.apple.VideoConference", NSStringFromClass(v4)), "UTF8String"];
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v7 = dispatch_queue_create_with_target_V2(v5, 0, CustomRootQueue);
  v2->_xpcQueue = v7;
  if (!v7)
  {
    [VCStreamInputManager init];
    goto LABEL_8;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = [objc_msgSend(v8 stringWithFormat:@"%@.%@.streamInputQueue", @"com.apple.VideoConference", NSStringFromClass(v9)), "UTF8String"];
  v11 = VCDispatchQueue_GetCustomRootQueue(37);
  v12 = dispatch_queue_create_with_target_V2(v10, 0, v11);
  v2->_streamInputQueue = v12;
  if (!v12)
  {
    [VCStreamInputManager init];
    goto LABEL_8;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_streamInputs = v13;
  if (!v13)
  {
    [VCStreamInputManager init];
LABEL_8:

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCStreamInputManager *)self deregisterBlocksForService];
  dispatch_release(self->_xpcQueue);
  dispatch_release(self->_streamInputQueue);

  v3.receiver = self;
  v3.super_class = VCStreamInputManager;
  [(VCObject *)&v3 dealloc];
}

- (id)newStreamInputID
{
  v3 = 0;
  v15 = *MEMORY[0x1E69E9840];
  do
  {
    do
    {

      v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:arc4random_uniform(0x7FFFFFFFu)];
    }

    while (![v3 integerValue]);
  }

  while ([(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:v3]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCStreamInputManager newStreamInputID]";
      v11 = 1024;
      v12 = 129;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamInputID=%@", &v7, 0x26u);
    }
  }

  return v3;
}

- (BOOL)initializeStreamInputWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = [a3 objectForKeyedSubscript:@"VCStreamInputID"];
  [(VCObject *)self lock];
  *a4 = 0;
  v10 = [a3 objectForKeyedSubscript:@"USERXPCARGUMENTS"];
  v11 = VCStreamInputUtil_DecodeFormatDescription(v10);
  if (!v11)
  {
    [(VCStreamInputManager *)v9 initializeStreamInputWithXPCArguments:&v39 result:buf error:?];
    v19 = v38;
    v9 = v39;
    v17 = *buf;
    goto LABEL_25;
  }

  value = xpc_dictionary_get_value(v10, "VCStreamInputRemoteQueue");
  if (!v9)
  {
    v9 = [(VCStreamInputManager *)self newStreamInputID];
  }

  if ([(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:v9])
  {
    v17 = -2143682519;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      v19 = 0;
    }

    else
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCStreamInputManager initializeStreamInputWithXPCArguments:v30 result:? error:?];
        v19 = 0;
        v17 = -2143682519;
      }

      else
      {
        v19 = 0;
      }
    }

    goto LABEL_25;
  }

  v37 = a5;
  MediaType = CMFormatDescriptionGetMediaType(v11);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v14;
      v41 = 2080;
      v42 = "[VCStreamInputManager initializeStreamInputWithXPCArguments:result:error:]";
      v43 = 1024;
      v44 = 158;
      v45 = 2112;
      v46 = AVCStreamInputID_ConvertToNSString([v9 integerValue]);
      v47 = 2080;
      v48 = FourccToCStr(MediaType);
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamInputID=%@ mediaType=%s", buf, 0x30u);
    }
  }

  if (MediaType > 1952606065)
  {
    if (MediaType != 1986618469 && MediaType != 1952606066)
    {
LABEL_20:
      v17 = -2143682558;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v27 = v11;
          v28 = AVCStreamInputID_ConvertToNSString([v9 integerValue]);
          v29 = FourccToCStr(MediaType);
          *buf = 136316162;
          *&buf[4] = v24;
          v41 = 2080;
          v42 = "[VCStreamInputManager initializeStreamInputWithXPCArguments:result:error:]";
          v43 = 1024;
          v44 = 168;
          v45 = 2112;
          v46 = v28;
          v11 = v27;
          v47 = 2080;
          v48 = v29;
          _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported streamInputID=%@ mediaType=%s", buf, 0x30u);
        }
      }

      goto LABEL_23;
    }

LABEL_17:
    v16 = [[VCStreamInputVideo alloc] initWithStreamInputID:v9 format:v11 delegate:self delegateQueue:self->_streamInputQueue remoteQueue:value];
    if (!v16)
    {
      v17 = -2143682558;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCStreamInputManager initializeStreamInputWithXPCArguments:v36 result:v9 error:?];
        }
      }

      goto LABEL_23;
    }

LABEL_18:
    v19 = v16;
    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v16, @"CONTEXT", v9, @"VCStreamInputID", 0}];
    if (v20)
    {
      v21 = v20;
      v22 = [(VCStreamInput *)v19 isStarted];
      [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v22), @"VCStreamInputDidStart"}];
      [(NSMutableDictionary *)self->_streamInputs setObject:v19 forKeyedSubscript:v9];
      *a4 = v21;
      [(VCObject *)self unlock];
      v23 = 1;
      goto LABEL_28;
    }

    v17 = -2143682558;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v33 = v11;
        v34 = AVCStreamInputID_ConvertToNSString([v9 integerValue]);
        v35 = FourccToCStr(MediaType);
        *buf = 136316162;
        *&buf[4] = v31;
        v41 = 2080;
        v42 = "[VCStreamInputManager initializeStreamInputWithXPCArguments:result:error:]";
        v43 = 1024;
        v44 = 172;
        v45 = 2112;
        v46 = v34;
        v11 = v33;
        v47 = 2080;
        v48 = v35;
        _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate the return dictionary for streamInputID=%@ mediaType=%s", buf, 0x30u);
      }
    }

    goto LABEL_24;
  }

  if (MediaType == 1835365473)
  {
    goto LABEL_17;
  }

  if (MediaType != 1936684398)
  {
    goto LABEL_20;
  }

  v16 = [[VCStreamInputAudio alloc] initWithStreamInputID:v9 format:v11 delegate:self delegateQueue:self->_streamInputQueue remoteQueue:value];
  if (v16)
  {
    goto LABEL_18;
  }

  v17 = -2143682558;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamInputManager initializeStreamInputWithXPCArguments:v18 result:v9 error:?];
    }
  }

LABEL_23:
  v19 = 0;
LABEL_24:
  a5 = v37;
LABEL_25:
  [(VCObject *)self unlock];
  if (a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCStreamInputManager" code:v17 userInfo:0];
  }

  [(VCStreamInputVideo *)v19 invalidate];
  v23 = 0;
LABEL_28:

  if (v11)
  {
    CFRelease(v11);
  }

  return v23;
}

- (BOOL)getServerPidWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if (![VCDefaults BOOLeanValueForKey:@"enableFigRemoteQueueForAVCStreamInputOutput" defaultValue:1])
  {
    [VCStreamInputManager getServerPidWithXPCArguments:&v13 result:v14 error:?];
    v10 = v12;
    v7 = v13;
    v9 = v14[0];
    goto LABEL_5;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:getpid()];
    if (v8)
    {
      v9 = v8;
      [v7 setObject:v8 forKeyedSubscript:@"VCStreamInputServerPID"];
      *a4 = v7;
      v10 = 1;
      v7 = 0;
      goto LABEL_5;
    }

    [VCStreamInputManager getServerPidWithXPCArguments:result:error:];
  }

  else
  {
    [VCStreamInputManager getServerPidWithXPCArguments:result:error:];
  }

  v10 = 0;
  v9 = 0;
  if (a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCStreamInputManager" code:-2143682558 userInfo:0];
  }

LABEL_5:

  return v10;
}

- (BOOL)terminateStreamInputWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v8 = [a3 objectForKeyedSubscript:@"CONTEXT"];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (isKindOfClass)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v18 = v12;
          v19 = 2080;
          v20 = "[VCStreamInputManager terminateStreamInputWithXPCArguments:result:error:]";
          v21 = 1024;
          v22 = 234;
          v23 = 2112;
          v24 = AVCStreamInputID_ConvertToNSString([objc_msgSend(v9 "streamInputID")]);
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Terminate streamInputID=%@", buf, 0x26u);
        }
      }

      [v9 invalidate];
      if (-[NSMutableDictionary objectForKeyedSubscript:](self->_streamInputs, "objectForKeyedSubscript:", [v9 streamInputID]))
      {
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamInputs, "setObject:forKeyedSubscript:", 0, [v9 streamInputID]);
        v14 = objc_alloc(MEMORY[0x1E695DF20]);
        *a4 = [v14 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
        return 1;
      }

      [VCStreamInputManager terminateStreamInputWithXPCArguments:result:error:];
    }

    else
    {
      [VCStreamInputManager terminateStreamInputWithXPCArguments:? result:? error:?];
    }
  }

  else
  {
    [VCStreamInputManager terminateStreamInputWithXPCArguments:result:error:];
  }

  if (!a5)
  {
    return 0;
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCStreamInputManager" code:-2143682559 userInfo:0];
  result = 0;
  *a5 = v16;
  return result;
}

- (BOOL)pushSampleBufferWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = VCStreamInputUtil_DecodeSampleBuffer([a3 objectForKeyedSubscript:{@"USERXPCARGUMENTS", a4, a5}]);
  if (v6)
  {
    v7 = [a3 objectForKeyedSubscript:@"CONTEXT"];
    if (v7)
    {
      v8 = v7;
      memset(&v12, 170, sizeof(v12));
      CMSampleBufferGetPresentationTimeStamp(&v12, v6);
      [objc_msgSend(v8 "streamInputID")];
      time = v12;
      CMTimeGetSeconds(&time);
      kdebug_trace();
      (v8)[22](v8, v6);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCStreamInputManager pushSampleBufferWithXPCArguments:v10 result:? error:?];
      }
    }

    CFRelease(v6);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamInputManager pushSampleBufferWithXPCArguments:v9 result:? error:?];
    }
  }

  return v6 != 0;
}

- (void)registerService:(char *)a3 weakSelf:(id)a4 eventLogLevel:(int)a5 block:(id)a6
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__VCStreamInputManager_registerService_weakSelf_eventLogLevel_block___block_invoke;
  v6[3] = &unk_1E85F5088;
  v6[4] = a4;
  v6[5] = a6;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

uint64_t __69__VCStreamInputManager_registerService_weakSelf_eventLogLevel_block___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  result = [*(a1 + 32) strong];
  if (result)
  {
    (*(*(a1 + 40) + 16))();
    return 0;
  }

  return result;
}

uint64_t __50__VCStreamInputManager_registerDidClientDieBlock___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v7[0] = 0;
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      [v4 clientProcessDiedWithXPCArguments:a2 result:v7 error:0];
      v5 = v7[0];
    }

    else
    {
      v5 = 0;
    }
  }

  return 0;
}

- (void)registerBlocksForService
{
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  [(VCStreamInputManager *)self registerService:"VCStreamInputInitialize" weakSelf:v3 block:&__block_literal_global_74];
  [(VCStreamInputManager *)self registerService:"VCStreamInputGetServerPid" weakSelf:v3 block:&__block_literal_global_77];
  [(VCStreamInputManager *)self registerService:"VCStreamInputTerminate" weakSelf:v3 block:&__block_literal_global_80];
  [(VCStreamInputManager *)self registerService:"VCStreamInputPushSampleBuffer" weakSelf:v3 eventLogLevel:8 block:&__block_literal_global_83];

  [(VCStreamInputManager *)self registerDidClientDieBlock:v3];
}

- (void)deregisterBlocksForService
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"VCStreamInputInitialize"];
}

- (id)streamInputWithID:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__11;
  xpcQueue = self->_xpcQueue;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__VCStreamInputManager_streamInputWithID___block_invoke;
  v6[3] = &unk_1E85F3930;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = a3;
  dispatch_sync(xpcQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __42__VCStreamInputManager_streamInputWithID___block_invoke(void *a1)
{
  result = [*(a1[4] + 184) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a1[6])}];
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

- (void)didStartStreamInput:(id)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  xpcQueue = self->_xpcQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__VCStreamInputManager_didStartStreamInput___block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = a3;
  dispatch_async(xpcQueue, v4);
}

uint64_t __44__VCStreamInputManager_didStartStreamInput___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"VCStreamInputDidStart" arguments:0 context:v3];
}

- (void)didStopStreamInput:(id)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  xpcQueue = self->_xpcQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__VCStreamInputManager_didStopStreamInput___block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = a3;
  dispatch_async(xpcQueue, v4);
}

uint64_t __43__VCStreamInputManager_didStopStreamInput___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"VCStreamInputDidStop" arguments:0 context:v3];
}

- (void)didSuspendStreamInput:(id)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  xpcQueue = self->_xpcQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__VCStreamInputManager_didSuspendStreamInput___block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = a3;
  dispatch_async(xpcQueue, v4);
}

uint64_t __46__VCStreamInputManager_didSuspendStreamInput___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"VCStreamInputDidSuspend" arguments:0 context:v3];
}

- (void)didResumeStreamInput:(id)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  xpcQueue = self->_xpcQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__VCStreamInputManager_didResumeStreamInput___block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = a3;
  dispatch_async(xpcQueue, v4);
}

uint64_t __45__VCStreamInputManager_didResumeStreamInput___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"VCStreamInputDidResume" arguments:0 context:v3];
}

- (BOOL)clientProcessDiedWithXPCArguments:(id)a3 result:(id *)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v9 = [a3 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  v10 = [a3 objectForKeyedSubscript:@"CLIENTPID"];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v10)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v23 = 258;
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v17, v18, v19, v20, v21, 0x1Cu);
      }
    }

    return 1;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      AVCStreamInputID_ConvertToNSString([objc_msgSend(v9 "streamInputID")]);
      *v22 = 136316162;
      *&v22[4] = v12;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v24 = v10;
      v25 = v14;
      v26 = v15;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Client process with pid=%@ died. Cleaning up streamInputID=%@", v22, 0x30u);
    }
  }

  return [(VCStreamInputManager *)self terminateStreamInputWithXPCArguments:a3 result:a4 error:a5, *v22];
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_8_19(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create the XPC queue[%@]", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)initializeStreamInputWithXPCArguments:(uint64_t)a1 result:error:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  v5 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Stream input ID %@ already exists!", &v3, 0x26u);
}

- (void)initializeStreamInputWithXPCArguments:(uint64_t)a1 result:(void *)a2 error:.cold.2(uint64_t a1, void *a2)
{
  AVCStreamInputID_ConvertToNSString([a2 integerValue]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)initializeStreamInputWithXPCArguments:(uint64_t)a1 result:(void *)a2 error:.cold.3(uint64_t a1, void *a2)
{
  AVCStreamInputID_ConvertToNSString([a2 integerValue]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)initializeStreamInputWithXPCArguments:(void *)a3 result:(void *)a4 error:.cold.4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = v8;
      OUTLINED_FUNCTION_0();
      v13 = 147;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v9, v10, " [%s] %s:%d Failed to create format description from XPC arguments", &v11);
    }
  }

  *a4 = -2143682558;
  *a3 = a1;
  *a2 = 0;
}

- (void)getServerPidWithXPCArguments:(_BYTE *)a1 result:(void *)a2 error:(void *)a3 .cold.1(_BYTE *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = v6;
      OUTLINED_FUNCTION_0();
      v11 = 205;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v7, v8, " [%s] %s:%d kVCDefaultEnableFigRemoteQueueForAVCStreamInputOutput disabled", &v9);
    }
  }

  *a3 = 0;
  *a2 = 0;
  *a1 = 1;
}

- (void)getServerPidWithXPCArguments:result:error:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)getServerPidWithXPCArguments:result:error:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)terminateStreamInputWithXPCArguments:(int)a1 result:error:.cold.1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }
}

- (void)terminateStreamInputWithXPCArguments:result:error:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)terminateStreamInputWithXPCArguments:result:error:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)pushSampleBufferWithXPCArguments:(uint64_t)a1 result:error:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 282;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d received NULL CMSampleBuffer", &v3);
}

- (void)pushSampleBufferWithXPCArguments:(uint64_t)a1 result:error:.cold.2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 277;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d nil VCInputStream", &v3);
}

@end