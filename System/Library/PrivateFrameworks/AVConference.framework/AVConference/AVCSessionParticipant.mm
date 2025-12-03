@interface AVCSessionParticipant
+ (id)archiveMediaStates:(id)states;
+ (id)loopbackNegotiationDataWithData:(id)data;
+ (id)unarchiveMediaStatesWithData:(id)data;
+ (unsigned)defaultStateForMediaType:(unsigned int)type isLocal:(BOOL)local;
- (AVCSessionParticipant)initWithParticipantID:(unint64_t)d data:(id)data delegate:(id)delegate queue:(id)queue;
- (BOOL)generateMediaStateEntryForMediaType:(unsigned int)type;
- (BOOL)hasPendingChanges;
- (BOOL)isEnabledMediaType:(unsigned int)type;
- (BOOL)isPausedMediaType:(unsigned int)type;
- (BOOL)isStateQueueSet;
- (BOOL)setupMediaStates;
- (NSString)description;
- (NSString)dispatchedParticipantStatus;
- (NSUUID)playbackSynchronizationGroupUUID;
- (id)copyStateQueue;
- (id)newNSErrorWithErrorDictionary:(id)dictionary;
- (int64_t)streamTokenForStreamGroupID:(unsigned int)d;
- (tagAVCPositionalInfo)videoPositionalInfo;
- (unint64_t)spatialAudioSourceIDForMediaType:(unsigned int)type;
- (unsigned)dispatchedProminenceIndex;
- (unsigned)mediaStateForMediaType:(unsigned int)type;
- (unsigned)uint32ValueForPropertyName:(id)name;
- (void)accessPropertyWithName:(id)name block:(id)block;
- (void)appendConfigurationToXPCConfiguration:(id)configuration;
- (void)completeAudioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)completeAudioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)completeScreenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)completeSetMediaState:(unsigned int)state forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error;
- (void)completeVideoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)completeVideoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)dealloc;
- (void)deregisterFromNotifications;
- (void)dispatchedCompleteAudioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)dispatchedCompleteAudioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)dispatchedCompleteScreenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)dispatchedCompleteVideoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)dispatchedCompleteVideoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)dispatchedLegacySetMediaState:(unsigned int)state forMediaType:(unsigned int)type;
- (void)dispatchedSetMediaState:(unsigned int)state forMediaType:(unsigned int)type;
- (void)handleLegacyTransitionsForMediaType:(unsigned int)type mediaState:(unsigned int)state previousState:(unsigned int)previousState didSucceed:(BOOL)succeed error:(id)error;
- (void)printMediaStates;
- (void)registerBlocksForNotifications;
- (void)setAudioEnabled:(BOOL)enabled;
- (void)setAudioMuted:(BOOL)muted;
- (void)setAudioPaused:(BOOL)paused;
- (void)setIsPlaybackSynchronizationGroupMember:(BOOL)member;
- (void)setMediaState:(unsigned int)state forMediaType:(unsigned int)type;
- (void)setMediaType:(unsigned int)type enabled:(BOOL)enabled mediaString:(const char *)string xpcMessageKey:(char *)key xpcOperationKey:(id)operationKey completionBlock:(id)block;
- (void)setMediaType:(unsigned int)type paused:(BOOL)paused mediaString:(const char *)string xpcMessageKey:(char *)key xpcOperationKey:(id)operationKey completionBlock:(id)block;
- (void)setMediaTypeToSpatialSourceIDMap:(id)map;
- (void)setPlaybackSynchronizationGroupUUID:(id)d;
- (void)setProminenceIndex:(unsigned int)index;
- (void)setPropertyValue:(id)value forPropertyName:(id)name xpcKey:(id)key xpcMessageName:(const char *)messageName batchSupported:(BOOL)supported;
- (void)setScreenControlEnabled:(BOOL)enabled;
- (void)setSharedXPCConnection:(id)connection;
- (void)setStateQueue:(id)localStateQueue;
- (void)setStreamTokens:(id)tokens;
- (void)setUpConfig;
- (void)setVideoEnabled:(BOOL)enabled;
- (void)setVideoPaused:(BOOL)paused;
- (void)setVideoPositionalInfo:(tagAVCPositionalInfo *)info;
- (void)setVideoQuality:(unsigned __int8)quality;
- (void)setVisibilityIndex:(unsigned int)index;
- (void)setVolume:(float)volume;
- (void)setupMediaStates;
- (void)setupNotificationQueue:(id)queue;
- (void)stateTransitionForMediaType:(unsigned int)type mediaState:(unsigned int)state previousState:(unsigned int)previousState didSucceed:(BOOL)succeed error:(id)error;
- (void)storeMediaState:(unsigned int)state forMediaType:(unsigned int)type;
- (void)updateLegacyStates;
@end

@implementation AVCSessionParticipant

- (AVCSessionParticipant)initWithParticipantID:(unint64_t)d data:(id)data delegate:(id)delegate queue:(id)queue
{
  v38 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AVCSessionParticipant;
  v10 = [(AVCSessionParticipant *)&v27 init];
  if (v10)
  {
    if (objc_opt_class() == v10)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v29 = v12;
          v30 = 2080;
          v31 = "[AVCSessionParticipant initWithParticipantID:data:delegate:queue:]";
          v32 = 1024;
          v33 = 82;
          v14 = " [%s] %s:%d ";
          v15 = v13;
          v16 = 28;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(AVCSessionParticipant *)v10 performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v29 = v17;
          v30 = 2080;
          v31 = "[AVCSessionParticipant initWithParticipantID:data:delegate:queue:]";
          v32 = 1024;
          v33 = 82;
          v34 = 2112;
          v35 = v11;
          v36 = 2048;
          v37 = v10;
          v14 = " [%s] %s:%d %@(%p) ";
          v15 = v18;
          v16 = 48;
          goto LABEL_12;
        }
      }
    }

    v10->_idsParticipantID = d;
    v10->_isLocal = d == 0;
    if (data)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10->_mediaStates = v19;
      if (v19)
      {
        if (VCDefaults_GetBoolValueForKey(@"forceLoopback", 0))
        {
          data = [AVCSessionParticipant loopbackNegotiationDataWithData:data];
        }

        v20 = [objc_msgSend(+[VCSessionParticipant participantInfoWithParticipantData:](VCSessionParticipant participantInfoWithParticipantData:{data), "objectForKeyedSubscript:", @"vcSessionParticipantKeyUUID", "copy"}];
        v10->_participantID = v20;
        if (v20)
        {
          v21 = [VCSessionParticipant participantDataWithParticipantData:data isReinit:d == 0];
          v10->_participantData = v21;
          if (v21)
          {
            if ([(AVCSessionParticipant *)v10 setupMediaStates])
            {
              v22 = objc_alloc_init(VCSessionParticipantUpdateConfig);
              v10->_updateConfig = v22;
              if (v22)
              {
                CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
                v24 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCSessionParticipant.stateQueue", 0, CustomRootQueue);
                v10->_localStateQueue = v24;
                if (v24)
                {
                  v25 = v24;
                  dispatch_retain(v24);
                  v10->_stateQueue = v25;
                  pthread_mutex_init(&v10->_mediaStateMutex, 0);
                  pthread_rwlock_init(&v10->_stateQueueLock, 0);
                  objc_storeWeak(&v10->_delegate, delegate);
                  [(AVCSessionParticipant *)v10 setupNotificationQueue:queue];
                  [(AVCSessionParticipant *)v10 setUpConfig];
                  return v10;
                }

                [AVCSessionParticipant initWithParticipantID:v10 data:? delegate:? queue:?];
              }

              else
              {
                [AVCSessionParticipant initWithParticipantID:v10 data:? delegate:? queue:?];
              }
            }

            else
            {
              [AVCSessionParticipant initWithParticipantID:v10 data:? delegate:? queue:?];
            }
          }

          else
          {
            [AVCSessionParticipant initWithParticipantID:v10 data:? delegate:? queue:?];
          }
        }

        else
        {
          [AVCSessionParticipant initWithParticipantID:v10 data:? delegate:? queue:?];
        }
      }

      else
      {
        [AVCSessionParticipant initWithParticipantID:v10 data:? delegate:? queue:?];
      }
    }

    else
    {
      [AVCSessionParticipant initWithParticipantID:v10 data:? delegate:? queue:?];
    }

    return 0;
  }

  return v10;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_delegate, 0);
  delegateNotificationQueue = self->_delegateNotificationQueue;
  if (delegateNotificationQueue)
  {
    dispatch_release(delegateNotificationQueue);
  }

  objc_storeWeak(&self->_connection, 0);

  localStateQueue = self->_localStateQueue;
  if (localStateQueue)
  {
    dispatch_release(localStateQueue);
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  pthread_mutex_destroy(&self->_mediaStateMutex);
  pthread_rwlock_destroy(&self->_stateQueueLock);
  v6.receiver = self;
  v6.super_class = AVCSessionParticipant;
  [(AVCSessionParticipant *)&v6 dealloc];
}

- (NSString)description
{
  v3 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2D8), "unsignedIntValue"}] != 0;
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2F0), "unsignedIntValue"}] != 0;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"%@[%p] idsParticipantID[%llu] _participantID[%@] audioEnabled[%d] videoEnabled[%d] participantData[%@] %@", NSStringFromClass(v6), self, self->_idsParticipantID, self->_participantID, v3, v4, self->_participantData, -[VCSessionParticipantUpdateConfig description](self->_updateConfig, "description")];
}

- (void)setMediaState:(unsigned int)state forMediaType:(unsigned int)type
{
  v4 = *&state;
  v11 = *MEMORY[0x1E69E9840];
  v6 = VCSessionMediaType_FromAVCSessionMediaType(type);
  v7 = VCSessionMediaState_FromAVCSessionMediaState(v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVCSessionParticipant_setMediaState_forMediaType___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, block);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

uint64_t __52__AVCSessionParticipant_setMediaState_forMediaType___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isConnectedToSession];
  pthread_mutex_lock((*(a1 + 32) + 136));
  if ((v2 & 1) == 0)
  {
    v9 = [objc_msgSend(*(*(a1 + 32) + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 40))), "unsignedIntValue"}];
    v10 = VCSessionMediaState_Name(*(a1 + 44));
    v11 = VCSessionMediaType_Name(*(a1 + 40));
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_23;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v16 = *(*(a1 + 32) + 16);
      *buf = 136316418;
      v66 = v14;
      v67 = 2080;
      v68 = "[AVCSessionParticipant setMediaState:forMediaType:]_block_invoke";
      v69 = 1024;
      v70 = 198;
      v71 = 2112;
      v72 = v16;
      v73 = 2112;
      v74 = v11;
      v75 = 2112;
      v76 = v10;
      v17 = " [%s] %s:%d ParticipantID=%@ mediaType=%@ mediaState=%@";
      v18 = v15;
      v19 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_23;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v22 = *(a1 + 32);
      data = v22->data;
      *buf = 136316930;
      v66 = v20;
      v67 = 2080;
      v68 = "[AVCSessionParticipant setMediaState:forMediaType:]_block_invoke";
      v69 = 1024;
      v70 = 198;
      v71 = 2112;
      v72 = v12;
      v73 = 2048;
      v74 = v22;
      v75 = 2112;
      v76 = data;
      v77 = 2112;
      v78 = v11;
      v79 = 2112;
      v80 = v10;
      v17 = " [%s] %s:%d %@(%p) ParticipantID=%@ mediaType=%@ mediaState=%@";
      v18 = v21;
      v19 = 78;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_23:
    [*(a1 + 32) storeMediaState:*(a1 + 44) forMediaType:*(a1 + 40)];
    pthread_mutex_unlock((*(a1 + 32) + 136));
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 44);
    v27 = v9;
LABEL_24:
    v28 = 1;
    v29 = 0;
    return [v24 stateTransitionForMediaType:v25 mediaState:v26 previousState:v27 didSucceed:v28 error:v29];
  }

  v3 = VCSessionMediaType_Name(*(a1 + 40));
  v4 = VCSessionMediaState_Name(*(a1 + 44));
  v5 = [objc_msgSend(*(*(a1 + 32) + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 40))), "unsignedIntValue"}];
  v6 = *(a1 + 32);
  if (*(v6 + 104) == 1 && (*(v6 + 208) & 1) == 0)
  {
    v64 = 0;
    v31 = [*(v6 + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 40))}];
    v63 = -1;
    if (v31)
    {
      v63 = [v31 unsignedIntValue];
      v32 = [*(*(a1 + 32) + 200) addCachedTransitionForMediaType:*(a1 + 40) toState:*(a1 + 44) previousState:&v63 error:&v64];
      result = pthread_mutex_unlock((*(a1 + 32) + 136));
      if (v32)
      {
        return result;
      }

      v27 = v63;
      v33 = v64;
    }

    else
    {
      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v59 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __52__AVCSessionParticipant_setMediaState_forMediaType___block_invoke_cold_1(v59);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v48 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        else
        {
          v48 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v60 = VRTraceErrorLogLevelToCSTR();
          v61 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v62 = *(a1 + 32);
            *buf = 136316162;
            v66 = v60;
            v67 = 2080;
            v68 = "[AVCSessionParticipant setMediaState:forMediaType:]_block_invoke";
            v69 = 1024;
            v70 = 224;
            v71 = 2112;
            v72 = v48;
            v73 = 2048;
            v74 = v62;
            _os_log_error_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to retrieve current media state", buf, 0x30u);
          }
        }
      }

      v33 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32026 detailCode:0 description:@"Invalid transition"];
      v64 = v33;
      pthread_mutex_unlock((*(a1 + 32) + 136));
      v27 = 0xFFFFFFFFLL;
    }

    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 44);
    v28 = 0;
    v29 = v33;
    return [v24 stateTransitionForMediaType:v25 mediaState:v26 previousState:v27 didSucceed:v28 error:v29];
  }

  v7 = [*(v6 + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 40))}];
  if (v7 && [v7 unsignedIntValue] == *(a1 + 44))
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_52;
      }

      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      v51 = *(*(a1 + 32) + 16);
      *buf = 136316418;
      v66 = v49;
      v67 = 2080;
      v68 = "[AVCSessionParticipant setMediaState:forMediaType:]_block_invoke";
      v69 = 1024;
      v70 = 236;
      v71 = 2112;
      v72 = v51;
      v73 = 2112;
      v74 = v3;
      v75 = 2112;
      v76 = v4;
      v52 = " [%s] %s:%d ParticipantID=%@ mediaType=%@ is already in mediaState=%@";
      v53 = v50;
      v54 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_52;
      }

      v55 = VRTraceErrorLogLevelToCSTR();
      v56 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      v57 = *(a1 + 32);
      v58 = v57->data;
      *buf = 136316930;
      v66 = v55;
      v67 = 2080;
      v68 = "[AVCSessionParticipant setMediaState:forMediaType:]_block_invoke";
      v69 = 1024;
      v70 = 236;
      v71 = 2112;
      v72 = v8;
      v73 = 2048;
      v74 = v57;
      v75 = 2112;
      v76 = v58;
      v77 = 2112;
      v78 = v3;
      v79 = 2112;
      v80 = v4;
      v52 = " [%s] %s:%d %@(%p) ParticipantID=%@ mediaType=%@ is already in mediaState=%@";
      v53 = v56;
      v54 = 78;
    }

    _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, v52, buf, v54);
LABEL_52:
    pthread_mutex_unlock((*(a1 + 32) + 136));
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 44);
    v27 = v5;
    goto LABEL_24;
  }

  pthread_mutex_unlock((*(a1 + 32) + 136));
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_38;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v36 = *(*(a1 + 32) + 16);
    *buf = 136316418;
    v66 = v34;
    v67 = 2080;
    v68 = "[AVCSessionParticipant setMediaState:forMediaType:]_block_invoke";
    v69 = 1024;
    v70 = 242;
    v71 = 2112;
    v72 = v36;
    v73 = 2112;
    v74 = v3;
    v75 = 2112;
    v76 = v4;
    v37 = " [%s] %s:%d ParticipantID=%@ mediaType=%@ mediaState=%@";
    v38 = v35;
    v39 = 58;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_38;
    }

    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v42 = *(a1 + 32);
    v43 = v42->data;
    *buf = 136316930;
    v66 = v40;
    v67 = 2080;
    v68 = "[AVCSessionParticipant setMediaState:forMediaType:]_block_invoke";
    v69 = 1024;
    v70 = 242;
    v71 = 2112;
    v72 = v13;
    v73 = 2048;
    v74 = v42;
    v75 = 2112;
    v76 = v43;
    v77 = 2112;
    v78 = v3;
    v79 = 2112;
    v80 = v4;
    v37 = " [%s] %s:%d %@(%p) ParticipantID=%@ mediaType=%@ mediaState=%@";
    v38 = v41;
    v39 = 78;
  }

  _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
LABEL_38:
  v44 = [AVCSessionParticipant isMediaStateAPISupportedForMediaType:*(a1 + 40)];
  v45 = *(a1 + 32);
  v47 = *(a1 + 40);
  v46 = *(a1 + 44);
  if (v44)
  {
    return [v45 dispatchedSetMediaState:v46 forMediaType:v47];
  }

  else
  {
    return [v45 dispatchedLegacySetMediaState:v46 forMediaType:v47];
  }
}

- (unsigned)mediaStateForMediaType:(unsigned int)type
{
  v3 = *&type;
  pthread_mutex_lock(&self->_mediaStateMutex);
  v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)), "unsignedIntValue"}];
  pthread_mutex_unlock(&self->_mediaStateMutex);

  return VCSessionMediaState_FromAVCSessionMediaState(v5);
}

- (void)setAudioMuted:(BOOL)muted
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:muted];
  v5 = !self->_isLocal;

  [(AVCSessionParticipant *)self setPropertyValue:v4 forPropertyName:@"microphoneMuted" xpcKey:@"vcSessionParameterMute" xpcMessageName:"vcSessionSetMute" batchSupported:v5];
}

- (void)setAudioEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7[5] = *MEMORY[0x1E69E9840];
  v5 = [(AVCSessionParticipant *)self mediaStateForMediaType:0];
  if (enabledCopy && v5 == 2)
  {
    delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__AVCSessionParticipant_setAudioEnabled___block_invoke;
    v7[3] = &unk_1E85F3778;
    v7[4] = self;
    dispatch_async(delegateNotificationQueue, v7);
  }

  else
  {

    [(AVCSessionParticipant *)self setMediaState:enabledCopy forMediaType:0];
  }
}

- (void)setVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7[5] = *MEMORY[0x1E69E9840];
  v5 = [(AVCSessionParticipant *)self mediaStateForMediaType:1];
  if (enabledCopy && v5 == 2)
  {
    delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__AVCSessionParticipant_setVideoEnabled___block_invoke;
    v7[3] = &unk_1E85F3778;
    v7[4] = self;
    dispatch_async(delegateNotificationQueue, v7);
  }

  else
  {

    [(AVCSessionParticipant *)self setMediaState:enabledCopy forMediaType:1];
  }
}

- (void)setAudioPaused:(BOOL)paused
{
  block[6] = *MEMORY[0x1E69E9840];
  if (paused)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(AVCSessionParticipant *)self mediaStateForMediaType:0];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32026 detailCode:0 description:@"Invalid transition"];
    delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AVCSessionParticipant_setAudioPaused___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = v9;
    v8 = block;
    goto LABEL_9;
  }

  if (v6 == 1 && !paused)
  {
    delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__AVCSessionParticipant_setAudioPaused___block_invoke_2;
    v10[3] = &unk_1E85F3778;
    v10[4] = self;
    v8 = v10;
LABEL_9:
    dispatch_async(delegateNotificationQueue, v8);
    return;
  }

  [(AVCSessionParticipant *)self setMediaState:v5 forMediaType:0];
}

- (void)setVideoPaused:(BOOL)paused
{
  block[6] = *MEMORY[0x1E69E9840];
  if (paused)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(AVCSessionParticipant *)self mediaStateForMediaType:1];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32026 detailCode:0 description:@"Invalid transition"];
    delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AVCSessionParticipant_setVideoPaused___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = v9;
    v8 = block;
    goto LABEL_9;
  }

  if (v6 == 1 && !paused)
  {
    delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__AVCSessionParticipant_setVideoPaused___block_invoke_2;
    v10[3] = &unk_1E85F3778;
    v10[4] = self;
    v8 = v10;
LABEL_9:
    dispatch_async(delegateNotificationQueue, v8);
    return;
  }

  [(AVCSessionParticipant *)self setMediaState:v5 forMediaType:1];
}

- (void)setVolume:(float)volume
{
  v6 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVCSessionParticipant_setVolume___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  volumeCopy = volume;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, block);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

void __35__AVCSessionParticipant_setVolume___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isConnectedToSession] & 1) == 0)
  {
    *(*(a1 + 32) + 100) = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v8 = *(*(a1 + 32) + 88);

    [v8 setObject:v7 forKeyedSubscript:@"vcSessionParameterVolume"];
    return;
  }

  v2 = *(*(a1 + 32) + 100);
  v3 = *(a1 + 40);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  if (v2 != v3)
  {
    if (v4 == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_28;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v22 = *(a1 + 40);
      *buf = 136315906;
      v35 = v20;
      v36 = 2080;
      v37 = "[AVCSessionParticipant setVolume:]_block_invoke";
      v38 = 1024;
      v39 = 370;
      v40 = 2048;
      v41 = v22;
      v23 = " [%s] %s:%d volume[%f]";
      v24 = v21;
      v25 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_28;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      *buf = 136316418;
      v35 = v26;
      v36 = 2080;
      v37 = "[AVCSessionParticipant setVolume:]_block_invoke";
      v38 = 1024;
      v39 = 370;
      v40 = 2112;
      v41 = *&v9;
      v42 = 2048;
      v43 = v28;
      v44 = 2048;
      v45 = v29;
      v23 = " [%s] %s:%d %@(%p) volume[%f]";
      v24 = v27;
      v25 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
LABEL_28:
    *(*(a1 + 32) + 100) = *(a1 + 40);
    [*(*(a1 + 32) + 88) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"vcSessionParameterVolume"}];
    v30 = *(*(a1 + 32) + 16);
    v32[1] = @"vcSessionParameterVolume";
    v33[0] = v30;
    v32[0] = @"vcSessionParticipantID";
    LODWORD(v31) = *(a1 + 40);
    v33[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v31, @"vcSessionParticipantID", @"vcSessionParameterVolume", v30}];
    [objc_msgSend(*(a1 + 32) "sharedXPCConnection")];
    return;
  }

  if (v4 == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *buf = 136315906;
        v35 = v10;
        v36 = 2080;
        v37 = "[AVCSessionParticipant setVolume:]_block_invoke";
        v38 = 1024;
        v39 = 367;
        v40 = 2048;
        v41 = v12;
        v13 = " [%s] %s:%d Participant volume is already [%f]";
        v14 = v11;
        v15 = 38;
LABEL_19:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
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

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        *buf = 136316418;
        v35 = v16;
        v36 = 2080;
        v37 = "[AVCSessionParticipant setVolume:]_block_invoke";
        v38 = 1024;
        v39 = 367;
        v40 = 2112;
        v41 = *&v6;
        v42 = 2048;
        v43 = v18;
        v44 = 2048;
        v45 = v19;
        v13 = " [%s] %s:%d %@(%p) Participant volume is already [%f]";
        v14 = v17;
        v15 = 58;
        goto LABEL_19;
      }
    }
  }
}

- (void)setVideoQuality:(unsigned __int8)quality
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:quality];
  v5 = !self->_isLocal;

  [(AVCSessionParticipant *)self setPropertyValue:v4 forPropertyName:@"videoQuality" xpcKey:@"vcSessionParameterVideoQuality" xpcMessageName:"vcSessionSetVideoQuality" batchSupported:v5];
}

- (void)setVisibilityIndex:(unsigned int)index
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v5 = !self->_isLocal;

  [(AVCSessionParticipant *)self setPropertyValue:v4 forPropertyName:@"visibilityIndex" xpcKey:@"vcSessionParameterVisibilityIndex" xpcMessageName:"vcSessionSetVisibilityIndex" batchSupported:v5];
}

- (void)setScreenControlEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVCSessionParticipant_setScreenControlEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, block);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

void __49__AVCSessionParticipant_setScreenControlEnabled___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if (([*(a1 + 32) isConnectedToSession] & 1) == 0)
  {
    *(*(a1 + 32) + 121) = *(a1 + 40);
    v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v5 = *(*(a1 + 32) + 88);

    [v5 setObject:v4 forKeyedSubscript:@"vcSessionParameterParticipantScreenControlEnabled"];
    return;
  }

  if (objc_opt_class() == *v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 136315906;
        v36 = v6;
        v37 = 2080;
        v38 = "[AVCSessionParticipant setScreenControlEnabled:]_block_invoke";
        v39 = 1024;
        v40 = 410;
        v41 = 1024;
        LODWORD(v42) = v8;
        v9 = " [%s] %s:%d remoteScreenControlEnabled[%d]";
        v10 = v7;
        v11 = 34;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [*v2 performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        *buf = 136316418;
        v36 = v12;
        v37 = 2080;
        v38 = "[AVCSessionParticipant setScreenControlEnabled:]_block_invoke";
        v39 = 1024;
        v40 = 410;
        v41 = 2112;
        v42 = v3;
        v43 = 2048;
        v44 = v14;
        v45 = 1024;
        v46 = v15;
        v9 = " [%s] %s:%d %@(%p) remoteScreenControlEnabled[%d]";
        v10 = v13;
        v11 = 54;
        goto LABEL_15;
      }
    }
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 32);
  if (v16 != *(v17 + 121))
  {
    *(v17 + 121) = v16;
    [*(*(a1 + 32) + 88) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", *(a1 + 40)), @"vcSessionParameterParticipantScreenControlEnabled"}];
    v34[1] = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 40), @"vcSessionParticipantID", @"vcSessionParameterParticipantScreenControlEnabled", *(*(a1 + 32) + 16)}];
    [objc_msgSend(*(a1 + 32) "sharedXPCConnection")];
    return;
  }

  if (objc_opt_class() == *v2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    v21 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v22 = *(*v2 + 121);
      *buf = 136315906;
      v36 = v19;
      v37 = 2080;
      v38 = "[AVCSessionParticipant setScreenControlEnabled:]_block_invoke";
      v39 = 1024;
      v40 = 412;
      v41 = 1024;
      LODWORD(v42) = v22;
      v23 = " [%s] %s:%d remoteScreenControlEnabled is already set to %d";
      v24 = v20;
      v25 = 34;
LABEL_30:
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      return;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __49__AVCSessionParticipant_setScreenControlEnabled___block_invoke_cold_1();
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [*v2 performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      v28 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v29 = *v2;
        v30 = *(*v2 + 121);
        *buf = 136316418;
        v36 = v26;
        v37 = 2080;
        v38 = "[AVCSessionParticipant setScreenControlEnabled:]_block_invoke";
        v39 = 1024;
        v40 = 412;
        v41 = 2112;
        v42 = v18;
        v43 = 2048;
        v44 = v29;
        v45 = 1024;
        v46 = v30;
        v23 = " [%s] %s:%d %@(%p) remoteScreenControlEnabled is already set to %d";
        v24 = v27;
        v25 = 54;
        goto LABEL_30;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v31 = *v2;
        v32 = *(*v2 + 121);
        *buf = 136316418;
        v36 = v26;
        v37 = 2080;
        v38 = "[AVCSessionParticipant setScreenControlEnabled:]_block_invoke";
        v39 = 1024;
        v40 = 412;
        v41 = 2112;
        v42 = v18;
        v43 = 2048;
        v44 = v31;
        v45 = 1024;
        v46 = v32;
        _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) remoteScreenControlEnabled is already set to %d", buf, 0x36u);
      }
    }
  }
}

- (unsigned)dispatchedProminenceIndex
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = [(VCSessionParticipantUpdateConfig *)self->_updateConfig propertyWithName:@"prominenceIndex"];

  return [v3 unsignedIntValue];
}

- (void)setProminenceIndex:(unsigned int)index
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&index];
  v5 = !self->_isLocal;

  [(AVCSessionParticipant *)self setPropertyValue:v4 forPropertyName:@"prominenceIndex" xpcKey:@"vcSessionParameterProminenceIndex" xpcMessageName:"vcSessionSetProminenceIndex" batchSupported:v5];
}

- (tagAVCPositionalInfo)videoPositionalInfo
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x5010000000;
  v11 = &unk_1DBF04739;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AVCSessionParticipant_videoPositionalInfo__block_invoke;
  v7[3] = &unk_1E85F7E98;
  v7[4] = &v8;
  [(AVCSessionParticipant *)self accessPropertyWithName:@"positionalInfo" block:v7];
  v4 = v9;
  v5 = *(v9 + 3);
  *&retstr->var0 = *(v9 + 2);
  *&retstr->var1.height = v5;
  *&retstr->var3 = *(v4 + 4);
  _Block_object_dispose(&v8, 8);
  return result;
}

__n128 __44__AVCSessionParticipant_videoPositionalInfo__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 avcPositionalInfo];
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
  }

  v3 = *(*(a1 + 32) + 8);
  result = v7;
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return result;
}

- (void)setVideoPositionalInfo:(tagAVCPositionalInfo *)info
{
  v26 = *MEMORY[0x1E69E9840];
  if (info->var0 >= 2)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCSessionParticipant setVideoPositionalInfo:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(AVCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          var0 = info->var0;
          *buf = 136316418;
          v15 = v7;
          v16 = 2080;
          v17 = "[AVCSessionParticipant setVideoPositionalInfo:]";
          v18 = 1024;
          v19 = 451;
          v20 = 2112;
          v21 = v6;
          v22 = 2048;
          selfCopy = self;
          v24 = 1024;
          v25 = var0;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) [AVC SPATIAL AUDIO] Invalid flags=%08x", buf, 0x36u);
        }
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v5 = *&info->var1.height;
    v11 = *&info->var0;
    v12 = v5;
    block[2] = __48__AVCSessionParticipant_setVideoPositionalInfo___block_invoke;
    block[3] = &unk_1E85F7F08;
    block[4] = self;
    v13 = *&info->var3;
    pthread_rwlock_rdlock(&self->_stateQueueLock);
    dispatch_async(self->_stateQueue, block);
    pthread_rwlock_unlock(&self->_stateQueueLock);
  }
}

void __48__AVCSessionParticipant_setVideoPositionalInfo___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isConnectedToSession];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  if (v2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__AVCSessionParticipant_setVideoPositionalInfo___block_invoke_3;
    v15[3] = &__block_descriptor_80_e26_v16__0__VCPositionalInfo_8l;
    v5 = *(a1 + 56);
    v16 = *(a1 + 40);
    v17 = v5;
    v18 = *(a1 + 72);
    [v4 setPositionalInfoParamWithBlock:v15 forceCache:1];
    if ((*(*(a1 + 32) + 104) & 1) == 0)
    {
      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v24 = v7;
            v25 = 2080;
            v26 = "[AVCSessionParticipant setVideoPositionalInfo:]_block_invoke";
            v27 = 1024;
            v28 = 471;
            v9 = " [%s] %s:%d [AVC SPATIAL AUDIO] Video position info will not be applied until endParticipantConfiguration is called.";
            v10 = v8;
            v11 = 28;
LABEL_15:
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
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
            *buf = 136316162;
            v24 = v12;
            v25 = 2080;
            v26 = "[AVCSessionParticipant setVideoPositionalInfo:]_block_invoke";
            v27 = 1024;
            v28 = 471;
            v29 = 2112;
            v30 = v6;
            v31 = 2048;
            v32 = v14;
            v9 = " [%s] %s:%d %@(%p) [AVC SPATIAL AUDIO] Video position info will not be applied until endParticipantConfiguration is called.";
            v10 = v13;
            v11 = 48;
            goto LABEL_15;
          }
        }
      }
    }
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __48__AVCSessionParticipant_setVideoPositionalInfo___block_invoke_2;
    v19[3] = &unk_1E85F7EC0;
    v20 = *(a1 + 40);
    v21 = *(a1 + 56);
    v22 = *(a1 + 72);
    v19[4] = v3;
    [v4 setPositionalInfoParamWithBlock:v19 forceCache:0];
  }
}

uint64_t __48__AVCSessionParticipant_setVideoPositionalInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  v6[2] = *(a1 + 72);
  [a2 setAvcPositionalInfo:v6];
  result = [a2 serialize];
  if (result)
  {
    return [*(*(a1 + 32) + 88) setObject:result forKeyedSubscript:@"vcSessionPositionalInfo"];
  }

  return result;
}

uint64_t __48__AVCSessionParticipant_setVideoPositionalInfo___block_invoke_3(_OWORD *a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1[3];
  v4[0] = a1[2];
  v4[1] = v2;
  v4[2] = a1[4];
  return [a2 setAvcPositionalInfo:v4];
}

- (void)setIsPlaybackSynchronizationGroupMember:(BOOL)member
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:member];
  v5 = !self->_isLocal;

  [(AVCSessionParticipant *)self setPropertyValue:v4 forPropertyName:@"isSynchronizationGroupMember" xpcKey:@"vcSessionParameterIsPlaybackSyncGroupMember" xpcMessageName:"vcSessionSetPlaybackSyncGroupMember" batchSupported:v5];
}

- (NSUUID)playbackSynchronizationGroupUUID
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__AVCSessionParticipant_playbackSynchronizationGroupUUID__block_invoke;
  v4[3] = &unk_1E85F7E98;
  v4[4] = &v5;
  [(AVCSessionParticipant *)self accessPropertyWithName:@"synchronizationGroupUUID" block:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __57__AVCSessionParticipant_playbackSynchronizationGroupUUID__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a2];
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

- (void)setPlaybackSynchronizationGroupUUID:(id)d
{
  if (d)
  {
    uUIDString = [d UUIDString];
  }

  else
  {
    uUIDString = [MEMORY[0x1E695DFB0] null];
  }

  isLocal = self->_isLocal;

  [(AVCSessionParticipant *)self setPropertyValue:uUIDString forPropertyName:@"synchronizationGroupUUID" xpcKey:@"vcSessionParameterIsPlaybackSyncGroupUUID" xpcMessageName:"vcSessionSetPlaybackSyncGroupUUID" batchSupported:isLocal];
}

- (BOOL)hasPendingChanges
{
  selfCopy = self;
  block[6] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVCSessionParticipant_hasPendingChanges__block_invoke;
  v5[3] = &unk_1E85F40B8;
  v5[4] = self;
  v5[5] = &v6;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  stateQueue = selfCopy->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AVCSessionParticipant_DispatchSyncToStateQueue_block_invoke;
  block[3] = &unk_1E85F4E98;
  block[4] = selfCopy;
  block[5] = v5;
  dispatch_sync(stateQueue, block);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __42__AVCSessionParticipant_hasPendingChanges__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) hasCachedChanges];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dispatchedSetMediaState:(unsigned int)state forMediaType:(unsigned int)type
{
  v4 = *&state;
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = self->_participantID;
  v6[0] = @"vcSessionParticipantID";
  v6[1] = @"vcSessionParameterMediaType";
  v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&type];
  v6[2] = @"vcSessionParameterMediaState";
  v7[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](-[AVCSessionParticipant sharedXPCConnection](self, "sharedXPCConnection"), "sendMessageAsync:arguments:", "vcSessionSetMediaState", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3]);
}

- (void)dispatchedLegacySetMediaState:(unsigned int)state forMediaType:(unsigned int)type
{
  v4 = *&type;
  v5 = *&state;
  v25 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_mediaStateMutex);
  v7 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v4)), "unsignedIntValue"}];
  pthread_mutex_unlock(&self->_mediaStateMutex);
  v8 = v5 == 0;
  v9 = v5 != 1 || v7 == 2;
  v10 = !v9;
  if (!v9)
  {
    v8 = 1;
  }

  switch(v4)
  {
    case 2:
      if (v8)
      {
        v12 = @"vcSessionParameterScreenEnabled";
        v11 = "vcSessionSetScreenEnabled";
        v13 = "screen";
LABEL_30:
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __68__AVCSessionParticipant_dispatchedLegacySetMediaState_forMediaType___block_invoke;
        v21[3] = &unk_1E85F7F30;
        v21[4] = self;
        v22 = v4;
        v23 = v5;
        v24 = v7;
        [(AVCSessionParticipant *)self setMediaType:v4 enabled:v10 mediaString:v13 xpcMessageKey:v11 xpcOperationKey:v12 completionBlock:v21];
        return;
      }

      v14 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32026 detailCode:0 description:@"Screen doesn't support pause/resume"];
      selfCopy2 = self;
      v16 = 2;
      break;
    case 1:
      if (v8)
      {
        v11 = "vcSessionSetVideoEnabled";
      }

      else
      {
        v11 = "vcSessionSetVideoPaused";
      }

      if (v8)
      {
        v12 = @"vcSessionParameterVideoEnabled";
      }

      else
      {
        v12 = @"vcSessionParameterVideoPaused";
      }

      v13 = "video";
      if (v8)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    case 0:
      if (v8)
      {
        v11 = "vcSessionSetAudioEnabled";
      }

      else
      {
        v11 = "vcSessionSetAudioPaused";
      }

      if (v8)
      {
        v12 = @"vcSessionParameterAudioEnabled";
      }

      else
      {
        v12 = @"vcSessionParameterAudioPaused";
      }

      v13 = "audio";
      if (v8)
      {
        goto LABEL_30;
      }

LABEL_27:
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68__AVCSessionParticipant_dispatchedLegacySetMediaState_forMediaType___block_invoke_2;
      v17[3] = &unk_1E85F7F30;
      v17[4] = self;
      v18 = v4;
      v19 = v5;
      v20 = v7;
      [(AVCSessionParticipant *)self setMediaType:v4 paused:v5 == 2 mediaString:v13 xpcMessageKey:v11 xpcOperationKey:v12 completionBlock:v17];
      return;
    default:
      v14 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32016 detailCode:0 description:@"Unsupported media type pause/resume"];
      selfCopy2 = self;
      v16 = v4;
      break;
  }

  [(AVCSessionParticipant *)selfCopy2 stateTransitionForMediaType:v16 mediaState:v5 previousState:v7 didSucceed:0 error:v14];
}

- (void)completeSetMediaState:(unsigned int)state forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__AVCSessionParticipant_completeSetMediaState_forMediaType_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F63A0;
  typeCopy = type;
  stateCopy = state;
  succeedCopy = succeed;
  block[4] = self;
  block[5] = error;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, block);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

uint64_t __77__AVCSessionParticipant_completeSetMediaState_forMediaType_didSucceed_error___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = VCSessionMediaType_Name(*(a1 + 48));
  v3 = VCSessionMediaState_Name(*(a1 + 52));
  pthread_mutex_lock((*(a1 + 32) + 136));
  v4 = [objc_msgSend(*(*(a1 + 32) + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))), "unsignedIntValue"}];
  if (objc_opt_class() != *(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v15 = *(a1 + 32);
    data = v15->data;
    v17 = *(a1 + 56);
    v19 = 136317186;
    v20 = v13;
    v21 = 2080;
    v22 = "[AVCSessionParticipant completeSetMediaState:forMediaType:didSucceed:error:]_block_invoke";
    v23 = 1024;
    v24 = 578;
    v25 = 2112;
    v26 = v5;
    v27 = 2048;
    v28 = v15;
    v29 = 2112;
    v30 = data;
    v31 = 2112;
    v32 = v2;
    v33 = 2112;
    v34 = v3;
    v35 = 1024;
    v36 = v17;
    v10 = " [%s] %s:%d %@(%p) ParticipantID=%@ mediaType=%@ mediaState=%@ did succeed[%d]";
    v11 = v14;
    v12 = 84;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 16);
      v9 = *(a1 + 56);
      v19 = 136316674;
      v20 = v6;
      v21 = 2080;
      v22 = "[AVCSessionParticipant completeSetMediaState:forMediaType:didSucceed:error:]_block_invoke";
      v23 = 1024;
      v24 = 578;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v2;
      v29 = 2112;
      v30 = v3;
      v31 = 1024;
      LODWORD(v32) = v9;
      v10 = " [%s] %s:%d ParticipantID=%@ mediaType=%@ mediaState=%@ did succeed[%d]";
      v11 = v7;
      v12 = 64;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v19, v12);
    }
  }

LABEL_12:
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) storeMediaState:*(a1 + 52) forMediaType:*(a1 + 48)];
  }

  pthread_mutex_unlock((*(a1 + 32) + 136));
  return [*(a1 + 32) stateTransitionForMediaType:*(a1 + 48) mediaState:*(a1 + 52) previousState:v4 didSucceed:*(a1 + 56) error:*(a1 + 40)];
}

- (BOOL)generateMediaStateEntryForMediaType:(unsigned int)type
{
  v3 = *&type;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  if (![(NSMutableDictionary *)self->_mediaStates objectForKeyedSubscript:v5])
  {
    [(NSMutableDictionary *)self->_mediaStates setObject:&unk_1F579A2D8 forKeyedSubscript:v5];
  }

  return -[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]) != 0;
}

- (void)printMediaStates
{
  v26 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  mediaStates = self->_mediaStates;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__AVCSessionParticipant_printMediaStates__block_invoke;
  v13[3] = &unk_1E85F7F58;
  v13[4] = string;
  [(NSMutableDictionary *)mediaStates enumerateKeysAndObjectsUsingBlock:v13];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = v6;
        v16 = 2080;
        v17 = "[AVCSessionParticipant printMediaStates]";
        v18 = 1024;
        v19 = 604;
        v20 = 2112;
        v21 = string;
        v8 = " [%s] %s:%d Media state update: %@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCSessionParticipant *)self performSelector:sel_logPrefix];
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
        v15 = v11;
        v16 = 2080;
        v17 = "[AVCSessionParticipant printMediaStates]";
        v18 = 1024;
        v19 = 604;
        v20 = 2112;
        v21 = v5;
        v22 = 2048;
        selfCopy = self;
        v24 = 2112;
        v25 = string;
        v8 = " [%s] %s:%d %@(%p) Media state update: %@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

uint64_t __41__AVCSessionParticipant_printMediaStates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = VCSessionMediaType_Name([a2 unsignedIntValue]);
  return [v4 appendFormat:@"%@[%@] ", v5, VCSessionMediaState_Name(objc_msgSend(a3, "unsignedIntValue"))];
}

- (void)handleLegacyTransitionsForMediaType:(unsigned int)type mediaState:(unsigned int)state previousState:(unsigned int)previousState didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  v12 = previousState == 2 && state == 1;
  v13 = (state == 1) ^ v12;
  delegate = [(AVCSessionParticipant *)self delegate];
  if (type)
  {
    if (type == 2)
    {
      v16 = v13 ^ 1;
      if (!state)
      {
        v16 = 0;
      }

      if (v16 & 1) == 0 && (objc_opt_respondsToSelector())
      {

        [(AVCSessionParticipantDelegate *)delegate participant:self screenEnabled:v13 didSucceed:succeedCopy error:error];
      }
    }

    else if (type == 1)
    {
      v15 = !v12;
      if (state == 2)
      {
        v15 = 0;
      }

      if (v15 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = v13 ^ 1;
        if (!state)
        {
          v19 = 0;
        }

        if (v19 & 1) == 0 && (objc_opt_respondsToSelector())
        {

          [(AVCSessionParticipantDelegate *)delegate participant:self videoEnabled:v13 didSucceed:succeedCopy error:error];
        }
      }

      else
      {

        [(AVCSessionParticipantDelegate *)delegate participant:self videoPaused:state == 2 didSucceed:succeedCopy error:error];
      }
    }
  }

  else
  {
    v17 = !v12;
    if (state == 2)
    {
      v17 = 0;
    }

    if (v17 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v18 = v13 ^ 1;
      if (!state)
      {
        v18 = 0;
      }

      if (v18 & 1) == 0 && (objc_opt_respondsToSelector())
      {

        [(AVCSessionParticipantDelegate *)delegate participant:self audioEnabled:v13 didSucceed:succeedCopy error:error];
      }
    }

    else
    {

      [(AVCSessionParticipantDelegate *)delegate participant:self audioPaused:state == 2 didSucceed:succeedCopy error:error];
    }
  }
}

- (void)stateTransitionForMediaType:(unsigned int)type mediaState:(unsigned int)state previousState:(unsigned int)previousState didSucceed:(BOOL)succeed error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__AVCSessionParticipant_stateTransitionForMediaType_mediaState_previousState_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F7F80;
  typeCopy = type;
  stateCopy = state;
  succeedCopy = succeed;
  block[4] = self;
  block[5] = error;
  previousStateCopy = previousState;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __95__AVCSessionParticipant_stateTransitionForMediaType_mediaState_previousState_didSucceed_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = VCSessionMediaType_FromAVCSessionMediaType(*(a1 + 48));
    [v2 participant:*(a1 + 32) mediaStateDidChange:VCSessionMediaState_FromAVCSessionMediaState(*(a1 + 52)) forMediaType:v3 didSucceed:*(a1 + 60) error:*(a1 + 40)];
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 handleLegacyTransitionsForMediaType:v4 mediaState:v5 previousState:v6 didSucceed:v7 error:v9];
}

- (void)setMediaType:(unsigned int)type enabled:(BOOL)enabled mediaString:(const char *)string xpcMessageKey:(char *)key xpcOperationKey:(id)operationKey completionBlock:(id)block
{
  v12 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__AVCSessionParticipant_setMediaType_enabled_mediaString_xpcMessageKey_xpcOperationKey_completionBlock___block_invoke;
  block[3] = &unk_1E85F7FA8;
  enabledCopy = enabled;
  block[6] = block;
  block[7] = string;
  typeCopy = type;
  block[4] = self;
  block[5] = operationKey;
  block[8] = key;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, block);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

uint64_t __104__AVCSessionParticipant_setMediaType_enabled_mediaString_xpcMessageKey_xpcOperationKey_completionBlock___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isConnectedToSession] & 1) == 0)
  {
    if (objc_opt_class() != *(a1 + 32))
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return (*(*(a1 + 48) + 16))();
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return (*(*(a1 + 48) + 16))();
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 56);
      v18 = *(a1 + 76);
      *buf = 136316674;
      v44 = v14;
      v45 = 2080;
      v46 = "[AVCSessionParticipant setMediaType:enabled:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
      v47 = 1024;
      v48 = 687;
      v49 = 2112;
      v50 = v7;
      v51 = 2048;
      v52 = v16;
      v53 = 2080;
      v54 = v17;
      v55 = 1024;
      v56 = v18;
      v13 = " [%s] %s:%d %@(%p) %sEnabled[%d]";
LABEL_30:
      v22 = v15;
      v23 = 64;
      goto LABEL_31;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      return (*(*(a1 + 48) + 16))();
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return (*(*(a1 + 48) + 16))();
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 76);
    *buf = 136316162;
    v44 = v9;
    v45 = 2080;
    v46 = "[AVCSessionParticipant setMediaType:enabled:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
    v47 = 1024;
    v48 = 687;
    v49 = 2080;
    v50 = v11;
    v51 = 1024;
    LODWORD(v52) = v12;
    v13 = " [%s] %s:%d %sEnabled[%d]";
LABEL_22:
    v22 = v10;
    v23 = 44;
LABEL_31:
    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v13, buf, v23);
    return (*(*(a1 + 48) + 16))();
  }

  v2 = *(a1 + 76);
  pthread_mutex_lock((*(a1 + 32) + 136));
  v3 = [objc_msgSend(*(*(a1 + 32) + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 72))), "unsignedIntValue"}];
  pthread_mutex_unlock((*(a1 + 32) + 136));
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  if (v3 == v2)
  {
    if (v4 != v5)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return (*(*(a1 + 48) + 16))();
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return (*(*(a1 + 48) + 16))();
      }

      v32 = *(a1 + 32);
      v33 = *(a1 + 56);
      v34 = *(a1 + 76);
      *buf = 136316674;
      v44 = v31;
      v45 = 2080;
      v46 = "[AVCSessionParticipant setMediaType:enabled:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
      v47 = 1024;
      v48 = 697;
      v49 = 2112;
      v50 = v6;
      v51 = 2048;
      v52 = v32;
      v53 = 2080;
      v54 = v33;
      v55 = 1024;
      v56 = v34;
      v13 = " [%s] %s:%d %@(%p) Participant %s is already enabled[%d]";
      goto LABEL_30;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return (*(*(a1 + 48) + 16))();
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return (*(*(a1 + 48) + 16))();
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 76);
    *buf = 136316162;
    v44 = v19;
    v45 = 2080;
    v46 = "[AVCSessionParticipant setMediaType:enabled:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
    v47 = 1024;
    v48 = 697;
    v49 = 2080;
    v50 = v20;
    v51 = 1024;
    LODWORD(v52) = v21;
    v13 = " [%s] %s:%d Participant %s is already enabled[%d]";
    goto LABEL_22;
  }

  if (v4 == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_38;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v26 = *(a1 + 56);
    v27 = *(a1 + 76);
    *buf = 136316162;
    v44 = v24;
    v45 = 2080;
    v46 = "[AVCSessionParticipant setMediaType:enabled:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
    v47 = 1024;
    v48 = 701;
    v49 = 2080;
    v50 = v26;
    v51 = 1024;
    LODWORD(v52) = v27;
    v28 = " [%s] %s:%d %sEnabled[%d]";
    v29 = v25;
    v30 = 44;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_38;
    }

    v36 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v38 = *(a1 + 32);
    v39 = *(a1 + 56);
    v40 = *(a1 + 76);
    *buf = 136316674;
    v44 = v36;
    v45 = 2080;
    v46 = "[AVCSessionParticipant setMediaType:enabled:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
    v47 = 1024;
    v48 = 701;
    v49 = 2112;
    v50 = v8;
    v51 = 2048;
    v52 = v38;
    v53 = 2080;
    v54 = v39;
    v55 = 1024;
    v56 = v40;
    v28 = " [%s] %s:%d %@(%p) %sEnabled[%d]";
    v29 = v37;
    v30 = 64;
  }

  _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
LABEL_38:
  v42[1] = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 76), @"vcSessionParticipantID", *(a1 + 40), *(*(a1 + 32) + 16)}];
  return [objc_msgSend(*(a1 + 32) "sharedXPCConnection")];
}

- (void)setMediaType:(unsigned int)type paused:(BOOL)paused mediaString:(const char *)string xpcMessageKey:(char *)key xpcOperationKey:(id)operationKey completionBlock:(id)block
{
  v12 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__AVCSessionParticipant_setMediaType_paused_mediaString_xpcMessageKey_xpcOperationKey_completionBlock___block_invoke;
  block[3] = &unk_1E85F7FA8;
  pausedCopy = paused;
  typeCopy = type;
  block[6] = block;
  block[7] = string;
  block[4] = self;
  block[5] = operationKey;
  block[8] = key;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, block);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

uint64_t __103__AVCSessionParticipant_setMediaType_paused_mediaString_xpcMessageKey_xpcOperationKey_completionBlock___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  if (*(a1 + 76))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (([*(a1 + 32) isConnectedToSession] & 1) == 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_27;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v12 = *(a1 + 56);
      v13 = *(a1 + 76);
      *buf = 136316162;
      v52 = v10;
      v53 = 2080;
      v54 = "[AVCSessionParticipant setMediaType:paused:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
      v55 = 1024;
      v56 = 717;
      v57 = 2080;
      v58 = v12;
      v59 = 1024;
      LODWORD(v60) = v13;
      v14 = " [%s] %s:%d %sPaused[%d]";
      v15 = v11;
      v16 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_27;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v20 = *(a1 + 32);
      v21 = *(a1 + 56);
      v22 = *(a1 + 76);
      *buf = 136316674;
      v52 = v18;
      v53 = 2080;
      v54 = "[AVCSessionParticipant setMediaType:paused:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
      v55 = 1024;
      v56 = 717;
      v57 = 2112;
      v58 = v7;
      v59 = 2048;
      v60 = v20;
      v61 = 2080;
      v62 = v21;
      v63 = 1024;
      v64 = v22;
      v14 = " [%s] %s:%d %@(%p) %sPaused[%d]";
      v15 = v19;
      v16 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
LABEL_27:
    pthread_mutex_lock((*(a1 + 32) + 136));
    if (![objc_msgSend(*(*(a1 + 32) + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 72))), "unsignedIntValue"}])
    {
      +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 9, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCSessionParticipant.m", 721]);
    }

    pthread_mutex_unlock((*(a1 + 32) + 136));
    v23 = *(*(a1 + 48) + 16);
    return v23();
  }

  pthread_mutex_lock((*(a1 + 32) + 136));
  v3 = [objc_msgSend(*(*(a1 + 32) + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 72))), "unsignedIntValue"}];
  pthread_mutex_unlock((*(a1 + 32) + 136));
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    if (v2 == v3)
    {
      if (v4 == v5)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_41;
        }

        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        v26 = *(a1 + 56);
        v27 = *(a1 + 76);
        *buf = 136316162;
        v52 = v24;
        v53 = 2080;
        v54 = "[AVCSessionParticipant setMediaType:paused:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
        v55 = 1024;
        v56 = 735;
        v57 = 2080;
        v58 = v26;
        v59 = 1024;
        LODWORD(v60) = v27;
        v28 = " [%s] %s:%d Participant %s is already paused[%d]";
        v29 = v25;
        v30 = 44;
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

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_41;
        }

        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        v40 = *(a1 + 32);
        v41 = *(a1 + 56);
        v42 = *(a1 + 76);
        *buf = 136316674;
        v52 = v38;
        v53 = 2080;
        v54 = "[AVCSessionParticipant setMediaType:paused:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
        v55 = 1024;
        v56 = 735;
        v57 = 2112;
        v58 = v6;
        v59 = 2048;
        v60 = v40;
        v61 = 2080;
        v62 = v41;
        v63 = 1024;
        v64 = v42;
        v28 = " [%s] %s:%d %@(%p) Participant %s is already paused[%d]";
        v29 = v39;
        v30 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
LABEL_41:
      v23 = *(*(a1 + 48) + 16);
      return v23();
    }

    if (v4 == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_48;
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v33 = *(a1 + 56);
      v34 = *(a1 + 76);
      *buf = 136316162;
      v52 = v31;
      v53 = 2080;
      v54 = "[AVCSessionParticipant setMediaType:paused:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
      v55 = 1024;
      v56 = 738;
      v57 = 2080;
      v58 = v33;
      v59 = 1024;
      LODWORD(v60) = v34;
      v35 = " [%s] %s:%d %sPaused[%d]";
      v36 = v32;
      v37 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_48;
      }

      v43 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v45 = *(a1 + 32);
      v46 = *(a1 + 56);
      v47 = *(a1 + 76);
      *buf = 136316674;
      v52 = v43;
      v53 = 2080;
      v54 = "[AVCSessionParticipant setMediaType:paused:mediaString:xpcMessageKey:xpcOperationKey:completionBlock:]_block_invoke";
      v55 = 1024;
      v56 = 738;
      v57 = 2112;
      v58 = v17;
      v59 = 2048;
      v60 = v45;
      v61 = 2080;
      v62 = v46;
      v63 = 1024;
      v64 = v47;
      v35 = " [%s] %s:%d %@(%p) %sPaused[%d]";
      v36 = v44;
      v37 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_48:
    v48 = *(*(a1 + 32) + 16);
    v49[1] = *(a1 + 40);
    v50[0] = v48;
    v49[0] = @"vcSessionParticipantID";
    v50[1] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 76)];
    return [objc_msgSend(*(a1 + 32) "sharedXPCConnection")];
  }

  +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 9, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCSessionParticipant.m", 732]);
  v8 = *(*(a1 + 48) + 16);

  return v8();
}

- (BOOL)isEnabledMediaType:(unsigned int)type
{
  selfCopy = self;
  block[6] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVCSessionParticipant_isEnabledMediaType___block_invoke;
  v6[3] = &unk_1E85F64A0;
  typeCopy = type;
  v6[4] = self;
  v6[5] = &v8;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  stateQueue = selfCopy->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AVCSessionParticipant_DispatchSyncToStateQueue_block_invoke;
  block[3] = &unk_1E85F4E98;
  block[4] = selfCopy;
  block[5] = v6;
  dispatch_sync(stateQueue, block);
  LOBYTE(selfCopy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return selfCopy;
}

uint64_t __44__AVCSessionParticipant_isEnabledMediaType___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))), "unsignedIntValue"}];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (BOOL)isPausedMediaType:(unsigned int)type
{
  selfCopy = self;
  block[6] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVCSessionParticipant_isPausedMediaType___block_invoke;
  v6[3] = &unk_1E85F64A0;
  typeCopy = type;
  v6[4] = self;
  v6[5] = &v8;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  stateQueue = selfCopy->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AVCSessionParticipant_DispatchSyncToStateQueue_block_invoke;
  block[3] = &unk_1E85F4E98;
  block[4] = selfCopy;
  block[5] = v6;
  dispatch_sync(stateQueue, block);
  LOBYTE(selfCopy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return selfCopy;
}

uint64_t __43__AVCSessionParticipant_isPausedMediaType___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 112) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))), "unsignedIntValue"}];
  *(*(*(a1 + 40) + 8) + 24) = result == 2;
  return result;
}

- (void)dispatchedCompleteAudioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  if ([(AVCSessionParticipant *)self isConnectedToSession])
  {
    dispatch_assert_queue_V2(self->_stateQueue);
  }

  v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2D8), "unsignedIntValue"}];
  if (succeedCopy)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaStates, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:enabledCopy], &unk_1F579A2D8);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], @"vcSessionParameterAudioEnabled");
  }

  delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__AVCSessionParticipant_dispatchedCompleteAudioEnabled_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F6C20;
  v12 = v9;
  v13 = enabledCopy;
  v14 = succeedCopy;
  block[4] = self;
  block[5] = error;
  v15 = enabledCopy;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __73__AVCSessionParticipant_dispatchedCompleteAudioEnabled_didSucceed_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) != *(a1 + 52))
  {
    [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(*(a1 + 32) "delegate")];
    }
  }

  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_msgSend(*(a1 + 32) "delegate")];
  }

  if (*(a1 + 57) == 1 && *(a1 + 48) == 2)
  {
    [*(a1 + 32) delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = [*(a1 + 32) delegate];
      v4 = *(a1 + 32);

      return [v3 participant:v4 audioPaused:0 didSucceed:1 error:0];
    }
  }

  return result;
}

- (void)completeAudioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__AVCSessionParticipant_completeAudioEnabled_didSucceed_error___block_invoke;
  v6[3] = &unk_1E85F63F0;
  enabledCopy = enabled;
  succeedCopy = succeed;
  v6[4] = self;
  v6[5] = error;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, v6);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

- (void)dispatchedCompleteAudioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  pausedCopy = paused;
  v17 = *MEMORY[0x1E69E9840];
  if ([(AVCSessionParticipant *)self isConnectedToSession])
  {
    dispatch_assert_queue_V2(self->_stateQueue);
  }

  v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2D8), "unsignedIntValue"}];
  if (pausedCopy)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (succeedCopy)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaStates, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10], &unk_1F579A2D8);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:pausedCopy], @"vcSessionParameterAudioPaused");
  }

  delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AVCSessionParticipant_dispatchedCompleteAudioPaused_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F6C20;
  v13 = v9;
  v14 = v10;
  v15 = succeedCopy;
  block[4] = self;
  block[5] = error;
  v16 = pausedCopy;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __72__AVCSessionParticipant_dispatchedCompleteAudioPaused_didSucceed_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) != *(a1 + 52))
  {
    [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(*(a1 + 32) "delegate")];
    }
  }

  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 57);
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v3 participant:v6 audioPaused:v4 didSucceed:v5 error:v7];
  }

  return result;
}

- (void)completeAudioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__AVCSessionParticipant_completeAudioPaused_didSucceed_error___block_invoke;
  v6[3] = &unk_1E85F63F0;
  pausedCopy = paused;
  succeedCopy = succeed;
  v6[4] = self;
  v6[5] = error;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, v6);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

- (void)dispatchedCompleteVideoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  if ([(AVCSessionParticipant *)self isConnectedToSession])
  {
    dispatch_assert_queue_V2(self->_stateQueue);
  }

  v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2F0), "unsignedIntValue"}];
  if (succeedCopy)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaStates, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:enabledCopy], &unk_1F579A2F0);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], @"vcSessionParameterVideoEnabled");
  }

  delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__AVCSessionParticipant_dispatchedCompleteVideoEnabled_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F6C20;
  v12 = v9;
  v13 = enabledCopy;
  v14 = succeedCopy;
  block[4] = self;
  block[5] = error;
  v15 = enabledCopy;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __73__AVCSessionParticipant_dispatchedCompleteVideoEnabled_didSucceed_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) != *(a1 + 52))
  {
    [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(*(a1 + 32) "delegate")];
    }
  }

  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_msgSend(*(a1 + 32) "delegate")];
  }

  if (*(a1 + 57) == 1 && *(a1 + 48) == 2)
  {
    [*(a1 + 32) delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = [*(a1 + 32) delegate];
      v4 = *(a1 + 32);

      return [v3 participant:v4 videoPaused:0 didSucceed:1 error:0];
    }
  }

  return result;
}

- (void)completeVideoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__AVCSessionParticipant_completeVideoEnabled_didSucceed_error___block_invoke;
  v6[3] = &unk_1E85F63F0;
  enabledCopy = enabled;
  succeedCopy = succeed;
  v6[4] = self;
  v6[5] = error;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, v6);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

- (void)dispatchedCompleteVideoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  pausedCopy = paused;
  v17 = *MEMORY[0x1E69E9840];
  if ([(AVCSessionParticipant *)self isConnectedToSession])
  {
    dispatch_assert_queue_V2(self->_stateQueue);
  }

  v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2F0), "unsignedIntValue"}];
  if (pausedCopy)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (succeedCopy)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaStates, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10], &unk_1F579A2F0);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:pausedCopy], @"vcSessionParameterVideoPaused");
  }

  delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AVCSessionParticipant_dispatchedCompleteVideoPaused_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F6C20;
  v13 = v9;
  v14 = v10;
  v15 = succeedCopy;
  block[4] = self;
  block[5] = error;
  v16 = pausedCopy;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __72__AVCSessionParticipant_dispatchedCompleteVideoPaused_didSucceed_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) != *(a1 + 52))
  {
    [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(*(a1 + 32) "delegate")];
    }
  }

  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 57);
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v3 participant:v6 videoPaused:v4 didSucceed:v5 error:v7];
  }

  return result;
}

- (void)completeVideoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__AVCSessionParticipant_completeVideoPaused_didSucceed_error___block_invoke;
  v6[3] = &unk_1E85F63F0;
  pausedCopy = paused;
  succeedCopy = succeed;
  v6[4] = self;
  v6[5] = error;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, v6);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

- (void)dispatchedCompleteScreenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  if ([(AVCSessionParticipant *)self isConnectedToSession])
  {
    dispatch_assert_queue_V2(self->_stateQueue);
  }

  v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A308), "unsignedIntValue"}];
  if (succeedCopy)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaStates, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:enabledCopy], &unk_1F579A308);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaStates, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:enabledCopy], &unk_1F579A320);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], @"vcSessionParameterScreenEnabled");
  }

  delegateNotificationQueue = [(AVCSessionParticipant *)self delegateNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AVCSessionParticipant_dispatchedCompleteScreenEnabled_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F6C20;
  v12 = v9;
  v13 = enabledCopy;
  v14 = succeedCopy;
  block[4] = self;
  block[5] = error;
  v15 = enabledCopy;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __74__AVCSessionParticipant_dispatchedCompleteScreenEnabled_didSucceed_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) != *(a1 + 52))
  {
    [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(*(a1 + 32) "delegate")];
    }
  }

  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 57);

    return [v3 participant:v4 screenEnabled:v5 didSucceed:? error:?];
  }

  return result;
}

- (void)completeScreenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__AVCSessionParticipant_completeScreenEnabled_didSucceed_error___block_invoke;
  v6[3] = &unk_1E85F63F0;
  enabledCopy = enabled;
  succeedCopy = succeed;
  v6[4] = self;
  v6[5] = error;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, v6);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

- (void)setSharedXPCConnection:(id)connection
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __48__AVCSessionParticipant_setSharedXPCConnection___block_invoke;
  v9 = &unk_1E85F37F0;
  connectionCopy = connection;
  selfCopy = self;
  stateQueue = self->_stateQueue;
  if (stateQueue == self->_localStateQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__AVCSessionParticipant_setSharedXPCConnection___block_invoke_2;
    v6[3] = &unk_1E85F7268;
    v6[4] = v7;
    dispatch_async(stateQueue, v6);
    pthread_rwlock_unlock(&self->_stateQueueLock);
  }

  else
  {
    pthread_rwlock_unlock(&self->_stateQueueLock);
    dispatch_assert_queue_V2(self->_stateQueue);
    v8(v7);
  }
}

id __48__AVCSessionParticipant_setSharedXPCConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    [*(a1 + 40) deregisterFromNotifications];
    v2 = *(a1 + 32);
  }

  result = objc_storeWeak((*(a1 + 40) + 64), v2);
  if (*(a1 + 32))
  {
    v4 = *(a1 + 40);

    return [v4 registerBlocksForNotifications];
  }

  return result;
}

- (void)setStreamTokens:(id)tokens
{
  streamGroupIDToStreamTokenMap = self->_streamGroupIDToStreamTokenMap;
  if (streamGroupIDToStreamTokenMap != tokens)
  {

    self->_streamGroupIDToStreamTokenMap = tokens;
  }
}

- (void)setMediaTypeToSpatialSourceIDMap:(id)map
{
  mediaTypeToSpatialSourceIDMap = self->_mediaTypeToSpatialSourceIDMap;
  if (mediaTypeToSpatialSourceIDMap != map)
  {

    self->_mediaTypeToSpatialSourceIDMap = map;
  }
}

- (int64_t)streamTokenForStreamGroupID:(unsigned int)d
{
  streamGroupIDToStreamTokenMap = self->_streamGroupIDToStreamTokenMap;
  if (d == 1835623282)
  {
    v4 = &unk_1F579A338;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  return [-[NSDictionary objectForKeyedSubscript:](streamGroupIDToStreamTokenMap objectForKeyedSubscript:{v4), "unsignedIntValue"}];
}

- (unint64_t)spatialAudioSourceIDForMediaType:(unsigned int)type
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = VCSessionMediaType_FromAVCSessionMediaType(type);
  if (v5 == -1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCSessionParticipant spatialAudioSourceIDForMediaType:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(AVCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v19 = 136316418;
          v20 = v15;
          v21 = 2080;
          v22 = "[AVCSessionParticipant spatialAudioSourceIDForMediaType:]";
          v23 = 1024;
          v24 = 997;
          v25 = 2112;
          v26 = v8;
          v27 = 2048;
          selfCopy2 = self;
          v29 = 1024;
          typeCopy2 = type;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid mediaType=%d", &v19, 0x36u);
        }
      }
    }

    return 0;
  }

  v6 = -[NSDictionary objectForKeyedSubscript:](self->_mediaTypeToSpatialSourceIDMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5]);
  if (!v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 0;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v19 = 136315906;
      v20 = v10;
      v21 = 2080;
      v22 = "[AVCSessionParticipant spatialAudioSourceIDForMediaType:]";
      v23 = 1024;
      v24 = 1000;
      v25 = 1024;
      LODWORD(v26) = type;
      v12 = " [%s] %s:%d Source ID not found for mediaType=%d";
      v13 = v11;
      v14 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(AVCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 0;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v19 = 136316418;
      v20 = v17;
      v21 = 2080;
      v22 = "[AVCSessionParticipant spatialAudioSourceIDForMediaType:]";
      v23 = 1024;
      v24 = 1000;
      v25 = 2112;
      v26 = v9;
      v27 = 2048;
      selfCopy2 = self;
      v29 = 1024;
      typeCopy2 = type;
      v12 = " [%s] %s:%d %@(%p) Source ID not found for mediaType=%d";
      v13 = v18;
      v14 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v19, v14);
    return 0;
  }

  return [v6 unsignedLongLongValue];
}

- (void)accessPropertyWithName:(id)name block:(id)block
{
  block[6] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AVCSessionParticipant_accessPropertyWithName_block___block_invoke;
  v6[3] = &unk_1E85F4C78;
  v6[5] = name;
  v6[6] = block;
  v6[4] = self;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AVCSessionParticipant_DispatchSyncToStateQueue_block_invoke;
  block[3] = &unk_1E85F4E98;
  block[4] = self;
  block[5] = v6;
  dispatch_sync(stateQueue, block);
}

uint64_t __54__AVCSessionParticipant_accessPropertyWithName_block___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 200) propertyWithName:a1[5]];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (unsigned)uint32ValueForPropertyName:(id)name
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AVCSessionParticipant_uint32ValueForPropertyName___block_invoke;
  v5[3] = &unk_1E85F7E98;
  v5[4] = &v6;
  [(AVCSessionParticipant *)self accessPropertyWithName:name block:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__AVCSessionParticipant_uint32ValueForPropertyName___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setPropertyValue:(id)value forPropertyName:(id)name xpcKey:(id)key xpcMessageName:(const char *)messageName batchSupported:(BOOL)supported
{
  v10 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__AVCSessionParticipant_setPropertyValue_forPropertyName_xpcKey_xpcMessageName_batchSupported___block_invoke;
  block[3] = &unk_1E85F6310;
  block[4] = self;
  block[5] = name;
  block[6] = value;
  block[7] = key;
  supportedCopy = supported;
  block[8] = messageName;
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  dispatch_async(self->_stateQueue, block);
  pthread_rwlock_unlock(&self->_stateQueueLock);
}

void __95__AVCSessionParticipant_setPropertyValue_forPropertyName_xpcKey_xpcMessageName_batchSupported___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isConnectedToSession];
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    if (v3 == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_34;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *buf = 136316162;
      v70 = v14;
      v71 = 2080;
      v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
      v73 = 1024;
      v74 = 1023;
      v75 = 2112;
      v76 = v16;
      v77 = 2112;
      v78 = v17;
      v18 = " [%s] %s:%d %@=%@ (cached)";
      v19 = v15;
      v20 = 48;
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
        goto LABEL_34;
      }

      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      v36 = *(a1 + 48);
      *buf = 136316674;
      v70 = v32;
      v71 = 2080;
      v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
      v73 = 1024;
      v74 = 1023;
      v75 = 2112;
      v76 = v6;
      v77 = 2048;
      v78 = v34;
      v79 = 2112;
      v80 = v35;
      v81 = 2112;
      v82 = v36;
      v18 = " [%s] %s:%d %@(%p) %@=%@ (cached)";
      v19 = v33;
      v20 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
LABEL_34:
    [*(*(a1 + 32) + 200) setValue:*(a1 + 48) forPropertyName:*(a1 + 40) forceCache:1];
    [*(*(a1 + 32) + 88) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 56)];
    return;
  }

  if (v3 == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        *buf = 136316162;
        v70 = v7;
        v71 = 2080;
        v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
        v73 = 1024;
        v74 = 1030;
        v75 = 2112;
        v76 = v9;
        v77 = 2112;
        v78 = v10;
        v11 = " [%s] %s:%d %@=%@";
        v12 = v8;
        v13 = 48;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
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

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        v25 = *(a1 + 48);
        *buf = 136316674;
        v70 = v21;
        v71 = 2080;
        v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
        v73 = 1024;
        v74 = 1030;
        v75 = 2112;
        v76 = v5;
        v77 = 2048;
        v78 = v23;
        v79 = 2112;
        v80 = v24;
        v81 = 2112;
        v82 = v25;
        v11 = " [%s] %s:%d %@(%p) %@=%@";
        v12 = v22;
        v13 = 68;
        goto LABEL_18;
      }
    }
  }

  v26 = [*(*(a1 + 32) + 200) propertyWithName:*(a1 + 40)];
  [*(*(a1 + 32) + 200) setValue:*(a1 + 48) forPropertyName:*(a1 + 40) forceCache:0];
  if (*(a1 + 72) == 1 && *(*(a1 + 32) + 104) == 1)
  {
    if (objc_opt_class() != *(a1 + 32))
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v54 = VRTraceErrorLogLevelToCSTR();
        v55 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v56 = *(a1 + 32);
          v57 = *(a1 + 40);
          v58 = *(a1 + 48);
          *buf = 136316674;
          v70 = v54;
          v71 = 2080;
          v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
          v73 = 1024;
          v74 = 1035;
          v75 = 2112;
          v76 = v27;
          v77 = 2048;
          v78 = v56;
          v79 = 2112;
          v80 = v57;
          v81 = 2112;
          v82 = v58;
          v42 = " [%s] %s:%d %@(%p) %@=%@ is cached until endParticipantConfiguration is called.";
          v49 = v55;
          goto LABEL_53;
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v50 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v51 = *(a1 + 40);
    v52 = *(a1 + 48);
    *buf = 136316162;
    v70 = v50;
    v71 = 2080;
    v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
    v73 = 1024;
    v74 = 1035;
    v75 = 2112;
    v76 = v51;
    v77 = 2112;
    v78 = v52;
    v42 = " [%s] %s:%d %@=%@ is cached until endParticipantConfiguration is called.";
LABEL_48:
    v49 = v38;
    v53 = 48;
LABEL_54:
    _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, v42, buf, v53);
    return;
  }

  if (![v26 isEqual:*(a1 + 48)])
  {
    [*(*(a1 + 32) + 88) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 56)];
    v29 = *(*(a1 + 32) + 16);
    v31 = *(a1 + 48);
    v30 = *(a1 + 56);
    v67[0] = @"vcSessionParticipantID";
    v67[1] = v30;
    v68[0] = v29;
    v68[1] = v31;
    [objc_msgSend(*(a1 + 32) "sharedXPCConnection")];
    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    v39 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v40 = *(a1 + 40);
      v41 = *(a1 + 48);
      *buf = 136316162;
      v70 = v37;
      v71 = 2080;
      v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
      v73 = 1024;
      v74 = 1040;
      v75 = 2112;
      v76 = v40;
      v77 = 2112;
      v78 = v41;
      v42 = " [%s] %s:%d %@=%@ is already set";
      goto LABEL_48;
    }

    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v65 = *(a1 + 40);
    v66 = *(a1 + 48);
    *buf = 136316162;
    v70 = v37;
    v71 = 2080;
    v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
    v73 = 1024;
    v74 = 1040;
    v75 = 2112;
    v76 = v65;
    v77 = 2112;
    v78 = v66;
    v62 = " [%s] %s:%d %@=%@ is already set";
    v63 = v38;
    v64 = 48;
LABEL_59:
    _os_log_debug_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_DEBUG, v62, buf, v64);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v28 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v28 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return;
  }

  v43 = VRTraceErrorLogLevelToCSTR();
  v44 = *MEMORY[0x1E6986650];
  v45 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v59 = *(a1 + 32);
    v60 = *(a1 + 40);
    v61 = *(a1 + 48);
    *buf = 136316674;
    v70 = v43;
    v71 = 2080;
    v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
    v73 = 1024;
    v74 = 1040;
    v75 = 2112;
    v76 = v28;
    v77 = 2048;
    v78 = v59;
    v79 = 2112;
    v80 = v60;
    v81 = 2112;
    v82 = v61;
    v62 = " [%s] %s:%d %@(%p) %@=%@ is already set";
    v63 = v44;
    v64 = 68;
    goto LABEL_59;
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(a1 + 32);
    v47 = *(a1 + 40);
    v48 = *(a1 + 48);
    *buf = 136316674;
    v70 = v43;
    v71 = 2080;
    v72 = "[AVCSessionParticipant setPropertyValue:forPropertyName:xpcKey:xpcMessageName:batchSupported:]_block_invoke";
    v73 = 1024;
    v74 = 1040;
    v75 = 2112;
    v76 = v28;
    v77 = 2048;
    v78 = v46;
    v79 = 2112;
    v80 = v47;
    v81 = 2112;
    v82 = v48;
    v42 = " [%s] %s:%d %@(%p) %@=%@ is already set";
    v49 = v44;
LABEL_53:
    v53 = 68;
    goto LABEL_54;
  }
}

- (NSString)dispatchedParticipantStatus
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2D8), "unsignedIntValue"}];
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2F0), "unsignedIntValue"}];
  v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A308), "unsignedIntValue"}];
  v6 = [(VCSessionParticipantUpdateConfig *)self->_updateConfig propertyWithName:@"microphoneMuted"];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"audioEnabled=%d, audioPaused=%d, audioMuted=%d, videoEnabled=%d, videoPaused=%d, screenEnabled=%d", v3 != 0, v3 == 2, objc_msgSend(v6, "intValue"), v4 != 0, v4 == 2, v5 != 0];
}

+ (id)loopbackNegotiationDataWithData:(id)data
{
  v3 = [VCSessionParticipant participantInfoWithParticipantData:data];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
  [v4 setObject:objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0] forKeyedSubscript:{"UUID"), "UUIDString"), @"vcSessionParticipantKeyUUID"}];

  return [VCSessionParticipant participantDataWithParticipantInfo:v4];
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
  v19[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke;
  v19[3] = &unk_1E85F3AD8;
  v19[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionVideoEnabledDidSucceed" block:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_171;
  v18[3] = &unk_1E85F3AD8;
  v18[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionScreenEnabledDidSucceed" block:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_173;
  v17[3] = &unk_1E85F3AD8;
  v17[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionAudioEnabledDidSucceed" block:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_175;
  v16[3] = &unk_1E85F3AD8;
  v16[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionRemoteAudioEnabledDidChange" block:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2;
  v15[3] = &unk_1E85F3AD8;
  v15[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionRemoteVideoEnabledDidChange" block:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_184;
  v14[3] = &unk_1E85F3AD8;
  v14[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionRemoteScreenEnabledDidChange" block:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_189;
  v13[3] = &unk_1E85F3AD8;
  v13[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionRemoteMediaStateDidChange" block:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_194;
  v12[3] = &unk_1E85F3AD8;
  v12[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionRemoteMixingMediaDidChange" block:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_204;
  v11[3] = &unk_1E85F3AD8;
  v11[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionAudioPausedDidSucceed" block:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_206;
  v10[3] = &unk_1E85F3AD8;
  v10[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionVideoPausedDidSucceed" block:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_208;
  v9[3] = &unk_1E85F3AD8;
  v9[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionRemoteAudioPausedDidChange" block:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_213;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionRemoteVideoPausedDidChange" block:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_218;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionMediaStateDidChange" block:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_3;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionMediaPrioritiesDidChange" block:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_230;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionReactionDidStart" block:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_238;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] registerBlockWithUUID:self->_participantID service:"vcSessionReactionDidStopReacting" block:v4];
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterVideoEnabled", "BOOLValue"}];
      v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionSucceeded", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316418;
        *&v18[4] = v10;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v18[22] = 1024;
        LODWORD(v19) = 1089;
        WORD2(v19) = 2112;
        *(&v19 + 6) = [v6 uuid];
        HIWORD(v19) = 1024;
        *v20 = v7;
        *&v20[4] = 1024;
        *&v20[6] = v8;
        v12 = " [%s] %s:%d Participant[%@] received callback for video enabled[%d] did succeed[%d]";
        v13 = v11;
        v14 = 50;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316930;
        *&v18[4] = v15;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v18[22] = 1024;
        LODWORD(v19) = 1089;
        WORD2(v19) = 2112;
        *(&v19 + 6) = v9;
        HIWORD(v19) = 2048;
        *v20 = v6;
        *&v20[8] = 2112;
        *&v20[10] = [v6 uuid];
        *&v20[18] = 1024;
        *&v20[20] = v7;
        LOWORD(v21) = 1024;
        *(&v21 + 2) = v8;
        v12 = " [%s] %s:%d %@(%p) Participant[%@] received callback for video enabled[%d] did succeed[%d]";
        v13 = v16;
        v14 = 70;
      }

      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v18, v14);
LABEL_15:
      v17 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError", *v18, *&v18[16], v19, *v20, *&v20[8], v21, v22)}];
      [v6 completeVideoEnabled:v7 didSucceed:v8 error:v17];
    }
  }
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_171(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterScreenEnabled", "BOOLValue"}];
      v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionSucceeded", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316418;
        *&v18[4] = v10;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v18[22] = 1024;
        LODWORD(v19) = 1107;
        WORD2(v19) = 2112;
        *(&v19 + 6) = [v6 uuid];
        HIWORD(v19) = 1024;
        *v20 = v7;
        *&v20[4] = 1024;
        *&v20[6] = v8;
        v12 = " [%s] %s:%d Participant[%@] received callback for screen enabled[%d] did succeed[%d]";
        v13 = v11;
        v14 = 50;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316930;
        *&v18[4] = v15;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v18[22] = 1024;
        LODWORD(v19) = 1107;
        WORD2(v19) = 2112;
        *(&v19 + 6) = v9;
        HIWORD(v19) = 2048;
        *v20 = v6;
        *&v20[8] = 2112;
        *&v20[10] = [v6 uuid];
        *&v20[18] = 1024;
        *&v20[20] = v7;
        LOWORD(v21) = 1024;
        *(&v21 + 2) = v8;
        v12 = " [%s] %s:%d %@(%p) Participant[%@] received callback for screen enabled[%d] did succeed[%d]";
        v13 = v16;
        v14 = 70;
      }

      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v18, v14);
LABEL_15:
      v17 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError", *v18, *&v18[16], v19, *v20, *&v20[8], v21, v22)}];
      [v6 completeScreenEnabled:v7 didSucceed:v8 error:v17];
    }
  }
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_173(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterAudioEnabled", "BOOLValue"}];
      v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionSucceeded", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316418;
        *&v18[4] = v10;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v18[22] = 1024;
        LODWORD(v19) = 1125;
        WORD2(v19) = 2112;
        *(&v19 + 6) = [v6 uuid];
        HIWORD(v19) = 1024;
        *v20 = v7;
        *&v20[4] = 1024;
        *&v20[6] = v8;
        v12 = " [%s] %s:%d Participant[%@] received callback for audio enabled[%d] did succeed[%d]";
        v13 = v11;
        v14 = 50;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316930;
        *&v18[4] = v15;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v18[22] = 1024;
        LODWORD(v19) = 1125;
        WORD2(v19) = 2112;
        *(&v19 + 6) = v9;
        HIWORD(v19) = 2048;
        *v20 = v6;
        *&v20[8] = 2112;
        *&v20[10] = [v6 uuid];
        *&v20[18] = 1024;
        *&v20[20] = v7;
        LOWORD(v21) = 1024;
        *(&v21 + 2) = v8;
        v12 = " [%s] %s:%d %@(%p) Participant[%@] received callback for audio enabled[%d] did succeed[%d]";
        v13 = v16;
        v14 = 70;
      }

      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v18, v14);
LABEL_15:
      v17 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError", *v18, *&v18[16], v19, *v20, *&v20[8], v21, v22)}];
      [v6 completeAudioEnabled:v7 didSucceed:v8 error:v17];
    }
  }
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_175(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterAudioEnabled", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316162;
        v20 = v9;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 1142;
        v25 = 2112;
        v26 = [v6 uuid];
        v27 = 1024;
        LODWORD(v28) = v7;
        v11 = " [%s] %s:%d Participant[%@] received callback for remote audio enabled[%d] did change";
        v12 = v10;
        v13 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316674;
        v20 = v14;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 1142;
        v25 = 2112;
        v26 = v8;
        v27 = 2048;
        v28 = v6;
        v29 = 2112;
        v30 = [v6 uuid];
        v31 = 1024;
        v32 = v7;
        v11 = " [%s] %s:%d %@(%p) Participant[%@] received callback for remote audio enabled[%d] did change";
        v12 = v15;
        v13 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_15:
      v16 = [v6 delegateNotificationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_176;
      v17[3] = &unk_1E85F37A0;
      v17[4] = v6;
      v18 = v7;
      dispatch_async(v16, v17);
    }
  }
}

uint64_t __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_176(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 participant:v4 remoteAudioEnabledDidChange:v5];
  }

  return result;
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterVideoEnabled", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316162;
        v20 = v9;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke_2";
        v23 = 1024;
        v24 = 1161;
        v25 = 2112;
        v26 = [v6 uuid];
        v27 = 1024;
        LODWORD(v28) = v7;
        v11 = " [%s] %s:%d Participant[%@] received callback for remote video enabled[%d] did change";
        v12 = v10;
        v13 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316674;
        v20 = v14;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 1161;
        v25 = 2112;
        v26 = v8;
        v27 = 2048;
        v28 = v6;
        v29 = 2112;
        v30 = [v6 uuid];
        v31 = 1024;
        v32 = v7;
        v11 = " [%s] %s:%d %@(%p) Participant[%@] received callback for remote video enabled[%d] did change";
        v12 = v15;
        v13 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_15:
      v16 = [v6 delegateNotificationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_180;
      v17[3] = &unk_1E85F37A0;
      v17[4] = v6;
      v18 = v7;
      dispatch_async(v16, v17);
    }
  }
}

uint64_t __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_180(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 participant:v4 remoteVideoEnabledDidChange:v5];
  }

  return result;
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_184(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterScreenEnabled", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316162;
        v20 = v9;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke_2";
        v23 = 1024;
        v24 = 1180;
        v25 = 2112;
        v26 = [v6 uuid];
        v27 = 1024;
        LODWORD(v28) = v7;
        v11 = " [%s] %s:%d Participant[%@] received callback for remote screen video enabled[%d] did change";
        v12 = v10;
        v13 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316674;
        v20 = v14;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 1180;
        v25 = 2112;
        v26 = v8;
        v27 = 2048;
        v28 = v6;
        v29 = 2112;
        v30 = [v6 uuid];
        v31 = 1024;
        v32 = v7;
        v11 = " [%s] %s:%d %@(%p) Participant[%@] received callback for remote screen video enabled[%d] did change";
        v12 = v15;
        v13 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_15:
      [v6 setRemoteScreenEnabled:v7];
      v16 = [v6 delegateNotificationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_185;
      v17[3] = &unk_1E85F37A0;
      v17[4] = v6;
      v18 = v7;
      dispatch_async(v16, v17);
    }
  }
}

uint64_t __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_185(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 participant:v4 remoteScreenEnabledDidChange:v5];
  }

  return result;
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_189(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterMediaType", "unsignedIntValue"}];
      v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterMediaState", "unsignedIntValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316418;
        v22 = v10;
        v23 = 2080;
        v24 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke_2";
        v25 = 1024;
        v26 = 1200;
        v27 = 2112;
        v28 = [(__CFString *)v6 uuid];
        v29 = 2112;
        v30 = VCSessionMediaType_Name(v7);
        v31 = 2112;
        v32 = VCSessionMediaState_Name(v8);
        v12 = " [%s] %s:%d Participant=%@ received callback for remote mediaType=%@ change to mediaState=%@";
        v13 = v11;
        v14 = 58;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(__CFString *)v6 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316930;
        v22 = v15;
        v23 = 2080;
        v24 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v25 = 1024;
        v26 = 1200;
        v27 = 2112;
        v28 = v9;
        v29 = 2048;
        v30 = v6;
        v31 = 2112;
        v32 = [(__CFString *)v6 uuid];
        v33 = 2112;
        v34 = VCSessionMediaType_Name(v7);
        v35 = 2112;
        v36 = VCSessionMediaState_Name(v8);
        v12 = " [%s] %s:%d %@(%p) Participant=%@ received callback for remote mediaType=%@ change to mediaState=%@";
        v13 = v16;
        v14 = 78;
      }

      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_15:
      v17 = [(__CFString *)v6 delegateNotificationQueue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_190;
      v18[3] = &unk_1E85F40E0;
      v18[4] = v6;
      v19 = v8;
      v20 = v7;
      dispatch_async(v17, v18);
    }
  }
}

uint64_t __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_190(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = VCSessionMediaState_FromAVCSessionMediaState(*(a1 + 40));
    v6 = VCSessionMediaType_FromAVCSessionMediaType(*(a1 + 44));

    return [v3 participant:v4 remoteMediaStateDidChange:v5 forMediaType:v6];
  }

  return result;
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_194(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterMediaType", "unsignedIntValue"}];
      v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterMixingMediaType", "unsignedIntValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316418;
        v22 = v10;
        v23 = 2080;
        v24 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke_2";
        v25 = 1024;
        v26 = 1222;
        v27 = 2112;
        v28 = [(__CFString *)v6 uuid];
        v29 = 2112;
        v30 = VCSessionMediaType_Name(v7);
        v31 = 2112;
        v32 = VCSessionMediaType_Name(v8);
        v12 = " [%s] %s:%d Participant=%@ received callback for mediaType=%@ change to mixingMediaType=%@";
        v13 = v11;
        v14 = 58;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(__CFString *)v6 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316930;
        v22 = v15;
        v23 = 2080;
        v24 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v25 = 1024;
        v26 = 1222;
        v27 = 2112;
        v28 = v9;
        v29 = 2048;
        v30 = v6;
        v31 = 2112;
        v32 = [(__CFString *)v6 uuid];
        v33 = 2112;
        v34 = VCSessionMediaType_Name(v7);
        v35 = 2112;
        v36 = VCSessionMediaType_Name(v8);
        v12 = " [%s] %s:%d %@(%p) Participant=%@ received callback for mediaType=%@ change to mixingMediaType=%@";
        v13 = v16;
        v14 = 78;
      }

      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_15:
      v17 = [(__CFString *)v6 delegateNotificationQueue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_198;
      v18[3] = &unk_1E85F40E0;
      v19 = v7;
      v20 = v8;
      v18[4] = v6;
      dispatch_async(v17, v18);
    }
  }
}

uint64_t __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_198(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  [*(a1 + 32) delegate];
  if (v2 == v3)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = [*(a1 + 32) delegate];
      v6 = *(a1 + 32);
      v7 = VCSessionMediaType_FromAVCSessionMediaType(*(a1 + 40));

      return [v5 participant:v6 mixingDidStopForMediaType:v7];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v8 = [*(a1 + 32) delegate];
      v9 = *(a1 + 32);
      v10 = VCSessionMediaType_FromAVCSessionMediaType(*(a1 + 40));
      v11 = VCSessionMediaType_FromAVCSessionMediaType(*(a1 + 44));

      return [v8 participant:v9 mixingDidStartForMediaType:v10 mixingMediaType:v11];
    }
  }

  return result;
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_204(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterAudioPaused", "BOOLValue"}];
      v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionSucceeded", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316418;
        *&v18[4] = v10;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke_2";
        *&v18[22] = 1024;
        LODWORD(v19) = 1248;
        WORD2(v19) = 2112;
        *(&v19 + 6) = [v6 uuid];
        HIWORD(v19) = 1024;
        *v20 = v7;
        *&v20[4] = 1024;
        *&v20[6] = v8;
        v12 = " [%s] %s:%d Participant[%@] received callback for audio paused[%d] did succeed[%d]";
        v13 = v11;
        v14 = 50;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316930;
        *&v18[4] = v15;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v18[22] = 1024;
        LODWORD(v19) = 1248;
        WORD2(v19) = 2112;
        *(&v19 + 6) = v9;
        HIWORD(v19) = 2048;
        *v20 = v6;
        *&v20[8] = 2112;
        *&v20[10] = [v6 uuid];
        *&v20[18] = 1024;
        *&v20[20] = v7;
        LOWORD(v21) = 1024;
        *(&v21 + 2) = v8;
        v12 = " [%s] %s:%d %@(%p) Participant[%@] received callback for audio paused[%d] did succeed[%d]";
        v13 = v16;
        v14 = 70;
      }

      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v18, v14);
LABEL_15:
      v17 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError", *v18, *&v18[16], v19, *v20, *&v20[8], v21, v22)}];
      [v6 completeAudioPaused:v7 didSucceed:v8 error:0];
    }
  }
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_206(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterVideoPaused", "BOOLValue"}];
      v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionSucceeded", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316418;
        *&v18[4] = v10;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v18[22] = 1024;
        LODWORD(v19) = 1265;
        WORD2(v19) = 2112;
        *(&v19 + 6) = [v6 uuid];
        HIWORD(v19) = 1024;
        *v20 = v7;
        *&v20[4] = 1024;
        *&v20[6] = v8;
        v12 = " [%s] %s:%d Participant[%@] received callback for video paused[%d] did succeed[%d]";
        v13 = v11;
        v14 = 50;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *v18 = 136316930;
        *&v18[4] = v15;
        *&v18[12] = 2080;
        *&v18[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v18[22] = 1024;
        LODWORD(v19) = 1265;
        WORD2(v19) = 2112;
        *(&v19 + 6) = v9;
        HIWORD(v19) = 2048;
        *v20 = v6;
        *&v20[8] = 2112;
        *&v20[10] = [v6 uuid];
        *&v20[18] = 1024;
        *&v20[20] = v7;
        LOWORD(v21) = 1024;
        *(&v21 + 2) = v8;
        v12 = " [%s] %s:%d %@(%p) Participant[%@] received callback for video paused[%d] did succeed[%d]";
        v13 = v16;
        v14 = 70;
      }

      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v18, v14);
LABEL_15:
      v17 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError", *v18, *&v18[16], v19, *v20, *&v20[8], v21, v22)}];
      [v6 completeVideoPaused:v7 didSucceed:v8 error:0];
    }
  }
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_208(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterAudioPaused", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316162;
        v20 = v9;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 1282;
        v25 = 2112;
        v26 = [v6 uuid];
        v27 = 1024;
        LODWORD(v28) = v7;
        v11 = " [%s] %s:%d Participant[%@] received callback for remote audio paused[%d] did change";
        v12 = v10;
        v13 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316674;
        v20 = v14;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 1282;
        v25 = 2112;
        v26 = v8;
        v27 = 2048;
        v28 = v6;
        v29 = 2112;
        v30 = [v6 uuid];
        v31 = 1024;
        v32 = v7;
        v11 = " [%s] %s:%d %@(%p) Participant[%@] received callback for remote audio paused[%d] did change";
        v12 = v15;
        v13 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_15:
      v16 = [v6 delegateNotificationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_209;
      v17[3] = &unk_1E85F37A0;
      v17[4] = v6;
      v18 = v7;
      dispatch_async(v16, v17);
    }
  }
}

uint64_t __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_209(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 participant:v4 remoteAudioPausedDidChange:v5];
  }

  return result;
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_213(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterVideoPaused", "BOOLValue"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316162;
        v20 = v9;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke_2";
        v23 = 1024;
        v24 = 1301;
        v25 = 2112;
        v26 = [v6 uuid];
        v27 = 1024;
        LODWORD(v28) = v7;
        v11 = " [%s] %s:%d Participant[%@] received callback for remote video paused[%d] did change";
        v12 = v10;
        v13 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_15;
        }

        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316674;
        v20 = v14;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 1301;
        v25 = 2112;
        v26 = v8;
        v27 = 2048;
        v28 = v6;
        v29 = 2112;
        v30 = [v6 uuid];
        v31 = 1024;
        v32 = v7;
        v11 = " [%s] %s:%d %@(%p) Participant[%@] received callback for remote video paused[%d] did change";
        v12 = v15;
        v13 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_15:
      v16 = [v6 delegateNotificationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_214;
      v17[3] = &unk_1E85F37A0;
      v17[4] = v6;
      v18 = v7;
      dispatch_async(v16, v17);
    }
  }
}

uint64_t __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_214(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 participant:v4 remoteVideoPausedDidChange:v5];
  }

  return result;
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_2_218(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterMediaType", "unsignedIntValue"}];
      v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterMediaState", "unsignedIntValue"}];
      v9 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionSucceeded", "BOOLValue"}];
      v10 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError"}];
      [v6 completeSetMediaState:v8 forMediaType:v7 didSucceed:v9 error:0];
    }
  }
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcSessionParameterParticipantMediaPriority"];
      v8 = [a2 objectForKeyedSubscript:@"vcSessionParameterParticipantMediaPriorityString"];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_20;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        v12 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v25 = v10;
            v26 = 2080;
            v27 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke_3";
            v28 = 1024;
            v29 = 1340;
            v30 = 2112;
            v31 = [v6 uuid];
            v32 = 2112;
            v33 = v7;
            v34 = 2112;
            v35 = v8;
            v13 = " [%s] %s:%d Participant[%@] received callback for media priority change:[%@] (%@)";
            v14 = v11;
            v15 = 58;
LABEL_16:
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
          }

LABEL_20:
          v22 = [v6 delegateNotificationQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_226;
          block[3] = &unk_1E85F3E30;
          block[4] = v6;
          block[5] = v7;
          block[6] = v8;
          dispatch_async(v22, block);
          return;
        }

        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_20;
        }

        *buf = 136316418;
        v25 = v10;
        v26 = 2080;
        v27 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v28 = 1024;
        v29 = 1340;
        v30 = 2112;
        v31 = [v6 uuid];
        v32 = 2112;
        v33 = v7;
        v34 = 2112;
        v35 = v8;
        v19 = " [%s] %s:%d Participant[%@] received callback for media priority change:[%@] (%@)";
        v20 = v11;
        v21 = 58;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_20;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        v18 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316930;
            v25 = v16;
            v26 = 2080;
            v27 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
            v28 = 1024;
            v29 = 1340;
            v30 = 2112;
            v31 = v9;
            v32 = 2048;
            v33 = v6;
            v34 = 2112;
            v35 = [v6 uuid];
            v36 = 2112;
            v37 = v7;
            v38 = 2112;
            v39 = v8;
            v13 = " [%s] %s:%d %@(%p) Participant[%@] received callback for media priority change:[%@] (%@)";
            v14 = v17;
            v15 = 78;
            goto LABEL_16;
          }

          goto LABEL_20;
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_20;
        }

        *buf = 136316930;
        v25 = v16;
        v26 = 2080;
        v27 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v28 = 1024;
        v29 = 1340;
        v30 = 2112;
        v31 = v9;
        v32 = 2048;
        v33 = v6;
        v34 = 2112;
        v35 = [v6 uuid];
        v36 = 2112;
        v37 = v7;
        v38 = 2112;
        v39 = v8;
        v19 = " [%s] %s:%d %@(%p) Participant[%@] received callback for media priority change:[%@] (%@)";
        v20 = v17;
        v21 = 78;
      }

      _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
      goto LABEL_20;
    }
  }
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_226(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 40) unsignedIntValue];
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (*(a1 + 48))
    {
      if (v2 >= 0xFF)
      {
        v4 = 255;
      }

      else
      {
        v4 = v2;
      }

      if (v4 <= 1)
      {
        LOWORD(v4) = 1;
      }

      [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", (254 * v4 - 254) / 0xFEu + 1), *(a1 + 48)}];
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_25;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          *v22 = 136316162;
          *&v22[4] = v6;
          *&v22[12] = 2080;
          *&v22[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
          *&v22[22] = 1024;
          LODWORD(v23) = 1349;
          WORD2(v23) = 2112;
          *(&v23 + 6) = v9;
          HIWORD(v23) = 2112;
          v24 = v3;
          v10 = " [%s] %s:%d [Media Priority] Participant[%@] calling mediaPrioritiesDidChange:%@";
          v11 = v7;
          v12 = 48;
LABEL_21:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v22, v12);
        }

LABEL_25:
        [objc_msgSend(*(a1 + 32) delegate];

        return;
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_25;
      }

      v21 = *(a1 + 32);
      *v22 = 136316162;
      *&v22[4] = v6;
      *&v22[12] = 2080;
      *&v22[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
      *&v22[22] = 1024;
      LODWORD(v23) = 1349;
      WORD2(v23) = 2112;
      *(&v23 + 6) = v21;
      HIWORD(v23) = 2112;
      v24 = v3;
      v18 = " [%s] %s:%d [Media Priority] Participant[%@] calling mediaPrioritiesDidChange:%@";
      v19 = v7;
      v20 = 48;
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

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_25;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          *v22 = 136316674;
          *&v22[4] = v13;
          *&v22[12] = 2080;
          *&v22[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
          *&v22[22] = 1024;
          LODWORD(v23) = 1349;
          WORD2(v23) = 2112;
          *(&v23 + 6) = v5;
          HIWORD(v23) = 2048;
          v24 = v16;
          *v25 = 2112;
          *&v25[2] = v16;
          *&v25[10] = 2112;
          *&v25[12] = v3;
          v10 = " [%s] %s:%d %@(%p) [Media Priority] Participant[%@] calling mediaPrioritiesDidChange:%@";
          v11 = v14;
          v12 = 68;
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_25;
      }

      v17 = *(a1 + 32);
      *v22 = 136316674;
      *&v22[4] = v13;
      *&v22[12] = 2080;
      *&v22[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
      *&v22[22] = 1024;
      LODWORD(v23) = 1349;
      WORD2(v23) = 2112;
      *(&v23 + 6) = v5;
      HIWORD(v23) = 2048;
      v24 = v17;
      *v25 = 2112;
      *&v25[2] = v17;
      *&v25[10] = 2112;
      *&v25[12] = v3;
      v18 = " [%s] %s:%d %@(%p) [Media Priority] Participant[%@] calling mediaPrioritiesDidChange:%@";
      v19 = v14;
      v20 = 68;
    }

    _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, v18, v22, v20);
    goto LABEL_25;
  }
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_230(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      if (objc_opt_class() == v5)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_16;
        }

        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 136316162;
        v20 = v8;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 1365;
        v25 = 2112;
        v26 = [v6 uuid];
        v27 = 2112;
        v28 = a2;
        v10 = " [%s] %s:%d Participant[%@] received callback for reaction did start status=%@";
        v11 = v9;
        v12 = 48;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_16;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 136316674;
        v20 = v13;
        v21 = 2080;
        v22 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 1365;
        v25 = 2112;
        v26 = v7;
        v27 = 2048;
        v28 = v6;
        v29 = 2112;
        v30 = [v6 uuid];
        v31 = 2112;
        v32 = a2;
        v10 = " [%s] %s:%d %@(%p) Participant[%@] received callback for reaction did start status=%@";
        v11 = v14;
        v12 = 68;
      }

      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_16:
      v15 = [a2 objectForKeyedSubscript:@"vcSessionParameterReactionType"];
      if (v15)
      {
        v16 = v15;
        v17 = [v6 delegateNotificationQueue];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_234;
        v18[3] = &unk_1E85F37F0;
        v18[4] = v6;
        v18[5] = v16;
        dispatch_async(v17, v18);
      }
    }
  }
}

uint64_t __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_234(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        return [objc_msgSend(*(a1 + 32) delegate];
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          *v24 = 136316162;
          *&v24[4] = v4;
          *&v24[12] = 2080;
          *&v24[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
          *&v24[22] = 1024;
          LODWORD(v25) = 1372;
          WORD2(v25) = 2112;
          *(&v25 + 6) = v7;
          HIWORD(v25) = 2112;
          v26 = v8;
          v9 = " [%s] %s:%d Participant[%@] calling didReact:%@";
          v10 = v5;
          v11 = 48;
LABEL_14:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v24, v11);
        }

        return [objc_msgSend(*(a1 + 32) delegate];
      }

      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        return [objc_msgSend(*(a1 + 32) delegate];
      }

      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      *v24 = 136316162;
      *&v24[4] = v4;
      *&v24[12] = 2080;
      *&v24[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
      *&v24[22] = 1024;
      LODWORD(v25) = 1372;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v22;
      HIWORD(v25) = 2112;
      v26 = v23;
      v19 = " [%s] %s:%d Participant[%@] calling didReact:%@";
      v20 = v5;
      v21 = 48;
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

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        return [objc_msgSend(*(a1 + 32) delegate];
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v16 = *(a1 + 40);
          *v24 = 136316674;
          *&v24[4] = v12;
          *&v24[12] = 2080;
          *&v24[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
          *&v24[22] = 1024;
          LODWORD(v25) = 1372;
          WORD2(v25) = 2112;
          *(&v25 + 6) = v3;
          HIWORD(v25) = 2048;
          v26 = v15;
          *v27 = 2112;
          *&v27[2] = v15;
          *&v27[10] = 2112;
          *&v27[12] = v16;
          v9 = " [%s] %s:%d %@(%p) Participant[%@] calling didReact:%@";
          v10 = v13;
          v11 = 68;
          goto LABEL_14;
        }

        return [objc_msgSend(*(a1 + 32) delegate];
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        return [objc_msgSend(*(a1 + 32) delegate];
      }

      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      *v24 = 136316674;
      *&v24[4] = v12;
      *&v24[12] = 2080;
      *&v24[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
      *&v24[22] = 1024;
      LODWORD(v25) = 1372;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v3;
      HIWORD(v25) = 2048;
      v26 = v17;
      *v27 = 2112;
      *&v27[2] = v17;
      *&v27[10] = 2112;
      *&v27[12] = v18;
      v19 = " [%s] %s:%d %@(%p) Participant[%@] calling didReact:%@";
      v20 = v13;
      v21 = 68;
    }

    _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, v19, v24, v21);
    return [objc_msgSend(*(a1 + 32) delegate];
  }

  return result;
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_238(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      if (objc_opt_class() == v4)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315906;
        v17 = v7;
        v18 = 2080;
        v19 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v20 = 1024;
        v21 = 1387;
        v22 = 2112;
        v23 = [v5 uuid];
        v9 = " [%s] %s:%d Participant[%@] did stop reacting";
        v10 = v8;
        v11 = 38;
      }

      else
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
          goto LABEL_15;
        }

        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316418;
        v17 = v12;
        v18 = 2080;
        v19 = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        v20 = 1024;
        v21 = 1387;
        v22 = 2112;
        v23 = v6;
        v24 = 2048;
        v25 = v5;
        v26 = 2112;
        v27 = [v5 uuid];
        v9 = " [%s] %s:%d %@(%p) Participant[%@] did stop reacting";
        v10 = v13;
        v11 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_15:
      v14 = [v5 delegateNotificationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_239;
      block[3] = &unk_1E85F3778;
      block[4] = v5;
      dispatch_async(v14, block);
    }
  }
}

uint64_t __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_239(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (objc_opt_class() == *v1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        v6 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_239_cold_1();
          }

          return [objc_msgSend(*v1 delegate];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *v1;
          *v16 = 136315906;
          *&v16[4] = v4;
          *&v16[12] = 2080;
          *&v16[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
          *&v16[22] = 1024;
          LODWORD(v17) = 1390;
          WORD2(v17) = 2112;
          *(&v17 + 6) = v7;
          v8 = " [%s] %s:%d Participant[%@] calling didStopReacting";
          v9 = v5;
          v10 = 38;
LABEL_14:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v16, v10);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*v1 performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        return [objc_msgSend(*v1 delegate];
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = *v1;
          *v16 = 136316418;
          *&v16[4] = v11;
          *&v16[12] = 2080;
          *&v16[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
          *&v16[22] = 1024;
          LODWORD(v17) = 1390;
          WORD2(v17) = 2112;
          *(&v17 + 6) = v3;
          HIWORD(v17) = 2048;
          v18 = v15;
          LOWORD(v19) = 2112;
          *(&v19 + 2) = v15;
          _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) Participant[%@] calling didStopReacting", v16, 0x3Au);
        }

        return [objc_msgSend(*v1 delegate];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v1;
        *v16 = 136316418;
        *&v16[4] = v11;
        *&v16[12] = 2080;
        *&v16[14] = "[AVCSessionParticipant registerBlocksForNotifications]_block_invoke";
        *&v16[22] = 1024;
        LODWORD(v17) = 1390;
        WORD2(v17) = 2112;
        *(&v17 + 6) = v3;
        HIWORD(v17) = 2048;
        v18 = v14;
        LOWORD(v19) = 2112;
        *(&v19 + 2) = v14;
        v8 = " [%s] %s:%d %@(%p) Participant[%@] calling didStopReacting";
        v9 = v12;
        v10 = 58;
        goto LABEL_14;
      }
    }

    return [objc_msgSend(*v1 delegate];
  }

  return result;
}

- (void)deregisterFromNotifications
{
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionAudioEnabledDidSucceed"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionVideoEnabledDidSucceed"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionScreenEnabledDidSucceed"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionRemoteAudioEnabledDidChange"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionRemoteVideoEnabledDidChange"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionRemoteScreenEnabledDidChange"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionAudioPausedDidSucceed"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionVideoPausedDidSucceed"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionRemoteAudioPausedDidChange"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionRemoteVideoPausedDidChange"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionMediaPrioritiesDidChange"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionMediaStateDidChange"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionRemoteMediaStateDidChange"];
  [(VCXPCClientShared *)[(AVCSessionParticipant *)self sharedXPCConnection] deregisterWithUUID:self->_participantID service:"vcSessionReactionDidStart"];
  sharedXPCConnection = [(AVCSessionParticipant *)self sharedXPCConnection];
  participantID = self->_participantID;

  [(VCXPCClientShared *)sharedXPCConnection deregisterWithUUID:participantID service:"vcSessionReactionDidStopReacting"];
}

- (void)setupNotificationQueue:(id)queue
{
  if (queue)
  {
    self->_delegateNotificationQueue = queue;

    dispatch_retain(queue);
  }

  else
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    self->_delegateNotificationQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCSessionParticipant.notificationQueue", 0, CustomRootQueue);
  }
}

- (BOOL)setupMediaStates
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = [VCSessionParticipant streamGroupIDsFromParticipantData:self->_participantData];
  if (![v3 count])
  {
    [(AVCSessionParticipant *)self setupMediaStates];
    LOBYTE(v34) = buf[0];
    return v34;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v76 objects:v75 count:16];
  if (!v4)
  {
    goto LABEL_29;
  }

  v6 = v4;
  v7 = *v77;
  v8 = &selRef_isLatencySensitiveModeEnabled;
  *&v5 = 136315906;
  v48 = v5;
  obj = v3;
  do
  {
    v9 = 0;
    v49 = v8[456];
    do
    {
      if (*v77 != v7)
      {
        objc_enumerationMutation(obj);
      }

      unsignedIntValue = [*(*(&v76 + 1) + 8 * v9) unsignedIntValue];
      v11 = [VCSessionParticipant mediaTypesFromStreamGroupID:unsignedIntValue];
      if (![v11 count])
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_27;
          }

          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          v26 = FourccToCStr(unsignedIntValue);
          *buf = v48;
          v57 = v24;
          v58 = 2080;
          v59 = "[AVCSessionParticipant setupMediaStates]";
          v60 = 1024;
          v61 = 1434;
          v62 = 2080;
          v63 = v26;
          v21 = v25;
          v22 = " [%s] %s:%d Unknown streamGroupID=%s";
          v23 = 38;
        }

        else
        {
          v17 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v17 = [(AVCSessionParticipant *)self performSelector:v49];
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_27;
          }

          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          v20 = FourccToCStr(unsignedIntValue);
          *buf = 136316418;
          v57 = v18;
          v58 = 2080;
          v59 = "[AVCSessionParticipant setupMediaStates]";
          v60 = 1024;
          v61 = 1434;
          v62 = 2112;
          v63 = v17;
          v64 = 2048;
          selfCopy2 = self;
          v66 = 2080;
          v67 = v20;
          v21 = v19;
          v22 = " [%s] %s:%d %@(%p) Unknown streamGroupID=%s";
          v23 = 58;
        }

        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
        goto LABEL_27;
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v71 objects:v70 count:16];
      if (!v12)
      {
        goto LABEL_27;
      }

      v13 = v12;
      v14 = *v72;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v72 != v14)
          {
            objc_enumerationMutation(v11);
          }

          unsignedIntValue2 = [*(*(&v71 + 1) + 8 * i) unsignedIntValue];
          if (![(AVCSessionParticipant *)self generateMediaStateEntryForMediaType:unsignedIntValue2])
          {
            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v36 = VRTraceErrorLogLevelToCSTR();
                v37 = *MEMORY[0x1E6986650];
                v34 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
                if (!v34)
                {
                  return v34;
                }

                v38 = FourccToCStr(unsignedIntValue);
                v39 = VCSessionMediaType_Name(unsignedIntValue2);
                *buf = 136316162;
                v57 = v36;
                v58 = 2080;
                v59 = "[AVCSessionParticipant setupMediaStates]";
                v60 = 1024;
                v61 = 1441;
                v62 = 2080;
                v63 = v38;
                v64 = 2112;
                selfCopy2 = v39;
                v40 = " [%s] %s:%d Failed to add streamGroupID=%s for mediaType=%@";
                v41 = v37;
                v42 = 48;
                goto LABEL_47;
              }
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v35 = [(AVCSessionParticipant *)self performSelector:v49];
              }

              else
              {
                v35 = &stru_1F570E008;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v43 = VRTraceErrorLogLevelToCSTR();
                v44 = *MEMORY[0x1E6986650];
                v34 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
                if (!v34)
                {
                  return v34;
                }

                v45 = FourccToCStr(unsignedIntValue);
                v46 = VCSessionMediaType_Name(unsignedIntValue2);
                *buf = 136316674;
                v57 = v43;
                v58 = 2080;
                v59 = "[AVCSessionParticipant setupMediaStates]";
                v60 = 1024;
                v61 = 1441;
                v62 = 2112;
                v63 = v35;
                v64 = 2048;
                selfCopy2 = self;
                v66 = 2080;
                v67 = v45;
                v68 = 2112;
                v69 = v46;
                v40 = " [%s] %s:%d %@(%p) Failed to add streamGroupID=%s for mediaType=%@";
                v41 = v44;
                v42 = 68;
LABEL_47:
                _os_log_error_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
              }
            }

            LOBYTE(v34) = 0;
            return v34;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v71 objects:v70 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_27:
      ++v9;
    }

    while (v9 != v6);
    v6 = [obj countByEnumeratingWithState:&v76 objects:v75 count:16];
    v8 = &selRef_isLatencySensitiveModeEnabled;
  }

  while (v6);
LABEL_29:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  allKeys = [(NSMutableDictionary *)self->_mediaStates allKeys];
  v28 = [allKeys countByEnumeratingWithState:&v52 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v53;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(allKeys);
        }

        v32 = *(*(&v52 + 1) + 8 * j);
        v33 = +[AVCSessionParticipant defaultStateForMediaType:isLocal:](AVCSessionParticipant, "defaultStateForMediaType:isLocal:", [v32 unsignedIntValue], self->_isLocal);
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaStates, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v33], v32);
      }

      v29 = [allKeys countByEnumeratingWithState:&v52 objects:v51 count:16];
    }

    while (v29);
  }

  LOBYTE(v34) = 1;
  return v34;
}

+ (unsigned)defaultStateForMediaType:(unsigned int)type isLocal:(BOOL)local
{
  if (type >= 3)
  {
    return !local;
  }

  else
  {
    return dword_1DBD49E28[type];
  }
}

- (void)setUpConfig
{
  self->_participantConfig = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_volume = 1.0;
  v3 = objc_alloc_init(VCPositionalInfo);
  [(VCSessionParticipantUpdateConfig *)self->_updateConfig setValue:v3 forPropertyName:@"positionalInfo" forceCache:0];

  [(NSMutableDictionary *)self->_participantConfig setObject:self->_participantID forKeyedSubscript:@"vcSessionParticipantID"];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_idsParticipantID], @"vcSessionIDSParticipantID");
  [(NSMutableDictionary *)self->_participantConfig setObject:self->_participantData forKeyedSubscript:@"vcSessionParticipantData"];
  *&v4 = self->_volume;
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithFloat:v4], @"vcSessionParameterVolume");
  [(NSMutableDictionary *)self->_participantConfig setObject:[AVCSessionParticipant forKeyedSubscript:"archiveMediaStates:" archiveMediaStates:?], @"vcSessionParameterMediaStates"];
  [(NSMutableDictionary *)self->_participantConfig setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"vcSessionParameterIsPlaybackSyncGroupMember"];
  [(AVCSessionParticipant *)self updateLegacyStates];
  [(AVCSessionParticipant *)self setAudioMuted:0];
  [(AVCSessionParticipant *)self setProminenceIndex:0];
  [(AVCSessionParticipant *)self setVisibilityIndex:0];
  [(AVCSessionParticipant *)self setVideoQuality:5];
  [(AVCSessionParticipant *)self setIsPlaybackSynchronizationGroupMember:0];

  [(AVCSessionParticipant *)self setPlaybackSynchronizationGroupUUID:0];
}

- (void)updateLegacyStates
{
  v3 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2D8), "unsignedIntValue"}];
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A2F0), "unsignedIntValue"}];
  v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaStates objectForKeyedSubscript:{&unk_1F579A308), "unsignedIntValue"}];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v3 != 0], @"vcSessionParameterAudioEnabled");
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v4 != 0], @"vcSessionParameterVideoEnabled");
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v5 != 0], @"vcSessionParameterScreenEnabled");
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_participantConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v3 == 2], @"vcSessionParameterAudioPaused");
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v4 == 2];
  participantConfig = self->_participantConfig;

  [(NSMutableDictionary *)participantConfig setObject:v6 forKeyedSubscript:@"vcSessionParameterVideoPaused"];
}

- (void)appendConfigurationToXPCConfiguration:(id)configuration
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0;
  v6 = [(VCSessionParticipantUpdateConfig *)self->_updateConfig serializeCacheWithError:&v27];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:@"vcParticipantUpdateConfig"];
    goto LABEL_3;
  }

  if (v27)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          updateConfig = self->_updateConfig;
          *buf = 136316162;
          v29 = v18;
          v30 = 2080;
          v31 = "[AVCSessionParticipant appendConfigurationToXPCConfiguration:]";
          v32 = 1024;
          v33 = 1512;
          v34 = 2112;
          v35 = updateConfig;
          v36 = 2112;
          selfCopy2 = v27;
          v21 = " [%s] %s:%d Failed to serialize configuration=%@ with error=%@";
          v22 = v19;
          v23 = 48;
LABEL_28:
          _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(AVCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v26 = self->_updateConfig;
          *buf = 136316674;
          v29 = v24;
          v30 = 2080;
          v31 = "[AVCSessionParticipant appendConfigurationToXPCConfiguration:]";
          v32 = 1024;
          v33 = 1512;
          v34 = 2112;
          v35 = v8;
          v36 = 2048;
          selfCopy2 = self;
          v38 = 2112;
          v39 = v26;
          v40 = 2112;
          v41 = v27;
          v21 = " [%s] %s:%d %@(%p) Failed to serialize configuration=%@ with error=%@";
          v22 = v25;
          v23 = 68;
          goto LABEL_28;
        }
      }
    }
  }

LABEL_3:
  if ([v5 count])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_19;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      participantID = self->_participantID;
      *buf = 136315906;
      v29 = v9;
      v30 = 2080;
      v31 = "[AVCSessionParticipant appendConfigurationToXPCConfiguration:]";
      v32 = 1024;
      v33 = 1515;
      v34 = 2112;
      v35 = participantID;
      v12 = " [%s] %s:%d uuid=%@";
      v13 = v10;
      v14 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(AVCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_19;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v17 = self->_participantID;
      *buf = 136316418;
      v29 = v15;
      v30 = 2080;
      v31 = "[AVCSessionParticipant appendConfigurationToXPCConfiguration:]";
      v32 = 1024;
      v33 = 1515;
      v34 = 2112;
      v35 = v7;
      v36 = 2048;
      selfCopy2 = self;
      v38 = 2112;
      v39 = v17;
      v12 = " [%s] %s:%d %@(%p) uuid=%@";
      v13 = v16;
      v14 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_19:
    [v5 setObject:self->_participantID forKeyedSubscript:@"vcSessionParticipantID"];
    [configuration addObject:v5];
  }

  [(VCSessionParticipantUpdateConfig *)self->_updateConfig setUseCache:0];
  self->_configurationInProgress = 0;
}

- (void)setStateQueue:(id)localStateQueue
{
  pthread_rwlock_wrlock(&self->_stateQueueLock);
  stateQueue = self->_stateQueue;
  if (stateQueue != localStateQueue)
  {
    if (self->_localStateQueue == stateQueue)
    {
      dispatch_sync(stateQueue, &__block_literal_global_63);
    }

    else
    {
      dispatch_assert_queue_V2(stateQueue);
    }

    v6 = self->_stateQueue;
    if (v6)
    {
      dispatch_release(v6);
    }

    if (localStateQueue || (localStateQueue = self->_localStateQueue) != 0)
    {
      dispatch_retain(localStateQueue);
    }

    self->_stateQueue = localStateQueue;
  }

  pthread_rwlock_unlock(&self->_stateQueueLock);
}

- (id)copyStateQueue
{
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_retain(self->_stateQueue);
  }

  pthread_rwlock_unlock(&self->_stateQueueLock);
  return stateQueue;
}

- (BOOL)isStateQueueSet
{
  pthread_rwlock_rdlock(&self->_stateQueueLock);
  v3 = self->_stateQueue != self->_localStateQueue;
  pthread_rwlock_unlock(&self->_stateQueueLock);
  return v3;
}

+ (id)archiveMediaStates:(id)states
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = 0;
  result = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:states requiringSecureCoding:1 error:&v15];
  if (result)
  {
    v6 = v15 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136316162;
      v17 = v8;
      v18 = 2080;
      v19 = "+[AVCSessionParticipant archiveMediaStates:]";
      v20 = 1024;
      v21 = 1560;
      v22 = 2112;
      statesCopy = states;
      v24 = 2112;
      selfCopy = v15;
      v10 = " [%s] %s:%d Failed to archive mediaStates=%@. error=%@";
      v11 = v9;
      v12 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136316674;
      v17 = v13;
      v18 = 2080;
      v19 = "+[AVCSessionParticipant archiveMediaStates:]";
      v20 = 1024;
      v21 = 1560;
      v22 = 2112;
      statesCopy = v7;
      v24 = 2048;
      selfCopy = self;
      v26 = 2112;
      statesCopy2 = states;
      v28 = 2112;
      v29 = v15;
      v10 = " [%s] %s:%d %@(%p) Failed to archive mediaStates=%@. error=%@";
      v11 = v14;
      v12 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    return 0;
  }

  return result;
}

+ (id)unarchiveMediaStatesWithData:(id)data
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v5 = MEMORY[0x1E695DFA8];
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:objc_msgSend(v5 fromData:"setWithObjects:" error:{v6, objc_opt_class(), 0), data, &v17}];
  if (v7)
  {
    return v7;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v7;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v7;
    }

    *buf = 136315906;
    v19 = v10;
    v20 = 2080;
    v21 = "+[AVCSessionParticipant unarchiveMediaStatesWithData:]";
    v22 = 1024;
    v23 = 1570;
    v24 = 2112;
    v25 = v17;
    v12 = " [%s] %s:%d Failed to decode the media state dictionary. error=%@";
    v13 = v11;
    v14 = 38;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    return v7;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [self performSelector:sel_logPrefix];
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
      *buf = 136316418;
      v19 = v15;
      v20 = 2080;
      v21 = "+[AVCSessionParticipant unarchiveMediaStatesWithData:]";
      v22 = 1024;
      v23 = 1570;
      v24 = 2112;
      v25 = v9;
      v26 = 2048;
      selfCopy = self;
      v28 = 2112;
      v29 = v17;
      v12 = " [%s] %s:%d %@(%p) Failed to decode the media state dictionary. error=%@";
      v13 = v16;
      v14 = 58;
      goto LABEL_13;
    }
  }

  return v7;
}

uint64_t ___AVCSessionParticipant_DispatchSyncToStateQueue_block_invoke(uint64_t a1)
{
  pthread_rwlock_unlock((*(a1 + 32) + 216));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)storeMediaState:(unsigned int)state forMediaType:(unsigned int)type
{
  v4 = *&type;
  v5 = *&state;
  v32 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&type];
  [(AVCSessionParticipant *)self generateMediaStateEntryForMediaType:v4];
  v8 = [(NSMutableDictionary *)self->_mediaStates objectForKeyedSubscript:v7];
  if (!v8)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_5;
      }

      VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_5;
      }

      VCSessionMediaType_Name(v4);
      OUTLINED_FUNCTION_10();
      WORD6(v25) = v12;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v27 = v13;
      v14 = &dword_1DB56E000;
      v15 = " [%s] %s:%d Failed to retrieve media state for mediaType=%@";
      v16 = &v25;
      v17 = v11;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(AVCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_5;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      VCSessionMediaType_Name(v4);
      LODWORD(v25) = 136316418;
      *(&v25 + 4) = v21;
      WORD6(v25) = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v27 = v10;
      v28 = 2048;
      selfCopy = self;
      v30 = v23;
      v31 = v24;
      v14 = &dword_1DB56E000;
      v15 = " [%s] %s:%d %@(%p) Failed to retrieve media state for mediaType=%@";
      v16 = &v25;
      v17 = v22;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 58;
    }

LABEL_25:
    _os_log_error_impl(v14, v17, v18, v15, v16, v19);
    goto LABEL_5;
  }

  if ([v8 unsignedIntValue] == v5)
  {
    goto LABEL_5;
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaStates, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5], v7);
  v9 = [AVCSessionParticipant archiveMediaStates:self->_mediaStates];
  if (v9)
  {
    [(NSMutableDictionary *)self->_participantConfig setObject:v9 forKeyedSubscript:@"vcSessionParameterMediaStates"];
    [(AVCSessionParticipant *)self updateLegacyStates];
    goto LABEL_5;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_5;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    LODWORD(v25) = 136315650;
    *(&v25 + 4) = v20;
    OUTLINED_FUNCTION_0();
    v26 = 618;
    OUTLINED_FUNCTION_11_1();
    goto LABEL_25;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_25;
    }
  }

LABEL_5:
  [(AVCSessionParticipant *)self printMediaStates];
}

- (void)initWithParticipantID:(uint64_t)a1 data:delegate:queue:.cold.1(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithParticipantID:(uint64_t)a1 data:delegate:queue:.cold.2(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithParticipantID:(uint64_t)a1 data:delegate:queue:.cold.3(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithParticipantID:(uint64_t)a1 data:delegate:queue:.cold.4(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithParticipantID:(uint64_t)a1 data:delegate:queue:.cold.5(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithParticipantID:(uint64_t)a1 data:delegate:queue:.cold.6(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithParticipantID:(uint64_t)a1 data:delegate:queue:.cold.7(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

void __52__AVCSessionParticipant_setMediaState_forMediaType___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 224;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to retrieve current media state", &v2, 0x1Cu);
}

void __49__AVCSessionParticipant_setScreenControlEnabled___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x22u);
}

- (void)setVideoPositionalInfo:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x22u);
}

- (void)spatialAudioSourceIDForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x22u);
}

void __55__AVCSessionParticipant_registerBlocksForNotifications__block_invoke_239_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

- (void)setupMediaStates
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v14 = 136315650;
    v15 = v5;
    OUTLINED_FUNCTION_0();
    v16 = 1428;
    OUTLINED_FUNCTION_11_1();
LABEL_12:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [self performSelector:sel_logPrefix];
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
      v14 = 136316162;
      v15 = v12;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v17 = v4;
      v18 = 2048;
      selfCopy = self;
      v6 = &dword_1DB56E000;
      v9 = " [%s] %s:%d %@(%p) No stream groups found";
      v10 = &v14;
      v7 = v13;
      v8 = OS_LOG_TYPE_ERROR;
      v11 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a2 = 0;
}

@end