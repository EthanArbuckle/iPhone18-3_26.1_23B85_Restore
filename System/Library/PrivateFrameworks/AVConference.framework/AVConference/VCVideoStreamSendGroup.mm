@interface VCVideoStreamSendGroup
- (BOOL)dispatchedEnableRedundancy:(BOOL)a3;
- (BOOL)generateKeyFrameWithStreamID:(id)a3 firType:(int)a4;
- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)a3 frameTime:(id *)a4 attribute:(id *)a5;
- (BOOL)setupRedundancySettings;
- (BOOL)setupStreamGroupWithConfig:(id)a3;
- (BOOL)shouldCompoundListIgnoreStream:(id)a3 streamConfig:(id)a4 activeStreamIds:(id)a5;
- (BOOL)shouldEnableFullBleedCapture;
- (BOOL)shouldSubscribeToStreamID:(id)a3 peerSubscribedStreams:(id)a4;
- (BOOL)updateUplinkStreamsForPeerSubscribedStreams:(id)a3;
- (CGSize)getCaptureEncodingSize;
- (VCVideoStreamSendGroup)initWithConfig:(id)a3;
- (id)activeStreamKeys;
- (id)captureConfigForScreenShare;
- (id)copyOnVideoFrameBlock;
- (id)registerForScreenCapture;
- (id)setupRedundancyControllerForMode:(unsigned int)a3;
- (id)startCapture;
- (id)stopCapture;
- (id)streamDescriptionForMediaStreamConfig:(id)a3;
- (id)uplinkVideoStreamControllerForMode:(unsigned int)a3;
- (id)willStart;
- (int)maxCaptureCameraFrameRateForMode:(unsigned int)a3;
- (int)maxCaptureFrameRateForMode:(unsigned int)a3;
- (int64_t)maxCaptureResolution;
- (unint64_t)maxStreamFrameRate;
- (unsigned)getPixelFormat;
- (void)avConferencePreviewError:(id)a3;
- (void)cameraAvailabilityDidChange:(BOOL)a3;
- (void)cleanupRedundancySettings;
- (void)collectAndLogChannelMetrics:(id *)a3;
- (void)computeMaxScreenCaptureSize;
- (void)configureCaptureForFullScreen:(BOOL)a3;
- (void)controller:(id)a3 didChangeActiveVideoStreams:(id)a4;
- (void)dealloc;
- (void)deregisterClientForScreenShare;
- (void)deregisterForScreenCapture;
- (void)deregisterForVideoCapture;
- (void)dispatchedSetCaptureVideoRule:(id)a3;
- (void)dispatchedUpdateActiveMediaStreamIDs:(id)a3 withTargetBitrate:(unsigned int)a4 mediaBitrates:(id)a5 rateChangeCounter:(unsigned int)a6;
- (void)flushVideoRedundancyEventQueue;
- (void)frameRateIsBeingThrottled:(int)a3 thermalLevelDidChange:(BOOL)a4 powerLevelDidChange:(BOOL)a5;
- (void)redundancyController:(id)a3 redundancyPercentageDidChange:(unsigned int)a4;
- (void)redundancyController:(id)a3 redundancyVectorDidChange:(id *)a4;
- (void)registerClientForScreenShare;
- (void)registerConfigForScreenShare;
- (void)registerForVideoCapture:(int)a3;
- (void)setActiveConnection:(id)a3 uplinkBitrateCap:(unsigned int)a4 activeMediaStreamIDs:(id)a5 mediaBitrates:(id)a6 rateChangeCounter:(unsigned int)a7;
- (void)setAlwaysHDCaptureScreenEnabled:(BOOL)a3;
- (void)setCaptureFrameRate:(int)a3;
- (void)setLowPowerModeEnabled:(BOOL)a3;
- (void)setMediaQueueSize:(unsigned int)a3;
- (void)setUpFrameBasedFEC:(unsigned int)a3 inParameter:(VCRedundancyControllerVideoParameters_t *)a4;
- (void)setupPayloadTypes;
- (void)setupRedundancySettings;
- (void)setupVideoPriority;
- (void)sourceFrameRateDidChange:(unsigned int)a3;
- (void)thermalLevelDidChange:(int)a3;
- (void)updateEnabledState;
- (void)updateSuspendedState;
- (void)updateUplinkBitrateCapCell:(unsigned int)a3 activeStreamIDs:(id)a4;
- (void)updateUplinkBitrateCapWifi:(unsigned int)a3 activeStreamIDs:(id)a4;
- (void)vcMediaStream:(id)a3 didChangeRedundancyPercentage:(unsigned int)a4;
- (void)vcMediaStreamDidDecryptionTimeOut:(id)a3;
- (void)vcMediaStreamDidRTCPTimeOut:(id)a3;
- (void)vcMediaStreamDidRTPTimeOut:(id)a3;
@end

@implementation VCVideoStreamSendGroup

- (VCVideoStreamSendGroup)initWithConfig:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VCVideoStreamSendGroup;
  v4 = [(VCMediaStreamSendGroup *)&v24 initWithConfig:?];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_38;
  }

  [(VCMediaStreamSendGroup *)v4 setIsSuspended:1];
  v5->_clientCaptureController = objc_storeWeak(&v5->_clientCaptureController, [a3 captureController]);
  [(VCMediaStreamGroup *)v5 setCaptureController:v5];
  v5->_shouldSynchronizeSystemAudioStartWithAVCScreenCapture = [a3 shouldSynchronizeSystemAudioStartWithAVCScreenCapture];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5->_videoPayloadTypes = v6;
  if (!v6)
  {
    [VCVideoStreamSendGroup initWithConfig:];
LABEL_38:

    return 0;
  }

  if (![(VCVideoStreamSendGroup *)v5 setupRedundancySettings])
  {
    [VCVideoStreamSendGroup initWithConfig:];
    goto LABEL_38;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5->_pendingActiveUplinkStreams = v7;
  if (!v7)
  {
    [VCVideoStreamSendGroup initWithConfig:];
    goto LABEL_38;
  }

  [(VCVideoStreamSendGroup *)v5 setupVideoPriority];
  *(&v5->super._isSuspended + 3) = [a3 captureSource];
  v5->_maxSupportedCaptureFrameRate = [(VCVideoStreamSendGroup *)v5 maxCaptureFrameRateForMode:v5->super._streamGroupMode];
  v8 = [(VCVideoStreamSendGroup *)v5 uplinkVideoStreamControllerForMode:v5->super._streamGroupMode];
  v5->_uplinkVideoStreamController = v8;
  if (!v8)
  {
    [VCVideoStreamSendGroup initWithConfig:];
    goto LABEL_38;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5->_temporalStreamsIDs = v9;
  if (!v9)
  {
    [VCVideoStreamSendGroup initWithConfig:];
    goto LABEL_38;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5->super.super._mediaStreamInfoArray;
  v22 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v22)
  {
    v21 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v10;
        v11 = *(*(&v31 + 1) + 8 * v10);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [v11 streamConfigs];
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v26 + 1) + 8 * i) multiwayConfig];
              if ([v17 isTemporalStream])
              {
                -[NSMutableArray addObject:](v5->_temporalStreamsIDs, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v17, "idsStreamID")}]);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v26 objects:v25 count:16];
          }

          while (v14);
        }

        v10 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v22);
  }

  [(VCVideoStreamSendGroup *)v5 setupPayloadTypes];
  v5->_maxSupportedMultiwayVideoResolution = [(VCVideoStreamSendGroup *)v5 maxCaptureResolution];
  v5->_captureFrameRate = v5->_maxSupportedCaptureFrameRate;
  v5->_fecRatio = -1.0;
  if (+[VCHardwareSettings deviceClass]== 8)
  {
    if ([(VCMediaStreamGroup *)v5 streamGroupID]== 1667329381)
    {
      v5->_allowSuspendProvisionedStreams = 1;
    }

    else
    {
      v18 = [(VCMediaStreamGroup *)v5 streamGroupID];
      v5->_allowSuspendProvisionedStreams = v18 == 1667329399;
      if (v18 != 1667329399)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  if (v5->_allowSuspendProvisionedStreams)
  {
LABEL_27:
    v5->_hasPeerSubscribedStreams = 0;
    v5->super.super._areStreamsSuspended = 1;
  }

LABEL_28:
  if ([(VCMediaStreamGroup *)v5 streamGroupID]== 1935897189)
  {
    [(VCVideoStreamSendGroup *)v5 registerConfigForScreenShare];
  }

  v5->_initTime = micro() != 0.0;
  v5->_totalNumFramesProcessed = 0;
  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCVideoStreamSendGroup *)self cleanupRedundancySettings];

  objc_storeWeak(&self->_clientCaptureController, 0);
  v3.receiver = self;
  v3.super_class = VCVideoStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v3 dealloc];
}

- (BOOL)setupStreamGroupWithConfig:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCVideoStreamSendGroup;
  v5 = [(VCMediaStreamSendGroup *)&v8 setupStreamGroupWithConfig:?];
  self->_uplinkVideoStreamController = -[VCVideoStreamSendGroup uplinkVideoStreamControllerForMode:](self, "uplinkVideoStreamControllerForMode:", [a3 streamGroupMode]);
  v6 = -[VCVideoStreamSendGroup maxCaptureFrameRateForMode:](self, "maxCaptureFrameRateForMode:", [a3 streamGroupMode]);
  self->_maxSupportedCaptureFrameRate = v6;
  self->_captureFrameRate = v6;
  return v5;
}

- (BOOL)setupRedundancySettings
{
  v7 = *MEMORY[0x1E69E9840];
  Typed = VCMemoryPool_CreateTyped(8uLL, 0x100004000313F17);
  self->_videoRedundancyPool = Typed;
  if (Typed)
  {
    CMSimpleQueueCreate(*MEMORY[0x1E695E480], 10, &self->_videoRedundancyChangeEventQueue);
    if (self->_videoRedundancyChangeEventQueue)
    {
      return 1;
    }

    else
    {
      [(VCVideoStreamSendGroup *)self setupRedundancySettings];
      return v5;
    }
  }

  else
  {
    [(VCVideoStreamSendGroup *)&v6 setupRedundancySettings];
    return v6;
  }
}

- (void)setUpFrameBasedFEC:(unsigned int)a3 inParameter:(VCRedundancyControllerVideoParameters_t *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    a4->var4 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->super._sendGroupConfigForMode objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:")), "mediaStreamInfoArray"), "firstObject"), "streamConfigs"), "firstObject"), "isFECFrameBasedEnabled"}];
  }

  else if (!a3)
  {
    a4->var4 = 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        var4 = a4->var4;
        v16 = 136315906;
        v17 = v7;
        v18 = 2080;
        v19 = "[VCVideoStreamSendGroup setUpFrameBasedFEC:inParameter:]";
        v20 = 1024;
        v21 = 204;
        v22 = 1024;
        LODWORD(v23) = var4;
        v10 = " [%s] %s:%d Redundancy controller is being set with isFrameBasedFECEnabled=%d";
        v11 = v8;
        v12 = 34;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
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
        v15 = a4->var4;
        v16 = 136316418;
        v17 = v13;
        v18 = 2080;
        v19 = "[VCVideoStreamSendGroup setUpFrameBasedFEC:inParameter:]";
        v20 = 1024;
        v21 = 204;
        v22 = 2112;
        v23 = v6;
        v24 = 2048;
        v25 = self;
        v26 = 1024;
        v27 = v15;
        v10 = " [%s] %s:%d %@(%p) Redundancy controller is being set with isFrameBasedFECEnabled=%d";
        v11 = v14;
        v12 = 54;
        goto LABEL_15;
      }
    }
  }
}

- (void)setupPayloadTypes
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->super.super._mediaStreamInfoArray;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [v7 streamConfigs];
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              -[NSMutableSet addObjectsFromArray:](self->_videoPayloadTypes, "addObjectsFromArray:", [objc_msgSend(*(*(&v15 + 1) + 8 * v12++) "txPayloadMap")]);
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v4);
  }
}

- (void)cleanupRedundancySettings
{
  [(VCVideoStreamSendGroup *)self flushVideoRedundancyEventQueue];
  VCMemoryPool_Destroy(self->_videoRedundancyPool);
  videoRedundancyChangeEventQueue = self->_videoRedundancyChangeEventQueue;
  if (videoRedundancyChangeEventQueue)
  {

    CFRelease(videoRedundancyChangeEventQueue);
  }
}

- (int64_t)maxCaptureResolution
{
  if (+[VCHardwareSettings supportsMultiway1080pStream])
  {
    return 20;
  }

  if (+[VCHardwareSettings supportsMultiway720pStream])
  {
    return 16;
  }

  return 11;
}

- (int)maxCaptureFrameRateForMode:(unsigned int)a3
{
  if ((*(&self->super._isSuspended + 3) - 1) <= 1)
  {
    return [(VCVideoStreamSendGroup *)self maxStreamFrameRate:*&a3];
  }

  return [(VCVideoStreamSendGroup *)self maxCaptureCameraFrameRateForMode:*&a3];
}

- (int)maxCaptureCameraFrameRateForMode:(unsigned int)a3
{
  if (a3 == 1)
  {
    if (-[NSMutableDictionary objectForKeyedSubscript:](self->super._sendGroupConfigForMode, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]))
    {
      return [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->super._sendGroupConfigForMode objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", 1)), "mediaStreamInfoArray"), "firstObject"), "streamConfigs"), "firstObject"), "framerate"}];
    }

    else
    {

      return +[VCHardwareSettings maxOneToOneFramerateSupported];
    }
  }

  else if (a3)
  {
    return 30;
  }

  else
  {
    result = +[VCHardwareSettings maxMultiwayFramerateSupported];
    if (result >= 0x1E)
    {
      return 30;
    }
  }

  return result;
}

- (BOOL)generateKeyFrameWithStreamID:(id)a3 firType:(int)a4
{
  v4 = *&a4;
  v29 = *MEMORY[0x1E69E9840];
  v7 = [(NSDictionary *)self->super.super._streamIDToMediaStreamMap objectForKeyedSubscript:?];
  if (v7)
  {
    [(VCSessionUplinkVideoStreamController *)self->_uplinkVideoStreamController generateKeyFrameWithStreamID:a3 firType:v4];
    return v7 != 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315906;
        v18 = v10;
        v19 = 2080;
        v20 = "[VCVideoStreamSendGroup generateKeyFrameWithStreamID:firType:]";
        v21 = 1024;
        v22 = 323;
        v23 = 2112;
        v24 = a3;
        v12 = " [%s] %s:%d streamID=%@ does not exist";
        v13 = v11;
        v14 = 38;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136316418;
        v18 = v15;
        v19 = 2080;
        v20 = "[VCVideoStreamSendGroup generateKeyFrameWithStreamID:firType:]";
        v21 = 1024;
        v22 = 323;
        v23 = 2112;
        v24 = v9;
        v25 = 2048;
        v26 = self;
        v27 = 2112;
        v28 = a3;
        v12 = " [%s] %s:%d %@(%p) streamID=%@ does not exist";
        v13 = v16;
        v14 = 58;
        goto LABEL_14;
      }
    }
  }

  return v7 != 0;
}

- (id)willStart
{
  if (![-[NSMutableDictionary objectForKeyedSubscript:](self->super._sendGroupConfigForMode objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", self->super._streamGroupMode)), "streamGroupRedundancyControlEnabled"}])
  {
    return 0;
  }

  [(VCVideoStreamSendGroup *)self flushVideoRedundancyEventQueue];
  streamGroupMode = self->super._streamGroupMode;

  return [(VCVideoStreamSendGroup *)self setupRedundancyControllerForMode:streamGroupMode];
}

- (void)updateEnabledState
{
  v35 = *MEMORY[0x1E69E9840];
  state = self->super.super._state;
  hasPeerSubscribedStreams = !self->_allowSuspendProvisionedStreams && state == 1;
  if (self->_allowSuspendProvisionedStreams && state == 1)
  {
    hasPeerSubscribedStreams = self->_hasPeerSubscribedStreams;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_hasPeerSubscribedStreams;
        v9 = self->super.super._state == 1;
        allowSuspendProvisionedStreams = self->_allowSuspendProvisionedStreams;
        v19 = 136316674;
        v20 = v6;
        v21 = 2080;
        v22 = "[VCVideoStreamSendGroup updateEnabledState]";
        v23 = 1024;
        v24 = 374;
        v25 = 1024;
        *v26 = hasPeerSubscribedStreams;
        *&v26[4] = 1024;
        *&v26[6] = v9;
        LOWORD(v27) = 1024;
        *(&v27 + 2) = v8;
        HIWORD(v27) = 1024;
        *v28 = allowSuspendProvisionedStreams;
        v11 = " [%s] %s:%d captureEnabled=%d isRunning=%d _hasPeerSubscribedStreams=%d _allowSuspendProvisionedStreams=%d";
        v12 = v7;
        v13 = 52;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v19, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_hasPeerSubscribedStreams;
        v17 = self->super.super._state == 1;
        v18 = self->_allowSuspendProvisionedStreams;
        v19 = 136317186;
        v20 = v14;
        v21 = 2080;
        v22 = "[VCVideoStreamSendGroup updateEnabledState]";
        v23 = 1024;
        v24 = 374;
        v25 = 2112;
        *v26 = v5;
        *&v26[8] = 2048;
        v27 = self;
        *v28 = 1024;
        *&v28[2] = hasPeerSubscribedStreams;
        v29 = 1024;
        v30 = v17;
        v31 = 1024;
        v32 = v16;
        v33 = 1024;
        v34 = v18;
        v11 = " [%s] %s:%d %@(%p) captureEnabled=%d isRunning=%d _hasPeerSubscribedStreams=%d _allowSuspendProvisionedStreams=%d";
        v12 = v15;
        v13 = 72;
        goto LABEL_14;
      }
    }
  }
}

- (void)setupVideoPriority
{
  v27 = *MEMORY[0x1E69E9840];
  LOBYTE(self->_captureSource) = 0;
  if ([(VCMediaStreamGroup *)self streamGroupID]== 1667329381)
  {
    v3 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-video-priority-enabled" userDefaultKey:@"enableVideoPriority" defaultValue:MEMORY[0x1E695E118] isDoubleType:{0), "BOOLValue"}];
    v4 = 0;
    if (v3)
    {
      v4 = +[VCHardwareSettings supportsVideoPriority];
    }

    BYTE2(self->_captureSource) = v4;
  }

  BYTE1(self->_captureSource) = 0;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = BYTE2(self->_captureSource);
        v15 = 136315906;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCVideoStreamSendGroup setupVideoPriority]";
        v19 = 1024;
        v20 = 386;
        v21 = 1024;
        LODWORD(v22) = v8;
        v9 = " [%s] %s:%d _videoPriorityEnabled=%d";
        v10 = v7;
        v11 = 34;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
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
        v14 = BYTE2(self->_captureSource);
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCVideoStreamSendGroup setupVideoPriority]";
        v19 = 1024;
        v20 = 386;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = self;
        v25 = 1024;
        v26 = v14;
        v9 = " [%s] %s:%d %@(%p) _videoPriorityEnabled=%d";
        v10 = v13;
        v11 = 54;
        goto LABEL_15;
      }
    }
  }
}

void __VCVideoStreamSendGroup_ProcessVideoPriority_block_invoke(uint64_t a1)
{
  [*(a1 + 32) streamGroup:*(a1 + 40) didChangeMediaPriority:*(a1 + 48)];
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (void)flushVideoRedundancyEventQueue
{
  v3 = CMSimpleQueueDequeue(self->_videoRedundancyChangeEventQueue);
  if (v3)
  {
    v4 = v3;
    do
    {
      VCMemoryPool_Free(self->_videoRedundancyPool, v4);
      v4 = CMSimpleQueueDequeue(self->_videoRedundancyChangeEventQueue);
    }

    while (v4);
  }
}

- (CGSize)getCaptureEncodingSize
{
  v3 = [objc_msgSend(-[NSArray firstObject](self->super.super._mediaStreamInfoArray "firstObject")];
  if (self->super._streamGroupMode != 1 || v3 == 0)
  {
    maxSupportedMultiwayVideoResolution = self->_maxSupportedMultiwayVideoResolution;

    [VideoUtil sizeForVideoResolution:maxSupportedMultiwayVideoResolution];
  }

  else
  {
    v8 = [v3 videoResolution];
    lowPowerModeEnabled = self->_lowPowerModeEnabled;

    [VideoUtil maxCaptureEncodingResolutionForStreamConfigResolution:v8 lowPowerModeEnabled:lowPowerModeEnabled];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)configureCaptureForFullScreen:(BOOL)a3
{
  v3 = a3;
  v4 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];

  [v4 setPreferCaptureFullBleed:v3];
}

- (void)dispatchedSetCaptureVideoRule:(id)a3
{
  dispatch_assert_queue_V2(self->super.super._stateQueue);

  self->_captureVideoRule = a3;
}

- (void)registerForVideoCapture:(int)a3
{
  v3 = *&a3;
  v27 = *MEMORY[0x1E69E9840];
  [(VCVideoStreamSendGroup *)self getCaptureEncodingSize];
  v6 = v5;
  v8 = v7;
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v22 = 136316930;
    *&v22[4] = v15;
    *&v22[12] = 2080;
    *&v22[14] = "[VCVideoStreamSendGroup registerForVideoCapture:]";
    *&v22[22] = 1024;
    LODWORD(v23) = 464;
    WORD2(v23) = 2112;
    *(&v23 + 6) = v9;
    HIWORD(v23) = 2048;
    v24 = self;
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v6;
    HIWORD(v25) = 1024;
    LODWORD(v26) = v8;
    WORD2(v26) = 1024;
    *(&v26 + 6) = v3;
    v12 = " [%s] %s:%d %@(%p) encode = %dx%d %d fps";
    v13 = v16;
    v14 = 66;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 136316418;
      *&v22[4] = v10;
      *&v22[12] = 2080;
      *&v22[14] = "[VCVideoStreamSendGroup registerForVideoCapture:]";
      *&v22[22] = 1024;
      LODWORD(v23) = 464;
      WORD2(v23) = 1024;
      *(&v23 + 6) = v6;
      WORD5(v23) = 1024;
      HIDWORD(v23) = v8;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v3;
      v12 = " [%s] %s:%d encode = %dx%d %d fps";
      v13 = v11;
      v14 = 46;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v22, v14);
    }
  }

LABEL_12:
  if ([+[VCDefaults forceHWI:*v22] sharedInstance]
  {
    v6 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
    v8 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
    v3 = [+[VCDefaults sharedInstance](VCDefaults forceFramerate];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 136316418;
        *&v22[4] = v17;
        *&v22[12] = 2080;
        *&v22[14] = "[VCVideoStreamSendGroup registerForVideoCapture:]";
        *&v22[22] = 1024;
        LODWORD(v23) = 470;
        WORD2(v23) = 1024;
        *(&v23 + 6) = v6;
        WORD5(v23) = 1024;
        HIDWORD(v23) = v8;
        LOWORD(v24) = 1024;
        *(&v24 + 2) = v3;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d forcing capture settings %dx%d %d fps", v22, 0x2Eu);
      }
    }
  }

  self->_captureFrameRate = v3;
  v19 = [VCVideoRule alloc];
  *&v20 = v3;
  v21 = [(VCVideoRule *)v19 initWithFrameWidth:v6 frameHeight:v8 frameRate:v20];
  [(VCVideoStreamSendGroup *)self dispatchedSetCaptureVideoRule:v21];

  [(VCVideoStreamSendGroup *)self configureCaptureForFullScreen:[(VCVideoStreamSendGroup *)self shouldEnableFullBleedCapture]];
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  [(VCVideoStreamSendGroup *)self sourceFrameRateDidChange:v3];
}

- (void)deregisterForVideoCapture
{
  [(VCVideoStreamSendGroup *)self dispatchedSetCaptureVideoRule:0];
  v3 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];

  [v3 deregisterForVideoFramesFromSource:3 withClient:self];
}

- (unsigned)getPixelFormat
{
  v2 = [objc_msgSend(-[NSArray firstObject](self->super.super._mediaStreamInfoArray "firstObject")];

  return [v2 pixelFormat];
}

- (id)registerForScreenCapture
{
  v2 = self;
  v7[1] = *MEMORY[0x1E69E9840];
  [(VCVideoStreamSendGroup *)self computeMaxScreenCaptureSize];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:v2 forKeyedSubscript:@"Client"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v2->_maxScreenCaptureSize.width), @"VideoWidth"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v2->_maxScreenCaptureSize.height), @"VideoHeight"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", -[VCVideoStreamSendGroup maxStreamFrameRate](v2, "maxStreamFrameRate")), @"FrameRate"}];
  [v3 setObject:&unk_1F579BE38 forKeyedSubscript:@"ScreenCaptureConfigurationDisplayMode"];
  v4 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ShouldSendBlackFramesOnClearScreen"];
  [v3 setObject:&unk_1F579BE50 forKeyedSubscript:@"ResolutionScaling"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", -[VCVideoStreamSendGroup getPixelFormat](v2, "getPixelFormat")), @"PixelFormat"}];
  [v3 setObject:v4 forKeyedSubscript:@"EnableIdleFrameAdjustments"];
  [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"ScreenWatcherExempt"];
  [v3 setObject:v4 forKeyedSubscript:@"ShouldSupressDRMContent"];
  [v3 setObject:&unk_1F579BE68 forKeyedSubscript:@"BiomeEventType"];
  [v3 setObject:v4 forKeyedSubscript:@"AllowRemoteControlLayers"];
  LOBYTE(v2) = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];

  if (v2)
  {
    return 0;
  }

  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Screen capture is busy or not permitted";
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"VCVideoStreamGroup" code:-2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
}

- (void)deregisterForScreenCapture
{
  v3 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
  v4 = *(&self->super._isSuspended + 3);

  [v3 deregisterForVideoFramesFromSource:v4 withClient:self];
}

- (void)updateSuspendedState
{
  if (self->_isStreamInputCaptureSource)
  {
    v3 = [(VCMediaStreamSendGroup *)self isSuspended];
    v4 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
    v5 = *(&self->super._isSuspended + 3);
    if (v3)
    {

      [v4 suspendVideoSink:self withCaptureSource:v5];
    }

    else
    {

      [v4 resumeVideoSink:self withCaptureSource:v5];
    }
  }
}

- (void)dispatchedUpdateActiveMediaStreamIDs:(id)a3 withTargetBitrate:(unsigned int)a4 mediaBitrates:(id)a5 rateChangeCounter:(unsigned int)a6
{
  v60 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v43 = v10;
        v44 = 2080;
        v45 = "[VCVideoStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:]";
        v46 = 1024;
        v47 = 553;
        v48 = 2080;
        v49 = FourccToCStr([(VCMediaStreamGroup *)self streamGroupID]);
        v50 = 2112;
        v51 = a3;
        v52 = 2112;
        v53 = a5;
        v54 = 1024;
        LODWORD(v55) = a4;
        v12 = " [%s] %s:%d StreamGroup:%s VideoStreamIDs:%@ videoMediaBitrates:%@ for targetBitrate:%d";
        v13 = v11;
        v14 = 64;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317186;
        v43 = v15;
        v44 = 2080;
        v45 = "[VCVideoStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:]";
        v46 = 1024;
        v47 = 553;
        v48 = 2112;
        v49 = v9;
        v50 = 2048;
        v51 = self;
        v52 = 2080;
        v53 = FourccToCStr([(VCMediaStreamGroup *)self streamGroupID]);
        v54 = 2112;
        v55 = a3;
        v56 = 2112;
        v57 = a5;
        v58 = 1024;
        v59 = a4;
        v12 = " [%s] %s:%d %@(%p) StreamGroup:%s VideoStreamIDs:%@ videoMediaBitrates:%@ for targetBitrate:%d";
        v13 = v16;
        v14 = 84;
        goto LABEL_11;
      }
    }
  }

  v36 = a4;
  [(NSMutableDictionary *)self->_pendingActiveUplinkStreams removeAllObjects];
  if ([a3 count] >= 1)
  {
    v18 = 0;
    v19 = 0;
    *&v17 = 136315906;
    v35 = v17;
    while (1)
    {
      v20 = [a3 objectAtIndexedSubscript:{v18, v35}];
      v21 = [a5 objectAtIndexedSubscript:v18];
      v22 = [(NSDictionary *)self->super.super._streamIDToMediaStreamMap objectForKeyedSubscript:v20];
      if (v22)
      {
        v23 = v22;
        [(NSMutableDictionary *)self->_pendingActiveUplinkStreams setObject:v22 forKeyedSubscript:v20];
        [v23 setTargetEncoderBitrate:{objc_msgSend(v21, "unsignedIntValue")}];
      }

      else
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_16;
          }

          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }

          *buf = v35;
          v43 = v30;
          v44 = 2080;
          v45 = "[VCVideoStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:]";
          v46 = 1024;
          v47 = 566;
          v48 = 2112;
          v49 = v20;
          v27 = v31;
          v28 = " [%s] %s:%d not found video stream with stream ID %@";
          v29 = 38;
        }

        else
        {
          v24 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v24 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_16;
          }

          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }

          *buf = 136316418;
          v43 = v25;
          v44 = 2080;
          v45 = "[VCVideoStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:]";
          v46 = 1024;
          v47 = 566;
          v48 = 2112;
          v49 = v24;
          v50 = 2048;
          v51 = self;
          v52 = 2112;
          v53 = v20;
          v27 = v26;
          v28 = " [%s] %s:%d %@(%p) not found video stream with stream ID %@";
          v29 = 58;
        }

        _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, v28, buf, v29);
      }

LABEL_16:
      if ([(NSMutableArray *)self->_temporalStreamsIDs containsObject:v20])
      {
        v19 |= 1 << [(NSMutableArray *)self->_temporalStreamsIDs indexOfObject:v20];
      }

      if (++v18 >= [a3 count])
      {
        goto LABEL_31;
      }
    }
  }

  v19 = 0;
LABEL_31:
  if (self->_activeTemporalTierBitmap != v19)
  {
    self->_activeTemporalTierBitmap = v19;
    [(VCObject *)self reportingAgent];
    v40[0] = @"VCVSTxTemporalTier";
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_activeTemporalTierBitmap];
    v40[1] = @"VCMSStreamGroup";
    v41[0] = v32;
    v33 = MEMORY[0x1E696AD98];
    [(VCMediaStreamGroup *)self streamGroupID];
    v41[1] = [v33 numberWithUnsignedInt:reportingStreamGroupFromStreamGroupID()];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    reportingGenericEvent();
  }

  [(VCSessionUplinkVideoStreamController *)self->_uplinkVideoStreamController setPendingVideoStreams:self->_pendingActiveUplinkStreams];
  v34 = [(VCMediaStreamSendGroup *)self isSuspended];
  if (((v34 ^ ([a3 count] != 0)) & 1) == 0)
  {
    -[VCMediaStreamSendGroup setIsSuspended:](self, "setIsSuspended:", [a3 count] == 0);
    [(VCVideoStreamSendGroup *)self updateSuspendedState];
  }

  v39.receiver = self;
  v39.super_class = VCVideoStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v39 dispatchedUpdateActiveMediaStreamIDs:a3 withTargetBitrate:v36 mediaBitrates:a5 rateChangeCounter:a6];
}

- (id)activeStreamKeys
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(VCSessionUplinkVideoStreamController *)self->_uplinkVideoStreamController activeVideoStreams];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(NSDictionary *)v4 allValues];
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [objc_msgSend(objc_msgSend(*(*(&v14 + 1) + 8 * i) "defaultStreamConfig")];
        if (v9)
        {
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v9];
        }

        else
        {
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCMediaStreamGroup streamGroupID](self, "streamGroupID")}];
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@:%@", self->super.super._participantUUID, v10)}];
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)updateUplinkStreamsForPeerSubscribedStreams:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  mediaStreams = self->super.super._mediaStreams;
  v6 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(mediaStreams);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        if ([v10 isTemporalScalingEnabled])
        {
          [v10 setPeerSubscribedStreamIDs:a3];
        }
      }

      v7 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v40 objects:v39 count:16];
    }

    while (v7);
  }

  v11 = [a3 count];
  v12 = v11 != 0;
  if (self->_allowSuspendProvisionedStreams && self->_hasPeerSubscribedStreams != v12)
  {
    v14 = v11;
    v15 = objc_opt_class();
    if (v14)
    {
      if (v15 != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v16 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
        }

        else
        {
          v16 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_37;
        }

        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        *buf = 136316162;
        v30 = v21;
        v31 = 2080;
        v32 = "[VCVideoStreamSendGroup updateUplinkStreamsForPeerSubscribedStreams:]";
        v33 = 1024;
        v34 = 613;
        v35 = 2112;
        v36 = v16;
        v37 = 2048;
        v38 = self;
        v20 = " [%s] %s:%d %@(%p) New remote subscriptions. Enable capture.";
        goto LABEL_35;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_37;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      *buf = 136315650;
      v30 = v18;
      v31 = 2080;
      v32 = "[VCVideoStreamSendGroup updateUplinkStreamsForPeerSubscribedStreams:]";
      v33 = 1024;
      v34 = 613;
      v20 = " [%s] %s:%d New remote subscriptions. Enable capture.";
    }

    else
    {
      if (v15 != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v17 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
        }

        else
        {
          v17 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_37;
        }

        v26 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        *buf = 136316162;
        v30 = v26;
        v31 = 2080;
        v32 = "[VCVideoStreamSendGroup updateUplinkStreamsForPeerSubscribedStreams:]";
        v33 = 1024;
        v34 = 615;
        v35 = 2112;
        v36 = v17;
        v37 = 2048;
        v38 = self;
        v20 = " [%s] %s:%d %@(%p) No remote subscriptions. Disable capture.";
LABEL_35:
        v24 = v22;
        v25 = 48;
        goto LABEL_36;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_37;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      *buf = 136315650;
      v30 = v23;
      v31 = 2080;
      v32 = "[VCVideoStreamSendGroup updateUplinkStreamsForPeerSubscribedStreams:]";
      v33 = 1024;
      v34 = 615;
      v20 = " [%s] %s:%d No remote subscriptions. Disable capture.";
    }

    v24 = v19;
    v25 = 28;
LABEL_36:
    _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v20, buf, v25);
LABEL_37:
    self->_hasPeerSubscribedStreams = v12;
    v13 = 1;
    goto LABEL_38;
  }

  v13 = 0;
LABEL_38:
  v28.receiver = self;
  v28.super_class = VCVideoStreamSendGroup;
  return v13 | [(VCMediaStreamSendGroup *)&v28 updateUplinkStreamsForPeerSubscribedStreams:a3];
}

- (void)updateUplinkBitrateCapCell:(unsigned int)a3 activeStreamIDs:(id)a4
{
  v5 = *&a3;
  v8 = *MEMORY[0x1E69E9840];
  [(VCSessionUplinkVideoStreamController *)self->_uplinkVideoStreamController setStreamIDsCell:a4];
  v7.receiver = self;
  v7.super_class = VCVideoStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v7 updateUplinkBitrateCapCell:v5 activeStreamIDs:a4];
}

- (void)updateUplinkBitrateCapWifi:(unsigned int)a3 activeStreamIDs:(id)a4
{
  v5 = *&a3;
  v8 = *MEMORY[0x1E69E9840];
  [(VCSessionUplinkVideoStreamController *)self->_uplinkVideoStreamController setStreamIDsWifi:a4];
  v7.receiver = self;
  v7.super_class = VCVideoStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v7 updateUplinkBitrateCapWifi:v5 activeStreamIDs:a4];
}

- (void)setActiveConnection:(id)a3 uplinkBitrateCap:(unsigned int)a4 activeMediaStreamIDs:(id)a5 mediaBitrates:(id)a6 rateChangeCounter:(unsigned int)a7
{
  v7 = *&a7;
  v10 = *&a4;
  v14 = *MEMORY[0x1E69E9840];
  [(VCSessionUplinkVideoStreamController *)self->_uplinkVideoStreamController setIsLocalOnCellular:VCConnection_IsLocalOnCellular(a3) cappedVideoStreamIDs:a5];
  v13.receiver = self;
  v13.super_class = VCVideoStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v13 setActiveConnection:a3 uplinkBitrateCap:v10 activeMediaStreamIDs:a5 mediaBitrates:a6 rateChangeCounter:v7];
}

- (id)streamDescriptionForMediaStreamConfig:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(VCMediaStreamGroup *)self mediaType]== 1986618469)
  {
    v5 = [a3 multiwayConfig];
    if ([v5 resolution] == 27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"streamId=%hu quality=%u, %dx%d.", objc_msgSend(v5, "idsStreamID"), objc_msgSend(v5, "qualityIndex"), objc_msgSend(a3, "customWidth"), objc_msgSend(a3, "customHeight")];
    }

    else
    {
      +[VideoUtil sizeForVideoResolution:](VideoUtil, "sizeForVideoResolution:", [v5 resolution]);
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"streamId=%hu quality=%u, %dx%d.", objc_msgSend(v5, "idsStreamID"), objc_msgSend(v5, "qualityIndex"), v7, v8];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VCVideoStreamSendGroup;
    return [(VCMediaStreamSendGroup *)&v9 streamDescriptionForMediaStreamConfig:a3];
  }
}

- (BOOL)shouldSubscribeToStreamID:(id)a3 peerSubscribedStreams:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = +[VCHardwareSettings maxVCPSupportedTemporalLayers];
  v8 = [a4 containsObject:a3];
  if (!v8)
  {
    return v8;
  }

  if (![(NSMutableArray *)self->_temporalStreamsIDs containsObject:a3]|| [(NSMutableArray *)self->_temporalStreamsIDs count]< 1)
  {
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (![a4 containsObject:{-[NSMutableArray objectAtIndexedSubscript:](self->_temporalStreamsIDs, "objectAtIndexedSubscript:", v9)}])
    {
      goto LABEL_10;
    }

    if (++v10 == v7)
    {
      if ([a3 isEqualToNumber:{-[NSMutableArray objectAtIndexedSubscript:](self->_temporalStreamsIDs, "objectAtIndexedSubscript:", v9)}])
      {
        break;
      }
    }

    if (v10 > v7 || v9 > [(NSMutableArray *)self->_temporalStreamsIDs indexOfObject:a3])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = [a3 unsignedIntValue];
          v14 = [-[NSMutableArray objectAtIndexedSubscript:](self->_temporalStreamsIDs objectAtIndexedSubscript:{v9), "unsignedIntValue"}];
          v18 = 136316418;
          v19 = v11;
          v20 = 2080;
          v21 = "[VCVideoStreamSendGroup shouldSubscribeToStreamID:peerSubscribedStreams:]";
          v22 = 1024;
          v23 = 678;
          v24 = 1024;
          v25 = v13;
          v26 = 1024;
          v27 = v14;
          v28 = 1024;
          v29 = v7;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d not subscribing to streamID=%d either a higher temporal tier is subscribed (%d) or max active tiers=%d", &v18, 0x2Eu);
        }
      }

      [a4 removeObject:a3];
      LOBYTE(v8) = 0;
      return v8;
    }

LABEL_10:
    if (++v9 >= [(NSMutableArray *)self->_temporalStreamsIDs count])
    {
      goto LABEL_11;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136316162;
      v19 = v15;
      v20 = 2080;
      v21 = "[VCVideoStreamSendGroup shouldSubscribeToStreamID:peerSubscribedStreams:]";
      v22 = 1024;
      v23 = 673;
      v24 = 1024;
      v25 = [a3 unsignedIntValue];
      v26 = 1024;
      v27 = +[VCHardwareSettings maxVCPSupportedTemporalLayers];
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamID=%d is the highest temporal tier within max=%d", &v18, 0x28u);
    }
  }

LABEL_11:
  LOBYTE(v8) = 1;
  return v8;
}

- (BOOL)shouldCompoundListIgnoreStream:(id)a3 streamConfig:(id)a4 activeStreamIds:(id)a5
{
  v8 = [a5 containsObject:a3];
  if ([a4 temporalScalingEnabled])
  {
    v9 = [MEMORY[0x1E695DFA8] setWithArray:a5];
    v10 = [MEMORY[0x1E695DFA8] setWithArray:self->_temporalStreamsIDs];
    [v10 intersectSet:v9];
    v11 = [v10 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return (v8 ^ 1) & v11;
}

- (void)setCaptureFrameRate:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCVideoStreamSendGroup_setCaptureFrameRate___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_sync(stateQueue, block);
}

- (void)setMediaQueueSize:(unsigned int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCVideoStreamSendGroup_setMediaQueueSize___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_sync(stateQueue, block);
}

uint64_t __44__VCVideoStreamSendGroup_setMediaQueueSize___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 884) = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 792) activeVideoStreams];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 allValues];
  result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        VCVideoStream_SetMediaQueueSize(*(*(&v9 + 1) + 8 * v7++), *(a1 + 40));
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)setAlwaysHDCaptureScreenEnabled:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->super.super._streamGroupID == 1935897189)
  {
    stateQueue = self->super.super._stateQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__VCVideoStreamSendGroup_setAlwaysHDCaptureScreenEnabled___block_invoke;
    v8[3] = &unk_1E85F37A0;
    v9 = a3;
    v8[4] = self;
    dispatch_sync(stateQueue, v8);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = FourccToCStr(self->super.super._streamGroupID);
      *buf = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCVideoStreamSendGroup setAlwaysHDCaptureScreenEnabled:]";
      v14 = 1024;
      v15 = 768;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AlwaysHDCapture is only available for screen, and should not be called for streamGroupID=%s", buf, 0x26u);
    }
  }
}

void __58__VCVideoStreamSendGroup_setAlwaysHDCaptureScreenEnabled___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v7 = 136315906;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCVideoStreamSendGroup setAlwaysHDCaptureScreenEnabled:]_block_invoke";
      v11 = 1024;
      v12 = 772;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d alwaysHDCaptureScreenEnabled=%d", &v7, 0x22u);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (*(v5 + 889) != v6)
  {
    *(v5 + 889) = v6;
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCVideoStreamSendGroup_setLowPowerModeEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  v5 = a3;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

void __49__VCVideoStreamSendGroup_setLowPowerModeEnabled___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v7 = 136315906;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCVideoStreamSendGroup setLowPowerModeEnabled:]_block_invoke";
      v11 = 1024;
      v12 = 784;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d lowPowerModeEnabled=%d", &v7, 0x22u);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (*(v5 + 890) != v6)
  {
    *(v5 + 890) = v6;
  }
}

- (id)startCapture
{
  v53 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(&self->super._isSuspended + 3);
        *v49 = 136315906;
        *&v49[4] = v4;
        *&v49[12] = 2080;
        *&v49[14] = "[VCVideoStreamSendGroup startCapture]";
        *&v49[22] = 1024;
        LODWORD(v50) = 794;
        WORD2(v50) = 1024;
        *(&v50 + 6) = v6;
        v7 = " [%s] %s:%d Registering for video capture of type: %d";
        v8 = v5;
        v9 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v49, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(&self->super._isSuspended + 3);
        *v49 = 136316418;
        *&v49[4] = v10;
        *&v49[12] = 2080;
        *&v49[14] = "[VCVideoStreamSendGroup startCapture]";
        *&v49[22] = 1024;
        LODWORD(v50) = 794;
        WORD2(v50) = 2112;
        *(&v50 + 6) = v3;
        HIWORD(v50) = 2048;
        v51 = self;
        LOWORD(v52) = 1024;
        *(&v52 + 2) = v12;
        v7 = " [%s] %s:%d %@(%p) Registering for video capture of type: %d";
        v8 = v11;
        v9 = 54;
        goto LABEL_11;
      }
    }
  }

  [(VCSessionUplinkVideoStreamController *)self->_uplinkVideoStreamController restart:*v49];
  self->_isStreamInputCaptureSource = 0;
  if (![+[VCDefaults forceFECRepairStream] sharedInstance]
  {
    goto LABEL_25;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_24;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *v49 = 136315650;
    *&v49[4] = v14;
    *&v49[12] = 2080;
    *&v49[14] = "[VCVideoStreamSendGroup startCapture]";
    *&v49[22] = 1024;
    LODWORD(v50) = 798;
    v16 = " [%s] %s:%d _enableRedundancy set to YES by forceFECRepairStream";
    v17 = v15;
    v18 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_24;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *v49 = 136316162;
    *&v49[4] = v19;
    *&v49[12] = 2080;
    *&v49[14] = "[VCVideoStreamSendGroup startCapture]";
    *&v49[22] = 1024;
    LODWORD(v50) = 798;
    WORD2(v50) = 2112;
    *(&v50 + 6) = v13;
    HIWORD(v50) = 2048;
    v51 = self;
    v16 = " [%s] %s:%d %@(%p) _enableRedundancy set to YES by forceFECRepairStream";
    v17 = v20;
    v18 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, v49, v18);
LABEL_24:
  [(VCVideoStreamSendGroup *)self dispatchedEnableRedundancy:1, *v49, *&v49[8], v50, v51];
LABEL_25:
  v21 = MEMORY[0x1E1289F20](&self->_clientCaptureController);
  if (!v21)
  {
    v24 = *(&self->super._isSuspended + 3);
    if ((v24 - 1) >= 2)
    {
      if (v24 == 3)
      {
        captureFrameRate = self->_captureFrameRate;
        if (self->_lowPowerModeEnabled)
        {
          if (captureFrameRate >= 24)
          {
            captureFrameRate = 24;
          }

          else
          {
            captureFrameRate = captureFrameRate;
          }

          self->_captureFrameRate = captureFrameRate;
        }

        [(VCVideoStreamSendGroup *)self registerForVideoCapture:captureFrameRate];
      }

      else
      {
        self->_isStreamInputCaptureSource = 1;
        [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
        [(VCVideoStreamSendGroup *)self updateSuspendedState];
      }

      return 0;
    }

    v25 = [(VCMediaStreamGroup *)self streamGroupID];
    v26 = objc_opt_class();
    if (v25 == 1935897189)
    {
      if (v26 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_54;
        }

        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_54;
        }

        v32 = *(&self->super._isSuspended + 3);
        *v49 = 136315906;
        *&v49[4] = v30;
        *&v49[12] = 2080;
        *&v49[14] = "[VCVideoStreamSendGroup startCapture]";
        *&v49[22] = 1024;
        LODWORD(v50) = 815;
        WORD2(v50) = 1024;
        *(&v50 + 6) = v32;
        v33 = " [%s] %s:%d Registering for screen capture of type: %d";
        v34 = v31;
        v35 = 34;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v27 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
        }

        else
        {
          v27 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_54;
        }

        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_54;
        }

        v44 = *(&self->super._isSuspended + 3);
        *v49 = 136316418;
        *&v49[4] = v42;
        *&v49[12] = 2080;
        *&v49[14] = "[VCVideoStreamSendGroup startCapture]";
        *&v49[22] = 1024;
        LODWORD(v50) = 815;
        WORD2(v50) = 2112;
        *(&v50 + 6) = v27;
        HIWORD(v50) = 2048;
        v51 = self;
        LOWORD(v52) = 1024;
        *(&v52 + 2) = v44;
        v33 = " [%s] %s:%d %@(%p) Registering for screen capture of type: %d";
        v34 = v43;
        v35 = 54;
      }

      _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, v49, v35);
LABEL_54:
      [(VCVideoStreamSendGroup *)self registerClientForScreenShare:*v49];
      return 0;
    }

    if (v26 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [(VCVideoStreamSendGroup *)self registerForScreenCapture:*v49];
      }

      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [(VCVideoStreamSendGroup *)self registerForScreenCapture:*v49];
      }

      v38 = *(&self->super._isSuspended + 3);
      *v49 = 136315906;
      *&v49[4] = v36;
      *&v49[12] = 2080;
      *&v49[14] = "[VCVideoStreamSendGroup startCapture]";
      *&v49[22] = 1024;
      LODWORD(v50) = 818;
      WORD2(v50) = 1024;
      *(&v50 + 6) = v38;
      v39 = " [%s] %s:%d Registering for screen capture of type: %d";
      v40 = v37;
      v41 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [(VCVideoStreamSendGroup *)self registerForScreenCapture:*v49];
      }

      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [(VCVideoStreamSendGroup *)self registerForScreenCapture:*v49];
      }

      v47 = *(&self->super._isSuspended + 3);
      *v49 = 136316418;
      *&v49[4] = v45;
      *&v49[12] = 2080;
      *&v49[14] = "[VCVideoStreamSendGroup startCapture]";
      *&v49[22] = 1024;
      LODWORD(v50) = 818;
      WORD2(v50) = 2112;
      *(&v50 + 6) = v29;
      HIWORD(v50) = 2048;
      v51 = self;
      LOWORD(v52) = 1024;
      *(&v52 + 2) = v47;
      v39 = " [%s] %s:%d %@(%p) Registering for screen capture of type: %d";
      v40 = v46;
      v41 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, v39, v49, v41);
    return [(VCVideoStreamSendGroup *)self registerForScreenCapture:*v49];
  }

  v22 = v21;
  v23 = [v21 startCapture];
  CFRelease(v22);
  return v23;
}

- (id)stopCapture
{
  v30 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = *(&self->super._isSuspended + 3);
    v18 = 136316418;
    v19 = v10;
    v20 = 2080;
    v21 = "[VCVideoStreamSendGroup stopCapture]";
    v22 = 1024;
    v23 = 836;
    v24 = 2112;
    v25 = v3;
    v26 = 2048;
    v27 = self;
    v28 = 1024;
    v29 = v12;
    v7 = " [%s] %s:%d %@(%p) Unregistering from video capture of type: %d";
    v8 = v11;
    v9 = 54;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(&self->super._isSuspended + 3);
      v18 = 136315906;
      v19 = v4;
      v20 = 2080;
      v21 = "[VCVideoStreamSendGroup stopCapture]";
      v22 = 1024;
      v23 = 836;
      v24 = 1024;
      LODWORD(v25) = v6;
      v7 = " [%s] %s:%d Unregistering from video capture of type: %d";
      v8 = v5;
      v9 = 34;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v18, v9);
    }
  }

LABEL_12:
  v13 = MEMORY[0x1E1289F20](&self->_clientCaptureController);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 stopCapture];
    CFRelease(v14);
  }

  else
  {
    v16 = *(&self->super._isSuspended + 3);
    if ((v16 - 1) >= 2)
    {
      if (v16 == 3)
      {
        [(VCVideoStreamSendGroup *)self deregisterForVideoCapture];
        [(VCVideoStreamSendGroup *)self configureCaptureForFullScreen:0];
      }

      else
      {
        [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
      }
    }

    else if ([(VCMediaStreamGroup *)self streamGroupID]== 1935897189)
    {
      [(VCVideoStreamSendGroup *)self deregisterClientForScreenShare];
    }

    else
    {
      [(VCVideoStreamSendGroup *)self deregisterForScreenCapture];
    }

    return 0;
  }

  return v15;
}

- (id)captureConfigForScreenShare
{
  [(VCVideoStreamSendGroup *)self computeMaxScreenCaptureSize];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_maxScreenCaptureSize.width), @"VideoWidth"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_maxScreenCaptureSize.height), @"VideoHeight"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", -[VCVideoStreamSendGroup maxStreamFrameRate](self, "maxStreamFrameRate")), @"FrameRate"}];
  [v3 setObject:&unk_1F579BE38 forKeyedSubscript:@"ScreenCaptureConfigurationDisplayMode"];
  v4 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ShouldSendBlackFramesOnClearScreen"];
  [v3 setObject:&unk_1F579BE50 forKeyedSubscript:@"ResolutionScaling"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", -[VCVideoStreamSendGroup getPixelFormat](self, "getPixelFormat")), @"PixelFormat"}];
  [v3 setObject:v4 forKeyedSubscript:@"EnableIdleFrameAdjustments"];
  v5 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"ScreenWatcherExempt"];
  [v3 setObject:v4 forKeyedSubscript:@"ShouldSupressDRMContent"];
  [v3 setObject:v4 forKeyedSubscript:@"ShouldAllowReconfigureForLocalDisplay"];
  [v3 setObject:v5 forKeyedSubscript:@"ShouldOptimizeForLowLatency"];
  [v3 setObject:&unk_1F579BE68 forKeyedSubscript:@"BiomeEventType"];
  [v3 setObject:v4 forKeyedSubscript:@"AllowRemoteControlLayers"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_alwaysHDCaptureScreenEnabled), @"SingleWindowAlwaysHDCapture"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_shouldSynchronizeSystemAudioStartWithAVCScreenCapture), @"ShouldSynchronizeSystemAudioStartWithAVCScreenCapture"}];

  return v3;
}

- (void)registerConfigForScreenShare
{
  v3 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
  v4 = [(VCVideoStreamSendGroup *)self captureConfigForScreenShare];

  [v3 registerCaptureConfig:v4 forSource:1];
}

- (void)registerClientForScreenShare
{
  v3 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];

  [v3 registerCaptureClientForScreenShare:self];
}

- (void)deregisterClientForScreenShare
{
  v3 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];

  [v3 deregisterCaptureClientForScreenShare:self];
}

- (void)controller:(id)a3 didChangeActiveVideoStreams:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v26 = v7;
        v27 = 2080;
        v28 = "[VCVideoStreamSendGroup controller:didChangeActiveVideoStreams:]";
        v29 = 1024;
        v30 = 912;
        v31 = 2112;
        v32 = a4;
        v9 = " [%s] %s:%d activeVideoStreams:%@";
        v10 = v8;
        v11 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v26 = v12;
        v27 = 2080;
        v28 = "[VCVideoStreamSendGroup controller:didChangeActiveVideoStreams:]";
        v29 = 1024;
        v30 = 912;
        v31 = 2112;
        v32 = v6;
        v33 = 2048;
        v34 = self;
        v35 = 2112;
        v36 = a4;
        v9 = " [%s] %s:%d %@(%p) activeVideoStreams:%@";
        v10 = v13;
        v11 = 58;
        goto LABEL_11;
      }
    }
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__VCVideoStreamSendGroup_controller_didChangeActiveVideoStreams___block_invoke;
  v24[3] = &unk_1E85F9980;
  v24[4] = self;
  -[VCMediaStreamSendGroup updateStreamIDCompoundingWithBlock:activeStreamIds:](self, "updateStreamIDCompoundingWithBlock:activeStreamIds:", v24, [a4 allKeys]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = [a4 allKeys];
        *buf = 136315906;
        v26 = v15;
        v27 = 2080;
        v28 = "[VCVideoStreamSendGroup controller:didChangeActiveVideoStreams:]";
        v29 = 1024;
        v30 = 930;
        v31 = 2112;
        v32 = v17;
        v18 = " [%s] %s:%d Currently sending streamIDs %@";
        v19 = v16;
        v20 = 38;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
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
        v23 = [a4 allKeys];
        *buf = 136316418;
        v26 = v21;
        v27 = 2080;
        v28 = "[VCVideoStreamSendGroup controller:didChangeActiveVideoStreams:]";
        v29 = 1024;
        v30 = 930;
        v31 = 2112;
        v32 = v14;
        v33 = 2048;
        v34 = self;
        v35 = 2112;
        v36 = v23;
        v18 = " [%s] %s:%d %@(%p) Currently sending streamIDs %@";
        v19 = v22;
        v20 = 58;
        goto LABEL_22;
      }
    }
  }

  -[VCMediaStreamSendGroup calculateUplinkTotalBitrateForMediaStreams:](self, "calculateUplinkTotalBitrateForMediaStreams:", [a4 allValues]);
}

uint64_t __65__VCVideoStreamSendGroup_controller_didChangeActiveVideoStreams___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 480))
  {
    [a2 setStreamIDs:? repairStreamIDs:?];
  }

  [a2 setIsServerBasedBandwidthProbingEnabled:a5];
  result = [a2 isCompoundStreamIDsIncreased];
  if (result)
  {
    v9 = [objc_msgSend(objc_msgSend(a2 "defaultStreamConfig")];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(*(a1 + 32) + 792) generateKeyFrameWithStreamID:objc_msgSend(MEMORY[0x1E696AD98] firType:{"numberWithUnsignedShort:", v9, *v19, *&v19[16], v20, v21, v22, v23), 0}];
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(*(a1 + 32) + 792) generateKeyFrameWithStreamID:objc_msgSend(MEMORY[0x1E696AD98] firType:{"numberWithUnsignedShort:", v9, *v19, *&v19[16], v20, v21, v22, v23), 0}];
      }

      *v19 = 136315906;
      *&v19[4] = v11;
      *&v19[12] = 2080;
      *&v19[14] = "[VCVideoStreamSendGroup controller:didChangeActiveVideoStreams:]_block_invoke";
      *&v19[22] = 1024;
      LODWORD(v20) = 923;
      WORD2(v20) = 1024;
      *(&v20 + 6) = v9;
      v13 = " [%s] %s:%d compound streamID increased for stream %hu, generating key frame";
      v14 = v12;
      v15 = 34;
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

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(*(a1 + 32) + 792) generateKeyFrameWithStreamID:objc_msgSend(MEMORY[0x1E696AD98] firType:{"numberWithUnsignedShort:", v9, *v19, *&v19[16], v20, v21, v22, v23), 0}];
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(*(a1 + 32) + 792) generateKeyFrameWithStreamID:objc_msgSend(MEMORY[0x1E696AD98] firType:{"numberWithUnsignedShort:", v9, *v19, *&v19[16], v20, v21, v22, v23), 0}];
      }

      v18 = *(a1 + 32);
      *v19 = 136316418;
      *&v19[4] = v16;
      *&v19[12] = 2080;
      *&v19[14] = "[VCVideoStreamSendGroup controller:didChangeActiveVideoStreams:]_block_invoke";
      *&v19[22] = 1024;
      LODWORD(v20) = 923;
      WORD2(v20) = 2112;
      *(&v20 + 6) = v10;
      HIWORD(v20) = 2048;
      v21 = v18;
      LOWORD(v22) = 1024;
      *(&v22 + 2) = v9;
      v13 = " [%s] %s:%d %@(%p) compound streamID increased for stream %hu, generating key frame";
      v14 = v17;
      v15 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v19, v15);
    return [*(*(a1 + 32) + 792) generateKeyFrameWithStreamID:objc_msgSend(MEMORY[0x1E696AD98] firType:{"numberWithUnsignedShort:", v9, *v19, *&v19[16], v20, v21, v22, v23), 0}];
  }

  return result;
}

- (void)sourceFrameRateDidChange:(unsigned int)a3
{
  v3 = *&a3;
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v6;
        v25 = 2080;
        v26 = "[VCVideoStreamSendGroup sourceFrameRateDidChange:]";
        v27 = 1024;
        v28 = 937;
        v29 = 1024;
        LODWORD(v30) = v3;
        v8 = " [%s] %s:%d frameRate=%u";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v24 = v11;
        v25 = 2080;
        v26 = "[VCVideoStreamSendGroup sourceFrameRateDidChange:]";
        v27 = 1024;
        v28 = 937;
        v29 = 2112;
        v30 = v5;
        v31 = 2048;
        v32 = self;
        v33 = 1024;
        v34 = v3;
        v8 = " [%s] %s:%d %@(%p) frameRate=%u";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  mediaStreams = self->super.super._mediaStreams;
  v14 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(mediaStreams);
        }

        [*(*(&v19 + 1) + 8 * i) sourceFrameRateDidChange:v3];
      }

      v15 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v15);
  }
}

- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)a3 frameTime:(id *)a4 attribute:(id *)a5
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *a4;
  return VCVideoStreamSendGroup_OnVideoFrame(self, a3, &v6, a5);
}

- (id)copyOnVideoFrameBlock
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VCVideoStreamSendGroup_copyOnVideoFrameBlock__block_invoke;
  v3[3] = &unk_1E85F7BB0;
  v3[4] = self;
  return _Block_copy(v3);
}

uint64_t __47__VCVideoStreamSendGroup_copyOnVideoFrameBlock__block_invoke(uint64_t a1, opaqueCMSampleBuffer *a2, CMTime *a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v6 = *a3;
  return VCVideoStreamSendGroup_OnVideoFrame(v4, a2, &v6, a4);
}

- (void)avConferencePreviewError:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCVideoStreamSendGroup avConferencePreviewError:]";
        v17 = 1024;
        v18 = 1008;
        v19 = 2112;
        v20 = a3;
        v8 = " [%s] %s:%d avConferencePreviewError %@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
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
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCVideoStreamSendGroup avConferencePreviewError:]";
        v17 = 1024;
        v18 = 1008;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = a3;
        v8 = " [%s] %s:%d %@(%p) avConferencePreviewError %@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)thermalLevelDidChange:(int)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v6;
        v18 = 2080;
        v19 = "[VCVideoStreamSendGroup thermalLevelDidChange:]";
        v20 = 1024;
        v21 = 1016;
        v22 = 1024;
        LODWORD(v23) = a3;
        v8 = " [%s] %s:%d thermalLevelDidChange %u";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v17 = v11;
        v18 = 2080;
        v19 = "[VCVideoStreamSendGroup thermalLevelDidChange:]";
        v20 = 1024;
        v21 = 1016;
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        v25 = self;
        v26 = 1024;
        v27 = a3;
        v8 = " [%s] %s:%d %@(%p) thermalLevelDidChange %u";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  stateQueue = self->super.super._stateQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__VCVideoStreamSendGroup_thermalLevelDidChange___block_invoke;
  v14[3] = &unk_1E85F38B8;
  v14[4] = self;
  v15 = a3;
  dispatch_async(stateQueue, v14);
  [(VCObject *)self reportingAgent];
  micro();
  reportingThermal();
}

uint64_t __48__VCVideoStreamSendGroup_thermalLevelDidChange___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(*(*(a1 + 32) + 184), "allValues")}];
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) thermalLevelDidChange:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)cameraAvailabilityDidChange:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v15 = 136315906;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCVideoStreamSendGroup cameraAvailabilityDidChange:]";
      v19 = 1024;
      v20 = 1026;
      v21 = 1024;
      LODWORD(v22) = v3;
      v9 = " [%s] %s:%d cameraAvailabilityDidChange=%d ignored";
      v10 = v7;
      v11 = 34;
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      return;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(VCVideoStreamSendGroup *)v6 cameraAvailabilityDidChange:v3, v7];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
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
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCVideoStreamSendGroup cameraAvailabilityDidChange:]";
        v19 = 1024;
        v20 = 1026;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = self;
        v25 = 1024;
        v26 = v3;
        v9 = " [%s] %s:%d %@(%p) cameraAvailabilityDidChange=%d ignored";
        v10 = v13;
        v11 = 54;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCVideoStreamSendGroup cameraAvailabilityDidChange:]";
        v19 = 1024;
        v20 = 1026;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = self;
        v25 = 1024;
        v26 = v3;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) cameraAvailabilityDidChange=%d ignored", &v15, 0x36u);
      }
    }
  }
}

- (void)frameRateIsBeingThrottled:(int)a3 thermalLevelDidChange:(BOOL)a4 powerLevelDidChange:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = *&a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"VCSPUUID", self->super.super._participantUUID);
  CFDictionaryAddValue(Mutable, @"VCSPFR", [MEMORY[0x1E696AD98] numberWithInt:v7]);
  CFDictionaryAddValue(Mutable, @"VCSPTLC", [MEMORY[0x1E696AD98] numberWithBool:v6]);
  CFDictionaryAddValue(Mutable, @"VCSPPLC", [MEMORY[0x1E696AD98] numberWithBool:v5]);
  [(VCObject *)self reportingAgent];
  reportingGenericEvent();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  [(VCVideoStreamSendGroup *)self sourceFrameRateDidChange:v7];
}

- (void)redundancyController:(id)a3 redundancyPercentageDidChange:(unsigned int)a4
{
  v7 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__VCVideoStreamSendGroup_redundancyController_redundancyPercentageDidChange___block_invoke;
  v5[3] = &unk_1E85F3890;
  v5[4] = a3;
  v5[5] = self;
  v6 = a4;
  dispatch_async(stateQueue, v5);
}

void __77__VCVideoStreamSendGroup_redundancyController_redundancyPercentageDidChange___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != v2[61])
  {
    return;
  }

  if ([v2 dispatchedEnableRedundancy:*(a1 + 48) != 0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__VCVideoStreamSendGroup_redundancyController_redundancyPercentageDidChange___block_invoke_2;
    v21[3] = &unk_1E85F41D0;
    v21[4] = v4;
    [v4 callDelegateWithBlock:v21];
  }

  v5 = VCMemoryPool_Alloc(*(*(a1 + 40) + 800));
  *v5 = *(a1 + 48);
  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        *buf = 136315906;
        v23 = v7;
        v24 = 2080;
        v25 = "[VCVideoStreamSendGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
        v26 = 1024;
        v27 = 1063;
        v28 = 1024;
        LODWORD(v29) = v9;
        v10 = " [%s] %s:%d Enqueue new redundancyPercentage=%d";
        v11 = v8;
        v12 = 34;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 40) performSelector:sel_logPrefix];
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
        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        *buf = 136316418;
        v23 = v13;
        v24 = 2080;
        v25 = "[VCVideoStreamSendGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
        v26 = 1024;
        v27 = 1063;
        v28 = 2112;
        v29 = v6;
        v30 = 2048;
        v31 = v15;
        v32 = 1024;
        v33 = v16;
        v10 = " [%s] %s:%d %@(%p) Enqueue new redundancyPercentage=%d";
        v11 = v14;
        v12 = 54;
        goto LABEL_15;
      }
    }
  }

  if (CMSimpleQueueEnqueue(*(*(a1 + 40) + 808), v5))
  {
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __77__VCVideoStreamSendGroup_redundancyController_redundancyPercentageDidChange___block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v20 = *(a1 + 40);
          *buf = 136316162;
          v23 = v18;
          v24 = 2080;
          v25 = "[VCVideoStreamSendGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
          v26 = 1024;
          v27 = 1066;
          v28 = 2112;
          v29 = v17;
          v30 = 2048;
          v31 = v20;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) CMSimpleQueueEnqueue full", buf, 0x30u);
        }
      }
    }

    VCMemoryPool_Free(*(*(a1 + 40) + 800), v5);
  }
}

- (void)redundancyController:(id)a3 redundancyVectorDidChange:(id *)a4
{
  v7 = *MEMORY[0x1E69E9840];
  if (a4->var0)
  {
    stateQueue = self->super.super._stateQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __73__VCVideoStreamSendGroup_redundancyController_redundancyVectorDidChange___block_invoke;
    v5[3] = &unk_1E85F99A8;
    v5[4] = a3;
    v5[5] = self;
    memcpy(v6, a4, sizeof(v6));
    dispatch_async(stateQueue, v5);
  }
}

void __73__VCVideoStreamSendGroup_redundancyController_redundancyVectorDidChange___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != *(v2 + 488) || *(v2 + 480) != 1)
  {
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v14 = *(a1 + 32);
      v13 = *(a1 + 40);
      v15 = *(v13 + 488);
      LODWORD(v13) = *(v13 + 480);
      *buf = 136316418;
      v31 = v11;
      v32 = 2080;
      v33 = "[VCVideoStreamSendGroup redundancyController:redundancyVectorDidChange:]_block_invoke";
      v34 = 1024;
      v35 = 1081;
      v36 = 2112;
      v37 = v14;
      v38 = 2112;
      v39 = v15;
      v40 = 1024;
      LODWORD(v41) = v13;
      v16 = " [%s] %s:%d Ignoring redundancy controller callback for controller=%@, current controller=%@, streamGroupMode=%u";
      v17 = v12;
      v18 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v22 = *(a1 + 32);
      v21 = *(a1 + 40);
      v23 = *(v21 + 488);
      v24 = *(v21 + 480);
      *buf = 136316930;
      v31 = v19;
      v32 = 2080;
      v33 = "[VCVideoStreamSendGroup redundancyController:redundancyVectorDidChange:]_block_invoke";
      v34 = 1024;
      v35 = 1081;
      v36 = 2112;
      v37 = v10;
      v38 = 2048;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = v23;
      v44 = 1024;
      v45 = v24;
      v16 = " [%s] %s:%d %@(%p) Ignoring redundancy controller callback for controller=%@, current controller=%@, streamGroupMode=%u";
      v17 = v20;
      v18 = 74;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    return;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(v2 + 168);
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v26 + 1) + 8 * i) stream];
        if ([objc_msgSend(objc_msgSend(v9 "defaultStreamConfig")])
        {
          [v9 setFECRedundancyVector:a1 + 48];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v6);
  }
}

- (void)vcMediaStreamDidRTPTimeOut:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStreamSendGroup vcMediaStreamDidRTPTimeOut:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316418;
        v9 = v6;
        v10 = 2080;
        v11 = "[VCVideoStreamSendGroup vcMediaStreamDidRTPTimeOut:]";
        v12 = 1024;
        v13 = 1097;
        v14 = 2112;
        v15 = v5;
        v16 = 2048;
        v17 = self;
        v18 = 2048;
        v19 = a3;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) stream:%p", &v8, 0x3Au);
      }
    }
  }
}

- (void)vcMediaStreamDidRTCPTimeOut:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStreamSendGroup vcMediaStreamDidRTCPTimeOut:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316418;
        v9 = v6;
        v10 = 2080;
        v11 = "[VCVideoStreamSendGroup vcMediaStreamDidRTCPTimeOut:]";
        v12 = 1024;
        v13 = 1101;
        v14 = 2112;
        v15 = v5;
        v16 = 2048;
        v17 = self;
        v18 = 2048;
        v19 = a3;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) stream:%p", &v8, 0x3Au);
      }
    }
  }
}

- (void)vcMediaStreamDidDecryptionTimeOut:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStreamSendGroup vcMediaStreamDidDecryptionTimeOut:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316418;
        v9 = v6;
        v10 = 2080;
        v11 = "[VCVideoStreamSendGroup vcMediaStreamDidDecryptionTimeOut:]";
        v12 = 1024;
        v13 = 1105;
        v14 = 2112;
        v15 = v5;
        v16 = 2048;
        v17 = self;
        v18 = 2048;
        v19 = a3;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) stream:%p", &v8, 0x3Au);
      }
    }
  }
}

- (void)vcMediaStream:(id)a3 didChangeRedundancyPercentage:(unsigned int)a4
{
  v7 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VCVideoStreamSendGroup_vcMediaStream_didChangeRedundancyPercentage___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v6 = a4;
  dispatch_async(stateQueue, block);
}

void __70__VCVideoStreamSendGroup_vcMediaStream_didChangeRedundancyPercentage___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) dispatchedEnableRedundancy:*(a1 + 40) != 0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__VCVideoStreamSendGroup_vcMediaStream_didChangeRedundancyPercentage___block_invoke_2;
    v14[3] = &unk_1E85F41D0;
    v14[4] = v2;
    [v2 callDelegateWithBlock:v14];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(*(a1 + 32) + 440);
          *buf = 136315906;
          v16 = v4;
          v17 = 2080;
          v18 = "[VCVideoStreamSendGroup vcMediaStream:didChangeRedundancyPercentage:]_block_invoke";
          v19 = 1024;
          v20 = 1116;
          v21 = 1024;
          LODWORD(v22) = v6;
          v7 = " [%s] %s:%d Notifying delegate to send redundancy request=%d";
          v8 = v5;
          v9 = 34;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v13 = *(v12 + 440);
          *buf = 136316418;
          v16 = v10;
          v17 = 2080;
          v18 = "[VCVideoStreamSendGroup vcMediaStream:didChangeRedundancyPercentage:]_block_invoke";
          v19 = 1024;
          v20 = 1116;
          v21 = 2112;
          v22 = v3;
          v23 = 2048;
          v24 = v12;
          v25 = 1024;
          v26 = v13;
          v7 = " [%s] %s:%d %@(%p) Notifying delegate to send redundancy request=%d";
          v8 = v11;
          v9 = 54;
          goto LABEL_13;
        }
      }
    }
  }
}

- (void)computeMaxScreenCaptureSize
{
  v53 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = self->super.super._mediaStreamInfoArray;
  v28 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (v28)
  {
    v3 = 0;
    v27 = *v50;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v49 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v6 = [v5 streamConfigs];
        v7 = [v6 countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v45;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v45 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v44 + 1) + 8 * j);
              if ([v11 videoResolution] == 27)
              {
                v12 = [v11 customWidth];
                v13 = [v11 customHeight] * v12;
                if (v13 > v3)
                {
                  self->_maxScreenCaptureSize.width = [v11 customWidth];
                  self->_maxScreenCaptureSize.height = [v11 customHeight];
                  v3 = v13;
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v44 objects:v43 count:16];
          }

          while (v8);
        }
      }

      v28 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v48 count:16];
    }

    while (v28);
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        width = self->_maxScreenCaptureSize.width;
        height = self->_maxScreenCaptureSize.height;
        *buf = 136316162;
        v30 = v15;
        v31 = 2080;
        v32 = "[VCVideoStreamSendGroup computeMaxScreenCaptureSize]";
        v33 = 1024;
        v34 = 1146;
        v35 = 2048;
        v36 = width;
        v37 = 2048;
        v38 = *&height;
        v19 = " [%s] %s:%d Max Screen capture size: width = %f, height = %f";
        v20 = v16;
        v21 = 48;
LABEL_28:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_maxScreenCaptureSize.width;
        v24 = self->_maxScreenCaptureSize.height;
        *buf = 136316674;
        v30 = v22;
        v31 = 2080;
        v32 = "[VCVideoStreamSendGroup computeMaxScreenCaptureSize]";
        v33 = 1024;
        v34 = 1146;
        v35 = 2112;
        v36 = *&v14;
        v37 = 2048;
        v38 = self;
        v39 = 2048;
        v40 = v25;
        v41 = 2048;
        v42 = v24;
        v19 = " [%s] %s:%d %@(%p) Max Screen capture size: width = %f, height = %f";
        v20 = v23;
        v21 = 68;
        goto LABEL_28;
      }
    }
  }
}

- (unint64_t)maxStreamFrameRate
{
  v47 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  mediaStreamInfoArray = self->super.super._mediaStreamInfoArray;
  v3 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v43 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v44;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(mediaStreamInfoArray);
        }

        v8 = *(*(&v43 + 1) + 8 * i);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v9 = [v8 streamConfigs];
        v10 = [v9 countByEnumeratingWithState:&v38 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v39;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v39 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v38 + 1) + 8 * j);
              if ([v14 framerate] > v5)
              {
                v5 = [v14 framerate];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v38 objects:v37 count:16];
          }

          while (v11);
        }
      }

      v4 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v43 objects:v42 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v26 = v16;
        v27 = 2080;
        v28 = "[VCVideoStreamSendGroup maxStreamFrameRate]";
        v29 = 1024;
        v30 = 1158;
        v31 = 1024;
        LODWORD(v32) = v5;
        v18 = " [%s] %s:%d Max Screen capture frame rate: = %d";
        v19 = v17;
        v20 = 34;
LABEL_29:
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v26 = v21;
        v27 = 2080;
        v28 = "[VCVideoStreamSendGroup maxStreamFrameRate]";
        v29 = 1024;
        v30 = 1158;
        v31 = 2112;
        v32 = v15;
        v33 = 2048;
        v34 = self;
        v35 = 1024;
        v36 = v5;
        v18 = " [%s] %s:%d %@(%p) Max Screen capture frame rate: = %d";
        v19 = v22;
        v20 = 54;
        goto LABEL_29;
      }
    }
  }

  return v5;
}

- (void)collectAndLogChannelMetrics:(id *)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  mediaStreams = self->super.super._mediaStreams;
  v6 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v58 objects:v57 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v59;
    *&v7 = 136317442;
    v30 = v7;
    v31 = mediaStreams;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(mediaStreams);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        if ([v11 state] == 2)
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          memset(v52, 0, sizeof(v52));
          [v11 collectTxChannelMetrics:v52];
          VCMediaChannelMetrics_Sum(a3, v52);
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v23 = VRTraceErrorLogLevelToCSTR();
              v24 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v25 = FourccToCStr([(VCMediaStreamGroup *)self streamGroupID]);
                v26 = [objc_msgSend(objc_msgSend(v11 "defaultStreamConfig")];
                v27 = [objc_msgSend(objc_msgSend(v11 "defaultStreamConfig")];
                totalNumFramesReceived = self->_totalNumFramesReceived;
                totalNumFramesProcessed = self->_totalNumFramesProcessed;
                *buf = v30;
                v34 = v23;
                v35 = 2080;
                v36 = "[VCVideoStreamSendGroup collectAndLogChannelMetrics:]";
                v37 = 1024;
                v38 = 1168;
                v39 = 2080;
                v40 = v25;
                v41 = 1024;
                *v42 = v26;
                mediaStreams = v31;
                *&v42[4] = 1024;
                *&v42[6] = v27;
                LOWORD(v43) = 1024;
                *(&v43 + 2) = v52[0];
                HIWORD(v43) = 2048;
                v44 = v53;
                *v45 = 1024;
                *&v45[2] = totalNumFramesReceived;
                *v46 = 1024;
                *&v46[2] = totalNumFramesProcessed;
                v20 = v24;
                v21 = " [%s] %s:%d Health Monitor for Video Stream Send GroupID=%s StreamID[main:%u repair:%u] Video[%ukbps %4.1ffps] Frames Received=%u Processed=%u";
                v22 = 78;
                goto LABEL_16;
              }
            }
          }

          else
          {
            v12 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v12 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v32 = FourccToCStr([(VCMediaStreamGroup *)self streamGroupID]);
                v15 = a3;
                v16 = [objc_msgSend(objc_msgSend(v11 "defaultStreamConfig")];
                v17 = [objc_msgSend(objc_msgSend(v11 "defaultStreamConfig")];
                v18 = self->_totalNumFramesReceived;
                v19 = self->_totalNumFramesProcessed;
                *buf = 136317954;
                v34 = v13;
                v35 = 2080;
                v36 = "[VCVideoStreamSendGroup collectAndLogChannelMetrics:]";
                v37 = 1024;
                v38 = 1168;
                v39 = 2112;
                v40 = v12;
                v41 = 2048;
                *v42 = self;
                *&v42[8] = 2080;
                v43 = v32;
                LOWORD(v44) = 1024;
                *(&v44 + 2) = v16;
                a3 = v15;
                mediaStreams = v31;
                HIWORD(v44) = 1024;
                *v45 = v17;
                *&v45[4] = 1024;
                *v46 = v52[0];
                *&v46[4] = 2048;
                v47 = v53;
                v48 = 1024;
                v49 = v18;
                v50 = 1024;
                v51 = v19;
                v20 = v14;
                v21 = " [%s] %s:%d %@(%p) Health Monitor for Video Stream Send GroupID=%s StreamID[main:%u repair:%u] Video[%ukbps %4.1ffps] Frames Received=%u Processed=%u";
                v22 = 98;
LABEL_16:
                _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
                continue;
              }
            }
          }
        }
      }

      v8 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v58 objects:v57 count:16];
    }

    while (v8);
  }
}

- (id)setupRedundancyControllerForMode:(unsigned int)a3
{
  v3 = *&a3;
  v41 = *MEMORY[0x1E69E9840];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->super._sendGroupConfigForMode, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]);
  v6 = v5;
  v7 = MEMORY[0x1E6986650];
  if (v5)
  {
    if ([v5 redundancyController] || !objc_msgSend(v6, "statisticsCollector"))
    {
      goto LABEL_16;
    }

    v31 = [v6 statisticsCollector];
    v32 = [v6 redundancyPercentage];
    [(VCVideoStreamSendGroup *)self setUpFrameBasedFEC:v3 inParameter:&v31];
    v8 = [VCRedundancyControllerVideo alloc];
    v9 = [v6 redundancyMode];
    v10 = [(VCRedundancyControllerVideo *)v8 initWithDelegate:self mode:v9 parameters:v31, v32];
    if (v10)
    {
      v11 = v10;
      [(VCRedundancyControllerVideo *)v10 setStatisticsID:self->super.super._idsParticipantID];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *v7;
        if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315650;
        v34 = v12;
        OUTLINED_FUNCTION_1_29();
        v35 = 226;
        v14 = " [%s] %s:%d Redundancy controller is created";
        v15 = v13;
        v16 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *v7;
        if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316162;
        v34 = v17;
        OUTLINED_FUNCTION_1_29();
        OUTLINED_FUNCTION_5_37();
        OUTLINED_FUNCTION_18_13();
        v14 = " [%s] %s:%d %@(%p) Redundancy controller is created";
        v15 = v18;
        v16 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
LABEL_15:
      [v6 setRedundancyController:v11];

LABEL_16:
      v19 = 0;
      v20 = 1;
      goto LABEL_17;
    }

    v20 = 0;
    v19 = @"Failed to create video redundancy controller";
  }

  else
  {
    v20 = 0;
    v19 = @"Tried to create redundancy controller for mode but VCMediaStreamSendGroupConfig is nil";
  }

LABEL_17:
  -[VCMediaStreamSendGroup setRedundancyController:](self, "setRedundancyController:", [v6 redundancyController]);
  if (v20)
  {
    return 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *v7;
    if (!OUTLINED_FUNCTION_34())
    {
      return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    *buf = 136315906;
    v34 = v23;
    OUTLINED_FUNCTION_1_29();
    OUTLINED_FUNCTION_5_37();
    v36 = v19;
    v25 = " [%s] %s:%d %@";
    v26 = v24;
    v27 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *v7;
    if (!OUTLINED_FUNCTION_31())
    {
      return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    *buf = 136316418;
    v34 = v28;
    OUTLINED_FUNCTION_1_29();
    OUTLINED_FUNCTION_5_37();
    v36 = v22;
    v37 = 2048;
    v38 = self;
    v39 = v30;
    v40 = v19;
    v25 = " [%s] %s:%d %@(%p) %@";
    v26 = v29;
    v27 = 58;
  }

  _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
  return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:v19];
}

- (id)uplinkVideoStreamControllerForMode:(unsigned int)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->super._sendGroupConfigForMode, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]);
  v6 = v5;
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return [v6 uplinkVideoStreamController];
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return [v6 uplinkVideoStreamController];
      }

      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_0();
      v34 = 304;
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_16_0();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return [v6 uplinkVideoStreamController];
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        return [v6 uplinkVideoStreamController];
      }

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
    }

    _os_log_error_impl(v27, v28, v29, v30, v31, v32);
    return [v6 uplinkVideoStreamController];
  }

  if (![v5 uplinkVideoStreamController])
  {
    v7 = [[VCSessionUplinkVideoStreamController alloc] initWithVideoStreams:self->super.super._streamIDToMediaStreamMap streamInfos:self->super.super._mediaStreamInfoArray reportingAgent:self->super.super.super._reportingAgent delegate:self];
    [(VCSessionUplinkVideoStreamController *)v7 setCaptureFrameRate:self->_maxSupportedCaptureFrameRate];
    if (BYTE2(self->_captureSource) == 1)
    {
      v8 = [(VCMediaStreamGroup *)self streamGroupID];
      if (a3)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 == 1667329381;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [(VCSessionUplinkVideoStreamController *)v7 setDynamicVideoPriorityEnabled:v10];
    [(VCSessionUplinkVideoStreamController *)v7 setShouldSkipIDRScheduler:1];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_22;
      }

      VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v13 = BYTE2(self->_captureSource);
      v14 = [(VCSessionUplinkVideoStreamController *)v7 dynamicVideoPriorityEnabled];
      [(VCSessionUplinkVideoStreamController *)v7 captureFrameRate];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      v34 = 312;
      v35 = v15;
      *v36 = v13;
      *&v36[4] = v15;
      *&v36[6] = v14;
      LOWORD(v37) = v15;
      *(&v37 + 2) = v16;
      v17 = " [%s] %s:%d _videoPriorityEnabled=%d, uplinkVideoStreamController.dynamicVideoPriorityEnabled=%d uplinkVideoStreamController.captureFrameRate=%d";
      v18 = v12;
      v19 = 46;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_22;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v22 = BYTE2(self->_captureSource);
      v23 = [(VCSessionUplinkVideoStreamController *)v7 dynamicVideoPriorityEnabled];
      [(VCSessionUplinkVideoStreamController *)v7 captureFrameRate];
      LODWORD(v33) = 136316930;
      *(&v33 + 4) = v20;
      OUTLINED_FUNCTION_0();
      v34 = 312;
      v35 = 2112;
      *v36 = v11;
      *&v36[8] = 2048;
      v37 = self;
      v38 = v24;
      v39 = v22;
      v40 = v24;
      v41 = v23;
      v42 = v24;
      v43 = v25;
      v17 = " [%s] %s:%d %@(%p) _videoPriorityEnabled=%d, uplinkVideoStreamController.dynamicVideoPriorityEnabled=%d uplinkVideoStreamController.captureFrameRate=%d";
      v18 = v21;
      v19 = 66;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v33, v19);
LABEL_22:
    [v6 setUplinkVideoStreamController:{v7, v33}];
  }

  return [v6 uplinkVideoStreamController];
}

- (BOOL)shouldEnableFullBleedCapture
{
  v3 = [objc_msgSend(-[NSArray firstObject](self->super.super._mediaStreamInfoArray "firstObject")];
  if (self->super._streamGroupMode != 1 || v3 == 0)
  {
    return 0;
  }

  return [v3 remoteSupportsFullScreenReceive];
}

- (BOOL)dispatchedEnableRedundancy:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  v18.receiver = self;
  v18.super_class = VCVideoStreamSendGroup;
  v5 = [(VCMediaStreamSendGroup *)&v18 dispatchedEnableRedundancy:v3];
  if (v5 && !self->super._streamGroupMode && ([-[NSMutableDictionary objectForKeyedSubscript:](self->super._sendGroupConfigForMode objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", 0)), "streamGroupRedundancyControlEnabled"}] & 1) == 0)
  {
    v6 = v3 ? 50 : 0;
    self->_fecRatio = VCRedundancyControllerVideo_ConvertRedundancyPercentageToRatio(v6);
    v7 = VCMemoryPool_Alloc(self->_videoRedundancyPool);
    *v7 = v6;
    if (CMSimpleQueueEnqueue(self->_videoRedundancyChangeEventQueue, v7))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_16;
        }

        v8 = VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31())
        {
          goto LABEL_16;
        }

        *buf = 136315650;
        v20 = v8;
        v21 = 2080;
        v22 = "[VCVideoStreamSendGroup dispatchedEnableRedundancy:]";
        v23 = 1024;
        v24 = 730;
        OUTLINED_FUNCTION_16_0();
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [(VCVideoStreamSendGroup *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_16;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 136316162;
        v20 = v15;
        v21 = 2080;
        v22 = "[VCVideoStreamSendGroup dispatchedEnableRedundancy:]";
        v23 = 1024;
        OUTLINED_FUNCTION_5_37();
        OUTLINED_FUNCTION_18_13();
        v9 = &dword_1DB56E000;
        v12 = " [%s] %s:%d %@(%p) CMSimpleQueueEnqueue full";
        v13 = buf;
        v10 = v16;
        v11 = OS_LOG_TYPE_ERROR;
        v14 = 48;
      }

      _os_log_error_impl(v9, v10, v11, v12, v13, v14);
LABEL_16:
      VCMemoryPool_Free(self->_videoRedundancyPool, v7);
    }
  }

  return v5;
}

void __46__VCVideoStreamSendGroup_setCaptureFrameRate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 740) == 3)
  {
    v3 = *(a1 + 40);
    if (v3 == *(v2 + 776))
    {
      return;
    }

    if (v3 > *(v2 + 780))
    {
      objc_opt_class();
      OUTLINED_FUNCTION_14_24();
      if (v4)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_16_21();
            OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_24_0();
            v9 = OS_LOG_TYPE_DEFAULT;
            v10 = 46;
            goto LABEL_17;
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 32) performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_16_21();
            OUTLINED_FUNCTION_23();
            v10 = 66;
            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      if (*(v2 + 316) == 1 && (*(v2 + 288) & 1) == 0)
      {
        [v2 deregisterForVideoCapture];
        [*(a1 + 32) registerForVideoCapture:*(a1 + 40)];
      }

      else
      {
        *(v2 + 776) = v3;
      }

      objc_opt_class();
      OUTLINED_FUNCTION_14_24();
      if (v4)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_16_21();
            OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_24_0();
            v9 = OS_LOG_TYPE_DEFAULT;
            v10 = 40;
LABEL_17:
            _os_log_impl(v5, v6, v9, v7, v8, v10);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 32) performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_16_21();
            OUTLINED_FUNCTION_23();
            v10 = 60;
            goto LABEL_17;
          }
        }
      }
    }
  }

  else
  {
    objc_opt_class();
    OUTLINED_FUNCTION_14_24();
    if (v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_24_0();
          v9 = OS_LOG_TYPE_DEFAULT;
          v10 = 34;
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 32) performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_16_21();
          OUTLINED_FUNCTION_23();
          v10 = 54;
          goto LABEL_17;
        }
      }
    }
  }
}

- (void)initWithConfig:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to setup redundancy settings", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfig:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate temporal streamIDs", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfig:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to setup the stream controller", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfig:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate pending uplink streams dictionary", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfig:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate payload types set", v2, v3, v4, v5, v6);
    }
  }
}

- (void)setupRedundancySettings
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

- (void)cameraAvailabilityDidChange:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCVideoStreamSendGroup cameraAvailabilityDidChange:]";
  v7 = 1024;
  v8 = 1026;
  v9 = 1024;
  v10 = a2 & 1;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d cameraAvailabilityDidChange=%d ignored", &v3, 0x22u);
}

void __77__VCVideoStreamSendGroup_redundancyController_redundancyPercentageDidChange___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)vcMediaStreamDidRTPTimeOut:.cold.1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d stream:%p", v3, v4, v5, v6);
}

- (void)vcMediaStreamDidRTCPTimeOut:.cold.1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d stream:%p", v3, v4, v5, v6);
}

- (void)vcMediaStreamDidDecryptionTimeOut:.cold.1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d stream:%p", v3, v4, v5, v6);
}

@end