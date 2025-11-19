@interface VCSystemAudioCapture
+ (BOOL)isValidConfiguration:(id *)a3;
+ (id)newAudioTapWithCaptureContext:(__CFString *)a3 audioFormat:(id)a4;
+ (id)newAudioTapWithProcessID:(int)a3 audioFormat:(id)a4 excludedPids:(id)a5;
+ (id)newAudioTapWithSessionType:(unsigned int)a3 audioFormat:(id)a4;
- (BOOL)start;
- (BOOL)startAudioHALPlugInSource:(unsigned int)a3;
- (BOOL)startAudioQueue;
- (BOOL)stop;
- (BOOL)stopAudioHALPlugInSource:(unsigned int)a3;
- (BOOL)stopAudioQueue;
- (VCSystemAudioCapture)initWithConfiguration:(id *)a3;
- (id)newAudioTapWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3;
- (int)getQueueState;
- (uint64_t)startAudioQueue;
- (void)dealloc;
- (void)setQueueState:(int)a3;
- (void)setupAudioInjection;
- (void)start;
- (void)startAudioQueue;
- (void)stop;
- (void)stopAudioQueue;
@end

@implementation VCSystemAudioCapture

- (VCSystemAudioCapture)initWithConfiguration:(id *)a3
{
  v46 = *MEMORY[0x1E69E9840];
  if (![VCSystemAudioCapture isValidConfiguration:?])
  {
    [VCSystemAudioCapture initWithConfiguration:];
LABEL_42:
    mSampleRate = buf.mSampleRate;
    goto LABEL_7;
  }

  v43.receiver = self;
  v43.super_class = VCSystemAudioCapture;
  v5 = [(VCObject *)&v43 init];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_class() == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.mSampleRate) = 136315650;
          *(&buf.mSampleRate + 4) = v9;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = "[VCSystemAudioCapture initWithConfiguration:]";
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = 78;
          v11 = " [%s] %s:%d ";
          v12 = v10;
          v13 = 28;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &buf, v13);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSystemAudioCapture *)v6 performSelector:sel_logPrefix];
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
          LODWORD(buf.mSampleRate) = 136316162;
          *(&buf.mSampleRate + 4) = v14;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = "[VCSystemAudioCapture initWithConfiguration:]";
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = 78;
          LOWORD(buf.mChannelsPerFrame) = 2112;
          *(&buf.mChannelsPerFrame + 2) = v7;
          HIWORD(buf.mReserved) = 2048;
          v45 = v6;
          v11 = " [%s] %s:%d %@(%p) ";
          v12 = v15;
          v13 = 48;
          goto LABEL_15;
        }
      }
    }

    pthread_mutex_init(&v6->_stateLock, 0);
    v16 = malloc_type_calloc(1uLL, 0x88uLL, 0x1020040BC270CF7uLL);
    v6->_audioRecorderQueue = v16;
    if (v16)
    {
      v17 = *&a3->var3.source;
      *&v6->_tapSettings.tapType = *&a3->var3.tapType;
      *&v6->_tapSettings.source = v17;
      captureContext = v6->_tapSettings.captureContext;
      if (captureContext)
      {
        CFRetain(captureContext);
      }

      excludedPids = v6->_tapSettings.excludedPids;
      if (excludedPids)
      {
        CFRetain(excludedPids);
      }

      p_audioBasicDescriptionAudioQueue = &v6->_audioBasicDescriptionAudioQueue;
      v21 = *&a3->var0.format.mBitsPerChannel;
      v22 = *&a3->var0.format.mBytesPerPacket;
      *&v6->_audioBasicDescriptionAudioQueue.mSampleRate = *&a3->var0.format.mSampleRate;
      *&v6->_audioBasicDescriptionAudioQueue.mBytesPerPacket = v22;
      *&v6->_audioBasicDescriptionAudioQueue.mBitsPerChannel = v21;
      v23 = *&a3->var0.format.mSampleRate;
      v24 = *&a3->var0.format.mBytesPerPacket;
      *&v6->_audioBasicDescriptionAudioCapture.mBitsPerChannel = *&a3->var0.format.mBitsPerChannel;
      *&v6->_audioBasicDescriptionAudioCapture.mSampleRate = v23;
      *&v6->_audioBasicDescriptionAudioCapture.mBytesPerPacket = v24;
      v6->_samplesPerFrame = a3->var0.samplesPerFrame;
      v6->_sinkContext = a3->var1;
      v6->_sinkProc = a3->var2;
      v6->_firstAudioBufferReceived = 0;
      CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
      v26 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSystemAudioCapture.systemAudioQueue", 0, CustomRootQueue);
      v6->_callbackQueue = v26;
      if (v26)
      {
        if ((v6->_audioBasicDescriptionAudioCapture.mFormatFlags & 0x20) != 0 && v6->_audioBasicDescriptionAudioCapture.mChannelsPerFrame == 2)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            v29 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.mSampleRate) = 136315650;
                *(&buf.mSampleRate + 4) = v27;
                LOWORD(buf.mFormatFlags) = 2080;
                *(&buf.mFormatFlags + 2) = "[VCSystemAudioCapture initWithConfiguration:]";
                HIWORD(buf.mFramesPerPacket) = 1024;
                buf.mBytesPerFrame = 95;
                _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d System Audio Capture Format is Non-Interleaved, updating AudioQueue Format", &buf, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [VCSystemAudioCapture initWithConfiguration:];
            }
          }

          v6->_audioBasicDescriptionAudioQueue.mFormatFlags &= ~0x20u;
          mChannelsPerFrame = v6->_audioBasicDescriptionAudioCapture.mChannelsPerFrame;
          v6->_audioBasicDescriptionAudioQueue.mBytesPerFrame = mChannelsPerFrame * v6->_audioBasicDescriptionAudioCapture.mBytesPerFrame;
          v6->_audioBasicDescriptionAudioQueue.mBytesPerPacket = v6->_audioBasicDescriptionAudioCapture.mBytesPerPacket * mChannelsPerFrame;
        }

        v31 = 2 * v6->_samplesPerFrame;
        v32 = *p_audioBasicDescriptionAudioQueue;
        v33 = *&v6->_audioBasicDescriptionAudioQueue.mBytesPerPacket;
        *&buf.mBitsPerChannel = *&v6->_audioBasicDescriptionAudioQueue.mBitsPerChannel;
        *&buf.mSampleRate = v32;
        *&buf.mBytesPerPacket = v33;
        if (VCAudioBufferList_Allocate(&buf, v31, &v6->_audioBufferAppendList))
        {
          samplesPerFrame = v6->_samplesPerFrame;
          v35 = *&v6->_audioBasicDescriptionAudioCapture.mSampleRate;
          v36 = *&v6->_audioBasicDescriptionAudioCapture.mBytesPerPacket;
          *&buf.mBitsPerChannel = *&v6->_audioBasicDescriptionAudioCapture.mBitsPerChannel;
          *&buf.mSampleRate = v35;
          *&buf.mBytesPerPacket = v36;
          if (VCAudioBufferList_Allocate(&buf, samplesPerFrame, &v6->_audioBufferOutputList))
          {
            v37 = v6->_samplesPerFrame;
            v38 = *p_audioBasicDescriptionAudioQueue;
            v39 = *&v6->_audioBasicDescriptionAudioQueue.mBytesPerPacket;
            *&buf.mBitsPerChannel = *&v6->_audioBasicDescriptionAudioQueue.mBitsPerChannel;
            *&buf.mSampleRate = v38;
            *&buf.mBytesPerPacket = v39;
            if (VCAudioBufferList_Allocate(&buf, v37, &v6->_audioBufferCannedOutputList))
            {
              [(VCSystemAudioCapture *)v6 setupAudioInjection];
              buf.mSampleRate = -3.72066208e-103;
              mach_timebase_info(&buf);
              LODWORD(v41) = HIDWORD(buf.mSampleRate);
              LODWORD(v40) = LODWORD(buf.mSampleRate);
              v6->_conversionRatio = v40 * 0.000000001 / v41;
              v6->_timestamp = 0;
              v6->_hostTime = 0.0;
              v6->_startHostTime = 0.0;
              v6->_remoteDeviceInfo = a3->var4;
              return v6;
            }

            [VCSystemAudioCapture initWithConfiguration:];
          }

          else
          {
            [VCSystemAudioCapture initWithConfiguration:];
          }
        }

        else
        {
          [VCSystemAudioCapture initWithConfiguration:];
        }
      }

      else
      {
        [VCSystemAudioCapture initWithConfiguration:];
      }
    }

    else
    {
      [VCSystemAudioCapture initWithConfiguration:];
    }

    goto LABEL_42;
  }

  mSampleRate = 0.0;
LABEL_7:

  return 0;
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCSystemAudioCapture dealloc]";
        v19 = 1024;
        v20 = 129;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSystemAudioCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCSystemAudioCapture dealloc]";
        v19 = 1024;
        v20 = 129;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        v24 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  pthread_mutex_destroy(&self->_stateLock);
  VCAudioBufferList_Destroy(&self->_audioBufferAppendList);
  self->_audioBufferAppendList = 0;
  VCAudioBufferList_Destroy(&self->_audioBufferOutputList);
  self->_audioBufferOutputList = 0;
  VCAudioBufferList_Destroy(&self->_audioBufferCannedOutputList);
  self->_audioBufferCannedOutputList = 0;
  free(self->_audioRecorderQueue);
  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
    self->_callbackQueue = 0;
  }

  self->_audioRecorderQueue = 0;

  captureContext = self->_tapSettings.captureContext;
  if (captureContext)
  {
    CFRelease(captureContext);
  }

  excludedPids = self->_tapSettings.excludedPids;
  if (excludedPids)
  {
    CFRelease(excludedPids);
  }

  v14.receiver = self;
  v14.super_class = VCSystemAudioCapture;
  [(VCObject *)&v14 dealloc];
}

+ (BOOL)isValidConfiguration:(id *)a3
{
  if (!a3)
  {
    +[VCSystemAudioCapture isValidConfiguration:];
    return v9;
  }

  if (!a3->var2)
  {
    +[VCSystemAudioCapture isValidConfiguration:];
    return v8;
  }

  tapType = a3->var3.tapType;
  if (tapType >= 3)
  {
    +[VCSystemAudioCapture isValidConfiguration:];
    return v7;
  }

  if (tapType == 2)
  {
    if (!a3->var3.captureContext)
    {
      +[VCSystemAudioCapture isValidConfiguration:];
      return v5;
    }
  }

  else if (tapType == 1 && a3->var3.var0.audioProcessIdToTap)
  {
    +[VCSystemAudioCapture isValidConfiguration:];
    return v6;
  }

  return 1;
}

- (BOOL)start
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315650;
        *&v14[4] = v4;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSystemAudioCapture start]";
        *&v14[22] = 1024;
        LODWORD(v15) = 167;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v14, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSystemAudioCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136316162;
        *&v14[4] = v9;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSystemAudioCapture start]";
        *&v14[22] = 1024;
        LODWORD(v15) = 167;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v3;
        HIWORD(v15) = 2048;
        v16 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  pthread_mutex_lock(&self->_stateLock);
  if (self->_audioRecorderQueue->var4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSystemAudioCapture start];
      }
    }

    goto LABEL_22;
  }

  [(VCSystemAudioCapture *)self setQueueState:1];
  source = self->_tapSettings.source;
  if (source >= 2)
  {
    if (source - 2 <= 1 && [(VCSystemAudioCapture *)self startAudioHALPlugInSource:?])
    {
      goto LABEL_19;
    }

LABEL_21:
    [(VCSystemAudioCapture *)self setQueueState:0, *v14, *&v14[16], v15, v16];
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  if (![(VCSystemAudioCapture *)self startAudioQueue])
  {
    goto LABEL_21;
  }

LABEL_19:
  v12 = 1;
LABEL_23:
  pthread_mutex_unlock(&self->_stateLock);
  return v12;
}

- (BOOL)startAudioQueue
{
  v46 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v4;
        v38 = 2080;
        v39 = "[VCSystemAudioCapture startAudioQueue]";
        v40 = 1024;
        v41 = 198;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSystemAudioCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v9;
        v38 = 2080;
        v39 = "[VCSystemAudioCapture startAudioQueue]";
        v40 = 1024;
        v41 = 198;
        v42 = 2112;
        v43 = v3;
        v44 = 2048;
        v45 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  audioRecorderQueue = self->_audioRecorderQueue;
  v12 = *&self->_audioBasicDescriptionAudioQueue.mBitsPerChannel;
  v13 = *&self->_audioBasicDescriptionAudioQueue.mBytesPerPacket;
  *&audioRecorderQueue->var1.mSampleRate = *&self->_audioBasicDescriptionAudioQueue.mSampleRate;
  *&audioRecorderQueue->var1.mBytesPerPacket = v13;
  *&audioRecorderQueue->var1.mBitsPerChannel = v12;
  VCAudioBufferList_Reset(self->_audioBufferAppendList);
  VCAudioBufferList_Reset(self->_audioBufferOutputList);
  v14 = [(VCSystemAudioCapture *)self newAudioTapWithAudioStreamBasicDescription:&self->_audioBasicDescriptionAudioQueue];
  if (!v14)
  {
    [VCSystemAudioCapture startAudioQueue];
LABEL_50:
    v16 = *buf;
    goto LABEL_29;
  }

  v15 = [objc_alloc(MEMORY[0x1E695A880]) initWithTapDescription:v14];
  if (!v15)
  {
    [VCSystemAudioCapture startAudioQueue];
    goto LABEL_50;
  }

  v16 = v15;
  [v15 setScreenSharingHost:(self->_tapSettings.var0.audioProcessIdToTap + 1) < 0xFFFFFFFE];
  v17 = self->_audioRecorderQueue;
  v18 = [objc_msgSend(v14 "format")];
  callbackQueue = self->_callbackQueue;
  inCallbackBlock[0] = MEMORY[0x1E69E9820];
  inCallbackBlock[1] = 3221225472;
  inCallbackBlock[2] = __39__VCSystemAudioCapture_startAudioQueue__block_invoke;
  inCallbackBlock[3] = &unk_1E85F9598;
  inCallbackBlock[4] = self;
  if (AudioQueueNewInputWithDispatchQueue(&v17->var0, v18, 0x800u, callbackQueue, inCallbackBlock))
  {
    [VCSystemAudioCapture startAudioQueue];
    goto LABEL_50;
  }

  if (AudioQueueSetProperty(self->_audioRecorderQueue->var0, 0x71746F62u, v16, 8u))
  {
    [VCSystemAudioCapture startAudioQueue];
    goto LABEL_50;
  }

  ioDataSize = 40;
  if (AudioQueueGetProperty(self->_audioRecorderQueue->var0, 0x61716674u, &self->_audioRecorderQueue->var1, &ioDataSize))
  {
    [VCSystemAudioCapture startAudioQueue];
    goto LABEL_50;
  }

  v20 = 0;
  v21 = self->_audioRecorderQueue;
  v22 = v21->var1.mBytesPerFrame * self->_samplesPerFrame;
  *v21->var2 = 0u;
  var2 = v21->var2;
  *&v21->var2[2] = 0u;
  *&v21->var2[4] = 0u;
  *&v21->var2[6] = 0u;
  *&v21->var2[8] = 0u;
  v21->var3 = v22;
  v24 = -10;
  while (1)
  {
    Buffer = AudioQueueAllocateBuffer(v21->var0, v21->var3, var2);
    if (Buffer)
    {
      v33 = [(VCSystemAudioCapture *)Buffer startAudioQueue];
      if (!v33)
      {
        goto LABEL_41;
      }

      if (v33 != 1)
      {
        goto LABEL_42;
      }

LABEL_22:
      v28 = AudioQueueStart(self->_audioRecorderQueue->var0, 0);
      if (v28 == -66665)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSystemAudioCapture startAudioQueue];
          }
        }
      }

      else if (!v28)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v30;
            v38 = 2080;
            v39 = "[VCSystemAudioCapture startAudioQueue]";
            v40 = 1024;
            v41 = 246;
            _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully started", buf, 0x1Cu);
          }
        }

        v29 = 1;
        goto LABEL_35;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSystemAudioCapture startAudioQueue];
        }
      }

      goto LABEL_29;
    }

    v26 = AudioQueueEnqueueBuffer(v21->var0, *var2, 0, 0);
    if (v26)
    {
      break;
    }

    v20 = (v24 + 10) > 8;
    ++var2;
    if (__CFADD__(v24++, 1))
    {
      goto LABEL_22;
    }
  }

  v34 = [(VCSystemAudioCapture *)v26 startAudioQueue];
  if (v34 == 1)
  {
    goto LABEL_22;
  }

  if (v34)
  {
    goto LABEL_42;
  }

LABEL_41:
  if (v20)
  {
    goto LABEL_22;
  }

LABEL_42:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSystemAudioCapture startAudioQueue];
    }
  }

LABEL_29:
  _VCSystemAudioCapture_destroyAudioQueueBuffers(&self->_audioRecorderQueue->var0);
  AudioQueueDispose(self->_audioRecorderQueue->var0, 1u);
  v29 = 0;
LABEL_35:

  return v29;
}

void __39__VCSystemAudioCapture_startAudioQueue__block_invoke(uint64_t a1, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, uint64_t a4, unsigned int a5)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  mAudioData = a3->mAudioData;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v7) = a3->mAudioDataByteSize;
  _VCSystemAudioCapture_handleInputBuffer(v5, a2, a3, &mAudioData, a4, a5);
}

- (BOOL)stop
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCSystemAudioCapture stop]";
        v19 = 1024;
        v20 = 259;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v15, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSystemAudioCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCSystemAudioCapture stop]";
        v19 = 1024;
        v20 = 259;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        v24 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  pthread_mutex_lock(&self->_stateLock);
  if (self->_audioRecorderQueue->var4)
  {
    [(VCSystemAudioCapture *)self setQueueState:0];
    source = self->_tapSettings.source;
    if (source - 2 < 2)
    {
      v12 = [(VCSystemAudioCapture *)self stopAudioHALPlugInSource:?];
      goto LABEL_21;
    }

    if (source <= 1)
    {
      v12 = [(VCSystemAudioCapture *)self stopAudioQueue];
LABEL_21:
      v13 = v12;
      goto LABEL_22;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSystemAudioCapture stop];
    }
  }

  v13 = 0;
LABEL_22:
  pthread_mutex_unlock(&self->_stateLock);
  return v13;
}

- (BOOL)stopAudioQueue
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCSystemAudioCapture stopAudioQueue]";
        v18 = 1024;
        v19 = 285;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v14, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSystemAudioCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v9;
        v16 = 2080;
        v17 = "[VCSystemAudioCapture stopAudioQueue]";
        v18 = 1024;
        v19 = 285;
        v20 = 2112;
        v21 = v3;
        v22 = 2048;
        v23 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  if (AudioQueueStop(self->_audioRecorderQueue->var0, 1u))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSystemAudioCapture stopAudioQueue];
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = v11;
      v16 = 2080;
      v17 = "[VCSystemAudioCapture stopAudioQueue]";
      v18 = 1024;
      v19 = 291;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio queue stopped", &v14, 0x1Cu);
    }
  }

  _VCSystemAudioCapture_destroyAudioQueueBuffers(&self->_audioRecorderQueue->var0);
  if (AudioQueueDispose(self->_audioRecorderQueue->var0, 1u))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSystemAudioCapture stopAudioQueue];
      }
    }
  }

  self->_firstAudioBufferReceived = 0;
  return 1;
}

- (void)setQueueState:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VCSystemAudioCapture_setQueueState___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_sync(callbackQueue, block);
}

- (int)getQueueState
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCSystemAudioCapture_getQueueState__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(callbackQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)newAudioTapWithProcessID:(int)a3 audioFormat:(id)a4 excludedPids:(id)a5
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3 != -1)
  {
    v6 = [objc_alloc(MEMORY[0x1E695A888]) initProcessTapWithFormat:a4 PID:*&a3];
    goto LABEL_9;
  }

  if (VCFeatureFlagManager_UseAvconferenced())
  {
    v10[0] = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
    a5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
LABEL_7:
    v6 = [objc_alloc(MEMORY[0x1E695A888]) initSystemTapWithFormat:a4 excludePIDs:a5];
    goto LABEL_9;
  }

  if (a5 && [a5 count])
  {
    goto LABEL_7;
  }

  v6 = [objc_alloc(MEMORY[0x1E695A888]) initSystemTapWithFormat:a4];
LABEL_9:
  v8 = v6;
  if (!v6)
  {
    +[VCSystemAudioCapture newAudioTapWithProcessID:audioFormat:excludedPids:];
  }

  return v8;
}

+ (id)newAudioTapWithSessionType:(unsigned int)a3 audioFormat:(id)a4
{
  if (a3)
  {
    +[VCSystemAudioCapture newAudioTapWithSessionType:audioFormat:];
    return v5;
  }

  result = [objc_alloc(MEMORY[0x1E695A888]) initPreSpatialSessionTypeTapWithFormat:a4 sessionType:+[VCSystemAudioCapture audioTapSessionTypeForInternalSessionType:](VCSystemAudioCapture, "audioTapSessionTypeForInternalSessionType:", 0)];
  if (!result)
  {
    +[VCSystemAudioCapture newAudioTapWithSessionType:audioFormat:];
    return v5;
  }

  return result;
}

+ (id)newAudioTapWithCaptureContext:(__CFString *)a3 audioFormat:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E695A888]) initPreSpatialSceneIdentifierTapWithFormat:a4 sceneIdentifier:a3];
  if (!v4)
  {
    +[VCSystemAudioCapture newAudioTapWithCaptureContext:audioFormat:];
  }

  return v4;
}

- (id)newAudioTapWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  p_tapSettings = &self->_tapSettings;
  if (self->_tapSettings.tapType >= 3)
  {
    [(VCSystemAudioCapture *)&self->_tapSettings newAudioTapWithAudioStreamBasicDescription:v11];
    goto LABEL_12;
  }

  v4 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:a3];
  if (!v4)
  {
    [(VCSystemAudioCapture *)&v10 newAudioTapWithAudioStreamBasicDescription:v11];
    goto LABEL_12;
  }

  v5 = v4;
  tapType = p_tapSettings->tapType;
  if (p_tapSettings->tapType == 2)
  {
    v7 = [VCSystemAudioCapture newAudioTapWithCaptureContext:p_tapSettings->captureContext audioFormat:v4];
  }

  else if (tapType == 1)
  {
    v7 = [VCSystemAudioCapture newAudioTapWithSessionType:p_tapSettings->var0.sessionTypeToTap audioFormat:v4];
  }

  else
  {
    if (tapType)
    {
LABEL_11:
      [(VCSystemAudioCapture *)v5 newAudioTapWithAudioStreamBasicDescription:v11];
LABEL_12:
      v8 = v10;
      v5 = v11[0];
      goto LABEL_10;
    }

    v7 = [VCSystemAudioCapture newAudioTapWithProcessID:p_tapSettings->var0.sessionTypeToTap audioFormat:v4 excludedPids:p_tapSettings->excludedPids];
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_10:

  return v8;
}

- (BOOL)startAudioHALPlugInSource:(unsigned int)a3
{
  v24 = *MEMORY[0x1E69E9840];
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

    *v18 = 136315650;
    *&v18[4] = v6;
    *&v18[12] = 2080;
    *&v18[14] = "[VCSystemAudioCapture startAudioHALPlugInSource:]";
    *&v18[22] = 1024;
    LODWORD(v19) = 714;
    v8 = " [%s] %s:%d ";
    v9 = v7;
    v10 = 28;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCSystemAudioCapture *)self performSelector:sel_logPrefix];
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
      *v18 = 136316162;
      *&v18[4] = v11;
      *&v18[12] = 2080;
      *&v18[14] = "[VCSystemAudioCapture startAudioHALPlugInSource:]";
      *&v18[22] = 1024;
      LODWORD(v19) = 714;
      WORD2(v19) = 2112;
      *(&v19 + 6) = v5;
      HIWORD(v19) = 2048;
      v20 = self;
      v8 = " [%s] %s:%d %@(%p) ";
      v9 = v12;
      v10 = 48;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v18, v10);
    }
  }

LABEL_12:
  [+[VCAudioHALPluginDevice sharedAudioHALPluginNullDevice](VCAudioHALPluginDevice sharedAudioHALPluginNullDevice];
  samplesPerFrame = self->_samplesPerFrame;
  *v18 = self->_audioBasicDescriptionAudioCapture.mSampleRate;
  *&v18[8] = *&self->_audioBasicDescriptionAudioCapture.mFormatID;
  v19 = *&self->_audioBasicDescriptionAudioCapture.mBytesPerFrame;
  v20 = samplesPerFrame | 0xAAAAAAAA00000000;
  remoteDeviceInfo = self->_remoteDeviceInfo;
  v21 = self;
  v22 = _VCSystemAudioCapture_handleInputBufferFromAudioHALPlugin;
  v23 = remoteDeviceInfo;
  v15 = off_1E85F1EE8;
  if (a3 == 2)
  {
    v15 = off_1E85F1F10;
  }

  v16 = [objc_alloc(*v15) initWithConfig:v18];
  self->_audioHALPlugin = v16;
  if (!v16)
  {
    [VCSystemAudioCapture startAudioHALPlugInSource:?];
LABEL_20:

    result = 0;
    self->_audioHALPlugin = 0;
    return result;
  }

  if (([(VCAudioHALPluginCaptureSource *)v16 start:*v18]& 1) == 0)
  {
    [VCSystemAudioCapture startAudioHALPlugInSource:?];
    goto LABEL_20;
  }

  return 1;
}

- (BOOL)stopAudioHALPlugInSource:(unsigned int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315650;
        *&v14[4] = v5;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSystemAudioCapture stopAudioHALPlugInSource:]";
        *&v14[22] = 1024;
        LODWORD(v15) = 748;
        v7 = " [%s] %s:%d ";
        v8 = v6;
        v9 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v14, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCSystemAudioCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136316162;
        *&v14[4] = v10;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSystemAudioCapture stopAudioHALPlugInSource:]";
        *&v14[22] = 1024;
        LODWORD(v15) = 748;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v4;
        HIWORD(v15) = 2048;
        v16 = self;
        v7 = " [%s] %s:%d %@(%p) ";
        v8 = v11;
        v9 = 48;
        goto LABEL_11;
      }
    }
  }

  v12 = [(VCAudioHALPluginCaptureSource *)self->_audioHALPlugin stop:*v14];
  [(VCAudioHALPluginCaptureSource *)self->_audioHALPlugin invalidate];

  self->_audioHALPlugin = 0;
  return v12;
}

- (void)setupAudioInjection
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [VCDefaults copyStringValueForKey:@"systemAudioCannedReplay"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [VCDefaults BOOLeanValueForKey:@"systemAudioUseSineWave" defaultValue:0];
  v7 = v6;
  if (!v5 && !v6)
  {
LABEL_24:
    v9 = 0;
    goto LABEL_20;
  }

  v8 = objc_alloc_init(VCAudioInjectorConfig);
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        DWORD2(v29) = 682;
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v23, v24, v25, v26, v27, 0x1Cu);
      }
    }

    goto LABEL_24;
  }

  v9 = v8;
  v10 = *&self->_audioBasicDescriptionAudioQueue.mBytesPerPacket;
  v28 = *&self->_audioBasicDescriptionAudioQueue.mSampleRate;
  v29 = v10;
  v30 = *&self->_audioBasicDescriptionAudioQueue.mBitsPerChannel;
  [(VCAudioInjectorConfig *)v8 setAudioFormat:&v28];
  [(VCAudioInjectorConfig *)v9 setForceVoiceActive:1];
  if (v7)
  {
    [(VCAudioInjectorConfig *)v9 setSineWaveFrequencyHz:2000];
    [(VCAudioInjectorConfig *)v9 setSineWaveAmplitude:0.05];
    [(VCAudioInjectorConfig *)v9 setStartHostTime:0.0];
    [(VCAudioInjectorConfig *)v9 setLoopLength:1.0];
  }

  else
  {
    LOBYTE(v28) = 0;
    [VCDefaults getDoubleValueForKey:@"systemAudioCannedReplayStartTime" defaultValue:-1.0];
    v12 = v11;
    [(VCAudioInjectorConfig *)v9 setPath:v4];
    [(VCAudioInjectorConfig *)v9 setFileName:[VCAudioInjector defaultAudioFileNameWithFormat:&self->_audioBasicDescriptionAudioQueue]];
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"systemAudioCannedReplayFromBeginning", @"com.apple.VideoConference", &v28);
    if (AppBooleanValue || v12 < 0.0)
    {
      if (AppBooleanValue)
      {
        v14 = v28 == 0;
      }

      else
      {
        v14 = 1;
      }

      v15 = !v14;
      [(VCAudioInjectorConfig *)v9 setFromBeginning:v15];
    }

    else
    {
      [VCDefaults getDoubleValueForKey:@"systemAudioCannedReplayLoopLength" defaultValue:-1.0];
      [(VCAudioInjectorConfig *)v9 setLoopLength:?];
      [(VCAudioInjectorConfig *)v9 setStartHostTime:v12];
    }
  }

  v16 = [[VCAudioInjector alloc] initWithConfig:v9];
  self->_audioInjector = v16;
  if (!v16 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      DWORD2(v29) = 704;
      OUTLINED_FUNCTION_2_7();
      _os_log_error_impl(v17, v18, v19, v20, v21, v22);
    }
  }

LABEL_20:
}

- (void)initWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_7();
        _os_log_error_impl(v0, v1, v2, v3, v4, v5);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_30_8(v6, v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithConfiguration:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 95;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d System Audio Capture Format is Non-Interleaved, updating AudioQueue Format", v1, 0x1Cu);
}

- (void)initWithConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_7();
        _os_log_error_impl(v0, v1, v2, v3, v4, v5);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_30_8(v6, v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithConfiguration:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_7();
        _os_log_error_impl(v0, v1, v2, v3, v4, v5);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_30_8(v6, v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithConfiguration:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_7();
        _os_log_error_impl(v0, v1, v2, v3, v4, v5);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_30_8(v6, v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithConfiguration:.cold.6()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [v1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_39_4();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_17_0();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = v1;
}

- (void)initWithConfiguration:.cold.7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_7();
        _os_log_error_impl(v0, v1, v2, v3, v4, v5);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_30_8(v6, v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

+ (void)isValidConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_30_8(v5, v6, v7, v8, v9);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)isValidConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24_0();
      _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)isValidConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24_0();
      _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)isValidConfiguration:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_30_8(v5, v6, v7, v8, v9);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)isValidConfiguration:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_30_8(v5, v6, v7, v8, v9);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)start
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)startAudioQueue
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (uint64_t)startAudioQueue
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 0;
  }

  VRTraceErrorLogLevelToCSTR();
  result = OUTLINED_FUNCTION_40();
  if (result)
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_24();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    if (a2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)stop
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)stopAudioQueue
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d stop error: %i", v2, v3, v4, v5);
}

+ (void)newAudioTapWithProcessID:audioFormat:excludedPids:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

+ (void)newAudioTapWithSessionType:audioFormat:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)newAudioTapWithSessionType:audioFormat:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)newAudioTapWithCaptureContext:audioFormat:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newAudioTapWithAudioStreamBasicDescription:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_39_4();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  *a3 = a1;
  OUTLINED_FUNCTION_20();
}

- (void)newAudioTapWithAudioStreamBasicDescription:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_7();
      _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_20();
}

- (void)newAudioTapWithAudioStreamBasicDescription:(void *)a3 .cold.3(uint64_t a1, uint64_t a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_39_4();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a3 = 0;
  OUTLINED_FUNCTION_20();
}

- (void)startAudioHALPlugInSource:(void *)a1 .cold.1(void *a1)
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

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_16_0();
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
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)startAudioHALPlugInSource:(void *)a1 .cold.2(void *a1)
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

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_16_0();
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
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

@end