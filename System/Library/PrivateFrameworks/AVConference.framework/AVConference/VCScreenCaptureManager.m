@interface VCScreenCaptureManager
- (BOOL)isPickerClientProcessId:(id)a3;
- (VCScreenCaptureManager)init;
- (id)errorForAttributesError:(id)a3;
- (id)getErrorDictionaryFromError:(id)a3;
- (id)newCaptureSourceID;
- (id)newScreenShareWithConfig:(id)a3 pid:(id)a4;
- (id)screenShareDictionary:(id)a3;
- (id)startScreenShare:(id)a3;
- (id)stopScreenShare:(id)a3;
- (id)stopScreenShareAndNotifyDelegate:(id)a3;
- (id)updateCurrentPickerScreenCapture;
- (id)updateScreenCapture:(id)a3 withConfig:(id)a4;
- (void)createPicker;
- (void)dealloc;
- (void)endPrivacyAccountingInterval:(id)a3;
- (void)init;
- (void)invalidatePicker;
- (void)registerBlocksForService;
- (void)removePickerClientScreenShare:(id)a3;
- (void)screenCaptureStartFor:(id)a3 didSucceed:(BOOL)a4 withError:(id)a5;
- (void)screenCaptureStopFor:(id)a3 didSucceed:(BOOL)a4 withError:(id)a5;
- (void)startPrivacyAccountingInterval:(id)a3;
@end

@implementation VCScreenCaptureManager

- (VCScreenCaptureManager)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCScreenCaptureManager;
  v2 = [(VCScreenCaptureManager *)&v7 init];
  if (v2)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCScreenCaptureManager.xpc.commands", 0, CustomRootQueue);
    v2->_xpcCommandQueue = v4;
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v2->_screenShare = v5;
      if (v5)
      {
        return v2;
      }

      [VCScreenCaptureManager init];
    }

    else
    {
      [VCScreenCaptureManager init];
    }

    return 0;
  }

  return v2;
}

VCScreenCaptureManager *__VCScreenCaptureManager_SharedInstance_block_invoke()
{
  result = objc_alloc_init(VCScreenCaptureManager);
  VCScreenCaptureManager_SharedInstance__vcScreenCaptureManager = result;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  [(VCScreenCaptureManager *)self invalidatePicker];
  v3.receiver = self;
  v3.super_class = VCScreenCaptureManager;
  [(VCScreenCaptureManager *)&v3 dealloc];
}

- (id)getErrorDictionaryFromError:(id)a3
{
  v4 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"Screen Capture unknown error"];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if (a3)
  {
    [v5 setObject:objc_msgSend(a3 forKeyedSubscript:{"domain"), @"ERROR_DOMAIN"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(a3, "code")), @"ERROR_CODE"}];
    v6 = a3;
  }

  else
  {
    [v5 setObject:objc_msgSend(v4 forKeyedSubscript:{"domain"), @"ERROR_DOMAIN"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(v4, "code")), @"ERROR_CODE"}];
    v6 = v4;
  }

  [v5 setObject:objc_msgSend(v6 forKeyedSubscript:{"userInfo"), @"ERROR_USERINFO"}];

  return v5;
}

- (void)screenCaptureStartFor:(id)a3 didSucceed:(BOOL)a4 withError:(id)a5
{
  v8 = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VCScreenCaptureManager_screenCaptureStartFor_didSucceed_withError___block_invoke;
  block[3] = &unk_1E85F5E38;
  v7 = a4;
  block[4] = self;
  block[5] = a5;
  block[6] = a3;
  dispatch_async(xpcCommandQueue, block);
}

uint64_t __69__VCScreenCaptureManager_screenCaptureStartFor_didSucceed_withError___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"vcScreenCaptureDidStartSuccess";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v5[1] = @"vcScreenCaptureDidStartError";
  v6[0] = v2;
  if (*(a1 + 56) == 1)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v3 = [*(a1 + 32) getErrorDictionaryFromError:*(a1 + 40)];
  }

  v6[1] = v3;
  return [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)screenCaptureStopFor:(id)a3 didSucceed:(BOOL)a4 withError:(id)a5
{
  v8 = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCScreenCaptureManager_screenCaptureStopFor_didSucceed_withError___block_invoke;
  block[3] = &unk_1E85F5E38;
  v7 = a4;
  block[4] = a5;
  block[5] = self;
  block[6] = a3;
  dispatch_async(xpcCommandQueue, block);
}

uint64_t __68__VCScreenCaptureManager_screenCaptureStopFor_didSucceed_withError___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"vcScreenCaptureDidStopSuccess";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v5[1] = @"vcScreenCaptureDidStopError";
  v6[0] = v2;
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) getErrorDictionaryFromError:?];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v6[1] = v3;
  return [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

void __VCScreenCaptureManager_ScreenShareDidClearScreen_block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}];
  if (v2)
  {
    v3 = v2;
    v4 = @"vcScreenCaptureIsScreenCleared";
    v5[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
    [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  }

  else
  {
    __VCScreenCaptureManager_ScreenShareDidClearScreen_block_invoke_cold_1();
  }
}

- (id)screenShareDictionary:(id)a3
{
  v12[13] = *MEMORY[0x1E69E9840];
  v11[0] = @"ScreenCaptureIsWindowed";
  v12[0] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "isWindowed")}];
  v11[1] = @"ScreenCaptureUUID";
  if ([a3 selectiveScreenUUID])
  {
    v4 = [a3 selectiveScreenUUID];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v4;
  v11[2] = @"ScreenDisplayID";
  v12[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "screenCaptureDisplayID")}];
  v11[3] = @"ScreenCaptureConfigurationDisplayMode";
  v12[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "displayMode")}];
  v11[4] = @"IsCursorCapturedForScreen";
  v12[4] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "isCursorCaptured")}];
  v11[5] = @"CaptureSourceID";
  v12[5] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "captureSourceID")}];
  v11[6] = @"ClientBundleID";
  if ([a3 clientBundleID])
  {
    v5 = [a3 clientBundleID];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v12[6] = v5;
  v11[7] = @"HasPrivateCaptureEntitlement";
  v12[7] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "privateContentCaptureAllowed")}];
  v11[8] = @"CaptureExcludedBundleIDs";
  if ([a3 excludedApplicationBundleIDs])
  {
    v6 = [a3 excludedApplicationBundleIDs];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v12[8] = v6;
  v11[9] = @"CaptureExcludedAudioPids";
  if ([a3 excludedAudioPids])
  {
    v7 = [a3 excludedAudioPids];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[9] = v7;
  v11[10] = @"ScreenVirtualDisplayLabel";
  if ([a3 screenVirtualDisplayLabel])
  {
    v8 = [a3 screenVirtualDisplayLabel];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v12[10] = v8;
  v11[11] = @"AuditTokenData";
  if ([a3 clientAuditTokenData])
  {
    v9 = [a3 clientAuditTokenData];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v12[11] = v9;
  v11[12] = @"PdProtectionOptions";
  v12[12] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a3, "pdProtectionOptions")}];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:13];
}

- (id)newCaptureSourceID
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

  while ([(NSMutableDictionary *)self->_screenShare objectForKeyedSubscript:v3]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCScreenCaptureManager newCaptureSourceID]";
      v11 = 1024;
      v12 = 191;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d captureSourceID=%@", &v7, 0x26u);
    }
  }

  return v3;
}

- (id)newScreenShareWithConfig:(id)a3 pid:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [(VCScreenCaptureManager *)self newCaptureSourceID];
  if (!v7)
  {
    [VCScreenCaptureManager newScreenShareWithConfig:pid:];
LABEL_11:
    v8 = *v13;
    goto LABEL_8;
  }

  v8 = [[VCScreenShare alloc] initWithConfig:a3 pid:a4 captureSourceID:v7];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v8)
  {
    [VCScreenCaptureManager newScreenShareWithConfig:? pid:?];
    goto LABEL_11;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136315906;
      *&v13[4] = v10;
      v14 = 2080;
      v15 = "[VCScreenCaptureManager newScreenShareWithConfig:pid:]";
      v16 = 1024;
      v17 = 221;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCScreenShare created: %@", v13, 0x26u);
    }
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_screenShare, "setObject:forKeyedSubscript:", v8, [MEMORY[0x1E696AD98] numberWithInteger:{-[VCScreenShare captureSourceID](v8, "captureSourceID")}]);
  if ([(VCScreenCaptureManager *)self isPickerClientProcessId:a4])
  {

    self->_pickerClientScreenShare = v8;
  }

LABEL_8:

  return v8;
}

- (void)removePickerClientScreenShare:(id)a3
{
  pickerClientScreenShare = self->_pickerClientScreenShare;
  if (pickerClientScreenShare == a3)
  {

    self->_pickerClientScreenShare = 0;
  }
}

- (id)stopScreenShare:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 136315906;
        *&v18[4] = v6;
        *&v18[12] = 2080;
        *&v18[14] = "[VCScreenCaptureManager stopScreenShare:]";
        *&v18[22] = 1024;
        LODWORD(v19) = 244;
        WORD2(v19) = 2112;
        *(&v19 + 6) = a3;
        v8 = " [%s] %s:%d Stopping: %@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v18, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 136316418;
        *&v18[4] = v11;
        *&v18[12] = 2080;
        *&v18[14] = "[VCScreenCaptureManager stopScreenShare:]";
        *&v18[22] = 1024;
        LODWORD(v19) = 244;
        WORD2(v19) = 2112;
        *(&v19 + 6) = v5;
        HIWORD(v19) = 2048;
        v20 = self;
        LOWORD(v21) = 2112;
        *(&v21 + 2) = a3;
        v8 = " [%s] %s:%d %@(%p) Stopping: %@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  if ([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer VCVideoCaptureServerSingleton])
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"Screen Capture failed to stop"];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCScreenCaptureManager stopScreenShare:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v18 = 136316418;
          *&v18[4] = v15;
          *&v18[12] = 2080;
          *&v18[14] = "[VCScreenCaptureManager stopScreenShare:]";
          *&v18[22] = 1024;
          LODWORD(v19) = 248;
          WORD2(v19) = 2112;
          *(&v19 + 6) = v14;
          HIWORD(v19) = 2048;
          v20 = self;
          LOWORD(v21) = 2112;
          *(&v21 + 2) = v13;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to stop, error=%@", v18, 0x3Au);
        }
      }
    }
  }

  [(VCScreenCaptureManager *)self endPrivacyAccountingInterval:a3];

  self->_screenStream = 0;
  return v13;
}

- (id)startScreenShare:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 136315906;
        *&v18[4] = v6;
        *&v18[12] = 2080;
        *&v18[14] = "[VCScreenCaptureManager startScreenShare:]";
        *&v18[22] = 1024;
        LODWORD(v19) = 285;
        WORD2(v19) = 2112;
        *(&v19 + 6) = a3;
        v8 = " [%s] %s:%d Starting: %@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v18, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 136316418;
        *&v18[4] = v11;
        *&v18[12] = 2080;
        *&v18[14] = "[VCScreenCaptureManager startScreenShare:]";
        *&v18[22] = 1024;
        LODWORD(v19) = 285;
        WORD2(v19) = 2112;
        *(&v19 + 6) = v5;
        HIWORD(v19) = 2048;
        v20 = self;
        LOWORD(v21) = 2112;
        *(&v21 + 2) = a3;
        v8 = " [%s] %s:%d %@(%p) Starting: %@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  if ([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")])
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"Screen Capture failed to start"];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCScreenCaptureManager startScreenShare:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v18 = 136316418;
          *&v18[4] = v15;
          *&v18[12] = 2080;
          *&v18[14] = "[VCScreenCaptureManager startScreenShare:]";
          *&v18[22] = 1024;
          LODWORD(v19) = 290;
          WORD2(v19) = 2112;
          *(&v19 + 6) = v14;
          HIWORD(v19) = 2048;
          v20 = self;
          LOWORD(v21) = 2112;
          *(&v21 + 2) = v13;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to start, error=%@", v18, 0x3Au);
        }
      }
    }
  }

  [(VCScreenCaptureManager *)self startPrivacyAccountingInterval:a3];
  return v13;
}

- (id)updateScreenCapture:(id)a3 withConfig:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  [a3 updateScreenCaptureWithConfig:a4];
  -[VCScreenCapturePicker setRepickingAllowed:](self->_picker, "setRepickingAllowed:", [a3 contentRepickingAllowed]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 136315906;
        *&v19[4] = v7;
        *&v19[12] = 2080;
        *&v19[14] = "[VCScreenCaptureManager updateScreenCapture:withConfig:]";
        *&v19[22] = 1024;
        LODWORD(v20) = 303;
        WORD2(v20) = 2112;
        *(&v20 + 6) = a3;
        v9 = " [%s] %s:%d Updating: %@";
        v10 = v8;
        v11 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v19, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 136316418;
        *&v19[4] = v12;
        *&v19[12] = 2080;
        *&v19[14] = "[VCScreenCaptureManager updateScreenCapture:withConfig:]";
        *&v19[22] = 1024;
        LODWORD(v20) = 303;
        WORD2(v20) = 2112;
        *(&v20 + 6) = v6;
        HIWORD(v20) = 2048;
        v21 = self;
        LOWORD(v22) = 2112;
        *(&v22 + 2) = a3;
        v9 = " [%s] %s:%d %@(%p) Updating: %@";
        v10 = v13;
        v11 = 58;
        goto LABEL_11;
      }
    }
  }

  v14 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  if (v14)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCScreenCaptureManager updateScreenCapture:withConfig:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v19 = 136316418;
          *&v19[4] = v16;
          *&v19[12] = 2080;
          *&v19[14] = "[VCScreenCaptureManager updateScreenCapture:withConfig:]";
          *&v19[22] = 1024;
          LODWORD(v20) = 307;
          WORD2(v20) = 2112;
          *(&v20 + 6) = v15;
          HIWORD(v20) = 2048;
          v21 = self;
          LOWORD(v22) = 2112;
          *(&v22 + 2) = v14;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Update operation returned error=%@", v19, 0x3Au);
        }
      }
    }
  }

  return v14;
}

- (void)createPicker
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Picker already exists", v2, v3, v4, v5, v6);
}

- (void)invalidatePicker
{
  [(VCScreenCapturePicker *)self->_picker invalidate];

  self->_picker = 0;
}

- (void)registerBlocksForService
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__VCScreenCaptureManager_registerBlocksForService__block_invoke;
  v10[3] = &unk_1E85F5100;
  v10[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_75;
  v9[3] = &unk_1E85F5100;
  v9[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_77;
  v8[3] = &unk_1E85F5100;
  v8[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_79;
  v7[3] = &unk_1E85F5100;
  v7[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_81;
  v6[3] = &unk_1E85F5100;
  v6[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_2;
  v5[3] = &unk_1E85F5100;
  v5[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_88;
  v4[3] = &unk_1E85F5100;
  v4[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_90;
  v3[3] = &unk_1E85F5100;
  v3[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

uint64_t __50__VCScreenCaptureManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    if ([a2 objectForKeyedSubscript:@"CONTEXT"])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v4;
          v17 = 2080;
          v18 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
          v19 = 1024;
          v20 = 335;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Client has died. Cleaning up VCScreenCaptureManager by removing associated objects", buf, 0x1Cu);
        }
      }

      v6 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CONTEXT"}];
      if (v6)
      {
        v7 = v6;
        [*(a1 + 32) removePickerClientScreenShare:v6];
        [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v7, "captureSourceID"))}];
      }
    }

    return 0;
  }

  v9 = [a2 objectForKeyedSubscript:@"CLIENTPID"];
  if (!v9)
  {
    __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_cold_2();
    return *buf;
  }

  v10 = [*(a1 + 32) newScreenShareWithConfig:a2 pid:v9];
  if (!v10)
  {
    __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_cold_1();
    return *buf;
  }

  v11 = v10;
  [*(*(a1 + 32) + 40) setRepickingAllowed:{objc_msgSend(v10, "contentRepickingAllowed")}];
  v12 = objc_alloc(MEMORY[0x1E695DF90]);
  v8 = [v12 initWithObjectsAndKeys:{v11, @"CONTEXT", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v11, "captureSourceID")), @"vcScreenCaptureCaptureSourceID", 0}];

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v13;
      v17 = 2080;
      v18 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
      v19 = 1024;
      v20 = 357;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Client initialized", buf, 0x1Cu);
    }
  }

  return v8;
}

uint64_t __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_75(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    v5 = [v4 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
    v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if (v6)
    {
      v7 = v6;
      [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
      [*(a1 + 32) endPrivacyAccountingInterval:v7];
      [*(a1 + 32) removePickerClientScreenShare:v7];
      [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v7, "captureSourceID"))}];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v14 = v8;
          v15 = 2080;
          v16 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
          v17 = 1024;
          v18 = 379;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Capture stopped and removed from manager", buf, 0x1Cu);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_75_cold_1();
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
        v17 = 1024;
        v18 = 366;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d context is not a class of VCScreenShare", buf, 0x1Cu);
      }
    }

    return 0;
  }

  return v5;
}

uint64_t __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_77(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v5 = [*(a1 + 32) startScreenShare:v4];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_77_cold_1();
      }
    }

    else
    {
      __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_77_cold_2();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
        v14 = 1024;
        v15 = 399;
        v16 = 1024;
        v17 = v6 == 0;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d didStart=%d error=%@", &v10, 0x2Cu);
      }
    }

    [*(a1 + 32) screenCaptureStartFor:v4 didSucceed:v6 == 0 withError:v6];
  }

  return 0;
}

uint64_t __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_79(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v5 = [*(a1 + 32) stopScreenShare:v4];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_79_cold_1();
      }
    }

    else
    {
      __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_79_cold_2();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
        v14 = 1024;
        v15 = 418;
        v16 = 1024;
        v17 = v6 == 0;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d screenCaptureStopFor didSucceed=%d error=%@", &v10, 0x2Cu);
      }
    }

    [*(a1 + 32) screenCaptureStopFor:v4 didSucceed:v6 == 0 withError:v6];
  }

  return 0;
}

uint64_t __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_81(uint64_t a1, void *a2, uint64_t *a3)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(a1 + 32) updateScreenCapture:v6 withConfig:a2];
      if (a3)
      {
        if (v7)
        {
          *a3 = v7;
        }
      }
    }
  }

  return 0;
}

uint64_t __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  [*(a1 + 32) createPicker];
  if (!*(*(a1 + 32) + 40))
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_2_cold_2();
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        *buf = 136316162;
        v34 = v24;
        v35 = 2080;
        v36 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
        v37 = 1024;
        v38 = 454;
        v39 = 2112;
        v40 = v21;
        v41 = 2048;
        v42 = v26;
        v27 = " [%s] %s:%d %@(%p) could not create picker";
        v28 = v25;
        v29 = 48;
LABEL_41:
        _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
      }
    }

    return 0;
  }

  v6 = [a2 objectForKeyedSubscript:@"vcScreenCapturePickerAuditToken"];
  if (v6 && (v7 = v6, ([v6 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0))
  {
    v8 = [+[AVCAuditToken deserializeAuditTokens:](AVCAuditToken deserializeAuditTokens:{v7), "firstObject"}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(*(a1 + 32) + 40) activatePickerWithMediaAttributionToken:v8];
  if (v9)
  {
    v22 = v9;
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_2_cold_1();
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v23 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 32);
        *buf = 136316418;
        v34 = v30;
        v35 = 2080;
        v36 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
        v37 = 1024;
        v38 = 461;
        v39 = 2112;
        v40 = v23;
        v41 = 2048;
        v42 = v32;
        v43 = 2112;
        v44 = v22;
        v27 = " [%s] %s:%d %@(%p) picker activation failed with error=%@";
        v28 = v31;
        v29 = 58;
        goto LABEL_41;
      }
    }

    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{*(*(a1 + 32) + 40), @"CONTEXT", 0}];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(a1 + 32) + 40);
        *buf = 136315906;
        v34 = v11;
        v35 = 2080;
        v36 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
        v37 = 1024;
        v38 = 464;
        v39 = 2048;
        v40 = v13;
        v14 = " [%s] %s:%d picker=%p initialized";
        v15 = v12;
        v16 = 38;
LABEL_20:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v20 = *(v19 + 40);
        *buf = 136316418;
        v34 = v17;
        v35 = 2080;
        v36 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
        v37 = 1024;
        v38 = 464;
        v39 = 2112;
        v40 = v10;
        v41 = 2048;
        v42 = v19;
        v43 = 2048;
        v44 = v20;
        v14 = " [%s] %s:%d %@(%p) picker=%p initialized";
        v15 = v18;
        v16 = 58;
        goto LABEL_20;
      }
    }
  }

  return v4;
}

uint64_t __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_88(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v5 = *(a1 + 32);
    if (v4 == v5[5])
    {
      [v5 invalidatePicker];
      v9 = objc_alloc(MEMORY[0x1E695DF20]);
      return [v9 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCScreenCaptureManager registerBlocksForService]_block_invoke";
        v14 = 1024;
        v15 = 476;
        v16 = 2048;
        v17 = v4;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid picker=%p", buf, 0x26u);
      }
    }
  }

  return 0;
}

uint64_t __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_90(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [*(*(a1 + 32) + 40) showWithStream:*(*(a1 + 32) + 56)];
  }

  return 0;
}

- (void)startPrivacyAccountingInterval:(id)a3
{
  if ([a3 selectiveScreenUUID])
  {
    v4 = [MEMORY[0x1E69C5A40] applicationWithType:0 identifier:@"com.apple.facetime"];
    v5 = [MEMORY[0x1E69C5A38] sharedInstance];
    self->_accessInterval = [v5 beginIntervalForAccess:{objc_msgSend(MEMORY[0x1E69C5A50], "accessWithAccessor:fromBroadcaster:", v4, v4)}];
  }
}

- (void)endPrivacyAccountingInterval:(id)a3
{
  if ([a3 selectiveScreenUUID])
  {
    accessInterval = self->_accessInterval;
    if (accessInterval)
    {
      [(PAAccessInterval *)accessInterval end];

      self->_accessInterval = 0;
    }
  }
}

- (id)errorForAttributesError:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v21 = v6;
          v22 = 2080;
          v23 = "[VCScreenCaptureManager errorForAttributesError:]";
          v24 = 1024;
          v25 = 537;
          v26 = 2112;
          v27 = a3;
          v9 = " [%s] %s:%d error=%@";
          v10 = v7;
          v11 = 38;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [VCScreenCaptureManager errorForAttributesError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v21 = v12;
          v22 = 2080;
          v23 = "[VCScreenCaptureManager errorForAttributesError:]";
          v24 = 1024;
          v25 = 537;
          v26 = 2112;
          v27 = v5;
          v28 = 2048;
          v29 = self;
          v30 = 2112;
          v31 = a3;
          v9 = " [%s] %s:%d %@(%p) error=%@";
          v10 = v13;
          v11 = 58;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v21 = v12;
        v22 = 2080;
        v23 = "[VCScreenCaptureManager errorForAttributesError:]";
        v24 = 1024;
        v25 = 537;
        v26 = 2112;
        v27 = v5;
        v28 = 2048;
        v29 = self;
        v30 = 2112;
        v31 = a3;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
      }
    }
  }

  v18[0] = @"vcScreenCaptureAttributesErrorDomain";
  v19[0] = [a3 domain];
  v18[1] = @"vcScreenCaptureAttributesErrorCode";
  v19[1] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "code")}];
  v18[2] = @"vcScreenCaptureAttributesErrorUserInfo";
  v19[2] = [a3 userInfo];
  v16 = @"vcScreenCaptureAttributesError";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
}

- (id)updateCurrentPickerScreenCapture
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  if (!v3)
  {
    return v3;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v3;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v3;
    }

    contentFilter = self->_contentFilter;
    pickerClientScreenShare = self->_pickerClientScreenShare;
    v17 = 136316418;
    v18 = v5;
    v19 = 2080;
    v20 = "[VCScreenCaptureManager updateCurrentPickerScreenCapture]";
    v21 = 1024;
    v22 = 589;
    v23 = 2048;
    v24 = contentFilter;
    v25 = 2112;
    v26 = pickerClientScreenShare;
    v27 = 2112;
    v28 = v3;
    v9 = " [%s] %s:%d failed to update content filter=%p on screenshare=%@ with error=%@";
    v10 = v6;
    v11 = 58;
LABEL_13:
    _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, &v17, v11);
    return v3;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v15 = self->_contentFilter;
      v16 = self->_pickerClientScreenShare;
      v17 = 136316930;
      v18 = v12;
      v19 = 2080;
      v20 = "[VCScreenCaptureManager updateCurrentPickerScreenCapture]";
      v21 = 1024;
      v22 = 589;
      v23 = 2112;
      v24 = v4;
      v25 = 2048;
      v26 = self;
      v27 = 2048;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v3;
      v9 = " [%s] %s:%d %@(%p) failed to update content filter=%p on screenshare=%@ with error=%@";
      v10 = v13;
      v11 = 78;
      goto LABEL_13;
    }
  }

  return v3;
}

- (BOOL)isPickerClientProcessId:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__b length:proc_pidpath(objc_msgSend(a3 encoding:{"intValue"), __b, 0x1000u), 4}];
  if (v4 && [MEMORY[0x1E695DFF8] fileURLWithPath:v4])
  {
    if ([@"callservicesd" isEqualToString:{objc_msgSend(v4, "lastPathComponent")}])
    {
      v5 = 1;
    }

    else
    {
      v5 = [@"AVConferenceTestRunner" isEqualToString:{objc_msgSend(v4, "lastPathComponent")}];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stopScreenShareAndNotifyDelegate:(id)a3
{
  *&v39[11] = *MEMORY[0x1E69E9840];
  pickerClientScreenShare = self->_pickerClientScreenShare;
  if (!pickerClientScreenShare)
  {
    return 0;
  }

  v6 = objc_opt_class();
  v7 = MEMORY[0x1E6986650];
  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 136315906;
        *&v34[4] = v9;
        OUTLINED_FUNCTION_6_5();
        *&v34[14] = "[VCScreenCaptureManager stopScreenShareAndNotifyDelegate:]";
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_29();
        *v37 = pickerClientScreenShare;
        v11 = " [%s] %s:%d Stopping: %@";
        v12 = v10;
        v13 = 38;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v34, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 136316418;
        *&v34[4] = v14;
        OUTLINED_FUNCTION_6_5();
        *&v34[14] = "[VCScreenCaptureManager stopScreenShareAndNotifyDelegate:]";
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_29();
        *v37 = v8;
        OUTLINED_FUNCTION_12_8();
        *v39 = pickerClientScreenShare;
        v11 = " [%s] %s:%d %@(%p) Stopping: %@";
        v12 = v15;
        v13 = 58;
        goto LABEL_12;
      }
    }
  }

  v16 = [(VCScreenCaptureManager *)self stopScreenShare:pickerClientScreenShare, *v34, *&v34[16]];
  if (v16)
  {
    v17 = [a3 code] != 32000;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *v34 = 136315906;
          *&v34[4] = v19;
          OUTLINED_FUNCTION_6_5();
          *&v34[14] = "[VCScreenCaptureManager stopScreenShareAndNotifyDelegate:]";
          OUTLINED_FUNCTION_4_2();
          OUTLINED_FUNCTION_29();
          *v37 = v16;
          _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to stop, error=%@", v34, 0x26u);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *v34 = 136316418;
          *&v34[4] = v21;
          OUTLINED_FUNCTION_6_5();
          *&v34[14] = "[VCScreenCaptureManager stopScreenShareAndNotifyDelegate:]";
          OUTLINED_FUNCTION_4_2();
          OUTLINED_FUNCTION_29();
          *v37 = v18;
          OUTLINED_FUNCTION_12_8();
          *v39 = v16;
          _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to stop, error=%@", v34, 0x3Au);
        }
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (!a3)
  {
    a3 = v16;
  }

  [(VCScreenCaptureManager *)self screenCaptureStopFor:pickerClientScreenShare didSucceed:v17 withError:a3];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 136316162;
        *&v34[4] = v24;
        OUTLINED_FUNCTION_6_5();
        *&v34[14] = "[VCScreenCaptureManager stopScreenShareAndNotifyDelegate:]";
        OUTLINED_FUNCTION_4_2();
        v35 = 276;
        v36 = v26;
        *v37 = v17;
        *&v37[4] = 2112;
        *&v37[6] = a3;
        v27 = " [%s] %s:%d didSucceed=%hhd error=%@";
        v28 = v25;
        v29 = 44;
LABEL_37:
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, v34, v29);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v23 = [(VCScreenCaptureManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v23 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 136316674;
        *&v34[4] = v30;
        OUTLINED_FUNCTION_6_5();
        *&v34[14] = "[VCScreenCaptureManager stopScreenShareAndNotifyDelegate:]";
        OUTLINED_FUNCTION_4_2();
        v35 = 276;
        v36 = 2112;
        *v37 = v23;
        *&v37[8] = 2048;
        *&v37[10] = self;
        v38 = v32;
        *v39 = v17;
        v39[2] = 2112;
        *&v39[3] = a3;
        v27 = " [%s] %s:%d %@(%p) didSucceed=%hhd error=%@";
        v28 = v31;
        v29 = 64;
        goto LABEL_37;
      }
    }
  }

  return v16;
}

- (void)init
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

void __VCScreenCaptureManager_ScreenShareDidClearScreen_block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newScreenShareWithConfig:(int)a1 pid:.cold.1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to create VCScreenShare object", v3, v4, v5, v6, v7);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)newScreenShareWithConfig:pid:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to get capture source id", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)stopScreenShare:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to stop, error=%@");
}

- (void)startScreenShare:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to start, error=%@");
}

- (void)updateScreenCapture:withConfig:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Update operation returned error=%@");
}

void __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create VCScreenShare object", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

void __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to get client pid", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

void __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_75_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Did not find corresponding screen share while terminating", v2, v3, v4, v5, v6);
}

void __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_77_cold_1()
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

void __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_77_cold_2()
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

void __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_79_cold_1()
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

void __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_79_cold_2()
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

void __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d picker activation failed with error=%@");
}

void __50__VCScreenCaptureManager_registerBlocksForService__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d could not create picker", v2, v3, v4, v5, v6);
}

- (void)errorForAttributesError:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCScreenCaptureManager errorForAttributesError:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  v6 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d error=%@", v3, 0x26u);
}

@end