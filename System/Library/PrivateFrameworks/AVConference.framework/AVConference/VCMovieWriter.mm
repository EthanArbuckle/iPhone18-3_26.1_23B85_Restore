@interface VCMovieWriter
- (BOOL)shouldAppendSampleBuffer:(opaqueCMSampleBuffer *)buffer RTPtimeStamp:(unsigned int)stamp mediaType:(unsigned __int8)type;
- (BOOL)shouldFinishWritingSampleBuffer:(opaqueCMSampleBuffer *)buffer RTPtimeStamp:(unsigned int)stamp mediaType:(unsigned __int8)type;
- (VCMovieWriter)initWithOutputURL:(id)l transactionID:(id)d videoCodec:(unsigned int)codec keyFrameIntervalDuration:(double)duration;
- (id)addAudioTrackForLocalAudio:(BOOL)audio;
- (id)addStillImageMetadataTrackWithTransactionID:(id)d;
- (id)addVideoTrackWithWidth:(int)width height:(int)height;
- (id)setupAssetWriterWithWidth:(int)width height:(int)height transactionID:(id)d;
- (id)setupAudioAssetWriterWithTransactionID:(id)d;
- (id)setupLivePhotoAssetWithTransactionID:(id)d;
- (void)appendAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer mediaType:(unsigned __int8)type;
- (void)appendMetaData;
- (void)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer cameraStatus:(unsigned __int8)status mediaType:(unsigned __int8)type;
- (void)cleanupAssetWriter;
- (void)completeWriting;
- (void)dealloc;
- (void)finishWritingWithHandler:(id)handler;
- (void)processSampleQueue:(opaqueCMBufferQueue *)queue input:(id)input lastPresentationTime:(id *)time;
- (void)setMovieFragmentInterval:(id *)interval;
- (void)setStillImageTime:(id *)time;
- (void)setupInput:(id)input queue:(opaqueCMBufferQueue *)queue dispatchGroup:(id)group lastPresentationTime:(id *)time;
- (void)setupInputs;
- (void)setupVisibleRect:(CGRect)rect withCaptureHeight:(int)height;
- (void)startWritingAtTime:(id *)time;
@end

@implementation VCMovieWriter

- (VCMovieWriter)initWithOutputURL:(id)l transactionID:(id)d videoCodec:(unsigned int)codec keyFrameIntervalDuration:(double)duration
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = VCMovieWriter;
  v10 = [(VCObject *)&v21 init];
  if (v10)
  {
    *(v10 + 43) = [l copy];
    *(v10 + 21) = [d copy];
    v11 = MEMORY[0x1E6960C70];
    v12 = *MEMORY[0x1E6960C70];
    *(v10 + 11) = *MEMORY[0x1E6960C70];
    v13 = *(v11 + 16);
    *(v10 + 24) = v13;
    *(v10 + 200) = v12;
    *(v10 + 27) = v13;
    *(v10 + 14) = v12;
    *(v10 + 30) = v13;
    *(v10 + 17) = v12;
    v20 = v12;
    *(v10 + 36) = v13;
    v10[352] = 2;
    *(v10 + 89) = 0;
    *(v10 + 90) = 0;
    *(v10 + 111) = 0;
    *(v10 + 248) = v12;
    *(v10 + 33) = v13;
    v14 = *MEMORY[0x1E695E480];
    CallbacksForSampleBuffersSortedByOutputPTS = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
    CMBufferQueueCreate(v14, 0, CallbacksForSampleBuffersSortedByOutputPTS, v10 + 46);
    v16 = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
    CMBufferQueueCreate(v14, 0, v16, v10 + 47);
    v17 = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
    CMBufferQueueCreate(v14, 0, v17, v10 + 48);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    *(v10 + 49) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMovieWriter.serializationQueue", 0, CustomRootQueue);
    *(v10 + 110) = codec;
    *(v10 + 57) = duration;
    *(v10 + 61) = v13;
    *(v10 + 472) = v20;
  }

  return v10;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];

  [(VCMovieWriter *)self cleanupAssetWriter];
  videoQueue = self->_videoQueue;
  if (videoQueue)
  {
    CFRelease(videoQueue);
  }

  localAudioQueue = self->_localAudioQueue;
  if (localAudioQueue)
  {
    CFRelease(localAudioQueue);
  }

  remoteAudioQueue = self->_remoteAudioQueue;
  if (remoteAudioQueue)
  {
    CFRelease(remoteAudioQueue);
  }

  _Block_release(self->_completionHandler);
  transferSession = self->_transferSession;
  if (transferSession)
  {
    VTPixelTransferSessionInvalidate(transferSession);
    v7 = self->_transferSession;
    if (v7)
    {
      CFRelease(v7);
      self->_transferSession = 0;
    }
  }

  bufferPool = self->_bufferPool;
  if (bufferPool)
  {
    CVPixelBufferPoolRelease(bufferPool);
    self->_bufferPool = 0;
  }

  serializationQueue = self->_serializationQueue;
  if (serializationQueue)
  {
    dispatch_release(serializationQueue);
    self->_serializationQueue = 0;
  }

  v10.receiver = self;
  v10.super_class = VCMovieWriter;
  [(VCObject *)&v10 dealloc];
}

- (void)setupVisibleRect:(CGRect)rect withCaptureHeight:(int)height
{
  if (self->_transferSession || self->_bufferPool)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMovieWriter setupVisibleRect:withCaptureHeight:];
      }
    }
  }

  else
  {
    self->_visibleWidth = rect.size.width * height / rect.size.height;
    self->_visibleHeight = height;
    self->_visibleWidth = (self->_visibleWidth & 0xFFFFFFFC);
    self->_visibleHeight = (self->_visibleHeight & 0xFFFFFFFC);
    self->_transferSession = VCMediaRecorderUtil_AllocTransferSession();
    visibleWidth = self->_visibleWidth;
    visibleHeight = self->_visibleHeight;

    VCMediaRecorderUtil_SetupBufferPool(@"AVConference:MovieWriter", &self->_bufferPool, visibleWidth, visibleHeight);
  }
}

- (void)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer cameraStatus:(unsigned __int8)status mediaType:(unsigned __int8)type
{
  typeCopy = type;
  statusCopy = status;
  v46 = *MEMORY[0x1E69E9840];
  if (CMBufferQueueContainsEndOfData(self->_videoQueue))
  {
    [VCMovieWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
    return;
  }

  if (!self->_assetWriter && !VCMediaWriterUtil_IsAudioOnly(self->_writerMode))
  {
    if (VCDefaults_GetManagedBoolValueForKey(@"enableLocalVideoRecording", 0))
    {
      visibleWidth = self->_visibleWidth;
      if (visibleWidth == 0.0 || (Height = self->_visibleHeight, Height == 0.0))
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
        self->_visibleWidth = CVPixelBufferGetWidth(ImageBuffer);
        v12 = CMSampleBufferGetImageBuffer(buffer);
        Height = CVPixelBufferGetHeight(v12);
        self->_visibleHeight = Height;
        visibleWidth = self->_visibleWidth;
      }

      [(VCMovieWriter *)self setupVisibleRect:Height withCaptureHeight:0.0, 0.0, visibleWidth];
      CMSampleBufferGetPresentationTimeStamp(&time, buffer);
      [(VCMovieWriter *)self setStillImageTime:&time];
    }

    v13 = [(VCMovieWriter *)self setupAssetWriterWithWidth:self->_visibleWidth height:self->_visibleHeight transactionID:self->_transactionID];
    if (v13)
    {
      [VCMovieWriter appendVideoSampleBuffer:v13 cameraStatus:? mediaType:?];
      return;
    }
  }

  v14 = CMSampleBufferGetImageBuffer(buffer);
  memset(&v29, 170, sizeof(v29));
  CMSampleBufferGetPresentationTimeStamp(&v29, buffer);
  Width = CVPixelBufferGetWidth(v14);
  v16 = CVPixelBufferGetHeight(v14);
  ResizeFrame = VCMediaRecorderUtil_CreateResizeFrame(v14, self->_transferSession, self->_bufferPool);
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_16;
  }

  v18 = VRTraceErrorLogLevelToCSTR();
  v19 = *MEMORY[0x1E6986650];
  v20 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      time = v29;
      Seconds = CMTimeGetSeconds(&time);
      v22 = CVPixelBufferGetWidth(ResizeFrame);
      v23 = CVPixelBufferGetHeight(ResizeFrame);
      LODWORD(time.value) = 136317442;
      *(&time.value + 4) = v18;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "[VCMovieWriter appendVideoSampleBuffer:cameraStatus:mediaType:]";
      HIWORD(time.epoch) = 1024;
      v31 = 173;
      v32 = 1024;
      v33 = statusCopy;
      v34 = 1024;
      v35 = typeCopy;
      v36 = 2048;
      v37 = Width;
      v38 = 2048;
      v39 = v16;
      v40 = 2048;
      v41 = Seconds;
      v42 = 2048;
      v43 = v22;
      v44 = 2048;
      v45 = v23;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cameraStatus=0x%02x, type=%d, originalWidth=%lu, originalHeight=%lu, presentationTime=%f, width=%lu, height=%lu", &time, 0x5Au);
      if (!ResizeFrame)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

LABEL_16:
    if (ResizeFrame)
    {
      goto LABEL_17;
    }

LABEL_23:
    [VCMovieWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
    return;
  }

  if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_16;
  }

  time = v29;
  v26 = CMTimeGetSeconds(&time);
  v27 = CVPixelBufferGetWidth(ResizeFrame);
  v28 = CVPixelBufferGetHeight(ResizeFrame);
  LODWORD(time.value) = 136317442;
  *(&time.value + 4) = v18;
  LOWORD(time.flags) = 2080;
  *(&time.flags + 2) = "[VCMovieWriter appendVideoSampleBuffer:cameraStatus:mediaType:]";
  HIWORD(time.epoch) = 1024;
  v31 = 173;
  v32 = 1024;
  v33 = statusCopy;
  v34 = 1024;
  v35 = typeCopy;
  v36 = 2048;
  v37 = Width;
  v38 = 2048;
  v39 = v16;
  v40 = 2048;
  v41 = v26;
  v42 = 2048;
  v43 = v27;
  v44 = 2048;
  v45 = v28;
  _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d cameraStatus=0x%02x, type=%d, originalWidth=%lu, originalHeight=%lu, presentationTime=%f, width=%lu, height=%lu", &time, 0x5Au);
  if (!ResizeFrame)
  {
    goto LABEL_23;
  }

LABEL_17:
  time = v29;
  SampleBufferWithPixelBuffer = createSampleBufferWithPixelBuffer(ResizeFrame, &time.value);
  v25 = CMBufferQueueEnqueue(self->_videoQueue, SampleBufferWithPixelBuffer);
  FigSampleBufferRelease();
  if (v25 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMovieWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
    }
  }

  CVPixelBufferRelease(ResizeFrame);
}

- (void)appendAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer mediaType:(unsigned __int8)type
{
  if (type == 1)
  {
    v6 = &OBJC_IVAR___VCMovieWriter__localAudioQueue;
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_10;
    }

    v6 = &OBJC_IVAR___VCMovieWriter__remoteAudioQueue;
  }

  v7 = *v6;
  v8 = *(&self->super.super.isa + v7);
  if (v8)
  {
    if (CMBufferQueueContainsEndOfData(*(&self->super.super.isa + v7)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMovieWriter appendAudioSampleBuffer:mediaType:];
        }
      }
    }

    else
    {
      if (!self->_assetWriter && VCMediaWriterUtil_IsAudioOnly(self->_writerMode))
      {
        [(VCMovieWriter *)self setupAudioAssetWriterWithTransactionID:self->_transactionID];
      }

      if (CMBufferQueueEnqueue(v8, buffer))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMovieWriter appendAudioSampleBuffer:mediaType:];
          }
        }
      }
    }

    return;
  }

LABEL_10:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMovieWriter appendAudioSampleBuffer:mediaType:];
    }
  }
}

- (BOOL)shouldAppendSampleBuffer:(opaqueCMSampleBuffer *)buffer RTPtimeStamp:(unsigned int)stamp mediaType:(unsigned __int8)type
{
  v17 = *MEMORY[0x1E69E9840];
  IsMediaExpected = VCMediaWriterUtil_IsMediaExpected(type, self->_writerMode);
  if (IsMediaExpected)
  {
    if (self->_writerMode - 2 > 2)
    {
      if ((self->_startTime.flags & 1) == 0)
      {
        stillImageTime = self->_stillImageTime;
        Seconds = CMTimeGetSeconds(&stillImageTime);
        CMSampleBufferGetPresentationTimeStamp(&stillImageTime, buffer);
        if (Seconds - CMTimeGetSeconds(&stillImageTime) <= 1.0)
        {
LABEL_10:
          LOBYTE(IsMediaExpected) = 1;
          return IsMediaExpected;
        }
      }

      CMSampleBufferGetPresentationTimeStamp(&stillImageTime, buffer);
      v11 = CMTimeGetSeconds(&stillImageTime);
      stillImageTime = self->_startTime;
      LOBYTE(IsMediaExpected) = v11 - CMTimeGetSeconds(&stillImageTime) < 3.0;
    }

    else
    {
      mediaState = self->_mediaState;
      if (mediaState - 1 < 2)
      {
        if (self->_isEndRTPTimestampSet && self->_endRTPTimeStamp < stamp)
        {
LABEL_20:
          LOBYTE(IsMediaExpected) = 0;
          return IsMediaExpected;
        }

        goto LABEL_10;
      }

      if (mediaState)
      {
        goto LABEL_20;
      }

      startRTPTimeStamp = self->_startRTPTimeStamp;
      v13 = stamp - startRTPTimeStamp < 0x7FFFFFFF && stamp < startRTPTimeStamp;
      if (stamp <= startRTPTimeStamp && !v13)
      {
        goto LABEL_20;
      }

      LOBYTE(IsMediaExpected) = 1;
      self->_mediaState = 1;
    }
  }

  return IsMediaExpected;
}

- (BOOL)shouldFinishWritingSampleBuffer:(opaqueCMSampleBuffer *)buffer RTPtimeStamp:(unsigned int)stamp mediaType:(unsigned __int8)type
{
  v46 = *MEMORY[0x1E69E9840];
  IsMediaExpected = VCMediaWriterUtil_IsMediaExpected(type, self->_writerMode);
  if (IsMediaExpected)
  {
    if (self->_writerMode - 2 <= 2)
    {
      if (self->_mediaState == 1 && self->_isEndRTPTimestampSet)
      {
        endRTPTimeStamp = self->_endRTPTimeStamp;
        v10 = stamp >= endRTPTimeStamp;
        v11 = stamp - endRTPTimeStamp;
        if (v11 != 0 && v10)
        {
          goto LABEL_38;
        }

        if (!v10 && v11 < 0x7FFFFFFF)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_28;
    }

    if (!buffer)
    {
      goto LABEL_28;
    }

    if (CMBufferQueueContainsEndOfData(self->_videoQueue))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_28;
        }

        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        IsMediaExpected = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!IsMediaExpected)
        {
          return IsMediaExpected;
        }

        LODWORD(startTime.value) = 136315650;
        *(&startTime.value + 4) = v17;
        LOWORD(startTime.flags) = 2080;
        *(&startTime.flags + 2) = "[VCMovieWriter shouldFinishWritingSampleBuffer:RTPtimeStamp:mediaType:]";
        HIWORD(startTime.epoch) = 1024;
        v37 = 266;
        v19 = " [%s] %s:%d finishWritingWithHandler was executed, return NO";
        v20 = v18;
        v21 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v13 = [(VCMovieWriter *)self performSelector:sel_logPrefix];
        }

        else
        {
          v13 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_28;
        }

        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        IsMediaExpected = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!IsMediaExpected)
        {
          return IsMediaExpected;
        }

        LODWORD(startTime.value) = 136316162;
        *(&startTime.value + 4) = v22;
        LOWORD(startTime.flags) = 2080;
        *(&startTime.flags + 2) = "[VCMovieWriter shouldFinishWritingSampleBuffer:RTPtimeStamp:mediaType:]";
        HIWORD(startTime.epoch) = 1024;
        v37 = 266;
        v38 = 2112;
        v39 = *&v13;
        v40 = 2048;
        v41 = *&self;
        v19 = " [%s] %s:%d %@(%p) finishWritingWithHandler was executed, return NO";
        v20 = v23;
        v21 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &startTime, v21);
      goto LABEL_28;
    }

    CMSampleBufferGetPresentationTimeStamp(&startTime, buffer);
    Seconds = CMTimeGetSeconds(&startTime);
    p_startTime = &self->_startTime;
    startTime = self->_startTime;
    if (Seconds - CMTimeGetSeconds(&startTime) <= 3.0)
    {
LABEL_28:
      LOBYTE(IsMediaExpected) = 0;
      return IsMediaExpected;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_38;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      startTime = self->_stillImageTime;
      v26 = CMTimeGetSeconds(&startTime);
      *&startTime.value = *&p_startTime->value;
      startTime.epoch = self->_startTime.epoch;
      v27 = CMTimeGetSeconds(&startTime);
      LODWORD(startTime.value) = 136316162;
      *(&startTime.value + 4) = v24;
      LOWORD(startTime.flags) = 2080;
      *(&startTime.flags + 2) = "[VCMovieWriter shouldFinishWritingSampleBuffer:RTPtimeStamp:mediaType:]";
      HIWORD(startTime.epoch) = 1024;
      v37 = 270;
      v38 = 2048;
      v39 = v26;
      v40 = 2048;
      v41 = v27;
      v28 = " [%s] %s:%d PresentationTime=%f, startTime=%f";
      v29 = v25;
      v30 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCMovieWriter *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_38;
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      startTime = self->_stillImageTime;
      v33 = CMTimeGetSeconds(&startTime);
      *&startTime.value = *&p_startTime->value;
      startTime.epoch = self->_startTime.epoch;
      v34 = CMTimeGetSeconds(&startTime);
      LODWORD(startTime.value) = 136316674;
      *(&startTime.value + 4) = v31;
      LOWORD(startTime.flags) = 2080;
      *(&startTime.flags + 2) = "[VCMovieWriter shouldFinishWritingSampleBuffer:RTPtimeStamp:mediaType:]";
      HIWORD(startTime.epoch) = 1024;
      v37 = 270;
      v38 = 2112;
      v39 = *&v16;
      v40 = 2048;
      v41 = *&self;
      v42 = 2048;
      v43 = v33;
      v44 = 2048;
      v45 = v34;
      v28 = " [%s] %s:%d %@(%p) PresentationTime=%f, startTime=%f";
      v29 = v32;
      v30 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &startTime, v30);
LABEL_38:
    LOBYTE(IsMediaExpected) = 1;
  }

  return IsMediaExpected;
}

- (void)setStillImageTime:(id *)time
{
  v12 = *MEMORY[0x1E69E9840];
  p_stillImageTime = &self->_stillImageTime;
  var3 = time->var3;
  *&self->_stillImageTime.value = *&time->var0;
  self->_stillImageTime.epoch = var3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *p_stillImageTime;
      Seconds = CMTimeGetSeconds(&v8);
      LODWORD(v8.value) = 136315906;
      *(&v8.value + 4) = v5;
      LOWORD(v8.flags) = 2080;
      *(&v8.flags + 2) = "[VCMovieWriter setStillImageTime:]";
      HIWORD(v8.epoch) = 1024;
      v9 = 279;
      v10 = 2048;
      v11 = Seconds;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _stillImageTime=%f", &v8, 0x26u);
    }
  }
}

- (void)finishWritingWithHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  self->_finishWritingInvoked = 1;
  status = [(AVAssetWriter *)self->_assetWriter status];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136315906;
        *&v24[4] = v7;
        *&v24[12] = 2080;
        *&v24[14] = "[VCMovieWriter finishWritingWithHandler:]";
        *&v24[22] = 1024;
        LODWORD(v25) = 285;
        WORD2(v25) = 2048;
        *(&v25 + 6) = status;
        v9 = " [%s] %s:%d _assetWriter.status=%ld";
        v10 = v8;
        v11 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v24, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCMovieWriter *)self performSelector:sel_logPrefix];
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
        *v24 = 136316418;
        *&v24[4] = v12;
        *&v24[12] = 2080;
        *&v24[14] = "[VCMovieWriter finishWritingWithHandler:]";
        *&v24[22] = 1024;
        LODWORD(v25) = 285;
        WORD2(v25) = 2112;
        *(&v25 + 6) = v6;
        HIWORD(v25) = 2048;
        selfCopy2 = self;
        *v27 = 2048;
        *&v27[2] = status;
        v9 = " [%s] %s:%d %@(%p) _assetWriter.status=%ld";
        v10 = v13;
        v11 = 58;
        goto LABEL_11;
      }
    }
  }

  if (status != AVAssetWriterStatusWriting)
  {
    if (!handler)
    {
      return;
    }

    error = [(AVAssetWriter *)self->_assetWriter error];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_26;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *v24 = 136316162;
      *&v24[4] = v17;
      *&v24[12] = 2080;
      *&v24[14] = "[VCMovieWriter finishWritingWithHandler:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 298;
      WORD2(v25) = 2048;
      *(&v25 + 6) = status;
      HIWORD(v25) = 2112;
      selfCopy2 = error;
      v19 = " [%s] %s:%d Invalid assetWriter status=%ld, error=%@";
      v20 = v18;
      v21 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCMovieWriter *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v22 = VRTraceErrorLogLevelToCSTR(), v23 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_26:
        if (error)
        {
LABEL_28:
          (*(handler + 2))(handler, 0, error);
          return;
        }

LABEL_27:
        error = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMovieWriter" code:-1 userInfo:{0, *v24, *&v24[16], v25, selfCopy2, *v27, *&v27[16]}];
        goto LABEL_28;
      }

      *v24 = 136316674;
      *&v24[4] = v22;
      *&v24[12] = 2080;
      *&v24[14] = "[VCMovieWriter finishWritingWithHandler:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 298;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v16;
      HIWORD(v25) = 2048;
      selfCopy2 = self;
      *v27 = 2048;
      *&v27[2] = status;
      *&v27[10] = 2112;
      *&v27[12] = error;
      v19 = " [%s] %s:%d %@(%p) Invalid assetWriter status=%ld, error=%@";
      v20 = v23;
      v21 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, v24, v21);
    if (error)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  self->_mediaState = 2;
  completionHandler = self->_completionHandler;
  self->_completionHandler = _Block_copy(handler);
  if (completionHandler)
  {
    _Block_release(completionHandler);
  }

  CMBufferQueueMarkEndOfData(self->_videoQueue);
  CMBufferQueueMarkEndOfData(self->_localAudioQueue);
  CMBufferQueueMarkEndOfData(self->_remoteAudioQueue);
}

- (id)setupLivePhotoAssetWithTransactionID:(id)d
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E6988050]);
  v6 = v5;
  if (!v5)
  {
    [VCMovieWriter setupLivePhotoAssetWithTransactionID:];
LABEL_7:
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMovieWriter" code:-2 userInfo:0];
    v9 = 0;
    goto LABEL_4;
  }

  [v5 setKey:@"com.apple.quicktime.content.identifier"];
  [v6 setKeySpace:@"mdta"];
  [v6 setValue:d];
  v7 = *MEMORY[0x1E69602B8];
  [v6 setDataType:*MEMORY[0x1E69602B8]];
  v8 = objc_alloc_init(MEMORY[0x1E6988050]);
  if (!v8)
  {
    [VCMovieWriter setupLivePhotoAssetWithTransactionID:];
    goto LABEL_7;
  }

  v9 = v8;
  [v8 setKey:*MEMORY[0x1E69878C8]];
  [v9 setKeySpace:*MEMORY[0x1E6987850]];
  [v9 setValue:@"FaceTime"];
  [v9 setDataType:v7];
  v12[0] = v6;
  v12[1] = v9;
  -[AVAssetWriter setMetadata:](self->_assetWriter, "setMetadata:", [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2]);
  v10 = 0;
LABEL_4:

  return v10;
}

- (id)addAudioTrackForLocalAudio:(BOOL)audio
{
  audioCopy = audio;
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v19 = 0;
  v22 = 0;
  v21 = 0;
  v18 = 6619138;
  v5 = *MEMORY[0x1E6958300];
  v16[0] = *MEMORY[0x1E69582B0];
  v16[1] = v5;
  v17[0] = &unk_1F579B820;
  v17[1] = &unk_1F579B838;
  v17[2] = &unk_1F579E4E0;
  v6 = *MEMORY[0x1E6958258];
  v16[2] = *MEMORY[0x1E6958348];
  v16[3] = v6;
  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&v18 length:32];
  v16[4] = *MEMORY[0x1E6958280];
  v17[3] = v7;
  v17[4] = &unk_1F579B850;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v9 = objc_alloc(MEMORY[0x1E6987EE0]);
  v10 = [v9 initWithMediaType:*MEMORY[0x1E69875A0] outputSettings:v8];
  if (v10)
  {
    v11 = v10;
    [(objc_class *)v10 setExpectsMediaDataInRealTime:1];
    [(AVAssetWriter *)self->_assetWriter addInput:v11];
    if (audioCopy)
    {
      v12 = 0;
      v13 = 312;
    }

    else
    {
      v12 = 0;
      v13 = 320;
    }

    *(&self->super.super.isa + v13) = v11;
  }

  else
  {
    [(VCMovieWriter *)audioCopy addAudioTrackForLocalAudio:?];
    return v15;
  }

  return v12;
}

- (id)addVideoTrackWithWidth:(int)width height:(int)height
{
  v4 = *&height;
  v5 = *&width;
  v37[5] = *MEMORY[0x1E69E9840];
  if (VCDefaults_GetManagedBoolValueForKey(@"enableLocalVideoRecording", 0))
  {
    v7 = &unk_1F579B880;
  }

  else
  {
    v7 = &unk_1F579B868;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = *MEMORY[0x1E6987DB8];
  codec = self->_codec;
  v36[0] = *MEMORY[0x1E6987D40];
  v36[1] = v9;
  v11 = MEMORY[0x1E6987DB0];
  if (codec != 1635148593)
  {
    v11 = MEMORY[0x1E6983FA0];
  }

  v12 = *v11;
  v37[0] = &unk_1F579B898;
  v37[1] = v12;
  v13 = *MEMORY[0x1E6987C60];
  v37[2] = v7;
  v14 = *MEMORY[0x1E6987D80];
  v36[2] = v13;
  v36[3] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:(self->_keyFrameIntervalDuration * 30.0)];
  v36[4] = *MEMORY[0x1E6987C50];
  v37[3] = v15;
  v37[4] = MEMORY[0x1E695E110];
  [dictionary addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v37, v36, 5)}];
  v16 = *MEMORY[0x1E6987D10];
  v17 = *MEMORY[0x1E6987DE8];
  v34[0] = *MEMORY[0x1E6987D08];
  v34[1] = v17;
  v18 = *MEMORY[0x1E6987DF8];
  v35[0] = v16;
  v35[1] = v18;
  v34[2] = *MEMORY[0x1E6987E10];
  v35[2] = *MEMORY[0x1E6987E18];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
  v20 = MEMORY[0x1E695DF90];
  v21 = *MEMORY[0x1E6987CB0];
  v22 = MEMORY[0x1E6987CF0];
  if (self->_codec == 1635148593)
  {
    v22 = MEMORY[0x1E6987CA0];
  }

  v33[0] = *v22;
  v23 = *MEMORY[0x1E6987E08];
  v32[0] = v21;
  v32[1] = v23;
  v33[1] = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v32[2] = *MEMORY[0x1E6987D70];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v25 = *MEMORY[0x1E6987D30];
  v33[2] = v24;
  v33[3] = dictionary;
  v26 = *MEMORY[0x1E6987D20];
  v32[3] = v25;
  v32[4] = v26;
  v33[4] = v19;
  v27 = [v20 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v33, v32, 5)}];
  v28 = objc_alloc(MEMORY[0x1E6987EE0]);
  v29 = [v28 initWithMediaType:*MEMORY[0x1E6987608] outputSettings:v27];
  self->_videoInput = v29;
  if (v29)
  {
    [(AVAssetWriterInput *)v29 setExpectsMediaDataInRealTime:1];
    [(AVAssetWriter *)self->_assetWriter addInput:self->_videoInput];
    return 0;
  }

  else
  {
    [VCMovieWriter addVideoTrackWithWidth:? height:?];
    return v31;
  }
}

- (id)addStillImageMetadataTrackWithTransactionID:(id)d
{
  v19[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v5 = *MEMORY[0x1E6960338];
  v17[0] = *MEMORY[0x1E6960348];
  v17[1] = v5;
  v6 = *MEMORY[0x1E6960288];
  v18[0] = *MEMORY[0x1E69629E0];
  v18[1] = v6;
  v19[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v7, &cf);
  if (cf)
  {
    v8 = objc_alloc(MEMORY[0x1E6987EE0]);
    v9 = [v8 initWithMediaType:*MEMORY[0x1E69875D0] outputSettings:0 sourceFormatHint:cf];
    if (v9)
    {
      v10 = v9;
      self->_metadataInput = v9;
      v11 = [objc_alloc(MEMORY[0x1E6987EF8]) initWithAssetWriterInput:self->_metadataInput];
      if (v11)
      {
        v12 = v11;
        self->_adapter = v11;
        -[AVAssetWriter addInput:](self->_assetWriter, "addInput:", [v12 assetWriterInput]);
        v13 = 0;
        self->_hasStillImageMetadataTrack = 1;
        goto LABEL_5;
      }

      [(VCMovieWriter *)d addStillImageMetadataTrackWithTransactionID:v10, &v16];
    }

    else
    {
      [(VCMovieWriter *)d addStillImageMetadataTrackWithTransactionID:?];
    }
  }

  else
  {
    [(VCMovieWriter *)d addStillImageMetadataTrackWithTransactionID:?];
  }

  v10 = v16;
  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMovieWriter" code:-2 userInfo:0];
  v12 = 0;
LABEL_5:

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

- (id)setupAssetWriterWithWidth:(int)width height:(int)height transactionID:(id)d
{
  v6 = *&height;
  v7 = *&width;
  v27 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "[VCMovieWriter setupAssetWriterWithWidth:height:transactionID:]";
      *&buf[22] = 1024;
      v22 = 454;
      v23 = 1024;
      *v24 = v7;
      *&v24[4] = 1024;
      *&v24[6] = v6;
      *v25 = 2112;
      *&v25[2] = d;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d width=%d, height=%d, transactionID=%@", buf, 0x32u);
    }
  }

  v20 = 0;
  if (v7 && v6)
  {
    v11 = MEMORY[0x1E6960C70];
    v12 = *MEMORY[0x1E6960C70];
    *&self->_lastVideoPresentationTime.value = *MEMORY[0x1E6960C70];
    v13 = *(v11 + 16);
    self->_lastVideoPresentationTime.epoch = v13;
    *&self->_lastLocalAudioPresentationTime.value = v12;
    self->_lastLocalAudioPresentationTime.epoch = v13;
    *&self->_lastRemoteAudioPresentationTime.value = v12;
    self->_lastRemoteAudioPresentationTime.epoch = v13;
    v14 = objc_alloc(MEMORY[0x1E6987ED8]);
    self->_assetWriter = [v14 initWithURL:self->_outputURL fileType:*MEMORY[0x1E69874C0] error:&v20];
    if (v20)
    {
      [VCMovieWriter setupAssetWriterWithWidth:height:transactionID:];
    }

    else
    {
      v20 = [(VCMovieWriter *)self setupLivePhotoAssetWithTransactionID:d];
      if (v20)
      {
        [VCMovieWriter setupAssetWriterWithWidth:height:transactionID:];
      }

      else
      {
        v20 = [(VCMovieWriter *)self addVideoTrackWithWidth:v7 height:v6];
        if (v20)
        {
          [VCMovieWriter setupAssetWriterWithWidth:height:transactionID:];
        }

        else if (VCMediaWriterUtil_IsMediaExpected(1, self->_writerMode) && (v20 = [(VCMovieWriter *)self addAudioTrackForLocalAudio:1]) != 0)
        {
          [VCMovieWriter setupAssetWriterWithWidth:height:transactionID:];
        }

        else if (VCMediaWriterUtil_IsMediaExpected(2, self->_writerMode) && (v20 = [(VCMovieWriter *)self addAudioTrackForLocalAudio:0]) != 0)
        {
          [VCMovieWriter setupAssetWriterWithWidth:height:transactionID:];
        }

        else if (self->_writerMode == 1 && (v20 = [(VCMovieWriter *)self addStillImageMetadataTrackWithTransactionID:d]) != 0)
        {
          [VCMovieWriter setupAssetWriterWithWidth:height:transactionID:];
        }

        else
        {
          if (self->_movieFragmentInterval.flags)
          {
            *buf = *&self->_movieFragmentInterval.value;
            *&buf[16] = self->_movieFragmentInterval.epoch;
            [(AVAssetWriter *)self->_assetWriter setMovieFragmentInterval:buf];
          }

          if (![(AVAssetWriter *)self->_assetWriter startWriting]&& VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              status = [(AVAssetWriter *)self->_assetWriter status];
              error = [(AVAssetWriter *)self->_assetWriter error];
              *buf = 136316418;
              *&buf[4] = v15;
              *&buf[12] = 2080;
              *&buf[14] = "[VCMovieWriter setupAssetWriterWithWidth:height:transactionID:]";
              *&buf[22] = 1024;
              v22 = 492;
              v23 = 2112;
              *v24 = d;
              *&v24[8] = 2048;
              *v25 = status;
              *&v25[8] = 2112;
              v26 = error;
              _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d assetWriter startWriting failed, transactionID=%@, status=%ld, error=%@", buf, 0x3Au);
            }
          }

          [(VCMovieWriter *)self setupInputs];
        }
      }
    }

    if (v20)
    {
      [(VCMovieWriter *)self cleanupAssetWriter];
      return v20;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMovieWriter setupAssetWriterWithWidth:height:transactionID:];
      }
    }

    return [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMovieWriter" code:-3 userInfo:0];
  }
}

- (id)setupAudioAssetWriterWithTransactionID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  *&self->_lastVideoPresentationTime.value = *MEMORY[0x1E6960C70];
  v7 = *(v5 + 16);
  self->_lastVideoPresentationTime.epoch = v7;
  *&self->_lastLocalAudioPresentationTime.value = v6;
  self->_lastLocalAudioPresentationTime.epoch = v7;
  *&self->_lastRemoteAudioPresentationTime.value = v6;
  self->_lastRemoteAudioPresentationTime.epoch = v7;
  v8 = objc_alloc(MEMORY[0x1E6987ED8]);
  self->_assetWriter = [v8 initWithURL:self->_outputURL fileType:*MEMORY[0x1E69874C0] error:&v14];
  if (v14)
  {
    [VCMovieWriter setupAudioAssetWriterWithTransactionID:];
  }

  else if (VCMediaWriterUtil_IsMediaExpected(1, self->_writerMode) && (v14 = [(VCMovieWriter *)self addAudioTrackForLocalAudio:1]) != 0)
  {
    [VCMovieWriter setupAudioAssetWriterWithTransactionID:];
  }

  else if (VCMediaWriterUtil_IsMediaExpected(2, self->_writerMode) && (v14 = [(VCMovieWriter *)self addAudioTrackForLocalAudio:0]) != 0)
  {
    [VCMovieWriter setupAudioAssetWriterWithTransactionID:];
  }

  else
  {
    if (self->_movieFragmentInterval.flags)
    {
      *buf = *&self->_movieFragmentInterval.value;
      *&buf[16] = self->_movieFragmentInterval.epoch;
      [(AVAssetWriter *)self->_assetWriter setMovieFragmentInterval:buf];
    }

    if (![(AVAssetWriter *)self->_assetWriter startWriting]&& VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        status = [(AVAssetWriter *)self->_assetWriter status];
        error = [(AVAssetWriter *)self->_assetWriter error];
        *buf = 136316418;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "[VCMovieWriter setupAudioAssetWriterWithTransactionID:]";
        *&buf[22] = 1024;
        v16 = 525;
        v17 = 2112;
        dCopy = d;
        v19 = 2048;
        v20 = status;
        v21 = 2112;
        v22 = error;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d assetWriter startWriting failed, transactionID=%@, status=%ld, error=%@", buf, 0x3Au);
      }
    }

    [(VCMovieWriter *)self setupInputs];
  }

  if (!v14)
  {
    return 0;
  }

  [(VCMovieWriter *)self cleanupAssetWriter];
  return v14;
}

- (void)cleanupAssetWriter
{
  adapter = self->_adapter;
  if (adapter)
  {
    CFRelease(adapter);
    self->_adapter = 0;
  }

  metadataInput = self->_metadataInput;
  if (metadataInput)
  {
    CFRelease(metadataInput);
    self->_metadataInput = 0;
  }

  localAudioInput = self->_localAudioInput;
  if (localAudioInput)
  {
    CFRelease(localAudioInput);
    self->_localAudioInput = 0;
  }

  remoteAudioInput = self->_remoteAudioInput;
  if (remoteAudioInput)
  {
    CFRelease(remoteAudioInput);
    self->_remoteAudioInput = 0;
  }

  videoInput = self->_videoInput;
  if (videoInput)
  {
    CFRelease(videoInput);
    self->_videoInput = 0;
  }

  assetWriter = self->_assetWriter;
  if (assetWriter)
  {
    CFRelease(assetWriter);
    self->_assetWriter = 0;
  }
}

- (void)setupInput:(id)input queue:(opaqueCMBufferQueue *)queue dispatchGroup:(id)group lastPresentationTime:(id *)time
{
  v12[9] = *MEMORY[0x1E69E9840];
  dispatch_group_enter(group);
  serializationQueue = self->_serializationQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__VCMovieWriter_setupInput_queue_dispatchGroup_lastPresentationTime___block_invoke;
  v12[3] = &unk_1E85F70D0;
  v12[4] = self;
  v12[5] = input;
  v12[7] = queue;
  v12[8] = time;
  v12[6] = group;
  [input requestMediaDataWhenReadyOnQueue:serializationQueue usingBlock:v12];
}

void __69__VCMovieWriter_setupInput_queue_dispatchGroup_lastPresentationTime___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (CMBufferQueueIsAtEndOfData(*(a1 + 56)))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v2;
        v10 = 2080;
        v11 = "[VCMovieWriter setupInput:queue:dispatchGroup:lastPresentationTime:]_block_invoke";
        v12 = 1024;
        v13 = 551;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMovieWriter, finished writing", &v8, 0x1Cu);
      }
    }

    [*(a1 + 40) markAsFinished];
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);

    [v4 processSampleQueue:v6 input:v5 lastPresentationTime:v7];
  }
}

- (void)processSampleQueue:(opaqueCMBufferQueue *)queue input:(id)input lastPresentationTime:(id *)time
{
  v32 = *MEMORY[0x1E69E9840];
  if ([input isReadyForMoreMediaData])
  {
    do
    {
      v9 = CMBufferQueueDequeueAndRetain(queue);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      memset(&v23, 170, sizeof(v23));
      CMSampleBufferGetPresentationTimeStamp(&v23, v9);
      flags = v23.flags;
      if (!self->_writingStarted && (v23.flags & 1) != 0)
      {
        time1 = v23;
        [(VCMovieWriter *)self startWritingAtTime:&time1];
        *time = v23;
        flags = v23.flags;
      }

      if ((flags & 1) != 0 && (time1 = *time, time2 = v23, CMTimeCompare(&time1, &time2) < 0))
      {
        v14 = [input appendSampleBuffer:v10];
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          v17 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              error = [(AVAssetWriter *)self->_assetWriter error];
              time1 = v23;
              Seconds = CMTimeGetSeconds(&time1);
              LODWORD(time1.value) = 136316418;
              *(&time1.value + 4) = v15;
              LOWORD(time1.flags) = 2080;
              *(&time1.flags + 2) = "[VCMovieWriter processSampleQueue:input:lastPresentationTime:]";
              HIWORD(time1.epoch) = 1024;
              v25 = 569;
              v26 = 1024;
              v27 = v14;
              v28 = 2112;
              v29 = error;
              v30 = 2048;
              v31 = Seconds;
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMovieWriter, append success(%d) error(%@) for sampleTime(%f)", &time1, 0x36u);
            }
          }

          else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            error2 = [(AVAssetWriter *)self->_assetWriter error];
            time1 = v23;
            v19 = CMTimeGetSeconds(&time1);
            LODWORD(time1.value) = 136316418;
            *(&time1.value + 4) = v15;
            LOWORD(time1.flags) = 2080;
            *(&time1.flags + 2) = "[VCMovieWriter processSampleQueue:input:lastPresentationTime:]";
            HIWORD(time1.epoch) = 1024;
            v25 = 569;
            v26 = 1024;
            v27 = v14;
            v28 = 2112;
            v29 = error2;
            v30 = 2048;
            v31 = v19;
            _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCMovieWriter, append success(%d) error(%@) for sampleTime(%f)", &time1, 0x36u);
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          LODWORD(time1.value) = 136315650;
          *(&time1.value + 4) = v12;
          LOWORD(time1.flags) = 2080;
          *(&time1.flags + 2) = "[VCMovieWriter processSampleQueue:input:lastPresentationTime:]";
          HIWORD(time1.epoch) = 1024;
          v25 = 571;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d current time older than last frame", &time1, 0x1Cu);
        }
      }

      CFRelease(v10);
      *time = v23;
    }

    while (([input isReadyForMoreMediaData] & 1) != 0);
  }
}

- (void)appendMetaData
{
  if ([*(a2 + 296) error])
  {
    [objc_msgSend(objc_msgSend(*(a2 + 296) "error")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

- (void)startWritingAtTime:(id *)time
{
  v14 = *MEMORY[0x1E69E9840];
  self->_writingStarted = 1;
  var3 = time->var3;
  *&self->_startTime.value = *&time->var0;
  self->_startTime.epoch = var3;
  assetWriter = self->_assetWriter;
  v10 = *time;
  [(AVAssetWriter *)assetWriter startSessionAtSourceTime:&v10];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *time;
      Seconds = CMTimeGetSeconds(&v10);
      LODWORD(v10.var0) = 136315906;
      *(&v10.var0 + 4) = v7;
      LOWORD(v10.var2) = 2080;
      *(&v10.var2 + 2) = "[VCMovieWriter startWritingAtTime:]";
      HIWORD(v10.var3) = 1024;
      v11 = 618;
      v12 = 2048;
      v13 = Seconds;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMovieWriter, started writing at %f", &v10, 0x26u);
    }
  }

  if (self->_hasStillImageMetadataTrack)
  {
    [(VCMovieWriter *)self appendMetaData];
  }
}

- (void)completeWriting
{
  v43 = *MEMORY[0x1E69E9840];
  status = [(AVAssetWriter *)self->_assetWriter status];
  if (status == AVAssetWriterStatusCompleted)
  {
    v4 = 7;
  }

  else
  {
    v4 = 3;
  }

  if (objc_opt_class() == self)
  {
    if (v4 > VRTraceGetErrorLogLevelForModule())
    {
      goto LABEL_13;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (status == AVAssetWriterStatusCompleted)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        assetWriter = self->_assetWriter;
        outputURL = self->_outputURL;
        *v30 = 136316418;
        *&v30[4] = v6;
        *&v30[12] = 2080;
        *&v30[14] = "[VCMovieWriter completeWriting]";
        v31 = 1024;
        v32 = 628;
        v33 = 2112;
        v34 = assetWriter;
        v35 = 2112;
        selfCopy2 = outputURL;
        v37 = 2048;
        v38 = 2;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d assetWriter=%@ completed url=%@ with status=%ld", v30, 0x3Au);
      }

      goto LABEL_18;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v28 = self->_assetWriter;
    v29 = self->_outputURL;
    *v30 = 136316418;
    *&v30[4] = v6;
    *&v30[12] = 2080;
    *&v30[14] = "[VCMovieWriter completeWriting]";
    v31 = 1024;
    v32 = 628;
    v33 = 2112;
    v34 = v28;
    v35 = 2112;
    selfCopy2 = v29;
    v37 = 2048;
    v38 = status;
    v19 = " [%s] %s:%d assetWriter=%@ completed url=%@ with status=%ld";
    v20 = v7;
    v21 = 58;
LABEL_30:
    _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, v30, v21);
    goto LABEL_24;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCMovieWriter *)self performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (v4 > VRTraceGetErrorLogLevelForModule())
  {
LABEL_13:
    if (status == AVAssetWriterStatusCompleted)
    {
LABEL_18:
      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, self->_outputURL, 0);
      }

      VCMediaRecorderUtil_PrintMediaURL(self->_outputURL, 7);
      return;
    }

    goto LABEL_24;
  }

  v11 = VRTraceErrorLogLevelToCSTR();
  v12 = *MEMORY[0x1E6986650];
  v13 = *MEMORY[0x1E6986650];
  if (status == AVAssetWriterStatusCompleted)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_assetWriter;
      v15 = self->_outputURL;
      *v30 = 136316930;
      *&v30[4] = v11;
      *&v30[12] = 2080;
      *&v30[14] = "[VCMovieWriter completeWriting]";
      v31 = 1024;
      v32 = 628;
      v33 = 2112;
      v34 = v5;
      v35 = 2048;
      selfCopy2 = self;
      v37 = 2112;
      v38 = v14;
      v39 = 2112;
      v40 = v15;
      v41 = 2048;
      v42 = 2;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@(%p) assetWriter=%@ completed url=%@ with status=%ld", v30, 0x4Eu);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v17 = self->_assetWriter;
    v18 = self->_outputURL;
    *v30 = 136316930;
    *&v30[4] = v11;
    *&v30[12] = 2080;
    *&v30[14] = "[VCMovieWriter completeWriting]";
    v31 = 1024;
    v32 = 628;
    v33 = 2112;
    v34 = v5;
    v35 = 2048;
    selfCopy2 = self;
    v37 = 2112;
    v38 = v17;
    v39 = 2112;
    v40 = v18;
    v41 = 2048;
    v42 = status;
    v19 = " [%s] %s:%d %@(%p) assetWriter=%@ completed url=%@ with status=%ld";
    v20 = v12;
    v21 = 78;
    goto LABEL_30;
  }

LABEL_24:
  if (self->_completionHandler)
  {
    error = [(AVAssetWriter *)self->_assetWriter error];
    if (!error)
    {
      error = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMovieWriter" code:-1 userInfo:0];
    }

    (*(self->_completionHandler + 2))(self->_completionHandler, 0, error, v23, v24, v25, v26, v27, *v30, *&v30[8]);
  }
}

- (void)setupInputs
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  if (!VCMediaWriterUtil_IsAudioOnly(self->_writerMode))
  {
    [(VCMovieWriter *)self setupInput:self->_videoInput queue:self->_videoQueue dispatchGroup:v3 lastPresentationTime:&self->_lastVideoPresentationTime];
  }

  if (VCMediaWriterUtil_IsMediaExpected(1, self->_writerMode))
  {
    [(VCMovieWriter *)self setupInput:self->_localAudioInput queue:self->_localAudioQueue dispatchGroup:v3 lastPresentationTime:&self->_lastLocalAudioPresentationTime];
  }

  if (VCMediaWriterUtil_IsMediaExpected(2, self->_writerMode))
  {
    [(VCMovieWriter *)self setupInput:self->_remoteAudioInput queue:self->_remoteAudioQueue dispatchGroup:v3 lastPresentationTime:&self->_lastRemoteAudioPresentationTime];
  }

  serializationQueue = self->_serializationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__VCMovieWriter_setupInputs__block_invoke;
  v5[3] = &unk_1E85F3778;
  v5[4] = self;
  dispatch_group_notify(v3, serializationQueue, v5);
  dispatch_release(v3);
}

uint64_t __28__VCMovieWriter_setupInputs__block_invoke(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 296);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__VCMovieWriter_setupInputs__block_invoke_2;
  v4[3] = &unk_1E85F3778;
  v4[4] = v1;
  return [v2 finishWritingWithCompletionHandler:v4];
}

- (void)setMovieFragmentInterval:(id *)interval
{
  var3 = interval->var3;
  *&self->_movieFragmentInterval.value = *&interval->var0;
  self->_movieFragmentInterval.epoch = var3;
}

- (void)setupVisibleRect:withCaptureHeight:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 133;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d transferSession or Bufferpool is not NULL", v2);
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)appendVideoSampleBuffer:(uint64_t)a1 cameraStatus:mediaType:.cold.2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v5 = a1;
      OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v2, v3, " [%s] %s:%d setupAssetWriterWithWidth:height:transactionID: returned error=%@", v4);
    }
  }
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.3()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d appending video error is %d", v3, v4, v5, 180);
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)appendAudioSampleBuffer:mediaType:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 203;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMBufferQueueContainsEndOfData(audioQueue) returned true", v2);
}

- (void)appendAudioSampleBuffer:mediaType:.cold.2()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d appending audio error is %d", v3, v4, v5, 211);
}

- (void)appendAudioSampleBuffer:mediaType:.cold.3()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 201;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d audioQueue is NULL", v2);
}

- (void)setupLivePhotoAssetWithTransactionID:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupLivePhotoAssetWithTransactionID:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (uint64_t)addAudioTrackForLocalAudio:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v8) = 136315906;
      *(&v8 + 4) = v3;
      WORD6(v8) = 2080;
      OUTLINED_FUNCTION_7();
      v9 = 350;
      v10 = v6;
      v11 = v7;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate the audio track. isLocalAudio=%d", &v8, 0x22u);
    }
  }

  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMovieWriter" code:-2 userInfo:{0, v8}];
  *a2 = result;
  return result;
}

- (uint64_t)addVideoTrackWithWidth:(uint64_t *)a1 height:.cold.1(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_0();
      v6 = 408;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v2, v4, " [%s] %s:%d Failed to allocate the video writer input", v5);
    }
  }

  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMovieWriter" code:-2 userInfo:0];
  *a1 = result;
  return result;
}

- (void)addStillImageMetadataTrackWithTransactionID:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = v6;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v11 = a1;
      OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v7, v8, " [%s] %s:%d Failed to allocate the adapter, transactionID=%@", &v9);
    }
  }

  *a3 = a2;
}

- (void)addStillImageMetadataTrackWithTransactionID:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v9 = a1;
      OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to allocate the metadata input, transactionID=%@", &v7);
    }
  }

  *a2 = 0;
}

- (void)addStillImageMetadataTrackWithTransactionID:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v9 = a1;
      OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to allocate the metadata description, transactionID=%@", &v7);
    }
  }

  *a2 = 0;
}

- (void)setupAssetWriterWithWidth:height:transactionID:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)setupAssetWriterWithWidth:height:transactionID:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupAssetWriterWithWidth:height:transactionID:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupAssetWriterWithWidth:height:transactionID:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupAssetWriterWithWidth:height:transactionID:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupAssetWriterWithWidth:height:transactionID:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupAssetWriterWithWidth:height:transactionID:.cold.7()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 458;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Cannot set up asset writer with zero dimensions", v2);
}

- (void)setupAudioAssetWriterWithTransactionID:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)setupAudioAssetWriterWithTransactionID:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupAudioAssetWriterWithTransactionID:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

@end