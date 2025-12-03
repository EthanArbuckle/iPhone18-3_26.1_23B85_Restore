@interface VCMediaStreamSendGroup
- (BOOL)dispatchedEnableRedundancy:(BOOL)redundancy;
- (BOOL)enableRedundancy:(BOOL)redundancy;
- (BOOL)isSourceTimestampInfoAvailable;
- (BOOL)setStreamGroupMode:(unsigned int)mode;
- (BOOL)setupStreamGroupWithConfig:(id)config;
- (BOOL)updateConfig:(id)config forMode:(unsigned int)mode;
- (BOOL)updatePeerSubscribedStreams:(id)streams containsRepairStreams:(BOOL)repairStreams;
- (BOOL)v2PayloadsAllowed;
- (VCMediaStreamSendGroup)initWithConfig:(id)config;
- (id)dispatchedMediaStreamInfosForEndToEndConnection:(BOOL)connection;
- (id)streamGroupConfigForMode:(unsigned int)mode;
- (unsigned)calculateUplinkTotalBitrateForMediaStreams:(id)streams;
- (unsigned)streamGroupMode;
- (void)dealloc;
- (void)didPause:(BOOL)pause;
- (void)didReceiveRTCPPackets:(_RTCPPacketList *)packets;
- (void)didStart;
- (void)didStop;
- (void)dispatchedUpdateStreamsWithActiveConnection:(id)connection;
- (void)setActiveConnection:(id)connection uplinkBitrateCap:(unsigned int)cap activeMediaStreamIDs:(id)ds mediaBitrates:(id)bitrates rateChangeCounter:(unsigned int)counter;
- (void)setCurrentUplinkTargetBitrate:(unsigned int)bitrate;
- (void)setRetransmissionEnabled:(BOOL)enabled;
- (void)setStatisticsCollector:(id)collector;
- (void)updateActiveMediaStreamIDs:(id)ds withTargetBitrate:(unsigned int)bitrate mediaBitrates:(id)bitrates rateChangeCounter:(unsigned int)counter;
- (void)updateActiveStreamsCount:(unsigned int)count;
- (void)updateEncryptionInformationWithConfig:(id)config;
- (void)updateStreamIDCompoundingWithBlock:(id)block activeStreamIds:(id)ids;
@end

@implementation VCMediaStreamSendGroup

- (VCMediaStreamSendGroup)initWithConfig:(id)config
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCMediaStreamSendGroup;
  v4 = [(VCMediaStreamGroup *)&v9 initWithConfig:?];
  v5 = v4;
  if (v4)
  {
    v4->_isSuspended = 1;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_peerSubscribedStreams = v6;
    if (v6)
    {
      v5->_shouldSynchronizeWithSourceRTPTimestamps = [config shouldSynchronizeWithSourceRTPTimestamps];
      pthread_rwlock_init(&v5->_sourceTimestampRWLock, 0);
      v5->_lastSentSourceHostTime = NAN;
      if ([(VCMediaStreamGroup *)v5 streamGroupID]== 1937339233)
      {
        v5->super._areStreamsSuspended = 1;
      }

      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      v5->_sendGroupConfigForMode = v7;
      if (v7)
      {
        v5->_streamGroupMode = [config streamGroupMode];
        -[NSMutableDictionary setObject:forKeyedSubscript:](v5->_sendGroupConfigForMode, "setObject:forKeyedSubscript:", config, [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "streamGroupMode")}]);
        [config setDelegate:0];
        return v5;
      }

      [VCMediaStreamSendGroup initWithConfig:v5];
    }

    else
    {
      [VCMediaStreamSendGroup initWithConfig:];
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  pthread_rwlock_destroy(&self->_sourceTimestampRWLock);
  v3.receiver = self;
  v3.super_class = VCMediaStreamSendGroup;
  [(VCMediaStreamGroup *)&v3 dealloc];
}

- (id)streamGroupConfigForMode:(unsigned int)mode
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__25;
  stateQueue = self->super._stateQueue;
  v12 = __Block_byref_object_dispose__25;
  v13 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VCMediaStreamSendGroup_streamGroupConfigForMode___block_invoke;
  v6[3] = &unk_1E85F61A8;
  v6[4] = self;
  v6[5] = &v8;
  modeCopy = mode;
  dispatch_sync(stateQueue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __51__VCMediaStreamSendGroup_streamGroupConfigForMode___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 472) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)setStreamGroupMode:(unsigned int)mode
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  stateQueue = self->super._stateQueue;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__VCMediaStreamSendGroup_setStreamGroupMode___block_invoke;
  v6[3] = &unk_1E85F64A0;
  modeCopy = mode;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(stateQueue, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __45__VCMediaStreamSendGroup_setStreamGroupMode___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 316) || ![*(v2 + 472) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v7 = *(a1 + 32);
      v8 = *(v7 + 316);
      v9 = [*(v7 + 472) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
      *v51 = 136316162;
      *&v51[4] = v5;
      *&v51[12] = 2080;
      *&v51[14] = "[VCMediaStreamSendGroup setStreamGroupMode:]_block_invoke";
      *&v51[22] = 1024;
      *v52 = 115;
      *&v52[4] = 1024;
      *&v52[6] = v8;
      *&v52[10] = 2112;
      *&v52[12] = v9;
      v10 = " [%s] %s:%d Stream group mode cannot be changed. Current state=%u, configForMode=%@";
      v11 = v6;
      v12 = 44;
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

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v15 = *(a1 + 32);
      v16 = *(v15 + 316);
      v17 = [*(v15 + 472) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
      *v51 = 136316674;
      *&v51[4] = v13;
      *&v51[12] = 2080;
      *&v51[14] = "[VCMediaStreamSendGroup setStreamGroupMode:]_block_invoke";
      *&v51[22] = 1024;
      *v52 = 115;
      *&v52[4] = 2112;
      *&v52[6] = v3;
      *&v52[14] = 2048;
      *&v52[16] = v15;
      LOWORD(v53) = 1024;
      *(&v53 + 2) = v16;
      WORD3(v53) = 2112;
      *(&v53 + 1) = v17;
      v10 = " [%s] %s:%d %@(%p) Stream group mode cannot be changed. Current state=%u, configForMode=%@";
      v11 = v14;
      v12 = 64;
    }

LABEL_17:
    _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v10, v51, v12);
    return;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) setupStreamGroupWithConfig:{objc_msgSend(*(*(a1 + 32) + 472), "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48)))}];
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_35;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v28 = *(*(a1 + 32) + 480);
      v29 = *(a1 + 48);
      *v51 = 136316162;
      *&v51[4] = v26;
      *&v51[12] = 2080;
      *&v51[14] = "[VCMediaStreamSendGroup setStreamGroupMode:]_block_invoke";
      *&v51[22] = 1024;
      *v52 = 125;
      *&v52[4] = 1024;
      *&v52[6] = v28;
      *&v52[10] = 1024;
      *&v52[12] = v29;
      v30 = " [%s] %s:%d Failed to set stream group mode. Current mode=%u new mode=%u";
      v31 = v27;
      v32 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v38 = VRTraceErrorLogLevelToCSTR(), v39 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_35:
        if ([*(a1 + 32) setupStreamGroupWithConfig:{objc_msgSend(*(*(a1 + 32) + 472), "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(*(a1 + 32) + 480), *v51, *&v51[16], *v52, *&v52[16], v53))}])
        {
          return;
        }

        if (objc_opt_class() == *(a1 + 32))
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            return;
          }

          v41 = VRTraceErrorLogLevelToCSTR();
          v42 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            return;
          }

          v43 = *(*(a1 + 32) + 480);
          *v51 = 136315906;
          *&v51[4] = v41;
          *&v51[12] = 2080;
          *&v51[14] = "[VCMediaStreamSendGroup setStreamGroupMode:]_block_invoke";
          *&v51[22] = 1024;
          *v52 = 129;
          *&v52[4] = 1024;
          *&v52[6] = v43;
          v10 = " [%s] %s:%d Failed to reset stream group back to original mode. Current mode=%u";
          v11 = v42;
          v12 = 34;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v40 = [*(a1 + 32) performSelector:sel_logPrefix];
          }

          else
          {
            v40 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            return;
          }

          v44 = VRTraceErrorLogLevelToCSTR();
          v45 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            return;
          }

          v49 = *(a1 + 32);
          v50 = *(v49 + 480);
          *v51 = 136316418;
          *&v51[4] = v44;
          *&v51[12] = 2080;
          *&v51[14] = "[VCMediaStreamSendGroup setStreamGroupMode:]_block_invoke";
          *&v51[22] = 1024;
          *v52 = 129;
          *&v52[4] = 2112;
          *&v52[6] = v40;
          *&v52[14] = 2048;
          *&v52[16] = v49;
          LOWORD(v53) = 1024;
          *(&v53 + 2) = v50;
          v10 = " [%s] %s:%d %@(%p) Failed to reset stream group back to original mode. Current mode=%u";
          v11 = v45;
          v12 = 54;
        }

        goto LABEL_17;
      }

      v46 = *(a1 + 32);
      v47 = *(v46 + 480);
      v48 = *(a1 + 48);
      *v51 = 136316674;
      *&v51[4] = v38;
      *&v51[12] = 2080;
      *&v51[14] = "[VCMediaStreamSendGroup setStreamGroupMode:]_block_invoke";
      *&v51[22] = 1024;
      *v52 = 125;
      *&v52[4] = 2112;
      *&v52[6] = v18;
      *&v52[14] = 2048;
      *&v52[16] = v46;
      LOWORD(v53) = 1024;
      *(&v53 + 2) = v47;
      WORD3(v53) = 1024;
      DWORD2(v53) = v48;
      v30 = " [%s] %s:%d %@(%p) Failed to set stream group mode. Current mode=%u new mode=%u";
      v31 = v39;
      v32 = 60;
    }

    _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, v30, v51, v32);
    goto LABEL_35;
  }

  *(*(a1 + 32) + 480) = *(a1 + 48);
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = FourccToCStr([*(a1 + 32) streamGroupID]);
        v22 = *(*(a1 + 32) + 480);
        *v51 = 136316162;
        *&v51[4] = v19;
        *&v51[12] = 2080;
        *&v51[14] = "[VCMediaStreamSendGroup setStreamGroupMode:]_block_invoke";
        *&v51[22] = 1024;
        *v52 = 123;
        *&v52[4] = 2080;
        *&v52[6] = v21;
        *&v52[14] = 1024;
        *&v52[16] = v22;
        v23 = " [%s] %s:%d Successfully set Stream Send GroupID=%s to mode=%u";
        v24 = v20;
        v25 = 44;
LABEL_31:
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, v51, v25);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 32);
        v36 = FourccToCStr([v35 streamGroupID]);
        v37 = *(*(a1 + 32) + 480);
        *v51 = 136316674;
        *&v51[4] = v33;
        *&v51[12] = 2080;
        *&v51[14] = "[VCMediaStreamSendGroup setStreamGroupMode:]_block_invoke";
        *&v51[22] = 1024;
        *v52 = 123;
        *&v52[4] = 2112;
        *&v52[6] = v4;
        *&v52[14] = 2048;
        *&v52[16] = v35;
        LOWORD(v53) = 2080;
        *(&v53 + 2) = v36;
        WORD5(v53) = 1024;
        HIDWORD(v53) = v37;
        v23 = " [%s] %s:%d %@(%p) Successfully set Stream Send GroupID=%s to mode=%u";
        v24 = v34;
        v25 = 64;
        goto LABEL_31;
      }
    }
  }
}

- (void)setCurrentUplinkTargetBitrate:(unsigned int)bitrate
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCMediaStreamSendGroup_setCurrentUplinkTargetBitrate___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  bitrateCopy = bitrate;
  dispatch_sync(stateQueue, block);
}

- (unsigned)streamGroupMode
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCMediaStreamSendGroup_streamGroupMode__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)updateEncryptionInformationWithConfig:(id)config
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex([(VCMediaStreamGroup *)self securityKeyHolder], 0, &v12);
  firstObject = [v12 firstObject];
  v5 = [objc_msgSend(firstObject objectForKeyedSubscript:{@"SecurityLocallyGenerated", "BOOLValue"}];
  if (firstObject)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    mediaStreamInfoArray = [config mediaStreamInfoArray];
    v8 = [mediaStreamInfoArray countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(mediaStreamInfoArray);
          }

          [objc_msgSend(*(*(&v14 + 1) + 8 * v11++) "stream")];
        }

        while (v9 != v11);
        v9 = [mediaStreamInfoArray countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)setupStreamGroupWithConfig:(id)config
{
  v8 = *MEMORY[0x1E69E9840];
  [(VCMediaStreamGroup *)self unregisterMediaStreamNotificationDelegate];
  v6.receiver = self;
  v6.super_class = VCMediaStreamSendGroup;
  if (![(VCMediaStreamGroup *)&v6 setupStreamsWithConfig:config])
  {
    [(VCMediaStreamSendGroup *)self setupStreamGroupWithConfig:?];
    return v7;
  }

  -[VCMediaStreamSendGroup setRedundancyController:](self, "setRedundancyController:", [config redundancyController]);
  [(VCMediaStreamGroup *)self registerMediaStreamNotificationDelegate];
  if (![(VCMediaStreamGroup *)self configureStreams])
  {
    [(VCMediaStreamSendGroup *)self setupStreamGroupWithConfig:?];
    return v7;
  }

  [(VCMediaStreamSendGroup *)self updateEncryptionInformationWithConfig:config];
  return 1;
}

- (BOOL)updateConfig:(id)config forMode:(unsigned int)mode
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCMediaStreamSendGroup_updateConfig_forMode___block_invoke;
  block[3] = &unk_1E85F6180;
  block[4] = self;
  block[5] = config;
  modeCopy = mode;
  block[6] = &v9;
  dispatch_sync(stateQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __47__VCMediaStreamSendGroup_updateConfig_forMode___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 316);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  if (!v2)
  {
    if (v3 == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v17 = VRTraceErrorLogLevelToCSTR(), v18 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_24:
        v31 = *(a1 + 32);
        if (v31[120] == *(a1 + 56))
        {
          *(*(*(a1 + 48) + 8) + 24) = [v31 setupStreamGroupWithConfig:*(a1 + 40)];
        }

        else
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        [*(*(a1 + 32) + 472) setObject:*(a1 + 40) forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*(a1 + 40), "streamGroupMode", *v32, *&v32[16], v33, *v34, *&v34[8], v35, v36))}];
        [*(a1 + 40) setDelegate:0];
        return;
      }

      v19 = *(a1 + 56);
      v20 = *(a1 + 40);
      v21 = *(*(a1 + 32) + 480);
      *v32 = 136316674;
      *&v32[4] = v17;
      *&v32[12] = 2080;
      *&v32[14] = "[VCMediaStreamSendGroup updateConfig:forMode:]_block_invoke";
      *&v32[22] = 1024;
      LODWORD(v33) = 193;
      WORD2(v33) = 2048;
      *(&v33 + 6) = v20;
      HIWORD(v33) = 1024;
      *v34 = v19;
      *&v34[4] = 1024;
      *&v34[6] = v21;
      *&v34[10] = 1024;
      *&v34[12] = [v20 streamGroupMode];
      v22 = " [%s] %s:%d Updating streamGroupConfig=%p for mode=%d currentMode=%d config.streamGroupMode=%d";
      v23 = v18;
      v24 = 56;
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

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v28 = *(a1 + 32);
      v27 = *(a1 + 40);
      v29 = *(a1 + 56);
      v30 = *(v28 + 480);
      *v32 = 136317186;
      *&v32[4] = v25;
      *&v32[12] = 2080;
      *&v32[14] = "[VCMediaStreamSendGroup updateConfig:forMode:]_block_invoke";
      *&v32[22] = 1024;
      LODWORD(v33) = 193;
      WORD2(v33) = 2112;
      *(&v33 + 6) = v6;
      HIWORD(v33) = 2048;
      *v34 = v28;
      *&v34[8] = 2048;
      *&v34[10] = v27;
      *&v34[18] = 1024;
      *&v34[20] = v29;
      LOWORD(v35) = 1024;
      *(&v35 + 2) = v30;
      HIWORD(v35) = 1024;
      LODWORD(v36) = [v27 streamGroupMode];
      v22 = " [%s] %s:%d %@(%p) Updating streamGroupConfig=%p for mode=%d currentMode=%d config.streamGroupMode=%d";
      v23 = v26;
      v24 = 76;
    }

    _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, v32, v24);
    goto LABEL_24;
  }

  if (v3 == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(a1 + 32) + 316);
        *v32 = 136315906;
        *&v32[4] = v7;
        *&v32[12] = 2080;
        *&v32[14] = "[VCMediaStreamSendGroup updateConfig:forMode:]_block_invoke";
        *&v32[22] = 1024;
        LODWORD(v33) = 189;
        WORD2(v33) = 1024;
        *(&v33 + 6) = v9;
        v10 = " [%s] %s:%d Stream group config cannot be changed. Current state=%u";
        v11 = v8;
        v12 = 34;
LABEL_15:
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v10, v32, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = *(v15 + 316);
        *v32 = 136316418;
        *&v32[4] = v13;
        *&v32[12] = 2080;
        *&v32[14] = "[VCMediaStreamSendGroup updateConfig:forMode:]_block_invoke";
        *&v32[22] = 1024;
        LODWORD(v33) = 189;
        WORD2(v33) = 2112;
        *(&v33 + 6) = v5;
        HIWORD(v33) = 2048;
        *v34 = v15;
        *&v34[8] = 1024;
        *&v34[10] = v16;
        v10 = " [%s] %s:%d %@(%p) Stream group config cannot be changed. Current state=%u";
        v11 = v14;
        v12 = 54;
        goto LABEL_15;
      }
    }
  }
}

- (void)updateStreamIDCompoundingWithBlock:(id)block activeStreamIds:(id)ids
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->super._mediaStreamInfoArray, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->super._mediaStreamInfoArray, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->super._mediaStreamInfoArray;
  v21 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v21)
  {
    stream = 0;
    v26 = v8;
    v20 = *v34;
    blockCopy = block;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v9;
        v10 = *(*(&v33 + 1) + 8 * v9);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v24 = v10;
        streamConfigs = [v10 streamConfigs];
        v12 = [streamConfigs countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(streamConfigs);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              multiwayConfig = [v16 multiwayConfig];
              v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(multiwayConfig, "idsStreamID")}];
              if (![(VCMediaStreamSendGroup *)self shouldCompoundListIgnoreStream:v18 streamConfig:v16 activeStreamIds:ids])
              {
                if ([ids containsObject:v18])
                {
                  if (stream)
                  {
                    blockCopy[2](blockCopy, stream, v7, v26, 0);
                  }

                  [v7 removeAllObjects];
                  [v26 removeAllObjects];
                  stream = [v24 stream];
                }

                [v7 addObject:v18];
                if ([multiwayConfig hasRepairedStreamID])
                {
                  [v26 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(multiwayConfig, "repairedStreamID"))}];
                }
              }
            }

            v13 = [streamConfigs countByEnumeratingWithState:&v28 objects:v27 count:16];
          }

          while (v13);
        }

        v9 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v21);
    v8 = v26;
    if (stream)
    {
      (blockCopy[2])();
    }
  }
}

- (void)updateActiveMediaStreamIDs:(id)ds withTargetBitrate:(unsigned int)bitrate mediaBitrates:(id)bitrates rateChangeCounter:(unsigned int)counter
{
  v10 = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__VCMediaStreamSendGroup_updateActiveMediaStreamIDs_withTargetBitrate_mediaBitrates_rateChangeCounter___block_invoke;
  block[3] = &unk_1E85F4AB8;
  block[4] = self;
  block[5] = ds;
  block[6] = bitrates;
  bitrateCopy = bitrate;
  counterCopy = counter;
  dispatch_async(stateQueue, block);
}

- (BOOL)v2PayloadsAllowed
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  obj = self->super._mediaStreamInfoArray;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        streamConfigs = [v8 streamConfigs];
        v10 = [streamConfigs countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(streamConfigs);
              }

              multiwayConfig = [*(*(&v20 + 1) + 8 * j) multiwayConfig];
              [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(multiwayConfig, "idsStreamID"))}];
            }

            v11 = [streamConfigs countByEnumeratingWithState:&v20 objects:v19 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v5);
  }

  [v3 intersectSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", selfCopy->_peerSubscribedStreams)}];
  v15 = [v3 count] == 0;

  return v15;
}

- (BOOL)dispatchedEnableRedundancy:(BOOL)redundancy
{
  redundancyCopy = redundancy;
  dispatch_assert_queue_V2(self->super._stateQueue);
  isRedundancyEnabled = self->_isRedundancyEnabled;
  if (isRedundancyEnabled != redundancyCopy)
  {
    self->_isRedundancyEnabled = redundancyCopy;
  }

  return isRedundancyEnabled != redundancyCopy;
}

- (BOOL)enableRedundancy:(BOOL)redundancy
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  stateQueue = self->super._stateQueue;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__VCMediaStreamSendGroup_enableRedundancy___block_invoke;
  v6[3] = &unk_1E85F7890;
  v6[4] = self;
  v6[5] = &v8;
  redundancyCopy = redundancy;
  dispatch_sync(stateQueue, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __43__VCMediaStreamSendGroup_enableRedundancy___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedEnableRedundancy:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setRetransmissionEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCMediaStreamSendGroup_setRetransmissionEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(stateQueue, block);
}

uint64_t __51__VCMediaStreamSendGroup_setRetransmissionEnabled___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 736) = *(a1 + 40);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 176);
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

        [*(*(&v8 + 1) + 8 * v6++) setUplinkRetransmissionEnabled:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (BOOL)updatePeerSubscribedStreams:(id)streams containsRepairStreams:(BOOL)repairStreams
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VCMediaStreamSendGroup_updatePeerSubscribedStreams_containsRepairStreams___block_invoke;
  block[3] = &unk_1E85F6820;
  block[4] = self;
  block[5] = streams;
  block[6] = &v9;
  repairStreamsCopy = repairStreams;
  dispatch_sync(stateQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __76__VCMediaStreamSendGroup_updatePeerSubscribedStreams_containsRepairStreams___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) checkStreamsForAdditionalOptIn:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) updateUplinkStreamsForPeerSubscribedStreams:v2];
  [*(*(a1 + 32) + 456) removeAllObjects];
  [*(*(a1 + 32) + 456) addObjectsFromArray:v2];
  result = [*(a1 + 32) dispatchedEnableRedundancy:*(a1 + 56)];
  v4 = *(*(a1 + 48) + 8);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 & 1;
  return result;
}

- (id)dispatchedMediaStreamInfosForEndToEndConnection:(BOOL)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->super._stateQueue);
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sendGroupConfigForMode, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:connectionCopy]);

  return [v5 mediaStreamInfoArray];
}

- (void)dispatchedUpdateStreamsWithActiveConnection:(id)connection
{
  v39 = *MEMORY[0x1E69E9840];
  IsEndToEndLink = VCConnection_IsEndToEndLink(connection);
  v6 = [(VCMediaStreamSendGroup *)self dispatchedMediaStreamInfosForEndToEndConnection:IsEndToEndLink];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        streamGroupMode = self->_streamGroupMode;
        *buf = 136316162;
        v27 = v8;
        v28 = 2080;
        v29 = "[VCMediaStreamSendGroup dispatchedUpdateStreamsWithActiveConnection:]";
        v30 = 1024;
        v31 = 374;
        v32 = 1024;
        *v33 = IsEndToEndLink;
        *&v33[4] = 1024;
        *&v33[6] = streamGroupMode;
        v11 = " [%s] %s:%d Updating active connection connectionIsEndToEnd=%d streamGroupMode=%u";
        v12 = v9;
        v13 = 40;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCMediaStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_streamGroupMode;
        *buf = 136316674;
        v27 = v14;
        v28 = 2080;
        v29 = "[VCMediaStreamSendGroup dispatchedUpdateStreamsWithActiveConnection:]";
        v30 = 1024;
        v31 = 374;
        v32 = 2112;
        *v33 = v7;
        *&v33[8] = 2048;
        selfCopy = self;
        v35 = 1024;
        v36 = IsEndToEndLink;
        v37 = 1024;
        v38 = v16;
        v11 = " [%s] %s:%d %@(%p) Updating active connection connectionIsEndToEnd=%d streamGroupMode=%u";
        v12 = v15;
        v13 = 60;
        goto LABEL_11;
      }
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = [v6 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v6);
        }

        [objc_msgSend(*(*(&v22 + 1) + 8 * i) "stream")];
      }

      v18 = [v6 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v18);
  }
}

- (void)setActiveConnection:(id)connection uplinkBitrateCap:(unsigned int)cap activeMediaStreamIDs:(id)ds mediaBitrates:(id)bitrates rateChangeCounter:(unsigned int)counter
{
  v11 = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __116__VCMediaStreamSendGroup_setActiveConnection_uplinkBitrateCap_activeMediaStreamIDs_mediaBitrates_rateChangeCounter___block_invoke;
  v8[3] = &unk_1E85F3B28;
  v8[4] = self;
  v8[5] = connection;
  v8[6] = ds;
  v8[7] = bitrates;
  capCopy = cap;
  counterCopy = counter;
  dispatch_async(stateQueue, v8);
}

uint64_t __116__VCMediaStreamSendGroup_setActiveConnection_uplinkBitrateCap_activeMediaStreamIDs_mediaBitrates_rateChangeCounter___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) dispatchedUpdateStreamsWithActiveConnection:*(a1 + 40)];
  result = *(a1 + 32);
  if (*(a1 + 64) < *(result + 452))
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(a1 + 32) dispatchedUpdateActiveMediaStreamIDs:*(a1 + 48) withTargetBitrate:*(a1 + 64) mediaBitrates:*(a1 + 56) rateChangeCounter:{*(a1 + 68), *v14, *&v14[16], v15, v16, v17}];
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(a1 + 32) dispatchedUpdateActiveMediaStreamIDs:*(a1 + 48) withTargetBitrate:*(a1 + 64) mediaBitrates:*(a1 + 56) rateChangeCounter:{*(a1 + 68), *v14, *&v14[16], v15, v16, v17}];
      }

      v6 = *(*(a1 + 32) + 452);
      *v14 = 136315906;
      *&v14[4] = v4;
      *&v14[12] = 2080;
      *&v14[14] = "[VCMediaStreamSendGroup setActiveConnection:uplinkBitrateCap:activeMediaStreamIDs:mediaBitrates:rateChangeCounter:]_block_invoke";
      *&v14[22] = 1024;
      LODWORD(v15) = 390;
      WORD2(v15) = 1024;
      *(&v15 + 6) = v6;
      v7 = " [%s] %s:%d Updating active streams for active connection change %d.";
      v8 = v5;
      v9 = 34;
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

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(a1 + 32) dispatchedUpdateActiveMediaStreamIDs:*(a1 + 48) withTargetBitrate:*(a1 + 64) mediaBitrates:*(a1 + 56) rateChangeCounter:{*(a1 + 68), *v14, *&v14[16], v15, v16, v17}];
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(a1 + 32) dispatchedUpdateActiveMediaStreamIDs:*(a1 + 48) withTargetBitrate:*(a1 + 64) mediaBitrates:*(a1 + 56) rateChangeCounter:{*(a1 + 68), *v14, *&v14[16], v15, v16, v17}];
      }

      v12 = *(a1 + 32);
      v13 = *(v12 + 452);
      *v14 = 136316418;
      *&v14[4] = v10;
      *&v14[12] = 2080;
      *&v14[14] = "[VCMediaStreamSendGroup setActiveConnection:uplinkBitrateCap:activeMediaStreamIDs:mediaBitrates:rateChangeCounter:]_block_invoke";
      *&v14[22] = 1024;
      LODWORD(v15) = 390;
      WORD2(v15) = 2112;
      *(&v15 + 6) = v3;
      HIWORD(v15) = 2048;
      v16 = v12;
      LOWORD(v17) = 1024;
      *(&v17 + 2) = v13;
      v7 = " [%s] %s:%d %@(%p) Updating active streams for active connection change %d.";
      v8 = v11;
      v9 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v14, v9);
    return [*(a1 + 32) dispatchedUpdateActiveMediaStreamIDs:*(a1 + 48) withTargetBitrate:*(a1 + 64) mediaBitrates:*(a1 + 56) rateChangeCounter:{*(a1 + 68), *v14, *&v14[16], v15, v16, v17}];
  }

  return result;
}

- (unsigned)calculateUplinkTotalBitrateForMediaStreams:(id)streams
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [streams countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(streams);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (self->_isRedundancyEnabled && [objc_msgSend(objc_msgSend(*(*(&v14 + 1) + 8 * i) "defaultStreamConfig")])
        {
          v11 = [objc_msgSend(objc_msgSend(v10 "defaultStreamConfig")];
        }

        else
        {
          v11 = [objc_msgSend(objc_msgSend(v10 "defaultStreamConfig")];
        }

        v7 += v11;
      }

      v6 = [streams countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  self->_currentUplinkTotalBitrate = v7;
  return v7;
}

- (void)updateActiveStreamsCount:(unsigned int)count
{
  v47 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._stateQueue);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        areStreamsSuspended = self->super._areStreamsSuspended;
        *buf = 136316162;
        v35 = v6;
        v36 = 2080;
        v37 = "[VCMediaStreamSendGroup updateActiveStreamsCount:]";
        v38 = 1024;
        v39 = 413;
        v40 = 1024;
        *v41 = count;
        *&v41[4] = 1024;
        *&v41[6] = areStreamsSuspended;
        v9 = " [%s] %s:%d Active stream count %d, streams currently suspended: %d";
        v10 = v7;
        v11 = 40;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCMediaStreamSendGroup *)self performSelector:sel_logPrefix];
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
        v14 = self->super._areStreamsSuspended;
        *buf = 136316674;
        v35 = v12;
        v36 = 2080;
        v37 = "[VCMediaStreamSendGroup updateActiveStreamsCount:]";
        v38 = 1024;
        v39 = 413;
        v40 = 2112;
        *v41 = v5;
        *&v41[8] = 2048;
        selfCopy3 = self;
        v43 = 1024;
        countCopy = count;
        v45 = 1024;
        v46 = v14;
        v9 = " [%s] %s:%d %@(%p) Active stream count %d, streams currently suspended: %d";
        v10 = v13;
        v11 = 60;
        goto LABEL_11;
      }
    }
  }

  if (!count)
  {
    if (self->super._areStreamsSuspended)
    {
      return;
    }

    if ([(VCMediaStreamGroup *)self state]!= 1)
    {
      goto LABEL_42;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_41;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      *buf = 136315650;
      v35 = v25;
      v36 = 2080;
      v37 = "[VCMediaStreamSendGroup updateActiveStreamsCount:]";
      v38 = 1024;
      v39 = 416;
      v27 = " [%s] %s:%d Active stream count has dropped to zero. Will signal delegate that streams have suspended.";
      v28 = v26;
      v29 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCMediaStreamSendGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_41;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      *buf = 136316162;
      v35 = v30;
      v36 = 2080;
      v37 = "[VCMediaStreamSendGroup updateActiveStreamsCount:]";
      v38 = 1024;
      v39 = 416;
      v40 = 2112;
      *v41 = v16;
      *&v41[8] = 2048;
      selfCopy3 = self;
      v27 = " [%s] %s:%d %@(%p) Active stream count has dropped to zero. Will signal delegate that streams have suspended.";
      v28 = v31;
      v29 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
LABEL_41:
    [(VCMediaStreamGroup *)self stopCapture];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __51__VCMediaStreamSendGroup_updateActiveStreamsCount___block_invoke;
    v33[3] = &unk_1E85F41D0;
    v33[4] = self;
    [(VCMediaStreamGroup *)self callDelegateWithBlock:v33];
LABEL_42:
    v24 = 1;
    goto LABEL_43;
  }

  if (!self->super._areStreamsSuspended)
  {
    return;
  }

  if ([(VCMediaStreamGroup *)self state]!= 1)
  {
    goto LABEL_32;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_31;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 136315650;
    v35 = v17;
    v36 = 2080;
    v37 = "[VCMediaStreamSendGroup updateActiveStreamsCount:]";
    v38 = 1024;
    v39 = 426;
    v19 = " [%s] %s:%d Active stream count is no longer zero. Will signal delegate that streams will be resumed.";
    v20 = v18;
    v21 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCMediaStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_31;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 136316162;
    v35 = v22;
    v36 = 2080;
    v37 = "[VCMediaStreamSendGroup updateActiveStreamsCount:]";
    v38 = 1024;
    v39 = 426;
    v40 = 2112;
    *v41 = v15;
    *&v41[8] = 2048;
    selfCopy3 = self;
    v19 = " [%s] %s:%d %@(%p) Active stream count is no longer zero. Will signal delegate that streams will be resumed.";
    v20 = v23;
    v21 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_31:
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __51__VCMediaStreamSendGroup_updateActiveStreamsCount___block_invoke_70;
  v32[3] = &unk_1E85F41D0;
  v32[4] = self;
  [(VCMediaStreamGroup *)self callDelegateWithBlock:v32];
  [(VCMediaStreamGroup *)self startCapture];
LABEL_32:
  v24 = 0;
LABEL_43:
  self->super._areStreamsSuspended = v24;
}

- (void)didStart
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaStreamSendGroup *)self updateEnabledState];
  v3.receiver = self;
  v3.super_class = VCMediaStreamSendGroup;
  [(VCMediaStreamGroup *)&v3 didStart];
}

- (void)didStop
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaStreamSendGroup *)self updateEnabledState];
  if ([(VCMediaStreamGroup *)self streamGroupID]== 1937339233)
  {
    self->super._areStreamsSuspended = 1;
  }

  v3.receiver = self;
  v3.super_class = VCMediaStreamSendGroup;
  [(VCMediaStreamGroup *)&v3 didStop];
}

- (void)didPause:(BOOL)pause
{
  pauseCopy = pause;
  v6 = *MEMORY[0x1E69E9840];
  [(VCMediaStreamSendGroup *)self updateEnabledState];
  v5.receiver = self;
  v5.super_class = VCMediaStreamSendGroup;
  [(VCMediaStreamGroup *)&v5 didPause:pauseCopy];
}

- (void)setStatisticsCollector:(id)collector
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCMediaStreamSendGroup_setStatisticsCollector___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = collector;
  dispatch_async(stateQueue, block);
}

void *__49__VCMediaStreamSendGroup_setStatisticsCollector___block_invoke(void *result)
{
  v1 = *(result[4] + 232);
  if (v1 != result[5])
  {
    v2 = result;

    if ([*(v2[4] + 472) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(v2[4] + 480))}])
    {
      [objc_msgSend(*(v2[4] + 472) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(v2[4] + 480))), "setStatisticsCollector:", v2[5]}];
    }

    result = v2[5];
    *(v2[4] + 232) = result;
  }

  return result;
}

- (void)didReceiveRTCPPackets:(_RTCPPacketList *)packets
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x68810000000;
  v7[3] = &unk_1DBF04739;
  memset(v8, 170, sizeof(v8));
  RTCPShallowCopyPacketList(packets, v8);
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VCMediaStreamSendGroup_didReceiveRTCPPackets___block_invoke;
  block[3] = &unk_1E85F6D88;
  block[4] = self;
  block[5] = v7;
  block[6] = packets;
  dispatch_async(stateQueue, block);
  _Block_object_dispose(v7, 8);
}

- (BOOL)isSourceTimestampInfoAvailable
{
  pthread_rwlock_wrlock(&self->_sourceTimestampRWLock);
  isSourceTimestampInfoAvailable = self->_isSourceTimestampInfoAvailable;
  pthread_rwlock_unlock(&self->_sourceTimestampRWLock);
  return isSourceTimestampInfoAvailable;
}

void __48__VCMediaStreamSendGroup_didReceiveRTCPPackets___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 480) == 1)
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    if (*(v2 + 40))
    {
      v4 = 0;
      v5 = v2 + 48;
      while (1)
      {
        v6 = *(*(v5 + 8 * v4) + 1);
        if ((v6 - 245) < 2)
        {
          break;
        }

        if ((v6 - 200) <= 1)
        {
          [*(a1 + 32) didReceiveReportPacket:? arrivalNTPTime:?];
          goto LABEL_10;
        }

        if (++v4 >= v3)
        {
          goto LABEL_10;
        }
      }

      [*(a1 + 32) didReceiveCustomReportPacket:? arrivalNTPTime:?];
    }
  }

LABEL_10:
  v7 = *(*(a1 + 40) + 8) + 32;

  RTCPCleanupPacketList(v7);
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 136315650;
    v13 = v3;
    OUTLINED_FUNCTION_0();
    v14 = 76;
    OUTLINED_FUNCTION_16_0();
LABEL_12:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
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
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      v14 = 76;
      v15 = 2112;
      v16 = v2;
      v17 = 2048;
      v18 = a1;
      v4 = &dword_1DB56E000;
      v7 = " [%s] %s:%d %@(%p) The dictionary for stream send group config for stream mode is nil";
      v8 = &v12;
      v5 = v11;
      v6 = OS_LOG_TYPE_ERROR;
      v9 = 48;
      goto LABEL_12;
    }
  }
}

- (void)initWithConfig:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)setupStreamGroupWithConfig:(void *)a1 .cold.1(void *a1, _BYTE *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)setupStreamGroupWithConfig:(void *)a1 .cold.2(void *a1, _BYTE *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

@end