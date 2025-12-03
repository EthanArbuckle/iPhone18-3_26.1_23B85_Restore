@interface VCAudioIO
+ (id)controllerForDeviceRole:(int)role audioType:(unsigned int)type direction:(unsigned __int8)direction operatingMode:(int)mode streamInputID:(int64_t)d streamToken:(int64_t)token networkClockID:(unint64_t)iD remoteDeviceInfo:(id)self0;
+ (id)defaultControllerForAudioType:(unsigned int)type forDirection:(unsigned __int8)direction forOperatingMode:(int)mode remoteDeviceInfo:(id)info;
+ (id)newSystemAudioCaptureControllerForAudioType:(unsigned int)type forOperatingMode:(int)mode remoteDeviceInfo:(id)info;
+ (id)newSystemAudioOutputAudioManagerForOperatingMode:(int)mode;
+ (id)stringForAudioType:(unsigned int)type;
- (BOOL)createConverterForSource:(BOOL)source error:(id *)error;
- (BOOL)reconfigureWithConfig:(const tagVCAudioIOConfiguration *)config;
- (BOOL)supportsVoiceActivityDetection;
- (NSDictionary)reportingStats;
- (VCAudioIO)initWithConfiguration:(const tagVCAudioIOConfiguration *)configuration;
- (id)start;
- (id)stop;
- (id)stopWithCompletionHandlerInternal:(id)internal;
- (unsigned)channelCountForClientChannelCount:(unsigned int)count;
- (void)cleanUpRealtimeDelegatesAndContext:(BOOL)context;
- (void)controllerFormatChanged:(const tagVCAudioFrameFormat *)changed;
- (void)dealloc;
- (void)destroyBuffers;
- (void)didResume;
- (void)didStart:(BOOL)start error:(id)error;
- (void)didStop:(BOOL)stop error:(id)error;
- (void)didSuspend;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec;
- (void)forceCleanup;
- (void)releaseConverters;
- (void)serverDidDie;
- (void)setClientFormat:(const tagVCAudioFrameFormat *)format;
- (void)setDirection:(unsigned __int8)direction;
- (void)setFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)info;
- (void)setInputMeteringEnabled:(BOOL)enabled;
- (void)setIsGKVoiceChat:(BOOL)chat;
- (void)setMuted:(BOOL)muted;
- (void)setOutputMeteringEnabled:(BOOL)enabled;
- (void)setRemoteCodecType:(unsigned int)type sampleRate:(double)rate;
- (void)setSourceMuted:(BOOL)muted;
- (void)setSpatialAudioDisabled:(BOOL)disabled;
- (void)setUpAndTransferDelegateContext:(const tagVCAudioIODelegateContext *)context toDestinationContext:(tagVCAudioIODelegateContext *)destinationContext;
- (void)setupClientFormatWithConfiguration:(const tagVCAudioIOConfiguration *)configuration;
- (void)start;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
- (void)stopWithCompletionHandler:(id)handler;
- (void)updateVoiceActivityEnabled:(BOOL)enabled isMediaPriorityEnabled:(BOOL)priorityEnabled;
@end

@implementation VCAudioIO

+ (id)defaultControllerForAudioType:(unsigned int)type forDirection:(unsigned __int8)direction forOperatingMode:(int)mode remoteDeviceInfo:(id)info
{
  v6 = 0;
  v11 = *MEMORY[0x1E69E9840];
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
LABEL_15:
        if (direction == 1)
        {
          v6 = [VCAudioIO newSystemAudioOutputAudioManagerForOperatingMode:*&mode];
          return v6;
        }

        if (direction != 2)
        {
          goto LABEL_24;
        }

        v6 = [VCAudioIO newSystemAudioCaptureControllerForAudioType:"newSystemAudioCaptureControllerForAudioType:forOperatingMode:remoteDeviceInfo:" forOperatingMode:? remoteDeviceInfo:?];
        return v6;
      }

      if (type != 2)
      {
        return v6;
      }

      if (direction != 1)
      {
        if (direction == 2)
        {
          memset(&v10[8], 0, 32);
          *v10 = 1;
LABEL_23:
          v6 = [[VCSystemAudioCaptureController alloc] initWithConfig:v10];
          return v6;
        }

        goto LABEL_24;
      }
    }

    v8 = +[VCAudioManager sharedVoiceChatInstance];
    goto LABEL_19;
  }

  if (type <= 4)
  {
    if (type == 3)
    {
      if (direction == 2)
      {
        memset(v10, 0, sizeof(v10));
        v7 = -3;
        goto LABEL_22;
      }
    }

    else if (direction == 2)
    {
      memset(v10, 0, sizeof(v10));
      v7 = -2;
LABEL_22:
      *&v10[4] = v7;
      goto LABEL_23;
    }

LABEL_24:
    v6 = 0;
    return v6;
  }

  if (type == 5)
  {
    goto LABEL_15;
  }

  if (type == 6)
  {
    v8 = [VCAudioRelayIOController sharedInstanceNull:*&type];
LABEL_19:
    v6 = v8;
  }

  return v6;
}

+ (id)newSystemAudioCaptureControllerForAudioType:(unsigned int)type forOperatingMode:(int)mode remoteDeviceInfo:(id)info
{
  v29 = *MEMORY[0x1E69E9840];
  if (type == 5)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceSystemAudioCaptureSource", v9);
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *v20 = 136316930;
    *&v20[4] = v17;
    *&v20[12] = 2080;
    *&v20[14] = "+[VCAudioIO newSystemAudioCaptureControllerForAudioType:forOperatingMode:remoteDeviceInfo:]";
    *&v20[22] = 1024;
    LODWORD(v21) = 307;
    WORD2(v21) = 2112;
    *(&v21 + 6) = v11;
    HIWORD(v21) = 2048;
    selfCopy = self;
    v23 = 1024;
    v24 = IntValueForKey;
    v25 = 1024;
    typeCopy = type;
    v27 = 1024;
    modeCopy = mode;
    v14 = " [%s] %s:%d %@(%p) Configuring system audio captureSource=%d for audioType=%d, operatingMode=%d";
    v15 = v18;
    v16 = 66;
    goto LABEL_14;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 136316418;
      *&v20[4] = v12;
      *&v20[12] = 2080;
      *&v20[14] = "+[VCAudioIO newSystemAudioCaptureControllerForAudioType:forOperatingMode:remoteDeviceInfo:]";
      *&v20[22] = 1024;
      LODWORD(v21) = 307;
      WORD2(v21) = 1024;
      *(&v21 + 6) = IntValueForKey;
      WORD5(v21) = 1024;
      HIDWORD(v21) = type;
      LOWORD(selfCopy) = 1024;
      *(&selfCopy + 2) = mode;
      v14 = " [%s] %s:%d Configuring system audio captureSource=%d for audioType=%d, operatingMode=%d";
      v15 = v13;
      v16 = 46;
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v20, v16);
    }
  }

LABEL_15:
  if (mode == 12 && !+[VCHardwareSettings deviceClass]&& !IntValueForKey)
  {
    return +[VCAudioManager sharedSystemAudioInputInstance];
  }

  *v20 = 0xFFFFFFFF00000000;
  *&v20[8] = 0;
  *&v20[20] = -1431655766;
  *&v20[16] = IntValueForKey;
  *&v21 = 0;
  *(&v21 + 1) = info;
  return [[VCSystemAudioCaptureController alloc] initWithConfig:v20];
}

+ (id)newSystemAudioOutputAudioManagerForOperatingMode:(int)mode
{
  v4 = +[VCHardwareSettings deviceClass];
  if (mode == 12 && v4 == 8)
  {
    v5 = [VCAudioManager alloc];

    return [(VCAudioManager *)v5 initWithAudioSessionMode:3];
  }

  else
  {
    v7 = +[VCAudioManager sharedSystemAudioOutputInstance];

    return v7;
  }
}

+ (id)controllerForDeviceRole:(int)role audioType:(unsigned int)type direction:(unsigned __int8)direction operatingMode:(int)mode streamInputID:(int64_t)d streamToken:(int64_t)token networkClockID:(unint64_t)iD remoteDeviceInfo:(id)self0
{
  v41 = *MEMORY[0x1E69E9840];
  if (role >= 10)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          +[VCAudioIO controllerForDeviceRole:audioType:direction:operatingMode:streamInputID:streamToken:networkClockID:remoteDeviceInfo:];
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v26 = 136316418;
    v27 = v16;
    v28 = 2080;
    v29 = "+[VCAudioIO controllerForDeviceRole:audioType:direction:operatingMode:streamInputID:streamToken:networkClockID:remoteDeviceInfo:]";
    v30 = 1024;
    v31 = 345;
    v32 = 2112;
    *v33 = v12;
    *&v33[8] = 2048;
    selfCopy2 = self;
    v35 = 1024;
    roleCopy2 = role;
    v18 = " [%s] %s:%d %@(%p) No controller found for device role:%d";
    v19 = v17;
    v20 = 54;
LABEL_44:
    _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v18, &v26, v20);
    return 0;
  }

  directionCopy = direction;
  if (role > 4)
  {
    if (role <= 6)
    {
      if (role != 5)
      {
LABEL_26:
        result = +[VCAudioManager sharedVoiceChatInstance];
        if (result)
        {
          return result;
        }

        goto LABEL_32;
      }

      result = [VCAudioRelayIOController sharedInstanceNull:*&role];
      if (result)
      {
        return result;
      }

LABEL_32:
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return 0;
        }

        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v26 = 136316418;
        v27 = v22;
        v28 = 2080;
        v29 = "+[VCAudioIO controllerForDeviceRole:audioType:direction:operatingMode:streamInputID:streamToken:networkClockID:remoteDeviceInfo:]";
        v30 = 1024;
        v31 = 375;
        v32 = 1024;
        *v33 = role;
        *&v33[4] = 1024;
        *&v33[6] = type;
        LOWORD(selfCopy2) = 1024;
        *(&selfCopy2 + 2) = directionCopy;
        v18 = " [%s] %s:%d Failed to create controller for deviceRole=%d audioType=%d direction=%d";
        v19 = v23;
        v20 = 46;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v21 = [self performSelector:sel_logPrefix];
        }

        else
        {
          v21 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return 0;
        }

        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v26 = 136316930;
        v27 = v24;
        v28 = 2080;
        v29 = "+[VCAudioIO controllerForDeviceRole:audioType:direction:operatingMode:streamInputID:streamToken:networkClockID:remoteDeviceInfo:]";
        v30 = 1024;
        v31 = 375;
        v32 = 2112;
        *v33 = v21;
        *&v33[8] = 2048;
        selfCopy2 = self;
        v35 = 1024;
        roleCopy2 = role;
        v37 = 1024;
        typeCopy = type;
        v39 = 1024;
        v40 = directionCopy;
        v18 = " [%s] %s:%d %@(%p) Failed to create controller for deviceRole=%d audioType=%d direction=%d";
        v19 = v25;
        v20 = 66;
      }

      goto LABEL_44;
    }

    if ((role - 7) < 2)
    {
      result = [[VCStreamIOAudioController alloc] initWithStreamInputID:d streamToken:token networkClockID:iD];
      if (result)
      {
        return result;
      }

      goto LABEL_32;
    }

    if (role != 9)
    {
      goto LABEL_32;
    }

LABEL_29:
    result = +[VCAudioRelayIOController sharedInstanceRemoteFacing];
    if (result)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (role > 2)
  {
    if (role != 3)
    {
      result = +[VCAudioRelayIOController sharedInstanceClientFacing];
      if (result)
      {
        return result;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if ((role - 1) < 2)
  {
    goto LABEL_26;
  }

  if (role)
  {
    goto LABEL_32;
  }

  result = [VCAudioIO defaultControllerForAudioType:*&type forDirection:direction forOperatingMode:*&mode remoteDeviceInfo:info, d, token];
  if (!result)
  {
    goto LABEL_32;
  }

  return result;
}

- (void)setUpAndTransferDelegateContext:(const tagVCAudioIODelegateContext *)context toDestinationContext:(tagVCAudioIODelegateContext *)destinationContext
{
  v15 = *MEMORY[0x1E69E9840];
  if (context && destinationContext)
  {
    *&destinationContext->clientCallback = *&context->clientCallback;
    audioMachineLearningCoordinator = context->audioMachineLearningCoordinator;
    if (audioMachineLearningCoordinator)
    {
      v8 = audioMachineLearningCoordinator;
      captionsToken = context->captionsToken;
      destinationContext->captionsToken = captionsToken;
      destinationContext->audioMachineLearningCoordinator = v8;
      v11 = captionsToken;
      v10 = *&self->_clientFormat.format.mBytesPerPacket;
      v12 = *&self->_clientFormat.format.mSampleRate;
      v13 = v10;
      v14 = *&self->_clientFormat.format.mBitsPerChannel;
      [(VCAudioMachineLearningCoordinator *)v8 registerStreamWithConfig:&v11];
    }

    destinationContext->injector = context->injector;
  }
}

- (VCAudioIO)initWithConfiguration:(const tagVCAudioIOConfiguration *)configuration
{
  v45 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = VCAudioIO;
  v4 = [(VCAudioIO *)&v31 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  var2 = configuration->var2;
  var3 = configuration->var3;
  v4->_audioType = configuration->var4;
  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioType = v5->_audioType;
        *buf = 136316162;
        v33 = v9;
        v34 = 2080;
        v35 = "[VCAudioIO initWithConfiguration:]";
        v36 = 1024;
        v37 = 420;
        v38 = 1024;
        *v39 = var2;
        *&v39[4] = 1024;
        *&v39[6] = audioType;
        v12 = " [%s] %s:%d operatingMode=%d, audioType=%d";
        v13 = v10;
        v14 = 40;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCAudioIO *)v5 performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = v5->_audioType;
        *buf = 136316674;
        v33 = v15;
        v34 = 2080;
        v35 = "[VCAudioIO initWithConfiguration:]";
        v36 = 1024;
        v37 = 420;
        v38 = 2112;
        *v39 = v8;
        *&v39[8] = 2048;
        v40 = v5;
        v41 = 1024;
        v42 = var2;
        v43 = 1024;
        v44 = v17;
        v12 = " [%s] %s:%d %@(%p) operatingMode=%d, audioType=%d";
        v13 = v16;
        v14 = 60;
        goto LABEL_12;
      }
    }
  }

  v18 = [VCAudioIO controllerForDeviceRole:var3 audioType:v5->_audioType direction:configuration->var5 operatingMode:var2 streamInputID:configuration->var14 streamToken:configuration->var15 networkClockID:configuration->var16 remoteDeviceInfo:configuration->var21];
  v5->_audioIOController = v18;
  if (v18)
  {
    [(VCAudioIO *)v5 setupClientFormatWithConfiguration:configuration];
    v19 = *&v5->_clientFormat.format.mBytesPerPacket;
    *&v5->_controllerFormat.format.mSampleRate = *&v5->_clientFormat.format.mSampleRate;
    *&v5->_controllerFormat.format.mBytesPerPacket = v19;
    *&v5->_controllerFormat.format.mBitsPerChannel = *&v5->_clientFormat.format.mBitsPerChannel;
    v20 = [VCAudioIOControllerClient alloc];
    BYTE1(v30) = configuration->var17;
    LOBYTE(v30) = configuration->var18;
    BYTE4(v29) = configuration->var11;
    LODWORD(v29) = configuration->var8;
    v21 = [VCAudioIOControllerClient initWithDelegate:v20 audioSessionId:"initWithDelegate:audioSessionId:channelIndex:sourceContext:sourceProcess:sinkContext:sinkProcess:clientPid:isPrewarmingClient:spatialToken:isVoiceActivityEnabled:isMediaPriorityEnabled:" channelIndex:v5 sourceContext:configuration->var0 sourceProcess:configuration->var1 sinkContext:&v5->_sourceData sinkProcess:VCAudioIO_PullAudioSamples clientPid:&v5->_sinkData isPrewarmingClient:VCAudioIO_PushAudioSamples spatialToken:v29 isVoiceActivityEnabled:configuration->var12 isMediaPriorityEnabled:v30];
    v5->_controllerClient = v21;
    [(VCAudioIOControllerClient *)v21 setAllowAudioRecording:configuration->var6];
    [(VCAudioIOControllerClient *)v5->_controllerClient setDeviceRole:var3];
    [(VCAudioIOControllerClient *)v5->_controllerClient setOperatingMode:var2];
    [(VCAudioIOControllerClient *)v5->_controllerClient setDirection:configuration->var5];
    [(VCAudioIOControllerClient *)v5->_controllerClient setNetworkUplinkClockUsesBaseband:configuration->var22];
    [(VCAudioIOControllerClient *)v5->_controllerClient setOptOutOfSmartRouting:configuration->var23];
    [(VCAudioIOControllerClient *)v5->_controllerClient setProcessIdentifiersForAudioTap:configuration->var24];
    [(VCAudioIOControllerClient *)v5->_controllerClient setMuteBehaviorForAudioTap:configuration->var25];
    [(VCAudioIOControllerClient *)v5->_controllerClient setPrefersRealtimeCatchUp:configuration->var27];
    v5->_controllerFormat.format.mChannelsPerFrame = [(VCAudioIO *)v5 channelCountForClientChannelCount:v5->_clientFormat.format.mChannelsPerFrame];
    [(VCAudioIOControllerClient *)v5->_controllerClient setClientFormat:&v5->_controllerFormat];
    [(VCAudioIOControllerClient *)v5->_controllerClient setControllerFormat:&v5->_controllerFormat];
    pthread_mutex_init(&v5->_stateMutex, 0);
    objc_storeWeak(&v5->_delegate, configuration->var7);
    objc_storeWeak(&v5->_sourceDelegate, configuration->var19.delegate);
    [(VCAudioIO *)v5 setUpAndTransferDelegateContext:&configuration->var19 toDestinationContext:&v5->_sourceData.delegateContext];
    objc_storeWeak(&v5->_sinkDelegate, configuration->var20.delegate);
    [(VCAudioIO *)v5 setUpAndTransferDelegateContext:&configuration->var20 toDestinationContext:&v5->_sinkData.delegateContext];
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioIO-init");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        var26 = configuration->var26;
        *buf = 136316162;
        v33 = v22;
        v34 = 2080;
        v35 = "[VCAudioIO initWithConfiguration:]";
        v36 = 1024;
        v37 = 476;
        v38 = 2048;
        *v39 = v5;
        *&v39[8] = 2112;
        v40 = var26;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioIO-init (%p) %@", buf, 0x30u);
      }
    }
  }

  else
  {
    if (objc_opt_class() == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioIO initWithConfiguration:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = [(VCAudioIO *)v5 performSelector:sel_logPrefix];
      }

      else
      {
        v25 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v33 = v26;
          v34 = 2080;
          v35 = "[VCAudioIO initWithConfiguration:]";
          v36 = 1024;
          v37 = 431;
          v38 = 2112;
          *v39 = v25;
          *&v39[8] = 2048;
          v40 = v5;
          v41 = 1024;
          v42 = var3;
          _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Controller not found for device role:%d", buf, 0x36u);
        }
      }
    }

    return 0;
  }

  return v5;
}

- (void)setupClientFormatWithConfiguration:(const tagVCAudioIOConfiguration *)configuration
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = NAN;
  if (self->_audioType == 1)
  {
    v5 = +[VCAudioManager sharedSystemAudioOutputInstance];
  }

  else
  {
    v5 = +[VCAudioManager sharedVoiceChatInstance];
  }

  [v5 getPreferredFormat:&self->_clientFormat blockSize:v8 vpOperatingMode:0 forOperatingMode:configuration->var2 deviceRole:configuration->var3 suggestedFormat:0];
  var9 = configuration->var9;
  if (var9)
  {
    self->_clientFormat.format.mSampleRate = var9;
  }

  var10 = configuration->var10;
  if (!var10)
  {
    var10 = (self->_clientFormat.format.mSampleRate * v8[0]);
  }

  self->_clientFormat.samplesPerFrame = var10;
  self->_clientFormat.format.mChannelsPerFrame = configuration->var13;
}

- (BOOL)reconfigureWithConfig:(const tagVCAudioIOConfiguration *)config
{
  v29 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateMutex);
  if (self->_state)
  {
    [(VCAudioIO *)self reconfigureWithConfig:buf];
    v11 = buf[0];
  }

  else
  {
    p_var3 = &config->var3;
    v6 = [VCAudioIO controllerForDeviceRole:config->var3 audioType:config->var4 direction:config->var5 operatingMode:config->var2 streamInputID:config->var14 streamToken:config->var15 networkClockID:config->var16 remoteDeviceInfo:config->var21];
    if (v6)
    {
      v7 = v6;

      self->_audioIOController = v7;
      [(VCAudioIOControllerClient *)self->_controllerClient setAllowAudioRecording:config->var6];
      [(VCAudioIOControllerClient *)self->_controllerClient setDeviceRole:config->var3];
      [(VCAudioIOControllerClient *)self->_controllerClient setOperatingMode:config->var2];
      [(VCAudioIOControllerClient *)self->_controllerClient setDirection:config->var5];
      [(VCAudioIOControllerClient *)self->_controllerClient setIsMediaPriorityEnabled:config->var17];
      [(VCAudioIOControllerClient *)self->_controllerClient setIsVoiceActivityEnabled:config->var18];
      [(VCAudioIOControllerClient *)self->_controllerClient setChannelIndex:config->var1];
      [(VCAudioIOControllerClient *)self->_controllerClient setSpatialToken:config->var12];
      [(VCAudioIOControllerClient *)self->_controllerClient setNetworkUplinkClockUsesBaseband:config->var22];
      [(VCAudioIOControllerClient *)self->_controllerClient setPrefersRealtimeCatchUp:config->var27];
      if ((config->var5 & 2) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            isMuted = self->_isMuted;
            *buf = 136315906;
            v18 = v8;
            v19 = 2080;
            v20 = "[VCAudioIO reconfigureWithConfig:]";
            v21 = 1024;
            v22 = 528;
            v23 = 1024;
            LODWORD(v24) = isMuted;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Re-applying mute=%d", buf, 0x22u);
          }
        }

        [(VCAudioIO *)self setMuted:self->_isMuted];
      }

      v11 = 1;
      self->_sinkData.controllerChanged = 1;
      self->_sourceData.controllerChanged = 1;
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
            [VCAudioIO reconfigureWithConfig:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v13 = [(VCAudioIO *)self performSelector:sel_logPrefix];
        }

        else
        {
          v13 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v16 = *p_var3;
            *buf = 136316418;
            v18 = v14;
            v19 = 2080;
            v20 = "[VCAudioIO reconfigureWithConfig:]";
            v21 = 1024;
            v22 = 513;
            v23 = 2112;
            v24 = v13;
            v25 = 2048;
            selfCopy = self;
            v27 = 1024;
            v28 = v16;
            _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Controller not found for device role:%d", buf, 0x36u);
          }
        }
      }

      v11 = 0;
    }
  }

  pthread_mutex_unlock(&self->_stateMutex);
  return v11;
}

- (NSDictionary)reportingStats
{
  pthread_mutex_lock(&self->_stateMutex);
  if (self->_audioIOController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    reportingStats = [(VCAudioIOControllerControl *)self->_audioIOController reportingStats];
  }

  else
  {
    reportingStats = 0;
  }

  pthread_mutex_unlock(&self->_stateMutex);
  return reportingStats;
}

+ (id)stringForAudioType:(unsigned int)type
{
  if (type < 7)
  {
    return off_1E85F7C88[type];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[VCAudioIO stringForAudioType:];
    }
  }

  return @"Unknown";
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioIO *)self performSelector:sel_logPrefix];
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
    v14 = 2080;
    v15 = "[VCAudioIO dealloc]";
    v16 = 1024;
    v17 = 570;
    v18 = 2112;
    v19 = v3;
    v20 = 2048;
    selfCopy = self;
    v6 = " [%s] %s:%d %@(%p) ";
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
      v14 = 2080;
      v15 = "[VCAudioIO dealloc]";
      v16 = 1024;
      v17 = 570;
      v6 = " [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_sourceDelegate, 0);
  objc_storeWeak(&self->_sinkDelegate, 0);
  [(VCAudioIO *)self forceCleanup];
  [(VCAudioIO *)self cleanUpRealtimeDelegatesAndContext:1];
  [(VCAudioIO *)self releaseConverters];
  [(VCAudioIO *)self destroyBuffers];
  if (objc_opt_respondsToSelector())
  {
    [(VCAudioIOControllerControl *)self->_audioIOController invalidate];
  }

  pthread_mutex_destroy(&self->_stateMutex);
  v11.receiver = self;
  v11.super_class = VCAudioIO;
  [(VCAudioIO *)&v11 dealloc];
}

- (void)cleanUpRealtimeDelegatesAndContext:(BOOL)context
{
  contextCopy = context;
  delegate = self->_sinkData.delegateContext.delegate;
  if (delegate)
  {
    CFRelease(delegate);
    self->_sinkData.delegateContext.delegate = 0;
  }

  v6 = self->_sourceData.delegateContext.delegate;
  if (v6)
  {
    CFRelease(v6);
    self->_sourceData.delegateContext.delegate = 0;
  }

  if (contextCopy)
  {
    audioMachineLearningCoordinator = self->_sinkData.delegateContext.audioMachineLearningCoordinator;
    if (audioMachineLearningCoordinator)
    {
      CFRelease(audioMachineLearningCoordinator);
      self->_sinkData.delegateContext.audioMachineLearningCoordinator = 0;
    }

    v8 = self->_sourceData.delegateContext.audioMachineLearningCoordinator;
    if (v8)
    {
      CFRelease(v8);
      self->_sourceData.delegateContext.audioMachineLearningCoordinator = 0;
    }

    injector = self->_sinkData.delegateContext.injector;
    if (injector)
    {
      CFRelease(injector);
      self->_sinkData.delegateContext.injector = 0;
    }

    v10 = self->_sourceData.delegateContext.injector;
    if (v10)
    {
      CFRelease(v10);
      self->_sourceData.delegateContext.injector = 0;
    }
  }
}

- (void)forceCleanup
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)info
{
  v12 = *MEMORY[0x1E69E9840];
  if (info)
  {
    pthread_mutex_lock(&self->_stateMutex);
    if (self->_state)
    {
      [VCAudioIO setFarEndVersionInfo:?];
    }

    else
    {
      controllerClient = self->_controllerClient;
      v6 = *&info->farEndOSVersion[48];
      v10[6] = *&info->farEndOSVersion[32];
      v10[7] = v6;
      farEndAUVersion = info->farEndAUVersion;
      v7 = *&info->farEndHwModel[48];
      v10[2] = *&info->farEndHwModel[32];
      v10[3] = v7;
      v8 = *&info->farEndOSVersion[16];
      v10[4] = *info->farEndOSVersion;
      v10[5] = v8;
      v9 = *&info->farEndHwModel[16];
      v10[0] = *info->farEndHwModel;
      v10[1] = v9;
      [(VCAudioIOControllerClient *)controllerClient setFarEndVersionInfo:v10];
    }

    pthread_mutex_unlock(&self->_stateMutex);
  }
}

- (void)setRemoteCodecType:(unsigned int)type sampleRate:(double)rate
{
  v5 = *&type;
  [VCAudioIOControllerClient setRemoteCodecType:"setRemoteCodecType:sampleRate:" sampleRate:?];
  if (objc_opt_respondsToSelector())
  {
    audioIOController = self->_audioIOController;

    [(VCAudioIOControllerControl *)audioIOController refreshRemoteCodecType:v5 sampleRate:rate];
  }
}

- (void)setInputMeteringEnabled:(BOOL)enabled
{
  [(VCAudioIOControllerClient *)self->_controllerClient setInputMeteringEnabled:enabled];
  if (objc_opt_respondsToSelector())
  {
    audioIOController = self->_audioIOController;

    [(VCAudioIOControllerControl *)audioIOController refreshInputMetering];
  }
}

- (void)setOutputMeteringEnabled:(BOOL)enabled
{
  [(VCAudioIOControllerClient *)self->_controllerClient setOutputMeteringEnabled:enabled];
  if (objc_opt_respondsToSelector())
  {
    audioIOController = self->_audioIOController;

    [(VCAudioIOControllerControl *)audioIOController refreshOutputMetering];
  }
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  v25 = *MEMORY[0x1E69E9840];
  self->_isMuted = muted;
  if (VCFeatureFlagManager_EnableTransportMute())
  {
    self->_sinkData.isMuted = mutedCopy;
  }

  else if (+[VCHardwareSettings deviceClass])
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [(VCAudioIOControllerControl *)self->_audioIOController setMute:mutedCopy forClient:self->_controllerClient];
  }

LABEL_6:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCAudioIO setMuted:]";
        v17 = 1024;
        v18 = 723;
        v19 = 1024;
        LODWORD(v20) = mutedCopy;
        v8 = " [%s] %s:%d isMuted=%d";
        v9 = v7;
        v10 = 34;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCAudioIO setMuted:]";
        v17 = 1024;
        v18 = 723;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        selfCopy = self;
        v23 = 1024;
        v24 = mutedCopy;
        v8 = " [%s] %s:%d %@(%p) isMuted=%d";
        v9 = v12;
        v10 = 54;
        goto LABEL_16;
      }
    }
  }
}

- (void)setSourceMuted:(BOOL)muted
{
  mutedCopy = muted;
  v25 = *MEMORY[0x1E69E9840];
  self->_sourceData.isMuted = muted;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCAudioIO setSourceMuted:]";
        v17 = 1024;
        v18 = 732;
        v19 = 1024;
        LODWORD(v20) = mutedCopy;
        v8 = " [%s] %s:%d sourceMuted=%d";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCAudioIO setSourceMuted:]";
        v17 = 1024;
        v18 = 732;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        selfCopy = self;
        v23 = 1024;
        v24 = mutedCopy;
        v8 = " [%s] %s:%d %@(%p) sourceMuted=%d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }
}

- (void)setIsGKVoiceChat:(BOOL)chat
{
  self->_isGKVoiceChat = chat;
  audioIOController = self->_audioIOController;
  if (audioIOController == +[VCAudioManager sharedVoiceChatInstance])
  {
    isGKVoiceChat = self->_isGKVoiceChat;
    v6 = +[VCAudioManager sharedVoiceChatInstance];

    [v6 setIsGKVoiceChat:isGKVoiceChat];
  }
}

- (void)setDirection:(unsigned __int8)direction
{
  directionCopy = direction;
  v31 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    direction = [(VCAudioIOControllerClient *)self->_controllerClient direction];
    state = self->_state;
    *v17 = 136316418;
    *&v17[4] = v6;
    v18 = 2080;
    v19 = "[VCAudioIO setDirection:]";
    v20 = 1024;
    v21 = 748;
    v22 = 1024;
    *v23 = direction;
    *&v23[4] = 1024;
    *&v23[6] = directionCopy;
    LOWORD(selfCopy) = 1024;
    *(&selfCopy + 2) = state;
    v10 = " [%s] %s:%d Set direction from %d to %d. Current state:%d";
    v11 = v7;
    v12 = 46;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCAudioIO *)self performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      direction2 = [(VCAudioIOControllerClient *)self->_controllerClient direction];
      v16 = self->_state;
      *v17 = 136316930;
      *&v17[4] = v13;
      v18 = 2080;
      v19 = "[VCAudioIO setDirection:]";
      v20 = 1024;
      v21 = 748;
      v22 = 2112;
      *v23 = v5;
      *&v23[8] = 2048;
      selfCopy = self;
      v25 = 1024;
      v26 = direction2;
      v27 = 1024;
      v28 = directionCopy;
      v29 = 1024;
      v30 = v16;
      v10 = " [%s] %s:%d %@(%p) Set direction from %d to %d. Current state:%d";
      v11 = v14;
      v12 = 66;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v17, v12);
    }
  }

LABEL_12:
  pthread_mutex_lock(&self->_stateMutex);
  if (self->_state)
  {
    v17[0] = directionCopy;
    v17[1] = [(VCAudioIOControllerClient *)self->_controllerClient spatialAudioDisabled];
    v17[2] = [(VCAudioIOControllerClient *)self->_controllerClient isVoiceActivityEnabled];
    v17[3] = [(VCAudioIOControllerClient *)self->_controllerClient isMediaPriorityEnabled];
    [(VCAudioIOControllerControl *)self->_audioIOController updateClient:self->_controllerClient settings:v17];
  }

  else
  {
    [(VCAudioIOControllerClient *)self->_controllerClient setDirection:directionCopy];
  }

  pthread_mutex_unlock(&self->_stateMutex);
}

- (void)setSpatialAudioDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v31 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    spatialAudioDisabled = [(VCAudioIOControllerClient *)self->_controllerClient spatialAudioDisabled];
    state = self->_state;
    *v17 = 136316418;
    *&v17[4] = v6;
    v18 = 2080;
    v19 = "[VCAudioIO setSpatialAudioDisabled:]";
    v20 = 1024;
    v21 = 773;
    v22 = 1024;
    *v23 = spatialAudioDisabled;
    *&v23[4] = 1024;
    *&v23[6] = disabledCopy;
    LOWORD(selfCopy) = 1024;
    *(&selfCopy + 2) = state;
    v10 = " [%s] %s:%d Set spatialAudioDisabled from %d to %d. Current state:%d";
    v11 = v7;
    v12 = 46;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCAudioIO *)self performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      spatialAudioDisabled2 = [(VCAudioIOControllerClient *)self->_controllerClient spatialAudioDisabled];
      v16 = self->_state;
      *v17 = 136316930;
      *&v17[4] = v13;
      v18 = 2080;
      v19 = "[VCAudioIO setSpatialAudioDisabled:]";
      v20 = 1024;
      v21 = 773;
      v22 = 2112;
      *v23 = v5;
      *&v23[8] = 2048;
      selfCopy = self;
      v25 = 1024;
      v26 = spatialAudioDisabled2;
      v27 = 1024;
      v28 = disabledCopy;
      v29 = 1024;
      v30 = v16;
      v10 = " [%s] %s:%d %@(%p) Set spatialAudioDisabled from %d to %d. Current state:%d";
      v11 = v14;
      v12 = 66;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v17, v12);
    }
  }

LABEL_12:
  pthread_mutex_lock(&self->_stateMutex);
  if (self->_state)
  {
    v17[0] = [(VCAudioIOControllerClient *)self->_controllerClient direction];
    v17[1] = disabledCopy;
    v17[2] = [(VCAudioIOControllerClient *)self->_controllerClient isVoiceActivityEnabled];
    v17[3] = [(VCAudioIOControllerClient *)self->_controllerClient isMediaPriorityEnabled];
    [(VCAudioIOControllerControl *)self->_audioIOController updateClient:self->_controllerClient settings:v17];
  }

  else
  {
    [(VCAudioIOControllerClient *)self->_controllerClient setSpatialAudioDisabled:disabledCopy];
  }

  pthread_mutex_unlock(&self->_stateMutex);
}

- (BOOL)supportsVoiceActivityDetection
{
  pthread_mutex_lock(&self->_stateMutex);
  supportsVoiceActivityDetection = [(VCAudioIOControllerControl *)self->_audioIOController supportsVoiceActivityDetection];
  pthread_mutex_unlock(&self->_stateMutex);
  return supportsVoiceActivityDetection;
}

- (void)updateVoiceActivityEnabled:(BOOL)enabled isMediaPriorityEnabled:(BOOL)priorityEnabled
{
  priorityEnabledCopy = priorityEnabled;
  enabledCopy = enabled;
  v37 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    isVoiceActivityEnabled = [(VCAudioIOControllerClient *)self->_controllerClient isVoiceActivityEnabled];
    isMediaPriorityEnabled = [(VCAudioIOControllerClient *)self->_controllerClient isMediaPriorityEnabled];
    state = self->_state;
    *v21 = 136316930;
    *&v21[4] = v8;
    v22 = 2080;
    v23 = "[VCAudioIO updateVoiceActivityEnabled:isMediaPriorityEnabled:]";
    v24 = 1024;
    v25 = 797;
    v26 = 1024;
    *v27 = enabledCopy;
    *&v27[4] = 1024;
    *&v27[6] = isVoiceActivityEnabled;
    LOWORD(selfCopy) = 1024;
    *(&selfCopy + 2) = priorityEnabledCopy;
    HIWORD(selfCopy) = 1024;
    *v29 = isMediaPriorityEnabled;
    *&v29[4] = 1024;
    *v30 = state;
    v13 = " [%s] %s:%d Set isVoiceActivityEnabled previous=%d new=%d, isMediaPriorityEnabled previous=%d new=%d, state=%d";
    v14 = v9;
    v15 = 58;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCAudioIO *)self performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      isVoiceActivityEnabled2 = [(VCAudioIOControllerClient *)self->_controllerClient isVoiceActivityEnabled];
      isMediaPriorityEnabled2 = [(VCAudioIOControllerClient *)self->_controllerClient isMediaPriorityEnabled];
      v20 = self->_state;
      *v21 = 136317442;
      *&v21[4] = v16;
      v22 = 2080;
      v23 = "[VCAudioIO updateVoiceActivityEnabled:isMediaPriorityEnabled:]";
      v24 = 1024;
      v25 = 797;
      v26 = 2112;
      *v27 = v7;
      *&v27[8] = 2048;
      selfCopy = self;
      *v29 = 1024;
      *&v29[2] = enabledCopy;
      *v30 = 1024;
      *&v30[2] = isVoiceActivityEnabled2;
      v31 = 1024;
      v32 = priorityEnabledCopy;
      v33 = 1024;
      v34 = isMediaPriorityEnabled2;
      v35 = 1024;
      v36 = v20;
      v13 = " [%s] %s:%d %@(%p) Set isVoiceActivityEnabled previous=%d new=%d, isMediaPriorityEnabled previous=%d new=%d, state=%d";
      v14 = v17;
      v15 = 78;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v21, v15);
    }
  }

LABEL_12:
  pthread_mutex_lock(&self->_stateMutex);
  if (self->_state)
  {
    v21[0] = [(VCAudioIOControllerClient *)self->_controllerClient direction];
    v21[1] = [(VCAudioIOControllerClient *)self->_controllerClient spatialAudioDisabled];
    v21[2] = enabledCopy;
    v21[3] = priorityEnabledCopy;
    [(VCAudioIOControllerControl *)self->_audioIOController updateClient:self->_controllerClient settings:v21];
  }

  else
  {
    [(VCAudioIOControllerClient *)self->_controllerClient setIsVoiceActivityEnabled:enabledCopy];
    [(VCAudioIOControllerClient *)self->_controllerClient setIsMediaPriorityEnabled:priorityEnabledCopy];
  }

  pthread_mutex_unlock(&self->_stateMutex);
}

- (unsigned)channelCountForClientChannelCount:(unsigned int)count
{
  if (self->_audioType == 1 && ([(VCAudioIOControllerClient *)self->_controllerClient operatingMode]== 1 || [(VCAudioIOControllerClient *)self->_controllerClient operatingMode]== 6 || [(VCAudioIOControllerClient *)self->_controllerClient operatingMode]== 2) && [(VCAudioIOControllerClient *)self->_controllerClient direction]== 1)
  {
    return 2;
  }

  return count;
}

- (BOOL)createConverterForSource:(BOOL)source error:(id *)error
{
  v118 = *MEMORY[0x1E69E9840];
  if (self->_isControllerAudioFormatValid)
  {
    sourceCopy = source;
    v6 = 360;
    if (source)
    {
      v6 = 240;
    }

    v7 = self + v6;
    if (!memcmp(&_VCAudioIO_EmptyContext, &self->_clientFormat.format.mBytesPerFrame + v6, 0x30uLL))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_118;
        }

        v45 = VRTraceErrorLogLevelToCSTR();
        v46 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        LODWORD(buf.mSampleRate) = 136315650;
        *(&buf.mSampleRate + 4) = v45;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCAudioIO createConverterForSource:error:]";
        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 849;
        v47 = " [%s] %s:%d No delegate context";
        v48 = v46;
        v49 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v41 = [(VCAudioIO *)self performSelector:sel_logPrefix];
        }

        else
        {
          v41 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_118;
        }

        v50 = VRTraceErrorLogLevelToCSTR();
        v51 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        LODWORD(buf.mSampleRate) = 136316162;
        *(&buf.mSampleRate + 4) = v50;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCAudioIO createConverterForSource:error:]";
        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 849;
        LOWORD(buf.mChannelsPerFrame) = 2112;
        *(&buf.mChannelsPerFrame + 2) = v41;
        HIWORD(buf.mReserved) = 2048;
        *v113 = self;
        v47 = " [%s] %s:%d %@(%p) No delegate context";
        v48 = v51;
        v49 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, v47, &buf, v49);
LABEL_118:
      LOBYTE(v42) = 1;
      return v42;
    }

    v8 = 96;
    if (sourceCopy)
    {
      v9 = 48;
    }

    else
    {
      v9 = 96;
    }

    v10 = 104;
    v11 = 108;
    v12 = 116;
    if (sourceCopy)
    {
      v13 = 68;
    }

    else
    {
      v13 = 116;
    }

    if (sourceCopy)
    {
      v14 = 76;
    }

    else
    {
      v14 = 124;
    }

    if (sourceCopy)
    {
      v15 = 84;
    }

    else
    {
      v15 = 132;
    }

    v16 = *(&self->super.isa + v15);
    if (sourceCopy)
    {
      v17 = 80;
    }

    else
    {
      v17 = 128;
    }

    v18 = *(&self->super.isa + v17);
    v19 = *(&self->super.isa + v14);
    if (sourceCopy)
    {
      v20 = 72;
    }

    else
    {
      v20 = 120;
    }

    v89 = *(&self->super.isa + v20);
    v90 = v18;
    HIDWORD(v88) = *(&self->super.isa + v13);
    samplesPerFrame = self->_clientFormat.samplesPerFrame;
    v23 = (v7 + 16);
    v22 = *(v7 + 2);
    *(v7 + 3) = samplesPerFrame;
    if (sourceCopy)
    {
      v24 = 60;
    }

    else
    {
      v24 = 108;
    }

    if (sourceCopy)
    {
      v25 = 64;
    }

    else
    {
      v8 = 48;
      v25 = 112;
    }

    if (!sourceCopy)
    {
      v11 = 60;
    }

    LODWORD(v88) = *(&self->super.isa + v25);
    v87 = *(&self->super.isa + v24);
    if (sourceCopy)
    {
      v26 = 112;
    }

    else
    {
      v26 = 64;
    }

    if (sourceCopy)
    {
      v27 = 56;
    }

    else
    {
      v27 = 104;
    }

    if (sourceCopy)
    {
      v28 = 120;
    }

    else
    {
      v12 = 68;
      v28 = 72;
    }

    if (sourceCopy)
    {
      v29 = 124;
    }

    else
    {
      v29 = 76;
    }

    if (sourceCopy)
    {
      v30 = 128;
    }

    else
    {
      v30 = 80;
    }

    if (sourceCopy)
    {
      v31 = 132;
    }

    else
    {
      v31 = 84;
    }

    v86 = *(&self->super.isa + v27);
    v32 = *(&self->super.isa + v9);
    v33 = *(&self->super.isa + v31);
    v93 = *(&self->super.isa + v30);
    mChannelsPerFrame = *(&self->super.isa + v29);
    v92 = *(&self->super.isa + v28);
    HIDWORD(v91) = *(&self->super.isa + v12);
    DWORD2(v91) = *(&self->super.isa + v26);
    if (!sourceCopy)
    {
      v10 = 56;
    }

    LODWORD(v91) = *(&self->super.isa + v10);
    DWORD1(v91) = *(&self->super.isa + v11);
    v35 = *(&self->super.isa + v8);
    v36 = 2 * samplesPerFrame;
    SampleCapacity = VCAudioBufferList_GetSampleCapacity(v22);
    v38 = *v23;
    if (!*v23 || (v39 = SampleCapacity, SampleCapacity >= v36))
    {
LABEL_91:
      if (v38)
      {
        goto LABEL_108;
      }

      v95 = v33;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_107;
        }

        v59 = VRTraceErrorLogLevelToCSTR();
        v60 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_107;
        }

        v61 = "sink";
        LODWORD(buf.mSampleRate) = 136316162;
        *(&buf.mSampleRate + 4) = v59;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCAudioIO createConverterForSource:error:]";
        if (sourceCopy)
        {
          v61 = "source";
        }

        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 873;
        LOWORD(buf.mChannelsPerFrame) = 2080;
        *(&buf.mChannelsPerFrame + 2) = v61;
        HIWORD(buf.mReserved) = 1024;
        *v113 = v36;
        v62 = " [%s] %s:%d Creating %s converter buffer with capacity=%u";
        v63 = v60;
        v64 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v85 = [(VCAudioIO *)self performSelector:sel_logPrefix];
        }

        else
        {
          v85 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_107;
        }

        v65 = VRTraceErrorLogLevelToCSTR();
        v66 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_107;
        }

        v67 = "sink";
        LODWORD(buf.mSampleRate) = 136316674;
        *(&buf.mSampleRate + 4) = v65;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCAudioIO createConverterForSource:error:]";
        if (sourceCopy)
        {
          v67 = "source";
        }

        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 873;
        LOWORD(buf.mChannelsPerFrame) = 2112;
        *(&buf.mChannelsPerFrame + 2) = v85;
        HIWORD(buf.mReserved) = 2048;
        *v113 = self;
        *&v113[8] = 2080;
        *&v113[10] = v67;
        *&v113[18] = 1024;
        *&v113[20] = v36;
        v62 = " [%s] %s:%d %@(%p) Creating %s converter buffer with capacity=%u";
        v63 = v66;
        v64 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_DEFAULT, v62, &buf, v64);
LABEL_107:
      v68 = *&self->_clientFormat.format.mBytesPerPacket;
      *&buf.mSampleRate = *&self->_clientFormat.format.mSampleRate;
      *&buf.mBytesPerPacket = v68;
      *&buf.mBitsPerChannel = *&self->_clientFormat.format.mBitsPerChannel;
      VCAudioBufferList_Allocate(&buf, v36, v7 + 2);
      v33 = v95;
LABEL_108:
      if (sourceCopy)
      {
        if (!*(v7 + 3))
        {
          VCAudioBufferList_AllocateFrame(&self->_clientFormat, v7 + 3);
        }

        v69 = mChannelsPerFrame == v19;
        mChannelsPerFrame = v19;
        if (!v69)
        {
          if (*(v7 + 4))
          {
            VCAudioBufferList_Destroy(v7 + 4);
          }

          mChannelsPerFrame = self->_clientFormat.format.mChannelsPerFrame;
          *v113 = 0xAAAAAAAAAAAAAAAALL;
          buf.mSampleRate = v35;
          *&buf.mFormatID = v91;
          buf.mBytesPerFrame = v92;
          buf.mChannelsPerFrame = mChannelsPerFrame;
          buf.mBitsPerChannel = v93;
          buf.mReserved = v33;
          *v113 = self->_controllerFormat.samplesPerFrame;
          VCAudioBufferList_AllocateFrame(&buf, v7 + 4);
        }
      }

      if (v7[8] == 1)
      {
        v117 = 0xAAAAAAAAAA000000;
        buf.mSampleRate = v32;
        buf.mFormatID = v86;
        buf.mFormatFlags = v87;
        *&buf.mBytesPerPacket = v88;
        buf.mBytesPerFrame = v89;
        buf.mChannelsPerFrame = v19;
        buf.mBitsPerChannel = v90;
        buf.mReserved = v16;
        *v113 = v35;
        *&v113[8] = v91;
        v114 = __PAIR64__(mChannelsPerFrame, v92);
        v115 = v93;
        v116 = v33;
        v70 = SoundDec_Create(v7, &buf);
        if (v70 < 0)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_117;
            }

            v72 = VRTraceErrorLogLevelToCSTR();
            v73 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_117;
            }

            v74 = "sink";
            *v96 = 136316418;
            v97 = v72;
            v98 = 2080;
            v99 = "[VCAudioIO createConverterForSource:error:]";
            if (sourceCopy)
            {
              v74 = "source";
            }

            v100 = 1024;
            v101 = 902;
            v102 = 2080;
            v103 = v74;
            v104 = 2048;
            selfCopy2 = self;
            v106 = 1024;
            LODWORD(v107) = v70;
            v75 = " [%s] %s:%d Failed to create %s converter for audioIO:%p! Err:%d";
            v76 = v73;
            v77 = 54;
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v71 = [(VCAudioIO *)self performSelector:sel_logPrefix];
            }

            else
            {
              v71 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_117;
            }

            v78 = VRTraceErrorLogLevelToCSTR();
            v79 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_117;
            }

            v80 = "sink";
            *v96 = 136316930;
            v97 = v78;
            v98 = 2080;
            v99 = "[VCAudioIO createConverterForSource:error:]";
            if (sourceCopy)
            {
              v80 = "source";
            }

            v100 = 1024;
            v101 = 902;
            v102 = 2112;
            v103 = v71;
            v104 = 2048;
            selfCopy2 = self;
            v106 = 2080;
            v107 = v80;
            v108 = 2048;
            selfCopy3 = self;
            v110 = 1024;
            v111 = v70;
            v75 = " [%s] %s:%d %@(%p) Failed to create %s converter for audioIO:%p! Err:%d";
            v76 = v79;
            v77 = 74;
          }

          _os_log_error_impl(&dword_1DB56E000, v76, OS_LOG_TYPE_ERROR, v75, v96, v77);
        }

LABEL_117:
        LOBYTE(v42) = v70 >= 0;
        return v42;
      }

      goto LABEL_118;
    }

    v94 = v33;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_90;
      }

      v84 = VRTraceErrorLogLevelToCSTR();
      v52 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      v53 = "sink";
      LODWORD(buf.mSampleRate) = 136316418;
      *(&buf.mSampleRate + 4) = v84;
      LOWORD(buf.mFormatFlags) = 2080;
      *(&buf.mFormatFlags + 2) = "[VCAudioIO createConverterForSource:error:]";
      if (sourceCopy)
      {
        v53 = "source";
      }

      HIWORD(buf.mFramesPerPacket) = 1024;
      buf.mBytesPerFrame = 868;
      LOWORD(buf.mChannelsPerFrame) = 2080;
      *(&buf.mChannelsPerFrame + 2) = v53;
      HIWORD(buf.mReserved) = 1024;
      *v113 = v39;
      *&v113[4] = 1024;
      *&v113[6] = v36;
      v54 = " [%s] %s:%d Insufficient %s converter buffer capacity: %u < %u, releasing";
      v55 = v52;
      v56 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v83 = [(VCAudioIO *)self performSelector:sel_logPrefix];
      }

      else
      {
        v83 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_90;
      }

      v82 = VRTraceErrorLogLevelToCSTR();
      v57 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      v58 = "sink";
      LODWORD(buf.mSampleRate) = 136316930;
      *(&buf.mSampleRate + 4) = v82;
      LOWORD(buf.mFormatFlags) = 2080;
      *(&buf.mFormatFlags + 2) = "[VCAudioIO createConverterForSource:error:]";
      if (sourceCopy)
      {
        v58 = "source";
      }

      HIWORD(buf.mFramesPerPacket) = 1024;
      buf.mBytesPerFrame = 868;
      LOWORD(buf.mChannelsPerFrame) = 2112;
      *(&buf.mChannelsPerFrame + 2) = v83;
      HIWORD(buf.mReserved) = 2048;
      *v113 = self;
      *&v113[8] = 2080;
      *&v113[10] = v58;
      *&v113[18] = 1024;
      *&v113[20] = v39;
      LOWORD(v114) = 1024;
      *(&v114 + 2) = v36;
      v54 = " [%s] %s:%d %@(%p) Insufficient %s converter buffer capacity: %u < %u, releasing";
      v55 = v57;
      v56 = 70;
    }

    _os_log_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEFAULT, v54, &buf, v56);
LABEL_90:
    VCAudioBufferList_Destroy(v7 + 2);
    VCAudioBufferList_Destroy(v7 + 3);
    v38 = *(v7 + 2);
    v33 = v94;
    goto LABEL_91;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v42 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v42)
      {
        return v42;
      }

      [VCAudioIO createConverterForSource:error:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v40 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v40 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v43 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      v42 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v42)
      {
        return v42;
      }

      LODWORD(buf.mSampleRate) = 136316162;
      *(&buf.mSampleRate + 4) = v43;
      LOWORD(buf.mFormatFlags) = 2080;
      *(&buf.mFormatFlags + 2) = "[VCAudioIO createConverterForSource:error:]";
      HIWORD(buf.mFramesPerPacket) = 1024;
      buf.mBytesPerFrame = 844;
      LOWORD(buf.mChannelsPerFrame) = 2112;
      *(&buf.mChannelsPerFrame + 2) = v40;
      HIWORD(buf.mReserved) = 2048;
      *v113 = self;
      _os_log_error_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) The controller audio format is invalid!", &buf, 0x30u);
    }
  }

  LOBYTE(v42) = 0;
  return v42;
}

- (void)destroyBuffers
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v4;
        v13 = 2080;
        v14 = "[VCAudioIO destroyBuffers]";
        v15 = 1024;
        v16 = 908;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCAudioIO destroyBuffers]";
        v15 = 1024;
        v16 = 908;
        v17 = 2112;
        v18 = v3;
        v19 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  VCAudioBufferList_Destroy(&self->_sinkData.sampleBuffer);
  VCAudioBufferList_Destroy(&self->_sourceData.sampleBuffer);
  VCAudioBufferList_Destroy(&self->_sourceData.clientBuffer);
}

- (void)releaseConverters
{
  SoundDec_Destroy(self->_sinkData.converter);
  self->_sinkData.converter = 0;
  SoundDec_Destroy(self->_sourceData.converter);
  self->_sourceData.converter = 0;
}

- (void)setClientFormat:(const tagVCAudioFrameFormat *)format
{
  v9 = *MEMORY[0x1E69E9840];
  HIDWORD(v8) = [(VCAudioIO *)self channelCountForClientChannelCount:format->format.mChannelsPerFrame, *&format->format.mSampleRate, *&format->format.mFormatID, *&format->format.mBytesPerPacket, *&format->format.mBytesPerFrame, *&format->format.mBitsPerChannel, *&format->samplesPerFrame];
  [(VCAudioIOControllerClient *)self->_controllerClient setClientFormat:&v7];
  v5 = *&format->format.mSampleRate;
  v6 = *&format->format.mBitsPerChannel;
  *&self->_clientFormat.format.mBytesPerPacket = *&format->format.mBytesPerPacket;
  *&self->_clientFormat.format.mBitsPerChannel = v6;
  *&self->_clientFormat.format.mSampleRate = v5;
}

- (void)didStart:(BOOL)start error:(id)error
{
  startCopy = start;
  v39 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateMutex);
  if (self->_state != 1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          state = self->_state;
          *buf = 136315906;
          v28 = v8;
          v29 = 2080;
          v30 = "[VCAudioIO didStart:error:]";
          v31 = 1024;
          v32 = 939;
          v33 = 1024;
          LODWORD(selfCopy2) = state;
          v11 = " [%s] %s:%d Unexpected audioIO state:%d. Stop may have been called before the didStart callback";
          v12 = v9;
          v13 = 34;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCAudioIO *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->_state;
          *buf = 136316418;
          v28 = v14;
          v29 = 2080;
          v30 = "[VCAudioIO didStart:error:]";
          v31 = 1024;
          v32 = 939;
          v33 = 2112;
          selfCopy2 = v7;
          v35 = 2048;
          selfCopy3 = self;
          v37 = 1024;
          v38 = v16;
          v11 = " [%s] %s:%d %@(%p) Unexpected audioIO state:%d. Stop may have been called before the didStart callback";
          v12 = v15;
          v13 = 54;
          goto LABEL_12;
        }
      }
    }
  }

  startCompletionBlock = self->_startCompletionBlock;
  self->_startCompletionBlock = 0;
  if (startCompletionBlock)
  {
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__VCAudioIO_didStart_error___block_invoke;
    block[3] = &unk_1E85F7C18;
    v26 = startCopy;
    block[4] = error;
    block[5] = startCompletionBlock;
    dispatch_async(global_queue, block);
  }

  if (startCopy)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  self->_state = v19;
  if (startCopy)
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioIO-didStart");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v28 = v20;
        v29 = 2080;
        v30 = "[VCAudioIO didStart:error:]";
        v31 = 1024;
        v32 = 954;
        v33 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioIO-didStart (%p) Stream successfully started", buf, 0x26u);
      }
    }
  }

  else
  {
    [(VCAudioIO *)self cleanUpRealtimeDelegatesAndContext:0];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioIO didStart:error:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [(VCAudioIO *)self performSelector:sel_logPrefix];
      }

      else
      {
        v22 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v28 = v23;
          v29 = 2080;
          v30 = "[VCAudioIO didStart:error:]";
          v31 = 1024;
          v32 = 957;
          v33 = 2112;
          selfCopy2 = v22;
          v35 = 2048;
          selfCopy3 = self;
          _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to start!!", buf, 0x30u);
        }
      }
    }
  }

  pthread_mutex_unlock(&self->_stateMutex);
}

void __28__VCAudioIO_didStart_error___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 40);

  _Block_release(v2);
}

- (void)didStop:(BOOL)stop error:(id)error
{
  stopCopy = stop;
  v55 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateMutex);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        stopCompletionBlock = self->_stopCompletionBlock;
        *buf = 136315906;
        v44 = v8;
        v45 = 2080;
        v46 = "[VCAudioIO didStop:error:]";
        v47 = 1024;
        v48 = 965;
        v49 = 2048;
        v50 = stopCompletionBlock;
        v11 = " [%s] %s:%d completionHandler:%p";
        v12 = v9;
        v13 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_stopCompletionBlock;
        *buf = 136316418;
        v44 = v14;
        v45 = 2080;
        v46 = "[VCAudioIO didStop:error:]";
        v47 = 1024;
        v48 = 965;
        v49 = 2112;
        v50 = v7;
        v51 = 2048;
        selfCopy4 = self;
        v53 = 2048;
        v54 = v16;
        v11 = " [%s] %s:%d %@(%p) completionHandler:%p";
        v12 = v15;
        v13 = 58;
        goto LABEL_11;
      }
    }
  }

  if (self->_state == 3)
  {
    goto LABEL_24;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        state = self->_state;
        *buf = 136315906;
        v44 = v18;
        v45 = 2080;
        v46 = "[VCAudioIO didStop:error:]";
        v47 = 1024;
        v48 = 968;
        v49 = 1024;
        LODWORD(v50) = state;
        v21 = " [%s] %s:%d Unexpected audioIO state:%d. Start may have been called before the didStop callback";
        v22 = v19;
        v23 = 34;
LABEL_23:
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_state;
        *buf = 136316418;
        v44 = v24;
        v45 = 2080;
        v46 = "[VCAudioIO didStop:error:]";
        v47 = 1024;
        v48 = 968;
        v49 = 2112;
        v50 = v17;
        v51 = 2048;
        selfCopy4 = self;
        v53 = 1024;
        LODWORD(v54) = v26;
        v21 = " [%s] %s:%d %@(%p) Unexpected audioIO state:%d. Start may have been called before the didStop callback";
        v22 = v25;
        v23 = 54;
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  v27 = self->_stopCompletionBlock;
  self->_stopCompletionBlock = 0;
  if (v27)
  {
    global_queue = dispatch_get_global_queue(2, 0);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __27__VCAudioIO_didStop_error___block_invoke;
    v41[3] = &unk_1E85F7C40;
    v41[5] = error;
    v41[6] = v27;
    v42 = stopCopy;
    v41[4] = self;
    dispatch_async(global_queue, v41);
  }

  [(VCAudioIO *)self cleanUpRealtimeDelegatesAndContext:0];
  self->_state = 0;
  v29 = objc_opt_class();
  if (stopCopy)
  {
    if (v29 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v44 = v32;
          v45 = 2080;
          v46 = "[VCAudioIO didStop:error:]";
          v47 = 1024;
          v48 = 985;
          v34 = " [%s] %s:%d Stream successfully stopped";
          v35 = v33;
          v36 = 28;
LABEL_43:
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v30 = [(VCAudioIO *)self performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v44 = v37;
          v45 = 2080;
          v46 = "[VCAudioIO didStop:error:]";
          v47 = 1024;
          v48 = 985;
          v49 = 2112;
          v50 = v30;
          v51 = 2048;
          selfCopy4 = self;
          v34 = " [%s] %s:%d %@(%p) Stream successfully stopped";
          v35 = v38;
          v36 = 48;
          goto LABEL_43;
        }
      }
    }
  }

  else if (v29 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioIO didStop:error:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v31 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v31 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v44 = v39;
        v45 = 2080;
        v46 = "[VCAudioIO didStop:error:]";
        v47 = 1024;
        v48 = 987;
        v49 = 2112;
        v50 = v31;
        v51 = 2048;
        selfCopy4 = self;
        _os_log_error_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to stop!!", buf, 0x30u);
      }
    }
  }

  pthread_mutex_unlock(&self->_stateMutex);
}

void __27__VCAudioIO_didStop_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v6;
        v16 = 2080;
        v17 = "[VCAudioIO didStop:error:]_block_invoke";
        v18 = 1024;
        v19 = 976;
        v8 = " [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = 136316162;
        v15 = v11;
        v16 = 2080;
        v17 = "[VCAudioIO didStop:error:]_block_invoke";
        v18 = 1024;
        v19 = 976;
        v20 = 2112;
        v21 = v2;
        v22 = 2048;
        v23 = v13;
        v8 = " [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56), *(a1 + 40), v3, v4, v5);
  _Block_release(*(a1 + 48));
}

- (void)controllerFormatChanged:(const tagVCAudioFrameFormat *)changed
{
  v69 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateMutex);
  v6 = *&changed->format.mBytesPerPacket;
  v5 = *&changed->format.mBitsPerChannel;
  *&self->_controllerFormat.format.mSampleRate = *&changed->format.mSampleRate;
  *&self->_controllerFormat.format.mBytesPerPacket = v6;
  *&self->_controllerFormat.format.mBitsPerChannel = v5;
  self->_controllerFormat.format.mChannelsPerFrame = [(VCAudioIO *)self channelCountForClientChannelCount:self->_clientFormat.format.mChannelsPerFrame];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        mSampleRate = self->_controllerFormat.format.mSampleRate;
        v11 = FourccToCStr(self->_controllerFormat.format.mFormatID);
        mFormatFlags = self->_controllerFormat.format.mFormatFlags;
        mBytesPerPacket = self->_controllerFormat.format.mBytesPerPacket;
        mFramesPerPacket = self->_controllerFormat.format.mFramesPerPacket;
        mBytesPerFrame = self->_controllerFormat.format.mBytesPerFrame;
        mChannelsPerFrame = self->_controllerFormat.format.mChannelsPerFrame;
        mBitsPerChannel = self->_controllerFormat.format.mBitsPerChannel;
        samplesPerFrame = self->_controllerFormat.samplesPerFrame;
        *v63 = 136317954;
        *&v63[4] = v8;
        *&v63[12] = 2080;
        *&v63[14] = "[VCAudioIO controllerFormatChanged:]";
        *&v63[22] = 1024;
        LODWORD(v64) = 1008;
        WORD2(v64) = 2048;
        *(&v64 + 6) = mSampleRate;
        HIWORD(v64) = 2080;
        selfCopy2 = v11;
        *v66 = 1024;
        *&v66[2] = mFormatFlags;
        *&v66[6] = 1024;
        *&v66[8] = mBytesPerPacket;
        *&v66[12] = 1024;
        *&v66[14] = mFramesPerPacket;
        *&v66[18] = 1024;
        *&v66[20] = mBytesPerFrame;
        *&v66[24] = 1024;
        *&v66[26] = mChannelsPerFrame;
        *&v66[30] = 1024;
        *v67 = mBitsPerChannel;
        *&v67[4] = 1024;
        *&v67[6] = samplesPerFrame;
        v19 = " [%s] %s:%d Controller format: {%f, %7s, 0x%08x, %u, %u, %u, %u, %u} samplesPerFrame=%u";
        v20 = v9;
        v21 = 90;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, v63, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_controllerFormat.format.mSampleRate;
        v25 = FourccToCStr(self->_controllerFormat.format.mFormatID);
        v26 = self->_controllerFormat.format.mFormatFlags;
        v27 = self->_controllerFormat.format.mBytesPerPacket;
        v28 = self->_controllerFormat.format.mFramesPerPacket;
        v29 = self->_controllerFormat.format.mBytesPerFrame;
        v30 = self->_controllerFormat.format.mChannelsPerFrame;
        v31 = self->_controllerFormat.format.mBitsPerChannel;
        v32 = self->_controllerFormat.samplesPerFrame;
        *v63 = 136318466;
        *&v63[4] = v22;
        *&v63[12] = 2080;
        *&v63[14] = "[VCAudioIO controllerFormatChanged:]";
        *&v63[22] = 1024;
        LODWORD(v64) = 1008;
        WORD2(v64) = 2112;
        *(&v64 + 6) = v7;
        HIWORD(v64) = 2048;
        selfCopy2 = self;
        *v66 = 2048;
        *&v66[2] = v24;
        *&v66[10] = 2080;
        *&v66[12] = v25;
        *&v66[20] = 1024;
        *&v66[22] = v26;
        *&v66[26] = 1024;
        *&v66[28] = v27;
        *v67 = 1024;
        *&v67[2] = v28;
        *&v67[6] = 1024;
        *&v67[8] = v29;
        *&v67[12] = 1024;
        *&v67[14] = v30;
        *&v67[18] = 1024;
        *&v67[20] = v31;
        LOWORD(v68) = 1024;
        *(&v68 + 2) = v32;
        v19 = " [%s] %s:%d %@(%p) Controller format: {%f, %7s, 0x%08x, %u, %u, %u, %u, %u} samplesPerFrame=%u";
        v20 = v23;
        v21 = 110;
        goto LABEL_11;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v36 = self->_clientFormat.format.mSampleRate;
        v37 = FourccToCStr(self->_clientFormat.format.mFormatID);
        v38 = self->_clientFormat.format.mFormatFlags;
        v39 = self->_clientFormat.format.mBytesPerPacket;
        v40 = self->_clientFormat.format.mFramesPerPacket;
        v41 = self->_clientFormat.format.mBytesPerFrame;
        v42 = self->_clientFormat.format.mChannelsPerFrame;
        v43 = self->_clientFormat.format.mBitsPerChannel;
        v44 = self->_clientFormat.samplesPerFrame;
        *v63 = 136317954;
        *&v63[4] = v34;
        *&v63[12] = 2080;
        *&v63[14] = "[VCAudioIO controllerFormatChanged:]";
        *&v63[22] = 1024;
        LODWORD(v64) = 1018;
        WORD2(v64) = 2048;
        *(&v64 + 6) = v36;
        HIWORD(v64) = 2080;
        selfCopy2 = v37;
        *v66 = 1024;
        *&v66[2] = v38;
        *&v66[6] = 1024;
        *&v66[8] = v39;
        *&v66[12] = 1024;
        *&v66[14] = v40;
        *&v66[18] = 1024;
        *&v66[20] = v41;
        *&v66[24] = 1024;
        *&v66[26] = v42;
        *&v66[30] = 1024;
        *v67 = v43;
        *&v67[4] = 1024;
        *&v67[6] = v44;
        v45 = " [%s] %s:%d Client format: {%f, %7s, 0x%08x, %u, %u, %u, %u, %u} samplesPerFrame=%u";
        v46 = v35;
        v47 = 90;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, v45, v63, v47);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v33 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v33 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v50 = self->_clientFormat.format.mSampleRate;
        v51 = FourccToCStr(self->_clientFormat.format.mFormatID);
        v52 = self->_clientFormat.format.mFormatFlags;
        v53 = self->_clientFormat.format.mBytesPerPacket;
        v54 = self->_clientFormat.format.mFramesPerPacket;
        v55 = self->_clientFormat.format.mBytesPerFrame;
        v56 = self->_clientFormat.format.mChannelsPerFrame;
        v57 = self->_clientFormat.format.mBitsPerChannel;
        v58 = self->_clientFormat.samplesPerFrame;
        *v63 = 136318466;
        *&v63[4] = v48;
        *&v63[12] = 2080;
        *&v63[14] = "[VCAudioIO controllerFormatChanged:]";
        *&v63[22] = 1024;
        LODWORD(v64) = 1018;
        WORD2(v64) = 2112;
        *(&v64 + 6) = v33;
        HIWORD(v64) = 2048;
        selfCopy2 = self;
        *v66 = 2048;
        *&v66[2] = v50;
        *&v66[10] = 2080;
        *&v66[12] = v51;
        *&v66[20] = 1024;
        *&v66[22] = v52;
        *&v66[26] = 1024;
        *&v66[28] = v53;
        *v67 = 1024;
        *&v67[2] = v54;
        *&v67[6] = 1024;
        *&v67[8] = v55;
        *&v67[12] = 1024;
        *&v67[14] = v56;
        *&v67[18] = 1024;
        *&v67[20] = v57;
        LOWORD(v68) = 1024;
        *(&v68 + 2) = v58;
        v45 = " [%s] %s:%d %@(%p) Client format: {%f, %7s, 0x%08x, %u, %u, %u, %u, %u} samplesPerFrame=%u";
        v46 = v49;
        v47 = 110;
        goto LABEL_22;
      }
    }
  }

  self->_isControllerAudioFormatValid = 1;
  v59 = memcmp(&self->_clientFormat, &self->_controllerFormat, 0x28uLL) != 0;
  self->_sinkData.isConverterNeeded = v59;
  LODWORD(v60) = self->_controllerFormat.samplesPerFrame;
  v61 = vcvtad_u64_f64(self->_clientFormat.format.mSampleRate * v60 / self->_controllerFormat.format.mSampleRate);
  self->_sourceData.isConverterNeeded = v59;
  v62 = self->_clientFormat.samplesPerFrame > v61;
  self->_sinkData.isAccumulatorNeeded = v62;
  self->_sourceData.isAccumulatorNeeded = v62;
  [(VCAudioIO *)self releaseConverters:*v63];
  [(VCAudioIO *)self createConverterForSource:1 error:0];
  [(VCAudioIO *)self createConverterForSource:0 error:0];
  [(VCAudioIOControllerClient *)self->_controllerClient setControllerFormat:&self->_controllerFormat];
  pthread_mutex_unlock(&self->_stateMutex);
}

- (void)didSuspend
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioIO didSuspend]";
        *&v11[22] = 1024;
        LODWORD(v12) = 1033;
        v6 = " [%s] %s:%d ";
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
      v3 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioIO didSuspend]";
        *&v11[22] = 1024;
        LODWORD(v12) = 1033;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [-[VCAudioIO delegate](self delegate];
}

- (void)didResume
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioIO didResume]";
        *&v11[22] = 1024;
        LODWORD(v12) = 1038;
        v6 = " [%s] %s:%d ";
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
      v3 = [(VCAudioIO *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioIO didResume]";
        *&v11[22] = 1024;
        LODWORD(v12) = 1038;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [-[VCAudioIO delegate](self delegate];
}

- (void)serverDidDie
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCAudioIO serverDidDie]";
      v9 = 1024;
      v10 = 1048;
      v11 = 1024;
      v12 = 1048;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioIO.m:%d: ", &v5, 0x22u);
    }
  }

  [-[VCAudioIO delegate](self "delegate")];
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec
{
  delegate = [(VCAudioIO *)self delegate];

  [delegate didUpdateBasebandCodec:codec];
}

- (void)startWithCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateMutex);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioIO-startWithCompletionHandler");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      audioIOController = self->_audioIOController;
      controllerClient = self->_controllerClient;
      delegate = self->_delegate;
      audioType = self->_audioType;
      *buf = 136317186;
      *&buf[4] = v5;
      v17 = 2080;
      v18 = "[VCAudioIO startWithCompletionHandler:]";
      v19 = 1024;
      v20 = 1064;
      v21 = 2048;
      selfCopy = self;
      v23 = 2112;
      selfCopy2 = audioIOController;
      v25 = 2112;
      v26 = controllerClient;
      v27 = 2112;
      v28 = delegate;
      v29 = 1024;
      v30 = audioType;
      v31 = 2112;
      v32 = [VCAudioIO stringForAudioType:audioType];
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioIO-startWithCompletionHandler (%p) Starting... audioController=%@, controllerClient=%@, delegate=%@ type=%d (%@)", buf, 0x54u);
    }
  }

  if (self->_state)
  {
    [VCAudioIO startWithCompletionHandler:];
  }

  else
  {
    self->_state = 1;
    v11 = _Block_copy(handler);
    self->_startCompletionBlock = v11;
    if (v11)
    {
      self->_sinkData.delegateContext.delegate = objc_loadWeak(&self->_sinkDelegate);
      self->_sourceData.delegateContext.delegate = objc_loadWeak(&self->_sourceDelegate);
      [(VCAudioIOControllerControl *)self->_audioIOController startClient:self->_controllerClient];
      pthread_mutex_unlock(&self->_stateMutex);
      return;
    }

    [VCAudioIO startWithCompletionHandler:];
  }

  v12 = *buf;
  pthread_mutex_unlock(&self->_stateMutex);
  if (!v12)
  {
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_21;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    [VCAudioIO startWithCompletionHandler:];
    if (!handler)
    {
      return;
    }

LABEL_22:
    (*(handler + 2))(handler, 0, v12);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [(VCAudioIO *)self performSelector:sel_logPrefix];
  }

  else
  {
    v13 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = v14;
      v17 = 2080;
      v18 = "[VCAudioIO startWithCompletionHandler:]";
      v19 = 1024;
      v20 = 1080;
      v21 = 2112;
      selfCopy = v13;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v12;
      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Start failed. error:%@", buf, 0x3Au);
      if (!handler)
      {
        return;
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  if (handler)
  {
    goto LABEL_22;
  }
}

- (id)start
{
  v29 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__18;
  v17 = __Block_byref_object_dispose__18;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __18__VCAudioIO_start__block_invoke;
  v12[3] = &unk_1E85F7C68;
  v12[5] = v3;
  v12[6] = &v13;
  v12[4] = self;
  [(VCAudioIO *)self startWithCompletionHandler:v12];
  v4 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioIO start];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioIO *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v20 = v7;
          v21 = 2080;
          v22 = "[VCAudioIO start]";
          v23 = 1024;
          v24 = 1098;
          v25 = 2112;
          v26 = v5;
          v27 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) start timed out", buf, 0x30u);
        }
      }
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCAudioIO" code:-4 userInfo:&unk_1F579E620];
    v14[5] = v9;
    [(VCAudioIO *)self stop];
  }

  else
  {
    v6 = v14[5];
  }

  dispatch_release(v3);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

intptr_t __18__VCAudioIO_start__block_invoke(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316162;
        v17 = v7;
        v18 = 2080;
        v19 = "[VCAudioIO start]_block_invoke";
        v20 = 1024;
        v21 = 1092;
        v22 = 1024;
        *v23 = a2;
        *&v23[4] = 2112;
        *&v23[6] = a3;
        v9 = " [%s] %s:%d Executing start completion handler, succeeded=%d error=%@";
        v10 = v8;
        v11 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) performSelector:sel_logPrefix];
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
        v14 = *(a1 + 32);
        v16 = 136316674;
        v17 = v12;
        v18 = 2080;
        v19 = "[VCAudioIO start]_block_invoke";
        v20 = 1024;
        v21 = 1092;
        v22 = 2112;
        *v23 = v6;
        *&v23[8] = 2048;
        *&v23[10] = v14;
        v24 = 1024;
        v25 = a2;
        v26 = 2112;
        v27 = a3;
        v9 = " [%s] %s:%d %@(%p) Executing start completion handler, succeeded=%d error=%@";
        v10 = v13;
        v11 = 64;
        goto LABEL_11;
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 40) = a3;
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (id)stopWithCompletionHandlerInternal:(id)internal
{
  v39 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIOController = self->_audioIOController;
        controllerClient = self->_controllerClient;
        delegate = self->_delegate;
        *buf = 136316418;
        *&buf[4] = v6;
        v25 = 2080;
        v26 = "[VCAudioIO stopWithCompletionHandlerInternal:]";
        v27 = 1024;
        v28 = 1112;
        v29 = 2112;
        v30 = audioIOController;
        v31 = 2112;
        selfCopy = controllerClient;
        v33 = 2112;
        v34 = delegate;
        v11 = " [%s] %s:%d Stopping... audioController=%@, controllerClient=%@, delegate=%@";
        v12 = v7;
        v13 = 58;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioIO *)self performSelector:sel_logPrefix];
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
        v16 = self->_audioIOController;
        v17 = self->_controllerClient;
        v18 = self->_delegate;
        *buf = 136316930;
        *&buf[4] = v14;
        v25 = 2080;
        v26 = "[VCAudioIO stopWithCompletionHandlerInternal:]";
        v27 = 1024;
        v28 = 1112;
        v29 = 2112;
        v30 = v5;
        v31 = 2048;
        selfCopy = self;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        v37 = 2112;
        v38 = v18;
        v11 = " [%s] %s:%d %@(%p) Stopping... audioController=%@, controllerClient=%@, delegate=%@";
        v12 = v15;
        v13 = 78;
        goto LABEL_11;
      }
    }
  }

  if (!self->_state)
  {
    [(VCAudioIO *)&v22 stopWithCompletionHandlerInternal:buf];
    return *buf;
  }

  stopCompletionBlock = self->_stopCompletionBlock;
  if (stopCompletionBlock)
  {
    _Block_release(stopCompletionBlock);
  }

  if (internal)
  {
    v20 = _Block_copy(internal);
    self->_stopCompletionBlock = v20;
    if (!v20)
    {
      [VCAudioIO startWithCompletionHandler:];
      return *buf;
    }
  }

  self->_state = 3;
  [(VCAudioIOControllerControl *)self->_audioIOController stopClient:self->_controllerClient];
  return 0;
}

- (void)stopWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateMutex);
  v5 = [(VCAudioIO *)self stopWithCompletionHandlerInternal:handler];
  pthread_mutex_unlock(&self->_stateMutex);
  if (v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_12;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      [VCAudioIO stopWithCompletionHandler:];
      if (!handler)
      {
        return;
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioIO *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v7 = VRTraceErrorLogLevelToCSTR(), v8 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_12:
        if (!handler)
        {
          return;
        }

        goto LABEL_13;
      }

      v9 = 136316418;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCAudioIO stopWithCompletionHandler:]";
      v13 = 1024;
      v14 = 1137;
      v15 = 2112;
      v16 = v6;
      v17 = 2048;
      selfCopy = self;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Stop failed. error:%@", &v9, 0x3Au);
      if (!handler)
      {
        return;
      }
    }

LABEL_13:
    (*(handler + 2))(handler, 0, v5);
  }
}

- (id)stop
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__18;
  v19 = __Block_byref_object_dispose__18;
  v20 = 0;
  v3 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __17__VCAudioIO_stop__block_invoke;
  v14[3] = &unk_1E85F7C68;
  v14[5] = v3;
  v14[6] = &v15;
  v14[4] = self;
  [(VCAudioIO *)self stopWithCompletionHandler:v14];
  v4 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioIO stop];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioIO *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v24 = v7;
          v25 = 2080;
          v26 = "[VCAudioIO stop]";
          v27 = 1024;
          v28 = 1155;
          v29 = 2112;
          v30 = v5;
          v31 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) stop timed out", buf, 0x30u);
        }
      }
    }

    v9 = MEMORY[0x1E696ABC0];
    v21 = @"state";
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_state];
    v10 = [v9 errorWithDomain:@"VCAudioIO" code:-4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
    v16[5] = v10;
    v11 = objc_opt_class();
    [VCAudioIO terminateProcess:@"stop timed out" terminateSource:NSStringFromClass(v11)];
  }

  else
  {
    v6 = v16[5];
  }

  dispatch_release(v3);
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);
  return v12;
}

intptr_t __17__VCAudioIO_stop__block_invoke(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316162;
        v17 = v7;
        v18 = 2080;
        v19 = "[VCAudioIO stop]_block_invoke";
        v20 = 1024;
        v21 = 1149;
        v22 = 1024;
        *v23 = a2;
        *&v23[4] = 2112;
        *&v23[6] = a3;
        v9 = " [%s] %s:%d Executing stop completion handler, succeeded=%d error=%@";
        v10 = v8;
        v11 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) performSelector:sel_logPrefix];
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
        v14 = *(a1 + 32);
        v16 = 136316674;
        v17 = v12;
        v18 = 2080;
        v19 = "[VCAudioIO stop]_block_invoke";
        v20 = 1024;
        v21 = 1149;
        v22 = 2112;
        *v23 = v6;
        *&v23[8] = 2048;
        *&v23[10] = v14;
        v24 = 1024;
        v25 = a2;
        v26 = 2112;
        v27 = a3;
        v9 = " [%s] %s:%d %@(%p) Executing stop completion handler, succeeded=%d error=%@";
        v10 = v13;
        v11 = 64;
        goto LABEL_11;
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 40) = a3;
  return dispatch_semaphore_signal(*(a1 + 40));
}

+ (void)controllerForDeviceRole:audioType:direction:operatingMode:streamInputID:streamToken:networkClockID:remoteDeviceInfo:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)initWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)reconfigureWithConfig:(void *)a1 .cold.1(void *a1, _BYTE *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v12 = 136315650;
    v13 = v5;
    OUTLINED_FUNCTION_0();
    v14 = 503;
    v7 = " [%s] %s:%d Operation not allowed while the audio IO is running";
    v8 = v6;
    v9 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
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
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v15 = v4;
      v16 = 2048;
      v17 = a1;
      v7 = " [%s] %s:%d %@(%p) Operation not allowed while the audio IO is running";
      v8 = v11;
      v9 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a2 = 0;
}

- (void)reconfigureWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)stringForAudioType:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setFarEndVersionInfo:(void *)a1 .cold.1(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315650;
    v11 = v3;
    OUTLINED_FUNCTION_0();
    v12 = 673;
    v5 = " [%s] %s:%d Operation not allowed while the audio IO is running";
    v6 = v4;
    v7 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v10, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v13 = v2;
      v14 = 2048;
      v15 = a1;
      v5 = " [%s] %s:%d %@(%p) Operation not allowed while the audio IO is running";
      v6 = v9;
      v7 = 48;
      goto LABEL_12;
    }
  }
}

- (void)createConverterForSource:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d The controller audio format is invalid!", v2, v3, v4, v5, v6);
}

- (void)didStart:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to start!!", v2, v3, v4, v5, v6);
}

- (void)didStop:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to stop!!", v2, v3, v4, v5, v6);
}

- (uint64_t)startWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_9_20();
  v2 = MEMORY[0x1E696ABC0];
  *v3 = @"state";
  *v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  result = [v2 errorWithDomain:@"VCAudioIO" code:-1 userInfo:{OUTLINED_FUNCTION_7_19(MEMORY[0x1E695DF20], v5)}];
  *v0 = result;
  return result;
}

- (uint64_t)startWithCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_9_20();
  v2 = MEMORY[0x1E696ABC0];
  *v3 = @"state";
  *v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v4];
  result = [v2 errorWithDomain:@"VCAudioIO" code:-3 userInfo:{OUTLINED_FUNCTION_7_19(MEMORY[0x1E695DF20], v5)}];
  *v0 = result;
  return result;
}

- (void)startWithCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)start
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d start timed out", v2, v3, v4, v5, v6);
}

- (uint64_t)stopWithCompletionHandlerInternal:(uint64_t *)a3 .cold.2(void *a1, void *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E696ABC0];
  *a1 = @"state";
  *a2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  result = [v4 errorWithDomain:@"VCAudioIO" code:-1 userInfo:{OUTLINED_FUNCTION_7_19(MEMORY[0x1E695DF20], v5)}];
  *a3 = result;
  return result;
}

- (void)stopWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)stop
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d stop timed out", v2, v3, v4, v5, v6);
}

@end