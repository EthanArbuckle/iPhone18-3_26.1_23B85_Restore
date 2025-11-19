@interface VCAVFoundationCapture
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDurationForFrameRateRangeWithMinFrameRate:(SEL)a3 maxFrameRate:(double)a4 minFrameDuration:(double)a5 maxFrameDuration:(id *)a6 desiredFrameRate:(id *)a7;
+ (BOOL)captureDeviceformatSupportsVideoEffects:(id)a3;
+ (BOOL)deviceInputSupportsCenterStage:(id)a3;
+ (BOOL)deviceInputSupportsVideoEffects:(id)a3;
+ (BOOL)isServerProcess;
+ (BOOL)isVideoCaptureOutputAspectRatioOverrideOptimizedSupported;
+ (CGRect)calculateRegionOfInterest:(CGSize)a3 requestSize:(CGSize)a4;
+ (id)newCaptureSession;
+ (id)newVideoCaptureOutput;
+ (id)newVideoDeviceInput:(id)a3 error:(id *)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDurationForVideoDeviceFormat:(SEL)a3 frameRate:(id)a4;
- (BOOL)cameraSupportsFormatWidth:(int)a3 height:(int)a4;
- (BOOL)configureVideoStabilization;
- (BOOL)hasRequiredAttributes:(id)a3;
- (BOOL)isBackgroundReplacementSupported;
- (BOOL)isCaptureFullBleedPreferred;
- (BOOL)isCaptureFullBleedPreferredForDevicePosition:(int64_t)a3;
- (BOOL)isCenterStageSupported;
- (BOOL)isCurrentCaptureDeviceAppleProduct;
- (BOOL)isFormatMaxFrameRateSupported:(id)a3 frameRate:(int)a4;
- (BOOL)isFrameRateActive:(int)a3 captureFormat:(id)a4;
- (BOOL)isInternalCamera;
- (BOOL)isPortraitModeSupported;
- (BOOL)isPreviewRunning;
- (BOOL)isReactionSupported;
- (BOOL)isSquareCapturePreferred;
- (BOOL)isStudioLightSupported;
- (BOOL)setCameraWithUID:(id)a3;
- (BOOL)setCaptureDeviceMinFrameRateIfNeeded:(int)a3;
- (BOOL)setOrientation:(int)a3;
- (BOOL)shouldAdjustCaptureWithOrientation:(int)a3;
- (BOOL)shouldResizeWithCaptureSize:(CGSize)a3 requestSize:(CGSize)a4;
- (BOOL)supportsDepthDataFormats;
- (BOOL)updateCaptureSizeWithAspectRatio:(CGSize *)a3 width:(int)a4 height:(int)a5;
- (BOOL)updateVideoDataOutputVideoSettingResolution:(int)a3 requestHeight:(int)a4 captureFormat:(id)a5;
- (CGSize)getOptimizedCameraCaptureWidth:(int)a3 height:(int)a4;
- (VCAVFoundationCapture)initWithCaptureServer:(id)a3 protocolFunctions:(const tagVCVideoCaptureServerProtocolRealtimeInstanceVTable *)a4 width:(int)a5 height:(int)a6 frameRate:(int)a7 videoSourceToken:(_VCVideoSourceToken)a8 cinematicFramingEnabled:(BOOL)a9 videoOrientation:(int)a10 capturePixelFormat:(unsigned int)a11 zoomFactor:(double)a12 remoteSupportsFullScreenReceive:(BOOL)a13 remoteDeviceOrientation:(int)a14;
- (char)featureStatusForFeatureSupported:(BOOL)a3 enabled:(BOOL)a4;
- (double)setUpVideoZoomFactor;
- (id)availableVideoCVPixelFormatTypes;
- (id)cameraCaptureFormatWithWidth:(int)a3 height:(int)a4;
- (id)cameraFormatForWidth:(int)a3 height:(int)a4 frameRate:(int)a5;
- (id)cameraFormatForWidthWithList:(int)a3 height:(int)a4 frameRate:(int)a5 formatList:(id)a6;
- (id)getCaptureFormatList;
- (id)newCaptureDevice:(id)a3;
- (id)updateVideoCaptureAspectRatioWithRequestResolution:(int)a3 requestHeight:(int)a4 captureFormat:(id)a5;
- (id)videoCaptureOutputVideoSettings;
- (int)captureDeviceActiveFrameRate;
- (int)configureCaptureWithToken:(_VCVideoSourceToken)a3;
- (int)copyColorInfo:(const __CFDictionary *)a3;
- (int)frameBecameAvailableCount:(int *)a3 figBufferQueueEmptyCount:(int *)a4 figBufferQueueErrorCount:(int *)a5;
- (int)frameCount:(BOOL)a3;
- (int)getFrameRate;
- (int)getMaxAllowedFrameRate:(int)a3;
- (int)getSupportedMaxDeviceFrameRateWithFrameRateCap:(int)a3;
- (int)invalidate;
- (int)setCamera:(_VCVideoSourceToken)a3 width:(int)a4 height:(int)a5 frameRate:(int)a6;
- (int)setFrameRate:(int)a3;
- (int)setFrameRateInternal:(int)a3 forceSourceFrameRateDidChange:(BOOL)a4;
- (int)setVideoDeviceToSelectedDevice:(id)a3;
- (int)setVideoDeviceToWidth:(int)a3 height:(int)a4 frameRate:(int)a5;
- (int)setWidth:(int)a3 height:(int)a4 frameRate:(int)a5;
- (int)startCaptureWithWidth:(int)a3 height:(int)a4 frameRate:(int)a5;
- (int)startPreview;
- (int)stop:(BOOL)a3;
- (int64_t)captureTierForEncodingSize:(CGSize)a3;
- (int64_t)videoOrientationForDevice:(id)a3;
- (opaqueCMSampleBuffer)newSimulatedTallFormat:(opaqueCMSampleBuffer *)a3 frameTime:(id *)a4;
- (tagVCVideoCaptureFeatureStatus)currentVideoFeatureStatus;
- (void)applyBlockToAllAvailableCaptureFormats:(id)a3;
- (void)applyVideoRetainedBufferCountHint;
- (void)attachSensitiveContentAnalyzer:(id)a3;
- (void)beginSensitiveContentAnalysisWithCaptureDeviceInput:(id)a3;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureSessionNotification:(id)a3;
- (void)collectCaptureFrameRateStats:(__CFDictionary *)a3;
- (void)configCaptureConnectionForDevice:(id)a3;
- (void)configureCaptureDeviceDepthFormat;
- (void)configureMetadataTypesForOutput:(id)a3;
- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4;
- (void)dealloc;
- (void)dispatchedCurrentVideoFeatureStatus:(tagVCVideoCaptureFeatureStatus *)a3;
- (void)encodeProcessedPixelBuffer:(__CVBuffer *)a3 time:(id *)a4 imageData:(id)a5 processTime:(id)a6;
- (void)endSensitiveContentAnalysis;
- (void)getReportingStats:(__CFDictionary *)a3;
- (void)initializeMetadataOutput;
- (void)initializeSynchronizedOutputs;
- (void)initializeVideoCaptureOutput;
- (void)initializeViewpointCorrection;
- (void)lockAVCaptureDeviceInputForConfiguration;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareSynchronizedOutputs:(id)a3;
- (void)printVideoStabilizationState:(BOOL)a3;
- (void)processMetadataObjects:(id)a3;
- (void)processReactionStatus:(id)a3 oldReactions:(id)a4;
- (void)reportStatus:(__CFDictionary *)a3 forKey:(__CFString *)a4 supported:(BOOL)a5 enabled:(BOOL)a6;
- (void)resetDepthDataOutput;
- (void)resetViewPointLogging;
- (void)retrieveInitialReportingStats:(__CFDictionary *)a3;
- (void)setCameraZoomFactor:(double)a3;
- (void)setCameraZoomFactor:(double)a3 withRate:(double)a4;
- (void)setCaptureSIFRFormatEnabled:(BOOL)a3;
- (void)setEffectsApplied:(BOOL)a3;
- (void)setFaceMeshTrackingEnabled:(BOOL)a3;
- (void)setMetaDataObjectsDelegate;
- (void)setReactionActive:(BOOL)a3;
- (void)setRemoteDeviceOrientation:(int)a3;
- (void)setRemotePreferFullBleed:(BOOL)a3;
- (void)setUpBackgroundBlurDelegate:(BOOL)a3;
- (void)setUpCaptureDeviceObserver:(BOOL)a3 keyPath:(id)a4;
- (void)setUpCaptureDevicePropertyObservers:(BOOL)a3;
- (void)setVideoCaptureOutputDelegate;
- (void)setViewPointCorrectionEnabled:(BOOL)a3;
- (void)tearDownSynchronizer;
- (void)unlockAVCaptureDeviceInputForConfiguration;
- (void)updateCameraZoomCapability;
- (void)updateCaptureServerWithCaptureDeviceActiveFrameRate;
- (void)updateCenterStageEnabled:(BOOL)a3 requestCaptureChange:(BOOL)a4;
- (void)updateCenterStageMetadataDeliveryEnabled;
- (void)updateCenterStageRegionOfInterestWithLock:(BOOL)a3;
- (void)updateDepthFrameRate;
- (void)updateDeviceOrientationMatchesReceiver:(int)a3 remoteDeviceOrientation:(int)a4;
- (void)updateRenderProcessFrameRate:(id)a3;
- (void)verifyUnbinnedCameraFormatSelection:(id)a3;
@end

@implementation VCAVFoundationCapture

+ (BOOL)isServerProcess
{
  v2 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if ([v2 isEqualToString:@"avconferenced"])
  {
    return 1;
  }

  return [v2 isEqualToString:@"mediaserverd"];
}

- (id)newCaptureDevice:(id)a3
{
  if ([+[VCDefaults useVirtualCapture] sharedInstance]
  {
    v5 = [VCVirtualAVCaptureDevice alloc];
    orientation = self->_orientation;

    return [(VCVirtualAVCaptureDevice *)v5 initWithUniqueID:a3 orientation:orientation];
  }

  else
  {
    v8 = [MEMORY[0x1E69870A0] deviceWithUniqueID:a3];

    return v8;
  }
}

+ (id)newVideoCaptureOutput
{
  v2 = [+[VCDefaults sharedInstance](VCDefaults useVirtualCapture];
  v3 = off_1E85F1FD0;
  if (!v2)
  {
    v3 = 0x1E6987178;
  }

  v4 = *v3;

  return objc_alloc_init(v4);
}

+ (id)newVideoDeviceInput:(id)a3 error:(id *)a4
{
  v6 = [+[VCDefaults sharedInstance](VCDefaults useVirtualCapture];
  v7 = off_1E85F1FC8;
  if (!v6)
  {
    v7 = 0x1E69870B0;
  }

  v8 = objc_alloc(*v7);

  return [v8 initWithDevice:a3 error:a4];
}

+ (id)newCaptureSession
{
  if ([+[VCDefaults useVirtualCapture] sharedInstance]
  {

    return objc_alloc_init(VCVirtualAVCaptureSession);
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E6987110]);
    AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();
    return v3;
  }
}

- (VCAVFoundationCapture)initWithCaptureServer:(id)a3 protocolFunctions:(const tagVCVideoCaptureServerProtocolRealtimeInstanceVTable *)a4 width:(int)a5 height:(int)a6 frameRate:(int)a7 videoSourceToken:(_VCVideoSourceToken)a8 cinematicFramingEnabled:(BOOL)a9 videoOrientation:(int)a10 capturePixelFormat:(unsigned int)a11 zoomFactor:(double)a12 remoteSupportsFullScreenReceive:(BOOL)a13 remoteDeviceOrientation:(int)a14
{
  v15 = *&a7;
  v16 = *&a6;
  v17 = *&a5;
  v102 = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = VCAVFoundationCapture;
  v19 = [(VCVideoCapture *)&v81 initWithCaptureServer:a3 protocolFunctions:a4];
  if (!v19)
  {
    return v19;
  }

  if (objc_opt_class() == v19)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317954;
        v83 = v21;
        v84 = 2080;
        v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
        v86 = 1024;
        v87 = 394;
        v88 = 1024;
        *v89 = v17;
        *&v89[4] = 1024;
        *&v89[6] = v16;
        LOWORD(v90) = 1024;
        *(&v90 + 2) = v15;
        HIWORD(v90) = 1024;
        *v91 = a8;
        *&v91[4] = 1024;
        *v92 = a9;
        *&v92[4] = 1024;
        *v93 = a10;
        *&v93[4] = 2048;
        v94 = a12;
        *v95 = 1024;
        *&v95[2] = a13;
        *v96 = 1024;
        *&v96[2] = a14;
        v23 = " [%s] %s:%d width=%d, height=%d, frameRate=%d, sourceToken=0x%x, cinematicFramingEnabled=%d, orientation=%d, zoomFactor=%f, remoteSupportsFullScreenReceive=%d, remoteDeviceOrientation=%d";
        v24 = v22;
        v25 = 86;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCAVFoundationCapture *)v19 performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136318466;
        v83 = v26;
        v84 = 2080;
        v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
        v86 = 1024;
        v87 = 394;
        v88 = 2112;
        *v89 = v20;
        *&v89[8] = 2048;
        v90 = v19;
        *v91 = 1024;
        *&v91[2] = v17;
        *v92 = 1024;
        *&v92[2] = v16;
        *v93 = 1024;
        *&v93[2] = v15;
        LOWORD(v94) = 1024;
        *(&v94 + 2) = a8;
        HIWORD(v94) = 1024;
        *v95 = a9;
        *&v95[4] = 1024;
        *v96 = a10;
        *&v96[4] = 2048;
        v97 = a12;
        v98 = 1024;
        v99 = a13;
        v100 = 1024;
        v101 = a14;
        v23 = " [%s] %s:%d %@(%p) width=%d, height=%d, frameRate=%d, sourceToken=0x%x, cinematicFramingEnabled=%d, orientation=%d, zoomFactor=%f, remoteSupportsFullScreenReceive=%d, remoteDeviceOrientation=%d";
        v24 = v27;
        v25 = 106;
        goto LABEL_12;
      }
    }
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v19->_captureSessionQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCAVCaptureSession.captureSessionQueue", 0, CustomRootQueue);
  v19->_viewPointCorrectionQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCViewPointcorrection.viewPointCorrectionQueue", 0, CustomRootQueue);
  v29 = *MEMORY[0x1E695E480];
  if (VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "VCAVFCaptureNumberPropertyAllocator", &v19->_numberPropertyAllocator))
  {
    [VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:];
    return v19;
  }

  if (VCAllocatorFirstCome_Create(v29, "VCAVFCaptureAttachmentPropertyAllocator", &v19->_attachmentAllocator))
  {
    [VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:];
    return v19;
  }

  v19->_captureSession = +[VCAVFoundationCapture newCaptureSession];
  v19->_capturePixelFormat = a11;
  v30 = ([objc_opt_class() isServerProcess] & 1) != 0 || -[VCDefaults forceUseAvconferenced](+[VCDefaults sharedInstance](VCDefaults, "sharedInstance"), "forceUseAvconferenced");
  v19->_isServerProcess = v30;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      isServerProcess = v19->_isServerProcess;
      *buf = 136315906;
      v83 = v31;
      v84 = 2080;
      v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
      v86 = 1024;
      v87 = 407;
      v88 = 1024;
      *v89 = isServerProcess;
      _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _isServerProcess=%d", buf, 0x22u);
    }
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v19->_lastClientRequestedFrameRate = v15;
  v19->_faceMeshTrackingEnabled = 0;
  v19->_isCaptureSIFRPreferred = +[VCHardwareSettings isCaptureSIFRPreferred];
  v19->_captureSIFRPreferredOverride = VCDefaults_GetIntValueForKey(@"overrideAVCaptureSIFR", 0);
  v19->_captureFormatNonBinOnlyOverride = VCDefaults_GetIntValueForKey(@"overrideAVCaptureNonBinnedOnly", 0) != 0;
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"NoDepthMemoji", 0);
  v19->_memojiWithoutDepthEnabled = BoolValueForKey;
  if (BoolValueForKey)
  {
    if (objc_opt_class() == v19)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v83 = v36;
          v84 = 2080;
          v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
          v86 = 1024;
          v87 = 417;
          v38 = " [%s] %s:%d _supportNoDepthMemoji YES";
          v39 = v37;
          v40 = 28;
LABEL_32:
          _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v35 = [(VCAVFoundationCapture *)v19 performSelector:sel_logPrefix];
      }

      else
      {
        v35 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v83 = v41;
          v84 = 2080;
          v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
          v86 = 1024;
          v87 = 417;
          v88 = 2112;
          *v89 = v35;
          *&v89[8] = 2048;
          v90 = v19;
          v38 = " [%s] %s:%d %@(%p) _supportNoDepthMemoji YES";
          v39 = v42;
          v40 = 48;
          goto LABEL_32;
        }
      }
    }
  }

  IntValueForKey = VCDefaults_GetIntValueForKey(@"captureDeviceFrameRateMin", 0);
  v19->_deviceMinFrameRate = IntValueForKey;
  if (!IntValueForKey)
  {
    goto LABEL_45;
  }

  if (objc_opt_class() == v19)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        deviceMinFrameRate = v19->_deviceMinFrameRate;
        *buf = 136315906;
        v83 = v45;
        v84 = 2080;
        v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
        v86 = 1024;
        v87 = 421;
        v88 = 1024;
        *v89 = deviceMinFrameRate;
        v48 = " [%s] %s:%d kVCDefaultCaptureDeviceFrameRateMin is set to %d";
        v49 = v46;
        v50 = 34;
LABEL_44:
        _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v44 = [(VCAVFoundationCapture *)v19 performSelector:sel_logPrefix];
    }

    else
    {
      v44 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v51 = VRTraceErrorLogLevelToCSTR();
      v52 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v53 = v19->_deviceMinFrameRate;
        *buf = 136316418;
        v83 = v51;
        v84 = 2080;
        v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
        v86 = 1024;
        v87 = 421;
        v88 = 2112;
        *v89 = v44;
        *&v89[8] = 2048;
        v90 = v19;
        *v91 = 1024;
        *&v91[2] = v53;
        v48 = " [%s] %s:%d %@(%p) kVCDefaultCaptureDeviceFrameRateMin is set to %d";
        v49 = v52;
        v50 = 54;
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  if (!v19->_captureFormatNonBinOnlyOverride)
  {
    goto LABEL_57;
  }

  if (objc_opt_class() == v19)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_57;
    }

    v55 = VRTraceErrorLogLevelToCSTR();
    v56 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    *buf = 136315650;
    v83 = v55;
    v84 = 2080;
    v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
    v86 = 1024;
    v87 = 424;
    v57 = " [%s] %s:%d Pick only non binned AVCaptureDeviceFormat";
    v58 = v56;
    v59 = 28;
    goto LABEL_56;
  }

  if (objc_opt_respondsToSelector())
  {
    v54 = [(VCAVFoundationCapture *)v19 performSelector:sel_logPrefix];
  }

  else
  {
    v54 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v60 = VRTraceErrorLogLevelToCSTR();
    v61 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v83 = v60;
      v84 = 2080;
      v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
      v86 = 1024;
      v87 = 424;
      v88 = 2112;
      *v89 = v54;
      *&v89[8] = 2048;
      v90 = v19;
      v57 = " [%s] %s:%d %@(%p) Pick only non binned AVCaptureDeviceFormat";
      v58 = v61;
      v59 = 48;
LABEL_56:
      _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
    }
  }

LABEL_57:
  v19->_needCenterStageMetadataForViewpointCorrection = VCDefaults_GetBoolValueForKey(@"VPCCenterStageMetadata", 1);
  v19->_requestSize.width = v17;
  v19->_requestSize.height = v16;
  v19->_orientation = a10;
  v19->_remoteDeviceOrientation = a14;
  [(VCAVFoundationCapture *)v19 updateDeviceOrientationMatchesReceiver:v19->_orientation remoteDeviceOrientation:?];
  v19->_previousOrientation = a10;
  v19->_useAVConferenced = VCFeatureFlagManager_UseAvconferenced();
  v19->_beginCommitConfigForFormatSwitch = 1;
  v19->_cameraZoomFactor = a12;
  v19->_remotePreferFullBleed = a13;
  if (+[VCHardwareSettings deviceClass]== 1)
  {
    v62 = +[VCAVFoundationCapture isVideoCaptureOutputAspectRatioOverrideOptimizedSupported]^ 1;
  }

  else
  {
    v62 = 0;
  }

  v19->_captureFormatPrefer16By9ForSquare = v62;
  v19->_captureFormatPrefer16By9ForSquare = VCDefaults_GetBoolValueForKey(@"ForceAVCapturePrefer16By9ForSquare", v62);
  v19->_frontCameraSupportsFullBleedCapture = +[VCHardwareSettings supportsFrontCameraFullBleedCapture];
  v19->_backCameraSupportsFullBleedCapture = +[VCHardwareSettings supportsBackCameraFullBleedCapture];
  v63 = !v19->_memojiWithoutDepthEnabled && [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded supportsFrontCameraFullBleedCapture];
  v19->_deviceSupportsTrueDepthSwitchForEffects = v63;
  [(AVCaptureSession *)v19->_captureSession beginConfiguration];
  [(VCAVFoundationCapture *)v19 initializeVideoCaptureOutput];
  [(VCAVFoundationCapture *)v19 setCamera:a8.var0.var1 width:v17 height:v16 frameRate:v15];
  [(VCAVFoundationCapture *)v19 initializeMetadataOutput];
  [(VCAVFoundationCapture *)v19 resetDepthDataOutput];
  [(VCAVFoundationCapture *)v19 initializeViewpointCorrection];
  [(VCAVFoundationCapture *)v19 updateCenterStageEnabled:a9 requestCaptureChange:1];
  [(AVCaptureSession *)v19->_captureSession commitConfiguration];
  [+[VCEffectsManager sharedManager](VCEffectsManager "sharedManager")];
  if ([+[VCEffectsManager sharedManager](VCEffectsManager "sharedManager")])
  {
    [(VCAVFoundationCapture *)v19 setFaceMeshTrackingEnabled:1];
  }

  v64 = VCEffectsManager_SharedManager();
  if (VCEffectsManager_IsEffectsOn(v64))
  {
    [(VCAVFoundationCapture *)v19 setEffectsApplied:1];
  }

  v19->_cachedDataArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19->_renderFrameTimes = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{+[VCDefaults integerValueForKey:defaultValue:](VCDefaults, "integerValueForKey:defaultValue:", @"effectsProcessWindow", 60)}];
  v19->_processTimeSum = 0.0;
  v19->_imageCopyingConverter = [[VCImageResizingConverter alloc] initWithOutputWidth:v17 outputHeight:v16 formatType:v19->_capturePixelFormat];
  v19->_imageRotationConverter = [[VCImageRotationConverter alloc] initWithRotationAngle:90 width:v17 height:v16 formatType:v19->_capturePixelFormat];
  v19->_imageCroppingConverter = [[VCImageResizingConverter alloc] initWithOutputWidth:v17 outputHeight:v16 formatType:v19->_capturePixelFormat];
  v19->_forceMirrorCapture = [+[VCDefaults sharedInstance](VCDefaults forceMirroredCapture];
  v19->_forceDynamicEffectsFramerate = [+[VCDefaults sharedInstance](VCDefaults forceDynamicEffectsFramerate];
  [+[VCDefaults sharedInstance](VCDefaults depthFrameRateMultiplier];
  v19->_depthFrameRateMultplier = 1.0 / v65;
  v19->_forcePearlCamera = [+[VCDefaults sharedInstance](VCDefaults forceEnablePearlCamera];
  v19->_pixelBufferCVO = -1;
  [(VCAVFoundationCapture *)v19 resetViewPointLogging];
  v19->_enableBufferStatsDump = VCDefaults_GetBoolValueForKey(@"enableVideoCaptureStatistics", 0);
  v19->_cameraEffectsFrontCameraMirrored = +[VCHardwareSettings shouldCameraEffectsFrontCameraMirror];
  +[VCVisualAlert start];
  v19->_shouldRemoveExtraRotation = _os_feature_enabled_impl();
  v19->_shouldUseCompressedPixelFormat = VCVideoUtil_ShouldUseCompressedPixelFormat();
  if (objc_opt_class() != v19)
  {
    if (objc_opt_respondsToSelector())
    {
      v66 = [(VCAVFoundationCapture *)v19 performSelector:sel_logPrefix];
    }

    else
    {
      v66 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() <= 6)
    {
      goto LABEL_78;
    }

    v74 = VRTraceErrorLogLevelToCSTR();
    v75 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    captureFormatPrefer16By9ForSquare = v19->_captureFormatPrefer16By9ForSquare;
    cameraEffectsFrontCameraMirrored = v19->_cameraEffectsFrontCameraMirrored;
    *buf = 136316674;
    v83 = v74;
    v84 = 2080;
    v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
    v86 = 1024;
    v87 = 498;
    v88 = 2112;
    *v89 = v66;
    *&v89[8] = 2048;
    v90 = v19;
    *v91 = 1024;
    *&v91[2] = captureFormatPrefer16By9ForSquare;
    *v92 = 1024;
    *&v92[2] = cameraEffectsFrontCameraMirrored;
    v71 = " [%s] %s:%d %@(%p) _captureFormatPrefer16By9ForSquare=%d, _cameraEffectsFrontCameraMirrored=%d";
    v72 = v75;
    v73 = 60;
    goto LABEL_77;
  }

  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v67 = VRTraceErrorLogLevelToCSTR();
    v68 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v69 = v19->_captureFormatPrefer16By9ForSquare;
      v70 = v19->_cameraEffectsFrontCameraMirrored;
      *buf = 136316162;
      v83 = v67;
      v84 = 2080;
      v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
      v86 = 1024;
      v87 = 498;
      v88 = 1024;
      *v89 = v69;
      *&v89[4] = 1024;
      *&v89[6] = v70;
      v71 = " [%s] %s:%d _captureFormatPrefer16By9ForSquare=%d, _cameraEffectsFrontCameraMirrored=%d";
      v72 = v68;
      v73 = 40;
LABEL_77:
      _os_log_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEFAULT, v71, buf, v73);
    }
  }

LABEL_78:
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAVFoundationCapture-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v78 = VRTraceErrorLogLevelToCSTR();
    v79 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v83 = v78;
      v84 = 2080;
      v85 = "[VCAVFoundationCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:]";
      v86 = 1024;
      v87 = 499;
      v88 = 2048;
      *v89 = v19;
      _os_log_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAVFoundationCapture-init (%p)", buf, 0x26u);
    }
  }

  return v19;
}

- (void)dealloc
{
  v42 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAVFoundationCapture-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v35 = v3;
      v36 = 2080;
      v37 = "[VCAVFoundationCapture dealloc]";
      v38 = 1024;
      v39 = 506;
      v40 = 2048;
      v41 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAVFoundationCapture-dealloc (%p)", buf, 0x26u);
    }
  }

  +[VCVisualAlert stop];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(AVCaptureSession *)self->_captureSession inputs];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AVCaptureSession *)self->_captureSession removeInput:*(*(&v30 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(AVCaptureSession *)self->_captureSession outputs];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AVCaptureSession *)self->_captureSession removeOutput:*(*(&v25 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v12);
  }

  [(VCAVFoundationCapture *)self unlockAVCaptureDeviceInputForConfiguration];

  [(AVCaptureVideoDataOutput *)self->_videoCaptureOutput setSampleBufferDelegate:0 queue:0];
  dispatch_release(self->_captureSessionQueue);
  dispatch_release(self->_viewPointCorrectionQueue);
  numberPropertyAllocator = self->_numberPropertyAllocator;
  if (numberPropertyAllocator)
  {
    CFRelease(numberPropertyAllocator);
    self->_numberPropertyAllocator = 0;
  }

  attachmentAllocator = self->_attachmentAllocator;
  if (attachmentAllocator)
  {
    CFRelease(attachmentAllocator);
    self->_attachmentAllocator = 0;
  }

  uncompressTransferSession = self->_uncompressTransferSession;
  if (uncompressTransferSession)
  {
    VTPixelTransferSessionInvalidate(uncompressTransferSession);
    v18 = self->_uncompressTransferSession;
    if (v18)
    {
      CFRelease(v18);
      self->_uncompressTransferSession = 0;
    }
  }

  uncompressedPixelFormatBufferPool = self->_uncompressedPixelFormatBufferPool;
  if (uncompressedPixelFormatBufferPool)
  {
    CVPixelBufferPoolRelease(uncompressedPixelFormatBufferPool);
  }

  compressTransferSession = self->_compressTransferSession;
  if (compressTransferSession)
  {
    VTPixelTransferSessionInvalidate(compressTransferSession);
    v21 = self->_compressTransferSession;
    if (v21)
    {
      CFRelease(v21);
      self->_compressTransferSession = 0;
    }
  }

  compressedPixelFormatBufferPool = self->_compressedPixelFormatBufferPool;
  if (compressedPixelFormatBufferPool)
  {
    CVPixelBufferPoolRelease(compressedPixelFormatBufferPool);
  }

  v23.receiver = self;
  v23.super_class = VCAVFoundationCapture;
  [(VCVideoCapture *)&v23 dealloc];
}

- (void)setVideoCaptureOutputDelegate
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_isServerProcess)
  {
    useAVConferenced = self->_useAVConferenced;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (useAVConferenced)
    {
      if (ErrorLogLevelForModule > 6)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          captureSessionQueue = self->_captureSessionQueue;
          v14 = 136315906;
          v15 = v5;
          v16 = 2080;
          v17 = "[VCAVFoundationCapture setVideoCaptureOutputDelegate]";
          v18 = 1024;
          v19 = 572;
          v20 = 2048;
          v21 = captureSessionQueue;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSessionQueue=%p", &v14, 0x26u);
        }
      }

      videoCaptureOutput = self->_videoCaptureOutput;
      v13 = self->_captureSessionQueue;
      v12 = self;
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = v9;
          v16 = 2080;
          v17 = "[VCAVFoundationCapture setVideoCaptureOutputDelegate]";
          v18 = 1024;
          v19 = 575;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setSampleBufferDelegate queue is set to nil.", &v14, 0x1Cu);
        }
      }

      videoCaptureOutput = self->_videoCaptureOutput;
      v12 = self;
      v13 = 0;
    }

    [(AVCaptureVideoDataOutput *)videoCaptureOutput setSampleBufferDelegate:v12 queue:v13];
  }

  else
  {
    v8 = self->_videoCaptureOutput;

    [(AVCaptureVideoDataOutput *)v8 setSampleBufferDelegate:0 queue:0];
  }
}

- (void)applyVideoRetainedBufferCountHint
{
  v42 = *MEMORY[0x1E69E9840];
  if (+[VCHardwareSettings retainPixelBufferForMediaRecordingEnabled])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v3 = [(AVCaptureVideoDataOutput *)self->_videoCaptureOutput connections];
    v4 = [v3 countByEnumeratingWithState:&v38 objects:v37 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v39;
      v8 = &OBJC_IVAR___VCVideoReceiverDefault__lastKeyFrameRequestStreamID;
      *&v5 = 136316418;
      v22 = v5;
      v23 = v3;
      do
      {
        v9 = 0;
        v24 = v6;
        do
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v38 + 1) + 8 * v9);
          if ([v10 isVideoRetainedBufferCountHintSupported])
          {
            v11 = *(&self->super.super.isa + v8[928]);
            [(VCVideoCapture *)self captureServer];
            if (objc_opt_respondsToSelector())
            {
              v12 = [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] bestCameraCaptureFrameRate];
              if (v12 > v11)
              {
                v11 = v12;
              }
            }

            [v10 setVideoRetainedBufferCountHint:(3 * v11)];
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v15 = v7;
                v16 = v8;
                captureSession = self->_captureSession;
                videoCaptureOutput = self->_videoCaptureOutput;
                v19 = [v10 videoRetainedBufferCountHint];
                *buf = v22;
                v26 = v13;
                v27 = 2080;
                v28 = "[VCAVFoundationCapture applyVideoRetainedBufferCountHint]";
                v29 = 1024;
                v30 = 600;
                v31 = 2112;
                v32 = captureSession;
                v8 = v16;
                v7 = v15;
                v6 = v24;
                v33 = 2112;
                v34 = videoCaptureOutput;
                v3 = v23;
                v35 = 1024;
                v36 = v19;
                _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSession=%@ videoCaptureOutput=%@ videoRetainedBufferCountHint=%d", buf, 0x36u);
              }
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v3 countByEnumeratingWithState:&v38 objects:v37 count:16];
      }

      while (v6);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v26 = v20;
      v27 = 2080;
      v28 = "[VCAVFoundationCapture applyVideoRetainedBufferCountHint]";
      v29 = 1024;
      v30 = 590;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoRetainedBufferCountHint is not supported on this platform", buf, 0x1Cu);
    }
  }
}

- (void)initializeVideoCaptureOutput
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[VCAVFoundationCapture newVideoCaptureOutput];
  self->_videoCaptureOutput = v3;
  [(AVCaptureVideoDataOutput *)v3 setAllLossyVideoCVPixelFormatTypesEnabled:1];
  [(AVCaptureVideoDataOutput *)self->_videoCaptureOutput setVideoSettings:[(VCAVFoundationCapture *)self videoCaptureOutputVideoSettings]];
  [(AVCaptureVideoDataOutput *)self->_videoCaptureOutput setAlwaysDiscardsLateVideoFrames:1];
  [(VCAVFoundationCapture *)self setVideoCaptureOutputDelegate];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      videoCaptureOutput = self->_videoCaptureOutput;
      v7 = FourccToCStr(self->_capturePixelFormat);
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCAVFoundationCapture initializeVideoCaptureOutput]";
      v12 = 1024;
      v13 = 616;
      v14 = 2112;
      v15 = videoCaptureOutput;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSession addOutput=%@ pixelFormat=%s", &v8, 0x30u);
    }
  }

  [(AVCaptureSession *)self->_captureSession addOutput:self->_videoCaptureOutput];
  [(VCAVFoundationCapture *)self applyVideoRetainedBufferCountHint];
  [(VCAVFoundationCapture *)self configCaptureConnectionForDevice:[(AVCaptureDeviceInput *)self->_videoDeviceInput device]];
  [(VCAVFoundationCapture *)self updateVideoDataOutputVideoSettingResolution:self->_requestSize.width requestHeight:self->_requestSize.height captureFormat:[(AVCaptureDevice *)self->_captureDevice activeFormat]];
}

- (id)availableVideoCVPixelFormatTypes
{
  v2 = [(AVCaptureVideoDataOutput *)self->_videoCaptureOutput availableVideoCVPixelFormatTypes];

  return v2;
}

- (id)videoCaptureOutputVideoSettings
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(VCAVFoundationCapture *)self availableVideoCVPixelFormatTypes];
  if ([v3 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", self->_capturePixelFormat)}])
  {
    v10 = *MEMORY[0x1E6966130];
    v11[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_capturePixelFormat];
    v4 = MEMORY[0x1E695DF20];
    v5 = v11;
    v6 = &v10;
  }

  else
  {
    v8 = *MEMORY[0x1E6966130];
    v9 = &unk_1F579A038;
    v4 = MEMORY[0x1E695DF20];
    v5 = &v9;
    v6 = &v8;
  }

  return [v4 dictionaryWithObjects:v5 forKeys:v6 count:1];
}

- (void)resetDepthDataOutput
{
  *&v25[13] = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(VCAVFoundationCapture *)self shouldAddDepthData];
      depthDataOutput = self->_depthDataOutput;
      v18 = 136316162;
      v19 = v3;
      v20 = 2080;
      v21 = "[VCAVFoundationCapture resetDepthDataOutput]";
      v22 = 1024;
      v23 = 640;
      v24 = 1024;
      *v25 = v5;
      v25[2] = 2048;
      *&v25[3] = depthDataOutput;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d shouldAddDepthData=%d, _depthDataOutput=%p", &v18, 0x2Cu);
    }
  }

  if (![(VCAVFoundationCapture *)self shouldAddDepthData]&& self->_depthDataOutput)
  {
    if ([(NSArray *)[(AVCaptureSession *)self->_captureSession outputs] containsObject:self->_depthDataOutput])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_depthDataOutput;
          v18 = 136315906;
          v19 = v7;
          v20 = 2080;
          v21 = "[VCAVFoundationCapture resetDepthDataOutput]";
          v22 = 1024;
          v23 = 645;
          v24 = 2112;
          *v25 = v9;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSession removeOutput _depthDataOutput=%@", &v18, 0x26u);
        }
      }

      [(AVCaptureSession *)self->_captureSession removeOutput:self->_depthDataOutput];
    }

    self->_depthDataOutput = 0;
  }

  if ([(VCAVFoundationCapture *)self shouldAddDepthData]&& !self->_depthDataOutput)
  {
    v10 = objc_alloc_init(MEMORY[0x1E6987098]);
    self->_depthDataOutput = v10;
    v11 = [(AVCaptureSession *)self->_captureSession canAddOutput:v10];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v11)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_depthDataOutput;
          v18 = 136315906;
          v19 = v13;
          v20 = 2080;
          v21 = "[VCAVFoundationCapture resetDepthDataOutput]";
          v22 = 1024;
          v23 = 656;
          v24 = 2112;
          *v25 = v15;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSession addOutput _depthDataOutput=%@", &v18, 0x26u);
        }
      }

      [(AVCaptureSession *)self->_captureSession addOutput:self->_depthDataOutput];
      [(AVCaptureDepthDataOutput *)self->_depthDataOutput setAlwaysDiscardsLateDepthData:1];
      [(AVCaptureDepthDataOutput *)self->_depthDataOutput setFilteringEnabled:0];
      [(VCAVFoundationCapture *)self configureCaptureDeviceDepthFormat];
    }

    else
    {
      if (ErrorLogLevelForModule >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315650;
          v19 = v16;
          v20 = 2080;
          v21 = "[VCAVFoundationCapture resetDepthDataOutput]";
          v22 = 1024;
          v23 = 662;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cannot add depth data output", &v18, 0x1Cu);
        }
      }

      self->_depthDataOutput = 0;
    }
  }
}

- (void)configureMetadataTypesForOutput:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [a3 availableMetadataObjectTypes];
    v6 = objc_opt_new();
    v7 = *MEMORY[0x1E6987018];
    if ([v5 containsObject:*MEMORY[0x1E6987018]] && -[VCAVFoundationCapture shouldAddTrackedFacesData](self, "shouldAddTrackedFacesData"))
    {
      [v6 addObject:v7];
    }

    v8 = *MEMORY[0x1E6986FE8];
    if ([v5 containsObject:*MEMORY[0x1E6986FE8]])
    {
      [v6 addObject:v8];
    }

    if ([v6 count])
    {
      [a3 setMetadataObjectTypes:v6];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCAVFoundationCapture configureMetadataTypesForOutput:]";
        v15 = 1024;
        v16 = 704;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setMetadataObjectTypes %@", &v11, 0x26u);
      }
    }
  }
}

- (void)setMetaDataObjectsDelegate
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_isServerProcess)
  {
    if (self->_useAVConferenced)
    {
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          captureSessionQueue = self->_captureSessionQueue;
          v8 = 136315906;
          v9 = v3;
          v10 = 2080;
          v11 = "[VCAVFoundationCapture setMetaDataObjectsDelegate]";
          v12 = 1024;
          v13 = 712;
          v14 = 2048;
          v15 = captureSessionQueue;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSessionQueue=%p", &v8, 0x26u);
        }
      }

      [(AVCaptureMetadataOutput *)self->_metadataOutput setMetadataObjectsDelegate:self queue:self->_captureSessionQueue];
      return;
    }

    metadataOutput = self->_metadataOutput;
    v7 = self;
  }

  else
  {
    metadataOutput = self->_metadataOutput;
    v7 = 0;
  }

  [(AVCaptureMetadataOutput *)metadataOutput setMetadataObjectsDelegate:v7 queue:0];
}

- (void)initializeMetadataOutput
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)tearDownSynchronizer
{
  self->_outputSynchronizer = 0;
  self->_outputSynchronizerOutputs = 0;
  [(VCAVFoundationCapture *)self setVideoCaptureOutputDelegate];

  [(VCAVFoundationCapture *)self setMetaDataObjectsDelegate];
}

- (void)initializeSynchronizedOutputs
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

- (BOOL)shouldResizeWithCaptureSize:(CGSize)a3 requestSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v33 = *MEMORY[0x1E69E9840];
  v9 = a4.width / a4.height;
  v10 = a3.width / a3.height;
  if (VCMU_CompareWithAccuracy(v9, v10, 0.01) || VCMU_CompareWithAccuracy(v9, 1.0 / v10, 0.01))
  {
    LODWORD(self) = 0;
  }

  else
  {
    if ([+[VCDefaults forceMultiwayHWI] sharedInstance]
    {
      v11 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
      v12 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
    }

    else
    {
      v11 = width;
      v12 = height;
    }

    v13 = [[VCImageResizingConverter alloc] initWithOutputWidth:v11 outputHeight:v12 formatType:self->_capturePixelFormat];
    self->_imageResizingConverter = v13;
    if (!v13)
    {
      [VCAVFoundationCapture shouldResizeWithCaptureSize:&v17 requestSize:?];
      LOBYTE(self) = v17;
      return self;
    }

    LODWORD(self) = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316930;
      v18 = v14;
      v19 = 2080;
      v20 = "[VCAVFoundationCapture shouldResizeWithCaptureSize:requestSize:]";
      v21 = 1024;
      v22 = 860;
      v23 = 1024;
      v24 = self;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = width;
      v31 = 2048;
      v32 = height;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] Frame Transform resize. shouldResize=%d, catpure=%4.0fx%4.0f, request=%4.0fx%4.0f,", &v17, 0x4Au);
    }
  }

  return self;
}

+ (CGRect)calculateRegionOfInterest:(CGSize)a3 requestSize:(CGSize)a4
{
  v4 = a4.width / a4.height;
  v5 = a3.width / a3.height;
  v6 = v4;
  v7 = v4 < v5;
  v8 = a3.width / v4;
  v9 = v8 / a3.height;
  v10 = a3.width - a3.height * v6;
  v11 = a3.height * v6 / a3.width;
  if (v7)
  {
    v12 = v10 * 0.5 / a3.width;
  }

  else
  {
    v12 = 0.0;
  }

  if (v7)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = (a3.height - v8) * 0.5 / a3.height;
  }

  if (v7)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1.0;
  }

  if (v7)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = v9;
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)updateCenterStageRegionOfInterestWithLock:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_deviceSupportCinematicFraming)
  {
    v3 = a3;
    if ([MEMORY[0x1E69870A0] isCenterStageEnabled])
    {
      if ([[(AVCaptureDeviceInput *)self->_videoDeviceInput device] isCenterStageRectOfInterestSupported])
      {
        if (v3 && ![[(AVCaptureDeviceInput *)self->_videoDeviceInput device] lockForConfiguration:0])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAVFoundationCapture updateCenterStageRegionOfInterestWithLock:];
            }
          }
        }

        else
        {
          if (self->_resize)
          {
            [VCAVFoundationCapture calculateRegionOfInterest:self->_captureSize.width requestSize:self->_captureSize.height, self->_requestSize.width, self->_requestSize.height];
            v6 = v5;
            v8 = v7;
            v10 = v9;
            v12 = v11;
          }

          else
          {
            v10 = 1.0;
            v6 = 0.0;
            v8 = 0.0;
            v12 = 1.0;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v24.origin.x = v6;
              v24.origin.y = v8;
              v24.size.width = v10;
              v24.size.height = v12;
              v15 = 136315906;
              v16 = v13;
              v17 = 2080;
              v18 = "[VCAVFoundationCapture updateCenterStageRegionOfInterestWithLock:]";
              v19 = 1024;
              v20 = 895;
              v21 = 2112;
              v22 = NSStringFromRect(v24);
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d centerStageRectOfInterest=%@", &v15, 0x26u);
            }
          }

          [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] setCenterStageRectOfInterest:v6, v8, v10, v12];
          if (v3)
          {
            [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] unlockForConfiguration];
          }
        }
      }
    }
  }
}

- (void)setFaceMeshTrackingEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCAVFoundationCapture_setFaceMeshTrackingEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(captureSessionQueue, block);
}

void __52__VCAVFoundationCapture_setFaceMeshTrackingEnabled___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = 0;
  *(*(a1 + 32) + 232) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v2[232] == 1)
  {
    [v2 initializeSynchronizedOutputs];
  }

  else
  {
    [v2 tearDownSynchronizer];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 136315906;
      v14 = v3;
      v15 = 2080;
      v16 = "[VCAVFoundationCapture setFaceMeshTrackingEnabled:]_block_invoke";
      v17 = 1024;
      v18 = 969;
      v19 = 1024;
      LODWORD(v20) = v5;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Face mesh tracking enabled %d", buf, 0x22u);
    }
  }

  v11 = 15;
  if ([+[VCDefaults shouldOverrideEffectsFramerate:"shouldOverrideEffectsFramerate:"]
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCAVFoundationCapture setFaceMeshTrackingEnabled:]_block_invoke";
        v17 = 1024;
        v18 = 973;
        v19 = 1024;
        LODWORD(v20) = v11;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing Effects frame rate: %d", buf, 0x22u);
      }
    }
  }

  if ([*(a1 + 32) supportsDepthDataFormats])
  {
    if ([*(*(a1 + 32) + 224) lockForConfiguration:&v12])
    {
      [*(a1 + 32) updateDepthFrameRate];
      [*(*(a1 + 32) + 224) unlockForConfiguration];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *(*(a1 + 32) + 224);
        *buf = 136316162;
        v14 = v8;
        v15 = 2080;
        v16 = "[VCAVFoundationCapture setFaceMeshTrackingEnabled:]_block_invoke";
        v17 = 1024;
        v18 = 981;
        v19 = 2112;
        v20 = v10;
        v21 = 2112;
        v22 = v12;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to retain lock for capture device=%@. Error=%@", buf, 0x30u);
      }
    }
  }
}

- (void)setEffectsApplied:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCAVFoundationCapture_setEffectsApplied___block_invoke;
  block[3] = &unk_1E85F37A0;
  v5 = a3;
  block[4] = self;
  dispatch_async(captureSessionQueue, block);
}

uint64_t __43__VCAVFoundationCapture_setEffectsApplied___block_invoke(uint64_t result)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 235))
  {
    v3 = result;
    *(v2 + 235) = v1;
    v4 = [*(result + 32) isFrontCamera];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v6 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v3 + 32);
        v10 = v9[235];
        v11 = v9[246];
        LODWORD(v9) = v9[249];
        *buf = 136316674;
        v23 = v7;
        v24 = 2080;
        v25 = "[VCAVFoundationCapture setEffectsApplied:]_block_invoke";
        v26 = 1024;
        v27 = 993;
        v28 = 1024;
        v29 = v4;
        v30 = 1024;
        v31 = v10;
        v32 = 1024;
        v33 = v11;
        v34 = 1024;
        v35 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isFrontCamera=%d, _effectsApplied=%d, _supportNoDepthMemoji=%d, _deviceSupportsTrueDepthSwitchForEffects=%d", buf, 0x34u);
      }
    }

    if (v4)
    {
      v12 = *(v3 + 32);
      if ((v12[246] & 1) == 0 && v12[249] == 1)
      {
        if (v12[235])
        {
          v13 = @"com.apple.avfoundation.avcapturedevice.built-in_video:4";
        }

        else
        {
          v13 = @"com.apple.avfoundation.avcapturedevice.built-in_video:8";
        }

        [v12 setCameraWithUID:v13];
      }
    }

    v14 = *(v3 + 32);
    if (*(v14 + 235))
    {
      v21 = 15;
      if ([+[VCDefaults shouldOverrideEffectsFramerate:"shouldOverrideEffectsFramerate:"]
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v23 = v15;
            v24 = 2080;
            v25 = "[VCAVFoundationCapture setEffectsApplied:]_block_invoke";
            v26 = 1024;
            v27 = 1008;
            v28 = 1024;
            v29 = v21;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing Effects frame rate: %d", buf, 0x22u);
          }
        }
      }
    }

    else
    {
      v21 = *(v14 + 296);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(v3 + 40);
        *buf = 136316162;
        v23 = v17;
        v24 = 2080;
        v25 = "[VCAVFoundationCapture setEffectsApplied:]_block_invoke";
        v26 = 1024;
        v27 = 1010;
        v28 = 1024;
        v29 = v19;
        v30 = 1024;
        v31 = v21;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Effects applied %d, framerate %d", buf, 0x28u);
      }
    }

    result = *(v3 + 32);
    if (*(result + 288) != v21)
    {
      v20 = [result captureServer];
      return [v20 setCaptureFrameRate:v21];
    }
  }

  return result;
}

- (void)encodeProcessedPixelBuffer:(__CVBuffer *)a3 time:(id *)a4 imageData:(id)a5 processTime:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = atomic_load(&self->_pixelBufferCVO);
  if (v11 != -1)
  {
    VCCVOExtensionUtils_AttachCVOToPixelBuffer(a3, v11);
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
        var0 = a4->var0;
        *buf = 136315906;
        v21 = v12;
        v22 = 2080;
        v23 = "[VCAVFoundationCapture encodeProcessedPixelBuffer:time:imageData:processTime:]";
        v24 = 1024;
        v25 = 1025;
        v26 = 2048;
        v27 = var0;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Send processed video frame to encoder %lld", buf, 0x26u);
        if (!a3)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [VCAVFoundationCapture encodeProcessedPixelBuffer:time:imageData:processTime:];
      if (!a3)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  if (a3)
  {
LABEL_10:
    CFRetain(a3);
  }

LABEL_11:
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__VCAVFoundationCapture_encodeProcessedPixelBuffer_time_imageData_processTime___block_invoke;
  block[3] = &unk_1E85F77F0;
  block[4] = self;
  block[5] = a6;
  v18 = *&a4->var0;
  var3 = a4->var3;
  block[6] = a5;
  block[7] = a3;
  dispatch_async(captureSessionQueue, block);
}

void __79__VCAVFoundationCapture_encodeProcessedPixelBuffer_time_imageData_processTime___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[364] == 1)
  {
    [v2 updateRenderProcessFrameRate:*(a1 + 40)];
  }

  v3 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v4 = createSampleBufferWithPixelBuffer(v3, &v14);
  v16[0] = v4;
  v5 = [*(a1 + 32) isFrontCamera];
  if (*(a1 + 48))
  {
    *&v14 = 0;
    v6 = MEMORY[0x1E696ACD0];
    if (qword_1EDBDA8C0 != -1)
    {
      __79__VCAVFoundationCapture_encodeProcessedPixelBuffer_time_imageData_processTime___block_invoke_cold_1();
    }

    v7 = [v6 unarchivedObjectOfClass:qword_1EDBDA8B8 fromData:*(a1 + 48) error:&v14];
    v8 = [v7 cameraPosition] != 1;
    v9 = [v7 isMirrored];
    v10 = *(a1 + 32);
  }

  else
  {
    v8 = v5;
    v10 = *(a1 + 32);
    v9 = *(v10 + 467) & v8;
  }

  if (*(v10 + 504) == 1)
  {
    v11 = *(v10 + 528);
    v12 = *(v10 + 536);
    v14 = *(a1 + 64);
    v15 = *(a1 + 80);
    _VCAVFoundationCapture_ConvertPixelFormat(v11, v12, v16, &v14);
    v10 = *(a1 + 32);
    v4 = v16[0];
  }

  if (*(v10 + 246) == 1)
  {
    _VCAVFoundationCapture_AttachPropagatableAFB(v10, v4);
    v10 = *(a1 + 32);
  }

  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  _VCAVFoundationCapture_PushFrameToCaptureServer(v10, v4, &v14, !v8, v9 & 1);
  FigSampleBufferRelease();
  v13 = *(a1 + 56);
  if (v13)
  {
    CFRelease(v13);
  }
}

- (void)updateRenderProcessFrameRate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 floatValue];
    v5 = [(NSMutableArray *)self->_renderFrameTimes count];
    if (v5 == [VCDefaults integerValueForKey:@"effectsProcessWindow" defaultValue:60])
    {
      [-[NSMutableArray objectAtIndexedSubscript:](self->_renderFrameTimes objectAtIndexedSubscript:{0), "floatValue"}];
      self->_processTimeSum = self->_processTimeSum - v6;
      [(NSMutableArray *)self->_renderFrameTimes removeObjectAtIndex:0];
    }

    [(NSMutableArray *)self->_renderFrameTimes addObject:a3];
    [a3 floatValue];
    v8 = v7 + self->_processTimeSum;
    self->_processTimeSum = v8;
    v9 = v8 / [(NSMutableArray *)self->_renderFrameTimes count];
    v10 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
    if (v10)
    {
      [(AVCaptureDevice *)v10 activeVideoMaxFrameDuration];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    Seconds = CMTimeGetSeconds(&v19);
    v12 = Seconds;
    [VCDefaults getDoubleValueForKey:@"effectsProcessBoundPercentage" defaultValue:0.1];
    v14 = v12 - v12 * v13;
    [VCDefaults getDoubleValueForKey:@"effectsProcessBoundPercentage" defaultValue:0.1];
    v17 = v12 + v12 * v16;
    if (v9 < v14 || v9 > v17)
    {
      LODWORD(v15) = vcvtms_s32_f32(1.0 / v9);
      [(VCAVFoundationCapture *)self setFrameRateInternal:v15 forceSourceFrameRateDidChange:0];
    }
  }
}

- (void)processMetadataObjects:(id)a3
{
  if ([(NSMutableArray *)self->_cachedDataArray count]== 5)
  {
    [(NSMutableArray *)self->_cachedDataArray removeObjectAtIndex:0];
  }

  cachedDataArray = self->_cachedDataArray;
  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:a3];

  [(NSMutableArray *)cachedDataArray addObject:v6];
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  block[6] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_useAVConferenced)
  {
    [(VCAVFoundationCapture *)self processMetadataObjects:a4];
  }

  else
  {
    captureSessionQueue = self->_captureSessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[4] = self;
    block[5] = a4;
    block[2] = __79__VCAVFoundationCapture_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke;
    block[3] = &unk_1E85F37F0;
    dispatch_async(captureSessionQueue, block);
  }
}

void __79__VCAVFoundationCapture_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) processMetadataObjects:*(a1 + 40)];
  v2 = *(a1 + 40);
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  CFRetain(a4);
  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  memset(&v13, 170, sizeof(v13));
  CMSampleBufferGetPresentationTimeStamp(&v13, a4);
  IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
  if (IOSurface)
  {
    IOSurfaceGetID(IOSurface);
  }

  time = v13;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  if (self->_useAVConferenced)
  {
    time = v13;
    _VCAVFoundationCapture_ProcessSampleBufferWithCaptureOutput(self, a4, &time, a3);
    FigSampleBufferRelease();
  }

  else
  {
    captureSessionQueue = self->_captureSessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__VCAVFoundationCapture_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
    block[3] = &unk_1E85F7818;
    block[5] = a3;
    block[6] = a4;
    v12 = v13;
    block[4] = self;
    dispatch_async(captureSessionQueue, block);
  }
}

uint64_t __76__VCAVFoundationCapture_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  _VCAVFoundationCapture_ProcessSampleBufferWithCaptureOutput(v3, v2, &v6, v4);

  return FigSampleBufferRelease();
}

- (opaqueCMSampleBuffer)newSimulatedTallFormat:(opaqueCMSampleBuffer *)a3 frameTime:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_simulateTallCaptureFormat)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  [(VCImageConverterBase *)self->_imageCroppingConverter ensureBufferPoolSupportsOutputWidth:((Height * Height) / Width) outputHeight:Height];
  imageCroppingConverter = self->_imageCroppingConverter;
  v15 = *a4;
  v11 = VCImageResizingConverter_CreateResizedSampleBuffer(imageCroppingConverter, a3, &v15);
  [(VCImageConverterBase *)self->_imageResizingConverter ensureBufferPoolSupportsOutputWidth:Width outputHeight:Height];
  imageResizingConverter = self->_imageResizingConverter;
  v15 = *a4;
  v13 = VCImageResizingConverter_CreateResizedSampleBuffer(imageResizingConverter, v11, &v15);
  FigSampleBufferRelease();
  return v13;
}

- (void)resetViewPointLogging
{
  self->_VPCProcessedFrameCount = 0;
  self->_VPCModifiedFrameCount = 0;
  self->_viewpointProcessTime = 0.0;
}

- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [a4 objectForKeyedSubscript:self->_videoCaptureOutput];
  v8 = [a4 objectForKeyedSubscript:self->_metadataOutput];
  if (self->_depthDataOutput)
  {
    v9 = [a4 objectForKeyedSubscript:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_msgSend(a3 "dataOutputs")];
  v11 = [objc_msgSend(objc_msgSend(v10 connectionWithMediaType:{*MEMORY[0x1E6987608]), "inputPorts"), "firstObject"}];
  v12 = [objc_msgSend(v11 "input")];
  if (v7)
  {
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v7 sampleBuffer];
      memset(&v17, 170, sizeof(v17));
      CMSampleBufferGetPresentationTimeStamp(&v17, v14);
      if ([v7 sampleBufferWasDropped])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAVFoundationCapture dataOutputSynchronizer:v15 didOutputSynchronizedDataCollection:v7];
          }
        }
      }

      else
      {
        [v11 clock];
        v16 = v17;
        _VCAVFoundationCapture_ProcessSampleBuffer(self, v14, &v16, v9, v8, v13);
      }
    }
  }
}

- (void)captureSessionNotification:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if ([(VCVideoCapture *)self captureServer])
  {
    captureSessionQueue = self->_captureSessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__VCAVFoundationCapture_captureSessionNotification___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = a3;
    block[5] = self;
    dispatch_async(captureSessionQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAVFoundationCapture captureSessionNotification:];
    }
  }
}

void __52__VCAVFoundationCapture_captureSessionNotification___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) name];
      v36 = 136315906;
      v37 = v2;
      v38 = 2080;
      v39 = "[VCAVFoundationCapture captureSessionNotification:]_block_invoke";
      v40 = 1024;
      v41 = 1551;
      v42 = 2112;
      v43 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d notification.name=%@", &v36, 0x26u);
    }
  }

  v5 = (a1 + 32);
  v6 = [*(a1 + 32) name];
  v7 = [v6 isEqualToString:*MEMORY[0x1E6986B28]];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 userInfo];
    v10 = [objc_msgSend(v9 objectForKeyedSubscript:{*MEMORY[0x1E6986AB0]), "stringValue"}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136315906;
        v37 = v11;
        v38 = 2080;
        v39 = "[VCAVFoundationCapture captureSessionNotification:]_block_invoke";
        v40 = 1024;
        v41 = 1555;
        v42 = 2112;
        v43 = v10;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d session interrupted. reason=%@", &v36, 0x26u);
      }
    }

    [objc_msgSend(*(a1 + 40) "captureServer")];
    return;
  }

  v13 = [v8 name];
  if ([v13 isEqualToString:*MEMORY[0x1E6986AA8]])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136315650;
        v37 = v14;
        v38 = 2080;
        v39 = "[VCAVFoundationCapture captureSessionNotification:]_block_invoke";
        v40 = 1024;
        v41 = 1558;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d session interruption ended", &v36, 0x1Cu);
      }
    }

    v16 = [*(a1 + 40) captureServer];
    v17 = @"avCaptureCameraBecameAvailable";
LABEL_32:
    [v16 handleCaptureEvent:v17];
    return;
  }

  v18 = [*v5 name];
  v19 = [v18 isEqualToString:*MEMORY[0x1E6986B20]];
  v20 = *v5;
  if (v19)
  {
    v21 = [v20 userInfo];
    v22 = [v21 objectForKey:*MEMORY[0x1E6986AA0]];
    v23 = VCFeatureFlagManager_DaemonCrashRecovery();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v34 = [v22 code];
        v35 = *(*(a1 + 40) + 361);
        v36 = 136316674;
        v37 = v24;
        v38 = 2080;
        v39 = "[VCAVFoundationCapture captureSessionNotification:]_block_invoke";
        v40 = 1024;
        v41 = 1564;
        v42 = 2112;
        v43 = @"avCaptureFail";
        v44 = 1024;
        v45 = v23;
        v46 = 1024;
        v47 = v34;
        v48 = 1024;
        v49 = v35;
        _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d eventType=%@, daemonCrashRecoveryEnabled=%d, error.code=%d, _isPreviewing=%d", &v36, 0x38u);
      }
    }

    if ([v22 code] == -11819)
    {
      v26 = *(a1 + 40);
      if (*(v26 + 361) & v23)
      {
        [*(v26 + 184) stopRunning];
        [*(*(a1 + 40) + 184) startRunning];
      }

      v27 = @"avCaptureServerDied";
    }

    else
    {
      v27 = @"avCaptureFail";
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __52__VCAVFoundationCapture_captureSessionNotification___block_invoke_cold_1();
      }
    }

    v16 = [*(a1 + 40) captureServer];
    v17 = v27;
    goto LABEL_32;
  }

  v28 = [v20 name];
  if ([v28 isEqualToString:*MEMORY[0x1E6986A90]])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136315650;
        v37 = v29;
        v38 = 2080;
        v39 = "[VCAVFoundationCapture captureSessionNotification:]_block_invoke";
        v40 = 1024;
        v41 = 1577;
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d session started running", &v36, 0x1Cu);
      }
    }

    v16 = [*(a1 + 40) captureServer];
    v17 = @"avCaptureCameraDidStart";
    goto LABEL_32;
  }

  v31 = [*v5 name];
  if ([v31 isEqualToString:*MEMORY[0x1E6986A98]])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136315650;
        v37 = v32;
        v38 = 2080;
        v39 = "[VCAVFoundationCapture captureSessionNotification:]_block_invoke";
        v40 = 1024;
        v41 = 1580;
        _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d session stopped running", &v36, 0x1Cu);
      }
    }
  }
}

- (int)startPreview
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCAVFoundationCapture_startPreview__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captureSessionQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __37__VCAVFoundationCapture_startPreview__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 361) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = -2146893775;
  }

  else
  {
    *(v2 + 361) = 1;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v4 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCAVFoundationCapture startPreview]_block_invoke";
        v13 = 1024;
        v14 = 1599;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSession startRunning", &v9, 0x1Cu);
      }
    }

    [*(*(a1 + 32) + 184) startRunning];
    *(*(a1 + 32) + 312) = micro();
    [*(a1 + 32) unlockAVCaptureDeviceInputForConfiguration];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v7;
        v11 = 2080;
        v12 = "[VCAVFoundationCapture startPreview]_block_invoke";
        v13 = 1024;
        v14 = 1603;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v9, 0x1Cu);
      }
    }
  }
}

- (int)startCaptureWithWidth:(int)a3 height:(int)a4 frameRate:(int)a5
{
  v26 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAVFoundationCapture startCaptureWithWidth:height:frameRate:]";
      *&buf[22] = 1024;
      v19 = 1610;
      v20 = 1024;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      v24 = 1024;
      v25 = a5;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d width=%d, height=%d, frameRate=%d", buf, 0x2Eu);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__VCAVFoundationCapture_startCaptureWithWidth_height_frameRate___block_invoke;
  v14[3] = &unk_1E85F7840;
  v15 = a3;
  v16 = a4;
  v14[4] = self;
  v14[5] = buf;
  v17 = a5;
  dispatch_sync(captureSessionQueue, v14);
  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v12;
}

void __64__VCAVFoundationCapture_startCaptureWithWidth_height_frameRate___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) captureServer];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "captureServer")];
  }

  [*(a1 + 32) captureServer];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "captureServer")];
  }

  v2 = *(a1 + 32);
  if (*(v2 + 362) == 1 && *(v2 + 328) == *(a1 + 48) && *(v2 + 336) == *(a1 + 52) && *(v2 + 446) == *(v2 + 447))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v3;
        v14 = 2080;
        v15 = "[VCAVFoundationCapture startCaptureWithWidth:height:frameRate:]_block_invoke";
        v16 = 1024;
        v17 = 1625;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Capture is already running with the same camera format and same remotePreferFullBleed", &v12, 0x1Cu);
      }
    }

    v5 = *(*(a1 + 40) + 8);
    v6 = -2146893775;
LABEL_23:
    *(v5 + 24) = v6;
    return;
  }

  if ((*(v2 + 361) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __64__VCAVFoundationCapture_startCaptureWithWidth_height_frameRate___block_invoke_cold_1();
      }
    }

    v5 = *(*(a1 + 40) + 8);
    v6 = -2146893820;
    goto LABEL_23;
  }

  v7 = (v2 + 328);
  v8 = *(a1 + 52);
  *v7 = *(a1 + 48);
  v7[1] = v8;
  *(*(a1 + 32) + 447) = *(*(a1 + 32) + 446);
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) setVideoDeviceToWidth:? height:? frameRate:?];
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(a1 + 32) + 362) = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 362);
      v12 = 136315906;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCAVFoundationCapture startCaptureWithWidth:height:frameRate:]_block_invoke";
      v16 = 1024;
      v17 = 1648;
      v18 = 1024;
      v19 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _isCapturing = %d", &v12, 0x22u);
    }
  }
}

- (int64_t)captureTierForEncodingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = 0;
  v36 = *MEMORY[0x1E69E9840];
  v7 = -1;
  v8 = -1;
  v9 = a3.width / a3.height;
  while (1)
  {
    [VideoUtil sizeForVideoResolution:v6];
    v11 = v10;
    v13 = v12;
    v14 = v10;
    v15 = v12;
    if (![(VCAVFoundationCapture *)self cameraSupportsNoQueueFormatWidth:v10 height:v12])
    {
      v17 = v8;
      goto LABEL_15;
    }

    if (width == v14 && height == v15)
    {
      goto LABEL_23;
    }

    v17 = v6;
    if (vabdd_f64(v11 / v13, v9) < 0.05)
    {
      break;
    }

LABEL_15:
    ++v6;
    v8 = v17;
    if (v6 == 28)
    {
      goto LABEL_24;
    }
  }

  if (v11 <= width || v13 <= height)
  {
    v17 = v8;
    v7 = v6;
    goto LABEL_15;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 8)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    v22 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136316418;
        v25 = v20;
        v26 = 2080;
        v27 = "[VCAVFoundationCapture captureTierForEncodingSize:]";
        v28 = 1024;
        v29 = 1671;
        v30 = 2048;
        v31 = v6;
        v32 = 2048;
        v33 = v11;
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d resolution i = %ld, found optimal capture tier. width=%f, height=%f", &v24, 0x3Au);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v24 = 136316418;
      v25 = v20;
      v26 = 2080;
      v27 = "[VCAVFoundationCapture captureTierForEncodingSize:]";
      v28 = 1024;
      v29 = 1671;
      v30 = 2048;
      v31 = v6;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v13;
      _os_log_debug_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEBUG, " [%s] %s:%d resolution i = %ld, found optimal capture tier. width=%f, height=%f", &v24, 0x3Au);
    }
  }

LABEL_23:
  v17 = v8;
  v7 = v6;
LABEL_24:
  if (v7 == -1)
  {
    return v17;
  }

  else
  {
    return v7;
  }
}

- (int)stop:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      isPreviewing = self->_isPreviewing;
      isCapturing = self->_isCapturing;
      *buf = 136316418;
      v14 = v5;
      v15 = 2080;
      v16 = "[VCAVFoundationCapture stop:]";
      v17 = 1024;
      v18 = 1682;
      v19 = 1024;
      v20 = v3;
      v21 = 1024;
      v22 = isPreviewing;
      v23 = 1024;
      v24 = isCapturing;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d shouldStopPreview=%d _isPreviewing=%d _isCapturing=%d", buf, 0x2Eu);
    }
  }

  captureSessionQueue = self->_captureSessionQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__VCAVFoundationCapture_stop___block_invoke;
  v11[3] = &unk_1E85F37A0;
  v11[4] = self;
  v12 = v3;
  dispatch_sync(captureSessionQueue, v11);
  return 0;
}

void __30__VCAVFoundationCapture_stop___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 362) & 1) != 0 || (*(v2 + 361))
  {
    *(v2 + 362) = 0;
    if (*(a1 + 40) == 1)
    {
      *(*(a1 + 32) + 361) = 0;
      [*(*(a1 + 32) + 184) stopRunning];
      *(*(a1 + 32) + 320) = micro() - *(*(a1 + 32) + 312) + *(*(a1 + 32) + 320);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315650;
          v11 = v3;
          v12 = 2080;
          v13 = "[VCAVFoundationCapture stop:]_block_invoke";
          v14 = 1024;
          v15 = 1694;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSession stopRunning", &v10, 0x1Cu);
        }
      }

      [objc_msgSend(*(a1 + 32) "captureServer")];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 32);
      v9 = *(v8 + 361);
      LODWORD(v8) = *(v8 + 362);
      v10 = 136316418;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCAVFoundationCapture stop:]_block_invoke";
      v14 = 1024;
      v15 = 1686;
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v8;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d preview already stopped! shouldStopPreview=%d _isPreviewing=%d _isCapturing=%d", &v10, 0x2Eu);
    }
  }
}

- (int)invalidate
{
  v4[5] = *MEMORY[0x1E69E9840];
  captureSessionQueue = self->_captureSessionQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__VCAVFoundationCapture_invalidate__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_sync(captureSessionQueue, v4);
  return 0;
}

- (int)setWidth:(int)a3 height:(int)a4 frameRate:(int)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCAVFoundationCapture_setWidth_height_frameRate___block_invoke;
  block[3] = &unk_1E85F7840;
  v9 = a3;
  v10 = a4;
  block[4] = self;
  block[5] = &v12;
  v11 = a5;
  dispatch_sync(captureSessionQueue, block);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

void __51__VCAVFoundationCapture_setWidth_height_frameRate___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 32) + 328);
  v3 = *(a1 + 52);
  *v2 = *(a1 + 48);
  v2[1] = v3;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) setVideoDeviceToWidth:? height:? frameRate:?];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 52);
      v8 = *(a1 + 56);
      v9 = *(*(*(a1 + 40) + 8) + 24);
      v10 = 136316674;
      v11 = v4;
      v12 = 2080;
      v13 = "[VCAVFoundationCapture setWidth:height:frameRate:]_block_invoke";
      v14 = 1024;
      v15 = 1715;
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %dx%d/%d, error=%d", &v10, 0x34u);
    }
  }
}

- (int)copyColorInfo:(const __CFDictionary *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  captureSessionQueue = self->_captureSessionQueue;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__VCAVFoundationCapture_copyColorInfo___block_invoke;
  v6[3] = &unk_1E85F3930;
  v6[5] = &v7;
  v6[6] = a3;
  v6[4] = self;
  dispatch_sync(captureSessionQueue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __39__VCAVFoundationCapture_copyColorInfo___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    Mutable = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Extensions = CMFormatDescriptionGetExtensions([objc_msgSend(objc_msgSend(*(*(a1 + 32) + 152) "device")]);
    v4 = [(__CFDictionary *)Extensions objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
    v5 = [(__CFDictionary *)Extensions objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
    v6 = [(__CFDictionary *)Extensions objectForKeyedSubscript:*MEMORY[0x1E6965F98]];
    if (v4)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E69835B0], v4);
    }

    if (v5)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6983878], v5);
    }

    if (v6)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E69838B8], v6);
    }

    **(a1 + 48) = Mutable;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = -2146893823;
  }
}

- (BOOL)isPreviewRunning
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCAVFoundationCapture_isPreviewRunning__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captureSessionQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__VCAVFoundationCapture_isPreviewRunning__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 361);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 40) + 8) + 24);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCAVFoundationCapture isPreviewRunning]_block_invoke";
      v9 = 1024;
      v10 = 1753;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isPreviewRunning=%d", &v5, 0x22u);
    }
  }
}

- (int)setFrameRateInternal:(int)a3 forceSourceFrameRateDidChange:(BOOL)a4
{
  v4 = *&a3;
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (a3 <= 0)
  {
    v10 = -2146893823;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAVFoundationCapture setFrameRateInternal:forceSourceFrameRateDidChange:];
      }
    }
  }

  else
  {
    v5 = a4;
    if ([[(AVCaptureDeviceInput *)self->_videoDeviceInput device] lockForConfiguration:&v18])
    {
      memset(v17, 170, sizeof(v17));
      [(VCAVFoundationCapture *)self frameDurationForVideoDeviceFormat:[[(AVCaptureDeviceInput *)self->_videoDeviceInput device] activeFormat] frameRate:v4];
      if (v17[12])
      {
        activeFrameRate = self->_activeFrameRate;
        self->_activeFrameRate = v4;
        v12 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
        *buf = *v17;
        *&buf[16] = *&v17[16];
        [(AVCaptureDevice *)v12 setActiveVideoMaxFrameDuration:buf];
        v13 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
        *buf = *v17;
        *&buf[16] = *&v17[16];
        [(AVCaptureDevice *)v13 setActiveVideoMinFrameDuration:buf];
        [(VCAVFoundationCapture *)self setCaptureDeviceMinFrameRateIfNeeded:v4];
        [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] unlockForConfiguration];
        if (activeFrameRate != v4 || v5)
        {
          [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] sourceFrameRateDidChange:v4];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v14;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAVFoundationCapture setFrameRateInternal:forceSourceFrameRateDidChange:]";
            *&buf[22] = 1024;
            v20 = 1777;
            v21 = 1024;
            v22 = v4;
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Frame rate set to %d", buf, 0x22u);
          }
        }

        return 0;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v9 = [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] activeFormat];
            *buf = 136316162;
            *&buf[4] = v7;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAVFoundationCapture setFrameRateInternal:forceSourceFrameRateDidChange:]";
            *&buf[22] = 1024;
            v20 = 1780;
            v21 = 1024;
            v22 = v4;
            v23 = 2112;
            v24 = v9;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Frame rate %d is not found in format %@ active ", buf, 0x2Cu);
          }
        }

        [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] unlockForConfiguration];
        return -2146893820;
      }
    }

    else
    {
      v10 = -2146893818;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAVFoundationCapture setFrameRateInternal:forceSourceFrameRateDidChange:];
          return -2146893818;
        }
      }
    }
  }

  return v10;
}

- (int)setFrameRate:(int)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  lastClientRequestedFrameRate = a3;
  if (self->_effectsApplied)
  {
    lastClientRequestedFrameRate = self->_lastClientRequestedFrameRate;
  }

  captureSessionQueue = self->_captureSessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__VCAVFoundationCapture_setFrameRate___block_invoke;
  v7[3] = &unk_1E85F6D88;
  v7[4] = self;
  v7[5] = &v10;
  v8 = a3;
  v9 = lastClientRequestedFrameRate;
  dispatch_sync(captureSessionQueue, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __38__VCAVFoundationCapture_setFrameRate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) getMaxAllowedFrameRate:*(a1 + 48)];
  result = [*(a1 + 32) setFrameRateInternal:? forceSourceFrameRateDidChange:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *(*(a1 + 32) + 296) = *(a1 + 52);
  return result;
}

- (int)getFrameRate
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCAVFoundationCapture_getFrameRate__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captureSessionQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)getMaxAllowedFrameRate:(int)a3
{
  v3 = *&a3;
  v31 = *MEMORY[0x1E69E9840];
  if (self->_effectsApplied)
  {
    if (a3 >= 0x10 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136316162;
        v20 = v5;
        v21 = 2080;
        v22 = "[VCAVFoundationCapture getMaxAllowedFrameRate:]";
        v23 = 1024;
        v24 = 1817;
        v25 = 1024;
        v26 = 15;
        v27 = 2080;
        v28 = "Effect";
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d framerate throttled to %3d by %-20s", &v19, 0x2Cu);
      }
    }

    if (v3 >= 15)
    {
      v3 = 15;
    }

    else
    {
      v3 = v3;
    }
  }

  if (self->_deviceSupportCinematicFraming && v3 >= 0x1F && self->_cframingEnabled)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      v3 = 30;
    }

    else
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v3 = 30;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136316162;
        v20 = v7;
        v21 = 2080;
        v22 = "[VCAVFoundationCapture getMaxAllowedFrameRate:]";
        v23 = 1024;
        v24 = 1826;
        v25 = 1024;
        v26 = 30;
        v27 = 2080;
        v28 = "Center Stage";
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d framerate throttled to %3d by %-20s", &v19, 0x2Cu);
      }
    }
  }

  if ([(AVCaptureDevice *)self->_captureDevice isBackgroundBlurActive])
  {
    v9 = +[VCHardwareSettings maxFrameRateSupportedBackgroundBlur];
    if (v3 > v9)
    {
      v10 = v9;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136316162;
          v20 = v11;
          v21 = 2080;
          v22 = "[VCAVFoundationCapture getMaxAllowedFrameRate:]";
          v23 = 1024;
          v24 = 1836;
          v25 = 1024;
          v26 = v10;
          v27 = 2080;
          v28 = "Blur";
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d framerate throttled to %3d by %-20s", &v19, 0x2Cu);
        }
      }

      v3 = v10;
    }
  }

  v13 = [(VCAVFoundationCapture *)self getSupportedMaxDeviceFrameRateWithFrameRateCap:v3];
  if (v13 < 1)
  {
    return v3;
  }

  v14 = v13;
  if (v13 >= v3)
  {
    return v3;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
      v19 = 136316418;
      v20 = v15;
      v21 = 2080;
      v22 = "[VCAVFoundationCapture getMaxAllowedFrameRate:]";
      v23 = 1024;
      v24 = 1844;
      v25 = 1024;
      v26 = v3;
      v27 = 2112;
      v28 = v17;
      v29 = 1024;
      v30 = v14;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d frameRate=%d is not supported by device=%@. Using frameRate=%d instead", &v19, 0x32u);
    }
  }

  return v14;
}

- (int)captureDeviceActiveFrameRate
{
  v6 = *MEMORY[0x1E69E9840];
  captureDevice = self->_captureDevice;
  if (captureDevice)
  {
    [(AVCaptureDevice *)captureDevice activeVideoMinFrameDuration];
    Seconds = CMTimeGetSeconds(&v5);
    if (Seconds <= 0.0)
    {
      LODWORD(captureDevice) = 0;
    }

    else
    {
      LODWORD(captureDevice) = llround(1.0 / Seconds);
    }
  }

  return captureDevice;
}

- (int)getSupportedMaxDeviceFrameRateWithFrameRateCap:(int)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(VCAVFoundationCapture *)self getCaptureFormatList];
  v19 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
  v5 = 0;
  if (v19)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        if ([(VCAVFoundationCapture *)self hasRequiredAttributes:v7])
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v8 = [v7 videoSupportedFrameRateRanges];
          v9 = [v8 countByEnumeratingWithState:&v22 objects:v21 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v23;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v23 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v22 + 1) + 8 * j);
                [v13 minFrameRate];
                v15 = v14;
                [v13 maxFrameRate];
                if (v15 <= a3)
                {
                  if (v16 >= a3)
                  {
                    return a3;
                  }

                  if (v5 <= v16)
                  {
                    v5 = v16;
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v22 objects:v21 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v19);
  }

  return v5;
}

- (BOOL)isCurrentCaptureDeviceAppleProduct
{
  v2 = [(AVCaptureDevice *)self->_captureDevice manufacturer];

  return [(NSString *)v2 containsString:@"Apple Inc."];
}

- (int)configureCaptureWithToken:(_VCVideoSourceToken)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  captureSessionQueue = self->_captureSessionQueue;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VCAVFoundationCapture_configureCaptureWithToken___block_invoke;
  v6[3] = &unk_1E85F64A0;
  v6[4] = self;
  v6[5] = &v8;
  var0 = a3.var0.var0;
  dispatch_sync(captureSessionQueue, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __51__VCAVFoundationCapture_configureCaptureWithToken___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 184) beginConfiguration];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) setCamera:*(a1 + 48) width:*(*(a1 + 32) + 328) height:*(*(a1 + 32) + 336) frameRate:*(*(a1 + 32) + 296)];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 32);
      v7 = *(v5 + 328);
      v6 = *(v5 + 336);
      v8 = *(v5 + 296);
      LODWORD(v5) = *(v5 + 361);
      v9 = *(*(*(a1 + 40) + 8) + 24);
      v12 = 136317186;
      v13 = v2;
      v14 = 2080;
      v15 = "[VCAVFoundationCapture configureCaptureWithToken:]_block_invoke";
      v16 = 1024;
      v17 = 1969;
      v18 = 1024;
      v19 = v4;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = v5;
      v28 = 2048;
      v29 = v9;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoSourceToken=0x%x(%4.0fx%4.0f/%d), isPreviewing=%d, error=0x%lx", &v12, 0x4Cu);
    }
  }

  v10 = *(a1 + 32);
  if (*(v10 + 361) == 1)
  {
    [v10 unlockAVCaptureDeviceInputForConfiguration];
    v10 = *(a1 + 32);
  }

  return [*(v10 + 184) commitConfiguration];
}

- (void)initializeViewpointCorrection
{
  v27 = *MEMORY[0x1E69E9840];
  self->_isViewpointSupported = 0;
  v3 = +[VCHardwareSettings isViewPointCorrectionSupported];
  v4 = _os_feature_enabled_impl();
  self->_isViewpointSupported = v3 & v4;
  v5 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  v6 = v5;
  if (v5 && ([v5 BOOLValue] & 1) == 0)
  {
    self->_isViewpointSupported = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136316418;
      *&v16[4] = v7;
      v17 = 2080;
      v18 = "[VCAVFoundationCapture initializeViewpointCorrection]";
      v19 = 1024;
      v20 = 1991;
      v21 = 1024;
      v22 = v3;
      v23 = 1024;
      v24 = v4 & 1;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d hardwareSupport=%d, featureFlag=%d, storeBagValue=%@", v16, 0x32u);
    }
  }

  if (VCDefaults_GetBoolValueForKey(@"VPCForceEnable", 0))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 136315650;
        *&v16[4] = v9;
        v17 = 2080;
        v18 = "[VCAVFoundationCapture initializeViewpointCorrection]";
        v19 = 1024;
        v20 = 1994;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Defaults overwrite support Viewpoint Correction to 1", v16, 0x1Cu);
      }
    }

    self->_isViewpointSupported = 1;
    goto LABEL_13;
  }

  if (self->_isViewpointSupported)
  {
LABEL_13:
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 136315650;
        *&v16[4] = v11;
        v17 = 2080;
        v18 = "[VCAVFoundationCapture initializeViewpointCorrection]";
        v19 = 1024;
        v20 = 1999;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Viewpoint Correction is supported", v16, 0x1Cu);
      }
    }

    self->_viewpointCorrection = objc_opt_new();
    [(VCAVFoundationCapture *)self setViewPointCorrectionEnabled:VCDefaults_Prod_GetEyeContactEnabledBoolValue(1)];
    goto LABEL_17;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315650;
      *&v16[4] = v14;
      v17 = 2080;
      v18 = "[VCAVFoundationCapture initializeViewpointCorrection]";
      v19 = 1024;
      v20 = 2005;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Viewpoint Correction is not supported", v16, 0x1Cu);
    }
  }

LABEL_17:
  [(VCVideoCapture *)self captureServer];
  if (objc_opt_respondsToSelector())
  {
    v16[0] = 0;
    *&v16[1] = -1;
    v16[5] = -1;
    [(VCAVFoundationCapture *)self dispatchedCurrentVideoFeatureStatus:v16];
    v13 = [(VCVideoCapture *)self captureServer];
    [(VCVideoCaptureServer *)v13 captureSourceVideoFeatureStatusDidChange:*v16 | (*&v16[4] << 32)];
  }
}

- (void)setViewPointCorrectionEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_isViewpointSupported)
  {
    captureSessionQueue = self->_captureSessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__VCAVFoundationCapture_setViewPointCorrectionEnabled___block_invoke;
    block[3] = &unk_1E85F37A0;
    block[4] = self;
    v5 = a3;
    dispatch_async(captureSessionQueue, block);
  }
}

void __55__VCAVFoundationCapture_setViewPointCorrectionEnabled___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 233);
  v3 = *(a1 + 40);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2 == v3)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        *v13 = 136315906;
        *&v13[4] = v5;
        v14 = 2080;
        v15 = "[VCAVFoundationCapture setViewPointCorrectionEnabled:]_block_invoke";
        v16 = 1024;
        v17 = 2028;
        v18 = 1024;
        v19 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d already in enabled=%d", v13, 0x22u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 233);
        v11 = *(a1 + 40);
        *v13 = 136316162;
        *&v13[4] = v8;
        v14 = 2080;
        v15 = "[VCAVFoundationCapture setViewPointCorrectionEnabled:]_block_invoke";
        v16 = 1024;
        v17 = 2030;
        v18 = 1024;
        v19 = v10;
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d->%d", v13, 0x28u);
      }
    }

    [*(*(a1 + 32) + 184) beginConfiguration];
    *(*(a1 + 32) + 233) = *(a1 + 40);
    [*(a1 + 32) resetDepthDataOutput];
    [*(a1 + 32) updateCenterStageMetadataDeliveryEnabled];
    [*(*(a1 + 32) + 184) commitConfiguration];
    [*(a1 + 32) captureServer];
    if (objc_opt_respondsToSelector())
    {
      v13[0] = 0;
      *&v13[1] = -1;
      v13[5] = -1;
      [*(a1 + 32) dispatchedCurrentVideoFeatureStatus:v13];
      v12 = [*(a1 + 32) captureServer];
      [v12 captureSourceVideoFeatureStatusDidChange:*v13 | (*&v13[4] << 32)];
    }
  }
}

- (void)updateCenterStageMetadataDeliveryEnabled
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(AVCaptureDevice *)self->_captureDevice isCenterStageMetadataDeliverySupported])
  {
    [(AVCaptureDevice *)self->_captureDevice lockForConfiguration:0];
    v3 = self->_needCenterStageMetadataForViewpointCorrection && self->_viewPointCorrectionEnabled;
    [(AVCaptureDevice *)self->_captureDevice setCenterStageMetadataDeliveryEnabled:v3];
    [(AVCaptureDevice *)self->_captureDevice unlockForConfiguration];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        needCenterStageMetadataForViewpointCorrection = self->_needCenterStageMetadataForViewpointCorrection;
        viewPointCorrectionEnabled = self->_viewPointCorrectionEnabled;
        v8 = 136316162;
        v9 = v4;
        v10 = 2080;
        v11 = "[VCAVFoundationCapture updateCenterStageMetadataDeliveryEnabled]";
        v12 = 1024;
        v13 = 2060;
        v14 = 1024;
        v15 = needCenterStageMetadataForViewpointCorrection;
        v16 = 1024;
        v17 = viewPointCorrectionEnabled;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _needCenterStageMetadataForViewpointCorrection=%d, _viewPointCorrectionEnabled=%d", &v8, 0x28u);
      }
    }
  }
}

- (void)setCaptureSIFRFormatEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCAVFoundationCapture_setCaptureSIFRFormatEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(captureSessionQueue, block);
}

void __53__VCAVFoundationCapture_setCaptureSIFRFormatEnabled___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  *(*(a1 + 32) + 240) = v2;
  *(*(a1 + 32) + 240) = VCDefaults_GetIntValueForKey(@"overrideAVCaptureSIFR", *(*(a1 + 32) + 240));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 240);
      v6 = *(a1 + 40);
      v7 = 136316162;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAVFoundationCapture setCaptureSIFRFormatEnabled:]_block_invoke";
      v11 = 1024;
      v12 = 2069;
      v13 = 1024;
      v14 = v6;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d enabled=%d _captureSIFRPreferredOverride=%d", &v7, 0x28u);
    }
  }
}

- (void)getReportingStats:(__CFDictionary *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 && self->_isCapturing)
  {
    VPCProcessedFrameCount = self->_VPCProcessedFrameCount;
    if (VPCProcessedFrameCount)
    {
      v6 = (self->_viewpointProcessTime / VPCProcessedFrameCount) * 1000.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_VPCProcessedFrameCount;
        VPCModifiedFrameCount = self->_VPCModifiedFrameCount;
        v13 = 136316418;
        v14 = v7;
        v15 = 2080;
        v16 = "[VCAVFoundationCapture getReportingStats:]";
        v17 = 1024;
        v18 = 2079;
        v19 = 1024;
        v20 = v9;
        v21 = 1024;
        v22 = VPCModifiedFrameCount;
        v23 = 2048;
        v24 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Viewpoint Health - processed frames:%d (modified=%u), average process time ms: %4.3f", &v13, 0x32u);
      }
    }

    v11 = [(VCAVFoundationCapture *)self isFrontCamera];
    CFDictionaryAddValue(a3, @"VPCFRAMECOUNT", [MEMORY[0x1E696AD98] numberWithInt:self->_VPCProcessedFrameCount]);
    CFDictionaryAddValue(a3, @"VPCMODIFYCOUNT", [MEMORY[0x1E696AD98] numberWithInt:self->_VPCModifiedFrameCount]);
    *&v12 = v6;
    CFDictionaryAddValue(a3, @"VPCPROCESSTIME", [MEMORY[0x1E696AD98] numberWithFloat:v12]);
    CFDictionaryAddValue(a3, @"CAMRESW", [MEMORY[0x1E696AD98] numberWithInt:self->_activeWidth]);
    CFDictionaryAddValue(a3, @"CAMRESH", [MEMORY[0x1E696AD98] numberWithInt:self->_activeHeight]);
    CFDictionaryAddValue(a3, @"CAMPOSCUR", [MEMORY[0x1E696AD98] numberWithInt:!v11]);
    [(VCAVFoundationCapture *)self collectCaptureFrameRateStats:a3];
    CFDictionaryAddValue(a3, @"CAMSLA", [MEMORY[0x1E696AD98] numberWithBool:{-[AVCaptureDevice isStudioLightActive](self->_captureDevice, "isStudioLightActive")}]);
    CFDictionaryAddValue(a3, @"CAMBGRA", [MEMORY[0x1E696AD98] numberWithBool:{-[AVCaptureDevice isBackgroundReplacementActive](self->_captureDevice, "isBackgroundReplacementActive")}]);
    [(VCAVFoundationCapture *)self resetViewPointLogging];
  }
}

- (void)applyBlockToAllAvailableCaptureFormats:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [&unk_1F579D170 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(&unk_1F579D170);
        }

        v8 = [MEMORY[0x1E69870A0] deviceWithUniqueID:*(*(&v32 + 1) + 8 * i)];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = [v8 formats];
        v10 = [v9 countByEnumeratingWithState:&v27 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v9);
              }

              (*(a3 + 2))(a3, *(*(&v27 + 1) + 8 * j));
            }

            v11 = [v9 countByEnumeratingWithState:&v27 objects:v26 count:16];
          }

          while (v11);
        }
      }

      v5 = [&unk_1F579D170 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v5);
  }

  captureDevice = self->_captureDevice;
  if (captureDevice)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [(AVCaptureDevice *)captureDevice formats];
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          (*(a3 + 2))(a3, *(*(&v22 + 1) + 8 * k));
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v17);
    }
  }
}

- (BOOL)isCenterStageSupported
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__VCAVFoundationCapture_isCenterStageSupported__block_invoke;
  v4[3] = &unk_1E85F7868;
  v4[4] = &v5;
  [(VCAVFoundationCapture *)self applyBlockToAllAvailableCaptureFormats:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __47__VCAVFoundationCapture_isCenterStageSupported__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCenterStageSupported];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

- (BOOL)isPortraitModeSupported
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__VCAVFoundationCapture_isPortraitModeSupported__block_invoke;
  v4[3] = &unk_1E85F7868;
  v4[4] = &v5;
  [(VCAVFoundationCapture *)self applyBlockToAllAvailableCaptureFormats:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __48__VCAVFoundationCapture_isPortraitModeSupported__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isPortraitEffectSupported];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

- (BOOL)isStudioLightSupported
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__VCAVFoundationCapture_isStudioLightSupported__block_invoke;
  v4[3] = &unk_1E85F7868;
  v4[4] = &v5;
  [(VCAVFoundationCapture *)self applyBlockToAllAvailableCaptureFormats:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __47__VCAVFoundationCapture_isStudioLightSupported__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isStudioLightSupported];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

- (BOOL)isReactionSupported
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__VCAVFoundationCapture_isReactionSupported__block_invoke;
  v4[3] = &unk_1E85F7868;
  v4[4] = &v5;
  [(VCAVFoundationCapture *)self applyBlockToAllAvailableCaptureFormats:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __44__VCAVFoundationCapture_isReactionSupported__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 reactionEffectsSupported];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

- (BOOL)isBackgroundReplacementSupported
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__VCAVFoundationCapture_isBackgroundReplacementSupported__block_invoke;
  v4[3] = &unk_1E85F7868;
  v4[4] = &v5;
  [(VCAVFoundationCapture *)self applyBlockToAllAvailableCaptureFormats:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __57__VCAVFoundationCapture_isBackgroundReplacementSupported__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isBackgroundReplacementSupported];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

+ (BOOL)isVideoCaptureOutputAspectRatioOverrideOptimizedSupported
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[VCAVFoundationCapture newVideoCaptureOutput];
  if (v2)
  {
    v3 = v2;
    if ([v2 isVideoSettingsAspectRatioOverrideSupported])
    {
      v4 = [v3 isVideoSettingsAspectRatioOverrideOptimized];
    }

    else
    {
      v4 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "+[VCAVFoundationCapture isVideoCaptureOutputAspectRatioOverrideOptimizedSupported]";
        v14 = 1024;
        v15 = 2160;
        v16 = 1024;
        v17 = [v3 isVideoSettingsAspectRatioOverrideSupported];
        v18 = 1024;
        v19 = [v3 isVideoSettingsAspectRatioOverrideOptimized];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isVideoSettingsAspectRatioOverrideSupported=%d, isVideoSettingsAspectRatioOverrideOptimized=%d", &v10, 0x28u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v5;
        v12 = 2080;
        v13 = "+[VCAVFoundationCapture isVideoCaptureOutputAspectRatioOverrideOptimizedSupported]";
        v14 = 1024;
        v15 = 2156;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d output is NULL", &v10, 0x1Cu);
      }
    }

    return 0;
  }

  return v4;
}

- (void)reportStatus:(__CFDictionary *)a3 forKey:(__CFString *)a4 supported:(BOOL)a5 enabled:(BOOL)a6
{
  v8 = [(VCAVFoundationCapture *)self featureStatusForFeatureSupported:a5 enabled:a6];
  v9 = [MEMORY[0x1E696AD98] numberWithChar:v8];

  CFDictionaryAddValue(a3, a4, v9);
}

- (char)featureStatusForFeatureSupported:(BOOL)a3 enabled:(BOOL)a4
{
  if (a3)
  {
    return a4;
  }

  else
  {
    return -1;
  }
}

- (void)retrieveInitialReportingStats:(__CFDictionary *)a3
{
  if (a3)
  {
    UserPreferenceAFBDisabled = VCDefaults_Prod_GetUserPreferenceAFBDisabled(0);
    v6 = 0;
    if (!UserPreferenceAFBDisabled)
    {
      if ([+[VCHardwareSettingsEmbedded supportsFrontCameraFullBleedCapture] sharedInstance]
      {
        v6 = 1;
      }

      else
      {
        v6 = -1;
      }
    }

    CFDictionaryAddValue(a3, @"AFBUPENB", [MEMORY[0x1E696AD98] numberWithChar:v6]);
    if (self->_isViewpointSupported)
    {
      viewPointCorrectionEnabled = self->_viewPointCorrectionEnabled;
    }

    else
    {
      viewPointCorrectionEnabled = -1;
    }

    CFDictionaryAddValue(a3, @"VideoEyeContact", [MEMORY[0x1E696AD98] numberWithChar:viewPointCorrectionEnabled]);
    v8 = [(VCAVFoundationCapture *)self isPortraitModeSupported];
    -[VCAVFoundationCapture reportStatus:forKey:supported:enabled:](self, "reportStatus:forKey:supported:enabled:", a3, @"PMFENB", v8, [MEMORY[0x1E69870A0] isPortraitEffectEnabled]);
    v9 = [(VCAVFoundationCapture *)self isStudioLightSupported];
    -[VCAVFoundationCapture reportStatus:forKey:supported:enabled:](self, "reportStatus:forKey:supported:enabled:", a3, @"SLFENB", v9, [MEMORY[0x1E69870A0] isStudioLightEnabled]);
    v10 = [(VCAVFoundationCapture *)self isCenterStageSupported];
    -[VCAVFoundationCapture reportStatus:forKey:supported:enabled:](self, "reportStatus:forKey:supported:enabled:", a3, @"CSFENB", v10, [MEMORY[0x1E69870A0] isCenterStageEnabled]);
    v11 = [(VCAVFoundationCapture *)self isReactionSupported];
    -[VCAVFoundationCapture reportStatus:forKey:supported:enabled:](self, "reportStatus:forKey:supported:enabled:", a3, @"REFENB", v11, [MEMORY[0x1E69870A0] reactionEffectsEnabled]);
    v12 = [(VCAVFoundationCapture *)self isBackgroundReplacementSupported];
    v13 = [MEMORY[0x1E69870A0] isBackgroundReplacementEnabled];

    [(VCAVFoundationCapture *)self reportStatus:a3 forKey:@"BGRFENB" supported:v12 enabled:v13];
  }
}

- (void)dispatchedCurrentVideoFeatureStatus:(tagVCVideoCaptureFeatureStatus *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (self->_isViewpointSupported)
    {
      viewPointCorrectionEnabled = self->_viewPointCorrectionEnabled;
    }

    else
    {
      viewPointCorrectionEnabled = -1;
    }

    a3->var0 = viewPointCorrectionEnabled;
    captureDevice = self->_captureDevice;
    if (captureDevice)
    {
      v17 = self;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = [(AVCaptureDevice *)captureDevice formats];
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = *v21;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v6);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            v13 |= [v16 isCenterStageSupported];
            v9 |= [v16 isPortraitEffectSupported];
            v10 |= [v16 reactionEffectsSupported];
            v11 |= [v16 isStudioLightSupported];
            v12 |= [v16 isBackgroundReplacementSupported];
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v19 count:16];
        }

        while (v8);
      }

      else
      {
        LOBYTE(v9) = 0;
        LOBYTE(v10) = 0;
        LOBYTE(v11) = 0;
        LOBYTE(v12) = 0;
        LOBYTE(v13) = 0;
      }

      a3->var1 = -[VCAVFoundationCapture featureStatusForFeatureSupported:enabled:](v17, "featureStatusForFeatureSupported:enabled:", v13 & 1, [MEMORY[0x1E69870A0] isCenterStageEnabled]);
      a3->var2 = -[VCAVFoundationCapture featureStatusForFeatureSupported:enabled:](v17, "featureStatusForFeatureSupported:enabled:", v9 & 1, [MEMORY[0x1E69870A0] isPortraitEffectEnabled]);
      a3->var4 = -[VCAVFoundationCapture featureStatusForFeatureSupported:enabled:](v17, "featureStatusForFeatureSupported:enabled:", v10 & 1, [MEMORY[0x1E69870A0] reactionEffectsEnabled]);
      a3->var3 = -[VCAVFoundationCapture featureStatusForFeatureSupported:enabled:](v17, "featureStatusForFeatureSupported:enabled:", v11 & 1, [MEMORY[0x1E69870A0] isStudioLightEnabled]);
      a3->var5 = -[VCAVFoundationCapture featureStatusForFeatureSupported:enabled:](v17, "featureStatusForFeatureSupported:enabled:", v12 & 1, [MEMORY[0x1E69870A0] isBackgroundReplacementEnabled]);
    }

    else
    {
      [VCAVFoundationCapture dispatchedCurrentVideoFeatureStatus:];
    }
  }

  else
  {
    [VCAVFoundationCapture dispatchedCurrentVideoFeatureStatus:];
  }
}

- (tagVCVideoCaptureFeatureStatus)currentVideoFeatureStatus
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2810000000;
  v10 = &unk_1DBF04739;
  v11 = 0;
  v12 = -1;
  v13 = -1;
  captureSessionQueue = self->_captureSessionQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__VCAVFoundationCapture_currentVideoFeatureStatus__block_invoke;
  v6[3] = &unk_1E85F3868;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(captureSessionQueue, v6);
  v3 = *(v8 + 18);
  v4 = *(v8 + 8);
  _Block_object_dispose(&v7, 8);
  return (v4 | (v3 << 32));
}

- (void)collectCaptureFrameRateStats:(__CFDictionary *)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCAVFoundationCapture_collectCaptureFrameRateStats___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(captureSessionQueue, block);
}

void __54__VCAVFoundationCapture_collectCaptureFrameRateStats___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 362) & 1) != 0 || (*(v2 + 361))
  {
    v3 = micro();
    *(*(a1 + 32) + 320) = v3 - *(*(a1 + 32) + 312) + *(*(a1 + 32) + 320);
    *(*(a1 + 32) + 312) = v3;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 320) >= 2.0)
  {
    CFDictionaryAddValue(*(a1 + 40), @"CAMFC", [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 308)]);
    CFDictionaryAddValue(*(a1 + 40), @"CAMDUR", [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 320)]);
    *(*(a1 + 32) + 308) = 0;
    *(*(a1 + 32) + 320) = 0;
  }
}

- (BOOL)cameraSupportsFormatWidth:(int)a3 height:(int)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__VCAVFoundationCapture_cameraSupportsFormatWidth_height___block_invoke;
  v7[3] = &unk_1E85F3930;
  v7[4] = self;
  v7[5] = &v10;
  v8 = a3;
  v9 = a4;
  dispatch_sync(captureSessionQueue, v7);
  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __58__VCAVFoundationCapture_cameraSupportsFormatWidth_height___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cameraFormatForWidth:*(a1 + 48) height:*(a1 + 52)];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (id)cameraCaptureFormatWithWidth:(int)a3 height:(int)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [(VCAVFoundationCapture *)self getCaptureFormatList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        Dimensions = CMVideoFormatDescriptionGetDimensions([v11 formatDescription]);
        if (Dimensions.width == a3 && Dimensions.height == a4)
        {
          return v11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
      v8 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (int)frameCount:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  captureSessionQueue = self->_captureSessionQueue;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__VCAVFoundationCapture_frameCount___block_invoke;
  v6[3] = &unk_1E85F7890;
  v6[4] = self;
  v6[5] = &v8;
  v7 = a3;
  dispatch_sync(captureSessionQueue, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __36__VCAVFoundationCapture_frameCount___block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 372);
  if (*(result + 48) == 1)
  {
    *(*(result + 32) + 372) = 0;
  }

  return result;
}

- (int)frameBecameAvailableCount:(int *)a3 figBufferQueueEmptyCount:(int *)a4 figBufferQueueErrorCount:(int *)a5
{
  block[8] = *MEMORY[0x1E69E9840];
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__VCAVFoundationCapture_frameBecameAvailableCount_figBufferQueueEmptyCount_figBufferQueueErrorCount___block_invoke;
  block[3] = &unk_1E85F6C70;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  dispatch_sync(captureSessionQueue, block);
  return 0;
}

void *__101__VCAVFoundationCapture_frameBecameAvailableCount_figBufferQueueEmptyCount_figBufferQueueErrorCount___block_invoke(void *result)
{
  v1 = result[5];
  if (v1)
  {
    *v1 = *(result[4] + 372);
  }

  v2 = result[6];
  if (v2)
  {
    *v2 = 0;
  }

  v3 = result[7];
  if (v3)
  {
    *v3 = 0;
  }

  return result;
}

- (void)setCameraZoomFactor:(double)a3
{
  if ([(VCAVFoundationCapture *)self isBackCamera])
  {
    if ([[(AVCaptureDeviceInput *)self->_videoDeviceInput device] lockForConfiguration:0])
    {
      [(AVCaptureDeviceFormat *)[[(AVCaptureDeviceInput *)self->_videoDeviceInput device] activeFormat] videoMaxZoomFactor];
      v6 = 1.0;
      if (a3 >= 1.0)
      {
        v6 = a3;
      }

      if (v5 >= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v5;
      }

      [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] setVideoZoomFactor:v7];
      [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] unlockForConfiguration];
      self->_cameraZoomFactor = v7;
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAVFoundationCapture setCameraZoomFactor:];
      }
    }
  }
}

- (void)setCameraZoomFactor:(double)a3 withRate:(double)a4
{
  if ([(VCAVFoundationCapture *)self isBackCamera])
  {
    if ([[(AVCaptureDeviceInput *)self->_videoDeviceInput device] lockForConfiguration:0])
    {
      [(AVCaptureDeviceFormat *)[[(AVCaptureDeviceInput *)self->_videoDeviceInput device] activeFormat] videoMaxZoomFactor];
      v8 = 1.0;
      if (a3 >= 1.0)
      {
        v8 = a3;
      }

      if (v7 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      v10 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
      *&v11 = a4;
      [(AVCaptureDevice *)v10 rampToVideoZoomFactor:v9 withRate:v11];
      v12 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];

      [(AVCaptureDevice *)v12 unlockForConfiguration];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAVFoundationCapture setCameraZoomFactor:withRate:];
      }
    }
  }
}

- (BOOL)shouldAdjustCaptureWithOrientation:(int)a3
{
  v45 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    p_requestSize = &self->_requestSize;
    width = self->_requestSize.width;
    height = self->_requestSize.height;
    if (width <= height)
    {
      v3 = 0;
    }

    else
    {
      v8 = [(VCAVFoundationCapture *)self cameraFormatForWidth:height height:width frameRate:self->_lastClientRequestedFrameRate];
      v9 = [(VCAVFoundationCapture *)self cameraFormatForWidth:p_requestSize->width height:p_requestSize->height frameRate:self->_lastClientRequestedFrameRate];
      v10 = p_requestSize->height / p_requestSize->width;
      v11 = _VCAVFoundationCapture_effectiveResolution(v8, v10);
      v12 = p_requestSize->width / p_requestSize->height;
      v13 = _VCAVFoundationCapture_effectiveResolution(v9, v12);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          lastClientRequestedFrameRate = self->_lastClientRequestedFrameRate;
          v18 = p_requestSize->width;
          v17 = p_requestSize->height;
          v27 = 136317186;
          v28 = v14;
          v29 = 2080;
          v30 = "[VCAVFoundationCapture shouldAdjustCaptureWithOrientation:]";
          v31 = 1024;
          v32 = 2394;
          v33 = 2080;
          v34 = "Portrait";
          v35 = 2048;
          v36 = v11;
          v37 = 2048;
          v38 = v17;
          v39 = 2048;
          v40 = v18;
          v41 = 1024;
          v42 = lastClientRequestedFrameRate;
          v43 = 2112;
          v44 = v8;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %-10s, resolution=%12llu, %4.0fx%4.0f@%d from %@", &v27, 0x54u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = self->_lastClientRequestedFrameRate;
          v22 = p_requestSize->width;
          v23 = p_requestSize->height;
          v27 = 136317186;
          v28 = v19;
          v29 = 2080;
          v30 = "[VCAVFoundationCapture shouldAdjustCaptureWithOrientation:]";
          v31 = 1024;
          v32 = 2395;
          v33 = 2080;
          v34 = "Landscape";
          v35 = 2048;
          v36 = v13;
          v37 = 2048;
          v38 = v22;
          v39 = 2048;
          v40 = v23;
          v41 = 1024;
          v42 = v21;
          v43 = 2112;
          v44 = v9;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %-10s, resolution=%12llu, %4.0fx%4.0f@%d from %@", &v27, 0x54u);
        }
      }

      v3 = v11 == v13;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136315906;
        v28 = v24;
        v29 = 2080;
        v30 = "[VCAVFoundationCapture shouldAdjustCaptureWithOrientation:]";
        v31 = 1024;
        v32 = 2398;
        v33 = 1024;
        LODWORD(v34) = v3;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d better capture in portrait fashion = %d", &v27, 0x22u);
      }
    }
  }

  return v3;
}

- (BOOL)setOrientation:(int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  captureSessionQueue = self->_captureSessionQueue;
  v11 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__VCAVFoundationCapture_setOrientation___block_invoke;
  v6[3] = &unk_1E85F64A0;
  v7 = a3;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(captureSessionQueue, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __40__VCAVFoundationCapture_setOrientation___block_invoke(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 252) != *(result + 48))
  {
    v1 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v1 + 48);
        v11 = 136315906;
        v12 = v2;
        v13 = 2080;
        v14 = "[VCAVFoundationCapture setOrientation:]_block_invoke";
        v15 = 1024;
        v16 = 2406;
        v17 = 1024;
        v18 = v4;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d orientation=%d", &v11, 0x22u);
      }
    }

    v5 = *(v1 + 32);
    v6 = *(v5 + 368);
    [v5 updateDeviceOrientationMatchesReceiver:*(v1 + 48) remoteDeviceOrientation:*(v5 + 452)];
    v7 = *(v1 + 32);
    if (v7[368] != v6 && [v7 isCaptureFullBleedPreferred])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCAVFoundationCapture setOrientation:]_block_invoke";
          v15 = 1024;
          v16 = 2410;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _pendingOrientationChange=YES", &v11, 0x1Cu);
        }
      }

      *(*(v1 + 32) + 260) = 1;
      *(*(*(v1 + 40) + 8) + 24) = 0;
    }

    *(*(v1 + 32) + 256) = *(*(v1 + 32) + 252);
    *(*(v1 + 32) + 252) = *(v1 + 48);
    v10 = *(v1 + 32);
    if ((*(v10 + 261) & 1) == 0)
    {
      result = [v10 isCaptureFullBleedPreferred];
      if (!result)
      {
        return result;
      }

      v10 = *(v1 + 32);
    }

    return [v10 setVideoDeviceToWidth:*(v10 + 328) height:*(v10 + 336) frameRate:*(v10 + 296)];
  }

  return result;
}

- (void)setRemoteDeviceOrientation:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCAVFoundationCapture_setRemoteDeviceOrientation___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_sync(captureSessionQueue, block);
}

uint64_t __52__VCAVFoundationCapture_setRemoteDeviceOrientation___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 452) = *(a1 + 40);
  [*(a1 + 32) updateDeviceOrientationMatchesReceiver:*(*(a1 + 32) + 252) remoteDeviceOrientation:*(*(a1 + 32) + 452)];
  result = [*(a1 + 32) isCaptureFullBleedPreferred];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 328);
    v5 = *(v3 + 336);
    v6 = *(v3 + 296);

    return [v3 setVideoDeviceToWidth:v4 height:v5 frameRate:v6];
  }

  return result;
}

- (void)setRemotePreferFullBleed:(BOOL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  self->_remotePreferFullBleed = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      remotePreferFullBleed = self->_remotePreferFullBleed;
      frontCameraSupportsFullBleedCapture = self->_frontCameraSupportsFullBleedCapture;
      backCameraSupportsFullBleedCapture = self->_backCameraSupportsFullBleedCapture;
      v9 = 136316418;
      v10 = v4;
      v11 = 2080;
      v12 = "[VCAVFoundationCapture setRemotePreferFullBleed:]";
      v13 = 1024;
      v14 = 2437;
      v15 = 1024;
      v16 = remotePreferFullBleed;
      v17 = 1024;
      v18 = frontCameraSupportsFullBleedCapture;
      v19 = 1024;
      v20 = backCameraSupportsFullBleedCapture;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _remotePreferFullBleed=%d, _frontCameraSupportsFullBleedCapture=%d _backCameraSupportsFullBleedCapture=%d", &v9, 0x2Eu);
    }
  }
}

- (BOOL)isCaptureFullBleedPreferredForDevicePosition:(int64_t)a3
{
  if (a3 != 2)
  {
    if (!self->_backCameraSupportsFullBleedCapture)
    {
      return 0;
    }

    return self->_remotePreferFullBleed;
  }

  if (self->_frontCameraSupportsFullBleedCapture)
  {
    return self->_remotePreferFullBleed;
  }

  return 0;
}

- (BOOL)isCaptureFullBleedPreferred
{
  if (([(VCAVFoundationCapture *)self captureDevicePosition]& 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if (self->_frontCameraSupportsFullBleedCapture)
    {
      return self->_remotePreferFullBleed;
    }

    return 0;
  }

  if (!self->_backCameraSupportsFullBleedCapture)
  {
    return 0;
  }

  return self->_remotePreferFullBleed;
}

- (BOOL)isSquareCapturePreferred
{
  v3 = [(VCAVFoundationCapture *)self captureDevicePosition];
  v4 = &OBJC_IVAR___VCAVFoundationCapture__backCameraSupportsFullBleedCapture;
  if ((v3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v4 = &OBJC_IVAR___VCAVFoundationCapture__frontCameraSupportsFullBleedCapture;
  }

  return *(&self->super.super.isa + *v4);
}

- (void)updateDeviceOrientationMatchesReceiver:(int)a3 remoteDeviceOrientation:(int)a4
{
  v22 = *MEMORY[0x1E69E9840];
  self->_deviceOrientationMatchesReceiver = (a3 > 1) ^ (a4 < 2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      deviceOrientationMatchesReceiver = self->_deviceOrientationMatchesReceiver;
      v10 = 136316418;
      v11 = v7;
      v12 = 2080;
      v13 = "[VCAVFoundationCapture updateDeviceOrientationMatchesReceiver:remoteDeviceOrientation:]";
      v14 = 1024;
      v15 = 2468;
      v16 = 1024;
      v17 = a4;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = deviceOrientationMatchesReceiver;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX]remoteDeviceOrientation=%d, orientation=%d, _deviceOrientationMatchesReceiver=%d", &v10, 0x2Eu);
    }
  }
}

- (void)updateCenterStageEnabled:(BOOL)a3 requestCaptureChange:(BOOL)a4
{
  v8 = *MEMORY[0x1E69E9840];
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__VCAVFoundationCapture_updateCenterStageEnabled_requestCaptureChange___block_invoke;
  block[3] = &unk_1E85F41F8;
  block[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_async(captureSessionQueue, block);
}

void __71__VCAVFoundationCapture_updateCenterStageEnabled_requestCaptureChange___block_invoke(uint64_t a1)
{
  *&v33[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!*(v1 + 152) || *(v1 + 247) != 1)
  {
    return;
  }

  v3 = *(a1 + 40);
  if (*(v1 + 236) == v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v26 = 136315906;
        if (v6)
        {
          v7 = "enabled";
        }

        else
        {
          v7 = "disabled";
        }

        v27 = v4;
        v28 = 2080;
        v29 = "[VCAVFoundationCapture updateCenterStageEnabled:requestCaptureChange:]_block_invoke";
        v30 = 1024;
        v31 = 2481;
        v32 = 2080;
        *v33 = v7;
        v8 = " [%s] %s:%d already %s.";
        v9 = v5;
        v10 = 38;
        goto LABEL_30;
      }
    }

    return;
  }

  *(v1 + 236) = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 41);
      v26 = 136316162;
      v27 = v11;
      v28 = 2080;
      v29 = "[VCAVFoundationCapture updateCenterStageEnabled:requestCaptureChange:]_block_invoke";
      v30 = 1024;
      v31 = 2486;
      v32 = 1024;
      *v33 = v13;
      v33[2] = 1024;
      *&v33[3] = v14;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d enabled=%d, requestCaptureChange=%d", &v26, 0x28u);
    }
  }

  [*(a1 + 32) captureServer];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "captureServer")];
  }

  [*(*(a1 + 32) + 184) beginConfiguration];
  if ([objc_msgSend(*(*(a1 + 32) + 152) "device")])
  {
    if (*(a1 + 41) == 1)
    {
      [MEMORY[0x1E69870A0] setCenterStageControlMode:2];
      [MEMORY[0x1E69870A0] setCenterStageEnabled:*(a1 + 40)];
    }

    v15 = *(a1 + 32);
    v16 = v15[74];
    if (*(a1 + 40) == 1)
    {
      if (v16 < 31)
      {
LABEL_26:
        [*(a1 + 32) updateCenterStageRegionOfInterestWithLock:0];
        [*(a1 + 32) configureMetadataTypesForOutput:*(*(a1 + 32) + 208)];
        [*(a1 + 32) resetDepthDataOutput];
        [objc_msgSend(*(*(a1 + 32) + 152) "device")];
        goto LABEL_27;
      }

      v17 = *(a1 + 32);
      v18 = 30;
    }

    else
    {
      v18 = [*(a1 + 32) getMaxAllowedFrameRate:v16];
      v17 = v15;
    }

    [v17 setFrameRateInternal:v18 forceSourceFrameRateDidChange:0];
    goto LABEL_26;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v21 = *(*(a1 + 32) + 152);
      v26 = 136315906;
      v27 = v19;
      v28 = 2080;
      v29 = "[VCAVFoundationCapture updateCenterStageEnabled:requestCaptureChange:]_block_invoke";
      v30 = 1024;
      v31 = 2512;
      v32 = 2112;
      *v33 = v21;
      _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to retain lock for video device input: %@", &v26, 0x26u);
    }
  }

LABEL_27:
  [*(*(a1 + 32) + 184) commitConfiguration];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v24 = [MEMORY[0x1E69870A0] isCenterStageEnabled];
      v25 = [objc_msgSend(*(*(a1 + 32) + 152) "device")];
      v26 = 136316162;
      v27 = v22;
      v28 = 2080;
      v29 = "[VCAVFoundationCapture updateCenterStageEnabled:requestCaptureChange:]_block_invoke";
      v30 = 1024;
      v31 = 2515;
      v32 = 1024;
      *v33 = v24;
      v33[2] = 1024;
      *&v33[3] = v25;
      v8 = " [%s] %s:%d Device enabled = %d, active = %d";
      v9 = v23;
      v10 = 40;
LABEL_30:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v26, v10);
    }
  }
}

- (void)attachSensitiveContentAnalyzer:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCAVFoundationCapture_attachSensitiveContentAnalyzer___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(captureSessionQueue, block);
}

void *__56__VCAVFoundationCapture_attachSensitiveContentAnalyzer___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 544) = *(a1 + 40);
  result = *(a1 + 32);
  if (result[19])
  {

    return [result beginSensitiveContentAnalysisWithCaptureDeviceInput:?];
  }

  return result;
}

- (void)beginSensitiveContentAnalysisWithCaptureDeviceInput:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = 0;
  if (([(SCVideoStreamAnalyzer *)self->_sensitiveContentAnalyzer beginAnalysisWithCaptureDeviceInput:a3 error:&v23]& 1) != 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v25 = v9;
          v26 = 2080;
          v27 = "[VCAVFoundationCapture beginSensitiveContentAnalysisWithCaptureDeviceInput:]";
          v28 = 1024;
          v29 = 2543;
          v30 = 2112;
          v31 = a3;
          v11 = " [%s] %s:%d SCVideoStreamAnalyzer begin succeeded for capture device input=%@";
          v12 = v10;
          v13 = 38;
LABEL_33:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAVFoundationCapture *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v25 = v15;
          v26 = 2080;
          v27 = "[VCAVFoundationCapture beginSensitiveContentAnalysisWithCaptureDeviceInput:]";
          v28 = 1024;
          v29 = 2543;
          v30 = 2112;
          v31 = v5;
          v32 = 2048;
          v33 = self;
          v34 = 2112;
          v35 = a3;
          v11 = " [%s] %s:%d %@(%p) SCVideoStreamAnalyzer begin succeeded for capture device input=%@";
          v12 = v16;
          v13 = 58;
          goto LABEL_33;
        }
      }
    }
  }

  else
  {
    sensitiveContentAnalyzer = self->_sensitiveContentAnalyzer;
    v7 = objc_opt_class();
    if (sensitiveContentAnalyzer)
    {
      if (v7 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAVFoundationCapture beginSensitiveContentAnalysisWithCaptureDeviceInput:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [(VCAVFoundationCapture *)self performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v25 = v17;
            v26 = 2080;
            v27 = "[VCAVFoundationCapture beginSensitiveContentAnalysisWithCaptureDeviceInput:]";
            v28 = 1024;
            v29 = 2540;
            v30 = 2112;
            v31 = v8;
            v32 = 2048;
            v33 = self;
            v34 = 2112;
            v35 = v23;
            _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) SCVideoStreamAnalyzer failed to attach to capture device input with error=%@", buf, 0x3Au);
          }
        }
      }
    }

    else if (v7 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = v19;
          v26 = 2080;
          v27 = "[VCAVFoundationCapture beginSensitiveContentAnalysisWithCaptureDeviceInput:]";
          v28 = 1024;
          v29 = 2538;
          v11 = " [%s] %s:%d SCVideoStreamAnalyzer is not available";
          v12 = v20;
          v13 = 28;
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCAVFoundationCapture *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v25 = v21;
          v26 = 2080;
          v27 = "[VCAVFoundationCapture beginSensitiveContentAnalysisWithCaptureDeviceInput:]";
          v28 = 1024;
          v29 = 2538;
          v30 = 2112;
          v31 = v14;
          v32 = 2048;
          v33 = self;
          v11 = " [%s] %s:%d %@(%p) SCVideoStreamAnalyzer is not available";
          v12 = v22;
          v13 = 48;
          goto LABEL_33;
        }
      }
    }
  }
}

- (void)endSensitiveContentAnalysis
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAVFoundationCapture endSensitiveContentAnalysis]";
        *&v11[22] = 1024;
        LODWORD(v12) = 2548;
        v6 = " [%s] %s:%d SCVideoStreamAnalyzer endAnalysis";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAVFoundationCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAVFoundationCapture endSensitiveContentAnalysis]";
        *&v11[22] = 1024;
        LODWORD(v12) = 2548;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        v13 = self;
        v6 = " [%s] %s:%d %@(%p) SCVideoStreamAnalyzer endAnalysis";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(SCVideoStreamAnalyzer *)self->_sensitiveContentAnalyzer endAnalysis:*v11];
}

- (BOOL)setCameraWithUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (-[AVCaptureDevice uniqueID](-[AVCaptureDeviceInput device](self->_videoDeviceInput, "device"), "uniqueID") && ([a3 isEqualToString:{-[AVCaptureDevice uniqueID](-[AVCaptureDeviceInput device](self->_videoDeviceInput, "device"), "uniqueID")}] & 1) != 0)
  {
LABEL_8:
    LOBYTE(v9) = 1;
    return v9;
  }

  v5 = [+[VCVideoSourceTokenManager sharedManager](VCVideoSourceTokenManager "sharedManager")];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v5)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCAVFoundationCapture setCameraWithUID:]";
        v15 = 1024;
        v16 = 2565;
        v17 = 2112;
        v18 = a3;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cameraUID=%@", &v11, 0x26u);
      }
    }

    [(VCAVFoundationCapture *)self setCamera:v5 width:self->_requestSize.width height:self->_requestSize.height frameRate:self->_lastClientRequestedFrameRate];
    goto LABEL_8;
  }

  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v9)
    {
      return v9;
    }

    [VCAVFoundationCapture setCameraWithUID:];
  }

  LOBYTE(v9) = 0;
  return v9;
}

- (BOOL)supportsDepthDataFormats
{
  v3 = [(AVCaptureDevice *)self->_captureDevice deviceType];
  if (v3 == *MEMORY[0x1E6986940])
  {
    v4 = [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_captureDevice activeFormat] supportedDepthDataFormats];
    if (v4)
    {
      LOBYTE(v4) = [(NSArray *)v4 count]!= 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)setCaptureDeviceMinFrameRateIfNeeded:(int)a3
{
  v24 = *MEMORY[0x1E69E9840];
  deviceMinFrameRate = self->_deviceMinFrameRate;
  if (!deviceMinFrameRate)
  {
    return 0;
  }

  if (deviceMinFrameRate >= a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_deviceMinFrameRate;
        LODWORD(time1.value) = 136316162;
        *(&time1.value + 4) = v9;
        LOWORD(time1.flags) = 2080;
        *(&time1.flags + 2) = "[VCAVFoundationCapture setCaptureDeviceMinFrameRateIfNeeded:]";
        HIWORD(time1.epoch) = 1024;
        v19 = 2582;
        v20 = 1024;
        v21 = v11;
        v22 = 1024;
        LODWORD(v23) = a3;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _deviceMinFrameRate=%d is not smaller than targetFrameRate=%d. NO change to captureDeviceFrameRate", &time1, 0x28u);
      }
    }

    return 0;
  }

  memset(&v17[1], 170, sizeof(CMTime));
  [(VCAVFoundationCapture *)self frameDurationForVideoDeviceFormat:[[(AVCaptureDeviceInput *)self->_videoDeviceInput device] activeFormat] frameRate:self->_deviceMinFrameRate];
  time1 = v17[1];
  v17[0] = **&MEMORY[0x1E6960C70];
  v6 = CMTimeCompare(&time1, v17);
  v7 = v6 != 0;
  if (v6)
  {
    v8 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
    time1 = v17[1];
    [(AVCaptureDevice *)v8 setActiveVideoMaxFrameDuration:&time1];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_deviceMinFrameRate;
      v16 = [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] activeFormat];
      LODWORD(time1.value) = 136316162;
      *(&time1.value + 4) = v13;
      LOWORD(time1.flags) = 2080;
      *(&time1.flags + 2) = "[VCAVFoundationCapture setCaptureDeviceMinFrameRateIfNeeded:]";
      HIWORD(time1.epoch) = 1024;
      v19 = 2587;
      v20 = 1024;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Can not find frameDuration for framerate=%d, activeFormat=%@!", &time1, 0x2Cu);
    }
  }

  return v7;
}

- (double)setUpVideoZoomFactor
{
  v3 = [(AVCaptureDevice *)self->_captureDevice deviceType];
  if (v3 == *MEMORY[0x1E6986938] || (v4 = [(AVCaptureDevice *)self->_captureDevice deviceType], cameraZoomFactor = 0.0, v4 == *MEMORY[0x1E6986908]))
  {
    cameraZoomFactor = self->_cameraZoomFactor;
    if (cameraZoomFactor == 0.0)
    {
      [-[NSArray firstObject](-[AVCaptureDevice virtualDeviceSwitchOverVideoZoomFactors](self->_captureDevice "virtualDeviceSwitchOverVideoZoomFactors")];
      cameraZoomFactor = v6;
    }

    [(VCAVFoundationCapture *)self setCameraZoomFactor:cameraZoomFactor];
  }

  return cameraZoomFactor;
}

- (int)setCamera:(_VCVideoSourceToken)a3 width:(int)a4 height:(int)a5 frameRate:(int)a6
{
  v42 = *MEMORY[0x1E69E9840];
  if (a3.var0.var0)
  {
    v8 = *&a6;
    v9 = *&a5;
    v10 = *&a4;
    v11 = [+[VCVideoSourceTokenManager sharedManager](VCVideoSourceTokenManager "sharedManager")];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136316930;
        v32 = v12;
        v33 = 2080;
        v34 = "[VCAVFoundationCapture setCamera:width:height:frameRate:]";
        v35 = 1024;
        v36 = 2626;
        v37 = 1024;
        *v38 = a3;
        *&v38[4] = 2112;
        *&v38[6] = v11;
        *&v38[14] = 1024;
        *&v38[16] = v10;
        *v39 = 1024;
        *&v39[2] = v9;
        *v40 = 1024;
        *&v40[2] = v8;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sourceToken=0x%x, camera=%@, width=%d, height=%d, frameRate=%d", &v31, 0x3Eu);
      }
    }

    if (-[AVCaptureDevice uniqueID](-[AVCaptureDeviceInput device](self->_videoDeviceInput, "device"), "uniqueID") && [v11 isEqualToString:{-[AVCaptureDevice uniqueID](-[AVCaptureDeviceInput device](self->_videoDeviceInput, "device"), "uniqueID")}])
    {
      [(VCAVFoundationCapture *)self applyVideoRetainedBufferCountHint];
      return -2146893775;
    }

    else
    {
      v15 = [(AVCaptureDevice *)self->_captureDevice uniqueID];
      if (self->_captureDevice)
      {
        [(VCAVFoundationCapture *)self setUpCaptureDevicePropertyObservers:0];
      }

      v16 = [(VCAVFoundationCapture *)self newCaptureDevice:v11];
      self->_captureDevice = v16;
      if (v16)
      {
        if ([(NSString *)v15 isEqualToString:v11])
        {
          v14 = -2146893792;
          [(VCAVFoundationCapture *)self setFrameRateInternal:v8 forceSourceFrameRateDidChange:0];
        }

        else
        {
          v19 = +[VCEffectsManager sharedManager];
          if (VCEffectsManager_IsEffectsOn(v19))
          {
            [v19 flushRemoteQueue];
          }

          [(AVCaptureSession *)self->_captureSession beginConfiguration];
          if ([(VCAVFoundationCapture *)self setVideoDeviceToSelectedDevice:self->_captureDevice])
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCAVFoundationCapture setCamera:width:height:frameRate:];
              }
            }
          }

          v14 = [(VCAVFoundationCapture *)self setVideoDeviceToWidth:v10 height:v9 frameRate:v8];
          [(VCAVFoundationCapture *)self configureMetadataTypesForOutput:self->_metadataOutput];
          v20 = [(VCAVFoundationCapture *)self configureVideoStabilization];
          [(VCAVFoundationCapture *)self setUpVideoZoomFactor];
          v22 = v21;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v23 = VRTraceErrorLogLevelToCSTR();
            v24 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              captureSession = self->_captureSession;
              v31 = 136316930;
              v32 = v23;
              v33 = 2080;
              v34 = "[VCAVFoundationCapture setCamera:width:height:frameRate:]";
              v35 = 1024;
              v36 = 2665;
              v37 = 2048;
              *v38 = captureSession;
              *&v38[8] = 2048;
              *&v38[10] = v22;
              *&v38[18] = 1024;
              *v39 = v10;
              *&v39[4] = 1024;
              *v40 = v9;
              *&v40[4] = 1024;
              v41 = v8;
              _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d captureSession=%p zoomFactor=%f, width=%d, height=%d, frameRate=%d", &v31, 0x42u);
            }
          }

          [(AVCaptureSession *)self->_captureSession commitConfiguration];
          [(VCAVFoundationCapture *)self printVideoStabilizationState:v20];
        }

        [(VCAVFoundationCapture *)self setUpCaptureDevicePropertyObservers:1];
        [(VCAVFoundationCapture *)self applyVideoRetainedBufferCountHint];
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v28 = [(AVCaptureDevice *)self->_captureDevice uniqueID];
            v29 = [(AVCaptureDevice *)self->_captureDevice deviceType];
            v31 = 136316162;
            v32 = v26;
            v33 = 2080;
            v34 = "[VCAVFoundationCapture setCamera:width:height:frameRate:]";
            v35 = 1024;
            v36 = 2678;
            v37 = 2112;
            *v38 = v28;
            *&v38[8] = 2112;
            *&v38[10] = v29;
            _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Camera is set to %@, deviceType=%@", &v31, 0x30u);
          }
        }

        [(VCAVFoundationCapture *)self updateCameraZoomCapability];
      }

      else
      {
        v14 = -2146893792;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAVFoundationCapture setCamera:width:height:frameRate:];
          }
        }
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315650;
        v32 = v17;
        v33 = 2080;
        v34 = "[VCAVFoundationCapture setCamera:width:height:frameRate:]";
        v35 = 1024;
        v36 = 2620;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCVideoSourceToken is invalid!", &v31, 0x1Cu);
      }
    }

    [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] handleCaptureEvent:@"avCaptureSetCameraWithUIDFail"];
    return -2146893823;
  }

  return v14;
}

- (void)updateCameraZoomCapability
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(VCAVFoundationCapture *)self isBackCamera];
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] videoZoomFactor];
    v5 = v6;
    [(AVCaptureDeviceFormat *)[[(AVCaptureDeviceInput *)self->_videoDeviceInput device] activeFormat] videoMaxZoomFactor];
    v4 = v7;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316418;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCAVFoundationCapture updateCameraZoomCapability]";
      v14 = 1024;
      v15 = 2701;
      v16 = 1024;
      v17 = v3;
      v18 = 2048;
      v19 = v5;
      v20 = 2048;
      v21 = v4;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cameraZoomAvailable=%d, currentZoomFactor=%f, maxZoomFactor=%f", &v10, 0x36u);
    }
  }

  [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] setCameraZoomAvailable:v3 currentZoomFactor:v5 maxZoomFactor:v4];
}

- (void)configureCaptureDeviceDepthFormat
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)updateDepthFrameRate
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6960C70];
  if (self->_faceMeshTrackingEnabled)
  {
    v4 = (MEMORY[0x1E6960C70] + 16);
  }

  else
  {
    v4 = (MEMORY[0x1E6960C88] + 16);
  }

  v5 = *v4;
  v6 = (MEMORY[0x1E6960C70] + 12);
  if (!self->_faceMeshTrackingEnabled)
  {
    v6 = (MEMORY[0x1E6960C88] + 12);
  }

  v7 = *v6;
  v8 = (MEMORY[0x1E6960C70] + 8);
  if (!self->_faceMeshTrackingEnabled)
  {
    v8 = (MEMORY[0x1E6960C88] + 8);
  }

  v9 = *v8;
  if (!self->_faceMeshTrackingEnabled)
  {
    v3 = MEMORY[0x1E6960C88];
  }

  captureDevice = self->_captureDevice;
  v15.value = *v3;
  v15.timescale = v9;
  v15.flags = v7;
  v15.epoch = v5;
  [(AVCaptureDevice *)captureDevice setActiveDepthDataMinFrameDuration:&v15];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_captureDevice;
      if (v13)
      {
        [(AVCaptureDevice *)v13 activeDepthDataMinFrameDuration];
      }

      else
      {
        memset(&v15, 0, sizeof(v15));
      }

      Seconds = CMTimeGetSeconds(&v15);
      LODWORD(v15.value) = 136315906;
      *(&v15.value + 4) = v11;
      LOWORD(v15.flags) = 2080;
      *(&v15.flags + 2) = "[VCAVFoundationCapture updateDepthFrameRate]";
      HIWORD(v15.epoch) = 1024;
      v16 = 2746;
      v17 = 2048;
      v18 = Seconds;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting depth frame rate to %f", &v15, 0x26u);
    }
  }
}

+ (BOOL)deviceInputSupportsCenterStage:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [objc_msgSend(a3 "device")];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * v7) isCenterStageSupported])
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

+ (BOOL)captureDeviceformatSupportsVideoEffects:(id)a3
{
  if (a3)
  {
    return [a3 isPortraitEffectSupported];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)deviceInputSupportsVideoEffects:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [objc_msgSend(a3 "device")];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([VCAVFoundationCapture captureDeviceformatSupportsVideoEffects:*(*(&v10 + 1) + 8 * v7)])
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (void)lockAVCaptureDeviceInputForConfiguration
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)unlockAVCaptureDeviceInputForConfiguration
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      avCaptureDeviceInputLocked = self->_avCaptureDeviceInputLocked;
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAVFoundationCapture unlockAVCaptureDeviceInputForConfiguration]";
      v10 = 1024;
      v11 = 2790;
      v12 = 1024;
      v13 = avCaptureDeviceInputLocked;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unlock AVCaptureInputDevice for configuration, _avCaptureDeviceInputLocked=%d", &v6, 0x22u);
    }
  }

  if (self->_avCaptureDeviceInputLocked)
  {
    [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] unlockForConfiguration];
    self->_avCaptureDeviceInputLocked = 0;
  }
}

- (int)setVideoDeviceToSelectedDevice:(id)a3
{
  v53[2] = *MEMORY[0x1E69E9840];
  v3 = -2146893792;
  if (!a3)
  {
    return -2146893823;
  }

  [(AVCaptureSession *)self->_captureSession beginConfiguration];
  if (self->_videoDeviceInput)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoDeviceInput = self->_videoDeviceInput;
        *buf = 136315906;
        v39 = v6;
        v40 = 2080;
        v41 = "[VCAVFoundationCapture setVideoDeviceToSelectedDevice:]";
        v42 = 1024;
        v43 = 2806;
        v44 = 2112;
        v45 = videoDeviceInput;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSession removeInput:%@", buf, 0x26u);
      }
    }

    [(VCAVFoundationCapture *)self unlockAVCaptureDeviceInputForConfiguration];
    [(AVCaptureSession *)self->_captureSession removeInput:self->_videoDeviceInput];
    [(VCAVFoundationCapture *)self endSensitiveContentAnalysis];
    self->_videoDeviceInput = 0;
  }

  v37 = 0;
  p_cache = VCAudioStreamSendGroup.cache;
  v10 = [VCAVFoundationCapture newVideoDeviceInput:a3 error:&v37];
  if (v10)
  {
    v11 = v10;
    if (([a3 supportsAVCaptureSessionPreset:{-[AVCaptureSession sessionPreset](self->_captureSession, "sessionPreset")}] & 1) == 0)
    {
      v12 = *MEMORY[0x1E6986B00];
      v53[0] = *MEMORY[0x1E6986AE0];
      v53[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v49 objects:v48 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v50;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v50 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v49 + 1) + 8 * i);
            if ([a3 supportsAVCaptureSessionPreset:v18])
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v19 = VRTraceErrorLogLevelToCSTR();
                v20 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v39 = v19;
                  v40 = 2080;
                  v41 = "[VCAVFoundationCapture setVideoDeviceToSelectedDevice:]";
                  v42 = 1024;
                  v43 = 2823;
                  v44 = 2112;
                  v45 = v18;
                  _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSession setSessionPreset=%@", buf, 0x26u);
                }
              }

              [(AVCaptureSession *)self->_captureSession setSessionPreset:v18];
              p_cache = (VCAudioStreamSendGroup + 16);
              goto LABEL_26;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v49 objects:v48 count:16];
          p_cache = (VCAudioStreamSendGroup + 16);
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_26:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v39 = v21;
        v40 = 2080;
        v41 = "[VCAVFoundationCapture setVideoDeviceToSelectedDevice:]";
        v42 = 1024;
        v43 = 2829;
        v44 = 2112;
        v45 = v11;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _captureSession addInput:%@", buf, 0x26u);
      }
    }

    [(VCAVFoundationCapture *)self beginSensitiveContentAnalysisWithCaptureDeviceInput:v11];
    [(AVCaptureSession *)self->_captureSession addInput:v11];
    self->_videoDeviceInput = v11;
    [(VCAVFoundationCapture *)self lockAVCaptureDeviceInputForConfiguration];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      v23 = [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] formats]? [(NSString *)[(NSArray *)[[(AVCaptureDeviceInput *)self->_videoDeviceInput device] formats] description] UTF8String]: "<nil>";
      asprintf(&__str, "%s", v23);
      if (__str)
      {
        __lasts = 0;
        v24 = strtok_r(__str, "\n", &__lasts);
        v25 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *v25;
            if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v39 = v26;
              v40 = 2080;
              v41 = "[VCAVFoundationCapture setVideoDeviceToSelectedDevice:]";
              v42 = 1024;
              v43 = 2836;
              v44 = 2080;
              v45 = "AVCaptureDevice:";
              v46 = 2080;
              v47[0] = v24;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v24 = strtok_r(0, "\n", &__lasts);
        }

        while (v24);
        free(__str);
        p_cache = VCAudioStreamSendGroup.cache;
      }
    }

    v28 = [p_cache + 163 deviceInputSupportsCenterStage:self->_videoDeviceInput];
    v29 = v28;
    if (self->_deviceSupportCinematicFraming != v28)
    {
      self->_deviceSupportCinematicFraming = v28;
      [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] setCFAvailabilityChange:v28];
    }

    self->_deviceSupportVideoEffects = [p_cache + 163 deviceInputSupportsVideoEffects:self->_videoDeviceInput];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_videoDeviceInput;
        deviceSupportVideoEffects = self->_deviceSupportVideoEffects;
        *buf = 136316418;
        v39 = v30;
        v40 = 2080;
        v41 = "[VCAVFoundationCapture setVideoDeviceToSelectedDevice:]";
        v42 = 1024;
        v43 = 2848;
        v44 = 2112;
        v45 = v32;
        v46 = 1024;
        LODWORD(v47[0]) = v29;
        WORD2(v47[0]) = 1024;
        *(v47 + 6) = deviceSupportVideoEffects;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set camera to %@, CFraming support=%d, _deviceSupportVideoEffects=%d", buf, 0x32u);
      }
    }

    v3 = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAVFoundationCapture setVideoDeviceToSelectedDevice:];
    }
  }

  [(VCAVFoundationCapture *)self configCaptureConnectionForDevice:[(AVCaptureDeviceInput *)self->_videoDeviceInput device]];
  [(VCAVFoundationCapture *)self resetDepthDataOutput];
  [(VCAVFoundationCapture *)self updateCenterStageMetadataDeliveryEnabled];
  [(AVCaptureSession *)self->_captureSession commitConfiguration];
  [(VCAVFoundationCapture *)self updateCaptureDeviceProperties];
  [(VCVideoCapture *)self captureServer];
  if (objc_opt_respondsToSelector())
  {
    [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] handleCaptureSourcePositionDidChange:[(VCAVFoundationCapture *)self isFrontCamera]];
  }

  return v3;
}

- (void)setReactionActive:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_isReactionActive != a3)
  {
    v3 = a3;
    self->_isReactionActive = a3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCAVFoundationCapture setReactionActive:]";
        v11 = 1024;
        v12 = 2871;
        v13 = 1024;
        v14 = v3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d active=%d", &v7, 0x22u);
      }
    }

    if (!self->_isReactionActive)
    {
      [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] didStopReacting];
    }
  }
}

- (void)processReactionStatus:(id)a3 oldReactions:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = [a3 count];
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VCAVFoundationCapture_processReactionStatus_oldReactions___block_invoke;
  block[3] = &unk_1E85F37A0;
  v23 = self;
  block[4] = self;
  v28 = v7 != 0;
  dispatch_async(captureSessionQueue, block);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = a3;
  v9 = [a3 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v9)
  {
    v11 = v9;
    v25 = *v40;
    *&v10 = 136315906;
    v22 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v14 = [a4 countByEnumeratingWithState:&v34 objects:v33 count:{16, v22}];
        if (!v14)
        {
          goto LABEL_20;
        }

        v15 = v14;
        v16 = *v35;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(a4);
            }

            v18 = *(*(&v34 + 1) + 8 * j);
            v19 = [v13 reactionType];
            if (v19 != [v18 reactionType])
            {
              continue;
            }

            if (v13)
            {
              [v13 startTime];
              if (v18)
              {
                goto LABEL_14;
              }
            }

            else
            {
              memset(&time1, 0, sizeof(time1));
              if (v18)
              {
LABEL_14:
                [v18 startTime];
                goto LABEL_17;
              }
            }

            memset(&time2, 0, sizeof(time2));
LABEL_17:
            if (!CMTimeCompare(&time1, &time2))
            {
              goto LABEL_24;
            }
          }

          v15 = [a4 countByEnumeratingWithState:&v34 objects:v33 count:16];
        }

        while (v15);
LABEL_20:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(time1.value) = v22;
            *(&time1.value + 4) = v20;
            LOWORD(time1.flags) = 2080;
            *(&time1.flags + 2) = "[VCAVFoundationCapture processReactionStatus:oldReactions:]";
            HIWORD(time1.epoch) = 1024;
            v30 = 2894;
            v31 = 2112;
            v32 = v13;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d reaction start=%@", &time1, 0x26u);
          }
        }

        -[VCVideoCaptureServer reactionDidStart:](-[VCVideoCapture captureServer](v23, "captureServer"), "reactionDidStart:", [v13 reactionType]);
LABEL_24:
        ;
      }

      v11 = [obj countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v11);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = [a3 isEqualToString:{@"backgroundBlurActive", a4, a5, a6}];
  v10 = *MEMORY[0x1E696A4F0];
  v11 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  v12 = v11;
  if (v9)
  {
    isBackgroundBlurActive = self->_isBackgroundBlurActive;
    if (isBackgroundBlurActive != [v11 BOOLValue])
    {
      [(VCVideoCapture *)self captureServer];
      if (objc_opt_respondsToSelector())
      {
        -[VCVideoCaptureServer portraitBlurEnabledDidChange:](-[VCVideoCapture captureServer](self, "captureServer"), "portraitBlurEnabledDidChange:", [v12 BOOLValue]);
      }
    }

    self->_isBackgroundBlurActive = [v12 BOOLValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_isBackgroundBlurActive;
        v29 = 136315906;
        v30 = v14;
        v31 = 2080;
        v32 = "[VCAVFoundationCapture observeValueForKeyPath:ofObject:change:context:]";
        v33 = 1024;
        v34 = 2908;
        v35 = 1024;
        LODWORD(v36) = v16;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _isBackgroundBlurActive=%d", &v29, 0x22u);
      }
    }
  }

  else if ([a3 isEqualToString:@"reactionEffectsInProgress"])
  {
    v17 = MEMORY[0x1E6986650];
    if (!a5 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315906;
        v30 = v18;
        v31 = 2080;
        v32 = "[VCAVFoundationCapture observeValueForKeyPath:ofObject:change:context:]";
        v33 = 1024;
        v34 = 2911;
        v35 = 2112;
        v36 = @"reactionEffectsInProgress";
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d key=%@, change is nil", &v29, 0x26u);
      }
    }

    v20 = [a5 objectForKeyedSubscript:v10];
    v21 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315906;
        v30 = v22;
        v31 = 2080;
        v32 = "[VCAVFoundationCapture observeValueForKeyPath:ofObject:change:context:]";
        v33 = 1024;
        v34 = 2915;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d newReactionArray=%@", &v29, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315906;
        v30 = v24;
        v31 = 2080;
        v32 = "[VCAVFoundationCapture observeValueForKeyPath:ofObject:change:context:]";
        v33 = 1024;
        v34 = 2916;
        v35 = 2112;
        v36 = v21;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d oldReactionsArray=%@", &v29, 0x26u);
      }
    }

    [(VCAVFoundationCapture *)self processReactionStatus:v20 oldReactions:v21];
  }

  if (([a3 isEqualToString:@"backgroundBlurActive"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"studioLightingActive") & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"backgroundReplacementActive"))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v12 intValue];
        v29 = 136316162;
        v30 = v26;
        v31 = 2080;
        v32 = "[VCAVFoundationCapture observeValueForKeyPath:ofObject:change:context:]";
        v33 = 1024;
        v34 = 2922;
        v35 = 2112;
        v36 = a3;
        v37 = 1024;
        v38 = v28;
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Video effect toggled: keyPath=%@, value=%d", &v29, 0x2Cu);
      }
    }

    [(VCAVFoundationCapture *)self updateCaptureServerWithCaptureDeviceActiveFrameRate];
  }
}

- (void)updateCaptureServerWithCaptureDeviceActiveFrameRate
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(VCAVFoundationCapture *)self captureDeviceActiveFrameRate];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      activeFrameRate = self->_activeFrameRate;
      v7 = 136316162;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCAVFoundationCapture updateCaptureServerWithCaptureDeviceActiveFrameRate]";
      v11 = 1024;
      v12 = 2929;
      v13 = 1024;
      v14 = v3;
      v15 = 1024;
      v16 = activeFrameRate;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d captureDeviceActiveFrameRate=%d, _activeFrameRate=%d", &v7, 0x28u);
    }
  }

  [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] sourceFrameRateDidChange:v3];
}

- (void)setUpBackgroundBlurDelegate:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x1E69E9840];
  isBackgroundBlurActive = self->_isBackgroundBlurActive;
  if (isBackgroundBlurActive != [(AVCaptureDevice *)self->_captureDevice isBackgroundBlurActive])
  {
    [(VCVideoCapture *)self captureServer];
    if (objc_opt_respondsToSelector())
    {
      [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] portraitBlurEnabledDidChange:[(AVCaptureDevice *)self->_captureDevice isBackgroundBlurActive]];
    }
  }

  self->_isBackgroundBlurActive = [(AVCaptureDevice *)self->_captureDevice isBackgroundBlurActive];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_isBackgroundBlurActive;
        v16 = 136316162;
        v17 = v7;
        v18 = 2080;
        v19 = "[VCAVFoundationCapture setUpBackgroundBlurDelegate:]";
        v20 = 1024;
        v21 = 2938;
        v22 = 1024;
        *v23 = v9;
        *&v23[4] = 1024;
        *&v23[6] = v3;
        v10 = " [%s] %s:%d _isBackgroundBlurActive=%d, observe=%d";
        v11 = v8;
        v12 = 40;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAVFoundationCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_isBackgroundBlurActive;
        v16 = 136316674;
        v17 = v13;
        v18 = 2080;
        v19 = "[VCAVFoundationCapture setUpBackgroundBlurDelegate:]";
        v20 = 1024;
        v21 = 2938;
        v22 = 2112;
        *v23 = v6;
        *&v23[8] = 2048;
        v24 = self;
        v25 = 1024;
        v26 = v15;
        v27 = 1024;
        v28 = v3;
        v10 = " [%s] %s:%d %@(%p) _isBackgroundBlurActive=%d, observe=%d";
        v11 = v14;
        v12 = 60;
        goto LABEL_14;
      }
    }
  }
}

- (void)setUpCaptureDevicePropertyObservers:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [&unk_1F579D188 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(&unk_1F579D188);
        }

        [(VCAVFoundationCapture *)self setUpCaptureDeviceObserver:v3 keyPath:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [&unk_1F579D188 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }

  [(VCAVFoundationCapture *)self setUpBackgroundBlurDelegate:v3];
}

- (void)setUpCaptureDeviceObserver:(BOOL)a3 keyPath:(id)a4
{
  v5 = a3;
  v38 = *MEMORY[0x1E69E9840];
  captureDevice = self->_captureDevice;
  v8 = objc_opt_class();
  if (captureDevice)
  {
    if (v8 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v26 = 136316162;
      v27 = v11;
      v28 = 2080;
      v29 = "[VCAVFoundationCapture setUpCaptureDeviceObserver:keyPath:]";
      v30 = 1024;
      v31 = 2956;
      v32 = 1024;
      *v33 = v5;
      *&v33[4] = 2112;
      *&v33[6] = a4;
      v13 = " [%s] %s:%d observe=%d, keyPath=%@";
      v14 = v12;
      v15 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCAVFoundationCapture *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v26 = 136316674;
      v27 = v16;
      v28 = 2080;
      v29 = "[VCAVFoundationCapture setUpCaptureDeviceObserver:keyPath:]";
      v30 = 1024;
      v31 = 2956;
      v32 = 2112;
      *v33 = v9;
      *&v33[8] = 2048;
      *&v33[10] = self;
      v34 = 1024;
      v35 = v5;
      v36 = 2112;
      v37 = a4;
      v13 = " [%s] %s:%d %@(%p) observe=%d, keyPath=%@";
      v14 = v17;
      v15 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v26, v15);
LABEL_16:
    v18 = self->_captureDevice;
    if (v5)
    {
      [(AVCaptureDevice *)v18 addObserver:self forKeyPath:a4 options:7 context:self];
    }

    else
    {
      [(AVCaptureDevice *)v18 removeObserver:self forKeyPath:a4 context:self];
    }

    return;
  }

  if (v8 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315650;
        v27 = v19;
        v28 = 2080;
        v29 = "[VCAVFoundationCapture setUpCaptureDeviceObserver:keyPath:]";
        v30 = 1024;
        v31 = 2953;
        v21 = " [%s] %s:%d _captureDevice is Null";
        v22 = v20;
        v23 = 28;
LABEL_26:
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, &v26, v23);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCAVFoundationCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136316162;
        v27 = v24;
        v28 = 2080;
        v29 = "[VCAVFoundationCapture setUpCaptureDeviceObserver:keyPath:]";
        v30 = 1024;
        v31 = 2953;
        v32 = 2112;
        *v33 = v10;
        *&v33[8] = 2048;
        *&v33[10] = self;
        v21 = " [%s] %s:%d %@(%p) _captureDevice is Null";
        v22 = v25;
        v23 = 48;
        goto LABEL_26;
      }
    }
  }
}

- (BOOL)updateCaptureSizeWithAspectRatio:(CGSize *)a3 width:(int)a4 height:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v26 = *MEMORY[0x1E69E9840];
  LODWORD(v9) = [(VCAVFoundationCapture *)self cameraSupportsNoQueueFormatWidth:*&a4 height:*&a5];
  if (v9)
  {
    v10 = [(VCAVFoundationCapture *)self cameraFormatForWidth:v6 height:v5];
    v9 = [v10 supportedOutputAspectRatios];
    if (v9)
    {
      v9 = [objc_msgSend(v10 "supportedOutputAspectRatios")];
      if (v9)
      {
        a3->width = v6;
        a3->height = v5;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            width = a3->width;
            height = a3->height;
            v16 = 136316162;
            v17 = v11;
            v18 = 2080;
            v19 = "[VCAVFoundationCapture updateCaptureSizeWithAspectRatio:width:height:]";
            v20 = 1024;
            v21 = 2973;
            v22 = 2048;
            v23 = width;
            v24 = 2048;
            v25 = height;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d capture request format supports max FOV with AR w=%.0f,h=%.0f", &v16, 0x30u);
          }
        }

        LOBYTE(v9) = 1;
      }
    }
  }

  return v9;
}

- (CGSize)getOptimizedCameraCaptureWidth:(int)a3 height:(int)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = a3;
  v20 = a4;
  if (!a3 || !a4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_26;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 136316162;
    v22 = v10;
    v23 = 2080;
    v24 = "[VCAVFoundationCapture getOptimizedCameraCaptureWidth:height:]";
    v25 = 1024;
    v26 = 2997;
    v27 = 1024;
    v28 = a3;
    v29 = 1024;
    v30 = a4;
    v12 = " [%s] %s:%d Unexpected request width=%d, height=%d";
    v13 = v11;
    goto LABEL_8;
  }

  if ([(VCAVFoundationCapture *)self isSquareCapturePreferred])
  {
    [(VCAVFoundationCapture *)self updateCaptureSizeWithAspectRatio:&v19];
    v6 = v19;
    v9 = v20;
    goto LABEL_27;
  }

  if (a3 == a4)
  {
    if (self->_supportsPortraitResolution && [(VCAVFoundationCapture *)self cameraSupportsNoQueueFormatWidth:1552 height:1552])
    {
      v7 = 1552.0;
      v6 = 1552.0;
    }

    else if (self->_captureFormatPrefer16By9ForSquare)
    {
      v7 = dbl_1DBD49B10[a3 == 1088];
      if (a3 == 1088)
      {
        v6 = 1920.0;
      }

      else
      {
        v6 = 1280.0;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_26;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 136316162;
    v22 = v16;
    v23 = 2080;
    v24 = "[VCAVFoundationCapture getOptimizedCameraCaptureWidth:height:]";
    v25 = 1024;
    v26 = 3017;
    v27 = 1024;
    v28 = v6;
    v29 = 1024;
    v30 = v7;
    v12 = " [%s] %s:%d square video, capture request %dx%d";
    v13 = v17;
LABEL_8:
    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, 0x28u);
LABEL_26:
    v9 = v7;
    goto LABEL_27;
  }

  if (!self->_supportsPortraitResolution || ![(VCAVFoundationCapture *)self shouldAdjustCaptureWithOrientation:self->_orientation])
  {
    goto LABEL_26;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v22 = v14;
      v23 = 2080;
      v24 = "[VCAVFoundationCapture getOptimizedCameraCaptureWidth:height:]";
      v25 = 1024;
      v26 = 3022;
      v27 = 1024;
      v28 = a4;
      v29 = 1024;
      v30 = a3;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d optimize capture for orientation, request %dx%d instead", buf, 0x28u);
    }
  }

  v9 = v6;
  v6 = v7;
LABEL_27:
  v18 = v6;
  result.height = v9;
  result.width = v18;
  return result;
}

- (BOOL)isFrameRateActive:(int)a3 captureFormat:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  memset(&v37, 170, sizeof(v37));
  if (self)
  {
    [(VCAVFoundationCapture *)self frameDurationForVideoDeviceFormat:a4 frameRate:*&a3];
  }

  else
  {
    memset(&v37, 0, sizeof(v37));
  }

  v5 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
  if (v5)
  {
    [(AVCaptureDevice *)v5 activeVideoMinFrameDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = v37;
  if (CMTimeCompare(&time1, &time2))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
    if (v7)
    {
      [(AVCaptureDevice *)v7 activeVideoMaxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = v37;
    v6 = CMTimeCompare(&time1, &time2) == 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
        if (v11)
        {
          [(AVCaptureDevice *)v11 activeVideoMinFrameDuration];
          v12 = v35;
        }

        else
        {
          v12 = 0;
        }

        v15 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
        if (v15)
        {
          [(AVCaptureDevice *)v15 activeVideoMinFrameDuration];
          v16 = v34;
        }

        else
        {
          v16 = 0;
        }

        v17 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
        if (v17)
        {
          [(AVCaptureDevice *)v17 activeVideoMaxFrameDuration];
          v18 = v33;
        }

        else
        {
          v18 = 0;
        }

        v19 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
        if (v19)
        {
          [(AVCaptureDevice *)v19 activeVideoMaxFrameDuration];
          v20 = v32;
        }

        else
        {
          v20 = 0;
        }

        LODWORD(time2.value) = 136316930;
        *(&time2.value + 4) = v8;
        LOWORD(time2.flags) = 2080;
        *(&time2.flags + 2) = "[VCAVFoundationCapture isFrameRateActive:captureFormat:]";
        HIWORD(time2.epoch) = 1024;
        v39 = 3032;
        v40 = 1024;
        v41 = v6;
        v42 = 1024;
        v43 = v12;
        v44 = 1024;
        v45 = v16;
        v46 = 1024;
        v47 = v18;
        v48 = 1024;
        v49 = v20;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sameFrameDuration=%d, activeVideoMinFrameDuration.value=%d, activeVideoMinFrameDuration.timescale=%d,  activeVideoMaxFrameDuration.value=%d, activeVideoMaxFrameDuration.timescale=%d", &time2, 0x3Au);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
      if (v13)
      {
        [(AVCaptureDevice *)v13 activeVideoMinFrameDuration];
        v14 = v31;
      }

      else
      {
        v14 = 0;
      }

      v22 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
      if (v22)
      {
        [(AVCaptureDevice *)v22 activeVideoMinFrameDuration];
        v23 = v30;
      }

      else
      {
        v23 = 0;
      }

      v24 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
      if (v24)
      {
        [(AVCaptureDevice *)v24 activeVideoMaxFrameDuration];
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }

      v26 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
      if (v26)
      {
        [(AVCaptureDevice *)v26 activeVideoMaxFrameDuration];
        v27 = v28;
      }

      else
      {
        v27 = 0;
      }

      LODWORD(time2.value) = 136316930;
      *(&time2.value + 4) = v8;
      LOWORD(time2.flags) = 2080;
      *(&time2.flags + 2) = "[VCAVFoundationCapture isFrameRateActive:captureFormat:]";
      HIWORD(time2.epoch) = 1024;
      v39 = 3032;
      v40 = 1024;
      v41 = v6;
      v42 = 1024;
      v43 = v14;
      v44 = 1024;
      v45 = v23;
      v46 = 1024;
      v47 = v25;
      v48 = 1024;
      v49 = v27;
      _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d sameFrameDuration=%d, activeVideoMinFrameDuration.value=%d, activeVideoMinFrameDuration.timescale=%d,  activeVideoMaxFrameDuration.value=%d, activeVideoMaxFrameDuration.timescale=%d", &time2, 0x3Au);
    }
  }

  return v6;
}

- (void)verifyUnbinnedCameraFormatSelection:(id)a3
{
  if (+[VCHardwareSettings shouldEnforceBinnedCameraFormatSelection](VCHardwareSettings, "shouldEnforceBinnedCameraFormatSelection") && ([a3 isVideoBinned] & 1) == 0)
  {
    v5 = [(VCVideoCapture *)self captureServer];

    [(VCVideoCaptureServer *)v5 didSelectUnbinnedCameraFormat];
  }
}

- (id)updateVideoCaptureAspectRatioWithRequestResolution:(int)a3 requestHeight:(int)a4 captureFormat:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  if ([a5 supportedOutputAspectRatios] && !objc_msgSend(objc_msgSend(a5, "supportedOutputAspectRatios"), "count"))
  {
    return 0;
  }

  keyExistsAndHasValidFormat = -86;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AVCaptureCameraMatchesOrientation", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_deviceOrientationMatchesReceiver = AppBooleanValue != 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        deviceOrientationMatchesReceiver = self->_deviceOrientationMatchesReceiver;
        *buf = 136315906;
        v31 = v10;
        v32 = 2080;
        v33 = "[VCAVFoundationCapture updateVideoCaptureAspectRatioWithRequestResolution:requestHeight:captureFormat:]";
        v34 = 1024;
        v35 = 3074;
        v36 = 1024;
        *v37 = deviceOrientationMatchesReceiver;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d keyExist, _deviceOrientationMatchesReceiver=%d", buf, 0x22u);
      }
    }
  }

  if (!VCMU_CompareWithAccuracy(1.0, a3 / a4, 0.01))
  {
    if (VCMU_CompareWithAccuracy(1.7778, a3 / a4, 0.01))
    {
      v15 = [a5 supportedOutputAspectRatios];
      v14 = *MEMORY[0x1E69868A0];
      if ([v15 containsObject:*MEMORY[0x1E69868A0]])
      {
        if (self->_deviceOrientationMatchesReceiver)
        {
          goto LABEL_21;
        }

        v16 = MEMORY[0x1E69868A0];
        v17 = MEMORY[0x1E69868C0];
        goto LABEL_18;
      }
    }

    else
    {
      if (!VCMU_CompareWithAccuracy(1.3333, a3 / a4, 0.01))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v31 = v25;
            v32 = 2080;
            v33 = "[VCAVFoundationCapture updateVideoCaptureAspectRatioWithRequestResolution:requestHeight:captureFormat:]";
            v34 = 1024;
            v35 = 3095;
            v36 = 1024;
            *v37 = a3;
            *&v37[4] = 1024;
            *&v37[6] = a4;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No AVCaptureAspectRatio matches request width=%d height=%d", buf, 0x28u);
          }
        }

        return 0;
      }

      v18 = [a5 supportedOutputAspectRatios];
      v14 = *MEMORY[0x1E69868B8];
      if ([v18 containsObject:*MEMORY[0x1E69868B8]])
      {
        if (self->_deviceOrientationMatchesReceiver)
        {
          goto LABEL_21;
        }

        v16 = MEMORY[0x1E69868B8];
        v17 = MEMORY[0x1E69868B0];
LABEL_18:
        if (self->_remotePreferFullBleed)
        {
          v16 = v17;
        }

        v14 = *v16;
        goto LABEL_21;
      }
    }

    return 0;
  }

  v13 = [a5 supportedOutputAspectRatios];
  v14 = *MEMORY[0x1E69868A8];
  if (([v13 containsObject:*MEMORY[0x1E69868A8]] & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (v14)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_deviceOrientationMatchesReceiver;
        remotePreferFullBleed = self->_remotePreferFullBleed;
        *buf = 136316674;
        v31 = v19;
        v32 = 2080;
        v33 = "[VCAVFoundationCapture updateVideoCaptureAspectRatioWithRequestResolution:requestHeight:captureFormat:]";
        v34 = 1024;
        v35 = 3099;
        v36 = 1024;
        *v37 = v21;
        *&v37[4] = 1024;
        *&v37[6] = remotePreferFullBleed;
        v38 = 2112;
        v39 = v14;
        v40 = 1024;
        v41 = keyExistsAndHasValidFormat;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX] _deviceOrientationMatchesReceiver=%d, _remotePreferFullBleed=%d, captureAspectRatio=%@, overrideByDefault=%d", buf, 0x38u);
      }
    }

    v28 = 0;
    if ([(AVCaptureDevice *)self->_captureDevice lockForConfiguration:&v28])
    {
      [(AVCaptureDevice *)self->_captureDevice setOutputAspectRatio:v14 completionHandler:&__block_literal_global_242];
      [(AVCaptureDevice *)self->_captureDevice unlockForConfiguration];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v31 = v23;
        v32 = 2080;
        v33 = "[VCAVFoundationCapture updateVideoCaptureAspectRatioWithRequestResolution:requestHeight:captureFormat:]";
        v34 = 1024;
        v35 = 3110;
        v36 = 2112;
        *v37 = v28;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to lock device error=%@", buf, 0x26u);
      }
    }
  }

  return v14;
}

void __104__VCAVFoundationCapture_updateVideoCaptureAspectRatioWithRequestResolution_requestHeight_captureFormat___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __104__VCAVFoundationCapture_updateVideoCaptureAspectRatioWithRequestResolution_requestHeight_captureFormat___block_invoke_cold_1();
    }
  }
}

- (int)setVideoDeviceToWidth:(int)a3 height:(int)a4 frameRate:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = *&a3;
  v61[3] = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAVFoundationCapture setVideoDeviceToWidth:height:frameRate:]";
      *&buf[22] = 1024;
      v55 = 3123;
      v56 = 1024;
      *v57 = v7;
      *&v57[4] = 1024;
      *&v57[6] = v6;
      v58 = 1024;
      v59 = v5;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d width=%d, height=%d, frameRate=%d", buf, 0x2Eu);
    }
  }

  [(VCAVFoundationCapture *)self getOptimizedCameraCaptureWidth:v7 height:v6];
  v12 = v11;
  v52 = v13;
  v14 = [(VCAVFoundationCapture *)self cameraFormatForWidth:v12 height:v13 frameRate:[(VCAVFoundationCapture *)self getSupportedMaxDeviceFrameRateWithFrameRateCap:v5]];
  v15 = [(VCAVFoundationCapture *)self getMaxAllowedFrameRate:v5];
  v16 = &OBJC_IVAR___VCVideoReceiverDefault__lastKeyFrameRequestStreamID;
  if (!v14)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = v25;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAVFoundationCapture setVideoDeviceToWidth:height:frameRate:]";
        *&buf[22] = 1024;
        v55 = 3191;
        v56 = 1024;
        *v57 = v12;
        *&v57[4] = 1024;
        *&v57[6] = v52;
        v58 = 1024;
        v59 = v5;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d camera doesn't support resolution=%dx%d@%d", buf, 0x2Eu);
      }
    }

    v27 = 0;
    goto LABEL_42;
  }

  v17 = v15;
  [(VCAVFoundationCapture *)self verifyUnbinnedCameraFormatSelection:v14];
  v18 = [(VCAVFoundationCapture *)self isFrameRateActive:v17 captureFormat:v14];
  if ([v14 isEqual:{-[AVCaptureDevice activeFormat](-[AVCaptureDeviceInput device](self->_videoDeviceInput, "device"), "activeFormat")}])
  {
    v19 = !v18;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAVFoundationCapture setVideoDeviceToWidth:height:frameRate:]";
        *&buf[22] = 1024;
        v55 = 3147;
        v56 = 2112;
        *v57 = v14;
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Same device format and frame rate. Skip configuration. cameraFormat=%@", buf, 0x26u);
      }
    }

    self->_activeFrameRate = v17;
    [(VCAVFoundationCapture *)self updateCaptureServerWithCaptureDeviceActiveFrameRate];
    [(VCAVFoundationCapture *)self updateVideoCaptureAspectRatioWithRequestResolution:v7 requestHeight:v6 captureFormat:v14];
    v27 = 0;
    v16 = &OBJC_IVAR___VCVideoReceiverDefault__lastKeyFrameRequestStreamID;
    goto LABEL_49;
  }

  v51 = v12;
  memset(v53, 170, sizeof(v53));
  [(VCAVFoundationCapture *)self frameDurationForVideoDeviceFormat:v14 frameRate:v17];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAVFoundationCapture setVideoDeviceToWidth:height:frameRate:]";
      *&buf[22] = 1024;
      v55 = 3154;
      v56 = 1024;
      *v57 = v51;
      *&v57[4] = 1024;
      *&v57[6] = v52;
      v58 = 1024;
      v59 = v17;
      v60 = 1024;
      LODWORD(v61[0]) = *v53;
      WORD2(v61[0]) = 1024;
      *(v61 + 6) = *&v53[8];
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d for cameraFormat %dx%d/%d, found frameDuration = %d / %d", buf, 0x3Au);
    }
  }

  if (![[(AVCaptureDeviceInput *)self->_videoDeviceInput device] lockForConfiguration:0])
  {
    LODWORD(v12) = v51;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAVFoundationCapture setVideoDeviceToWidth:height:frameRate:];
      }
    }

    [(VCAVFoundationCapture *)self updateVideoCaptureAspectRatioWithRequestResolution:v7 requestHeight:v6 captureFormat:v14];
    v27 = 0;
    v16 = &OBJC_IVAR___VCVideoReceiverDefault__lastKeyFrameRequestStreamID;
    goto LABEL_42;
  }

  if (self->_beginCommitConfigForFormatSwitch)
  {
    [(AVCaptureSession *)self->_captureSession beginConfiguration];
  }

  [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] setActiveFormat:v14];
  v50 = v53[12];
  if (v53[12])
  {
    v24 = !v18;
    v31 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
    *buf = *v53;
    *&buf[16] = *&v53[16];
    [(AVCaptureDevice *)v31 setActiveVideoMaxFrameDuration:buf];
    v32 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];
    *buf = *v53;
    *&buf[16] = *&v53[16];
    [(AVCaptureDevice *)v32 setActiveVideoMinFrameDuration:buf];
    [(VCAVFoundationCapture *)self setCaptureDeviceMinFrameRateIfNeeded:v17];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAVFoundationCapture setVideoDeviceToWidth:height:frameRate:]";
        *&buf[22] = 1024;
        v55 = 3171;
        v56 = 1024;
        *v57 = v51;
        *&v57[4] = 1024;
        *&v57[6] = v52;
        v58 = 1024;
        v59 = v17;
        _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, " [%s] %s:%d %dx%d/%d, frameRateInRange not found!", buf, 0x2Eu);
      }
    }

    v24 = 0;
  }

  [(VCAVFoundationCapture *)self configureCaptureDeviceDepthFormat];
  if ([(AVCaptureDevice *)self->_captureDevice isFaceDetectionSupported])
  {
    [(AVCaptureDevice *)self->_captureDevice setFaceDetectionDrivenImageProcessingEnabled:1];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAVFoundationCapture setVideoDeviceToWidth:height:frameRate:]";
      *&buf[22] = 1024;
      v55 = 3178;
      v56 = 2112;
      *v57 = v14;
      _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d set video device format to %@", buf, 0x26u);
    }
  }

  self->_activeFrameRate = v17;
  if (v24)
  {
    [(VCAVFoundationCapture *)self updateCaptureServerWithCaptureDeviceActiveFrameRate];
  }

  [(VCAVFoundationCapture *)self updateVideoCaptureAspectRatioWithRequestResolution:v7 requestHeight:v6 captureFormat:v14];
  v27 = 1;
  LODWORD(v12) = v51;
  v16 = &OBJC_IVAR___VCVideoReceiverDefault__lastKeyFrameRequestStreamID;
  if ((v50 & 1) == 0)
  {
LABEL_42:
    if (VRTraceGetErrorLogLevelForModule() > 4)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if ([[(AVCaptureDeviceInput *)self->_videoDeviceInput device] activeFormat])
        {
          v37 = [-[AVCaptureDeviceFormat description](-[AVCaptureDevice activeFormat](-[AVCaptureDeviceInput device](self->_videoDeviceInput "device")];
        }

        else
        {
          v37 = "<nil>";
        }

        *buf = 136316674;
        *&buf[4] = v35;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAVFoundationCapture setVideoDeviceToWidth:height:frameRate:]";
        *&buf[22] = 1024;
        v55 = 3196;
        v56 = 1024;
        *v57 = v12;
        *&v57[4] = 1024;
        *&v57[6] = v52;
        v58 = 1024;
        v59 = v5;
        v60 = 2080;
        v61[0] = v37;
        _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d failed to set video device format to %dx%d/%d. Using format %s", buf, 0x38u);
      }
    }
  }

LABEL_49:
  Dimensions = CMVideoFormatDescriptionGetDimensions([(AVCaptureDeviceFormat *)[[(AVCaptureDeviceInput *)self->_videoDeviceInput device] activeFormat] formatDescription]);
  v39 = v16[969];
  if ([*(&self->super.super.isa + v39) outputAspectRatio])
  {
    Dimensions = [*(&self->super.super.isa + v39) outputDimensions];
  }

  *&self->_activeWidth = Dimensions;
  if (Dimensions.width < v12 && Dimensions.height < v52 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v41 = VRTraceErrorLogLevelToCSTR();
    v42 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAVFoundationCapture setVideoDeviceToWidth:height:frameRate:]";
      *&buf[22] = 1024;
      v55 = 3210;
      v56 = 1024;
      *v57 = Dimensions.width;
      *&v57[4] = 1024;
      *&v57[6] = Dimensions.height;
      v58 = 1024;
      v59 = v12;
      v60 = 1024;
      LODWORD(v61[0]) = v52;
      _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d video device format resolution (%dx%d) is lower than requested (%dx%d)", buf, 0x34u);
    }
  }

  activeWidth = self->_activeWidth;
  v44 = activeWidth;
  activeHeight = self->_activeHeight;
  v46 = activeHeight;
  self->_captureSize.width = activeWidth;
  self->_captureSize.height = activeHeight;
  width = self->_requestSize.width;
  height = self->_requestSize.height;
  if (width == 1088.0)
  {
    width = 1088.0;
    if (height == 1088.0)
    {
      height = 1088.0;
      if (activeWidth != 1920)
      {
        width = 1088.0;
        if (activeHeight == 1080)
        {
          goto LABEL_65;
        }

        self->_requestSize = vdupq_n_s64(0x4086800000000000uLL);
        v44 = self->_captureSize.width;
        v46 = self->_captureSize.height;
        height = 720.0;
      }

      width = height;
    }
  }

LABEL_65:
  self->_resize = [(VCAVFoundationCapture *)self shouldResizeWithCaptureSize:v44 requestSize:v46, width, height];
  [(VCAVFoundationCapture *)self updateCenterStageRegionOfInterestWithLock:v27 ^ 1u];
  if (((v27 ^ 1) & 1) == 0)
  {
    if (self->_beginCommitConfigForFormatSwitch)
    {
      [(AVCaptureSession *)self->_captureSession commitConfiguration];
    }

    [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] unlockForConfiguration];
  }

  return 0;
}

- (BOOL)isFormatMaxFrameRateSupported:(id)a3 frameRate:(int)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 videoSupportedFrameRateRanges];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 maxFrameRate];
        if (v12 > 60.0 || a4 == 0)
        {
          v9 &= v12 <= 60.0;
        }

        else
        {
          [v11 maxFrameRate];
          if (v14 < a4)
          {
            v9 = 0;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (BOOL)hasRequiredAttributes:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  MediaSubType = CMFormatDescriptionGetMediaSubType([a3 formatDescription]);
  if ([a3 supportedOutputAspectRatios] && objc_msgSend(objc_msgSend(a3, "supportedOutputAspectRatios"), "count"))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = !self->_deviceSupportVideoEffects && MediaSubType == 875704438;
    if (self->_deviceSupportVideoEffects && MediaSubType == 875704438)
    {
      v6 = [VCAVFoundationCapture captureDeviceformatSupportsVideoEffects:a3];
    }

    captureSIFRPreferredOverride = self->_captureSIFRPreferredOverride;
    switch(captureSIFRPreferredOverride)
    {
      case 0:
        goto LABEL_16;
      case 2:
        v6 &= [a3 isVideoHDRSupported] ^ 1;
        break;
      case 1:
        v6 &= [a3 isVideoHDRSupported];
        break;
      default:
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v10 = self->_captureSIFRPreferredOverride;
            v14 = 136315906;
            v15 = v8;
            v16 = 2080;
            v17 = "[VCAVFoundationCapture hasRequiredAttributes:]";
            v18 = 1024;
            v19 = 3345;
            v20 = 1024;
            v21 = v10;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown default value %d, do not overwrite capture SIFR preference", &v14, 0x22u);
          }
        }

        break;
    }

    if (self->_captureSIFRPreferredOverride != 2)
    {
LABEL_16:
      v11 = [[(AVCaptureDeviceInput *)self->_videoDeviceInput device] deviceType];
      if (v11 == *MEMORY[0x1E6986940])
      {
        v12 = [a3 supportedDepthDataFormats];
        if (!v12 || ![v12 count])
        {
          v6 = 0;
        }
      }
    }

    if (self->_captureFormatNonBinOnlyOverride)
    {
      return ([a3 isVideoBinned] ^ 1) & v6;
    }
  }

  return v6;
}

- (id)getCaptureFormatList
{
  v2 = [(AVCaptureDeviceInput *)self->_videoDeviceInput device];

  return [(AVCaptureDevice *)v2 formats];
}

- (id)cameraFormatForWidth:(int)a3 height:(int)a4 frameRate:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = *&a3;
  v9 = [(VCAVFoundationCapture *)self getCaptureFormatList];

  return [(VCAVFoundationCapture *)self cameraFormatForWidthWithList:v7 height:v6 frameRate:v5 formatList:v9];
}

- (id)cameraFormatForWidthWithList:(int)a3 height:(int)a4 frameRate:(int)a5 formatList:(id)a6
{
  v7 = *&a5;
  v69 = *MEMORY[0x1E69E9840];
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = a3;
  v47 = a4;
  v65 = 0u;
  v66 = 0u;
  v12 = a3 / a4;
  v67 = 0u;
  v68 = 0u;
  v13 = [a6 countByEnumeratingWithState:&v65 objects:v64 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v66;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v66 != v15)
        {
          objc_enumerationMutation(a6);
        }

        v17 = *(*(&v65 + 1) + 8 * i);
        if ([(VCAVFoundationCapture *)self hasRequiredAttributes:v17])
        {
          if (!v7)
          {
            goto LABEL_13;
          }

          memset(buf, 170, sizeof(buf));
          v18 = v7;
          if (self->_effectsApplied)
          {
            lastClientRequestedFrameRate = self->_lastClientRequestedFrameRate;
            if (lastClientRequestedFrameRate <= v7)
            {
              v18 = v7;
            }

            else
            {
              v18 = lastClientRequestedFrameRate;
            }
          }

          [(VCAVFoundationCapture *)self frameDurationForVideoDeviceFormat:v17 frameRate:v18];
          if (buf[12])
          {
LABEL_13:
            Dimensions = CMVideoFormatDescriptionGetDimensions([v17 formatDescription]);
            if (Dimensions.width == v46 && Dimensions.height == a4)
            {
              [v11 addObject:v17];
            }

            [obj addObject:v17];
          }
        }
      }

      v14 = [a6 countByEnumeratingWithState:&v65 objects:v64 count:16];
    }

    while (v14);
  }

  v51 = -1431655766;
  *&v49[1] = v12;
  v49[0] = self;
  v50 = v7;
  if ([v11 count])
  {
    [v11 sortUsingFunction:_VCAVFoundationCapture_compare context:v49];
    v22 = [v11 firstObject];
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      v25 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v23;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAVFoundationCapture cameraFormatForWidthWithList:height:frameRate:formatList:]";
          *&buf[22] = 1024;
          v53 = 3460;
          v54 = 2112;
          *v55 = v11;
          v26 = " [%s] %s:%d matchFormats = %@";
LABEL_51:
          _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [VCAVFoundationCapture cameraFormatForWidthWithList:height:frameRate:formatList:];
      }
    }
  }

  else
  {
    v43 = v11;
    [obj sortUsingFunction:_VCAVFoundationCapture_compare context:v49];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = [obj countByEnumeratingWithState:&v60 objects:v59 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v45 = *v61;
      v32 = v12;
      do
      {
        v33 = 0;
        v22 = v29;
        v34 = v30;
        do
        {
          if (*v61 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v60 + 1) + 8 * v33);
          v30 = _VCAVFoundationCapture_effectiveResolution(v29, v32);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v44 = VRTraceErrorLogLevelToCSTR();
            v35 = *MEMORY[0x1E6986650];
            v36 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                *&buf[4] = v44;
                *&buf[12] = 2080;
                *&buf[14] = "[VCAVFoundationCapture cameraFormatForWidthWithList:height:frameRate:formatList:]";
                *&buf[22] = 1024;
                v53 = 3467;
                v54 = 2112;
                *v55 = v29;
                *&v55[8] = 1024;
                *v56 = v30 == v34;
                _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d format %@. sameTierToPrevious = %d", buf, 0x2Cu);
              }
            }

            else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              *&buf[4] = v44;
              *&buf[12] = 2080;
              *&buf[14] = "[VCAVFoundationCapture cameraFormatForWidthWithList:height:frameRate:formatList:]";
              *&buf[22] = 1024;
              v53 = 3467;
              v54 = 2112;
              *v55 = v29;
              *&v55[8] = 1024;
              *v56 = v30 == v34;
              _os_log_debug_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEBUG, " [%s] %s:%d format %@. sameTierToPrevious = %d", buf, 0x2Cu);
            }
          }

          if (v30 == v34)
          {
            v29 = v22;
          }

          else
          {
            v37 = v31 >= v47 * v46;
            v31 = v30;
            if (v37)
            {
              goto LABEL_47;
            }
          }

          ++v33;
          v22 = v29;
          v34 = v30;
        }

        while (v28 != v33);
        v22 = v29;
        v28 = [obj countByEnumeratingWithState:&v60 objects:v59 count:16];
      }

      while (v28);
    }

    else
    {
      v22 = 0;
    }

LABEL_47:
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      v11 = v43;
      goto LABEL_55;
    }

    v38 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    v11 = v43;
    v39 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v38;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAVFoundationCapture cameraFormatForWidthWithList:height:frameRate:formatList:]";
        *&buf[22] = 1024;
        v53 = 3478;
        v54 = 2112;
        *v55 = obj;
        v26 = " [%s] %s:%d sortedFormats = %@";
        goto LABEL_51;
      }
    }

    else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [VCAVFoundationCapture cameraFormatForWidthWithList:height:frameRate:formatList:];
    }
  }

LABEL_55:

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCaptureDeviceFormat-cameraFormatForWidth");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAVFoundationCapture cameraFormatForWidthWithList:height:frameRate:formatList:]";
      *&buf[22] = 1024;
      v53 = 3483;
      v54 = 1024;
      *v55 = v46;
      *&v55[4] = 1024;
      *&v55[6] = v47;
      *v56 = 1024;
      *&v56[2] = v7;
      v57 = 2112;
      v58 = v22;
      _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCaptureDeviceFormat-cameraFormatForWidth width=%d height=%d frameRate=%d cameraFormat=%@", buf, 0x38u);
    }
  }

  return v22;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDurationForFrameRateRangeWithMinFrameRate:(SEL)a3 maxFrameRate:(double)a4 minFrameDuration:(double)a5 maxFrameDuration:(id *)a6 desiredFrameRate:(id *)a7
{
  v12 = a4;
  v14 = a4;
  v15 = a5;
  result = VCMU_CompareWithAccuracy(v14, v15, 0.0001);
  if (result)
  {
    goto LABEL_2;
  }

  v18 = a8;
  if (a8 < v12 || (result = VCMU_CompareWithAccuracy(v14, a8, 0.1), result))
  {
    *&retstr->var0 = *&a7->var0;
    var3 = a7->var3;
    goto LABEL_6;
  }

  if (v18 > a5 || (result = VCMU_CompareWithAccuracy(v15, a8, 0.1), (result & 1) != 0))
  {
LABEL_2:
    *&retstr->var0 = *&a6->var0;
    var3 = a6->var3;
LABEL_6:
    retstr->var3 = var3;
    return result;
  }

  do
  {
    v19 = v12;
    v12 = v12 + 1.0;
  }

  while (v19 <= a5 + -1.0 && v12 <= v18);
  if (v19 == 0.0)
  {
    v21 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    var3 = *(v21 + 16);
    goto LABEL_6;
  }

  var1 = a6->var1;
  v23 = llround(var1 / v19 * 10.0);

  return CMTimeMake(retstr, v23, 10 * var1);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDurationForVideoDeviceFormat:(SEL)a3 frameRate:(id)a4
{
  v5 = *&a5;
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [a4 videoSupportedFrameRateRanges];
  result = [v7 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v25;
    v11 = v5;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v24 + 1) + 8 * v12);
      [v13 minFrameRate];
      if (v14 + -1.0 <= v11)
      {
        result = [v13 maxFrameRate];
        if (v15 + 1.0 >= v11)
        {
          break;
        }
      }

      if (v9 == ++v12)
      {
        result = [v7 countByEnumeratingWithState:&v24 objects:v23 count:16];
        v9 = result;
        if (result)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if (!v13)
    {
      goto LABEL_13;
    }

    [v13 minFrameRate];
    v17 = v16;
    [v13 maxFrameRate];
    v19 = v18;
    [v13 minFrameDuration];
    [v13 maxFrameDuration];
    return [VCAVFoundationCapture frameDurationForFrameRateRangeWithMinFrameRate:v22 maxFrameRate:&v21 minFrameDuration:v5 maxFrameDuration:v17 desiredFrameRate:v19];
  }

  else
  {
LABEL_13:
    v20 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v20 + 16);
  }

  return result;
}

- (void)prepareSynchronizedOutputs:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_outputSynchronizerOutputs)
  {
    self->_outputSynchronizerOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_outputSynchronizerOutputs containsObject:v9]& 1) == 0)
        {
          [(NSMutableArray *)self->_outputSynchronizerOutputs addObject:v9];
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (void)configCaptureConnectionForDevice:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(AVCaptureVideoDataOutput *)self->_videoCaptureOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
  if (v5)
  {
    v6 = v5;
    v7 = [(VCAVFoundationCapture *)self videoOrientationForDevice:a3];
    if ([v6 videoOrientation] != v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v8;
          v14 = 2080;
          v15 = "[VCAVFoundationCapture configCaptureConnectionForDevice:]";
          v16 = 1024;
          v17 = 3576;
          v18 = 1024;
          v19 = v7;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d orientation=%d", &v12, 0x22u);
        }
      }

      [v6 setVideoOrientation:v7];
    }

    [v6 setVideoMirrored:0];
    if ([v6 isCameraIntrinsicMatrixDeliverySupported])
    {
      [v6 setCameraIntrinsicMatrixDeliveryEnabled:1];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v10;
      v14 = 2080;
      v15 = "[VCAVFoundationCapture configCaptureConnectionForDevice:]";
      v16 = 1024;
      v17 = 3569;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d no AVCaptureConnection found, failed to set", &v12, 0x1Cu);
    }
  }
}

- (int64_t)videoOrientationForDevice:(id)a3
{
  v4 = [a3 position];
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    if (v4 == 1)
    {
      v5 = 3;
    }

    if (v4 == 2)
    {
      return 4;
    }

    else
    {
      return v5;
    }
  }

  else if (self->_shouldRemoveExtraRotation)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

- (BOOL)configureVideoStabilization
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(AVCaptureVideoDataOutput *)self->_videoCaptureOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([(AVCaptureDevice *)self->_captureDevice position]== AVCaptureDevicePositionFront)
  {
    if ([VCDefaults BOOLeanValueForKey:@"VideoStabilizationFrontCamera" defaultValue:1])
    {
      [v3 setPreferredVideoStabilizationMode:6];
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = 1;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v4;
        v12 = 2080;
        v13 = "[VCAVFoundationCapture configureVideoStabilization]";
        v14 = 1024;
        v15 = 3620;
        v16 = 1024;
        v17 = 1;
        v18 = 1024;
        v19 = [v3 preferredVideoStabilizationMode];
        v7 = " [%s] %s:%d front camera enabled=%d, preferredVideoStabilizationMode=%d";
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x28u);
        return v6;
      }

      return v6;
    }

    return 0;
  }

  if ([(AVCaptureDevice *)self->_captureDevice position]!= AVCaptureDevicePositionBack || ![VCDefaults BOOLeanValueForKey:@"VideoStabilizationBackCamera" defaultValue:0])
  {
    return 0;
  }

  v6 = 1;
  [v3 setPreferredVideoStabilizationMode:1];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = 1;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316162;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCAVFoundationCapture configureVideoStabilization]";
      v14 = 1024;
      v15 = 3626;
      v16 = 1024;
      v17 = 1;
      v18 = 1024;
      v19 = [v3 preferredVideoStabilizationMode];
      v7 = " [%s] %s:%d back camera enabled=%d, preferredVideoStabilizationMode=%d";
      goto LABEL_11;
    }
  }

  return v6;
}

- (void)printVideoStabilizationState:(BOOL)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [(AVCaptureVideoDataOutput *)self->_videoCaptureOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(AVCaptureDevice *)self->_captureDevice position];
        v14 = 136316674;
        v15 = v5;
        v16 = 2080;
        v17 = "[VCAVFoundationCapture printVideoStabilizationState:]";
        v18 = 1024;
        v19 = 3635;
        v20 = 1024;
        v21 = v7;
        v22 = 1024;
        v23 = 1;
        v24 = 1024;
        v25 = [v4 preferredVideoStabilizationMode];
        v26 = 1024;
        v27 = [v4 activeVideoStabilizationMode];
        v8 = " [%s] %s:%d position=%d, videoStabilizationEnabled=%d, preferredVideoStabilizationMode=%d, activeVideoStabilizationMode=%d";
        v9 = v6;
        v10 = 52;
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(AVCaptureDevice *)self->_captureDevice position];
      v14 = 136316162;
      v15 = v11;
      v16 = 2080;
      v17 = "[VCAVFoundationCapture printVideoStabilizationState:]";
      v18 = 1024;
      v19 = 3637;
      v20 = 1024;
      v21 = v13;
      v22 = 1024;
      v23 = 0;
      v8 = " [%s] %s:%d position=%d, videoStabilizationEnabled=%d";
      v9 = v12;
      v10 = 40;
      goto LABEL_8;
    }
  }
}

- (BOOL)isInternalCamera
{
  captureDevice = self->_captureDevice;
  if (!captureDevice)
  {
    return 1;
  }

  v3 = [(AVCaptureDevice *)captureDevice deviceType];
  return v3 != *MEMORY[0x1E6986968];
}

- (BOOL)updateVideoDataOutputVideoSettingResolution:(int)a3 requestHeight:(int)a4 captureFormat:(id)a5
{
  v25[3] = *MEMORY[0x1E69E9840];
  if (self->_captureFormatPrefer16By9ForSquare || ![(AVCaptureVideoDataOutput *)self->_videoCaptureOutput isVideoSettingsAspectRatioOverrideOptimized])
  {
    return 0;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions([a5 formatDescription]);
  videoCaptureOutput = self->_videoCaptureOutput;
  if (a3 != 1088 || (a4 == 1088 ? (v11 = Dimensions == 0x5A000000780) : (v11 = 0), !v11))
  {
    [(AVCaptureVideoDataOutput *)videoCaptureOutput setVideoSettingsAspectRatioOverrideEnabled:0];
    return 0;
  }

  v12 = 1;
  [(AVCaptureVideoDataOutput *)videoCaptureOutput setVideoSettingsAspectRatioOverrideEnabled:1];
  v24[0] = *MEMORY[0x1E6966130];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_capturePixelFormat];
  v14 = *MEMORY[0x1E6966208];
  v25[0] = v13;
  v25[1] = &unk_1F579A050;
  v15 = *MEMORY[0x1E69660B8];
  v24[1] = v14;
  v24[2] = v15;
  v25[2] = &unk_1F579A050;
  -[AVCaptureVideoDataOutput setVideoSettings:](self->_videoCaptureOutput, "setVideoSettings:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      v20 = v17;
      OUTLINED_FUNCTION_6();
      v21 = 3054;
      v22 = 2112;
      v23 = a5;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AspectRatioOverrideEnabled, update output override to 1088x1088 on cameraFormat=%@", v19, 0x26u);
    }

    return 1;
  }

  return v12;
}

- (void)initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)shouldResizeWithCaptureSize:(void *)a1 requestSize:(_BYTE *)a2 .cold.1(void *a1, _BYTE *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    v15 = 857;
    OUTLINED_FUNCTION_16_0();
LABEL_12:
    _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = v11;
      OUTLINED_FUNCTION_0();
      v15 = 857;
      v16 = 2112;
      v17 = v4;
      v18 = 2048;
      v19 = a1;
      v5 = &dword_1DB56E000;
      v8 = " [%s] %s:%d %@(%p) Allocating VCResizeImageBuffer failed";
      v9 = &v13;
      v6 = v12;
      v7 = OS_LOG_TYPE_ERROR;
      v10 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a2 = 0;
}

- (void)updateCenterStageRegionOfInterestWithLock:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)encodeProcessedPixelBuffer:time:imageData:processTime:.cold.1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

- (void)dataOutputSynchronizer:(uint64_t)a1 didOutputSynchronizedDataCollection:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  [a2 droppedReason];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

- (void)captureSessionNotification:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __52__VCAVFoundationCapture_captureSessionNotification___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __64__VCAVFoundationCapture_startCaptureWithWidth_height_frameRate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setFrameRateInternal:forceSourceFrameRateDidChange:.cold.1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setFrameRateInternal:forceSourceFrameRateDidChange:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)dispatchedCurrentVideoFeatureStatus:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v3 = 2211;
      OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Cannot get current video feature status without captureDevice", v2);
    }
  }
}

- (void)dispatchedCurrentVideoFeatureStatus:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v3 = 2206;
      OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Feature status cannot be NULL", v2);
    }
  }
}

- (void)setCameraZoomFactor:.cold.1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setCameraZoomFactor:withRate:.cold.1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)beginSensitiveContentAnalysisWithCaptureDeviceInput:.cold.1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setCameraWithUID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setCamera:width:height:frameRate:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setCamera:width:height:frameRate:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setVideoDeviceToSelectedDevice:.cold.1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __104__VCAVFoundationCapture_updateVideoCaptureAspectRatioWithRequestResolution_requestHeight_captureFormat___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setVideoDeviceToWidth:height:frameRate:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)cameraFormatForWidthWithList:height:frameRate:formatList:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

- (void)cameraFormatForWidthWithList:height:frameRate:formatList:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

@end