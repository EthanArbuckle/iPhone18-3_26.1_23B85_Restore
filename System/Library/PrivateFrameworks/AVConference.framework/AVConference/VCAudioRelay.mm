@interface VCAudioRelay
- (BOOL)canSetPropertyWithError:(id *)error;
- (BOOL)createAudioConvertersWithError:(id *)error;
- (BOOL)setClientIO:(id)o withError:(id *)error;
- (BOOL)setIOBufferDuration:(double)duration withError:(id *)error;
- (BOOL)setNetworkClockID:(unint64_t)d withError:(id *)error;
- (BOOL)setRemoteIO:(id)o withError:(id *)error;
- (BOOL)startClientIO;
- (BOOL)startRelayIO:(tagVCAudioRelayIOInfo *)o otherRelayIO:(tagVCAudioRelayIOInfo *)iO;
- (BOOL)startRelayThreadWithError:(id *)error;
- (BOOL)startRemoteIO;
- (OpaqueAudioConverter)newAudioConverterWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withError:(id *)error;
- (VCAudioRelay)init;
- (double)ioBufferDurationWithFirstIO:(id)o secondIO:(id)iO;
- (float)rmsPowerOfBuffer:(float *)buffer numSamples:(unsigned int)samples;
- (void)dealloc;
- (void)destroyAudioConverters;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec;
- (void)forwardOneBlockSizeFromIO:(id)o toIO:(id)iO withConverter:(OpaqueAudioConverter *)converter withHostTime:(double)time;
- (void)forwardSamplesFromIO:(id)o toIO:(id)iO withConverter:(OpaqueAudioConverter *)converter withHostTime:(double)time;
- (void)internalStopRelayThread;
- (void)printStreamFormats;
- (void)relayCallback;
- (void)relayProcessSamples;
- (void)releasePTPClock;
- (void)sleepForTime:(timespec *)time;
- (void)startClientIO;
- (void)startPeriodicHealthPrint;
- (void)startRemoteIO;
- (void)stopClientIO;
- (void)stopRelayIO:(tagVCAudioRelayIOInfo *)o otherRelayIO:(tagVCAudioRelayIOInfo *)iO;
- (void)stopRelayThread;
- (void)stopRemoteIO;
- (void)updateRealTimeStats;
- (void)updateRemoteCodecInfo:(const _VCRemoteCodecInfo *)info;
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

- (BOOL)setIOBufferDuration:(double)duration withError:(id *)error
{
  [(VCAudioRelay *)self lock];
  v7 = [(VCAudioRelay *)self canSetPropertyWithError:error];
  if (v7)
  {
    self->_IOBufferDuration = duration;
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

- (double)ioBufferDurationWithFirstIO:(id)o secondIO:(id)iO
{
  if (o)
  {
    [o preferredIODuration];
    v6 = fmin(v5, 0.02);
    if (!iO)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0.02;
    if (!iO)
    {
      return v6;
    }
  }

  [iO preferredIODuration];
  if (v7 < v6)
  {
    return v7;
  }

  return v6;
}

- (void)updateRemoteCodecInfo:(const _VCRemoteCodecInfo *)info
{
  if (info)
  {
    self->_remoteCodecInfo = *info;
  }

  else
  {
    self->_remoteCodecInfo.codecType = 0;
    self->_remoteCodecInfo.sampleRate = 24000.0;
  }
}

- (BOOL)setRemoteIO:(id)o withError:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  [(VCAudioRelay *)self lock];
  pthread_mutex_lock(&self->_remoteIOInfo.lock);
  [(VCAudioRelay *)self destroyAudioConverters];

  relayIO = [o copy];
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

  if (error && !v9)
  {
    *error = v13[0];
  }

  return v9;
}

- (BOOL)setClientIO:(id)o withError:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  [(VCAudioRelay *)self lock];
  pthread_mutex_lock(&self->_clientIOInfo.lock);
  [(VCAudioRelay *)self destroyAudioConverters];

  v7 = [o copy];
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
  [o didUpdateBasebandCodec:&remoteCodecInfo];
  if (error && !v8)
  {
    *error = v11[0];
  }

  return v8;
}

- (BOOL)canSetPropertyWithError:(id *)error
{
  isRelayRunning = self->_isRelayRunning;
  if (isRelayRunning)
  {
    [GKVoiceChatError getNSError:error code:32005 detailedCode:0 filePath:0 description:@"Cannot set VCAudioRelay property" reason:@"VCAudioRelay is running"];
  }

  return !isRelayRunning;
}

- (BOOL)startRelayIO:(tagVCAudioRelayIOInfo *)o otherRelayIO:(tagVCAudioRelayIOInfo *)iO
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (!o || !o->relayIO)
  {
    [VCAudioRelay startRelayIO:? otherRelayIO:?];
LABEL_29:
    v14 = 0;
    goto LABEL_22;
  }

  if (!iO)
  {
    [VCAudioRelay startRelayIO:? otherRelayIO:?];
    goto LABEL_29;
  }

  if ([(VCAudioRelayIO *)o->relayIO isRunning])
  {
    [VCAudioRelay startRelayIO:? otherRelayIO:?];
LABEL_27:
    v14 = v21;
    goto LABEL_22;
  }

  relayIO = o->relayIO;
  if ([(VCAudioRelayIO *)iO->relayIO isRunning])
  {
    v8 = iO->relayIO;
  }

  else
  {
    v8 = 0;
  }

  [(VCAudioRelay *)self ioBufferDurationWithFirstIO:relayIO secondIO:v8];
  v10 = v9;
  if ([(VCAudioRelayIO *)iO->relayIO isRunning]&& (p_IOBufferDuration = &self->_IOBufferDuration, vabdd_f64(self->_IOBufferDuration, v10) > 2.22044605e-16))
  {
    pthread_mutex_lock(&iO->lock);
    [(VCAudioRelayIO *)iO->relayIO destroyPacketThread];
    *p_IOBufferDuration = v10;
    v12 = [(VCAudioRelayIO *)iO->relayIO createPacketThreadWithIOBufferDuration:iO->ioFriendlyName name:&v20 error:v10];
    pthread_mutex_unlock(&iO->lock);
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
      [(VCAudioRelayIO *)iO->relayIO closeRecordings];
    }
  }

  else
  {
    self->_IOBufferDuration = v10;
    p_IOBufferDuration = &self->_IOBufferDuration;
  }

  pthread_mutex_lock(&o->lock);
  v13 = [(VCAudioRelayIO *)o->relayIO createPacketThreadWithIOBufferDuration:o->ioFriendlyName name:&v20 error:*p_IOBufferDuration];
  pthread_mutex_unlock(&o->lock);
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
    [VCAudioRelay startRelayIO:&o->relayIO otherRelayIO:?];
    goto LABEL_29;
  }

  [(VCAudioRelay *)self startPeriodicHealthPrint];
LABEL_21:
  [(VCAudioRelayIO *)o->relayIO createRecordingsWithName:o->audioRecordingFileName];
  [(VCAudioRelayIO *)o->relayIO printStreamFormats];
  v14 = 1;
LABEL_22:
  v15 = o->relayIO;
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

- (void)stopRelayIO:(tagVCAudioRelayIOInfo *)o otherRelayIO:(tagVCAudioRelayIOInfo *)iO
{
  if (o && o->relayIO)
  {
    if (iO)
    {
      if ([(VCAudioRelayIO *)o->relayIO isRunning])
      {
        if (![(VCAudioRelayIO *)self->_clientIOInfo.relayIO isRunning]|| ![(VCAudioRelayIO *)self->_remoteIOInfo.relayIO isRunning])
        {
          [(VCAudioRelay *)self internalStopRelayThread];
        }

        [(VCAudioRelayIO *)o->relayIO closeRecordings];
        pthread_mutex_lock(&o->lock);
        [(VCAudioRelayIO *)o->relayIO destroyPacketThread];
        pthread_mutex_unlock(&o->lock);
        if ([(VCAudioRelayIO *)iO->relayIO isRunning])
        {
          [(VCAudioRelayIO *)iO->relayIO preferredIODuration];
          v8 = v7;
          if (vabdd_f64(self->_IOBufferDuration, v7) > 2.22044605e-16)
          {
            pthread_mutex_lock(&iO->lock);
            [(VCAudioRelayIO *)iO->relayIO destroyPacketThread];
            self->_IOBufferDuration = v8;
            v9 = [(VCAudioRelayIO *)iO->relayIO createPacketThreadWithIOBufferDuration:iO->ioFriendlyName name:0 error:v8];
            pthread_mutex_unlock(&iO->lock);
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
              [(VCAudioRelayIO *)iO->relayIO closeRecordings];
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

- (BOOL)setNetworkClockID:(unint64_t)d withError:(id *)error
{
  [(VCAudioRelay *)self lock];
  if (![(VCAudioRelay *)self canSetPropertyWithError:error])
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
  if (*MEMORY[0x1E69DA108] != d)
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

      [GKVoiceChatError getNSError:error code:32016 detailedCode:0 filePath:0 description:@"Failed to create network clock" reason:@"Create network clock returned NULL value"];
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

- (BOOL)startRelayThreadWithError:(id *)error
{
  keys[2] = *MEMORY[0x1E69E9840];
  v5 = pthread_cond_init(&self->_wakeUpCondition, 0);
  if (v5)
  {
    [GKVoiceChatError getNSError:error code:32005 detailedCode:v5 filePath:0 description:@"createRelayThreadWithError failed" reason:@"pthread_cond_init failed"];
    return 0;
  }

  v6 = pthread_mutex_init(&self->_wakeUpMutex, 0);
  if (v6)
  {
    [GKVoiceChatError getNSError:error code:32005 detailedCode:v6 filePath:0 description:@"createRelayThreadWithError failed" reason:@"pthread_mutex_init failed"];
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
    [GKVoiceChatError getNSError:error code:32005 detailedCode:v12 filePath:0 description:@"createRelayThreadWithError failed" reason:@"pthread_create failed"];
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

- (BOOL)createAudioConvertersWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  clientFormat = [(VCAudioRelayIO *)self->_remoteIOInfo.relayIO clientFormat];
  v6 = *&clientFormat->format.mBitsPerChannel;
  v7 = *&clientFormat->format.mBytesPerPacket;
  v23 = *&clientFormat->format.mSampleRate;
  v24 = v7;
  v25 = v6;
  clientFormat2 = [(VCAudioRelayIO *)self->_clientIOInfo.relayIO clientFormat];
  v9 = *&clientFormat2->format.mBitsPerChannel;
  v10 = *&clientFormat2->format.mBytesPerPacket;
  v20 = *&clientFormat2->format.mSampleRate;
  v21 = v10;
  v22 = v9;
  v19 = 0;
  self->_remoteToClientConverter = [(VCAudioRelay *)self newAudioConverterWithInputFormat:&v23 outputFormat:&v20 withError:&v19];
  v11 = v19;
  if (v19)
  {
    if (!error)
    {
      return 0;
    }

    goto LABEL_7;
  }

  clientFormat3 = [(VCAudioRelayIO *)self->_clientIOInfo.relayIO clientFormat];
  v13 = *&clientFormat3->format.mBitsPerChannel;
  v14 = *&clientFormat3->format.mBytesPerPacket;
  v23 = *&clientFormat3->format.mSampleRate;
  v24 = v14;
  v25 = v13;
  clientFormat4 = [(VCAudioRelayIO *)self->_remoteIOInfo.relayIO clientFormat];
  v16 = *&clientFormat4->format.mBitsPerChannel;
  v17 = *&clientFormat4->format.mBytesPerPacket;
  v20 = *&clientFormat4->format.mSampleRate;
  v21 = v17;
  v22 = v16;
  self->_clientToRemoteConverter = [(VCAudioRelay *)self newAudioConverterWithInputFormat:&v23 outputFormat:&v20 withError:&v19];
  if (v19)
  {
    [(VCAudioRelay *)self destroyAudioConverters];
    if (!error)
    {
      return 0;
    }

    v11 = v19;
LABEL_7:
    result = 0;
    *error = v11;
    return result;
  }

  return 1;
}

- (OpaqueAudioConverter)newAudioConverterWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withError:(id *)error
{
  outAudioConverter[1] = *MEMORY[0x1E69E9840];
  outAudioConverter[0] = 0;
  if (!memcmp(outputFormat, format, 0x28uLL))
  {
    return 0;
  }

  v8 = AudioConverterNew(format, outputFormat, outAudioConverter);
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

    [GKVoiceChatError getNSError:error code:32005 detailedCode:v9 filePath:0 description:@"newAudioConverterFromFormat failed" reason:@"AudioConverter new failed"];
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

- (float)rmsPowerOfBuffer:(float *)buffer numSamples:(unsigned int)samples
{
  v6 = *MEMORY[0x1E69E9840];
  __C = NAN;
  vDSP_rmsqv(buffer, 1, &__C, samples);
  return fmax(log10f(__C) * 20.0, -120.0);
}

- (void)forwardSamplesFromIO:(id)o toIO:(id)iO withConverter:(OpaqueAudioConverter *)converter withHostTime:(double)time
{
  v13[3] = *MEMORY[0x1E69E9840];
  speakerBuffer = [o speakerBuffer];
  isRealtimeCatchUpEnabled = [o isRealtimeCatchUpEnabled];
  if (speakerBuffer)
  {
LABEL_2:
    VCAudioBufferList_SetSamplesAreLate(speakerBuffer, 0);
  }

  while (1)
  {
    [(VCAudioRelay *)self forwardOneBlockSizeFromIO:o toIO:iO withConverter:converter withHostTime:time];
    if (!isRealtimeCatchUpEnabled || (VCAudioBufferList_GetSamplesAreLate(speakerBuffer) & 1) == 0)
    {
      break;
    }

    VCAudioBufferList_GetTimestamp(speakerBuffer);
    memset(v13, 170, 24);
    VCAudioBufferList_GetNetworkTimestamp(speakerBuffer, v13);
    kdebug_trace();
    if (speakerBuffer)
    {
      goto LABEL_2;
    }
  }
}

- (void)forwardOneBlockSizeFromIO:(id)o toIO:(id)iO withConverter:(OpaqueAudioConverter *)converter withHostTime:(double)time
{
  if (o)
  {
    if ([o isRunning])
    {
      v10 = *([o relayFormat] + 40);
      VCAudioBufferList_SetSampleCount([o speakerBuffer], v10);
      VCAudioBufferList_SetTime([o speakerBuffer], objc_msgSend(o, "speakerTimestamp"), time);
      [o pullAudioSamples:{objc_msgSend(o, "speakerBuffer")}];
      [o setSpeakerTimestamp:{objc_msgSend(o, "speakerTimestamp") + v10}];
      if (*([o relayFormat] + 24) == 4)
      {
        *&v11 = VCAudioBufferList_GetAveragePower([o speakerBuffer]);
        [o setSpeakerPowerRMS:v11];
      }
    }
  }

  if (iO && [iO isRunning])
  {
    v12 = *([iO relayFormat] + 40);
    micBuffer = [iO micBuffer];
    if (o && [o isRunning])
    {
      speakerBuffer = [o speakerBuffer];
      if (converter)
      {
        VCAudioBufferList_Convert(speakerBuffer, [iO micBuffer], converter);
      }

      else
      {
        micBuffer = speakerBuffer;
      }
    }

    else
    {
      VCAudioBufferList_ZeroMemory(micBuffer);
      VCAudioBufferList_SetPriority(micBuffer, 1);
    }

    VCAudioBufferList_SetTime(micBuffer, [iO micTimestamp], time);
    VCAudioBufferList_SetSampleCount(micBuffer, v12);
    *&v15 = VCAudioBufferList_GetAveragePower(micBuffer);
    [iO setMicPowerRMS:v15];
    [iO pushAudioSamples:micBuffer];
    v16 = [iO micTimestamp] + v12;

    [iO setMicTimestamp:v16];
  }
}

- (void)sleepForTime:(timespec *)time
{
  pthread_mutex_lock(&self->_wakeUpMutex);
  pthread_cond_timedwait_relative_np(&self->_wakeUpCondition, &self->_wakeUpMutex, time);

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

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec
{
  v7 = *MEMORY[0x1E69E9840];
  [(VCAudioRelay *)self lock];
  [(VCAudioRelay *)self updateRemoteCodecInfo:codec];
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