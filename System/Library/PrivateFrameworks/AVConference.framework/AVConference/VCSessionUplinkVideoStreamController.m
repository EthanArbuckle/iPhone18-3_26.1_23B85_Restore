@interface VCSessionUplinkVideoStreamController
- (BOOL)filterPendingTemporalStreams;
- (BOOL)pauseStreams;
- (BOOL)resumeStreams;
- (BOOL)setStreamsUseRTCPWithStreamInfos:(id)a3;
- (BOOL)shouldGenerateIDRWithStreamSchedule:(id)a3;
- (NSDictionary)activeVideoStreams;
- (VCSessionUplinkVideoStreamController)initWithVideoStreams:(id)a3 streamInfos:(id)a4 reportingAgent:(opaqueRTCReporting *)a5 delegate:(id)a6;
- (id)anchorStreamIDWithCappedVideoStreamIDs:(id)a3;
- (id)getMultiwayConfigForStreamID:(id)a3;
- (id)newVideoStreamKeyFrameScheduleWithStreamIDs:(id)a3;
- (id)schedulerStreamWithVideoStream:(id)a3;
- (id)videoStreamPendingKeyFrameGenerationWithStreamID:(id)a3 shouldRemoveFromPendingArray:(BOOL *)a4;
- (void)dealloc;
- (void)generateKeyFrameWithStreamID:(id)a3 firType:(int)a4;
- (void)handleStreamsPendingKeyFrameGeneration;
- (void)handleStreamsResetIDR;
- (void)initilizeStreamInfoMapWithStreamInfos:(id)a3;
- (void)printPendingKeyFrameWarningOnThresholdTimeElapsedWithCurrentFrameTime:(float)a3;
- (void)restart;
- (void)resumeStreams;
- (void)selectVideoStreamForVideoPriority;
- (void)setCurrentFrameTime:(float)a3;
- (void)setIsLocalOnCellular:(BOOL)a3 cappedVideoStreamIDs:(id)a4;
- (void)setPendingVideoStreams:(id)a3;
- (void)setPendingVideoStreamsInternal:(id)a3;
- (void)setStreamIDsCell:(id)a3;
- (void)setStreamIDsWifi:(id)a3;
@end

@implementation VCSessionUplinkVideoStreamController

- (VCSessionUplinkVideoStreamController)initWithVideoStreams:(id)a3 streamInfos:(id)a4 reportingAgent:(opaqueRTCReporting *)a5 delegate:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VCSessionUplinkVideoStreamController;
  v10 = [(VCSessionUplinkVideoStreamController *)&v16 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  objc_storeWeak(&v10->_delegate, a6);
  *(v11 + 24) = [a3 mutableCopy];
  v12 = [a3 count];
  *(v11 + 32) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v12];
  [v11 initilizeStreamInfoMapWithStreamInfos:a4];
  *(v11 + 64) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v12];
  *(v11 + 72) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v12];
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v12];
  *(v11 + 40) = v13;
  *(v11 + 232) = [v13 copy];
  *(v11 + 48) = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v12];
  *(v11 + 56) = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v12];
  *(v11 + 192) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  v17.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v17.__opaque = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutexattr_init(&v17);
  pthread_mutexattr_settype(&v17, 2);
  pthread_mutex_init((v11 + 120), &v17);
  pthread_mutexattr_destroy(&v17);
  *(v11 + 8) = 0;
  if (a5)
  {
    v14 = CFRetain(a5);
  }

  else
  {
    v14 = 0;
  }

  *(v11 + 240) = v14;
  if (([v11 setStreamsUseRTCPWithStreamInfos:a4] & 1) == 0)
  {
    [VCSessionUplinkVideoStreamController initWithVideoStreams:v11 streamInfos:? reportingAgent:? delegate:?];
LABEL_7:

    return 0;
  }

  return v11;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  objc_storeWeak(&self->_delegate, 0);
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  pthread_mutex_destroy(&self->_mutex);
  v4.receiver = self;
  v4.super_class = VCSessionUplinkVideoStreamController;
  [(VCSessionUplinkVideoStreamController *)&v4 dealloc];
}

- (NSDictionary)activeVideoStreams
{
  [(VCSessionUplinkVideoStreamController *)self lock];
  v3 = self->_cachedActiveVideoStreams;
  [(VCSessionUplinkVideoStreamController *)self unlock];
  return v3;
}

- (void)setStreamIDsCell:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  [(VCSessionUplinkVideoStreamController *)self lock];
  if (![a3 count])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_51;
      }

      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      v51 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          [VCSessionUplinkVideoStreamController setStreamIDsCell:];
        }

        goto LABEL_51;
      }

      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 136315650;
      v59 = v49;
      v60 = 2080;
      v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
      v62 = 1024;
      v63 = 105;
      v38 = " [%s] %s:%d streamIDsCell is nil";
      v44 = v50;
      v45 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v48 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v48 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_51;
      }

      v52 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x1E6986650];
      v54 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          v59 = v52;
          v60 = 2080;
          v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
          v62 = 1024;
          v63 = 105;
          v64 = 2112;
          v65 = v48;
          v66 = 2048;
          *v67 = self;
          _os_log_debug_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) streamIDsCell is nil", buf, 0x30u);
        }

        goto LABEL_51;
      }

      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 136316162;
      v59 = v52;
      v60 = 2080;
      v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
      v62 = 1024;
      v63 = 105;
      v64 = 2112;
      v65 = v48;
      v66 = 2048;
      *v67 = self;
      v38 = " [%s] %s:%d %@(%p) streamIDsCell is nil";
      v44 = v53;
      v45 = 48;
    }

    goto LABEL_50;
  }

  streamScheduleCell = self->_streamScheduleCell;
  currentStreamSchedule = self->_currentStreamSchedule;

  self->_streamIDsCell = [a3 copy];
  self->_streamScheduleCell = [(VCSessionUplinkVideoStreamController *)self newVideoStreamKeyFrameScheduleWithStreamIDs:self->_streamIDsCell];

  self->_schedulerCell = [[VCIDRScheduler alloc] initWithStreams:[(NSMutableDictionary *)self->_streamScheduleCell allValues] captureFramerate:self->_captureFrameRate];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v5 = [(NSMutableDictionary *)self->_streamScheduleCell allValues];
  v6 = [v5 countByEnumeratingWithState:&v74 objects:v73 count:16];
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v6;
  v8 = *v75;
  v57 = v5;
  do
  {
    v9 = 0;
    do
    {
      if (*v75 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v74 + 1) + 8 * v9);
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_22;
        }

        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        v22 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

          v23 = [(NSMutableDictionary *)v10 framePosition];
          v24 = [(NSMutableDictionary *)v10 framesPerIdrPeriod];
          *buf = 136316418;
          v59 = v20;
          v60 = 2080;
          v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
          v62 = 1024;
          v63 = 115;
          v64 = 2112;
          v65 = v10;
          v66 = 1024;
          *v67 = v23;
          *&v67[4] = 1024;
          *&v67[6] = v24;
          v17 = v21;
          v18 = " [%s] %s:%d Cell stream %@ position %d, framesPerIdrPeriod %d";
          v19 = 50;
          goto LABEL_18;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v30 = [(NSMutableDictionary *)v10 framePosition];
          v31 = [(NSMutableDictionary *)v10 framesPerIdrPeriod];
          *buf = 136316418;
          v59 = v20;
          v60 = 2080;
          v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
          v62 = 1024;
          v63 = 115;
          v64 = 2112;
          v65 = v10;
          v66 = 1024;
          *v67 = v30;
          *&v67[4] = 1024;
          *&v67[6] = v31;
          v27 = v21;
          v28 = " [%s] %s:%d Cell stream %@ position %d, framesPerIdrPeriod %d";
          v29 = 50;
          goto LABEL_25;
        }
      }

      else
      {
        v11 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v11 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
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
              goto LABEL_22;
            }

            v15 = [(NSMutableDictionary *)v10 framePosition];
            v16 = [(NSMutableDictionary *)v10 framesPerIdrPeriod];
            *buf = 136316930;
            v59 = v12;
            v60 = 2080;
            v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
            v62 = 1024;
            v63 = 115;
            v64 = 2112;
            v65 = v11;
            v66 = 2048;
            *v67 = self;
            *&v67[8] = 2112;
            v68 = v10;
            v69 = 1024;
            v70 = v15;
            v5 = v57;
            v71 = 1024;
            v72 = v16;
            v17 = v13;
            v18 = " [%s] %s:%d %@(%p) Cell stream %@ position %d, framesPerIdrPeriod %d";
            v19 = 70;
LABEL_18:
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
            goto LABEL_22;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v25 = [(NSMutableDictionary *)v10 framePosition];
            v26 = [(NSMutableDictionary *)v10 framesPerIdrPeriod];
            *buf = 136316930;
            v59 = v12;
            v60 = 2080;
            v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
            v62 = 1024;
            v63 = 115;
            v64 = 2112;
            v65 = v11;
            v66 = 2048;
            *v67 = self;
            *&v67[8] = 2112;
            v68 = v10;
            v69 = 1024;
            v70 = v25;
            v5 = v57;
            v71 = 1024;
            v72 = v26;
            v27 = v13;
            v28 = " [%s] %s:%d %@(%p) Cell stream %@ position %d, framesPerIdrPeriod %d";
            v29 = 70;
LABEL_25:
            _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, v28, buf, v29);
          }
        }
      }

LABEL_22:
      ++v9;
    }

    while (v7 != v9);
    v32 = [v5 countByEnumeratingWithState:&v74 objects:v73 count:16];
    v7 = v32;
  }

  while (v32);
LABEL_27:
  if (currentStreamSchedule == streamScheduleCell)
  {
    self->_currentStreamSchedule = self->_streamScheduleCell;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_51;
      }

      v42 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v43 = self->_streamScheduleCell;
      *buf = 136315906;
      v59 = v42;
      v60 = 2080;
      v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
      v62 = 1024;
      v63 = 119;
      v64 = 2112;
      v65 = v43;
      v38 = " [%s] %s:%d StreamScheduleCell (active) is %@";
      goto LABEL_44;
    }

    if (objc_opt_respondsToSelector())
    {
      v34 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v34 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_51;
    }

    v46 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v47 = self->_streamScheduleCell;
    *buf = 136316418;
    v59 = v46;
    v60 = 2080;
    v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
    v62 = 1024;
    v63 = 119;
    v64 = 2112;
    v65 = v34;
    v66 = 2048;
    *v67 = self;
    *&v67[8] = 2112;
    v68 = v47;
    v38 = " [%s] %s:%d %@(%p) StreamScheduleCell (active) is %@";
LABEL_49:
    v44 = v40;
    v45 = 58;
LABEL_50:
    _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, v38, buf, v45);
    goto LABEL_51;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_51;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v37 = self->_streamScheduleCell;
    *buf = 136315906;
    v59 = v35;
    v60 = 2080;
    v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
    v62 = 1024;
    v63 = 121;
    v64 = 2112;
    v65 = v37;
    v38 = " [%s] %s:%d StreamScheduleCell is %@";
LABEL_44:
    v44 = v36;
    v45 = 38;
    goto LABEL_50;
  }

  if (objc_opt_respondsToSelector())
  {
    v33 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
  }

  else
  {
    v33 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v39 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v41 = self->_streamScheduleCell;
      *buf = 136316418;
      v59 = v39;
      v60 = 2080;
      v61 = "[VCSessionUplinkVideoStreamController setStreamIDsCell:]";
      v62 = 1024;
      v63 = 121;
      v64 = 2112;
      v65 = v33;
      v66 = 2048;
      *v67 = self;
      *&v67[8] = 2112;
      v68 = v41;
      v38 = " [%s] %s:%d %@(%p) StreamScheduleCell is %@";
      goto LABEL_49;
    }
  }

LABEL_51:
  [(VCSessionUplinkVideoStreamController *)self unlock:streamScheduleCell];
}

- (void)setStreamIDsWifi:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  [(VCSessionUplinkVideoStreamController *)self lock];
  if (![a3 count])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_51;
      }

      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      v51 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          [VCSessionUplinkVideoStreamController setStreamIDsWifi:];
        }

        goto LABEL_51;
      }

      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 136315650;
      v59 = v49;
      v60 = 2080;
      v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
      v62 = 1024;
      v63 = 130;
      v38 = " [%s] %s:%d streamIDsWifi is nil";
      v44 = v50;
      v45 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v48 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v48 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_51;
      }

      v52 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x1E6986650];
      v54 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          v59 = v52;
          v60 = 2080;
          v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
          v62 = 1024;
          v63 = 130;
          v64 = 2112;
          v65 = v48;
          v66 = 2048;
          *v67 = self;
          _os_log_debug_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) streamIDsWifi is nil", buf, 0x30u);
        }

        goto LABEL_51;
      }

      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 136316162;
      v59 = v52;
      v60 = 2080;
      v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
      v62 = 1024;
      v63 = 130;
      v64 = 2112;
      v65 = v48;
      v66 = 2048;
      *v67 = self;
      v38 = " [%s] %s:%d %@(%p) streamIDsWifi is nil";
      v44 = v53;
      v45 = 48;
    }

    goto LABEL_50;
  }

  streamScheduleWifi = self->_streamScheduleWifi;
  currentStreamSchedule = self->_currentStreamSchedule;

  self->_streamIDsWifi = [a3 copy];
  self->_streamScheduleWifi = [(VCSessionUplinkVideoStreamController *)self newVideoStreamKeyFrameScheduleWithStreamIDs:self->_streamIDsWifi];

  self->_schedulerWifi = [[VCIDRScheduler alloc] initWithStreams:[(NSMutableDictionary *)self->_streamScheduleWifi allValues] captureFramerate:self->_captureFrameRate];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v5 = [(NSMutableDictionary *)self->_streamScheduleWifi allValues];
  v6 = [v5 countByEnumeratingWithState:&v74 objects:v73 count:16];
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v6;
  v8 = *v75;
  v57 = v5;
  do
  {
    v9 = 0;
    do
    {
      if (*v75 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v74 + 1) + 8 * v9);
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_22;
        }

        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        v22 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

          v23 = [(NSMutableDictionary *)v10 framePosition];
          v24 = [(NSMutableDictionary *)v10 framesPerIdrPeriod];
          *buf = 136316418;
          v59 = v20;
          v60 = 2080;
          v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
          v62 = 1024;
          v63 = 139;
          v64 = 2112;
          v65 = v10;
          v66 = 1024;
          *v67 = v23;
          *&v67[4] = 1024;
          *&v67[6] = v24;
          v17 = v21;
          v18 = " [%s] %s:%d Wifi stream %@, position %d, framesPerIdrPeriod %d";
          v19 = 50;
          goto LABEL_18;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v30 = [(NSMutableDictionary *)v10 framePosition];
          v31 = [(NSMutableDictionary *)v10 framesPerIdrPeriod];
          *buf = 136316418;
          v59 = v20;
          v60 = 2080;
          v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
          v62 = 1024;
          v63 = 139;
          v64 = 2112;
          v65 = v10;
          v66 = 1024;
          *v67 = v30;
          *&v67[4] = 1024;
          *&v67[6] = v31;
          v27 = v21;
          v28 = " [%s] %s:%d Wifi stream %@, position %d, framesPerIdrPeriod %d";
          v29 = 50;
          goto LABEL_25;
        }
      }

      else
      {
        v11 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v11 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
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
              goto LABEL_22;
            }

            v15 = [(NSMutableDictionary *)v10 framePosition];
            v16 = [(NSMutableDictionary *)v10 framesPerIdrPeriod];
            *buf = 136316930;
            v59 = v12;
            v60 = 2080;
            v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
            v62 = 1024;
            v63 = 139;
            v64 = 2112;
            v65 = v11;
            v66 = 2048;
            *v67 = self;
            *&v67[8] = 2112;
            v68 = v10;
            v69 = 1024;
            v70 = v15;
            v5 = v57;
            v71 = 1024;
            v72 = v16;
            v17 = v13;
            v18 = " [%s] %s:%d %@(%p) Wifi stream %@, position %d, framesPerIdrPeriod %d";
            v19 = 70;
LABEL_18:
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
            goto LABEL_22;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v25 = [(NSMutableDictionary *)v10 framePosition];
            v26 = [(NSMutableDictionary *)v10 framesPerIdrPeriod];
            *buf = 136316930;
            v59 = v12;
            v60 = 2080;
            v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
            v62 = 1024;
            v63 = 139;
            v64 = 2112;
            v65 = v11;
            v66 = 2048;
            *v67 = self;
            *&v67[8] = 2112;
            v68 = v10;
            v69 = 1024;
            v70 = v25;
            v5 = v57;
            v71 = 1024;
            v72 = v26;
            v27 = v13;
            v28 = " [%s] %s:%d %@(%p) Wifi stream %@, position %d, framesPerIdrPeriod %d";
            v29 = 70;
LABEL_25:
            _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, v28, buf, v29);
          }
        }
      }

LABEL_22:
      ++v9;
    }

    while (v7 != v9);
    v32 = [v5 countByEnumeratingWithState:&v74 objects:v73 count:16];
    v7 = v32;
  }

  while (v32);
LABEL_27:
  if (currentStreamSchedule == streamScheduleWifi)
  {
    self->_currentStreamSchedule = self->_streamScheduleWifi;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_51;
      }

      v42 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v43 = self->_streamScheduleWifi;
      *buf = 136315906;
      v59 = v42;
      v60 = 2080;
      v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
      v62 = 1024;
      v63 = 143;
      v64 = 2112;
      v65 = v43;
      v38 = " [%s] %s:%d StreamScheduleWifi (active) is %@";
      goto LABEL_44;
    }

    if (objc_opt_respondsToSelector())
    {
      v34 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v34 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_51;
    }

    v46 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v47 = self->_streamScheduleWifi;
    *buf = 136316418;
    v59 = v46;
    v60 = 2080;
    v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
    v62 = 1024;
    v63 = 143;
    v64 = 2112;
    v65 = v34;
    v66 = 2048;
    *v67 = self;
    *&v67[8] = 2112;
    v68 = v47;
    v38 = " [%s] %s:%d %@(%p) StreamScheduleWifi (active) is %@";
LABEL_49:
    v44 = v40;
    v45 = 58;
LABEL_50:
    _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, v38, buf, v45);
    goto LABEL_51;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_51;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v37 = self->_streamScheduleWifi;
    *buf = 136315906;
    v59 = v35;
    v60 = 2080;
    v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
    v62 = 1024;
    v63 = 145;
    v64 = 2112;
    v65 = v37;
    v38 = " [%s] %s:%d StreamScheduleWifi is %@";
LABEL_44:
    v44 = v36;
    v45 = 38;
    goto LABEL_50;
  }

  if (objc_opt_respondsToSelector())
  {
    v33 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
  }

  else
  {
    v33 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v39 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v41 = self->_streamScheduleWifi;
      *buf = 136316418;
      v59 = v39;
      v60 = 2080;
      v61 = "[VCSessionUplinkVideoStreamController setStreamIDsWifi:]";
      v62 = 1024;
      v63 = 145;
      v64 = 2112;
      v65 = v33;
      v66 = 2048;
      *v67 = self;
      *&v67[8] = 2112;
      v68 = v41;
      v38 = " [%s] %s:%d %@(%p) StreamScheduleWifi is %@";
      goto LABEL_49;
    }
  }

LABEL_51:
  [(VCSessionUplinkVideoStreamController *)self unlock:streamScheduleWifi];
}

- (void)setPendingVideoStreamsInternal:(id)a3
{
  v5 = [a3 mutableCopy];
  self->_pendingVideoStreams = v5;
  if ([(NSMutableDictionary *)v5 count])
  {
    v6 = 1;
  }

  else
  {
    if ([(NSMutableSet *)self->_streamToResume count])
    {
      [(NSMutableSet *)self->_streamToResume removeAllObjects];
    }

    self->_streamToPause = [(NSMutableDictionary *)self->_activeVideoStreams mutableCopy];
    [(VCSessionUplinkVideoStreamController *)self pauseStreams];
    v6 = 0;
  }

  self->_pendingStreamsUpdated = v6;
}

- (void)setPendingVideoStreams:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[VCSessionUplinkVideoStreamController setPendingVideoStreams:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 172;
        WORD2(v14) = 2112;
        *(&v14 + 6) = [a3 allKeys];
        v8 = " [%s] %s:%d Setting pending streams %@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
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
        *v13 = 136316418;
        *&v13[4] = v11;
        *&v13[12] = 2080;
        *&v13[14] = "[VCSessionUplinkVideoStreamController setPendingVideoStreams:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 172;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v5;
        HIWORD(v14) = 2048;
        v15 = self;
        LOWORD(v16) = 2112;
        *(&v16 + 2) = [a3 allKeys];
        v8 = " [%s] %s:%d %@(%p) Setting pending streams %@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  [(VCSessionUplinkVideoStreamController *)self lock:*v13];
  [(VCSessionUplinkVideoStreamController *)self setPendingVideoStreamsInternal:a3];
  [(VCSessionUplinkVideoStreamController *)self unlock];
}

- (void)selectVideoStreamForVideoPriority
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_dynamicVideoPriorityEnabled)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = [(NSMutableDictionary *)self->_activeVideoStreams allValues];
    v4 = [v3 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      v7 = -1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [objc_msgSend(objc_msgSend(*(*(&v21 + 1) + 8 * i) "defaultStreamConfig")];
          if (v7 >= v9)
          {
            v7 = v9;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = -1;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(NSMutableDictionary *)self->_activeVideoStreams allValues];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * j) setEncodingMode:{v7 == objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v16 + 1) + 8 * j), "defaultStreamConfig"), "multiwayConfig"), "qualityIndex")}];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v12);
    }
  }
}

- (void)setCurrentFrameTime:(float)a3
{
  v27 = *MEMORY[0x1E69E9840];
  [(VCSessionUplinkVideoStreamController *)self lock];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_18;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *v23 = 136315906;
      *&v23[4] = v6;
      *&v23[12] = 2080;
      *&v23[14] = "[VCSessionUplinkVideoStreamController setCurrentFrameTime:]";
      *&v23[22] = 1024;
      LODWORD(v24) = 204;
      WORD2(v24) = 2048;
      *(&v24 + 6) = a3;
      v9 = " [%s] %s:%d FrameTime is %f";
      v10 = v7;
      v11 = 38;
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v23, v11);
      goto LABEL_18;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [VCSessionUplinkVideoStreamController setCurrentFrameTime:v6];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
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
          goto LABEL_18;
        }

        *v23 = 136316418;
        *&v23[4] = v12;
        *&v23[12] = 2080;
        *&v23[14] = "[VCSessionUplinkVideoStreamController setCurrentFrameTime:]";
        *&v23[22] = 1024;
        LODWORD(v24) = 204;
        WORD2(v24) = 2112;
        *(&v24 + 6) = v5;
        HIWORD(v24) = 2048;
        v25 = self;
        LOWORD(v26) = 2048;
        *(&v26 + 2) = a3;
        v9 = " [%s] %s:%d %@(%p) FrameTime is %f";
        v10 = v13;
        v11 = 58;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v23 = 136316418;
        *&v23[4] = v12;
        *&v23[12] = 2080;
        *&v23[14] = "[VCSessionUplinkVideoStreamController setCurrentFrameTime:]";
        *&v23[22] = 1024;
        LODWORD(v24) = 204;
        WORD2(v24) = 2112;
        *(&v24 + 6) = v5;
        HIWORD(v24) = 2048;
        v25 = self;
        LOWORD(v26) = 2048;
        *(&v26 + 2) = a3;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) FrameTime is %f", v23, 0x3Au);
      }
    }
  }

LABEL_18:
  if (self->_startTime == 0.0)
  {
    self->_startTime = a3;
  }

  self->_currentFrameTime = a3;
  if (self->_pendingStreamsUpdated)
  {
    v15 = [(VCSessionUplinkVideoStreamController *)self filterPendingTemporalStreams];
    v16 = [MEMORY[0x1E695DFA8] setWithArray:{-[NSMutableDictionary allKeys](self->_pendingVideoStreams, "allKeys")}];
    v17 = [MEMORY[0x1E695DFA8] setWithArray:{-[NSMutableDictionary allKeys](self->_activeVideoStreams, "allKeys")}];
    v18 = [v16 mutableCopy];
    v19 = [v17 mutableCopy];
    [(NSMutableSet *)v18 minusSet:v17];
    [(NSMutableSet *)v19 minusSet:v16];

    self->_streamToPause = v19;
    self->_streamToResume = v18;
    LOBYTE(v16) = [(VCSessionUplinkVideoStreamController *)self pauseStreams];
    v20 = [(VCSessionUplinkVideoStreamController *)self resumeStreams];
    self->_pendingStreamsUpdated = 0;
    if ((v16 & 1) != 0 || v20 || v15)
    {
LABEL_27:
      v21 = [(VCSessionUplinkVideoStreamController *)self delegate:*v23];
      [v21 controller:self didChangeActiveVideoStreams:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithDictionary:", self->_activeVideoStreams)}];
    }
  }

  else if ([(NSMutableSet *)self->_streamToResume count]&& [(VCSessionUplinkVideoStreamController *)self resumeStreams])
  {
    goto LABEL_27;
  }

  if ([(NSMutableArray *)self->_streamsPendingKeyFrameGeneration count:*v23])
  {
    [(VCSessionUplinkVideoStreamController *)self handleStreamsPendingKeyFrameGeneration];
  }

  *&v22 = a3;
  [(VCSessionUplinkVideoStreamController *)self printPendingKeyFrameWarningOnThresholdTimeElapsedWithCurrentFrameTime:v22];
  if ([(NSMutableArray *)self->_streamResetIDR count])
  {
    [(VCSessionUplinkVideoStreamController *)self handleStreamsResetIDR];
  }

  [(VCSessionUplinkVideoStreamController *)self unlock];
}

- (void)setIsLocalOnCellular:(BOOL)a3 cappedVideoStreamIDs:(id)a4
{
  v5 = a3;
  v32 = *MEMORY[0x1E69E9840];
  [(VCSessionUplinkVideoStreamController *)self lock];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 136316162;
        *&v28[4] = v8;
        *&v28[12] = 2080;
        *&v28[14] = "[VCSessionUplinkVideoStreamController setIsLocalOnCellular:cappedVideoStreamIDs:]";
        *&v28[22] = 1024;
        *v29 = 256;
        *&v29[4] = 1024;
        *&v29[6] = v5;
        *&v29[10] = 2112;
        *&v29[12] = a4;
        v10 = " [%s] %s:%d Current interface isLocalOnCellular %d %@";
        v11 = v9;
        v12 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v28, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 136316674;
        *&v28[4] = v13;
        *&v28[12] = 2080;
        *&v28[14] = "[VCSessionUplinkVideoStreamController setIsLocalOnCellular:cappedVideoStreamIDs:]";
        *&v28[22] = 1024;
        *v29 = 256;
        *&v29[4] = 2112;
        *&v29[6] = v7;
        *&v29[14] = 2048;
        *&v29[16] = self;
        LOWORD(v30) = 1024;
        *(&v30 + 2) = v5;
        HIWORD(v30) = 2112;
        v31 = a4;
        v10 = " [%s] %s:%d %@(%p) Current interface isLocalOnCellular %d %@";
        v11 = v14;
        v12 = 64;
        goto LABEL_11;
      }
    }
  }

  v15 = 64;
  if (v5)
  {
    v15 = 72;
  }

  self->_currentStreamSchedule = *(&self->super.isa + v15);
  v16 = [(VCSessionUplinkVideoStreamController *)self anchorStreamIDWithCappedVideoStreamIDs:a4, *v28, *&v28[16], *v29, *&v29[16], v30, v31];
  if (v16)
  {
    v17 = v16;
    v18 = [(NSMutableDictionary *)self->_streamScheduleWifi objectForKeyedSubscript:v16];
    if (v18)
    {
      v19 = v18;
      v20 = [(NSMutableDictionary *)self->_streamScheduleCell objectForKeyedSubscript:v17];
      if (v20)
      {
        v21 = v20;
        v22 = [v19 framePosition];
        v23 = v22 / [v19 framesPerIdrPeriod];
        v24 = [v21 framePosition];
        v25 = v24 / [v21 framesPerIdrPeriod];
        v26 = [v19 keyFrameInterval] / 0x3E8;
        if (v5)
        {
          v27 = v23 - v25;
        }

        else
        {
          v27 = v25 - v23;
        }

        self->_currentFrameTime = self->_currentFrameTime - (v27 * v26);
      }

      else
      {
        [VCSessionUplinkVideoStreamController setIsLocalOnCellular:? cappedVideoStreamIDs:?];
      }
    }

    else
    {
      [VCSessionUplinkVideoStreamController setIsLocalOnCellular:? cappedVideoStreamIDs:?];
    }
  }

  else
  {
    [VCSessionUplinkVideoStreamController setIsLocalOnCellular:? cappedVideoStreamIDs:?];
  }

  [(VCSessionUplinkVideoStreamController *)self unlock];
}

- (void)generateKeyFrameWithStreamID:(id)a3 firType:(int)a4
{
  v4 = *&a4;
  v19 = *MEMORY[0x1E69E9840];
  [(VCSessionUplinkVideoStreamController *)self lock];
  if (self->_shouldSkipIDRScheduler)
  {
    if ([(NSMutableDictionary *)self->_activeVideoStreams objectForKeyedSubscript:a3])
    {
      v7 = [(NSMutableDictionary *)self->_activeVideoStreams objectForKeyedSubscript:a3];
LABEL_16:
      [v7 generateKeyFrameWithFIRType:v4];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [(NSMutableDictionary *)self->_activeVideoStreams allValues];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            if ([objc_msgSend(v13 "compoundStreamIDs")])
            {
              v7 = v13;
              goto LABEL_16;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else if (([(NSMutableArray *)self->_streamsPendingKeyFrameGeneration containsObject:a3]& 1) == 0)
  {
    [(NSMutableArray *)self->_streamsPendingKeyFrameGeneration addObject:a3];
  }

  [(VCSessionUplinkVideoStreamController *)self unlock];
}

- (BOOL)setStreamsUseRTCPWithStreamInfos:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a3 || ![a3 count] || !objc_msgSend(objc_msgSend(a3, "firstObject"), "streamConfigs") || !objc_msgSend(objc_msgSend(objc_msgSend(a3, "firstObject"), "streamConfigs"), "count"))
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_44;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v16)
      {
        *buf = 136316162;
        v31 = v18;
        v32 = 2080;
        v33 = "[VCSessionUplinkVideoStreamController setStreamsUseRTCPWithStreamInfos:]";
        v34 = 1024;
        v35 = 308;
        v36 = 2112;
        *v37 = v17;
        *&v37[8] = 2048;
        *&v37[10] = self;
        v23 = " [%s] %s:%d %@(%p) StreamInfo array is nil, empty, or its streamConfigs array is nil or empty.";
        v24 = v19;
        v25 = 48;
LABEL_43:
        _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
        goto LABEL_44;
      }

      goto LABEL_30;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v16)
      {
LABEL_30:
        LOBYTE(v5) = 0;
        goto LABEL_45;
      }

      [VCSessionUplinkVideoStreamController setStreamsUseRTCPWithStreamInfos:];
    }

LABEL_44:
    LOBYTE(v5) = 0;
    LOBYTE(v16) = 0;
    goto LABEL_45;
  }

  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "firstObject")];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v48 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
LABEL_7:
    v9 = 0;
    while (1)
    {
      if (*v49 != v8)
      {
        objc_enumerationMutation(a3);
      }

      v10 = *(*(&v48 + 1) + 8 * v9);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v29 = v10;
      v11 = [v10 streamConfigs];
      v12 = [v11 countByEnumeratingWithState:&v43 objects:v42 count:16];
      if (v12)
      {
        break;
      }

LABEL_18:
      if (++v9 == v7)
      {
        v7 = [a3 countByEnumeratingWithState:&v48 objects:v47 count:16];
        LOBYTE(v16) = 1;
        if (v7)
        {
          goto LABEL_7;
        }

        goto LABEL_45;
      }
    }

    v13 = v12;
    v14 = *v44;
LABEL_12:
    v15 = 0;
    while (1)
    {
      if (*v44 != v14)
      {
        objc_enumerationMutation(v11);
      }

      if (v5 != [*(*(&v43 + 1) + 8 * v15) isRTCPEnabled])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v43 objects:v42 count:16];
        if (v13)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_44;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v16)
      {
        *buf = 136316162;
        v31 = v21;
        v32 = 2080;
        v33 = "[VCSessionUplinkVideoStreamController setStreamsUseRTCPWithStreamInfos:]";
        v34 = 1024;
        v35 = 318;
        v36 = 1024;
        *v37 = v5;
        *&v37[4] = 2048;
        *&v37[6] = [v29 stream];
        v23 = " [%s] %s:%d Invalid RTCP config. firstStreamRTCPEnabled=%d but stream=%p has a different value. All streams must have matching isRTCPEnabled values.";
        v24 = v22;
        v25 = 44;
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_44;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v16)
    {
      goto LABEL_30;
    }

    *buf = 136316674;
    v31 = v26;
    v32 = 2080;
    v33 = "[VCSessionUplinkVideoStreamController setStreamsUseRTCPWithStreamInfos:]";
    v34 = 1024;
    v35 = 318;
    v36 = 2112;
    *v37 = v20;
    *&v37[8] = 2048;
    *&v37[10] = self;
    v38 = 1024;
    v39 = v5;
    v40 = 2048;
    v41 = [v29 stream];
    v23 = " [%s] %s:%d %@(%p) Invalid RTCP config. firstStreamRTCPEnabled=%d but stream=%p has a different value. All streams must have matching isRTCPEnabled values.";
    v24 = v27;
    v25 = 64;
    goto LABEL_43;
  }

  LOBYTE(v16) = 1;
LABEL_45:
  self->_streamsUseRTCP = v5;
  return v16;
}

- (id)anchorStreamIDWithCappedVideoStreamIDs:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] setWithArray:{-[NSMutableDictionary allKeys](self->_activeVideoStreams, "allKeys")}];
  [v5 intersectSet:{objc_msgSend(MEMORY[0x1E695DFA8], "setWithArray:", a3)}];
  if ([v5 count])
  {
    v6 = [v5 allObjects];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamInfoMap objectForKeyedSubscript:{v13), "streamConfigs"), "objectAtIndexedSubscript:", 0), "multiwayConfig"}];
          if ([v14 maxNetworkBitrate] > v9)
          {
            v9 = [v14 maxNetworkBitrate];
            v10 = v13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v8);
      if (v10)
      {

        v15 = [v6 mutableCopy];
        self->_streamResetIDR = v15;
        [(NSMutableArray *)v15 removeObject:v10];
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    [(VCSessionUplinkVideoStreamController *)self anchorStreamIDWithCappedVideoStreamIDs:?];
    return v17;
  }

  return v10;
}

- (void)initilizeStreamInfoMapWithStreamInfos:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = [a3 countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v17)
  {
    v16 = *v42;
    v4 = 0x1E696A000uLL;
    v5 = MEMORY[0x1E6986650];
    do
    {
      v6 = 0;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(a3);
        }

        v18 = v6;
        v7 = *(*(&v41 + 1) + 8 * v6);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v20 = [v7 streamConfigs];
        v22 = [v20 countByEnumeratingWithState:&v36 objects:v35 count:16];
        if (v22)
        {
          v21 = *v37;
          v19 = v7;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v37 != v21)
              {
                objc_enumerationMutation(v20);
              }

              -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamInfoMap, "setObject:forKeyedSubscript:", v7, [*(v4 + 3480) numberWithUnsignedShort:{objc_msgSend(objc_msgSend(*(*(&v36 + 1) + 8 * i), "multiwayConfig"), "idsStreamID")}]);
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                __str = 0;
                streamInfoMap = self->_streamInfoMap;
                v10 = streamInfoMap ? [-[NSMutableDictionary description](streamInfoMap "description")] : "<nil>";
                asprintf(&__str, "(%p) %s", self, v10);
                if (__str)
                {
                  v11 = v4;
                  __lasts = 0;
                  v12 = strtok_r(__str, "\n", &__lasts);
                  do
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v13 = VRTraceErrorLogLevelToCSTR();
                      v14 = *v5;
                      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136316162;
                        v26 = v13;
                        v27 = 2080;
                        v28 = "[VCSessionUplinkVideoStreamController initilizeStreamInfoMapWithStreamInfos:]";
                        v29 = 1024;
                        v30 = 360;
                        v31 = 2080;
                        v32 = "_streamInfoMap:";
                        v33 = 2080;
                        v34 = v12;
                        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
                      }
                    }

                    v12 = strtok_r(0, "\n", &__lasts);
                  }

                  while (v12);
                  free(__str);
                  v4 = v11;
                  v7 = v19;
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v36 objects:v35 count:16];
          }

          while (v22);
        }

        v6 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [a3 countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v17);
  }
}

- (BOOL)resumeStreams
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  streamToResume = self->_streamToResume;
  v5 = [(NSMutableSet *)streamToResume countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v40;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(streamToResume);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = [-[VCSessionUplinkVideoStreamController getMultiwayConfigForStreamID:](self getMultiwayConfigForStreamID:{v10), "isTemporalStream"}];
        v12 = [(NSMutableDictionary *)self->_currentStreamSchedule objectForKeyedSubscript:v10];
        if (!v12 && (v11 & 1) == 0 && !self->_shouldSkipIDRScheduler)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCSessionUplinkVideoStreamController resumeStreams];
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v25 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
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
                v28 = 136316418;
                v29 = v26;
                v30 = 2080;
                v31 = "[VCSessionUplinkVideoStreamController resumeStreams]";
                v32 = 1024;
                v33 = 379;
                v34 = 2112;
                *v35 = v25;
                *&v35[8] = 2048;
                *&v35[10] = self;
                v36 = 2112;
                *v37 = v10;
                _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Non temporal stream's schedule is nil for streamID %@", &v28, 0x3Au);
              }
            }
          }

          goto LABEL_23;
        }

        if ((([(VCSessionUplinkVideoStreamController *)self shouldGenerateIDRWithStreamSchedule:v12]| v11) & 1) != 0 || self->_shouldSkipIDRScheduler)
        {
          v13 = [(NSMutableDictionary *)self->_videoStreams objectForKeyedSubscript:v10];
          if ([v13 state] == 4)
          {
            [v13 setPause:0];
          }

          if (self->_streamsUseRTCP)
          {
            [v13 setRtcpEnabled:1];
          }

          [(NSMutableDictionary *)self->_activeVideoStreams setObject:v13 forKeyedSubscript:v10];
          [v3 addObject:v10];
          v7 = 1;
        }
      }

      v6 = [(NSMutableSet *)streamToResume countByEnumeratingWithState:&v39 objects:v38 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    [(VCSessionUplinkVideoStreamController *)self setCachedActiveVideoStreams:self->_activeVideoStreams];
    if (v7)
    {
      [(NSMutableSet *)self->_streamToResume minusSet:v3];
      v7 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    [(VCSessionUplinkVideoStreamController *)self setCachedActiveVideoStreams:self->_activeVideoStreams];
  }

  v7 = 0;
LABEL_22:
  [(VCSessionUplinkVideoStreamController *)self selectVideoStreamForVideoPriority];
LABEL_23:

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        activeVideoStreams = self->_activeVideoStreams;
        v28 = 136316162;
        v29 = v15;
        v30 = 2080;
        v31 = "[VCSessionUplinkVideoStreamController resumeStreams]";
        v32 = 1024;
        v33 = 401;
        v34 = 1024;
        *v35 = v7;
        *&v35[4] = 2112;
        *&v35[6] = activeVideoStreams;
        v18 = " [%s] %s:%d streamResumed %d activeVideoStreams %@";
        v19 = v16;
        v20 = 44;
LABEL_33:
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, &v28, v20);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
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
        v23 = self->_activeVideoStreams;
        v28 = 136316674;
        v29 = v21;
        v30 = 2080;
        v31 = "[VCSessionUplinkVideoStreamController resumeStreams]";
        v32 = 1024;
        v33 = 401;
        v34 = 2112;
        *v35 = v14;
        *&v35[8] = 2048;
        *&v35[10] = self;
        v36 = 1024;
        *v37 = v7;
        *&v37[4] = 2112;
        *&v37[6] = v23;
        v18 = " [%s] %s:%d %@(%p) streamResumed %d activeVideoStreams %@";
        v19 = v22;
        v20 = 64;
        goto LABEL_33;
      }
    }
  }

  return v7;
}

- (BOOL)shouldGenerateIDRWithStreamSchedule:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = self->_currentFrameTime - self->_startTime;
  v6 = [a3 keyFrameInterval];
  v7 = (v5 - ((v5 / (v6 / 0x3E8)) * (v6 / 0x3E8))) / (v6 / 0x3E8);
  v8 = [a3 framePosition];
  v9 = v8 / [a3 framesPerIdrPeriod];
  if (v7 < v9 && [(NSMutableArray *)self->_streamsPendingKeyFrameGeneration count])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          currentFrameTime = self->_currentFrameTime;
          startTime = self->_startTime;
          v23 = 136316674;
          v24 = v11;
          v25 = 2080;
          v26 = "[VCSessionUplinkVideoStreamController shouldGenerateIDRWithStreamSchedule:]";
          v27 = 1024;
          v28 = 418;
          v29 = 2048;
          v30 = v7;
          v31 = 2048;
          v32 = v9;
          v33 = 2048;
          v34 = currentFrameTime;
          v35 = 2048;
          v36 = startTime;
          v15 = " [%s] %s:%d reminderTimePercentage=%3.2f, expectedTimePercentage=%3.2f, _currentFrameTime=%5.2f, _startTime=%5.2f.";
          v16 = v12;
          v17 = 68;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v23, v17);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        *&v10 = COERCE_DOUBLE([(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix]);
      }

      else
      {
        *&v10 = COERCE_DOUBLE(&stru_1F570E008);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = self->_currentFrameTime;
          v21 = self->_startTime;
          v23 = 136317186;
          v24 = v18;
          v25 = 2080;
          v26 = "[VCSessionUplinkVideoStreamController shouldGenerateIDRWithStreamSchedule:]";
          v27 = 1024;
          v28 = 418;
          v29 = 2112;
          v30 = *&v10;
          v31 = 2048;
          v32 = *&self;
          v33 = 2048;
          v34 = v7;
          v35 = 2048;
          v36 = v9;
          v37 = 2048;
          v38 = v20;
          v39 = 2048;
          v40 = v21;
          v15 = " [%s] %s:%d %@(%p) reminderTimePercentage=%3.2f, expectedTimePercentage=%3.2f, _currentFrameTime=%5.2f, _startTime=%5.2f.";
          v16 = v19;
          v17 = 88;
          goto LABEL_13;
        }
      }
    }
  }

  return v7 >= v9;
}

- (BOOL)pauseStreams
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  streamToPause = self->_streamToPause;
  v4 = [(NSMutableSet *)streamToPause countByEnumeratingWithState:&v27 objects:v26 count:16];
  v5 = v4;
  if (v4)
  {
    v6 = *v28;
    v7 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(streamToPause);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_activeVideoStreams objectForKeyedSubscript:v9];
        if ([v10 state] == 2)
        {
          if (self->_streamsUseRTCP)
          {
            [v10 setRtcpEnabled:0];
          }

          [v10 setPause:1];
        }

        [(NSMutableDictionary *)self->_activeVideoStreams setObject:0 forKeyedSubscript:v9];
      }

      v7 = [(NSMutableSet *)streamToPause countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v7);
  }

  [(VCSessionUplinkVideoStreamController *)self setCachedActiveVideoStreams:self->_activeVideoStreams];
  [(NSMutableSet *)self->_streamToPause removeAllObjects];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        activeVideoStreams = self->_activeVideoStreams;
        *v22 = 136316162;
        *&v22[4] = v12;
        *&v22[12] = 2080;
        *&v22[14] = "[VCSessionUplinkVideoStreamController pauseStreams]";
        *&v22[22] = 1024;
        *v23 = 440;
        *&v23[4] = 1024;
        *&v23[6] = v5 != 0;
        *&v23[10] = 2112;
        *&v23[12] = activeVideoStreams;
        v15 = " [%s] %s:%d streamPaused %d activeVideoStreams %@";
        v16 = v13;
        v17 = 44;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, v22, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_activeVideoStreams;
        *v22 = 136316674;
        *&v22[4] = v18;
        *&v22[12] = 2080;
        *&v22[14] = "[VCSessionUplinkVideoStreamController pauseStreams]";
        *&v22[22] = 1024;
        *v23 = 440;
        *&v23[4] = 2112;
        *&v23[6] = v11;
        *&v23[14] = 2048;
        *&v23[16] = self;
        LOWORD(v24) = 1024;
        *(&v24 + 2) = v5 != 0;
        HIWORD(v24) = 2112;
        v25 = v20;
        v15 = " [%s] %s:%d %@(%p) streamPaused %d activeVideoStreams %@";
        v16 = v19;
        v17 = 64;
        goto LABEL_22;
      }
    }
  }

  [(VCSessionUplinkVideoStreamController *)self selectVideoStreamForVideoPriority:*v22];
  return v5 != 0;
}

- (void)handleStreamsPendingKeyFrameGeneration
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  streamsPendingKeyFrameGeneration = self->_streamsPendingKeyFrameGeneration;
  v6 = [(NSMutableArray *)streamsPendingKeyFrameGeneration countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(streamsPendingKeyFrameGeneration);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v17 = 0;
        v11 = [(VCSessionUplinkVideoStreamController *)self videoStreamPendingKeyFrameGenerationWithStreamID:v10 shouldRemoveFromPendingArray:&v17];
        if (v17 == 1)
        {
          v12 = v11;
          [v3 addObject:v10];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }
      }

      v7 = [(NSMutableArray *)streamsPendingKeyFrameGeneration countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    [(NSMutableArray *)self->_streamsPendingKeyFrameGeneration removeObjectsInArray:v3];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [v4 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v19 + 1) + 8 * j) generateKeyFrameWithFIRType:0];
        }

        v14 = [v4 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v14);
    }
  }
}

- (id)videoStreamPendingKeyFrameGenerationWithStreamID:(id)a3 shouldRemoveFromPendingArray:(BOOL *)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = [(NSMutableDictionary *)self->_activeVideoStreams allValues];
  v8 = [v7 countByEnumeratingWithState:&v56 objects:v55 count:16];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = *v57;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v57 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v56 + 1) + 8 * v11);
    if ([objc_msgSend(v12 "compoundStreamIDs")])
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v56 objects:v55 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

LABEL_9:
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionUplinkVideoStreamController videoStreamPendingKeyFrameGenerationWithStreamID:shouldRemoveFromPendingArray:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v13 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
        }

        else
        {
          v13 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v39 = 136316418;
            v40 = v20;
            v41 = 2080;
            v42 = "[VCSessionUplinkVideoStreamController videoStreamPendingKeyFrameGenerationWithStreamID:shouldRemoveFromPendingArray:]";
            v43 = 1024;
            v44 = 483;
            v45 = 2112;
            v46 = v13;
            v47 = 2048;
            v48 = self;
            v49 = 2112;
            v50 = a3;
            _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Requesting a streamID %@ that is not in any of the compound streamIDs", &v39, 0x3Au);
          }
        }
      }

      v14 = 0;
LABEL_30:
      v16 = 0;
      goto LABEL_17;
    }
  }

  v14 = [objc_msgSend(v12 "sendingStreamID")];
  v15 = [(NSMutableDictionary *)self->_activeVideoStreams objectForKeyedSubscript:v14];
  if (!v15)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_30;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      activeVideoStreams = self->_activeVideoStreams;
      v39 = 136316418;
      v40 = v22;
      v41 = 2080;
      v42 = "[VCSessionUplinkVideoStreamController videoStreamPendingKeyFrameGenerationWithStreamID:shouldRemoveFromPendingArray:]";
      v43 = 1024;
      v44 = 485;
      v45 = 2112;
      v46 = a3;
      v47 = 2112;
      v48 = v14;
      v49 = 2112;
      v50 = activeVideoStreams;
      v25 = " [%s] %s:%d  Stream is nil for streamID %@, sendingStreamID %@ activeVideoStreams %@";
      v26 = v23;
      v27 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_30;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v31 = self->_activeVideoStreams;
      v39 = 136316930;
      v40 = v29;
      v41 = 2080;
      v42 = "[VCSessionUplinkVideoStreamController videoStreamPendingKeyFrameGenerationWithStreamID:shouldRemoveFromPendingArray:]";
      v43 = 1024;
      v44 = 485;
      v45 = 2112;
      v46 = v19;
      v47 = 2048;
      v48 = self;
      v49 = 2112;
      v50 = a3;
      v51 = 2112;
      v52 = v14;
      v53 = 2112;
      v54 = v31;
      v25 = " [%s] %s:%d %@(%p)  Stream is nil for streamID %@, sendingStreamID %@ activeVideoStreams %@";
      v26 = v30;
      v27 = 78;
    }

    _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, v25, &v39, v27);
    goto LABEL_30;
  }

  v16 = v15;
  v17 = [(NSMutableDictionary *)self->_currentStreamSchedule objectForKeyedSubscript:v14];
  if (!v17 && ([v16 isTemporalScalingEnabled] & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_17;
      }

      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v39 = 136316162;
      v40 = v32;
      v41 = 2080;
      v42 = "[VCSessionUplinkVideoStreamController videoStreamPendingKeyFrameGenerationWithStreamID:shouldRemoveFromPendingArray:]";
      v43 = 1024;
      v44 = 489;
      v45 = 2112;
      v46 = a3;
      v47 = 2112;
      v48 = v14;
      v34 = " [%s] %s:%d Non temporal stream's schedule is nil for streamID %@, sendingStreamID %@";
      v35 = v33;
      v36 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v28 = [(VCSessionUplinkVideoStreamController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v28 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_17;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v39 = 136316674;
      v40 = v37;
      v41 = 2080;
      v42 = "[VCSessionUplinkVideoStreamController videoStreamPendingKeyFrameGenerationWithStreamID:shouldRemoveFromPendingArray:]";
      v43 = 1024;
      v44 = 489;
      v45 = 2112;
      v46 = v28;
      v47 = 2048;
      v48 = self;
      v49 = 2112;
      v50 = a3;
      v51 = 2112;
      v52 = v14;
      v34 = " [%s] %s:%d %@(%p) Non temporal stream's schedule is nil for streamID %@, sendingStreamID %@";
      v35 = v38;
      v36 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, v34, &v39, v36);
LABEL_17:
    *a4 = 1;
    goto LABEL_18;
  }

  if (-[VCSessionUplinkVideoStreamController shouldGenerateIDRWithStreamSchedule:](self, "shouldGenerateIDRWithStreamSchedule:", v17) || [v16 isTemporalScalingEnabled])
  {
    goto LABEL_17;
  }

LABEL_18:

  return v16;
}

- (void)handleStreamsResetIDR
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_19_3())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_8();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_39())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

- (id)getMultiwayConfigForStreamID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_streamInfoMap objectForKeyedSubscript:?];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 streamConfigs];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v6)
  {
    return [objc_msgSend(objc_msgSend(v4 "streamConfigs")];
  }

  v7 = v6;
  v8 = *v15;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v15 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = [*(*(&v14 + 1) + 8 * v9) multiwayConfig];
    v11 = [a3 intValue];
    if (v11 == [v10 idsStreamID])
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v10)
  {
    return [objc_msgSend(objc_msgSend(v4 "streamConfigs")];
  }

  return v10;
}

- (id)newVideoStreamKeyFrameScheduleWithStreamIDs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(VCSessionUplinkVideoStreamController *)self schedulerStreamWithVideoStream:[(VCSessionUplinkVideoStreamController *)self getMultiwayConfigForStreamID:v10]];
        if (v11)
        {
          [v5 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)schedulerStreamWithVideoStream:(id)a3
{
  v4 = 1000;
  if ([a3 keyFrameInterval])
  {
    v4 = 1000 * [a3 keyFrameInterval];
  }

  v5 = [a3 framerate];
  v6 = [a3 maxNetworkBitrate];

  return [VCIDRSchedulerStream schedulerStreamWithKeyFrameInterval:v4 framerate:v5 weightFactor:v6];
}

- (void)restart
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_19_3())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_8();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_39())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

- (BOOL)filterPendingTemporalStreams
{
  v2 = self;
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(NSMutableDictionary *)self->_activeVideoStreams allValues];
  pendingVideoStreams = v2->_pendingVideoStreams;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__VCSessionUplinkVideoStreamController_filterPendingTemporalStreams__block_invoke;
  v6[3] = &unk_1E85F5368;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = &v7;
  [(NSMutableDictionary *)pendingVideoStreams enumerateKeysAndObjectsUsingBlock:v6];
  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

uint64_t __68__VCSessionUplinkVideoStreamController_filterPendingTemporalStreams__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) containsObject:?];
  if (result)
  {
    result = [a3 isTemporalScalingEnabled];
    if (result)
    {
      v7 = [*(*(a1 + 40) + 40) allKeysForObject:a3];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            v13 = [a2 intValue];
            if (v13 != [v12 intValue])
            {
              [*(*(a1 + 40) + 40) setObject:0 forKeyedSubscript:v12];
              [*(*(a1 + 40) + 40) setObject:a3 forKeyedSubscript:a2];
              *(*(*(a1 + 48) + 8) + 24) = 1;
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
        }

        while (v9);
      }

      return [*(a1 + 40) setCachedActiveVideoStreams:*(*(a1 + 40) + 40)];
    }
  }

  return result;
}

- (void)printPendingKeyFrameWarningOnThresholdTimeElapsedWithCurrentFrameTime:(float)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_streamsPendingKeyFrameGeneration count])
  {
    self->_pendingKeyFrameGenerationStartTime = 0.0;
    return;
  }

  pendingKeyFrameGenerationStartTime = self->_pendingKeyFrameGenerationStartTime;
  v6 = a3;
  if (pendingKeyFrameGenerationStartTime == 0.0)
  {
    self->_pendingKeyFrameGenerationStartTime = v6;
    return;
  }

  v7 = v6 - pendingKeyFrameGenerationStartTime;
  if (v6 - pendingKeyFrameGenerationStartTime > 3.0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_15;
      }

      VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_17_3();
      v19 = 2080;
      v20 = "[VCSessionUplinkVideoStreamController printPendingKeyFrameWarningOnThresholdTimeElapsedWithCurrentFrameTime:]";
      OUTLINED_FUNCTION_16_6();
      v21 = 2048;
      v22 = v7;
      v23 = 2112;
      v24 = v10;
      v11 = " [%s] %s:%d _streamsPendingKeyFrameGeneration array has been non zero for %5.2f seconds, streams=%@";
      v12 = v9;
      v13 = 48;
    }

    else
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        v8 = OUTLINED_FUNCTION_6_1();
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_15;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!OUTLINED_FUNCTION_39())
      {
        goto LABEL_15;
      }

      v17 = 136316674;
      v18 = v14;
      v19 = 2080;
      v20 = "[VCSessionUplinkVideoStreamController printPendingKeyFrameWarningOnThresholdTimeElapsedWithCurrentFrameTime:]";
      OUTLINED_FUNCTION_16_6();
      v21 = 2112;
      v22 = *&v8;
      v23 = 2048;
      v24 = self;
      v25 = 2048;
      v26 = v7;
      v27 = 2112;
      v28 = v16;
      v11 = " [%s] %s:%d %@(%p) _streamsPendingKeyFrameGeneration array has been non zero for %5.2f seconds, streams=%@";
      v12 = v15;
      v13 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_15:
    reportingSymptom();
  }
}

- (void)initWithVideoStreams:(uint64_t)a1 streamInfos:reportingAgent:delegate:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v7 = 57;
    v2 = " [%s] %s:%d Failed to initialize VCSessionUplinkVideoStreamController. Invalid RTCP config.";
    v3 = v1;
    v4 = 28;
LABEL_11:
    _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, v2, v6, v4);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      v2 = " [%s] %s:%d %@(%p) Failed to initialize VCSessionUplinkVideoStreamController. Invalid RTCP config.";
      v3 = v5;
      v4 = 48;
      goto LABEL_11;
    }
  }
}

- (void)setStreamIDsCell:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 105;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d streamIDsCell is nil", v1, 0x1Cu);
}

- (void)setStreamIDsWifi:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 130;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d streamIDsWifi is nil", v1, 0x1Cu);
}

- (void)setCurrentFrameTime:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  v5 = 204;
  v6 = 2048;
  v7 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d FrameTime is %f", &v3, 0x26u);
}

- (void)setIsLocalOnCellular:(void *)a1 cappedVideoStreamIDs:.cold.1(void *a1)
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

    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_2();
    v7 = 38;
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_17_0();
      v7 = 58;
      goto LABEL_11;
    }
  }
}

- (void)setIsLocalOnCellular:(void *)a1 cappedVideoStreamIDs:.cold.2(void *a1)
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

    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_2();
    v7 = 38;
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_17_0();
      v7 = 58;
      goto LABEL_11;
    }
  }
}

- (void)setIsLocalOnCellular:(uint64_t)a1 cappedVideoStreamIDs:.cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_19_3())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_8();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_39())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

- (void)setStreamsUseRTCPWithStreamInfos:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 308;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d StreamInfo array is nil, empty, or its streamConfigs array is nil or empty.", v1, 0x1Cu);
}

- (void)anchorStreamIDWithCappedVideoStreamIDs:(void *)a1 .cold.1(void *a1, void *a2)
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

    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v9 = 28;
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_17_0();
      v9 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)resumeStreams
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Non temporal stream's schedule is nil for streamID %@");
}

- (void)videoStreamPendingKeyFrameGenerationWithStreamID:shouldRemoveFromPendingArray:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Requesting a streamID %@ that is not in any of the compound streamIDs");
}

@end