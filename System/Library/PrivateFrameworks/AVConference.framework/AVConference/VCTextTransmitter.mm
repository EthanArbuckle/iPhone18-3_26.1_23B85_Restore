@interface VCTextTransmitter
- (BOOL)start;
- (BOOL)startHeartbeat;
- (VCTextTransmitter)initWithConfiguration:(_VCTextTransmitterConfiguration *)configuration;
- (unsigned)getCharTimestampForSystemTime:(double)time;
- (void)dealloc;
- (void)heartbeat;
- (void)sendCharacter:(unsigned __int16)character;
- (void)sendText:(id)text;
- (void)sendTextFrameWithRedundancy:(id)redundancy marker:(int)marker;
- (void)startHeartbeat;
- (void)stop;
- (void)stopHeartbeat;
- (void)updatePayloadHistory:(id)history timestamp:(unsigned int)timestamp payloadType:(int *)type payload:(char *)payload payloadLength:(int *)length;
@end

@implementation VCTextTransmitter

- (VCTextTransmitter)initWithConfiguration:(_VCTextTransmitterConfiguration *)configuration
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCTextTransmitter;
  v4 = [(VCTextTransmitter *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&configuration->rtpHandle;
    *(v4 + 3) = *&configuration->numRedundantPayloads;
    *(v4 + 8) = v6;
    LODWORD(v6) = *(v4 + 7);
    v7 = *&v6;
    v8 = *&v6 <= 0.0;
    v9 = 0.0333333333;
    if (!v8)
    {
      v9 = v7;
    }

    *(v4 + 4) = v9;
    *(v4 + 8) = 0x6D00000014;
    *(v4 + 7) = [VCAudioRedBuilder initWithRedPayloadType:"initWithRedPayloadType:sampleRate:samplesPerFrame:numPayloads:maxDelay:includeSequenceOffset:" sampleRate:*(v4 + 16) samplesPerFrame:? numPayloads:? maxDelay:? includeSequenceOffset:?];
    v5->_textFramesSendQueueLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v5->_textFramesSendQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_isIdle = 1;
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(56);
    v5->_dispatchQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCTextTransmitter", 0, CustomRootQueue);
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  dispatch_release(self->_dispatchQueue);
  v3.receiver = self;
  v3.super_class = VCTextTransmitter;
  [(VCTextTransmitter *)&v3 dealloc];
}

- (BOOL)start
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCTextTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316162;
    *&buf[4] = v9;
    v20 = 2080;
    v21 = "[VCTextTransmitter start]";
    v22 = 1024;
    v23 = 60;
    v24 = 2112;
    v25 = v3;
    v26 = 2048;
    selfCopy = self;
    v6 = "VCTextTransmitter [%s] %s:%d %@(%p) ";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v4;
      v20 = 2080;
      v21 = "[VCTextTransmitter start]";
      v22 = 1024;
      v23 = 60;
      v6 = "VCTextTransmitter [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  self->_startTime = micro();
  [(VCTextTransmitter *)self sendCharacter:65279];
  numRedundantPayloads = self->_config.numRedundantPayloads;
  if (numRedundantPayloads)
  {
    v12 = 0;
    for (i = 0; i < numRedundantPayloads; ++i)
    {
      v14 = [(VCTextTransmitter *)self getCharTimestampForSystemTime:self->_startTime - self->_txIntervalMin * (numRedundantPayloads + v12)];
      currentPayloadType = self->_currentPayloadType;
      v17 = 0;
      v18 = currentPayloadType;
      *buf = 0;
      [(VCTextTransmitter *)self updatePayloadHistory:&stru_1F570E008 timestamp:v14 payloadType:&v18 payload:buf payloadLength:&v17];
      numRedundantPayloads = self->_config.numRedundantPayloads;
      --v12;
    }
  }

  return [(VCTextTransmitter *)self startHeartbeat];
}

- (void)stop
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCTextTransmitter stop]";
        *&v11[22] = 1024;
        LODWORD(v12) = 75;
        v6 = "VCTextTransmitter [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCTextTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCTextTransmitter stop]";
        *&v11[22] = 1024;
        LODWORD(v12) = 75;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        selfCopy = self;
        v6 = "VCTextTransmitter [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  self->_startTime = 0.0;
  [(VCTextTransmitter *)self stopHeartbeat:*v11];
}

- (void)sendCharacter:(unsigned __int16)character
{
  v4 = *MEMORY[0x1E69E9840];
  characterCopy = character;
  -[VCTextTransmitter sendText:](self, "sendText:", [MEMORY[0x1E696AEC0] stringWithCharacters:&characterCopy length:1]);
}

- (void)sendText:(id)text
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_startTime == 0.0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTextTransmitter sendText:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(VCTextTransmitter *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v9 = 136316162;
          v10 = v7;
          v11 = 2080;
          v12 = "[VCTextTransmitter sendText:]";
          v13 = 1024;
          v14 = 88;
          v15 = 2112;
          v16 = v4;
          v17 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VCTextTransmitter [%s] %s:%d %@(%p) Trying to send when the transmitter is stopped!", &v9, 0x30u);
        }
      }
    }
  }

  else
  {
    [(NSLock *)self->_textFramesSendQueueLock lock];
    [(NSMutableArray *)self->_textFramesSendQueue addObject:text];
    textFramesSendQueueLock = self->_textFramesSendQueueLock;

    [(NSLock *)textFramesSendQueueLock unlock];
  }
}

- (unsigned)getCharTimestampForSystemTime:(double)time
{
  startTime = self->_startTime;
  v4 = time - startTime;
  LODWORD(startTime) = self->_config.sampleRate;
  return (v4 * *&startTime);
}

- (void)sendTextFrameWithRedundancy:(id)redundancy marker:(int)marker
{
  v47 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v36 = v8;
        v37 = 2080;
        v38 = "[VCTextTransmitter sendTextFrameWithRedundancy:marker:]";
        v39 = 1024;
        v40 = 103;
        v10 = "VCTextTransmitter [%s] %s:%d ";
        v11 = v9;
        v12 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCTextTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v36 = v13;
        v37 = 2080;
        v38 = "[VCTextTransmitter sendTextFrameWithRedundancy:marker:]";
        v39 = 1024;
        v40 = 103;
        v41 = 2112;
        redundancyCopy = v7;
        v43 = 2048;
        selfCopy4 = self;
        v10 = "VCTextTransmitter [%s] %s:%d %@(%p) ";
        v11 = v14;
        v12 = 48;
        goto LABEL_11;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_29;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    v18 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 136315906;
      v36 = v16;
      v37 = 2080;
      v38 = "[VCTextTransmitter sendTextFrameWithRedundancy:marker:]";
      v39 = 1024;
      v40 = 104;
      v41 = 2112;
      redundancyCopy = redundancy;
      v19 = "VCTextTransmitter [%s] %s:%d Sending text:%@";
      v20 = v17;
      v21 = 38;
LABEL_24:
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      goto LABEL_29;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [VCTextTransmitter sendTextFrameWithRedundancy:marker:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCTextTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      v24 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        *buf = 136316418;
        v36 = v22;
        v37 = 2080;
        v38 = "[VCTextTransmitter sendTextFrameWithRedundancy:marker:]";
        v39 = 1024;
        v40 = 104;
        v41 = 2112;
        redundancyCopy = v15;
        v43 = 2048;
        selfCopy4 = self;
        v45 = 2112;
        redundancyCopy3 = redundancy;
        v19 = "VCTextTransmitter [%s] %s:%d %@(%p) Sending text:%@";
        v20 = v23;
        v21 = 58;
        goto LABEL_24;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v36 = v22;
        v37 = 2080;
        v38 = "[VCTextTransmitter sendTextFrameWithRedundancy:marker:]";
        v39 = 1024;
        v40 = 104;
        v41 = 2112;
        redundancyCopy = v15;
        v43 = 2048;
        selfCopy4 = self;
        v45 = 2112;
        redundancyCopy3 = redundancy;
        _os_log_debug_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEBUG, "VCTextTransmitter [%s] %s:%d %@(%p) Sending text:%@", buf, 0x3Au);
      }
    }
  }

LABEL_29:
  v25 = micro();
  v26 = [(VCTextTransmitter *)self getCharTimestampForSystemTime:?];
  currentPayloadType = self->_currentPayloadType;
  v33 = 0;
  v32 = 0;
  [(VCTextTransmitter *)self updatePayloadHistory:redundancy timestamp:v26 payloadType:&currentPayloadType payload:&v33 payloadLength:&v32];
  if (v33)
  {
    v31 = 0;
    txIntervalMin = self->_txIntervalMin;
    if ((RTPSendRTP(self->_config.rtpHandle, currentPayloadType, marker, v26, v33, v32, &v31, 0, v25, txIntervalMin, 0, 0, 0, 0, 0, 0) & 0x80000000) != 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCTextTransmitter sendTextFrameWithRedundancy:marker:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v28 = [(VCTextTransmitter *)self performSelector:sel_logPrefix];
        }

        else
        {
          v28 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v36 = v29;
            v37 = 2080;
            v38 = "[VCTextTransmitter sendTextFrameWithRedundancy:marker:]";
            v39 = 1024;
            v40 = 116;
            v41 = 2112;
            redundancyCopy = v28;
            v43 = 2048;
            selfCopy4 = self;
            _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, "VCTextTransmitter [%s] %s:%d %@(%p) failed to send RTP", buf, 0x30u);
          }
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCTextTransmitter sendTextFrameWithRedundancy:marker:];
    }
  }
}

- (void)updatePayloadHistory:(id)history timestamp:(unsigned int)timestamp payloadType:(int *)type payload:(char *)payload payloadLength:(int *)length
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 136315650;
        *&v26[4] = v14;
        *&v26[12] = 2080;
        *&v26[14] = "[VCTextTransmitter updatePayloadHistory:timestamp:payloadType:payload:payloadLength:]";
        *&v26[22] = 1024;
        *&v26[24] = 124;
        v16 = "VCTextTransmitter [%s] %s:%d ";
        v17 = v15;
        v18 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, v26, v18);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCTextTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 136316162;
        *&v26[4] = v19;
        *&v26[12] = 2080;
        *&v26[14] = "[VCTextTransmitter updatePayloadHistory:timestamp:payloadType:payload:payloadLength:]";
        *&v26[22] = 1024;
        *&v26[24] = 124;
        *&v26[28] = 2112;
        *&v26[30] = v13;
        *&v26[38] = 2048;
        selfCopy = self;
        v16 = "VCTextTransmitter [%s] %s:%d %@(%p) ";
        v17 = v20;
        v18 = 48;
        goto LABEL_11;
      }
    }
  }

  *type = self->_currentPayloadType;
  *payload = [history cStringUsingEncoding:{4, *v26, *&v26[16], *&v26[24], selfCopy}];
  *length = [history lengthOfBytesUsingEncoding:4];
  if (self->_config.isRedEnabled)
  {
    v21 = RTPGetExternalPayload(self->_config.rtpHandle, LOWORD(self->_currentPayloadType));
    *type = v21;
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v26 = v22;
    *&v26[16] = v22;
    v26[0] = 1;
    *&v26[8] = *payload;
    *&v26[16] = *length;
    *&v26[20] = timestamp;
    v26[24] = -1;
    selfCopy = 0;
    v28 = 0;
    *&v26[32] = 0;
    PrimaryPayloadAndAppendSamples = VCAudioRedBuilder_GetPrimaryPayloadAndAppendSamples(self->_redBuilder, v26, v21);
    if ([(VCAudioRedBuilder *)self->_redBuilder numPayloads])
    {
      v24 = [(VCAudioRedBuilder *)self->_redBuilder redPayloadForPrimaryPayload:PrimaryPayloadAndAppendSamples];
      if (v24)
      {
        *type = v24->payloadType;
        *payload = v24->buffer;
        bufferLength = v24->bufferLength;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCTextTransmitter updatePayloadHistory:timestamp:payloadType:payload:payloadLength:];
          }
        }

        bufferLength = 0;
        *payload = 0;
      }

      *length = bufferLength;
    }

    if ([history length] != 1 || objc_msgSend(history, "characterAtIndex:", 0) != 65279)
    {
      VCAudioRedBuilder_UpdatePayloadHistory(self->_redBuilder);
    }
  }
}

- (void)heartbeat
{
  [(NSLock *)self->_textFramesSendQueueLock lock];
  if ([(NSMutableArray *)self->_textFramesSendQueue count])
  {
    v3 = [(NSMutableArray *)self->_textFramesSendQueue componentsJoinedByString:&stru_1F570E008];
    [(NSMutableArray *)self->_textFramesSendQueue removeAllObjects];
    [(NSLock *)self->_textFramesSendQueueLock unlock];
    [(VCTextTransmitter *)self sendTextFrameWithRedundancy:v3 marker:self->_isIdle];

    self->_idleDuration = 0.0;
    self->_emptyFramesToBeSent = self->_config.numRedundantPayloads;
    self->_isIdle = 0;
  }

  else
  {
    [(NSLock *)self->_textFramesSendQueueLock unlock];
    v4 = self->_txIntervalMin + self->_idleDuration;
    self->_idleDuration = v4;
    if (v4 > 0.3)
    {
      self->_isIdle = 1;
      if (self->_emptyFramesToBeSent)
      {
        [(VCTextTransmitter *)self sendTextFrameWithRedundancy:&stru_1F570E008 marker:0];
        --self->_emptyFramesToBeSent;
      }
    }
  }
}

- (BOOL)startHeartbeat
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        txIntervalMin = self->_txIntervalMin;
        *buf = 136315906;
        v22 = v4;
        v23 = 2080;
        v24 = "[VCTextTransmitter startHeartbeat]";
        v25 = 1024;
        v26 = 192;
        v27 = 2048;
        v28 = txIntervalMin;
        v7 = "VCTextTransmitter [%s] %s:%d Starting sending heartbeat (interval=%f)";
        v8 = v5;
        v9 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCTextTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_txIntervalMin;
        *buf = 136316418;
        v22 = v10;
        v23 = 2080;
        v24 = "[VCTextTransmitter startHeartbeat]";
        v25 = 1024;
        v26 = 192;
        v27 = 2112;
        v28 = *&v3;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2048;
        v32 = v12;
        v7 = "VCTextTransmitter [%s] %s:%d %@(%p) Starting sending heartbeat (interval=%f)";
        v8 = v11;
        v9 = 58;
        goto LABEL_11;
      }
    }
  }

  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v14 = v13;
  self->_heartbeat = v13;
  if (v13)
  {
    dispatch_source_set_timer(v13, 0, (self->_txIntervalMin * 1000000000.0), 0xF4240uLL);
    heartbeat = self->_heartbeat;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __35__VCTextTransmitter_startHeartbeat__block_invoke;
    handler[3] = &unk_1E85F3778;
    handler[4] = self;
    dispatch_source_set_event_handler(heartbeat, handler);
    dispatch_resume(self->_heartbeat);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTextTransmitter startHeartbeat];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCTextTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v22 = v18;
        v23 = 2080;
        v24 = "[VCTextTransmitter startHeartbeat]";
        v25 = 1024;
        v26 = 195;
        v27 = 2112;
        v28 = *&v17;
        v29 = 2048;
        selfCopy2 = self;
        _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VCTextTransmitter [%s] %s:%d %@(%p) Failed to create polling", buf, 0x30u);
      }
    }
  }

  return v14 != 0;
}

- (void)stopHeartbeat
{
  heartbeat = self->_heartbeat;
  if (heartbeat)
  {
    dispatch_source_cancel(heartbeat);
    v4 = self->_heartbeat;
    if (v4)
    {
      dispatch_release(v4);
      self->_heartbeat = 0;
    }
  }
}

- (void)sendText:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCTextTransmitter [%s] %s:%d Trying to send when the transmitter is stopped!", v2, v3, v4, v5, v6);
}

- (void)sendTextFrameWithRedundancy:marker:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCTextTransmitter sendTextFrameWithRedundancy:marker:]";
  v6 = 1024;
  v7 = 104;
  v8 = 2112;
  v9 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, "VCTextTransmitter [%s] %s:%d Sending text:%@", v3, 0x26u);
}

- (void)sendTextFrameWithRedundancy:marker:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCTextTransmitter [%s] %s:%d failed to send RTP", v2, v3, v4, v5, v6);
}

- (void)sendTextFrameWithRedundancy:marker:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCTextTransmitter [%s] %s:%d Invalid payload!", v2, v3, v4, v5, v6);
}

- (void)updatePayloadHistory:timestamp:payloadType:payload:payloadLength:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCTextTransmitter [%s] %s:%d Invalid red payload!", v2, v3, v4, v5, v6);
}

- (void)startHeartbeat
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCTextTransmitter [%s] %s:%d Failed to create polling", v2, v3, v4, v5, v6);
}

@end