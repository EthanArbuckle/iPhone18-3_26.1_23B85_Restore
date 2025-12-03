@interface VCMediaStreamSynchronizer
- (VCMediaStreamSynchronizer)initWithSourceSampleRate:(unsigned int)rate destinationSampleRate:(unsigned int)sampleRate;
- (void)dealloc;
@end

@implementation VCMediaStreamSynchronizer

- (VCMediaStreamSynchronizer)initWithSourceSampleRate:(unsigned int)rate destinationSampleRate:(unsigned int)sampleRate
{
  v20 = *MEMORY[0x1E69E9840];
  if (rate && sampleRate)
  {
    v17.receiver = self;
    v17.super_class = VCMediaStreamSynchronizer;
    v7 = [(VCMediaStreamSynchronizer *)&v17 init];
    v8 = v7;
    if (v7)
    {
      v7->_source.sampleRate = rate;
      v7->_destination.sampleRate = sampleRate;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          sampleRate = v8->_source.sampleRate;
          v12 = v8->_destination.sampleRate;
          *buf = 136316418;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = "[VCMediaStreamSynchronizer initWithSourceSampleRate:destinationSampleRate:]";
          *&buf[22] = 1024;
          *&buf[24] = 47;
          *&buf[28] = 2048;
          *&buf[30] = v8;
          *&buf[38] = 2048;
          *&buf[40] = sampleRate;
          *&buf[48] = 2048;
          *&buf[50] = v12;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: sourceSampleRate:%ld destinationSampleRate:%ld", buf, 0x3Au);
        }
      }

      v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v8->_mediaStreamSynchronizerQueue = dispatch_queue_create("com.apple.AVConference.VCMediaStreamSynchronizer.mediaStreamSynchronizerQueue", v13);
      v19 = 0;
      memset(buf, 0, sizeof(buf));
      VCVideoPlayer_Create(&v8->_videoPlayerHandle, buf);
      v8->_sourceState = 1;
      *&v8->_sourcePlayoutHandlerLock._os_unfair_lock_opaque = 0;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = v14;
        *&buf[12] = 2080;
        *&buf[14] = "[VCMediaStreamSynchronizer initWithSourceSampleRate:destinationSampleRate:]";
        *&buf[22] = 1024;
        *&buf[24] = 41;
        *&buf[28] = 2048;
        *&buf[30] = self;
        *&buf[38] = 1024;
        *&buf[40] = rate;
        *&buf[44] = 1024;
        *&buf[46] = sampleRate;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p] failed! sourceSampleRate:%u destinationSampleRate:%u", buf, 0x32u);
      }
    }

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  dispatch_release(self->_mediaStreamSynchronizerQueue);
  _Block_release(self->_destinationHandler);
  self->_destinationHandler = 0;
  _Block_release(self->_sourcePlayoutTimeUpdatedHandler);
  VCVideoPlayer_Destroy(&self->_videoPlayerHandle);
  v3.receiver = self;
  v3.super_class = VCMediaStreamSynchronizer;
  [(VCMediaStreamSynchronizer *)&v3 dealloc];
}

double __VCMediaStreamSynchronizer_updateDestinationNTPTime_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 72) = result;
  *(*(a1 + 32) + 88) = *(a1 + 48);
  return result;
}

uint64_t __VCMediaStreamSynchronizer_resetDestinationState_block_invoke(uint64_t result)
{
  *(*(result + 32) + 72) = 0;
  *(*(result + 32) + 88) = 0;
  return result;
}

uint64_t __VCMediaStreamSynchronizer_scheduleTimeForDestinationRTPTimestamp_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v19 = 0;
  result = _VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal(*(a1 + 32), *(a1 + 48), &v19);
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    v5 = *(v3 + 96);
    v6 = v19 >= v5 || v19 - v5 >= 0x7FFFFFFF;
    v7 = !v6;
    v6 = v5 >= v19;
    v8 = v5 - v19;
    if (v6 || v8 >= 0x7FFFFFFF)
    {
      v10 = v7;
    }

    else
    {
      v10 = -1;
    }

    v11 = v4 + v10;
    *(*(*(a1 + 40) + 8) + 24) = (v19 + (v4 + v10) * 4294967300.0) / *(v3 + 56);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v16 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136316418;
          v21 = v12;
          v22 = 2080;
          v23 = "VCMediaStreamSynchronizer_scheduleTimeForDestinationRTPTimestamp_block_invoke";
          v24 = 1024;
          v25 = 187;
          v26 = 2048;
          v27 = v15;
          v28 = 1024;
          v29 = v11;
          v30 = 2048;
          v31 = v16;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: wrapCount=%d sourceTime=%.9f", buf, 0x36u);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        v18 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 136316418;
        v21 = v12;
        v22 = 2080;
        v23 = "VCMediaStreamSynchronizer_scheduleTimeForDestinationRTPTimestamp_block_invoke";
        v24 = 1024;
        v25 = 187;
        v26 = 2048;
        v27 = v17;
        v28 = 1024;
        v29 = v11;
        v30 = 2048;
        v31 = v18;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: wrapCount=%d sourceTime=%.9f", buf, 0x36u);
      }
    }

    return kdebug_trace();
  }

  return result;
}

BOOL __VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestamp_block_invoke(uint64_t a1)
{
  result = _VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal(*(a1 + 32), *(a1 + 56), (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1[25] != 1 && v1[16] && v1[24])
  {
    v4 = v1[22];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v4)
    {
      v6 = MEMORY[0x1E6986640];
      v7 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule >= 8)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *v7;
        v10 = *v7;
        if (*v6 == 1)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(a1 + 32);
            v12 = *(v11 + 96);
            v13 = *(v11 + 64);
            v14 = *(v11 + 48);
            v15 = *(v11 + 56);
            v16 = **(a1 + 48);
            v17 = *(v11 + 88);
            v18 = *(v11 + 72);
            v19 = *(v11 + 80);
            v47 = 136317954;
            v48 = v8;
            v49 = 2080;
            v50 = "VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke";
            v51 = 1024;
            v52 = 225;
            v53 = 2048;
            v54 = v11;
            v55 = 1024;
            v56 = v12;
            v57 = 1024;
            v58 = v13;
            v59 = 2048;
            v60 = v14;
            v61 = 1024;
            v62 = v15;
            v63 = 1024;
            v64 = v16;
            v65 = 1024;
            v66 = v17;
            v67 = 2048;
            v68 = v18;
            v69 = 1024;
            v70 = v19;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: lastSrcRTP=%u srcSRRTP=%u srcSRNPT=%.9f srcRate=%d dstRTP=%u dstSrRTP=%u dstSRNTP=%.9f dstRate=%d", &v47, 0x5Eu);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v36 = *(a1 + 32);
          v37 = *(v36 + 96);
          v38 = *(v36 + 64);
          v39 = *(v36 + 48);
          v40 = *(v36 + 56);
          v41 = **(a1 + 48);
          v42 = *(v36 + 88);
          v43 = *(v36 + 72);
          v44 = *(v36 + 80);
          v47 = 136317954;
          v48 = v8;
          v49 = 2080;
          v50 = "VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke";
          v51 = 1024;
          v52 = 225;
          v53 = 2048;
          v54 = v36;
          v55 = 1024;
          v56 = v37;
          v57 = 1024;
          v58 = v38;
          v59 = 2048;
          v60 = v39;
          v61 = 1024;
          v62 = v40;
          v63 = 1024;
          v64 = v41;
          v65 = 1024;
          v66 = v42;
          v67 = 2048;
          v68 = v43;
          v69 = 1024;
          v70 = v44;
          _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: lastSrcRTP=%u srcSRRTP=%u srcSRNPT=%.9f srcRate=%d dstRTP=%u dstSrRTP=%u dstSRNTP=%.9f dstRate=%d", &v47, 0x5Eu);
        }
      }

      v28 = _VCMediaStreamSynchronizer_differenceBetweenRtpTimestamp(*(a1 + 56), *(*(a1 + 32) + 64));
      v29 = *(a1 + 32);
      v30 = *(v29 + 88) + ((*(v29 + 48) + v28 / *(v29 + 56) - *(v29 + 72)) * *(v29 + 80));
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *v7;
        v33 = *v7;
        if (*v6 == 1)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(a1 + 32);
            v35 = *(a1 + 56);
            v47 = 136316418;
            v48 = v31;
            v49 = 2080;
            v50 = "VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke";
            v51 = 1024;
            v52 = 230;
            v53 = 2048;
            v54 = v34;
            v55 = 1024;
            v56 = v35;
            v57 = 1024;
            v58 = v30;
            _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: SToD: %u->%u", &v47, 0x32u);
          }
        }

        else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a1 + 32);
          v46 = *(a1 + 56);
          v47 = 136316418;
          v48 = v31;
          v49 = 2080;
          v50 = "VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke";
          v51 = 1024;
          v52 = 230;
          v53 = 2048;
          v54 = v45;
          v55 = 1024;
          v56 = v46;
          v57 = 1024;
          v58 = v30;
          _os_log_debug_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: SToD: %u->%u", &v47, 0x32u);
        }
      }

      **(a1 + 48) = v30;
      *(*(*(a1 + 40) + 8) + 24) = 1;
      return;
    }

    if (ErrorLogLevelForModule < 8)
    {
      return;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    v26 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v27 = *v2;
      v47 = 136315906;
      v48 = v25;
      v49 = 2080;
      v50 = "VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke";
      v51 = 1024;
      v52 = 221;
      v53 = 2048;
      v54 = v27;
      v24 = "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: destination info not ready";
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v24, &v47, 0x26u);
      return;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke_cold_1();
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    v22 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = *v2;
      v47 = 136315906;
      v48 = v20;
      v49 = 2080;
      v50 = "VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke";
      v51 = 1024;
      v52 = 216;
      v53 = 2048;
      v54 = v23;
      v24 = "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: source info not ready";
      goto LABEL_13;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke_cold_2();
    }
  }
}

void __VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: destination info not ready", v2, v3, v4, v5);
}

void __VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: source info not ready", v2, v3, v4, v5);
}

@end