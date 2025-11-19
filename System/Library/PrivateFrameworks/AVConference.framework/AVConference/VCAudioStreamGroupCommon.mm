@interface VCAudioStreamGroupCommon
- (BOOL)addSyncDestination:(id)a3 shouldSchedule:(BOOL)a4;
- (BOOL)configureAudioIOWithDeviceRole:(int)a3 operatingMode:(int)a4;
- (BOOL)configurePowerSpectrumSource;
- (BOOL)configureStreams:(id)a3 withRateControlConfig:(id)a4;
- (BOOL)enqueueSyncDestinationChangeEvent:(id)a3 eventType:(int)a4;
- (BOOL)reconfigureAudioIOIfNeededWithDeviceRole:(int)a3 operatingMode:(int)a4;
- (BOOL)removeSyncDestination:(id)a3 shouldSchedule:(BOOL)a4;
- (BOOL)setDeviceRole:(int)a3 operatingMode:(int)a4;
- (NSString)description;
- (VCAudioStreamGroupCommon)initWithConfig:(id)a3 audioCallback:(void *)a4 context:(void *)a5 audioDirection:(unsigned __int8)a6 stateQueue:(id)a7;
- (id)startCapture;
- (id)stopCapture;
- (unsigned)audioTypeForCaptureSource:(int)a3;
- (void)cleanupPowerSpectrumSource;
- (void)cleanupStreams;
- (void)cleanupSyncDestinations;
- (void)collectAndLogChannelMetrics:(id *)a3 averagePower:(float)a4;
- (void)configurePowerSpectrumSource;
- (void)dealloc;
- (void)didResumeAudioIO:(id)a3;
- (void)didSuspendAudioIO:(id)a3;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3;
- (void)flushSyncDestinationUpdatesEventQueue;
- (void)initCodecConfigurationsForStream:(tagVCAudioStreamGroupStream *)a3 withDefaultAudioConfig:(id)a4;
- (void)sendAudioPowerSpectrumSourceRegistration:(BOOL)a3;
- (void)setMuted:(BOOL)a3;
- (void)setupStreamsWithStreamInfos:(id)a3;
- (void)updateVoiceActivityEnabled:(BOOL)a3 isMediaPriorityEnabled:(BOOL)a4;
@end

@implementation VCAudioStreamGroupCommon

- (VCAudioStreamGroupCommon)initWithConfig:(id)a3 audioCallback:(void *)a4 context:(void *)a5 audioDirection:(unsigned __int8)a6 stateQueue:(id)a7
{
  v8 = a6;
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VCAudioStreamGroupCommon;
  v12 = [(VCObject *)&v17 init];
  if (v12)
  {
    if (![VCAudioStreamGroupCommon isSupportedDirection:v8])
    {
      [VCAudioStreamGroupCommon initWithConfig:v12 audioCallback:v8 context:v18 audioDirection:? stateQueue:?];
      return v18[0];
    }

    v13 = [a3 audioStreamGroupConfig];
    v12->_isMuted = [v13 isMuted];
    v12->_processID = [v13 processID];
    v12->_isGKVoiceChat = [v13 isGKVoiceChat];
    v12->_preferredIOSampleRate = [v13 preferredIOSampleRate];
    v12->_preferredIOSamplesPerFrame = [v13 preferredIOSamplesPerFrame];
    v12->_audioSessionID = [v13 audioSessionID];
    v12->_powerSpectrumStreamToken = [v13 powerSpectrumStreamToken];
    v12->_captionsToken = [a3 streamToken];
    v12->_audioMachineLearningCoordinator = [v13 audioMachineLearningCoordinator];
    v12->_spatialAudioSourceID = [v13 spatialAudioSourceID];
    v12->_deviceRole = 0;
    v12->_participantUUID = [a3 participantUUID];
    v12->_streamGroupID = [a3 streamGroupID];
    v12->_audioType = -[VCAudioStreamGroupCommon audioTypeForCaptureSource:](v12, "audioTypeForCaptureSource:", [a3 captureSource]);
    v12->_direction = v8;
    v12->_callback = a4;
    v12->_context = a5;
    v12->_maxChannelCount = 1;
    v12->_audioChannelIndex = [v13 audioChannelIndex];
    v12->_operatingMode = 6;
    -[VCObject setLogPrefix:](v12, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"streamGroupID=%s participantUUID=%@ ", FourccToCStr(v12->_streamGroupID), v12->_participantUUID]);
    if (a7)
    {
      v14 = CFRetain(a7);
      v12->_stateQueue = v14;
      if (v14)
      {
        v12->_syncDestinationList.slh_first = 0;
        CMSimpleQueueCreate(*MEMORY[0x1E695E480], 10, &v12->_syncDestinationChangeEventQueue);
        if (v12->_syncDestinationChangeEventQueue)
        {
          Typed = VCMemoryPool_CreateTyped(0x10uLL, 0x10800407411B482);
          v12->_syncDestinationChangeEventPool = Typed;
          if (Typed)
          {
            return v12;
          }

          [VCAudioStreamGroupCommon initWithConfig:v12 audioCallback:v18 context:? audioDirection:? stateQueue:?];
        }

        else
        {
          [VCAudioStreamGroupCommon initWithConfig:v12 audioCallback:v18 context:? audioDirection:? stateQueue:?];
        }

        return v18[0];
      }
    }

    else
    {
      v12->_stateQueue = 0;
    }

    [VCAudioStreamGroupCommon initWithConfig:v12 audioCallback:v18 context:? audioDirection:? stateQueue:?];
    return v18[0];
  }

  return v12;
}

- (NSString)description
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCAudioStreamGroupCommon;
  v4 = [(VCAudioStreamGroupCommon *)&v8 description];
  v5 = FourccToCStr(self->_streamGroupID);
  if (self->_direction == 2)
  {
    v6 = "Send";
  }

  else
  {
    v6 = "Receive";
  }

  return [v3 stringWithFormat:@"{ %@ streamGroupID=%s %s Group }", v4, v5, v6];
}

- (unsigned)audioTypeForCaptureSource:(int)a3
{
  if (a3 > 0xB)
  {
    return 1;
  }

  else
  {
    return dword_1DBD45AB0[a3];
  }
}

- (void)flushSyncDestinationUpdatesEventQueue
{
  v3 = CMSimpleQueueDequeue(self->_syncDestinationChangeEventQueue);
  if (v3)
  {
    v4 = v3;
    do
    {
      VCMemoryPool_Free(self->_syncDestinationChangeEventPool, v4);
      v4 = CMSimpleQueueDequeue(self->_syncDestinationChangeEventQueue);
    }

    while (v4);
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  VCAudioBufferList_Destroy(&self->_sampleBuffer);

  self->_audioIO = 0;
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    CFRelease(stateQueue);
  }

  [(VCAudioStreamGroupCommon *)self cleanupStreams];
  [(VCAudioStreamGroupCommon *)self cleanupSyncDestinations];
  [(VCAudioStreamGroupCommon *)self cleanupPowerSpectrumSource];
  [(VCAudioStreamGroupCommon *)self flushSyncDestinationUpdatesEventQueue];
  VCMemoryPool_Destroy(self->_syncDestinationChangeEventPool);
  syncDestinationChangeEventQueue = self->_syncDestinationChangeEventQueue;
  if (syncDestinationChangeEventQueue)
  {
    CFRelease(syncDestinationChangeEventQueue);
    self->_syncDestinationChangeEventQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = VCAudioStreamGroupCommon;
  [(VCObject *)&v5 dealloc];
}

- (BOOL)configurePowerSpectrumSource
{
  v6 = *MEMORY[0x1E69E9840];
  if (!self->_audioPowerSpectrumSource)
  {
    v3 = [[VCAudioPowerSpectrumSource alloc] initWithStreamToken:self->_powerSpectrumStreamToken delegate:self];
    self->_audioPowerSpectrumSource = v3;
    if (!v3)
    {
      [(VCAudioStreamGroupCommon *)&v5 configurePowerSpectrumSource];
      return v5;
    }

    [+[VCAudioPowerSpectrumManager sharedInstance](VCAudioPowerSpectrumManager registerAudioPowerMeterSource:"registerAudioPowerMeterSource:", self->_audioPowerSpectrumSource];
  }

  return 1;
}

- (void)cleanupPowerSpectrumSource
{
  if (self->_audioPowerSpectrumSource)
  {
    v3 = +[VCAudioPowerSpectrumManager sharedInstance];
    -[VCAudioPowerSpectrumManager unregisterAudioPowerSpectrumSourceForStreamToken:](v3, "unregisterAudioPowerSpectrumSourceForStreamToken:", [MEMORY[0x1E696AD98] numberWithInteger:{-[VCAudioPowerSpectrumSource streamToken](self->_audioPowerSpectrumSource, "streamToken")}]);
    [(VCAudioPowerSpectrumSource *)self->_audioPowerSpectrumSource invalidate];

    self->_audioPowerSpectrumSource = 0;
  }
}

- (void)initCodecConfigurationsForStream:(tagVCAudioStreamGroupStream *)a3 withDefaultAudioConfig:(id)a4
{
  a3->var10 = CFDictionaryCreateCopy(0, [a4 codecConfigurations]);
  v6 = [a4 multiwayConfig];
  if (v6)
  {
    v7 = v6;
    if ([objc_msgSend(v6 "v2CodecConfigurations")])
    {
      [v7 v2CodecConfigurations];
      a3->var12 = 1;
    }

    FigCFCreateCombinedDictionary();
  }
}

- (void)setupStreamsWithStreamInfos:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  p_audioStreams = &self->_audioStreams;
  if (self->_audioStreams)
  {
    if (objc_opt_class() == self)
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
          v34 = "[VCAudioStreamGroupCommon setupStreamsWithStreamInfos:]";
          v35 = 1024;
          v36 = 256;
          v19 = " [%s] %s:%d Streams are already setup";
          v20 = v18;
          v21 = 28;
LABEL_35:
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v31, v21);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v31 = 136316162;
          v32 = v22;
          v33 = 2080;
          v34 = "[VCAudioStreamGroupCommon setupStreamsWithStreamInfos:]";
          v35 = 1024;
          v36 = 256;
          v37 = 2112;
          v38 = v5;
          v39 = 2048;
          v40 = self;
          v19 = " [%s] %s:%d %@(%p) Streams are already setup";
          v20 = v23;
          v21 = 48;
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v44 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v45;
      v10 = 1;
      do
      {
        v11 = 0;
        v12 = p_audioStreams;
        do
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v13 = *(*(&v44 + 1) + 8 * v11);
          p_audioStreams = malloc_type_malloc(0x50uLL, 0x10E00400BEC5DB2uLL);
          v14 = [v13 stream];
          *(p_audioStreams + 5) = v14;
          *(p_audioStreams + 2) = [v14 realtimeSourceContext];
          if (self->_direction == 1)
          {
            *(p_audioStreams + 3) = [*(p_audioStreams + 5) pullSamplesCallback];
          }

          v15 = [objc_msgSend(v13 "streamConfigs")];
          v16 = [v15 multiwayConfig];
          *(p_audioStreams + 16) = [v16 idsStreamID];
          *(p_audioStreams + 17) = [v16 v2StreamID];
          *(p_audioStreams + 8) = 0;
          *(p_audioStreams + 12) = [v16 maxNetworkBitrate];
          *(p_audioStreams + 13) = [v16 repairedMaxNetworkBitrate];
          *(p_audioStreams + 9) = [v15 isRTCPEnabled];
          *p_audioStreams = 0;
          *v12 = p_audioStreams;
          [(VCAudioStreamGroupCommon *)self initCodecConfigurationsForStream:p_audioStreams withDefaultAudioConfig:v15];
          if (v10 < [v15 channelCount])
          {
            v10 = [v15 channelCount];
          }

          ++v11;
          v12 = p_audioStreams;
        }

        while (v8 != v11);
        v8 = [a3 countByEnumeratingWithState:&v44 objects:v43 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 1;
    }

    self->_maxChannelCount = v10;
    _VCAudioStreamGroup_ApplyAudioPlayoutDelay(self);
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          maxChannelCount = self->_maxChannelCount;
          v31 = 136315906;
          v32 = v25;
          v33 = 2080;
          v34 = "[VCAudioStreamGroupCommon setupStreamsWithStreamInfos:]";
          v35 = 1024;
          v36 = 286;
          v37 = 1024;
          LODWORD(v38) = maxChannelCount;
          v19 = " [%s] %s:%d updated _maxChannelCount to channel count: %d";
          v20 = v26;
          v21 = 34;
          goto LABEL_35;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v30 = self->_maxChannelCount;
          v31 = 136316418;
          v32 = v28;
          v33 = 2080;
          v34 = "[VCAudioStreamGroupCommon setupStreamsWithStreamInfos:]";
          v35 = 1024;
          v36 = 286;
          v37 = 2112;
          v38 = v24;
          v39 = 2048;
          v40 = self;
          v41 = 1024;
          v42 = v30;
          v19 = " [%s] %s:%d %@(%p) updated _maxChannelCount to channel count: %d";
          v20 = v29;
          v21 = 54;
          goto LABEL_35;
        }
      }
    }
  }
}

- (void)cleanupStreams
{
  for (i = self->_audioStreams; i; i = self->_audioStreams)
  {
    var10 = i->var10;
    if (var10)
    {
      CFRelease(var10);
    }

    var11 = i->var11;
    if (var11)
    {
      CFRelease(var11);
    }

    self->_audioStreams = i->var0;
    free(i);
  }

  self->_audioStreams = 0;
}

- (BOOL)configureAudioIOWithDeviceRole:(int)a3 operatingMode:(int)a4
{
  v89 = *MEMORY[0x1E69E9840];
  VCAudioBufferList_Destroy(&self->_sampleBuffer);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v83 = v7;
  v84 = v7;
  v81 = v7;
  v82 = v7;
  v79 = v7;
  v80 = v7;
  v77 = v7;
  v78 = v7;
  v75 = v7;
  v76 = v7;
  audioSessionID = self->_audioSessionID;
  v73 = v7;
  v74 = v7;
  audioChannelIndex = self->_audioChannelIndex;
  v71 = v7;
  v72 = v7;
  v70[0] = audioSessionID;
  v70[1] = audioChannelIndex;
  v70[2] = a4;
  v70[3] = a3;
  v69 = a3;
  LODWORD(v71) = self->_audioType;
  WORD2(v71) = self->_direction;
  processID = self->_processID;
  preferredIOSampleRate = self->_preferredIOSampleRate;
  *(&v71 + 1) = self;
  preferredIOSamplesPerFrame = self->_preferredIOSamplesPerFrame;
  *&v72 = __PAIR64__(preferredIOSampleRate, processID);
  DWORD2(v72) = preferredIOSamplesPerFrame;
  spatialAudioSourceID = self->_spatialAudioSourceID;
  BYTE12(v72) = 0;
  *&v73 = spatialAudioSourceID;
  DWORD2(v73) = self->_maxChannelCount;
  v74 = 0uLL;
  *&v75 = 0;
  LOBYTE(preferredIOSampleRate) = self->_isVoiceActivityEnabled;
  BYTE8(v75) = self->_isMediaPriorityEnabled;
  BYTE9(v75) = preferredIOSampleRate;
  if (BYTE4(v71) == 1)
  {
    v14 = VCAudioStreamGroup_ProcessAudioSamples;
  }

  else
  {
    v14 = 0;
  }

  if (BYTE4(v71) == 1)
  {
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  *&v76 = 0;
  *(&v76 + 1) = v14;
  *&v77 = v15;
  if (BYTE4(v71) == 1)
  {
    captionsToken = self->_captionsToken;
    audioMachineLearningCoordinator = self->_audioMachineLearningCoordinator;
  }

  else
  {
    captionsToken = 0;
    audioMachineLearningCoordinator = 0;
  }

  *(&v77 + 1) = captionsToken;
  v78 = audioMachineLearningCoordinator;
  *&v79 = 0;
  if (BYTE4(v71) == 2)
  {
    v18 = VCAudioStreamGroup_ProcessAudioSamples;
  }

  else
  {
    v18 = 0;
  }

  if (BYTE4(v71) == 2)
  {
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  *(&v79 + 1) = v18;
  *&v80 = v19;
  if (BYTE4(v71) == 2)
  {
    v20 = self->_captionsToken;
    v21 = self->_audioMachineLearningCoordinator;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  *(&v80 + 1) = v20;
  v81 = v21;
  *&v82 = 0;
  WORD4(v82) = 0;
  v83 = 0uLL;
  *&v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
  BYTE8(v84) = 0;
  audioIO = self->_audioIO;
  if (audioIO)
  {
    if (![(VCAudioIO *)audioIO reconfigureWithConfig:v70])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_59;
        }

        v45 = VRTraceErrorLogLevelToCSTR();
        v46 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        v47 = self->_audioIO;
        direction = self->_direction;
        v49 = self->_audioChannelIndex;
        v50 = self->_spatialAudioSourceID;
        *buf = 136317186;
        *&buf[4] = v45;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioStreamGroupCommon configureAudioIOWithDeviceRole:operatingMode:]";
        *&buf[22] = 1024;
        *&buf[24] = 346;
        *&buf[28] = 2048;
        *&buf[30] = v47;
        *&buf[38] = 1024;
        *&buf[40] = a4;
        *&buf[44] = 1024;
        *&buf[46] = v69;
        *&buf[50] = 1024;
        *&buf[52] = direction;
        *&buf[56] = 1024;
        *&buf[58] = v49;
        *&buf[62] = 2048;
        *&buf[64] = v50;
        v51 = " [%s] %s:%d Failed to reconfigure: audioIO=%p operatingMode=%d deviceRole=%d direction=%d audioChannelIndex=%u spatialToken=%llu";
        v52 = v46;
        v53 = 72;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v23 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
        }

        else
        {
          v23 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_59;
        }

        v54 = VRTraceErrorLogLevelToCSTR();
        v55 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        v56 = self->_audioIO;
        v57 = self->_direction;
        v58 = self->_audioChannelIndex;
        v59 = self->_spatialAudioSourceID;
        *buf = 136317698;
        *&buf[4] = v54;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioStreamGroupCommon configureAudioIOWithDeviceRole:operatingMode:]";
        *&buf[22] = 1024;
        *&buf[24] = 346;
        *&buf[28] = 2112;
        *&buf[30] = v23;
        *&buf[38] = 2048;
        *&buf[40] = self;
        *&buf[48] = 2048;
        *&buf[50] = v56;
        *&buf[58] = 1024;
        *&buf[60] = a4;
        *&buf[64] = 1024;
        *&buf[66] = v69;
        *&buf[70] = 1024;
        *&buf[72] = v57;
        *&buf[76] = 1024;
        *&buf[78] = v58;
        *&buf[82] = 2048;
        *&buf[84] = v59;
        v51 = " [%s] %s:%d %@(%p) Failed to reconfigure: audioIO=%p operatingMode=%d deviceRole=%d direction=%d audioChannelIndex=%u spatialToken=%llu";
        v52 = v55;
        v53 = 92;
      }

      goto LABEL_58;
    }
  }

  else
  {
    v24 = [[VCAudioIO alloc] initWithConfiguration:v70];
    self->_audioIO = v24;
    if (!v24)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_59;
        }

        v60 = VRTraceErrorLogLevelToCSTR();
        v61 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        v62 = self->_direction;
        *buf = 136316418;
        *&buf[4] = v60;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioStreamGroupCommon configureAudioIOWithDeviceRole:operatingMode:]";
        *&buf[22] = 1024;
        *&buf[24] = 338;
        *&buf[28] = 1024;
        *&buf[30] = a4;
        *&buf[34] = 1024;
        *&buf[36] = a3;
        *&buf[40] = 1024;
        *&buf[42] = v62;
        v51 = " [%s] %s:%d Failed to create audioIO. operatingMode=%d deviceRole=%d direction=%d";
        v52 = v61;
        v53 = 46;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v44 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
        }

        else
        {
          v44 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_59;
        }

        v63 = VRTraceErrorLogLevelToCSTR();
        v64 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        v65 = self->_direction;
        *buf = 136316930;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioStreamGroupCommon configureAudioIOWithDeviceRole:operatingMode:]";
        *&buf[22] = 1024;
        *&buf[24] = 338;
        *&buf[28] = 2112;
        *&buf[30] = v44;
        *&buf[38] = 2048;
        *&buf[40] = self;
        *&buf[48] = 1024;
        *&buf[50] = a4;
        *&buf[54] = 1024;
        *&buf[56] = a3;
        *&buf[60] = 1024;
        *&buf[62] = v65;
        v51 = " [%s] %s:%d %@(%p) Failed to create audioIO. operatingMode=%d deviceRole=%d direction=%d";
        v52 = v64;
        v53 = 66;
      }

LABEL_58:
      _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, v51, buf, v53);
      goto LABEL_59;
    }

    [(VCAudioIO *)v24 setIsGKVoiceChat:self->_isGKVoiceChat];
    [(VCAudioStreamGroupCommon *)self setMuted:self->_isMuted];
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    memset(buf, 0, sizeof(buf));
    AUIOGetAUNumber(&v88);
    [(VCAudioIO *)self->_audioIO setFarEndVersionInfo:buf];
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_audioIO;
        v67 = self->_direction;
        v29 = [(VCAudioStreamGroupCommon *)self isMuted];
        audioType = self->_audioType;
        maxChannelCount = self->_maxChannelCount;
        v32 = self->_audioChannelIndex;
        *buf = 136317698;
        *&buf[4] = v26;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioStreamGroupCommon configureAudioIOWithDeviceRole:operatingMode:]";
        *&buf[22] = 1024;
        *&buf[24] = 348;
        *&buf[28] = 2048;
        *&buf[30] = v28;
        *&buf[38] = 1024;
        *&buf[40] = a4;
        *&buf[44] = 1024;
        *&buf[46] = a3;
        *&buf[50] = 1024;
        *&buf[52] = v67;
        *&buf[56] = 1024;
        *&buf[58] = v29;
        *&buf[62] = 1024;
        *&buf[64] = audioType;
        *&buf[68] = 1024;
        *&buf[70] = maxChannelCount;
        *&buf[74] = 1024;
        *&buf[76] = v32;
        v33 = " [%s] %s:%d configured audioIO=%p operatingMode=%d deviceRole=%d direction=%d isMuted=%d audioType=%d maxChannelCount=%d audioChannelIndex=%u";
        v34 = v27;
        v35 = 80;
LABEL_36:
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v66 = a4;
        v38 = self->_audioIO;
        v68 = self->_direction;
        v39 = [(VCAudioStreamGroupCommon *)self isMuted];
        v40 = self->_audioType;
        v41 = self->_maxChannelCount;
        v42 = self->_audioChannelIndex;
        *buf = 136318210;
        *&buf[4] = v36;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioStreamGroupCommon configureAudioIOWithDeviceRole:operatingMode:]";
        *&buf[22] = 1024;
        *&buf[24] = 348;
        *&buf[28] = 2112;
        *&buf[30] = v25;
        *&buf[38] = 2048;
        *&buf[40] = self;
        *&buf[48] = 2048;
        *&buf[50] = v38;
        *&buf[58] = 1024;
        *&buf[60] = v66;
        *&buf[64] = 1024;
        *&buf[66] = a3;
        *&buf[70] = 1024;
        *&buf[72] = v68;
        *&buf[76] = 1024;
        *&buf[78] = v39;
        *&buf[82] = 1024;
        *&buf[84] = v40;
        *&buf[88] = 1024;
        *&buf[90] = v41;
        *&buf[94] = 1024;
        LODWORD(v86) = v42;
        v33 = " [%s] %s:%d %@(%p) configured audioIO=%p operatingMode=%d deviceRole=%d direction=%d isMuted=%d audioType=%d maxChannelCount=%d audioChannelIndex=%u";
        v34 = v37;
        v35 = 100;
        goto LABEL_36;
      }
    }
  }

  VCAudioBufferList_AllocateFrame([(VCAudioIO *)self->_audioIO clientFormat], &self->_sampleBuffer);
  if (!self->_sampleBuffer)
  {
    [VCAudioStreamGroupCommon configureAudioIOWithDeviceRole:? operatingMode:?];
LABEL_59:

    result = 0;
    self->_audioIO = 0;
    return result;
  }

  return 1;
}

- (BOOL)reconfigureAudioIOIfNeededWithDeviceRole:(int)a3 operatingMode:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v12 = *MEMORY[0x1E69E9840];
  v7 = dispatch_semaphore_create(0);
  if ([(VCAudioIO *)self->_audioIO state]!= 2)
  {
    if ([(VCAudioStreamGroupCommon *)self configureAudioIOWithDeviceRole:v5 operatingMode:v4])
    {
      goto LABEL_7;
    }

LABEL_9:
    [VCAudioStreamGroupCommon reconfigureAudioIOIfNeededWithDeviceRole:v11 operatingMode:?];
    v8 = v11[0];
    goto LABEL_8;
  }

  if ([(VCAudioIO *)self->_audioIO stop])
  {
    [VCAudioStreamGroupCommon reconfigureAudioIOIfNeededWithDeviceRole:? operatingMode:?];
    v8 = v10;
    goto LABEL_8;
  }

  if (![(VCAudioStreamGroupCommon *)self configureAudioIOWithDeviceRole:v5 operatingMode:v4])
  {
    goto LABEL_9;
  }

  if (![(VCAudioIO *)self->_audioIO start])
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  [VCAudioStreamGroupCommon reconfigureAudioIOIfNeededWithDeviceRole:? operatingMode:?];
  v8 = v11[1];
LABEL_8:
  dispatch_release(v7);
  return v8;
}

- (BOOL)addSyncDestination:(id)a3 shouldSchedule:(BOOL)a4
{
  if (a4)
  {
    return [(VCAudioStreamGroupCommon *)self enqueueSyncDestinationChangeEvent:a3 eventType:1];
  }

  else
  {
    return _VCAudioStreamGroup_AddSyncDestination(self, a3);
  }
}

- (BOOL)removeSyncDestination:(id)a3 shouldSchedule:(BOOL)a4
{
  if (a4)
  {
    return [(VCAudioStreamGroupCommon *)self enqueueSyncDestinationChangeEvent:a3 eventType:2];
  }

  else
  {
    return _VCAudioStreamGroup_RemoveSyncDestination(self, a3);
  }
}

- (void)updateVoiceActivityEnabled:(BOOL)a3 isMediaPriorityEnabled:(BOOL)a4
{
  if (self->_isVoiceActivityEnabled != a3 || self->_isMediaPriorityEnabled != a4)
  {
    self->_isVoiceActivityEnabled = a3;
    self->_isMediaPriorityEnabled = a4;
    [(VCAudioIO *)self->_audioIO updateVoiceActivityEnabled:self->_isVoiceActivityEnabled isMediaPriorityEnabled:?];
  }
}

- (id)startCapture
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIO = self->_audioIO;
        *v14 = 136316162;
        *&v14[4] = v4;
        *&v14[12] = 2080;
        *&v14[14] = "[VCAudioStreamGroupCommon startCapture]";
        *&v14[22] = 1024;
        LODWORD(v15) = 482;
        WORD2(v15) = 2048;
        *(&v15 + 6) = self;
        HIWORD(v15) = 2048;
        v16 = audioIO;
        v7 = " [%s] %s:%d (%p) starting audioIO=%p";
        v8 = v5;
        v9 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v14, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
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
        v12 = self->_audioIO;
        *v14 = 136316674;
        *&v14[4] = v10;
        *&v14[12] = 2080;
        *&v14[14] = "[VCAudioStreamGroupCommon startCapture]";
        *&v14[22] = 1024;
        LODWORD(v15) = 482;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v3;
        HIWORD(v15) = 2048;
        v16 = self;
        *v17 = 2048;
        *&v17[2] = self;
        *&v17[10] = 2048;
        *&v17[12] = v12;
        v7 = " [%s] %s:%d %@(%p) (%p) starting audioIO=%p";
        v8 = v11;
        v9 = 68;
        goto LABEL_11;
      }
    }
  }

  return [(VCAudioIO *)self->_audioIO start:*v14];
}

- (id)stopCapture
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIO = self->_audioIO;
        *v22 = 136315906;
        *&v22[4] = v4;
        *&v22[12] = 2080;
        *&v22[14] = "[VCAudioStreamGroupCommon stopCapture]";
        *&v22[22] = 1024;
        LODWORD(v23) = 493;
        WORD2(v23) = 2048;
        *(&v23 + 6) = audioIO;
        v7 = " [%s] %s:%d Stopping audioIO=%p";
        v8 = v5;
        v9 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v22, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
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
        v12 = self->_audioIO;
        *v22 = 136316418;
        *&v22[4] = v10;
        *&v22[12] = 2080;
        *&v22[14] = "[VCAudioStreamGroupCommon stopCapture]";
        *&v22[22] = 1024;
        LODWORD(v23) = 493;
        WORD2(v23) = 2112;
        *(&v23 + 6) = v3;
        HIWORD(v23) = 2048;
        v24 = self;
        LOWORD(v25) = 2048;
        *(&v25 + 2) = v12;
        v7 = " [%s] %s:%d %@(%p) Stopping audioIO=%p";
        v8 = v11;
        v9 = 58;
        goto LABEL_11;
      }
    }
  }

  if ([(VCAudioIO *)self->_audioIO state:*v22]== 2)
  {
    return [(VCAudioIO *)self->_audioIO stop];
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *v22 = 136315650;
    *&v22[4] = v15;
    *&v22[12] = 2080;
    *&v22[14] = "[VCAudioStreamGroupCommon stopCapture]";
    *&v22[22] = 1024;
    LODWORD(v23) = 501;
    v17 = " [%s] %s:%d audioIO already stopped";
    v18 = v16;
    v19 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *v22 = 136316162;
    *&v22[4] = v20;
    *&v22[12] = 2080;
    *&v22[14] = "[VCAudioStreamGroupCommon stopCapture]";
    *&v22[22] = 1024;
    LODWORD(v23) = 501;
    WORD2(v23) = 2112;
    *(&v23 + 6) = v14;
    HIWORD(v23) = 2048;
    v24 = self;
    v17 = " [%s] %s:%d %@(%p) audioIO already stopped";
    v18 = v21;
    v19 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v22, v19);
  return 0;
}

- (void)setMuted:(BOOL)a3
{
  self->_isMuted = a3;
  audioIO = self->_audioIO;
  if (audioIO)
  {
    direction = self->_direction;
    if (direction == 1)
    {
      [(VCAudioIO *)audioIO setSourceMuted:?];
    }

    else if (direction == 2)
    {
      [(VCAudioIO *)audioIO setMuted:?];
    }
  }
}

- (BOOL)configureStreams:(id)a3 withRateControlConfig:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (![(VCAudioStreamGroupCommon *)self configurePowerSpectrumSource:a3])
  {
    [VCAudioStreamGroupCommon configureStreams:? withRateControlConfig:?];
    goto LABEL_22;
  }

  [(VCAudioStreamGroupCommon *)self setupStreamsWithStreamInfos:a3];
  if (![(VCAudioStreamGroupCommon *)self configureAudioIOWithDeviceRole:self->_deviceRole operatingMode:self->_operatingMode])
  {
LABEL_22:
    [VCAudioStreamGroupCommon configureStreams:? withRateControlConfig:?];
    return 0;
  }

  deviceRole = self->_deviceRole;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    obj = a3;
    v20 = *v28;
    if (deviceRole == 3)
    {
      v9 = 6;
    }

    else
    {
      v9 = 5;
    }

    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = [v11 streamConfigs];
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v22 + 1) + 8 * j);
              [v17 setAudioStreamMode:v9];
              [v17 setShouldApplyRedAsBoolean:1];
              [v17 setExternalIOFormat:-[VCAudioIO clientFormat](self->_audioIO, "clientFormat")];
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v21 count:16];
          }

          while (v14);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v8);
  }

  return 1;
}

- (void)collectAndLogChannelMetrics:(id *)a3 averagePower:(float)a4
{
  v58 = *MEMORY[0x1E69E9840];
  audioStreams = self->_audioStreams;
  if (audioStreams)
  {
    v7 = a4;
    *&v8 = 136317698;
    v33 = v8;
    do
    {
      var7 = audioStreams->var7;
      v57 = 0;
      memset(v56, 0, sizeof(v56));
      if (self->_direction == 2)
      {
        [var7 collectTxChannelMetrics:v56];
      }

      else
      {
        [var7 collectRxChannelMetrics:v56];
      }

      VCMediaChannelMetrics_Sum(a3, v56);
      v10 = HIDWORD(v57);
      v11 = v10 - [var7 lastNoVoiceActivityPacketCount];
      [var7 setLastNoVoiceActivityPacketCount:HIDWORD(v57)];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_20;
        }

        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v27 = "Receive";
        if (self->_direction == 2)
        {
          v27 = "Send";
        }

        v36 = v27;
        v28 = [objc_msgSend(objc_msgSend(var7 defaultStreamConfig];
        v29 = v56[0];
        audioIO = self->_audioIO;
        processedFramesCount = self->_processedFramesCount;
        v32 = [(VCAudioIO *)audioIO state];
        *buf = v33;
        v38 = v25;
        v39 = 2080;
        v40 = "[VCAudioStreamGroupCommon collectAndLogChannelMetrics:averagePower:]";
        v41 = 1024;
        v42 = 593;
        v43 = 2080;
        v44 = v36;
        v45 = 1024;
        *v46 = v28;
        *&v46[4] = 1024;
        *&v46[6] = v29;
        *v47 = 2048;
        *&v47[2] = audioIO;
        *v48 = 1024;
        *&v48[2] = processedFramesCount;
        LOWORD(v49) = 2048;
        *(&v49 + 2) = v7;
        WORD5(v49) = 1024;
        HIDWORD(v49) = v32;
        *v50 = 1024;
        *&v50[2] = v11;
        v22 = v26;
        v23 = " [%s] %s:%d Health Monitor for Audio Stream %s Group streamID=%u audio=%ukbps VCAudioIO=%p procsCount=%u averagePower=%f state=%d noVoiceActivityPacketCount=%u";
        v24 = 88;
      }

      else
      {
        v12 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v12 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_20;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v15 = "Receive";
        if (self->_direction == 2)
        {
          v15 = "Send";
        }

        v35 = v15;
        v16 = [objc_msgSend(objc_msgSend(var7 defaultStreamConfig];
        v34 = v11;
        v17 = a3;
        v18 = v56[0];
        v19 = self->_audioIO;
        v20 = self->_processedFramesCount;
        v21 = [(VCAudioIO *)v19 state];
        *buf = 136318210;
        v38 = v13;
        v39 = 2080;
        v40 = "[VCAudioStreamGroupCommon collectAndLogChannelMetrics:averagePower:]";
        v41 = 1024;
        v42 = 593;
        v43 = 2112;
        v44 = v12;
        v45 = 2048;
        *v46 = self;
        *&v46[8] = 2080;
        *v47 = v35;
        *&v47[8] = 1024;
        *v48 = v16;
        *&v48[4] = 1024;
        LODWORD(v49) = v18;
        a3 = v17;
        WORD2(v49) = 2048;
        *(&v49 + 6) = v19;
        HIWORD(v49) = 1024;
        *v50 = v20;
        *&v50[4] = 2048;
        v51 = v7;
        v52 = 1024;
        v53 = v21;
        v54 = 1024;
        v55 = v34;
        v22 = v14;
        v23 = " [%s] %s:%d %@(%p) Health Monitor for Audio Stream %s Group streamID=%u audio=%ukbps VCAudioIO=%p procsCount=%u averagePower=%f state=%d noVoiceActivityPacketCount=%u";
        v24 = 108;
      }

      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
LABEL_20:
      audioStreams = audioStreams->var0;
    }

    while (audioStreams);
  }
}

- (BOOL)enqueueSyncDestinationChangeEvent:(id)a3 eventType:(int)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = VCMemoryPool_Alloc(self->_syncDestinationChangeEventPool);
    *(v7 + 1) = a3;
    *v7 = a4;
    v8 = CMSimpleQueueEnqueue(self->_syncDestinationChangeEventQueue, v7);
    if (v8)
    {
      v9 = v8;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [(VCAudioStreamGroupCommon *)v12 enqueueSyncDestinationChangeEvent:v9 eventType:v13];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
        }

        else
        {
          v10 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v16 = 136316418;
            v17 = v14;
            v18 = 2080;
            v19 = "[VCAudioStreamGroupCommon enqueueSyncDestinationChangeEvent:eventType:]";
            v20 = 1024;
            v21 = 607;
            v22 = 2112;
            v23 = v10;
            v24 = 2048;
            v25 = self;
            v26 = 1024;
            v27 = v9;
            _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Error adding sync destination change event to the queue. error=%d", &v16, 0x36u);
          }
        }
      }

      VCMemoryPool_Free(self->_syncDestinationChangeEventPool, v7);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    [VCAudioStreamGroupCommon enqueueSyncDestinationChangeEvent:? eventType:?];
    return v16;
  }
}

- (void)didSuspendAudioIO:(id)a3
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
        v16 = "[VCAudioStreamGroupCommon didSuspendAudioIO:]";
        v17 = 1024;
        v18 = 618;
        v19 = 2048;
        v20 = a3;
        v8 = " [%s] %s:%d audioIO=%p";
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
      v5 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
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
        v16 = "[VCAudioStreamGroupCommon didSuspendAudioIO:]";
        v17 = 1024;
        v18 = 618;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 2048;
        v24 = a3;
        v8 = " [%s] %s:%d %@(%p) audioIO=%p";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)didResumeAudioIO:(id)a3
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
        v16 = "[VCAudioStreamGroupCommon didResumeAudioIO:]";
        v17 = 1024;
        v18 = 622;
        v19 = 2048;
        v20 = a3;
        v8 = " [%s] %s:%d audioIO=%p";
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
      v5 = [(VCAudioStreamGroupCommon *)self performSelector:sel_logPrefix];
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
        v16 = "[VCAudioStreamGroupCommon didResumeAudioIO:]";
        v17 = 1024;
        v18 = 622;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 2048;
        v24 = a3;
        v8 = " [%s] %s:%d %@(%p) audioIO=%p";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)sendAudioPowerSpectrumSourceRegistration:(BOOL)a3
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"VCSPUUID", self->_participantUUID);
  CFDictionaryAddValue(Mutable, @"VCSPAPSReg", [MEMORY[0x1E696AD98] numberWithBool:v3]);
  [(VCObject *)self reportingAgent];
  reportingGenericEvent();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioStreamGroupCommon didUpdateBasebandCodec:v3];
    }
  }
}

- (void)cleanupSyncDestinations
{
  p_syncDestinationList = &self->_syncDestinationList;
  slh_first = self->_syncDestinationList.slh_first;
  if (slh_first)
  {
    do
    {
      v4 = p_syncDestinationList->slh_first;
      if (p_syncDestinationList->slh_first == slh_first)
      {
        v6 = p_syncDestinationList;
      }

      else
      {
        do
        {
          v5 = v4;
          v4 = *(v4 + 2);
        }

        while (v4 != slh_first);
        v6 = (v5 + 16);
      }

      v7 = *(slh_first + 2);
      v6->slh_first = *(v4 + 16);

      free(slh_first);
      slh_first = v7;
    }

    while (v7);
  }
}

- (BOOL)setDeviceRole:(int)a3 operatingMode:(int)a4
{
  if (self->_deviceRole == a3 && self->_operatingMode == a4)
  {
    goto LABEL_5;
  }

  v7 = [(VCAudioStreamGroupCommon *)self reconfigureAudioIOIfNeededWithDeviceRole:*&a3 operatingMode:*&a4];
  if (v7)
  {
    self->_deviceRole = a3;
    self->_operatingMode = a4;
LABEL_5:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)initWithConfig:(void *)a3 audioCallback:context:audioDirection:stateQueue:.cold.1(void *a1, unsigned __int8 a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_28())
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCAudioStreamGroupCommon initWithConfig:audioCallback:context:audioDirection:stateQueue:]";
      v11 = 1024;
      v12 = 102;
      v13 = 1024;
      v14 = a2;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid direction %d", &v7, 0x22u);
    }
  }

  *a3 = 0;
}

- (void)initWithConfig:(void *)a1 audioCallback:(void *)a2 context:audioDirection:stateQueue:.cold.2(void *a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    }
  }

  *a2 = 0;
}

- (void)initWithConfig:(void *)a1 audioCallback:(void *)a2 context:audioDirection:stateQueue:.cold.3(void *a1, void *a2)
{
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [0 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)initWithConfig:(void *)a1 audioCallback:(void *)a2 context:audioDirection:stateQueue:.cold.4(void *a1, void *a2)
{
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [0 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)configurePowerSpectrumSource
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

- (void)configureAudioIOWithDeviceRole:(void *)a1 operatingMode:.cold.1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v2;
        OUTLINED_FUNCTION_0();
        v10 = 351;
        v4 = " [%s] %s:%d Failed to create sample buffer";
        v5 = v3;
        v6 = 28;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v4, &v8, v6);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_4();
        v11 = a1;
        v4 = " [%s] %s:%d %@(%p) Failed to create sample buffer";
        v5 = v7;
        v6 = 48;
        goto LABEL_10;
      }
    }
  }
}

- (void)reconfigureAudioIOIfNeededWithDeviceRole:(void *)a1 operatingMode:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
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
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_11_3();
}

- (void)reconfigureAudioIOIfNeededWithDeviceRole:(void *)a1 operatingMode:(_BYTE *)a2 .cold.2(void *a1, _BYTE *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
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
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)reconfigureAudioIOIfNeededWithDeviceRole:(void *)a1 operatingMode:.cold.3(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
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
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_11_3();
}

- (void)configureStreams:(void *)a1 withRateControlConfig:.cold.1(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315650;
    v11 = v2;
    OUTLINED_FUNCTION_0();
    v12 = 557;
    v4 = &dword_1DB56E000;
    v5 = " [%s] %s:%d Failed to configure the power spectrum source";
    v6 = &v10;
    v7 = v3;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 28;
LABEL_11:
    _os_log_error_impl(v4, v7, v8, v5, v6, v9);
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
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_4();
      v13 = a1;
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)enqueueSyncDestinationChangeEvent:(os_log_t)log eventType:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCAudioStreamGroupCommon enqueueSyncDestinationChangeEvent:eventType:]";
  v7 = 1024;
  v8 = 607;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error adding sync destination change event to the queue. error=%d", &v3, 0x22u);
}

- (void)enqueueSyncDestinationChangeEvent:(_BYTE *)a1 eventType:.cold.2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 1;
}

- (void)didUpdateBasebandCodec:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 648;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unexpected SPI call", &v2, 0x1Cu);
}

@end