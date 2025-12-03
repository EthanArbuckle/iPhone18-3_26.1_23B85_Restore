@interface AVCVideoDataOutput
- (AVCVideoDataOutput)initWithStreamToken:(int64_t)token delegate:(id)delegate queue:(id)queue error:(id *)error;
- (BOOL)parseVideoAttributes:(opaqueCMSampleBuffer *)attributes;
- (void)dealloc;
- (void)streamOutput:(id)output didDegrade:(BOOL)degrade;
- (void)streamOutput:(id)output didPause:(BOOL)pause;
- (void)streamOutput:(id)output didReceiveSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)streamOutput:(id)output didStall:(BOOL)stall;
- (void)streamOutput:(id)output didSuspend:(BOOL)suspend;
- (void)streamOutputDidBecomeInvalid:(id)invalid;
- (void)streamOutputServerDidDie:(id)die;
@end

@implementation AVCVideoDataOutput

- (AVCVideoDataOutput)initWithStreamToken:(int64_t)token delegate:(id)delegate queue:(id)queue error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = @"nil";
      }

      *buf = 136316674;
      *&buf[4] = v11;
      v20 = 2080;
      v21 = "[AVCVideoDataOutput initWithStreamToken:delegate:queue:error:]";
      v22 = 1024;
      v23 = 76;
      v24 = 2048;
      tokenCopy = token;
      v26 = 2112;
      delegateCopy = delegate;
      v28 = 2112;
      queueCopy = queue;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken=%ld, delegate=%@, queue=%@, error=%@", buf, 0x44u);
    }
  }

  v18.receiver = self;
  v18.super_class = AVCVideoDataOutput;
  v14 = [(AVCVideoDataOutput *)&v18 init];
  if (v14)
  {
    VRTraceReset();
    v15 = [[AVCStreamOutput alloc] initWithStreamToken:token delegate:v14 queue:queue error:error];
    v14->_streamOutput = v15;
    if (v15)
    {
      objc_storeWeak(&v14->_delegate, delegate);
      v14->_streamToken = token;
      v14->_isValid = 1;
      return v14;
    }

    [AVCVideoDataOutput initWithStreamToken:buf delegate:? queue:? error:?];
    v16 = *buf;
  }

  else
  {
    v16 = -4;
  }

  if (!error || *error)
  {
    return 0;
  }

  v14 = 0;
  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCVideoDataOutput" code:v16 userInfo:0];
  return v14;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_delegate, 0);
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  internalReceiverQueue = self->_internalReceiverQueue;
  if (internalReceiverQueue)
  {
    dispatch_release(internalReceiverQueue);
    self->_internalReceiverQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = AVCVideoDataOutput;
  [(AVCVideoDataOutput *)&v5 dealloc];
}

- (BOOL)parseVideoAttributes:(opaqueCMSampleBuffer *)attributes
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = CMGetAttachment(attributes, @"cameraStatusBits", 0);
  v6 = CMGetAttachment(attributes, @"contentsRect", 0);
  v7 = CMGetAttachment(attributes, @"aspectRatio", 0);
  v8 = v7;
  if (!self->_videoAttributes.videoAttributes)
  {
    if (v5)
    {
      v11 = v6 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11 && v7 != 0)
    {
      v13 = objc_alloc_init(VideoAttributes);
      self->_videoAttributes.videoAttributes = v13;
      if (v13)
      {
LABEL_19:
        LOBYTE(v16.origin.x) = 0;
        CFNumberGetValue(v5, kCFNumberSInt8Type, &v16);
        [(VideoAttributes *)self->_videoAttributes.videoAttributes updateCameraStatusBits:LOBYTE(v16.origin.x)];
        if (!v6)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v10)
        {
          return v10;
        }

        [AVCVideoDataOutput parseVideoAttributes:v14];
      }
    }

    LOBYTE(v10) = 0;
    return v10;
  }

  if (v5)
  {
    goto LABEL_19;
  }

  if (v6)
  {
LABEL_4:
    v9.width = NAN;
    v9.height = NAN;
    v16.origin = v9;
    v16.size = v9;
    CGRectMakeWithDictionaryRepresentation(v6, &v16);
    [(VideoAttributes *)self->_videoAttributes.videoAttributes setContentsRect:*&v16.origin, *&v16.size];
  }

LABEL_5:
  if (v8)
  {
    v16.origin.x = NAN;
    v16.origin.y = NAN;
    CGSizeMakeWithDictionaryRepresentation(v8, &v16);
    [(VideoAttributes *)self->_videoAttributes.videoAttributes setRatio:*&v16.origin];
  }

  [(AVCVideoDataOutputDelegate *)[(AVCVideoDataOutput *)self delegate] videoDataOutput:self didReceiveFrame:attributes videoAttributes:self->_videoAttributes.videoAttributes];
  LOBYTE(v10) = 1;
  return v10;
}

- (void)streamOutput:(id)output didReceiveSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if ([(AVCVideoDataOutput *)self parseVideoAttributes:buffer])
  {
    delegate = [(AVCVideoDataOutput *)self delegate];
    videoAttributes = self->_videoAttributes.videoAttributes;

    [(AVCVideoDataOutputDelegate *)delegate videoDataOutput:self didReceiveFrame:buffer videoAttributes:videoAttributes];
  }
}

- (void)streamOutputServerDidDie:(id)die
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVCVideoDataOutput streamOutputServerDidDie:v4];
    }
  }

  [(AVCVideoDataOutputDelegate *)[(AVCVideoDataOutput *)self delegate] videoDataOutputServerDidDie:self];
}

- (void)streamOutputDidBecomeInvalid:(id)invalid
{
  self->_isValid = 0;
  delegate = [(AVCVideoDataOutput *)self delegate];

  [(AVCVideoDataOutputDelegate *)delegate videoDataOutputDidBecomeInvalid:self];
}

- (void)streamOutput:(id)output didPause:(BOOL)pause
{
  pauseCopy = pause;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[AVCVideoDataOutput streamOutput:didPause:]";
      v13 = 1024;
      v14 = 184;
      v15 = 1024;
      v16 = pauseCopy;
      v17 = 1024;
      v18 = streamToken;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCVideoDataOutput callback: didPause=%d for streamToken=%u", &v9, 0x28u);
    }
  }

  self->_isVideoPaused = pauseCopy;
  [(AVCVideoDataOutput *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoDataOutputDelegate *)[(AVCVideoDataOutput *)self delegate] videoDataOutput:self videoDidPause:pauseCopy];
  }
}

- (void)streamOutput:(id)output didStall:(BOOL)stall
{
  stallCopy = stall;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[AVCVideoDataOutput streamOutput:didStall:]";
      v13 = 1024;
      v14 = 193;
      v15 = 1024;
      v16 = stallCopy;
      v17 = 1024;
      v18 = streamToken;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCVideoDataOutput callback: mediaDidStall=%d for streamToken=%u", &v9, 0x28u);
    }
  }

  self->_isMediaStalled = stallCopy;
  [(AVCVideoDataOutput *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoDataOutputDelegate *)[(AVCVideoDataOutput *)self delegate] videoDataOutput:self mediaDidStall:stallCopy];
  }
}

- (void)streamOutput:(id)output didDegrade:(BOOL)degrade
{
  degradeCopy = degrade;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[AVCVideoDataOutput streamOutput:didDegrade:]";
      v13 = 1024;
      v14 = 202;
      v15 = 1024;
      v16 = degradeCopy;
      v17 = 1024;
      v18 = streamToken;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCVideoDataOutput callback: videoDidDegrade=%d for streamToken=%u", &v9, 0x28u);
    }
  }

  self->_isVideoDegraded = degradeCopy;
  [(AVCVideoDataOutput *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoDataOutputDelegate *)[(AVCVideoDataOutput *)self delegate] videoDataOutput:self videoDidDegrade:degradeCopy];
  }
}

- (void)streamOutput:(id)output didSuspend:(BOOL)suspend
{
  suspendCopy = suspend;
  self->_isVideoSuspended = suspend;
  [(AVCVideoDataOutput *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(AVCVideoDataOutput *)self delegate];

    [(AVCVideoDataOutputDelegate *)delegate videoDataOutput:self videoDidSuspend:suspendCopy];
  }
}

- (void)initWithStreamToken:(void *)a1 delegate:queue:error:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 83;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate stream output", &v4, 0x1Cu);
    }
  }

  *a1 = -5;
}

- (void)parseVideoAttributes:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 129;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate video attributes", &v2, 0x1Cu);
}

- (void)streamOutputServerDidDie:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 174;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCVideoDataOutput: serverd died, notifying client", &v2, 0x1Cu);
}

@end