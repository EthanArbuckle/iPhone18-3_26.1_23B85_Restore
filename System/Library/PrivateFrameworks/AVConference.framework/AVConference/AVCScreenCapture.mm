@interface AVCScreenCapture
+ (unsigned)capabilities;
- (AVCScreenCapture)initWithDelegate:(id)delegate withConfig:(id)config;
- (id)newNSErrorWithErrorDictionary:(id)dictionary;
- (id)updateScreenCaptureWithConfig:(id)config;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)registerBlocksForNotifications;
- (void)startCapture;
- (void)stopCapture;
@end

@implementation AVCScreenCapture

+ (unsigned)capabilities
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[VCHardwareSettings screenShareCapabilities];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "+[AVCScreenCapture capabilities]";
      v10 = 1024;
      v11 = 44;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d screen capture capability: %ld", &v6, 0x26u);
    }
  }

  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 2);
  }
}

- (AVCScreenCapture)initWithDelegate:(id)delegate withConfig:(id)config
{
  v46 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() < 6)
  {
    goto LABEL_14;
  }

  *&v35[0] = 0;
  if (delegate)
  {
    v7 = [objc_msgSend(delegate "description")];
    if (config)
    {
LABEL_4:
      v8 = [objc_msgSend(config "description")];
      goto LABEL_7;
    }
  }

  else
  {
    v7 = "<nil>";
    if (config)
    {
      goto LABEL_4;
    }
  }

  v8 = "<nil>";
LABEL_7:
  asprintf(v35, "inDelegate=%s config=%s", v7, v8);
  if (*&v35[0])
  {
    delegateCopy = delegate;
    __lasts = 0;
    v9 = strtok_r(*&v35[0], "\n", &__lasts);
    v10 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v37 = v11;
          v38 = 2080;
          v39 = "[AVCScreenCapture initWithDelegate:withConfig:]";
          v40 = 1024;
          v41 = 62;
          v42 = 2080;
          v43 = "";
          v44 = 2080;
          v45 = v9;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v9 = strtok_r(0, "\n", &__lasts);
    }

    while (v9);
    free(*&v35[0]);
    delegate = delegateCopy;
  }

LABEL_14:
  v31.receiver = self;
  v31.super_class = AVCScreenCapture;
  v13 = [(AVCScreenCapture *)&v31 init];
  if (v13)
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35[0] = v14;
    v35[1] = v14;
    VCUtil_AuditTokenForCurrentProcess(v35);
    v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v35 length:32];
    v16 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v33[0] = @"vcScreenCaptureXpcAuthToken";
    v33[1] = @"vcScreenCaptureClientBundleID";
    v34[0] = v15;
    v34[1] = v16;
    v33[2] = @"vcScreenCaptureHeight";
    v34[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "height")}];
    v33[3] = @"vcScreenCaptureWidth";
    v34[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "width")}];
    v33[4] = @"vcScreenCaptureFramerate";
    v34[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "frameRate")}];
    v33[5] = @"vcScreenCaptureScreenDisplayID";
    v34[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "screenCaptureDisplayID")}];
    v33[6] = @"vcScreenCaptureScreenDisplayMode";
    v34[6] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "displayMode")}];
    v33[7] = @"vcScreenCaptureScreenIsWindowed";
    v34[7] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "isWindowed")}];
    v33[8] = @"vcScreenCaptureScreenMachPort";
    v34[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "selectiveSharingPort")}];
    v33[9] = @"vcScreenCaptureScreenUUID";
    if ([config selectiveScreenUUID])
    {
      selectiveScreenUUID = [config selectiveScreenUUID];
    }

    else
    {
      selectiveScreenUUID = [MEMORY[0x1E695DFB0] null];
    }

    v34[9] = selectiveScreenUUID;
    v33[10] = @"vcScreenCaptureIsCursorCaptured";
    v34[10] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "isCursorCaptured")}];
    v33[11] = @"vcScreenCaptureCaptureExcludedBundleIDs";
    if ([config excludedApplicationBundleIDs] && objc_msgSend(objc_msgSend(config, "excludedApplicationBundleIDs"), "count"))
    {
      excludedApplicationBundleIDs = [config excludedApplicationBundleIDs];
    }

    else
    {
      excludedApplicationBundleIDs = [MEMORY[0x1E695DFB0] null];
    }

    v34[11] = excludedApplicationBundleIDs;
    v33[12] = @"vcScreenCaptureCaptureExcludedAudioPids";
    if ([objc_msgSend(config "excludedAudioAuditTokens")])
    {
      null = +[AVCAuditToken processIdentifiersFromAuditTokens:](AVCAuditToken, "processIdentifiersFromAuditTokens:", [config excludedAudioAuditTokens]);
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v34[12] = null;
    v33[13] = @"vcScreenCaptureCapturePdProtectionFlags";
    v34[13] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(config, "pdProtectionOptions")}];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:14];
    v13->_isInProcess = [config shouldRunInProcess];
    objc_storeWeak(&v13->_delegate, delegate);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v22 = dispatch_queue_create_with_target_V2("com.apple.AVConference.screenCapture", 0, CustomRootQueue);
    v13->_avConferenceScreenCaptureQueue = v22;
    if (v22)
    {
      if (v13->_isInProcess)
      {
        v23 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
        if (v23)
        {
          v24 = [+[VCScreenCaptureManager sharedManager](VCScreenCaptureManager "sharedManager")];
          v13->_screenShare = v24;
          if (v24)
          {
            v13->_captureSourceID = [(VCScreenShare *)v24 captureSourceID];
LABEL_37:

            return v13;
          }

          [AVCScreenCapture initWithDelegate:withConfig:];
        }

        else
        {
          [AVCScreenCapture initWithDelegate:withConfig:];
        }
      }

      else
      {
        v25 = objc_alloc_init(AVConferenceXPCClient);
        v13->_connection = v25;
        if (v25)
        {
          v26 = [(AVConferenceXPCClient *)v25 sendMessageSync:"vcScreenCaptureInitialize" arguments:v20];
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v37 = v27;
              v38 = 2080;
              v39 = "[AVCScreenCapture initWithDelegate:withConfig:]";
              v40 = 1024;
              v41 = 103;
              v42 = 2112;
              v43 = v26;
              _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Results from initialization: %@", buf, 0x26u);
            }
          }

          if (v26 && ![v26 objectForKeyedSubscript:@"ERROR"])
          {
            v13->_captureSourceID = [objc_msgSend(v26 objectForKeyedSubscript:{@"vcScreenCaptureCaptureSourceID", "integerValue"}];
            [(AVCScreenCapture *)v13 registerBlocksForNotifications];
            goto LABEL_37;
          }

          [AVCScreenCapture initWithDelegate:withConfig:];
        }

        else
        {
          [AVCScreenCapture initWithDelegate:withConfig:];
        }
      }
    }

    else
    {
      [AVCScreenCapture initWithDelegate:withConfig:];
    }

    return 0;
  }

  return v13;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = v3;
      v15 = 2080;
      v16 = "[AVCScreenCapture dealloc]";
      v17 = 1024;
      v18 = 123;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Begin", buf, 0x1Cu);
    }
  }

  if (self->_isInProcess)
  {
    p_screenShare = &self->_screenShare;
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }

  else
  {
    [(AVCScreenCapture *)self deregisterBlocksForNotifications];
    p_screenShare = &self->_connection;
    v6 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcScreenCaptureTerminate"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = v7;
        v15 = 2080;
        v16 = "[AVCScreenCapture dealloc]";
        v17 = 1024;
        v18 = 132;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Results from termination: %@", buf, 0x26u);
      }
    }
  }

  avConferenceScreenCaptureQueue = self->_avConferenceScreenCaptureQueue;
  if (avConferenceScreenCaptureQueue)
  {
    dispatch_release(avConferenceScreenCaptureQueue);
    self->_avConferenceScreenCaptureQueue = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  v12.receiver = self;
  v12.super_class = AVCScreenCapture;
  [(AVCScreenCapture *)&v12 dealloc];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = v10;
      v15 = 2080;
      v16 = "[AVCScreenCapture dealloc]";
      v17 = 1024;
      v18 = 138;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d End", buf, 0x1Cu);
    }
  }
}

- (id)newNSErrorWithErrorDictionary:(id)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = [dictionary objectForKeyedSubscript:@"ERROR_DOMAIN"];
  v6 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"ERROR_CODE", "intValue"}];
  v7 = [dictionary objectForKeyedSubscript:@"ERROR_USERINFO"];

  return [v4 initWithDomain:v5 code:v6 userInfo:v7];
}

- (void)registerBlocksForNotifications
{
  v8[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcScreenCaptureServerDidDisconnect" block:v8 queue:self->_avConferenceScreenCaptureQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke_88;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcScreenCaptureStartReturn" block:v7 queue:self->_avConferenceScreenCaptureQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke_98;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcScreenCaptureStopReturn" block:v6 queue:self->_avConferenceScreenCaptureQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke_108;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcScreenCaptureDidUpdateAttributes" block:v5 queue:self->_avConferenceScreenCaptureQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke_113;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcScreenCaptureScreenDidClear" block:v4 queue:self->_avConferenceScreenCaptureQueue];
}

uint64_t __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v4 = result;
      [result delegate];
      result = objc_opt_respondsToSelector();
      if (result)
      {
        if (objc_opt_class() == v4)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return [objc_msgSend(v4 delegate];
          }

          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return [objc_msgSend(v4 delegate];
          }

          *v13 = 136315650;
          *&v13[4] = v6;
          *&v13[12] = 2080;
          *&v13[14] = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
          *&v13[22] = 1024;
          LODWORD(v14) = 164;
          v8 = " [%s] %s:%d received callback for serverDidDisconnect";
          v9 = v7;
          v10 = 28;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v5 = [v4 performSelector:sel_logPrefix];
          }

          else
          {
            v5 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return [objc_msgSend(v4 delegate];
          }

          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return [objc_msgSend(v4 delegate];
          }

          *v13 = 136316162;
          *&v13[4] = v11;
          *&v13[12] = 2080;
          *&v13[14] = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
          *&v13[22] = 1024;
          LODWORD(v14) = 164;
          WORD2(v14) = 2112;
          *(&v14 + 6) = v5;
          HIWORD(v14) = 2048;
          v15 = v4;
          v8 = " [%s] %s:%d %@(%p) received callback for serverDidDisconnect";
          v9 = v12;
          v10 = 48;
        }

        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
        return [objc_msgSend(v4 delegate];
      }
    }
  }

  return result;
}

void __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke_88(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v4 = [*(a1 + 32) strong];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  [v4 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return;
  }

  if (objc_opt_class() != v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *v18 = 136316162;
    *&v18[4] = v12;
    *&v18[12] = 2080;
    *&v18[14] = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
    *&v18[22] = 1024;
    LODWORD(v19) = 179;
    WORD2(v19) = 2112;
    *(&v19 + 6) = v6;
    HIWORD(v19) = 2048;
    v20 = v5;
    v9 = " [%s] %s:%d %@(%p) received callback for screenCapture didStart";
    v10 = v13;
    v11 = 48;
    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 136315650;
      *&v18[4] = v7;
      *&v18[12] = 2080;
      *&v18[14] = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
      *&v18[22] = 1024;
      LODWORD(v19) = 179;
      v9 = " [%s] %s:%d received callback for screenCapture didStart";
      v10 = v8;
      v11 = 28;
LABEL_15:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v18, v11);
    }
  }

LABEL_16:
  v14 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcScreenCaptureDidStartSuccess", *v18, *&v18[16], v19, v20), "BOOLValue"}];
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = [v5 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcScreenCaptureDidStartError"}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 136315906;
      *&v18[4] = v16;
      *&v18[12] = 2080;
      *&v18[14] = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
      *&v18[22] = 1024;
      LODWORD(v19) = 186;
      WORD2(v19) = 2112;
      *(&v19 + 6) = v15;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d capture didStart error=%@", v18, 0x26u);
    }
  }

  [objc_msgSend(v5 "delegate")];
}

void __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke_98(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v4 = [*(a1 + 32) strong];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  [v4 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return;
  }

  if (objc_opt_class() != v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *v17 = 136316162;
    *&v17[4] = v12;
    *&v17[12] = 2080;
    *&v17[14] = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
    *&v17[22] = 1024;
    LODWORD(v18) = 202;
    WORD2(v18) = 2112;
    *(&v18 + 6) = v6;
    HIWORD(v18) = 2048;
    v19 = v5;
    v9 = " [%s] %s:%d %@(%p) received callback for screenCapture didStop";
    v10 = v13;
    v11 = 48;
    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 136315650;
      *&v17[4] = v7;
      *&v17[12] = 2080;
      *&v17[14] = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
      *&v17[22] = 1024;
      LODWORD(v18) = 202;
      v9 = " [%s] %s:%d received callback for screenCapture didStop";
      v10 = v8;
      v11 = 28;
LABEL_15:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v17, v11);
    }
  }

LABEL_16:
  v14 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcScreenCaptureDidStopSuccess", *v17, *&v17[16], v18, v19), "BOOLValue"}];
  v15 = [MEMORY[0x1E695DFB0] null];
  if (v15 == [a2 objectForKeyedSubscript:@"vcScreenCaptureDidStopError"])
  {
    v16 = 0;
  }

  else
  {
    v16 = [v5 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcScreenCaptureDidStopError"}];
  }

  [objc_msgSend(v5 "delegate")];
}

void __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke_108(uint64_t a1, void *a2, __CFString *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v6 = [*(a1 + 32) strong];
    if (v6)
    {
      v7 = v6;
      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        if (objc_opt_class() == v7)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_16;
          }

          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          v17 = 136315906;
          v18 = v9;
          v19 = 2080;
          v20 = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
          v21 = 1024;
          v22 = 224;
          v23 = 2112;
          v24 = a3;
          v11 = " [%s] %s:%d received callback for didUpdateAttributes error=%@";
          v12 = v10;
          v13 = 38;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v8 = [v7 performSelector:sel_logPrefix];
          }

          else
          {
            v8 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_16;
          }

          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          v17 = 136316418;
          v18 = v14;
          v19 = 2080;
          v20 = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
          v21 = 1024;
          v22 = 224;
          v23 = 2112;
          v24 = v8;
          v25 = 2048;
          v26 = v7;
          v27 = 2112;
          v28 = a3;
          v11 = " [%s] %s:%d %@(%p) received callback for didUpdateAttributes error=%@";
          v12 = v15;
          v13 = 58;
        }

        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_16:
        v16 = [[AVCScreenCaptureAttributes alloc] initWithConfiguration:a2];
        [objc_msgSend(v7 "delegate")];
      }
    }
  }
}

uint64_t __50__AVCScreenCapture_registerBlocksForNotifications__block_invoke_113(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v7 = result;
      v8 = [result delegate];
      v9 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcScreenCaptureIsScreenCleared", "BOOLValue"}];
      if (objc_opt_class() == v7)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v18 = 136316162;
        v19 = v11;
        v20 = 2080;
        v21 = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
        v22 = 1024;
        v23 = 242;
        v24 = 1024;
        *v25 = v9;
        *&v25[4] = 2112;
        *&v25[6] = a3;
        v13 = " [%s] %s:%d received callback for isScreenCleared=%d error=%@";
        v14 = v12;
        v15 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [v7 performSelector:sel_logPrefix];
        }

        else
        {
          v10 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v18 = 136316674;
        v19 = v16;
        v20 = 2080;
        v21 = "[AVCScreenCapture registerBlocksForNotifications]_block_invoke";
        v22 = 1024;
        v23 = 242;
        v24 = 2112;
        *v25 = v10;
        *&v25[8] = 2048;
        *&v25[10] = v7;
        v26 = 1024;
        v27 = v9;
        v28 = 2112;
        v29 = a3;
        v13 = " [%s] %s:%d %@(%p) received callback for isScreenCleared=%d error=%@";
        v14 = v17;
        v15 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v18, v15);
LABEL_15:
      result = objc_opt_respondsToSelector();
      if (result)
      {
        return [v8 screenCapture:v7 screenDidClear:v9];
      }
    }
  }

  return result;
}

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcScreenCaptureStopReturn"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcScreenCaptureStartReturn"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcScreenCaptureServerDidDisconnect"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcScreenCaptureDidUpdateAttributes"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcScreenCaptureScreenDidClear"];
}

- (void)startCapture
{
  v19 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCScreenCapture startCapture]";
      v15 = 1024;
      v16 = 263;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start capture", buf, 0x1Cu);
    }
  }

  avConferenceScreenCaptureQueue = self->_avConferenceScreenCaptureQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AVCScreenCapture_startCapture__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(avConferenceScreenCaptureQueue, block);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVScreenCapture started");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "[AVCScreenCapture startCapture]";
      v15 = 1024;
      v16 = 280;
      v17 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVScreenCapture started (%p)", buf, 0x26u);
    }
  }
}

uint64_t __32__AVCScreenCapture_startCapture__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    [+[VCScreenCaptureManager sharedManager](VCScreenCaptureManager "sharedManager")];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(*(a1 + 32) + 8);

      return [v4 screenCapture:? didStart:? withError:?];
    }
  }

  else
  {
    v5 = *(v1 + 16);

    return [v5 sendMessageAsync:"vcScreenCaptureStart" arguments:0 reply:0];
  }

  return result;
}

- (void)stopCapture
{
  v19 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCScreenCapture stopCapture]";
      v15 = 1024;
      v16 = 285;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stop capture", buf, 0x1Cu);
    }
  }

  avConferenceScreenCaptureQueue = self->_avConferenceScreenCaptureQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AVCScreenCapture_stopCapture__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(avConferenceScreenCaptureQueue, block);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVScreenCapture stopped");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "[AVCScreenCapture stopCapture]";
      v15 = 1024;
      v16 = 303;
      v17 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVScreenCapture stopped (%p)", buf, 0x26u);
    }
  }
}

uint64_t __31__AVCScreenCapture_stopCapture__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    [+[VCScreenCaptureManager sharedManager](VCScreenCaptureManager "sharedManager")];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(*(a1 + 32) + 8);

      return [v4 screenCapture:? didStop:? withError:?];
    }
  }

  else
  {
    v5 = *(v1 + 16);

    return [v5 sendMessageAsync:"vcScreenCaptureStop" arguments:0 reply:0];
  }

  return result;
}

- (id)updateScreenCaptureWithConfig:(id)config
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v5 = config ? [objc_msgSend(config "description")] : "<nil>";
    asprintf(&__str, "config=%s", v5);
    if (__str)
    {
      configCopy = config;
      __lasts = 0;
      v6 = strtok_r(__str, "\n", &__lasts);
      v7 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v24 = v8;
            v25 = 2080;
            v26 = "[AVCScreenCapture updateScreenCaptureWithConfig:]";
            v27 = 1024;
            v28 = 309;
            v29 = 2080;
            v30 = "";
            v31 = 2080;
            v32 = v6;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v6 = strtok_r(0, "\n", &__lasts);
      }

      while (v6);
      free(__str);
      config = configCopy;
    }
  }

  avConferenceScreenCaptureQueue = self->_avConferenceScreenCaptureQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVCScreenCapture_updateScreenCaptureWithConfig___block_invoke;
  block[3] = &unk_1E85F6638;
  block[4] = config;
  block[5] = self;
  block[6] = &v17;
  dispatch_sync(avConferenceScreenCaptureQueue, block);
  v11 = v18[5];
  _Block_object_dispose(&v17, 8);
  return v11;
}

void __50__AVCScreenCapture_updateScreenCaptureWithConfig___block_invoke(uint64_t a1)
{
  v42[11] = *MEMORY[0x1E69E9840];
  v41[0] = @"vcScreenCaptureHeight";
  v2 = (a1 + 32);
  v42[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "height")}];
  v41[1] = @"vcScreenCaptureWidth";
  v42[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v2, "width")}];
  v41[2] = @"vcScreenCaptureFramerate";
  v42[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v2, "frameRate")}];
  v41[3] = @"vcScreenCaptureScreenDisplayID";
  v42[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v2, "screenCaptureDisplayID")}];
  v41[4] = @"vcScreenCaptureScreenIsWindowed";
  v42[4] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*v2, "isWindowed")}];
  v41[5] = @"vcScreenCaptureScreenMachPort";
  v42[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v2, "selectiveSharingPort")}];
  v41[6] = @"vcScreenCaptureScreenUUID";
  if ([*v2 selectiveScreenUUID])
  {
    v3 = [*v2 selectiveScreenUUID];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v42[6] = v3;
  v41[7] = @"vcScreenCaptureIsCursorCaptured";
  v42[7] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*v2, "isCursorCaptured")}];
  v41[8] = @"vcScreenCaptureCaptureExcludedBundleIDs";
  if ([*v2 excludedApplicationBundleIDs] && objc_msgSend(objc_msgSend(*v2, "excludedApplicationBundleIDs"), "count"))
  {
    v4 = [*v2 excludedApplicationBundleIDs];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v42[8] = v4;
  v41[9] = @"vcScreenCaptureCaptureExcludedAudioPids";
  if ([objc_msgSend(*v2 "excludedAudioAuditTokens")])
  {
    v5 = +[AVCAuditToken processIdentifiersFromAuditTokens:](AVCAuditToken, "processIdentifiersFromAuditTokens:", [*v2 excludedAudioAuditTokens]);
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v42[9] = v5;
  v41[10] = @"vcScreenCaptureCapturePdProtectionFlags";
  v42[10] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "pdProtectionOptions")}];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:11];
  v7 = *(*(a1 + 40) + 32);
  v8 = [*(a1 + 32) shouldRunInProcess];
  v9 = *(a1 + 40);
  if (v7 != v8)
  {
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __50__AVCScreenCapture_updateScreenCaptureWithConfig___block_invoke_cold_1(v14, v2);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v34 = *(a1 + 40);
          v35 = [*(a1 + 32) shouldRunInProcess];
          *v37 = 136316418;
          v36 = "NO";
          *&v37[4] = v15;
          *&v37[14] = "[AVCScreenCapture updateScreenCaptureWithConfig:]_block_invoke";
          *&v37[12] = 2080;
          *&v37[22] = 1024;
          if (v35)
          {
            v36 = "YES";
          }

          LODWORD(v38) = 329;
          WORD2(v38) = 2112;
          *(&v38 + 6) = v11;
          HIWORD(v38) = 2048;
          v39 = v34;
          LOWORD(v40) = 2080;
          *(&v40 + 2) = v36;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unsupported configuration change of shouldRunInProcess=%s", v37, 0x3Au);
        }
      }
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCScreenCapture" code:-2146893808 userInfo:{0, *v37, *&v37[16]}];
    goto LABEL_27;
  }

  if (*(v9 + 32) == 1)
  {
    v10 = [+[VCScreenCaptureManager sharedManager](VCScreenCaptureManager "sharedManager")];
LABEL_27:
    *(*(*(a1 + 48) + 8) + 40) = v10;
    return;
  }

  v12 = [*(v9 + 16) sendMessageSync:"vcScreenCaptureUpdate" arguments:v6];
  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 136315906;
        *&v37[4] = v17;
        *&v37[12] = 2080;
        *&v37[14] = "[AVCScreenCapture updateScreenCaptureWithConfig:]_block_invoke";
        *&v37[22] = 1024;
        LODWORD(v38) = 336;
        WORD2(v38) = 2112;
        *(&v38 + 6) = v12;
        v19 = " [%s] %s:%d Results from updateConfig=%@";
        v20 = v18;
        v21 = 38;
LABEL_36:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, v37, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [*(a1 + 40) performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 40);
        *v37 = 136316418;
        *&v37[4] = v22;
        *&v37[12] = 2080;
        *&v37[14] = "[AVCScreenCapture updateScreenCaptureWithConfig:]_block_invoke";
        *&v37[22] = 1024;
        LODWORD(v38) = 336;
        WORD2(v38) = 2112;
        *(&v38 + 6) = v13;
        HIWORD(v38) = 2048;
        v39 = v24;
        LOWORD(v40) = 2112;
        *(&v40 + 2) = v12;
        v19 = " [%s] %s:%d %@(%p) Results from updateConfig=%@";
        v20 = v23;
        v21 = 58;
        goto LABEL_36;
      }
    }
  }

  v25 = [v12 objectForKeyedSubscript:{@"ERROR", *v37, *&v37[8], v38, v39, v40}];
  v26 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 40) = v25;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __50__AVCScreenCapture_updateScreenCaptureWithConfig___block_invoke_cold_2(v28, v26, v29);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v32 = *(a1 + 40);
          v33 = *(*(*(a1 + 48) + 8) + 40);
          *v37 = 136316418;
          *&v37[4] = v30;
          *&v37[12] = 2080;
          *&v37[14] = "[AVCScreenCapture updateScreenCaptureWithConfig:]_block_invoke";
          *&v37[22] = 1024;
          LODWORD(v38) = 340;
          WORD2(v38) = 2112;
          *(&v38 + 6) = v27;
          HIWORD(v38) = 2048;
          v39 = v32;
          LOWORD(v40) = 2112;
          *(&v40 + 2) = v33;
          _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Updating Screen Capture Configuration failed with error=%@", v37, 0x3Au);
        }
      }
    }
  }
}

- (void)initWithDelegate:withConfig:.cold.1()
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

- (void)initWithDelegate:withConfig:.cold.2()
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

- (void)initWithDelegate:withConfig:.cold.3()
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

- (void)initWithDelegate:withConfig:.cold.4()
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

- (void)initWithDelegate:withConfig:.cold.5()
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

void __50__AVCScreenCapture_updateScreenCaptureWithConfig___block_invoke_cold_1(uint64_t a1, id *a2)
{
  [*a2 shouldRunInProcess];
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __50__AVCScreenCapture_updateScreenCaptureWithConfig___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(*(*a2 + 8) + 40);
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[AVCScreenCapture updateScreenCaptureWithConfig:]_block_invoke";
  v8 = 1024;
  v9 = 340;
  v10 = 2112;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Updating Screen Capture Configuration failed with error=%@", &v4, 0x26u);
}

@end