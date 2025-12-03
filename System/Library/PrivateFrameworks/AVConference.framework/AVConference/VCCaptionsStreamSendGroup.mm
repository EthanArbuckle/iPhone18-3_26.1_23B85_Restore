@interface VCCaptionsStreamSendGroup
- (BOOL)setDeviceRole:(int)role operatingMode:(int)mode;
- (VCCaptionsStreamSendGroup)initWithConfig:(id)config;
- (id)activeStreamKeys;
- (id)willStart;
- (void)collectAndLogChannelMetrics:(id *)metrics;
- (void)dealloc;
- (void)didConfigureCaptionsWithError:(id)error;
- (void)didDisableCaptions:(BOOL)captions error:(id)error;
- (void)didEnableCaptions:(BOOL)captions error:(id)error;
- (void)didStartCaptioningWithReason:(unsigned __int8)reason streamToken:(int64_t)token;
- (void)didStop;
- (void)didStopCaptioningWithReason:(unsigned __int8)reason streamToken:(int64_t)token;
- (void)didUpdateCaptions:(id)captions;
- (void)dispatchedUpdateActiveMediaStreamIDs:(id)ds withTargetBitrate:(unsigned int)bitrate mediaBitrates:(id)bitrates rateChangeCounter:(unsigned int)counter;
- (void)onVideoFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time attribute:(id *)attribute;
- (void)registerCaptionsEventDelegate:(id)delegate;
- (void)reportCaptionsUsage:(unsigned __int8)usage;
- (void)setReportingAgent:(opaqueRTCReporting *)agent;
- (void)transmitTranscription:(id)transcription;
- (void)updateCaptionsConfig:(id)config;
@end

@implementation VCCaptionsStreamSendGroup

- (VCCaptionsStreamSendGroup)initWithConfig:(id)config
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCCaptionsStreamSendGroup;
  v4 = [(VCMediaStreamSendGroup *)&v9 initWithConfig:?];
  if (v4)
  {
    v4->_common = [[VCAudioStreamGroupCommon alloc] initWithConfig:config audioCallback:VCCaptionsStreamSendGroup_PushAudioSamples context:v4 audioDirection:2 stateQueue:v4->super.super._stateQueue];
    [(VCObject *)v4->_common setLogPrefix:[(VCObject *)v4 logPrefix]];
    if (v4->_common)
    {
      if (+[VCAudioCaptionsSpeechFactory V2SpeechAPIEnabled])
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      v8[0] = v4;
      v8[1] = @"facetimecaptions";
      v8[2] = 0;
      v8[3] = 0xAAAAAAAAAAAAAA01;
      v6 = [VCAudioCaptionsSpeechFactory captionsProviderForFrameworkType:v5 withSpeechConfig:v8];
      v4->_audioCaptions = v6;
      if (v6)
      {
        VCCaptionsEncoder_Create(&v4->_captionsEncoder);
      }

      else
      {
        [VCCaptionsStreamSendGroup initWithConfig:v4];
      }
    }

    else
    {
      [(VCCaptionsStreamSendGroup *)v4 initWithConfig:v8];
      return v8[0];
    }
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  VCCaptionsEncoder_Destroy(&self->_captionsEncoder);
  [(VCAudioCaptions *)self->_audioCaptions setDelegate:0];

  v3.receiver = self;
  v3.super_class = VCCaptionsStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v3 dealloc];
}

- (id)willStart
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCCaptionsStreamSendGroup;
  result = [(VCMediaStreamGroup *)&v4 willStart];
  if (!result)
  {
    [+[VCCaptionsManager defaultManager](VCCaptionsManager "defaultManager")];
    if (-[VCAudioStreamGroupCommon configureAudioIOWithDeviceRole:operatingMode:](self->_common, "configureAudioIOWithDeviceRole:operatingMode:", -[VCCaptionsStreamSendGroup deviceRole](self, "deviceRole"), [-[NSArray firstObject](-[NSDictionary allValues](self->super.super._streamIDToMediaStreamMap "allValues")]))
    {
      [(VCAudioStreamGroupCommon *)self->_common startAudioDump];
      [(VCAudioCaptions *)self->_audioCaptions enableCaptions:1];
      [(VCAudioCaptions *)self->_audioCaptions start:[(VCAudioIO *)[(VCAudioStreamGroupCommon *)self->_common audioIO] clientFormat] forToken:[(VCMediaStreamGroup *)self streamToken] withCompletionHandler:0];
      return 0;
    }

    else
    {
      [+[VCCaptionsManager defaultManager](VCCaptionsManager "defaultManager")];
      return +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 14, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCaptionsStreamSendGroup.m", 87]);
    }
  }

  return result;
}

- (void)didStop
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCAudioCaptions *)self->_audioCaptions stop];
  [(VCAudioCaptions *)self->_audioCaptions enableCaptions:0];
  [(VCAudioStreamGroupCommon *)self->_common stopAudioDump];
  [+[VCCaptionsManager defaultManager](VCCaptionsManager "defaultManager")];
  v3.receiver = self;
  v3.super_class = VCCaptionsStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v3 didStop];
}

- (void)dispatchedUpdateActiveMediaStreamIDs:(id)ds withTargetBitrate:(unsigned int)bitrate mediaBitrates:(id)bitrates rateChangeCounter:(unsigned int)counter
{
  v29[1] = *MEMORY[0x1E69E9840];
  -[VCMediaStreamSendGroup setIsSuspended:](self, "setIsSuspended:", [ds count] == 0);
  if ([ds count])
  {
    firstObject = [ds firstObject];

    self->_activeCaptionsStreamID = firstObject;
    v10 = [(NSDictionary *)self->super.super._streamIDToMediaStreamMap objectForKeyedSubscript:firstObject];
    if (v10)
    {
      v11 = v10;
      [v10 setTargetEncoderBitrate:{objc_msgSend(objc_msgSend(bitrates, "firstObject"), "unsignedIntValue")}];
      v29[0] = firstObject;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [v11 setStreamIDs:v12 repairStreamIDs:MEMORY[0x1E695E0F0]];
    }

    else if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCaptionsStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:v14 withTargetBitrate:? mediaBitrates:? rateChangeCounter:?];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCCaptionsStreamSendGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v17 = 136316418;
          v18 = v15;
          v19 = 2080;
          v20 = "[VCCaptionsStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:]";
          v21 = 1024;
          v22 = 115;
          v23 = 2112;
          v24 = v13;
          v25 = 2048;
          selfCopy = self;
          v27 = 2112;
          v28 = firstObject;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) not found captions stream with stream ID %@", &v17, 0x3Au);
        }
      }
    }
  }
}

- (id)activeStreamKeys
{
  v4[1] = *MEMORY[0x1E69E9840];
  result = [(NSDictionary *)self->super.super._streamIDToMediaStreamMap objectForKeyedSubscript:self->_activeCaptionsStreamID];
  if (result)
  {
    v4[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", self->super.super._participantUUID, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(objc_msgSend(objc_msgSend(result, "defaultStreamConfig"), "multiwayConfig"), "idsStreamID"))];
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  return result;
}

- (BOOL)setDeviceRole:(int)role operatingMode:(int)mode
{
  v4 = *&mode;
  v5 = *&role;
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  stateQueue = self->super.super._stateQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__VCCaptionsStreamSendGroup_setDeviceRole_operatingMode___block_invoke;
  v9[3] = &unk_1E85F3930;
  v9[4] = self;
  v9[5] = &v12;
  roleCopy = role;
  modeCopy = mode;
  dispatch_sync(stateQueue, v9);
  [(VCAudioStreamGroupCommon *)self->_common configureAudioIOWithDeviceRole:v5 operatingMode:v4];
  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t __57__VCCaptionsStreamSendGroup_setDeviceRole_operatingMode___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 744) setDeviceRole:*(a1 + 48) operatingMode:*(a1 + 52)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)collectAndLogChannelMetrics:(id *)metrics
{
  if (self->_activeCaptionsStreamID)
  {
    v4 = [(NSDictionary *)self->super.super._streamIDToMediaStreamMap objectForKeyedSubscript:?];

    [v4 collectTxChannelMetrics:metrics];
  }
}

- (void)setReportingAgent:(opaqueRTCReporting *)agent
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCCaptionsStreamSendGroup_setReportingAgent___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = agent;
  dispatch_sync(stateQueue, block);
}

uint64_t __47__VCCaptionsStreamSendGroup_setReportingAgent___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = VCCaptionsStreamSendGroup;
  objc_msgSendSuper2(&v4, sel_setReportingAgent_, v2);
  return [*(*(a1 + 32) + 744) setReportingAgent:*(a1 + 40)];
}

- (void)registerCaptionsEventDelegate:(id)delegate
{
  if ([delegate conformsToProtocol:&unk_1F57B5080])
  {

    objc_storeWeak(&self->_captionsDelegate, delegate);
  }
}

- (void)updateCaptionsConfig:(id)config
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCCaptionsStreamSendGroup_updateCaptionsConfig___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = config;
  dispatch_async(stateQueue, block);
}

uint64_t __50__VCCaptionsStreamSendGroup_updateCaptionsConfig___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reportCaptionsUsage:{objc_msgSend(*(a1 + 40), "usage")}];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 752);

  return [v3 updateConfig:v2];
}

- (void)didConfigureCaptionsWithError:(id)error
{
  block[6] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VCCaptionsStreamSendGroup_didConfigureCaptionsWithError___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = error;
  dispatch_async(global_queue, block);
}

uint64_t __59__VCCaptionsStreamSendGroup_didConfigureCaptionsWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[96];
  v4 = [v2 streamToken];
  v5 = *(a1 + 40);

  return [v3 streamToken:v4 didConfigureCaptionsWithError:v5];
}

- (void)didDisableCaptions:(BOOL)captions error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__VCCaptionsStreamSendGroup_didDisableCaptions_error___block_invoke;
  v8[3] = &unk_1E85F37C8;
  captionsCopy = captions;
  v8[4] = self;
  v8[5] = error;
  dispatch_async(global_queue, v8);
}

uint64_t __54__VCCaptionsStreamSendGroup_didDisableCaptions_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[96];
  v4 = [v2 streamToken];
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);

  return [v3 streamToken:v4 didDisableCaptions:v5 error:v6];
}

- (void)didEnableCaptions:(BOOL)captions error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__VCCaptionsStreamSendGroup_didEnableCaptions_error___block_invoke;
  v8[3] = &unk_1E85F37C8;
  captionsCopy = captions;
  v8[4] = self;
  v8[5] = error;
  dispatch_async(global_queue, v8);
}

uint64_t __53__VCCaptionsStreamSendGroup_didEnableCaptions_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[96];
  v4 = [v2 streamToken];
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);

  return [v3 streamToken:v4 didEnableCaptions:v5 error:v6];
}

- (void)didStartCaptioningWithReason:(unsigned __int8)reason streamToken:(int64_t)token
{
  v10 = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__VCCaptionsStreamSendGroup_didStartCaptioningWithReason_streamToken___block_invoke;
  v8[3] = &unk_1E85F4180;
  v8[4] = self;
  v8[5] = token;
  reasonCopy = reason;
  dispatch_async(global_queue, v8);
}

- (void)didStopCaptioningWithReason:(unsigned __int8)reason streamToken:(int64_t)token
{
  v10 = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__VCCaptionsStreamSendGroup_didStopCaptioningWithReason_streamToken___block_invoke;
  v8[3] = &unk_1E85F4180;
  v8[4] = self;
  v8[5] = token;
  reasonCopy = reason;
  dispatch_async(global_queue, v8);
}

- (void)didUpdateCaptions:(id)captions
{
  block[6] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCCaptionsStreamSendGroup_didUpdateCaptions___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = captions;
  dispatch_async(global_queue, block);
  [(VCCaptionsStreamSendGroup *)self transmitTranscription:captions];
}

uint64_t __47__VCCaptionsStreamSendGroup_didUpdateCaptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[96];
  v4 = [v2 streamToken];
  v5 = *(a1 + 40);

  return [v3 streamToken:v4 didUpdateCaptions:v5];
}

- (void)transmitTranscription:(id)transcription
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 1280;
  memset(__b, 170, sizeof(__b));
  VCCaptionsEncoder_Encode(self->_captionsEncoder, transcription, __b, &v18);
  memset(&v17, 170, sizeof(v17));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v17, HostTimeClock);
  v6 = *(MEMORY[0x1E6960CF0] + 48);
  *&v14[16] = *(MEMORY[0x1E6960CF0] + 32);
  v15 = v6;
  v7 = *(MEMORY[0x1E6960CF0] + 64);
  v8 = *(MEMORY[0x1E6960CF0] + 16);
  v13 = *MEMORY[0x1E6960CF0];
  *v14 = v8;
  v16 = v7;
  *&v14[8] = v17;
  *&v11.presentationTimeStamp.timescale = *&v17.timescale;
  *&v11.decodeTimeStamp.value = v6;
  v11.decodeTimeStamp.epoch = v7;
  cf = 0;
  *&v11.duration.value = v13;
  *&v11.duration.epoch = *v14;
  if (VCCaptionsStream_CreateSampleBuffer(__b, v18, &v11, &cf))
  {
    [VCCaptionsStreamSendGroup transmitTranscription:?];
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    *&v11.duration.value = *&v14[8];
    v11.duration.epoch = *&v14[24];
    [(VCCaptionsStreamSendGroup *)self onVideoFrame:cf frameTime:&v11 attribute:v9];
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)onVideoFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time attribute:(id *)attribute
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = [(NSDictionary *)self->super.super._streamIDToMediaStreamMap objectForKeyedSubscript:self->_activeCaptionsStreamID];
  if (v9)
  {
    *buf = *&time->var0;
    *&buf[16] = time->var3;
    v15 = *&attribute->var0;
    v16 = *&attribute->var6;
    [v9 onVideoFrame:frame frameTime:buf attribute:&v15];
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCaptionsStreamSendGroup onVideoFrame:v11 frameTime:? attribute:?];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCCaptionsStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        activeCaptionsStreamID = self->_activeCaptionsStreamID;
        *buf = 136316418;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = "[VCCaptionsStreamSendGroup onVideoFrame:frameTime:attribute:]";
        *&buf[22] = 1024;
        v18 = 313;
        v19 = 2112;
        v20 = v10;
        v21 = 2048;
        selfCopy = self;
        v23 = 2112;
        v24 = activeCaptionsStreamID;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) not found captions stream with stream ID %@", buf, 0x3Au);
      }
    }
  }
}

- (void)reportCaptionsUsage:(unsigned __int8)usage
{
  usageCopy = usage;
  v5[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  v4 = @"ACSU";
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:usageCopy];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  reportingGenericEvent();
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2();
    v7 = 34;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(void *)a1 .cold.2(void *a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *a2 = 0;
}

- (void)dispatchedUpdateActiveMediaStreamIDs:(uint64_t)a1 withTargetBitrate:mediaBitrates:rateChangeCounter:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d not found captions stream with stream ID %@", v3, DWORD2(v3));
}

- (void)transmitTranscription:(void *)a1 .cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    v7 = 34;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_11;
    }
  }
}

- (void)onVideoFrame:(uint64_t)a1 frameTime:attribute:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2080;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d not found captions stream with stream ID %@", v3);
}

@end