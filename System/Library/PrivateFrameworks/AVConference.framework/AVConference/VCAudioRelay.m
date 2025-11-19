@interface VCAudioRelay
- (BOOL)canSetPropertyWithError:(id *)a3;
- (BOOL)createAudioConvertersWithError:(id *)a3;
- (BOOL)setClientIO:(id)a3 withError:(id *)a4;
- (BOOL)setIOBufferDuration:(double)a3 withError:(id *)a4;
- (BOOL)setNetworkClockID:(unint64_t)a3 withError:(id *)a4;
- (BOOL)setRemoteIO:(id)a3 withError:(id *)a4;
- (BOOL)startClientIO;
- (BOOL)startRelayIO:(tagVCAudioRelayIOInfo *)a3 otherRelayIO:(tagVCAudioRelayIOInfo *)a4;
- (BOOL)startRelayThreadWithError:(id *)a3;
- (BOOL)startRemoteIO;
- (OpaqueAudioConverter)newAudioConverterWithInputFormat:(AudioStreamBasicDescription *)a3 outputFormat:(AudioStreamBasicDescription *)a4 withError:(id *)a5;
- (VCAudioRelay)init;
- (double)ioBufferDurationWithFirstIO:(id)a3 secondIO:(id)a4;
- (float)rmsPowerOfBuffer:(float *)a3 numSamples:(unsigned int)a4;
- (void)dealloc;
- (void)destroyAudioConverters;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3;
- (void)forwardOneBlockSizeFromIO:(id)a3 toIO:(id)a4 withConverter:(OpaqueAudioConverter *)a5 withHostTime:(double)a6;
- (void)forwardSamplesFromIO:(id)a3 toIO:(id)a4 withConverter:(OpaqueAudioConverter *)a5 withHostTime:(double)a6;
- (void)internalStopRelayThread;
- (void)printStreamFormats;
- (void)relayCallback;
- (void)relayProcessSamples;
- (void)releasePTPClock;
- (void)sleepForTime:(timespec *)a3;
- (void)startClientIO;
- (void)startPeriodicHealthPrint;
- (void)startRemoteIO;
- (void)stopClientIO;
- (void)stopRelayIO:(tagVCAudioRelayIOInfo *)a3 otherRelayIO:(tagVCAudioRelayIOInfo *)a4;
- (void)stopRelayThread;
- (void)stopRemoteIO;
- (void)updateRealTimeStats;
- (void)updateRemoteCodecInfo:(const _VCRemoteCodecInfo *)a3;
@end

@implementation VCAudioRelay

- (VCAudioRelay)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCAudioRelay;
  v2 = [(VCAudioRelay *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_IOBufferDuration = NAN;
    pthread_mutex_init(&v2->_relayLock, 0);
    pthread_mutex_init(&v3->_clientIOInfo.lock, 0);
    pthread_mutex_init(&v3->_remoteIOInfo.lock, 0);
    v3->_clientIOInfo.ioFriendlyName = [@"vcaudiorelay.client" copy];
    v3->_clientIOInfo.audioRecordingFileName = [@"client_relay_io" copy];
    v3->_remoteIOInfo.ioFriendlyName = [@"vcaudiorelay.remote" copy];
    v3->_remoteIOInfo.audioRecordingFileName = [@"remote_relay_io" copy];
    v3->_remoteCodecInfo.codecType = 0;
    v3->_remoteCodecInfo.sampleRate = 24000.0;
  }

  return v3;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  [(VCAudioRelay *)self stopClientIO];
  [(VCAudioRelay *)self stopRemoteIO];
  [(VCAudioRelay *)self destroyAudioConverters];

  v3 = self->_clientIOInfo.audioRecordingFileName;
  v4 = self->_remoteIOInfo.ioFriendlyName;
  v5 = self->_remoteIOInfo.audioRecordingFileName;
  [(VCAudioRelay *)self releasePTPClock];
  pthread_mutex_destroy(&self->_relayLock);
  pthread_mutex_destroy(&self->_clientIOInfo.lock);
  pthread_mutex_destroy(&self->_remoteIOInfo.lock);
  v6.receiver = self;
  v6.super_class = VCAudioRelay;
  [(VCAudioRelay *)&v6 dealloc];
}

- (void)releasePTPClock
{
  if (self->_ptpClock)
  {
    TimeSyncClockDispose();
    self->_ptpClock = 0;
  }
}

- (BOOL)setIOBufferDuration:(double)a3 withError:(id *)a4
{
  [(VCAudioRelay *)self lock];
  v7 = [(VCAudioRelay *)self canSetPropertyWithError:a4];
  if (v7)
  {
    self->_IOBufferDuration = a3;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioRelay setIOBufferDuration:withError:];
    }
  }

  [(VCAudioRelay *)self unlock];
  return v7;
}

- (double)ioBufferDurationWithFirstIO:(id)a3 secondIO:(id)a4
{
  if (a3)
  {
    [a3 preferredIODuration];
    v6 = fmin(v5, 0.02);
    if (!a4)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0.02;
    if (!a4)
    {
      return v6;
    }
  }

  [a4 preferredIODuration];
  if (v7 < v6)
  {
    return v7;
  }

  return v6;
}

- (void)updateRemoteCodecInfo:(const _VCRemoteCodecInfo *)a3
{
  if (a3)
  {
    self->_remoteCodecInfo = *a3;
  }

  else
  {
    self->_remoteCodecInfo.codecType = 0;
    self->_remoteCodecInfo.sampleRate = 24000.0;
  }
}

- (BOOL)setRemoteIO:(id)a3 withError:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  [(VCAudioRelay *)self lock];
  pthread_mutex_lock(&self->_remoteIOInfo.lock);
  [(VCAudioRelay *)self destroyAudioConverters];

  relayIO = [a3 copy];
  self->_remoteIOInfo.relayIO = relayIO;
  if (relayIO)
  {
    if (!self->_clientIOInfo.relayIO)
    {
      goto LABEL_5;
    }

    v8 = [(VCAudioRelay *)self createAudioConvertersWithError:v13];
    relayIO = self->_remoteIOInfo.relayIO;
    if (!v8)
    {

      v9 = 0;
      self->_remoteIOInfo.relayIO = 0;
      goto LABEL_7;
    }

    if (relayIO)
    {
LABEL_5:
      [(VCAudioRelayIO *)relayIO setRelay:self];
      relayIO = self->_remoteIOInfo.relayIO;
    }
  }

  [(VCAudioRelay *)self updateRemoteCodecInfo:[(VCAudioRelayIO *)relayIO remoteCodecInfo]];
  v9 = 1;
LABEL_7:
  remoteCodecInfo = self->_remoteCodecInfo;
  pthread_mutex_unlock(&self->_remoteIOInfo.lock);
  [(VCAudioRelay *)self unlock];
  pthread_mutex_lock(&self->_clientIOInfo.lock);
  v10 = self->_clientIOInfo.relayIO;
  pthread_mutex_unlock(&self->_clientIOInfo.lock);
  [(VCAudioRelayIO *)v10 didUpdateBasebandCodec:&remoteCodecInfo];

  if (a4 && !v9)
  {
    *a4 = v13[0];
  }

  return v9;
}

- (BOOL)setClientIO:(id)a3 withError:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  [(VCAudioRelay *)self lock];
  pthread_mutex_lock(&self->_clientIOInfo.lock);
  [(VCAudioRelay *)self destroyAudioConverters];

  v7 = [a3 copy];
  self->_clientIOInfo.relayIO = v7;
  v8 = 1;
  if (self->_remoteIOInfo.relayIO && v7 && ![(VCAudioRelay *)self createAudioConvertersWithError:v11])
  {

    v8 = 0;
    self->_clientIOInfo.relayIO = 0;
  }

  remoteCodecInfo = self->_remoteCodecInfo;
  pthread_mutex_unlock(&self->_clientIOInfo.lock);
  [(VCAudioRelay *)self unlock];
  [a3 didUpdateBasebandCodec:&remoteCodecInfo];
  if (a4 && !v8)
  {
    *a4 = v11[0];
  }

  return v8;
}

- (BOOL)canSetPropertyWithError:(id *)a3
{
  isRelayRunning = self->_isRelayRunning;
  if (isRelayRunning)
  {
    [GKVoiceChatError getNSError:a3 code:32005 detailedCode:0 filePath:0 description:@"Cannot set VCAudioRelay property" reason:@"VCAudioRelay is running"];
  }

  return !isRelayRunning;
}

- (BOOL)startRelayIO:(tagVCAudioRelayIOInfo *)a3 otherRelayIO:(tagVCAudioRelayIOInfo *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (!a3 || !a3->relayIO)
  {
    [VCAudioRelay startRelayIO:? otherRelayIO:?];
LABEL_29:
    v14 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
    [VCAudioRelay startRelayIO:? otherRelayIO:?];
    goto LABEL_29;
  }

  if ([(VCAudioRelayIO *)a3->relayIO isRunning])
  {
    [VCAudioRelay startRelayIO:? otherRelayIO:?];
LABEL_27:
    v14 = v21;
    goto LABEL_22;
  }

  relayIO = a3->relayIO;
  if ([(VCAudioRelayIO *)a4->relayIO isRunning])
  {
    v8 = a4->relayIO;
  }

  else
  {
    v8 = 0;
  }

  [(VCAudioRelay *)self ioBufferDurationWithFirstIO:relayIO secondIO:v8];
  v10 = v9;
  if ([(VCAudioRelayIO *)a4->relayIO isRunning]&& (p_IOBufferDuration = &self->_IOBufferDuration, vabdd_f64(self->_IOBufferDuration, v10) > 2.22044605e-16))
  {
    pthread_mutex_lock(&a4->lock);
    [(VCAudioRelayIO *)a4->relayIO destroyPacketThread];
    *p_IOBufferDuration = v10;
    v12 = [(VCAudioRelayIO *)a4->relayIO createPacketThreadWithIOBufferDuration:a4->ioFriendlyName name:&v20 error:v10];
    pthread_mutex_unlock(&a4->lock);
    if (!v12)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioRelay startRelayIO:otherRelayIO:];
        }
      }

      [(VCAudioRelay *)self internalStopRelayThread];
      [(VCAudioRelayIO *)a4->relayIO closeRecordings];
    }
  }

  else
  {
    self->_IOBufferDuration = v10;
    p_IOBufferDuration = &self->_IOBufferDuration;
  }

  pthread_mutex_lock(&a3->lock);
  v13 = [(VCAudioRelayIO *)a3->relayIO createPacketThreadWithIOBufferDuration:a3->ioFriendlyName name:&v20 error:*p_IOBufferDuration];
  pthread_mutex_unlock(&a3->lock);
  if (!v13)
  {
    [VCAudioRelay startRelayIO:&v21 otherRelayIO:?];
    goto LABEL_27;
  }

  if ([(VCAudioRelayIO *)self->_clientIOInfo.relayIO isRunning]&& [(VCAudioRelayIO *)self->_remoteIOInfo.relayIO isRunning])
  {
    goto LABEL_21;
  }

  if (![(VCAudioRelay *)self startRelayThreadWithError:&v20])
  {
    [VCAudioRelay startRelayIO:&a3->relayIO otherRelayIO:?];
    goto LABEL_29;
  }

  [(VCAudioRelay *)self startPeriodicHealthPrint];
LABEL_21:
  [(VCAudioRelayIO *)a3->relayIO createRecordingsWithName:a3->audioRecordingFileName];
  [(VCAudioRelayIO *)a3->relayIO printStreamFormats];
  v14 = 1;
LABEL_22:
  v15 = a3->relayIO;
  global_queue = dispatch_get_global_queue(2, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__VCAudioRelay_startRelayIO_otherRelayIO___block_invoke;
  v18[3] = &unk_1E85F37C8;
  v19 = v14;
  v18[4] = v15;
  v18[5] = v20;
  dispatch_async(global_queue, v18);
  return v14;
}

uint64_t __42__VCAudioRelay_startRelayIO_otherRelayIO___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) startCompletionHandler];
  if (result)
  {
    v3 = *([*(a1 + 32) startCompletionHandler] + 16);

    return v3();
  }

  return result;
}

- (void)internalStopRelayThread
{
  v13 = *MEMORY[0x1E69E9840];
  periodicHealthPrintDispatchSource = self->_periodicHealthPrintDispatchSource;
  if (periodicHealthPrintDispatchSource)
  {
    dispatch_source_cancel(periodicHealthPrintDispatchSource);
    v4 = self->_periodicHealthPrintDispatchSource;
    if (v4)
    {
      dispatch_release(v4);
      self->_periodicHealthPrintDispatchSource = 0;
    }
  }

  [(VCAudioRelay *)self stopRelayThread];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCAudioRelay internalStopRelayThread]";
      v11 = 1024;
      v12 = 385;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioRelay stopped", &v7, 0x1Cu);
    }
  }
}

- (void)stopRelayIO:(tagVCAudioRelayIOInfo *)a3 otherRelayIO:(tagVCAudioRelayIOInfo *)a4
{
  if (a3 && a3->relayIO)
  {
    if (a4)
    {
      if ([(VCAudioRelayIO *)a3->relayIO isRunning])
      {
        if (![(VCAudioRelayIO *)self->_clientIOInfo.relayIO isRunning]|| ![(VCAudioRelayIO *)self->_remoteIOInfo.relayIO isRunning])
        {
          [(VCAudioRelay *)self internalStopRelayThread];
        }

        [(VCAudioRelayIO *)a3->relayIO closeRecordings];
        pthread_mutex_lock(&a3->lock);
        [(VCAudioRelayIO *)a3->relayIO destroyPacketThread];
        pthread_mutex_unlock(&a3->lock);
        if ([(VCAudioRelayIO *)a4->relayIO isRunning])
        {
          [(VCAudioRelayIO *)a4->relayIO preferredIODuration];
          v8 = v7;
          if (vabdd_f64(self->_IOBufferDuration, v7) > 2.22044605e-16)
          {
            pthread_mutex_lock(&a4->lock);
            [(VCAudioRelayIO *)a4->relayIO destroyPacketThread];
            self->_IOBufferDuration = v8;
            v9 = [(VCAudioRelayIO *)a4->relayIO createPacketThreadWithIOBufferDuration:a4->ioFriendlyName name:0 error:v8];
            pthread_mutex_unlock(&a4->lock);
            if (!v9)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [VCAudioRelay stopRelayIO:otherRelayIO:];
                }
              }

              [(VCAudioRelay *)self internalStopRelayThread];
              [(VCAudioRelayIO *)a4->relayIO closeRecordings];
            }
          }
        }
      }

      else
      {
        [VCAudioRelay stopRelayIO:otherRelayIO:];
      }
    }

    else
    {
      [VCAudioRelay stopRelayIO:otherRelayIO:];
    }
  }

  else
  {
    [VCAudioRelay stopRelayIO:otherRelayIO:];
  }
}

- (BOOL)startClientIO
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAudioRelay startClientIO]";
      v11 = 1024;
      v12 = 425;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Starting client relay IO", &v7, 0x1Cu);
    }
  }

  [(VCAudioRelay *)self lock];
  v5 = [(VCAudioRelay *)self startRelayIO:&self->_clientIOInfo otherRelayIO:&self->_remoteIOInfo];
  if (!v5 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioRelay startClientIO];
    }
  }

  [(VCAudioRelay *)self unlock];
  return v5;
}

- (BOOL)startRemoteIO
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAudioRelay startRemoteIO]";
      v11 = 1024;
      v12 = 437;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Starting remote relay IO", &v7, 0x1Cu);
    }
  }

  [(VCAudioRelay *)self lock];
  v5 = [(VCAudioRelay *)self startRelayIO:&self->_remoteIOInfo otherRelayIO:&self->_clientIOInfo];
  if (!v5 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioRelay startRemoteIO];
    }
  }

  [(VCAudioRelay *)self unlock];
  return v5;
}

- (void)stopClientIO
{
  v15 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule > 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAudioRelay stopClientIO]";
      v13 = 1024;
      v14 = 448;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stopping client relay IO", &v9, 0x1Cu);
    }
  }

  [(VCAudioRelay *)self lock];
  [(VCAudioRelay *)self stopRelayIO:&self->_clientIOInfo otherRelayIO:&self->_remoteIOInfo];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCAudioRelay stopClientIO]";
      v13 = 1024;
      v14 = 451;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioRelay client stopped", &v9, 0x1Cu);
    }
  }

  [(VCAudioRelay *)self unlock];
}

- (void)stopRemoteIO
{
  v15 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule > 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAudioRelay stopRemoteIO]";
      v13 = 1024;
      v14 = 456;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stopping remote relay IO", &v9, 0x1Cu);
    }
  }

  [(VCAudioRelay *)self lock];
  [(VCAudioRelay *)self stopRelayIO:&self->_remoteIOInfo otherRelayIO:&self->_clientIOInfo];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCAudioRelay stopRemoteIO]";
      v13 = 1024;
      v14 = 459;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioRelay remote stopped", &v9, 0x1Cu);
    }
  }

  [(VCAudioRelay *)self unlock];
}

- (BOOL)setNetworkClockID:(unint64_t)a3 withError:(id *)a4
{
  [(VCAudioRelay *)self lock];
  if (![(VCAudioRelay *)self canSetPropertyWithError:a4])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioRelay setNetworkClockID:withError:];
      }
    }

    goto LABEL_12;
  }

  [(VCAudioRelay *)self releasePTPClock];
  if (*MEMORY[0x1E69DA108] != a3)
  {
    v7 = TimeSyncClockCreateWithClockIdentifier();
    self->_ptpClock = v7;
    if (!v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioRelay setNetworkClockID:withError:];
        }
      }

      [GKVoiceChatError getNSError:a4 code:32016 detailedCode:0 filePath:0 description:@"Failed to create network clock" reason:@"Create network clock returned NULL value"];
LABEL_12:
      v8 = 0;
      goto LABEL_13;
    }
  }

  v8 = 1;
LABEL_13:
  [(VCAudioRelay *)self unlock];
  return v8;
}

- (BOOL)startRelayThreadWithError:(id *)a3
{
  keys[2] = *MEMORY[0x1E69E9840];
  v5 = pthread_cond_init(&self->_wakeUpCondition, 0);
  if (v5)
  {
    [GKVoiceChatError getNSError:a3 code:32005 detailedCode:v5 filePath:0 description:@"createRelayThreadWithError failed" reason:@"pthread_cond_init failed"];
    return 0;
  }

  v6 = pthread_mutex_init(&self->_wakeUpMutex, 0);
  if (v6)
  {
    [GKVoiceChatError getNSError:a3 code:32005 detailedCode:v6 filePath:0 description:@"createRelayThreadWithError failed" reason:@"pthread_mutex_init failed"];
    pthread_cond_destroy(&self->_wakeUpCondition);
    return 0;
  }

  self->_isRelayRunning = 1;
  v9 = *MEMORY[0x1E69631F8];
  keys[0] = *MEMORY[0x1E69631F0];
  keys[1] = v9;
  v10 = *MEMORY[0x1E695E4C0];
  values[0] = @"com.apple.avconference.audiorelay";
  values[1] = v10;
  v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = FigThreadCreate();
  if (v11)
  {
    CFRelease(v11);
  }

  v7 = v12 == 0;
  if (v12)
  {
    [GKVoiceChatError getNSError:a3 code:32005 detailedCode:v12 filePath:0 description:@"createRelayThreadWithError failed" reason:@"pthread_create failed"];
    pthread_cond_destroy(&self->_wakeUpCondition);
    pthread_mutex_destroy(&self->_wakeUpMutex);
    self->_isRelayRunning = 0;
  }

  return v7;
}

- (void)stopRelayThread
{
  if (self->_isRelayRunning)
  {
    self->_isRelayRunning = 0;
    pthread_mutex_lock(&self->_wakeUpMutex);
    pthread_cond_signal(&self->_wakeUpCondition);
    pthread_mutex_unlock(&self->_wakeUpMutex);
    if (self->_relayThread)
    {
      FigThreadJoin();
      self->_relayThread = 0;
    }

    pthread_mutex_destroy(&self->_wakeUpMutex);

    pthread_cond_destroy(&self->_wakeUpCondition);
  }
}

- (BOOL)createAudioConvertersWithError:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(VCAudioRelayIO *)self->_remoteIOInfo.relayIO clientFormat];
  v6 = *&v5->format.mBitsPerChannel;
  v7 = *&v5->format.mBytesPerPacket;
  v23 = *&v5->format.mSampleRate;
  v24 = v7;
  v25 = v6;
  v8 = [(VCAudioRelayIO *)self->_clientIOInfo.relayIO clientFormat];
  v9 = *&v8->format.mBitsPerChannel;
  v10 = *&v8->format.mBytesPerPacket;
  v20 = *&v8->format.mSampleRate;
  v21 = v10;
  v22 = v9;
  v19 = 0;
  self->_remoteToClientConverter = [(VCAudioRelay *)self newAudioConverterWithInputFormat:&v23 outputFormat:&v20 withError:&v19];
  v11 = v19;
  if (v19)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_7;
  }

  v12 = [(VCAudioRelayIO *)self->_clientIOInfo.relayIO clientFormat];
  v13 = *&v12->format.mBitsPerChannel;
  v14 = *&v12->format.mBytesPerPacket;
  v23 = *&v12->format.mSampleRate;
  v24 = v14;
  v25 = v13;
  v15 = [(VCAudioRelayIO *)self->_remoteIOInfo.relayIO clientFormat];
  v16 = *&v15->format.mBitsPerChannel;
  v17 = *&v15->format.mBytesPerPacket;
  v20 = *&v15->format.mSampleRate;
  v21 = v17;
  v22 = v16;
  self->_clientToRemoteConverter = [(VCAudioRelay *)self newAudioConverterWithInputFormat:&v23 outputFormat:&v20 withError:&v19];
  if (v19)
  {
    [(VCAudioRelay *)self destroyAudioConverters];
    if (!a3)
    {
      return 0;
    }

    v11 = v19;
LABEL_7:
    result = 0;
    *a3 = v11;
    return result;
  }

  return 1;
}

- (OpaqueAudioConverter)newAudioConverterWithInputFormat:(AudioStreamBasicDescription *)a3 outputFormat:(AudioStreamBasicDescription *)a4 withError:(id *)a5
{
  outAudioConverter[1] = *MEMORY[0x1E69E9840];
  outAudioConverter[0] = 0;
  if (!memcmp(a4, a3, 0x28uLL))
  {
    return 0;
  }

  v8 = AudioConverterNew(a3, a4, outAudioConverter);
  if (v8)
  {
    v9 = v8;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioRelay newAudioConverterWithInputFormat:outputFormat:withError:];
      }
    }

    [GKVoiceChatError getNSError:a5 code:32005 detailedCode:v9 filePath:0 description:@"newAudioConverterFromFormat failed" reason:@"AudioConverter new failed"];
    return 0;
  }

  inPropertyData = 2;
  if (AudioConverterSetProperty(outAudioConverter[0], 0x70726D6Du, 4u, &inPropertyData))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioRelay newAudioConverterWithInputFormat:outputFormat:withError:];
      }
    }
  }

  return outAudioConverter[0];
}

- (void)destroyAudioConverters
{
  clientToRemoteConverter = self->_clientToRemoteConverter;
  if (clientToRemoteConverter)
  {
    AudioConverterDispose(clientToRemoteConverter);
    self->_clientToRemoteConverter = 0;
  }

  remoteToClientConverter = self->_remoteToClientConverter;
  if (remoteToClientConverter)
  {
    AudioConverterDispose(remoteToClientConverter);
    self->_remoteToClientConverter = 0;
  }
}

- (void)printStreamFormats
{
  v15 = *MEMORY[0x1E69E9840];
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
      v12 = "[VCAudioRelay printStreamFormats]";
      v13 = 1024;
      v14 = 649;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote relay IO:", &v9, 0x1Cu);
    }
  }

  [(VCAudioRelayIO *)self->_remoteIOInfo.relayIO printStreamFormats];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCAudioRelay printStreamFormats]";
      v13 = 1024;
      v14 = 651;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Client relay IO:", &v9, 0x1Cu);
    }
  }

  [(VCAudioRelayIO *)self->_clientIOInfo.relayIO printStreamFormats];
}

- (float)rmsPowerOfBuffer:(float *)a3 numSamples:(unsigned int)a4
{
  v6 = *MEMORY[0x1E69E9840];
  __C = NAN;
  vDSP_rmsqv(a3, 1, &__C, a4);
  return fmax(log10f(__C) * 20.0, -120.0);
}

- (void)forwardSamplesFromIO:(id)a3 toIO:(id)a4 withConverter:(OpaqueAudioConverter *)a5 withHostTime:(double)a6
{
  v13[3] = *MEMORY[0x1E69E9840];
  v11 = [a3 speakerBuffer];
  v12 = [a3 isRealtimeCatchUpEnabled];
  if (v11)
  {
LABEL_2:
    VCAudioBufferList_SetSamplesAreLate(v11, 0);
  }

  while (1)
  {
    [(VCAudioRelay *)self forwardOneBlockSizeFromIO:a3 toIO:a4 withConverter:a5 withHostTime:a6];
    if (!v12 || (VCAudioBufferList_GetSamplesAreLate(v11) & 1) == 0)
    {
      break;
    }

    VCAudioBufferList_GetTimestamp(v11);
    memset(v13, 170, 24);
    VCAudioBufferList_GetNetworkTimestamp(v11, v13);
    kdebug_trace();
    if (v11)
    {
      goto LABEL_2;
    }
  }
}

- (void)forwardOneBlockSizeFromIO:(id)a3 toIO:(id)a4 withConverter:(OpaqueAudioConverter *)a5 withHostTime:(double)a6
{
  if (a3)
  {
    if ([a3 isRunning])
    {
      v10 = *([a3 relayFormat] + 40);
      VCAudioBufferList_SetSampleCount([a3 speakerBuffer], v10);
      VCAudioBufferList_SetTime([a3 speakerBuffer], objc_msgSend(a3, "speakerTimestamp"), a6);
      [a3 pullAudioSamples:{objc_msgSend(a3, "speakerBuffer")}];
      [a3 setSpeakerTimestamp:{objc_msgSend(a3, "speakerTimestamp") + v10}];
      if (*([a3 relayFormat] + 24) == 4)
      {
        *&v11 = VCAudioBufferList_GetAveragePower([a3 speakerBuffer]);
        [a3 setSpeakerPowerRMS:v11];
      }
    }
  }

  if (a4 && [a4 isRunning])
  {
    v12 = *([a4 relayFormat] + 40);
    v13 = [a4 micBuffer];
    if (a3 && [a3 isRunning])
    {
      v14 = [a3 speakerBuffer];
      if (a5)
      {
        VCAudioBufferList_Convert(v14, [a4 micBuffer], a5);
      }

      else
      {
        v13 = v14;
      }
    }

    else
    {
      VCAudioBufferList_ZeroMemory(v13);
      VCAudioBufferList_SetPriority(v13, 1);
    }

    VCAudioBufferList_SetTime(v13, [a4 micTimestamp], a6);
    VCAudioBufferList_SetSampleCount(v13, v12);
    *&v15 = VCAudioBufferList_GetAveragePower(v13);
    [a4 setMicPowerRMS:v15];
    [a4 pushAudioSamples:v13];
    v16 = [a4 micTimestamp] + v12;

    [a4 setMicTimestamp:v16];
  }
}

- (void)sleepForTime:(timespec *)a3
{
  pthread_mutex_lock(&self->_wakeUpMutex);
  pthread_cond_timedwait_relative_np(&self->_wakeUpCondition, &self->_wakeUpMutex, a3);

  pthread_mutex_unlock(&self->_wakeUpMutex);
}

- (void)updateRealTimeStats
{
  ++self->_blocksRelayedCount;
  [(VCAudioRelayIO *)[(VCAudioRelay *)self clientIO] speakerPowerRMS];
  v4 = self->_clientUplinkPowerMovingAverage * 0.8 + v3 * 0.2;
  self->_clientUplinkPowerMovingAverage = v4;
  [(VCAudioRelayIO *)[(VCAudioRelay *)self clientIO] micPowerRMS];
  v6 = self->_clientDownlinkPowerMovingAverage * 0.8 + v5 * 0.2;
  self->_clientDownlinkPowerMovingAverage = v6;
}

- (void)startPeriodicHealthPrint
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Periodic health print already initialized", v2, v3, v4, v5, v6);
}

void __40__VCAudioRelay_startPeriodicHealthPrint__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) strong];
  if (v1)
  {
    v2 = v1;
    if (*(v1 + 440))
    {
      mach_absolute_time();
      ClockTimeAndGrandmasterIdentityLocalPortForHostTime = TimeSyncClockGetClockTimeAndGrandmasterIdentityLocalPortForHostTime();
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = [v2 blocksRelayedCount];
          [v2 clientUplinkPowerMovingAverage];
          v8 = v7;
          [v2 clientDownlinkPowerMovingAverage];
          *buf = 136317186;
          v20 = v4;
          v21 = 2080;
          v22 = "[VCAudioRelay startPeriodicHealthPrint]_block_invoke";
          v23 = 1024;
          v24 = 806;
          v25 = 1024;
          v26 = v6;
          v27 = 2048;
          v28 = v8;
          v29 = 2048;
          v30 = v9;
          v31 = 2048;
          v32 = ClockTimeAndGrandmasterIdentityLocalPortForHostTime;
          v33 = 2048;
          v34 = 0xAAAAAAAAAAAAAAAALL;
          v35 = 1024;
          v36 = 43690;
          v10 = " [%s] %s:%d @=@ Health: VCAudioRelay blocksRelayedCount=%d, clientUplinkPowerMovingAverage=%f, clientDownlinkPowerMovingAverage=%f, currentPTPTime=%llu, ptpGMIdentity=%llu, ptpLocalPort=%u";
          v11 = v5;
          v12 = 80;
LABEL_9:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v2 blocksRelayedCount];
        [v2 clientUplinkPowerMovingAverage];
        v17 = v16;
        [v2 clientDownlinkPowerMovingAverage];
        *buf = 136316418;
        v20 = v13;
        v21 = 2080;
        v22 = "[VCAudioRelay startPeriodicHealthPrint]_block_invoke";
        v23 = 1024;
        v24 = 812;
        v25 = 1024;
        v26 = v15;
        v27 = 2048;
        v28 = v17;
        v29 = 2048;
        v30 = v18;
        v10 = " [%s] %s:%d @=@ Health: VCAudioRelay blocksRelayedCount=%d, clientUplinkPowerMovingAverage=%f, clientDownlinkPowerMovingAverage=%f";
        v11 = v14;
        v12 = 54;
        goto LABEL_9;
      }
    }
  }
}

- (void)relayProcessSamples
{
  v3 = pthread_mutex_trylock(&self->_clientIOInfo.lock);
  v4 = pthread_mutex_trylock(&self->_remoteIOInfo.lock);
  if (v4)
  {
    v5 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    relayIO = self->_clientIOInfo.relayIO;
    v8 = micro();
    [(VCAudioRelay *)self forwardSamplesFromIO:v5 toIO:relayIO withConverter:self->_remoteToClientConverter withHostTime:?];
    [(VCAudioRelay *)self forwardSamplesFromIO:relayIO toIO:v5 withConverter:self->_clientToRemoteConverter withHostTime:v8];
    [(VCAudioRelay *)self updateRealTimeStats];
    pthread_mutex_unlock(&self->_clientIOInfo.lock);
    if (v4)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = self->_remoteIOInfo.relayIO;
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = micro();
  [(VCAudioRelay *)self forwardSamplesFromIO:v5 toIO:0 withConverter:self->_remoteToClientConverter withHostTime:?];
  [(VCAudioRelay *)self forwardSamplesFromIO:0 toIO:v5 withConverter:self->_clientToRemoteConverter withHostTime:v6];
  [(VCAudioRelay *)self updateRealTimeStats];
  if (v4)
  {
    return;
  }

LABEL_7:

  pthread_mutex_unlock(&self->_remoteIOInfo.lock);
}

- (void)relayCallback
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d setRealTimeConstraints() failed with error %d", v3, v4, v5, v6);
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  [(VCAudioRelay *)self lock];
  [(VCAudioRelay *)self updateRemoteCodecInfo:a3];
  remoteCodecInfo = self->_remoteCodecInfo;
  pthread_mutex_lock(&self->_clientIOInfo.lock);
  v5 = self->_clientIOInfo.relayIO;
  pthread_mutex_unlock(&self->_clientIOInfo.lock);
  [(VCAudioRelay *)self unlock];
  [(VCAudioRelayIO *)v5 didUpdateBasebandCodec:&remoteCodecInfo];
}

- (void)setIOBufferDuration:withError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Trying to set the IO duration while relay is running", v2, v3, v4, v5, v6);
}

- (void)startRelayIO:otherRelayIO:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to restart the other IO", v2, v3, v4, v5, v6);
}

- (void)startRelayIO:(uint64_t)a1 otherRelayIO:(_BYTE *)a2 .cold.2(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = 0;
}

- (uint64_t)startRelayIO:(uint64_t)a1 otherRelayIO:(id *)a2 .cold.3(uint64_t a1, id *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  return [*a2 destroyPacketThread];
}

- (void)startRelayIO:(_BYTE *)a1 otherRelayIO:.cold.4(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 1;
}

- (uint64_t)startRelayIO:(uint64_t *)a1 otherRelayIO:.cold.5(uint64_t *a1)
{
  result = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32016 detailCode:0 description:@"Invalid IO"];
  *a1 = result;
  return result;
}

- (uint64_t)startRelayIO:(uint64_t *)a1 otherRelayIO:.cold.6(uint64_t *a1)
{
  result = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32016 detailCode:0 description:@"Can't start: relay IO is nil"];
  *a1 = result;
  return result;
}

- (void)stopRelayIO:otherRelayIO:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v2 = 392;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay IO is not started", v1, 0x1Cu);
    }
  }
}

- (void)stopRelayIO:otherRelayIO:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to restart the other IO", v2, v3, v4, v5, v6);
}

- (void)stopRelayIO:otherRelayIO:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Can't stop: invalid IO", v2, v3, v4, v5, v6);
    }
  }
}

- (void)stopRelayIO:otherRelayIO:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Can't stop: relay IO is nil", v2, v3, v4, v5, v6);
    }
  }
}

- (void)startClientIO
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to start client IO", v2, v3, v4, v5, v6);
}

- (void)startRemoteIO
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to start remote IO", v2, v3, v4, v5, v6);
}

- (void)setNetworkClockID:withError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Trying to set network clock while relay is running", v2, v3, v4, v5, v6);
}

- (void)setNetworkClockID:withError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create PTP clock", v2, v3, v4, v5, v6);
}

- (void)newAudioConverterWithInputFormat:outputFormat:withError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d newAudioConverterFromFormat failed with error %d", v3, v4, v5, v6);
}

- (void)newAudioConverterWithInputFormat:outputFormat:withError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d AudioConverterSetProperty(kAudioConverterPrimeMethod) failed with error %d", v3, v4, v5, v6);
}

@end