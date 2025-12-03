@interface VCAudioStreamReceiveGroup
- (BOOL)addSyncDestination:(id)destination;
- (BOOL)configureStreams;
- (BOOL)removeSyncDestination:(id)destination;
- (BOOL)setDeviceRole:(int)role operatingMode:(int)mode;
- (VCAudioStreamReceiveGroup)initWithConfig:(id)config;
- (VCMediaStreamSyncSource)syncSource;
- (id)willStart;
- (unint64_t)spatialAudioSourceID;
- (unsigned)audioChannelIndex;
- (unsigned)preferredOverlayToken;
- (void)collectAndLogChannelMetrics:(id *)metrics;
- (void)dealloc;
- (void)didStart;
- (void)distributeOverlayToken;
- (void)mediaStream:(id)stream didReceiveNewMediaKeyIndex:(id)index;
- (void)setActiveStreamIDs:(id)ds;
- (void)setAudioChannelIndex:(unsigned int)index;
- (void)setMuted:(BOOL)muted;
- (void)setPowerSpectrumEnabled:(BOOL)enabled;
- (void)setReportingAgent:(opaqueRTCReporting *)agent;
- (void)setSpatialAudioSourceID:(unint64_t)d;
- (void)setVADFilteringEnabled:(BOOL)enabled;
- (void)updateActiveVoiceOnly:(BOOL)only;
- (void)vcMediaStream:(id)stream didReceiveFirstFrameWithTime:(id *)time;
- (void)vcMediaStream:(id)stream didSwitchToAudioStreamWithID:(unsigned __int16)d;
- (void)vcMediaStream:(id)stream remoteMediaStalled:(BOOL)stalled duration:(double)duration;
@end

@implementation VCAudioStreamReceiveGroup

- (VCAudioStreamReceiveGroup)initWithConfig:(id)config
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCAudioStreamReceiveGroup;
  v4 = [(VCMediaStreamReceiveGroup *)&v7 initWithConfig:?];
  if (!v4)
  {
    goto LABEL_7;
  }

  v4->_common = [[VCAudioStreamGroupCommon alloc] initWithConfig:config audioCallback:VCAudioStreamReceiveGroup_PullAudioSamples context:v4 audioDirection:1 stateQueue:v4->super.super._stateQueue];
  [(VCObject *)v4->_common setLogPrefix:[(VCObject *)v4 logPrefix]];
  if (!v4->_common)
  {
    [VCAudioStreamReceiveGroup initWithConfig:v4];
LABEL_7:

    return 0;
  }

  v5 = objc_opt_new();
  v4->_syncGroupIdToOverlayTokenMap = v5;
  if (!v5)
  {
    [VCAudioStreamReceiveGroup initWithConfig:v4];
    goto LABEL_7;
  }

  v4->_currentOverlayToken = 0;
  v4->_didPullSamplesCallback = [objc_msgSend(config "audioStreamGroupConfig")];
  v4->_didPullSamplesCallbackContext = [objc_msgSend(config "audioStreamGroupConfig")];
  [(VCMediaStreamGroup *)v4 setCaptureController:v4];
  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioStreamReceiveGroup;
  [(VCMediaStreamReceiveGroup *)&v3 dealloc];
}

- (BOOL)setDeviceRole:(int)role operatingMode:(int)mode
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  stateQueue = self->super.super._stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VCAudioStreamReceiveGroup_setDeviceRole_operatingMode___block_invoke;
  v7[3] = &unk_1E85F3930;
  v7[4] = self;
  v7[5] = &v10;
  roleCopy = role;
  modeCopy = mode;
  dispatch_sync(stateQueue, v7);
  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __57__VCAudioStreamReceiveGroup_setDeviceRole_operatingMode___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 480) setDeviceRole:*(a1 + 48) operatingMode:*(a1 + 52)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setPowerSpectrumEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCAudioStreamReceiveGroup_setPowerSpectrumEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_sync(stateQueue, block);
}

- (unsigned)audioChannelIndex
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCAudioStreamReceiveGroup_audioChannelIndex__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __46__VCAudioStreamReceiveGroup_audioChannelIndex__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 480) audioChannelIndex];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setAudioChannelIndex:(unsigned int)index
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCAudioStreamReceiveGroup_setAudioChannelIndex___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  indexCopy = index;
  dispatch_sync(stateQueue, block);
}

- (unint64_t)spatialAudioSourceID
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCAudioStreamReceiveGroup_spatialAudioSourceID__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __49__VCAudioStreamReceiveGroup_spatialAudioSourceID__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 480) spatialAudioSourceID];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setSpatialAudioSourceID:(unint64_t)d
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCAudioStreamReceiveGroup_setSpatialAudioSourceID___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = d;
  dispatch_sync(stateQueue, block);
}

- (void)setMuted:(BOOL)muted
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VCAudioStreamReceiveGroup_setMuted___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  mutedCopy = muted;
  dispatch_sync(stateQueue, block);
}

- (void)collectAndLogChannelMetrics:(id *)metrics
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(VCMediaStreamGroup *)self state]== 1)
  {
    *&v5 = self->_averageOutputPower;
    [(VCAudioStreamGroupCommon *)self->_common collectAndLogChannelMetrics:metrics averagePower:v5];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        logPrefix = [(VCObject *)self logPrefix];
        speakerProcsCalled = self->_speakerProcsCalled;
        syncTargetCalled = self->_syncTargetCalled;
        averageOutputPower = self->_averageOutputPower;
        v12 = 136316674;
        v13 = v6;
        v14 = 2080;
        v15 = "[VCAudioStreamReceiveGroup collectAndLogChannelMetrics:]";
        v16 = 1024;
        v17 = 165;
        v18 = 2112;
        v19 = logPrefix;
        v20 = 2048;
        v21 = speakerProcsCalled;
        v22 = 2048;
        v23 = averageOutputPower;
        v24 = 2048;
        v25 = syncTargetCalled;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCAudioStreamReceiveGroup %@ speakerProcsCalled=%ld, averageOutputPower=%f, syncTargetCalled=%ld", &v12, 0x44u);
      }
    }
  }
}

- (void)setReportingAgent:(opaqueRTCReporting *)agent
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCAudioStreamReceiveGroup_setReportingAgent___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = agent;
  dispatch_sync(stateQueue, block);
}

uint64_t __47__VCAudioStreamReceiveGroup_setReportingAgent___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = VCAudioStreamReceiveGroup;
  objc_msgSendSuper2(&v4, sel_setReportingAgent_, v2);
  return [*(*(a1 + 32) + 480) setReportingAgent:*(a1 + 40)];
}

- (void)setActiveStreamIDs:(id)ds
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VCAudioStreamReceiveGroup_setActiveStreamIDs___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = ds;
  block[5] = self;
  dispatch_sync(stateQueue, block);
}

uint64_t __48__VCAudioStreamReceiveGroup_setActiveStreamIDs___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (([v7 isEqual:*(*(a1 + 40) + 440)] & 1) == 0)
        {
          [objc_msgSend(*(*(a1 + 40) + 184) objectForKeyedSubscript:{v7), "setTargetStreamID:", v7}];
          [*(a1 + 40) setOptedInStreamID:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)setVADFilteringEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCAudioStreamReceiveGroup_setVADFilteringEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(stateQueue, block);
}

- (void)updateActiveVoiceOnly:(BOOL)only
{
  onlyCopy = only;
  v38 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->super.super._mediaStreamInfoArray;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v35;
    *&v6 = 136316162;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        stream = [*(*(&v34 + 1) + 8 * i) stream];
        [stream setSendActiveVoiceOnly:onlyCopy];
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v19;
              v22 = v17;
              v23 = 2080;
              v24 = "[VCAudioStreamReceiveGroup updateActiveVoiceOnly:]";
              v25 = 1024;
              v26 = 204;
              v27 = 1024;
              *v28 = onlyCopy;
              *&v28[4] = 2112;
              *&v28[6] = stream;
              v14 = v18;
              v15 = " [%s] %s:%d Send active voice only set to %d for stream=%@";
              v16 = 44;
              goto LABEL_15;
            }
          }
        }

        else
        {
          v11 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v11 = [(VCAudioStreamReceiveGroup *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316674;
              v22 = v12;
              v23 = 2080;
              v24 = "[VCAudioStreamReceiveGroup updateActiveVoiceOnly:]";
              v25 = 1024;
              v26 = 204;
              v27 = 2112;
              *v28 = v11;
              *&v28[8] = 2048;
              *&v28[10] = self;
              v29 = 1024;
              v30 = onlyCopy;
              v31 = 2112;
              v32 = stream;
              v14 = v13;
              v15 = " [%s] %s:%d %@(%p) Send active voice only set to %d for stream=%@";
              v16 = 64;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
              continue;
            }
          }
        }
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v7);
  }
}

- (id)willStart
{
  [(VCAudioStreamGroupCommon *)self->_common startAudioDump];
  self->_averageOutputPower = NAN;
  return 0;
}

- (void)didStart
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  selfCopy = self;
  OUTLINED_FUNCTION_6_5();
  v5 = "[VCAudioStreamReceiveGroup didStart]";
  v6 = 1024;
  v7 = 218;
  v8 = 2112;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d System audio start capture failed on receive stream group with error=%@", &v3, 0x26u);
}

- (BOOL)addSyncDestination:(id)destination
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  stateQueue = self->super.super._stateQueue;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VCAudioStreamReceiveGroup_addSyncDestination___block_invoke;
  v6[3] = &unk_1E85F4108;
  v6[5] = self;
  v6[6] = &v7;
  v6[4] = destination;
  dispatch_sync(stateQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __48__VCAudioStreamReceiveGroup_addSyncDestination___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __48__VCAudioStreamReceiveGroup_addSyncDestination___block_invoke_cold_1(a1);
    return;
  }

  v3 = (a1 + 40);
  if (objc_opt_class() != *(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*v3 performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v14 = *v3;
    v15 = FourccToCStr([*v2 streamGroupID]);
    v16 = *(*v3 + 60);
    *v19 = 136316674;
    *&v19[4] = v12;
    *&v19[12] = 2080;
    *&v19[14] = "[VCAudioStreamReceiveGroup addSyncDestination:]_block_invoke";
    *&v19[22] = 1024;
    LODWORD(v20) = 232;
    WORD2(v20) = 2112;
    *(&v20 + 6) = v4;
    HIWORD(v20) = 2048;
    v21 = v14;
    *v22 = 2080;
    *&v22[2] = v15;
    *&v22[10] = 2048;
    *&v22[12] = v16;
    v9 = " [%s] %s:%d %@(%p) Adding syncDestination=%s, common=%p";
    v10 = v13;
    v11 = 68;
    goto LABEL_12;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = FourccToCStr([*v2 streamGroupID]);
      v8 = *(*v3 + 60);
      *v19 = 136316162;
      *&v19[4] = v5;
      *&v19[12] = 2080;
      *&v19[14] = "[VCAudioStreamReceiveGroup addSyncDestination:]_block_invoke";
      *&v19[22] = 1024;
      LODWORD(v20) = 232;
      WORD2(v20) = 2080;
      *(&v20 + 6) = v7;
      HIWORD(v20) = 2048;
      v21 = v8;
      v9 = " [%s] %s:%d Adding syncDestination=%s, common=%p";
      v10 = v6;
      v11 = 48;
LABEL_12:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v19, v11);
    }
  }

LABEL_13:
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 40) + 480) addSyncDestination:*(a1 + 32) shouldSchedule:{objc_msgSend(*(a1 + 40), "state", *v19, *&v19[16], v20, v21, *v22, *&v22[16], v23) != 0}];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*v2, "streamToken")}];
    [*(*v3 + 70) setObject:v17 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*v2, "streamGroupID"))}];
    [*v3 distributeOverlayToken];
    v18 = [*v3 syncSource];
    if (v18)
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) setSyncSource:v18];
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        __48__VCAudioStreamReceiveGroup_addSyncDestination___block_invoke_cold_3();
      }
    }
  }

  else
  {
    __48__VCAudioStreamReceiveGroup_addSyncDestination___block_invoke_cold_2((a1 + 40), v2);
  }
}

- (BOOL)removeSyncDestination:(id)destination
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  stateQueue = self->super.super._stateQueue;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VCAudioStreamReceiveGroup_removeSyncDestination___block_invoke;
  v6[3] = &unk_1E85F4108;
  v6[5] = self;
  v6[6] = &v7;
  v6[4] = destination;
  dispatch_sync(stateQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __51__VCAudioStreamReceiveGroup_removeSyncDestination___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __51__VCAudioStreamReceiveGroup_removeSyncDestination___block_invoke_cold_1(a1);
    return;
  }

  v3 = (a1 + 40);
  if (objc_opt_class() != *(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*v3 performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v14 = *v3;
    v15 = FourccToCStr([*v2 streamGroupID]);
    v16 = *(*v3 + 60);
    *v17 = 136316674;
    *&v17[4] = v12;
    *&v17[12] = 2080;
    *&v17[14] = "[VCAudioStreamReceiveGroup removeSyncDestination:]_block_invoke";
    *&v17[22] = 1024;
    LODWORD(v18) = 255;
    WORD2(v18) = 2112;
    *(&v18 + 6) = v4;
    HIWORD(v18) = 2048;
    v19 = v14;
    *v20 = 2080;
    *&v20[2] = v15;
    *&v20[10] = 2048;
    *&v20[12] = v16;
    v9 = " [%s] %s:%d %@(%p) Removing syncDestination=%s, common=%p";
    v10 = v13;
    v11 = 68;
    goto LABEL_12;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = FourccToCStr([*v2 streamGroupID]);
      v8 = *(*v3 + 60);
      *v17 = 136316162;
      *&v17[4] = v5;
      *&v17[12] = 2080;
      *&v17[14] = "[VCAudioStreamReceiveGroup removeSyncDestination:]_block_invoke";
      *&v17[22] = 1024;
      LODWORD(v18) = 255;
      WORD2(v18) = 2080;
      *(&v18 + 6) = v7;
      HIWORD(v18) = 2048;
      v19 = v8;
      v9 = " [%s] %s:%d Removing syncDestination=%s, common=%p";
      v10 = v6;
      v11 = 48;
LABEL_12:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v17, v11);
    }
  }

LABEL_13:
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 40) + 480) removeSyncDestination:*(a1 + 32) shouldSchedule:{objc_msgSend(*(a1 + 40), "state", *v17, *&v17[16], v18, v19, *v20, *&v20[16], v21) != 0}];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    [*(*v3 + 70) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*v2, "streamGroupID"))}];
    [*v3 distributeOverlayToken];
    if ([*v3 syncSource])
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) setSyncSource:0];
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        __51__VCAudioStreamReceiveGroup_removeSyncDestination___block_invoke_cold_3();
      }
    }
  }

  else
  {
    __51__VCAudioStreamReceiveGroup_removeSyncDestination___block_invoke_cold_2(v2, (a1 + 40));
  }
}

- (void)distributeOverlayToken
{
  v15 = *MEMORY[0x1E69E9840];
  preferredOverlayToken = [(VCAudioStreamReceiveGroup *)self preferredOverlayToken];
  if (preferredOverlayToken != self->_currentOverlayToken)
  {
    v4 = preferredOverlayToken;
    self->_currentOverlayToken = preferredOverlayToken;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    mediaStreamInfoArray = self->super.super._mediaStreamInfoArray;
    v6 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(mediaStreamInfoArray);
          }

          [objc_msgSend(*(*(&v11 + 1) + 8 * v9++) "stream")];
        }

        while (v7 != v9);
        v7 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v7);
    }
  }
}

- (VCMediaStreamSyncSource)syncSource
{
  if ([(VCMediaStreamGroup *)self streamGroupID]!= 1835623287)
  {
    return 0;
  }

  mediaStreams = self->super.super._mediaStreams;

  return [(NSArray *)mediaStreams firstObject];
}

- (unsigned)preferredOverlayToken
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  streamGroupID = self->super.super._streamGroupID;
  switch(streamGroupID)
  {
    case 0x6D696372u:
      v4 = &unk_1F5798310;
      break;
    case 0x6D696377u:
      v4 = &unk_1F5798328;
      break;
    case 0x73797361u:
      v4 = &unk_1F5798340;
      break;
    default:
LABEL_9:
      syncGroupIdToOverlayTokenMap = self->_syncGroupIdToOverlayTokenMap;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__VCAudioStreamReceiveGroup_preferredOverlayToken__block_invoke;
      v9[3] = &unk_1E85F4130;
      v9[4] = &v10;
      [(NSMutableDictionary *)syncGroupIdToOverlayTokenMap enumerateKeysAndObjectsUsingBlock:v9];
      unsignedIntValue = *(v11 + 6);
      goto LABEL_10;
  }

  v5 = [(NSMutableDictionary *)self->_syncGroupIdToOverlayTokenMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    goto LABEL_9;
  }

  unsignedIntValue = [v5 unsignedIntValue];
  *(v11 + 6) = unsignedIntValue;
LABEL_10:
  _Block_object_dispose(&v10, 8);
  return unsignedIntValue;
}

uint64_t __50__VCAudioStreamReceiveGroup_preferredOverlayToken__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 unsignedIntValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = 1;
  return result;
}

- (void)vcMediaStream:(id)stream remoteMediaStalled:(BOOL)stalled duration:(double)duration
{
  v8 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__VCAudioStreamReceiveGroup_vcMediaStream_remoteMediaStalled_duration___block_invoke;
  v6[3] = &unk_1E85F4180;
  v6[4] = self;
  stalledCopy = stalled;
  *&v6[5] = duration;
  dispatch_async(stateQueue, v6);
}

uint64_t __71__VCAudioStreamReceiveGroup_vcMediaStream_remoteMediaStalled_duration___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (*(result + 536) == 1)
  {
    if (*(a1 + 48) == 1)
    {
      result = [result isAudioExpected];
      if (result)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v3 = VRTraceErrorLogLevelToCSTR();
          v4 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v5 = *(a1 + 40);
            *buf = 136315906;
            v25 = v3;
            v26 = 2080;
            v27 = "[VCAudioStreamReceiveGroup vcMediaStream:remoteMediaStalled:duration:]_block_invoke";
            v28 = 1024;
            v29 = 356;
            v30 = 2048;
            v31 = v5;
            _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio is stalling with duration %f", buf, 0x26u);
          }
        }

        v6 = *(a1 + 32);
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __71__VCAudioStreamReceiveGroup_vcMediaStream_remoteMediaStalled_duration___block_invoke_20;
        v20 = &unk_1E85F4158;
        v21 = v6;
        LOBYTE(v23) = *(a1 + 48);
        v22 = *(a1 + 40);
        v7 = &v17;
        return [v6 callDelegateWithBlock:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
      }

      if (*(a1 + 48))
      {
        return result;
      }
    }

    if (*(a1 + 40) != 0.0)
    {
      return result;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v25 = v8;
        v26 = 2080;
        v27 = "[VCAudioStreamReceiveGroup vcMediaStream:remoteMediaStalled:duration:]_block_invoke_2";
        v28 = 1024;
        v29 = 361;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio has stopped stalling", buf, 0x1Cu);
      }
    }

    v6 = *(a1 + 32);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __71__VCAudioStreamReceiveGroup_vcMediaStream_remoteMediaStalled_duration___block_invoke_23;
    v13 = &unk_1E85F4158;
    v14 = v6;
    LOBYTE(v16) = *(a1 + 48);
    v15 = *(a1 + 40);
    v7 = &v10;
    return [v6 callDelegateWithBlock:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  }

  return result;
}

- (void)vcMediaStream:(id)stream didSwitchToAudioStreamWithID:(unsigned __int16)d
{
  v7 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VCAudioStreamReceiveGroup_vcMediaStream_didSwitchToAudioStreamWithID___block_invoke;
  block[3] = &unk_1E85F41F8;
  dCopy = d;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

uint64_t __72__VCAudioStreamReceiveGroup_vcMediaStream_didSwitchToAudioStreamWithID___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 40)];
  result = [*(*(a1 + 32) + 448) isEqualToNumber:v2];
  if ((result & 1) == 0)
  {
    v4 = [*(*(a1 + 32) + 448) shortValue];
    *(*(a1 + 32) + 536) = *(a1 + 40) == 0;
    [*(a1 + 32) setActiveStreamID:v2];
    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__VCAudioStreamReceiveGroup_vcMediaStream_didSwitchToAudioStreamWithID___block_invoke_2;
    v8[3] = &unk_1E85F41A8;
    v8[4] = v5;
    v9 = v4;
    v10 = *(a1 + 40);
    [v5 callDelegateWithBlock:v8];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__VCAudioStreamReceiveGroup_vcMediaStream_didSwitchToAudioStreamWithID___block_invoke_3;
    v7[3] = &unk_1E85F41D0;
    v7[4] = v6;
    return [v6 callDelegateWithBlock:v7];
  }

  return result;
}

- (void)vcMediaStream:(id)stream didReceiveFirstFrameWithTime:(id *)time
{
  block[6] = *MEMORY[0x1E69E9840];
  v5 = micro();
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VCAudioStreamReceiveGroup_vcMediaStream_didReceiveFirstFrameWithTime___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  *&block[5] = v5;
  dispatch_async(stateQueue, block);
}

uint64_t __72__VCAudioStreamReceiveGroup_vcMediaStream_didReceiveFirstFrameWithTime___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setFirstMediaFrameReceivedTime:*(a1 + 40)];
  v2 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = VCAudioStreamReceiveGroup;
  objc_msgSendSuper2(&v6, sel_finalizePerfTimersForFirstMediaFrameWithTime_, v2);
  VCPerfTimingUtilsSetStopForKeyOnceWithTime(*(*(a1 + 32) + 240), 5, *(a1 + 40));
  [*(a1 + 32) reportParticipantsPerfTimings];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__VCAudioStreamReceiveGroup_vcMediaStream_didReceiveFirstFrameWithTime___block_invoke_2;
  v5[3] = &unk_1E85F41D0;
  v5[4] = v3;
  return [v3 callDelegateWithBlock:v5];
}

- (void)mediaStream:(id)stream didReceiveNewMediaKeyIndex:(id)index
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCAudioStreamReceiveGroup;
  [(VCMediaStreamGroup *)&v6 mediaStream:stream didReceiveNewMediaKeyIndex:?];
  [(VCMediaStreamGroup *)self setupPerfTimersWithMediaKeyIndex:index perfTimerIndexToStart:5];
}

void __VCAudioStreamReceiveGroup_UpdateAudioPriority_block_invoke(uint64_t a1)
{
  [*(a1 + 32) streamGroup:*(a1 + 40) didChangeMediaPriority:*(a1 + 48)];
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (BOOL)configureStreams
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = -[VCAudioStreamGroupCommon configureStreams:withRateControlConfig:](self->_common, "configureStreams:withRateControlConfig:", self->super.super._mediaStreamInfoArray, [objc_msgSend(objc_msgSend(-[NSArray firstObject](self->super.super._mediaStreamInfoArray "firstObject")]);
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = VCAudioStreamReceiveGroup;
    LOBYTE(v3) = [(VCMediaStreamGroup *)&v5 configureStreams];
  }

  return v3;
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
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(void *)a1 .cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }
}

void __48__VCAudioStreamReceiveGroup_addSyncDestination___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_3(a1, *MEMORY[0x1E69E9840]);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }
}

void __48__VCAudioStreamReceiveGroup_addSyncDestination___block_invoke_cold_2(id *a1, id *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr([*a1 streamGroupID]);
      FourccToCStr([*a2 streamGroupID]);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_7_3();
      _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    }
  }
}

void __48__VCAudioStreamReceiveGroup_addSyncDestination___block_invoke_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void __51__VCAudioStreamReceiveGroup_removeSyncDestination___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_3(a1, *MEMORY[0x1E69E9840]);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }
}

void __51__VCAudioStreamReceiveGroup_removeSyncDestination___block_invoke_cold_2(id *a1, id *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr([*a1 streamGroupID]);
      FourccToCStr([*a2 streamGroupID]);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_7_3();
      _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    }
  }
}

void __51__VCAudioStreamReceiveGroup_removeSyncDestination___block_invoke_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end