@interface VCScreenCapture
- (VCScreenCapture)initWithCaptureServer:(id)a3 protocolFunctions:(const tagVCVideoCaptureServerProtocolRealtimeInstanceVTable *)a4 sourceConfig:(id)a5;
- (int)_startCapture;
- (int)frameCount:(BOOL)a3;
- (int)setFrameRate:(int)a3;
- (int)stop:(BOOL)a3;
- (int)updateScreenCapture:(id)a3;
- (opaqueCMSampleBuffer)newIdleBlackFrameWithAttributes:(id *)a3;
- (uint64_t)_startCapture;
- (void)_startCapture;
- (void)dealloc;
- (void)screenCaptureSourceConfigCannedCapture;
- (void)screenCaptureSourceProcessEventString:(id)a3;
- (void)screenCaptureSourceShouldClearScreen:(BOOL)a3;
- (void)setPauseCapture:(BOOL)a3;
- (void)startClearScreenProc;
- (void)stopClearScreenProc;
@end

@implementation VCScreenCapture

- (VCScreenCapture)initWithCaptureServer:(id)a3 protocolFunctions:(const tagVCVideoCaptureServerProtocolRealtimeInstanceVTable *)a4 sourceConfig:(id)a5
{
  v98[1] = *MEMORY[0x1E69E9840];
  v84 = [objc_msgSend(a5 objectForKeyedSubscript:{@"VideoWidth", "intValue"}];
  v83 = [objc_msgSend(a5 objectForKeyedSubscript:{@"VideoHeight", "intValue"}];
  v8 = [objc_msgSend(a5 "objectForKeyedSubscript:"intValue"")];
  v80 = [objc_msgSend(a5 objectForKeyedSubscript:{@"ShouldSendBlackFramesOnClearScreen", "BOOLValue"}];
  v79 = [objc_msgSend(a5 objectForKeyedSubscript:{@"ResolutionScaling", "intValue"}];
  v81 = [objc_msgSend(a5 objectForKeyedSubscript:{@"EnableIdleFrameAdjustments", "BOOLValue"}];
  if ([a5 objectForKeyedSubscript:@"CaptureSourceID"])
  {
    v9 = [objc_msgSend(a5 objectForKeyedSubscript:{@"CaptureSourceID", "integerValue"}];
  }

  else
  {
    v9 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v87 = v10;
      v88 = 2080;
      v89 = "[VCScreenCapture initWithCaptureServer:protocolFunctions:sourceConfig:]";
      v90 = 1024;
      v91 = 846;
      v92 = 1024;
      *v93 = v84;
      *&v93[4] = 1024;
      *&v93[6] = v83;
      LOWORD(v94) = 1024;
      *(&v94 + 2) = v8;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d width=%d, height=%d, frameRate=%d", buf, 0x2Eu);
    }
  }

  if (!a3 || !v84 || !v83 || !v8)
  {

    return 0;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  v85.receiver = self;
  v85.super_class = VCScreenCapture;
  v13 = [(VCVideoCapture *)&v85 initWithCaptureServer:v12 protocolFunctions:a4];
  v14 = v13;
  if (v13)
  {
    *(v13 + 21) = v9;
    v15 = MEMORY[0x1E6960CC0];
    *(v13 + 404) = *MEMORY[0x1E6960CC0];
    *(v13 + 420) = *(v15 + 16);
    v13[494] = 0;
    v13[384] = v80;
    *(v13 + 122) = v79;
    *(v13 + 116) = v84;
    *(v13 + 117) = v83;
    *(v13 + 79) = v8;
    v16 = [objc_msgSend(a5 objectForKeyedSubscript:{@"VideoWidth", "intValue"}];
    v17 = [objc_msgSend(a5 objectForKeyedSubscript:{@"VideoHeight", "intValue"}];
    v99.width = v16;
    v99.height = v17;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v99);
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v19 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6973EB0]];
    v20 = [a5 objectForKeyedSubscript:@"ScreenCaptureUUID"];
    if (v20 == [MEMORY[0x1E695DFB0] null])
    {
      v21 = 0;
    }

    else
    {
      v21 = [a5 objectForKeyedSubscript:@"ScreenCaptureUUID"];
    }

    [v19 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6973EB8]];
    v22 = [a5 objectForKeyedSubscript:@"RemoteDeviceName"];
    if (([v22 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
    {
      v23 = [a5 objectForKeyedSubscript:@"RemoteDeviceName"];
      [v19 setObject:v23 forKeyedSubscript:*MEMORY[0x1E6973EA8]];
    }

    CFRelease(DictionaryRepresentation);
    v24 = [objc_msgSend(a5 objectForKeyedSubscript:{@"HDRMode", "intValue"}];
    v25 = v24;
    v26 = MEMORY[0x1E6973EF0];
    v27 = MEMORY[0x1E6973DF0];
    v28 = MEMORY[0x1E6973EE8];
    v29 = MEMORY[0x1E6973DF8];
    if (v24 == 2)
    {
      v29 = MEMORY[0x1E6973DE8];
      v28 = MEMORY[0x1E6973EF0];
    }

    if (v24 != 1)
    {
      v27 = v29;
      v26 = v28;
    }

    v30 = *v27;
    v31 = *v26;
    v97 = *MEMORY[0x1E6973E00];
    v98[0] = v30;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:&v97 count:1];
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = [a5 objectForKeyedSubscript:@"FrameRate"];
    [v33 setObject:v34 forKeyedSubscript:*MEMORY[0x1E6973ED0]];
    v35 = [a5 objectForKeyedSubscript:@"FrameRate"];
    [v33 setObject:v35 forKeyedSubscript:*MEMORY[0x1E6973E20]];
    v36 = [a5 objectForKeyedSubscript:@"PixelFormat"];
    [v33 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6973E28]];
    [v33 setObject:&unk_1F5798CE8 forKeyedSubscript:*MEMORY[0x1E6973E80]];
    [v33 setObject:v31 forKeyedSubscript:*MEMORY[0x1E6973E90]];
    [v33 setObject:&unk_1F5798D00 forKeyedSubscript:*MEMORY[0x1E6973E48]];
    v37 = [a5 objectForKeyedSubscript:@"ShouldSupressDRMContent"];
    [v33 setObject:v37 forKeyedSubscript:*MEMORY[0x1E6973E88]];
    v38 = [a5 objectForKeyedSubscript:@"ScreenCaptureUUID"];
    if (v38 == [MEMORY[0x1E695DFB0] null])
    {
      v39 = 0;
    }

    else
    {
      v39 = [a5 objectForKeyedSubscript:@"ScreenCaptureUUID"];
    }

    [v33 setObject:v39 forKeyedSubscript:*MEMORY[0x1E6973E78]];
    v40 = objc_opt_new();
    v41 = [a5 objectForKeyedSubscript:@"PdProtectionOptions"];
    [v40 setObject:v41 forKeyedSubscript:*MEMORY[0x1E6973EA0]];
    [v33 setObject:v40 forKeyedSubscript:*MEMORY[0x1E6973E70]];

    if ([VCDefaults BOOLeanValueForKey:@"forceScreenCaptureToMod16" defaultValue:0])
    {
      [v33 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6973E38]];
    }

    if ([objc_msgSend(a5 objectForKeyedSubscript:{@"ClientPid", "intValue"}])
    {
      v42 = [a5 objectForKeyedSubscript:@"ClientPid"];
      [v33 setObject:v42 forKeyedSubscript:*MEMORY[0x1E6973E18]];
    }

    v43 = [a5 objectForKeyedSubscript:@"ClientBundleID"];
    if (v43)
    {
      v44 = v43;
      if (([v43 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
      {
        [v33 setObject:v44 forKeyedSubscript:*MEMORY[0x1E6973E10]];
      }
    }

    v45 = [objc_msgSend(a5 objectForKeyedSubscript:{@"ScreenCaptureConfigurationDisplayMode", "intValue"}];
    v46 = MEMORY[0x1E6973E58];
    if (v45 <= 2)
    {
      v47 = qword_1E85F5578[v45];
      [v33 setObject:qword_1E85F5560[v45] forKeyedSubscript:*MEMORY[0x1E6973E50]];
      [v33 setObject:v47 forKeyedSubscript:*v46];
    }

    v48 = [objc_msgSend(a5 objectForKeyedSubscript:{@"HasPrivateCaptureEntitlement", "BOOLValue"}];
    v49 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-screen-capture-private-content-capture-disabled" userDefaultKey:@"screenCaptureDisablePrivateContentCapture" defaultValue:&unk_1F5798D18 isDoubleType:{0), "BOOLValue"}];
    v50 = MEMORY[0x1E6986650];
    if (v48)
    {
      v51 = v49;
      if ((v49 & 1) == 0)
      {
        v52 = v32;
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v53 = VRTraceErrorLogLevelToCSTR();
          v54 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v87 = v53;
            v88 = 2080;
            v89 = "_VCScreenCapture_canCapturePrivateContent";
            v90 = 1024;
            v91 = 730;
            v92 = 1024;
            *v93 = 1;
            *&v93[4] = 1024;
            *&v93[6] = v51;
            _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d hasPrivateCaptureEntitlement=%d privateContentCaptureDisable=%d", buf, 0x28u);
          }
        }

        [v33 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6973E40]];
        v32 = v52;
        v50 = MEMORY[0x1E6986650];
      }
    }

    v55 = [a5 objectForKeyedSubscript:@"ScreenVirtualDisplayLabel"];
    if (v55)
    {
      v56 = v55;
      if (([v55 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
      {
        [v33 setObject:v56 forKeyedSubscript:*MEMORY[0x1E6973E30]];
        [v33 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6973E98]];
        v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_msgSend(MEMORY[0x1E6979328], "mainDisplay"), "pointScale")}];
        [v19 setObject:v57 forKeyedSubscript:*MEMORY[0x1E6973EC8]];
        v58 = MEMORY[0x1E696AD98];
        [objc_msgSend(MEMORY[0x1E6979328] "mainDisplay")];
        v60 = [v58 numberWithDouble:v59];
        [v33 setObject:v60 forKeyedSubscript:*MEMORY[0x1E6973E68]];
        v61 = MEMORY[0x1E696AD98];
        v46 = MEMORY[0x1E6973E58];
        [objc_msgSend(MEMORY[0x1E6979328] "mainDisplay")];
        v63 = [v61 numberWithDouble:v62];
        [v33 setObject:v63 forKeyedSubscript:*MEMORY[0x1E6973E60]];
      }
    }

    v64 = [a5 objectForKeyedSubscript:@"AllowRemoteControlLayers"];
    [v33 setObject:v64 forKeyedSubscript:*MEMORY[0x1E6973E08]];
    if (v25)
    {
      [v33 setObject:v32 forKeyedSubscript:*MEMORY[0x1E6973EC0]];
      [v33 setObject:&unk_1F5798CE8 forKeyedSubscript:*v46];
    }

    [v33 setObject:v19 forKeyedSubscript:*MEMORY[0x1E6973ED8]];

    *(v14 + 19) = v33;
    v14[476] = v81;
    *(v14 + 120) = 0;
    *(v14 + 124) = 0;
    v14[484] = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v65 = VRTraceErrorLogLevelToCSTR();
      v66 = *v50;
      if (os_log_type_enabled(*v50, OS_LOG_TYPE_DEFAULT))
      {
        v67 = *(v14 + 116);
        v68 = *(v14 + 117);
        *buf = 136316162;
        v87 = v65;
        v88 = 2080;
        v89 = "[VCScreenCapture initWithCaptureServer:protocolFunctions:sourceConfig:]";
        v90 = 1024;
        v91 = 871;
        v92 = 1024;
        *v93 = v67;
        *&v93[4] = 1024;
        *&v93[6] = v68;
        _os_log_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d VCScreenCapture init width=%d height=%d", buf, 0x28u);
      }
    }

    pthread_mutex_init((v14 + 176), 0);
    pthread_mutex_init(v14 + 5, 0);
    pthread_cond_init((v14 + 256), 0);
    v69 = *MEMORY[0x1E695E480];
    VTImageRotationSessionCreate();
    createPixelBufferPool(v14 + 57, v84, v83);
    VTPixelTransferSessionCreate(v69, v14 + 55);
    VTSessionSetProperty(*(v14 + 55), *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E8]);
    PixelBufferPool = createPixelBufferPool(v14 + 54, v84, v83);
    if (!*(v14 + 57) || !*(v14 + 56) || !*(v14 + 19) || PixelBufferPool)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v71 = VRTraceErrorLogLevelToCSTR();
        v72 = *v50;
        if (os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
        {
          v76 = *(v14 + 56);
          v77 = *(v14 + 57);
          v78 = *(v14 + 19);
          *buf = 136316418;
          v87 = v71;
          v88 = 2080;
          v89 = "[VCScreenCapture initWithCaptureServer:protocolFunctions:sourceConfig:]";
          v90 = 1024;
          v91 = 890;
          v92 = 2048;
          *v93 = v76;
          *&v93[8] = 2048;
          v94 = v77;
          v95 = 2048;
          v96 = v78;
          _os_log_error_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_ERROR, "VCScreenCapture [%s] %s:%d VCScreenCapture init failed rotationSession(%p) rotationBufferPool(%p) options(%p)", buf, 0x3Au);
        }
      }

      v73 = *(v14 + 57);
      if (v73)
      {
        CVPixelBufferPoolRelease(v73);
      }

      if (*(v14 + 56))
      {
        VTImageRotationSessionRelease();
      }

      v74 = *(v14 + 19);
      if (v74)
      {
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
        {
          [VCScreenCapture initWithCaptureServer:protocolFunctions:sourceConfig:];
        }
      }

      return 0;
    }
  }

  return v14;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(VCScreenCapture *)self stop:1];
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    CVPixelBufferPoolRelease(rotationSession);
  }

  if (self->_resizeTransferSession)
  {
    VTImageRotationSessionRelease();
  }

  resizeBufferPool = self->_resizeBufferPool;
  if (resizeBufferPool)
  {
    VTPixelTransferSessionInvalidate(resizeBufferPool);
    v5 = self->_resizeBufferPool;
    if (v5)
    {
      CFRelease(v5);
      self->_resizeBufferPool = 0;
    }
  }

  CVPixelBufferPoolRelease(*&self->_shouldClearScreen);
  blackFrame = self->_blackFrame;
  if (blackFrame)
  {
    CFRelease(blackFrame);
  }

  previousCompleteFrame = self->_previousCompleteFrame;
  if (previousCompleteFrame)
  {
    CFRelease(previousCompleteFrame);
  }

  pthread_mutex_destroy(&self->_clearScreenLock);
  pthread_cond_destroy(&self->_clearScreenChanged);
  pthread_mutex_destroy(&self->_screenCaptureLock);

  v8.receiver = self;
  v8.super_class = VCScreenCapture;
  [(VCVideoCapture *)&v8 dealloc];
}

- (int)_startCapture
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_screenCaptureLock);
  blackFrame = self->_blackFrame;
  if (blackFrame)
  {
    CFRelease(blackFrame);
    self->_blackFrame = 0;
  }

  previousCompleteFrame = self->_previousCompleteFrame;
  if (previousCompleteFrame)
  {
    CFRelease(previousCompleteFrame);
    self->_previousCompleteFrame = 0;
  }

  [(VCScreenCapture *)self startClearScreenProc];
  v10[0] = self;
  v10[1] = _VCScreenCapture_handleFrame;
  v10[2] = [(VCVideoCapture *)self cannedScreenCaptureSource];
  v5 = off_1E85F1F88;
  if ((VCFeatureFlagManager_UseAvconferencedOniOSSpecficFeatures() & 1) == 0 && ![VCDefaults BOOLeanValueForKey:@"useScreenCaptureController" defaultValue:0])
  {
    v5 = off_1E85F1F90;
  }

  v6 = [objc_alloc(*v5) initWithDelegate:self screenCaptureSourceContext:v10];
  self->_screenCapture = v6;
  if (!v6)
  {
    [(VCScreenCapture *)&v11 _startCapture];
    v8 = v11;
    goto LABEL_14;
  }

  v7 = [(VCScreenCaptureSource *)v6 startScreenCaptureWithConfig:self->_options];
  v8 = v7;
  if (v7)
  {
    if (([(VCScreenCapture *)v7 _startCapture]& 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    [(VCScreenCapture *)self stopClearScreenProc];
    goto LABEL_11;
  }

  self->_isCapturing = 1;
  self->_isPreviewing = 1;
LABEL_11:
  pthread_mutex_unlock(&self->_screenCaptureLock);
  return v8;
}

- (int)stop:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCScreenCapture stop:]";
      v14 = 1024;
      v15 = 994;
      v16 = 1024;
      v17 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d shouldClosePreview=%d", &v10, 0x22u);
    }
  }

  pthread_mutex_lock(&self->_screenCaptureLock);
  [(VCScreenCaptureSource *)self->_screenCapture stopScreenCapture];
  [(VCScreenCaptureSource *)self->_screenCapture finalize];

  self->_screenCapture = 0;
  [(VCScreenCapture *)self stopClearScreenProc];
  blackFrame = self->_blackFrame;
  if (blackFrame)
  {
    CFRelease(blackFrame);
    self->_blackFrame = 0;
  }

  previousCompleteFrame = self->_previousCompleteFrame;
  if (previousCompleteFrame)
  {
    CFRelease(previousCompleteFrame);
    self->_previousCompleteFrame = 0;
  }

  pthread_mutex_unlock(&self->_screenCaptureLock);
  return 0;
}

- (int)updateScreenCapture:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = v5;
        v15 = 2080;
        v16 = "[VCScreenCapture updateScreenCapture:]";
        v17 = 1024;
        v18 = 1010;
        v7 = "VCScreenCapture [%s] %s:%d Update is not supported";
        v8 = v6;
        v9 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCScreenCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316162;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCScreenCapture updateScreenCapture:]";
        v17 = 1024;
        v18 = 1010;
        v19 = 2112;
        v20 = v4;
        v21 = 2048;
        v22 = self;
        v7 = "VCScreenCapture [%s] %s:%d %@(%p) Update is not supported";
        v8 = v11;
        v9 = 48;
        goto LABEL_11;
      }
    }
  }

  return 0;
}

- (void)setPauseCapture:(BOOL)a3
{
  screenCapture = self->_screenCapture;
  if (screenCapture)
  {
    [(VCScreenCaptureSource *)screenCapture pauseScreenCapture:?];
    self->_capturePaused = a3;
  }
}

- (void)startClearScreenProc
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 1036;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCScreenCapture [%s] %s:%d Failed to create clearScreenProc", v2);
}

- (void)stopClearScreenProc
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = self;
  pthread_mutex_lock(&self->_clearScreenLock);
  if (self->_clearScreenProc && self->_isClearScreenThreadRunning)
  {
    self->_isClearScreenThreadRunning = 0;
    BYTE4(self->_previousFrameTime.epoch) = 0;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      v21 = v4;
      v22 = 2080;
      v23 = "[VCScreenCapture stopClearScreenProc]";
      v24 = 1024;
      v25 = 1049;
      v6 = "VCScreenCapture [%s] %s:%d Signal condition clearScreenChanged";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCScreenCapture *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136316162;
      v21 = v9;
      v22 = 2080;
      v23 = "[VCScreenCapture stopClearScreenProc]";
      v24 = 1024;
      v25 = 1049;
      v26 = 2112;
      v27 = v3;
      v28 = 2048;
      v29 = self;
      v6 = "VCScreenCapture [%s] %s:%d %@(%p) Signal condition clearScreenChanged";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
LABEL_14:
    pthread_cond_signal(&self->_clearScreenChanged);
  }

  pthread_mutex_unlock(&self->_clearScreenLock);
  pthread_join(self->_clearScreenProc, &v19);
  *(v19 + 31) = 0;
  if (objc_opt_class() == v19)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v21 = v12;
        v22 = 2080;
        v23 = "[VCScreenCapture stopClearScreenProc]";
        v24 = 1024;
        v25 = 1055;
        v14 = "VCScreenCapture [%s] %s:%d Stopped clearScreenProc";
        v15 = v13;
        v16 = 28;
LABEL_25:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v19 performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v21 = v17;
        v22 = 2080;
        v23 = "[VCScreenCapture stopClearScreenProc]";
        v24 = 1024;
        v25 = 1055;
        v26 = 2112;
        v27 = v11;
        v28 = 2048;
        v29 = v19;
        v14 = "VCScreenCapture [%s] %s:%d %@(%p) Stopped clearScreenProc";
        v15 = v18;
        v16 = 48;
        goto LABEL_25;
      }
    }
  }
}

- (int)frameCount:(BOOL)a3
{
  currentTransform = self->_currentTransform;
  if (a3)
  {
    self->_currentTransform = 0;
  }

  return currentTransform;
}

- (void)screenCaptureSourceShouldClearScreen:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&self->_clearScreenLock);
  _VCScreenCapture_UpdateShouldClearScreen(self, v3);

  pthread_mutex_unlock(&self->_clearScreenLock);
}

- (void)screenCaptureSourceProcessEventString:(id)a3
{
  v4 = [(VCVideoCapture *)self captureServer];

  [(VCVideoCaptureServer *)v4 handleCaptureEvent:a3];
}

- (void)screenCaptureSourceConfigCannedCapture
{
  [(VCCannedVideoCaptureSource *)[(VCVideoCapture *)self cannedScreenCaptureSource] setWidth:LODWORD(self->_rotationBufferPool) height:HIDWORD(self->_rotationBufferPool)];
  v3 = [(VCVideoCapture *)self cannedScreenCaptureSource];
  captureFramerate = self->_captureFramerate;

  [(VCCannedVideoCaptureSource *)v3 setFrameRate:captureFramerate];
}

- (opaqueCMSampleBuffer)newIdleBlackFrameWithAttributes:(id *)a3
{
  v73 = *MEMORY[0x1E69E9840];
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  if (!self->_shouldSendBlackFramesOnClearScreen)
  {
    return 0;
  }

  result = self->_previousCompleteFrame;
  if (!result)
  {
    return result;
  }

  if (BYTE4(self->_previousFrameTime.epoch) != 1)
  {
    return 0;
  }

  if (self->_isPreviousCompleteFrameBlack)
  {
    _VCScreenCapture_setRepeatFrameAttributes(self->_blackFrame, 1);
    goto LABEL_49;
  }

  if (self->_blackFrame)
  {
    CFRelease(self->_blackFrame);
    self->_blackFrame = 0;
    result = self->_previousCompleteFrame;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(result);
  if (!ImageBuffer)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_31;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_4_9();
    v72 = 235;
    v21 = "VCScreenCapture [%s] %s:%d Failed to get image buffer";
LABEL_83:
    OUTLINED_FUNCTION_7_6(&dword_1DB56E000, v19, v20, v21, &buf);
    goto LABEL_31;
  }

  if (!CVPixelBufferGetIOSurface(ImageBuffer))
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_31;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_4_9();
    v72 = 237;
    v21 = "VCScreenCapture [%s] %s:%d CVPixelBufferGetIOSurface returned NULL";
    goto LABEL_83;
  }

  if (IOSurfaceGetProtectionOptions())
  {
    previousCompleteFrame = self->_previousCompleteFrame;
    pixelBufferOut = 0;
    pixelTransferSessionOut = 0;
    self->_blackFrame = 0;
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_40())
        {
          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_4_9();
          v72 = 252;
          OUTLINED_FUNCTION_7_6(&dword_1DB56E000, v55, v56, "VCScreenCapture [%s] %s:%d Failed to create dictionary for IOSurfaceProperties", &buf);
        }
      }

      goto LABEL_24;
    }

    v10 = Mutable;
    v11 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v11)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v57 = VRTraceErrorLogLevelToCSTR();
        v58 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.value) = 136315650;
          *(&buf.value + 4) = v57;
          OUTLINED_FUNCTION_4_9();
          v72 = 254;
          OUTLINED_FUNCTION_26(&dword_1DB56E000, v58, v65, "VCScreenCapture [%s] %s:%d Failed to create dictionary for Pixel Buffer attributes", &buf);
        }
      }

      v18 = v10;
LABEL_23:
      CFRelease(v18);
LABEL_24:
      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
      }

      goto LABEL_48;
    }

    v12 = v11;
    CFDictionarySetValue(v11, *MEMORY[0x1E69660D8], v10);
    if (CVPixelBufferCreate(v8, 0x40uLL, 0x40uLL, 0x42475241u, v12, &pixelBufferOut))
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_22;
      }

      VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_6_12();
      OUTLINED_FUNCTION_4_9();
      v72 = 259;
      v61 = "VCScreenCapture [%s] %s:%d CVPixelBufferCreate() failed for black frame generation";
    }

    else if (VTPixelTransferSessionCreate(v8, &pixelTransferSessionOut))
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_22;
      }

      VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_6_12();
      OUTLINED_FUNCTION_4_9();
      v72 = 262;
      v61 = "VCScreenCapture [%s] %s:%d Pixel transfer session creation failed";
    }

    else
    {
      v14 = pixelBufferOut;
      v13 = pixelTransferSessionOut;
      v15 = CMSampleBufferGetImageBuffer(previousCompleteFrame);
      if (!VTPixelTransferSessionTransferImage(v13, v14, v15))
      {
        if (previousCompleteFrame)
        {
          v16 = CFRetain(previousCompleteFrame);
        }

        else
        {
          v16 = 0;
        }

        self->_blackFrame = v16;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_6_12();
            OUTLINED_FUNCTION_4_9();
            v72 = 267;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Created blackframe on idle/lock screen for protected IOSurface", &buf, 0x1Cu);
          }
        }

LABEL_22:
        CFRelease(v10);
        CFRelease(v12);
        v18 = pixelTransferSessionOut;
        if (!pixelTransferSessionOut)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_22;
      }

      VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_6_12();
      OUTLINED_FUNCTION_4_9();
      v72 = 264;
      v61 = "VCScreenCapture [%s] %s:%d VTPixelTransferSessionTransferImage() failed for black frame generation";
    }

    OUTLINED_FUNCTION_26(&dword_1DB56E000, v59, v60, v61, &buf);
    goto LABEL_22;
  }

LABEL_31:
  v22 = self->_previousCompleteFrame;
  v23 = CMSampleBufferGetImageBuffer(v22);
  if (!v23)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_4_9();
        v72 = 285;
        OUTLINED_FUNCTION_7_6(&dword_1DB56E000, v66, v67, "VCScreenCapture [%s] %s:%d Failed to get image buffer", &buf);
      }
    }

    v27 = 0;
    goto LABEL_47;
  }

  v24 = v23;
  PixelFormatType = CVPixelBufferGetPixelFormatType(v23);
  Width = CVPixelBufferGetWidth(v24);
  v27 = [[VCImageResizingConverter alloc] initWithOutputWidth:Width outputHeight:CVPixelBufferGetHeight(v24) formatType:PixelFormatType];
  CMSampleBufferGetPresentationTimeStamp(&buf, v22);
  v28 = VCImageResizingConverter_CreateResizedSampleBuffer(v27, v22, &buf);
  v29 = CMSampleBufferGetImageBuffer(v28);
  if (!v29)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v62 = VRTraceErrorLogLevelToCSTR();
      v63 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.value) = 136315650;
        *(&buf.value + 4) = v62;
        OUTLINED_FUNCTION_4_9();
        v72 = 296;
        OUTLINED_FUNCTION_26(&dword_1DB56E000, v63, v64, "VCScreenCapture [%s] %s:%d Failed to get image buffer", &buf);
      }
    }

    goto LABEL_55;
  }

  v30 = OUTLINED_FUNCTION_12_2();
  CVPixelBufferLockBaseAddress(v30, v31);
  if (!CVPixelBufferIsPlanar(v29) || CVPixelBufferGetPlaneCount(v29) != 2)
  {
LABEL_55:
    if (v28)
    {
      CFRelease(v28);
    }

    goto LABEL_47;
  }

  if (PixelFormatType != 2016686640 && PixelFormatType != 875704438 && PixelFormatType != 875836518)
  {
    if (PixelFormatType == 875704422)
    {
      v34 = v27;
      v35 = a3;
      v36 = 0;
      goto LABEL_46;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136315650;
        *(&buf.value + 4) = v53;
        OUTLINED_FUNCTION_4_9();
        v72 = 331;
        _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Unexpected pixel format", &buf, 0x1Cu);
      }
    }

    goto LABEL_55;
  }

  v34 = v27;
  v35 = a3;
  v36 = 16;
LABEL_46:
  v37 = OUTLINED_FUNCTION_12_2();
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v37, v38);
  v40 = CVPixelBufferGetBaseAddressOfPlane(v29, 1uLL);
  v41 = OUTLINED_FUNCTION_12_2();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v41, v42);
  v44 = OUTLINED_FUNCTION_12_2();
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v44, v45);
  memset(BaseAddressOfPlane, v36, HeightOfPlane * BytesPerRowOfPlane);
  v47 = CVPixelBufferGetBytesPerRowOfPlane(v29, 1uLL);
  v48 = CVPixelBufferGetHeightOfPlane(v29, 1uLL);
  memset(v40, 128, v48 * v47);
  self->_blackFrame = v28;
  a3 = v35;
  v27 = v34;
LABEL_47:
  v49 = OUTLINED_FUNCTION_12_2();
  CVPixelBufferUnlockBaseAddress(v49, v50);

LABEL_48:
  _VCScreenCapture_setRepeatFrameAttributes(self->_blackFrame, 0);
  self->_isPreviousCompleteFrameBlack = 1;
LABEL_49:
  if (!self->_blackFrame)
  {
    return 0;
  }

  mach_absolute_time();
  v51 = FigHostTimeToNanoseconds();
  CMTimeMake(&__dst[1], v51, 1000000000);
  blackFrame = self->_blackFrame;
  buf = __dst[1];
  CMSampleBufferSetOutputPresentationTimeStamp(blackFrame, &buf);
  return _VCScreenCapture_CreateFrameInternal(self, self->_blackFrame, self->_previousCompleteFrameTransform, 1, a3);
}

- (int)setFrameRate:(int)a3
{
  v3 = *&a3;
  v36 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_screenCaptureLock);
  v5 = objc_opt_class();
  v6 = MEMORY[0x1E6986650];
  if (v5 != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCScreenCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *v6;
    if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v26 = 136316674;
    *&v26[4] = v15;
    OUTLINED_FUNCTION_8_10();
    v29 = 2112;
    *v30 = v7;
    *&v30[8] = 2048;
    v31 = self;
    v32 = v17;
    v33 = v18;
    v34 = v17;
    v35 = v3;
    v12 = "VCScreenCapture [%s] %s:%d %@(%p) Changing currentFrameRate= %d to newFrameRate=%d";
    v13 = v16;
    v14 = 60;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 136316162;
      *&v26[4] = v8;
      OUTLINED_FUNCTION_8_10();
      v29 = v10;
      *v30 = v11;
      *&v30[4] = v10;
      *&v30[6] = v3;
      v12 = "VCScreenCapture [%s] %s:%d Changing currentFrameRate= %d to newFrameRate=%d";
      v13 = v9;
      v14 = 40;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v26, v14);
    }
  }

LABEL_12:
  self->_captureFramerate = v3;
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{v3, *v26}];
  [(NSMutableDictionary *)self->_options setObject:v19 forKeyedSubscript:*MEMORY[0x1E6973E20]];
  v20 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSMutableDictionary *)self->_options setObject:v20 forKeyedSubscript:*MEMORY[0x1E6973ED0]];
  screenCapture = self->_screenCapture;
  if (screenCapture && (self->_isCapturing || !self->_capturePaused))
  {
    [(VCScreenCaptureSource *)screenCapture stopScreenCapture];
    v22 = [(VCScreenCaptureSource *)self->_screenCapture startScreenCaptureWithConfig:self->_options];
    if (v22)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v24 = *v6;
        if (OUTLINED_FUNCTION_40())
        {
          OUTLINED_FUNCTION_10();
          *&v26[12] = v25;
          *&v26[14] = "[VCScreenCapture setFrameRate:]";
          v27 = 1024;
          v28 = 1090;
          v29 = 1024;
          *v30 = v22;
          _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, "VCScreenCapture [%s] %s:%d Screen Capture start failed error=%d", v26, 0x22u);
        }
      }
    }
  }

  else
  {
    v22 = 0;
  }

  pthread_mutex_unlock(&self->_screenCaptureLock);
  return v22;
}

- (void)initWithCaptureServer:protocolFunctions:sourceConfig:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 903;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, "VCScreenCapture [%s] %s:%d VCScreenCapture init failed", v2);
}

- (uint64_t)_startCapture
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  return a1 >> 31;
}

- (void)_startCapture
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2146893820;
}

@end