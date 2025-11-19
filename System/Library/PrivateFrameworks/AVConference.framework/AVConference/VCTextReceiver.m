@interface VCTextReceiver
- (BOOL)enqueuePacket:(tagAudioPacket *)a3;
- (BOOL)isSupportedPayload:(int)a3;
- (BOOL)parsePacket:(tagAudioPacket *)a3;
- (BOOL)start;
- (BOOL)stop;
- (VCTextReceiver)initWithConfiguration:(_VCTextReceiverConfiguration *)a3;
- (int)retrieveRTPPacket:(tagAudioPacket *)a3;
- (tagAudioFrame)allocFrameWithPacket:(tagAudioPacket *)a3 data:(char *)a4 dataLength:(int)a5 timestamp:(unsigned int)a6;
- (void)dealloc;
- (void)didDetectMissingFrame;
- (void)didReceiveFrame:(tagAudioFrame *)a3;
- (void)initializeTextPacket:(tagAudioPacket *)a3 withMediaPacket:(_RTPMediaPacket *)a4;
- (void)processRTCPPacket;
- (void)processRTPPacket;
- (void)receiverThreadCallback:(tagVCRealTimeThreadParameters *)a3;
- (void)splitPacket:(tagAudioPacket *)a3 packetArray:(tagAudioPacketArray *)a4;
- (void)start;
- (void)validateAndEnqueuePackets:(tagAudioPacketArray *)a3;
@end

@implementation VCTextReceiver

- (VCTextReceiver)initWithConfiguration:(_VCTextReceiverConfiguration *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCTextReceiver;
  v4 = [(VCTextReceiver *)&v13 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = a3->var0;
    var1 = a3->var1;
    *(v4 + 4) = var1;
    *(v4 + 56) = vdupq_n_s64(0x7FF8000000000000uLL);
    v11[1] = -1431655766;
    v12 = v4;
    v11[0] = var1;
    v7 = [[VCTextJitterBuffer alloc] initWithConfiguration:v11];
    v5->_jitterBuffer = v7;
    if (v7)
    {
      v8 = VCRealTimeThread_Initialize(20, _VCTextReceiver_ReceiveProc, v5, "com.apple.avconference.textreceiver.rtprecvproc", 0);
      v5->_receiverThread = v8;
      if (v8)
      {
        if (!a3->var2)
        {
          return v5;
        }

        v9 = VCTransportStreamRunLoopVTPCreate(*MEMORY[0x1E695E480], &v5->_runLoop);
        if ((v9 & 0x80000000) == 0)
        {
          return v5;
        }

        [VCTextReceiver initWithConfiguration:v9];
      }

      else
      {
        [VCTextReceiver initWithConfiguration:];
      }
    }

    else
    {
      [VCTextReceiver initWithConfiguration:];
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  runLoop = self->_runLoop;
  if (runLoop)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v4)
    {
      v4(runLoop);
    }
  }

  VCRealTimeThread_Stop(self->_receiverThread);
  VCRealTimeThread_Finalize(self->_receiverThread);

  self->_jitterBuffer = 0;
  v5 = self->_runLoop;
  if (v5)
  {
    CFRelease(v5);
  }

  objc_storeWeak(&self->_delegate, 0);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCTextReceiver dealloc]";
      v13 = 1024;
      v14 = 75;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCTextReceiver [%s] %s:%d VCTextReceiver cleanup DONE!", buf, 0x1Cu);
    }
  }

  v8.receiver = self;
  v8.super_class = VCTextReceiver;
  [(VCTextReceiver *)&v8 dealloc];
}

- (BOOL)start
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v12 = 136315650;
    *&v12[4] = v4;
    *&v12[12] = 2080;
    *&v12[14] = "[VCTextReceiver start]";
    *&v12[22] = 1024;
    LODWORD(v13) = 95;
    v6 = "VCTextReceiver [%s] %s:%d ";
    v7 = v5;
    v8 = 28;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(VCTextReceiver *)self performSelector:sel_logPrefix];
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
      *v12 = 136316162;
      *&v12[4] = v9;
      *&v12[12] = 2080;
      *&v12[14] = "[VCTextReceiver start]";
      *&v12[22] = 1024;
      LODWORD(v13) = 95;
      WORD2(v13) = 2112;
      *(&v13 + 6) = v3;
      HIWORD(v13) = 2048;
      v14 = self;
      v6 = "VCTextReceiver [%s] %s:%d %@(%p) ";
      v7 = v10;
      v8 = 48;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v12, v8);
    }
  }

LABEL_12:
  *&self->_lastReceivedRTPPacketTime = vdupq_n_s64(0x7FF8000000000000uLL);
  if ([(VCTextJitterBuffer *)self->_jitterBuffer start:*v12])
  {
    if (VCRealTimeThread_Start(self->_receiverThread))
    {
      return 1;
    }

    else
    {
      [(VCTextJitterBuffer *)self->_jitterBuffer stop];
      return 0;
    }
  }

  else
  {
    [(VCTextReceiver *)v12 start];
    return v12[0];
  }
}

- (BOOL)stop
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCTextReceiver stop]";
        v19 = 1024;
        v20 = 114;
        v6 = "VCTextReceiver [%s] %s:%d ";
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
      v3 = [(VCTextReceiver *)self performSelector:sel_logPrefix];
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
        v15 = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCTextReceiver stop]";
        v19 = 1024;
        v20 = 114;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        v24 = self;
        v6 = "VCTextReceiver [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  runLoop = self->_runLoop;
  if (runLoop)
  {
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v12)
    {
      v12(runLoop);
    }
  }

  v13 = VCRealTimeThread_Stop(self->_receiverThread);
  if (v13)
  {
    [(VCTextJitterBuffer *)self->_jitterBuffer stop];
  }

  return v13;
}

- (void)initializeTextPacket:(tagAudioPacket *)a3 withMediaPacket:(_RTPMediaPacket *)a4
{
  var0 = a4->var0;
  a3->var7 = a4->var1;
  a3->var4 = a4->var3;
  a3->var5 = a4->var4;
  a3->var2 = a4->var17;
  a3->var14 = a4->var20.var1;
  var9 = a4->var9;
  a3->var0 = var0;
  a3->var1 = var9;
  var1 = a4->var19.var1;
  var2 = a4->var19.var2;
  a3->var12 = var1;
  memcpy(a3->var11, var2, var1);
}

- (int)retrieveRTPPacket:(tagAudioPacket *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v5 = RTPRecvRTP(self->_rtpHandle, &v19);
  if (v5 < 0)
  {
    v7 = MEMORY[0x1E6986650];
    *&v6 = 136315906;
    v18 = v6;
    while (1)
    {
      RTPReleaseRTPPacket(self->_rtpHandle, &v19);
      if ((v5 & 0x40000000) == 0)
      {
        break;
      }

      usleep(0x3A98u);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v21 = v8;
          v22 = 2080;
          v23 = "[VCTextReceiver retrieveRTPPacket:]";
          v24 = 1024;
          v25 = 152;
          v26 = 1024;
          LODWORD(v27) = v5;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCTextReceiver [%s] %s:%d RTPReceiveRTP returned[%x] sleeping 15000usecs??", buf, 0x22u);
        }
      }

      v19 = 0;
      v5 = RTPRecvRTP(self->_rtpHandle, &v19);
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *v7;
      v17 = *v7;
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v21 = v15;
          v22 = 2080;
          v23 = "[VCTextReceiver retrieveRTPPacket:]";
          v24 = 1024;
          v25 = 154;
          v26 = 1024;
          LODWORD(v27) = v5;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCTextReceiver [%s] %s:%d Received an error %x", buf, 0x22u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [VCTextReceiver retrieveRTPPacket:];
      }
    }
  }

  else
  {
LABEL_8:
    [(VCTextReceiver *)self initializeTextPacket:a3 withMediaPacket:v19 + 2, v18];
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v12 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(v19 + 5);
          *buf = 136315906;
          v21 = v10;
          v22 = 2080;
          v23 = "[VCTextReceiver retrieveRTPPacket:]";
          v24 = 1024;
          v25 = 145;
          v26 = 2048;
          v27 = v13;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCTextReceiver [%s] %s:%d received packet time[%f]", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [VCTextReceiver retrieveRTPPacket:];
      }
    }

    RTPReleaseRTPPacket(self->_rtpHandle, &v19);
  }

  return v5;
}

- (void)receiverThreadCallback:(tagVCRealTimeThreadParameters *)a3
{
  v38 = *MEMORY[0x1E69E9840];
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

      *buf = 136315650;
      v29 = v6;
      v30 = 2080;
      v31 = "[VCTextReceiver receiverThreadCallback:]";
      v32 = 1024;
      v33 = 162;
      v9 = "VCTextReceiver [%s] %s:%d ";
      v10 = v7;
      v11 = 28;
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      goto LABEL_18;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [VCTextReceiver receiverThreadCallback:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCTextReceiver *)self performSelector:sel_logPrefix];
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

        *buf = 136316162;
        v29 = v12;
        v30 = 2080;
        v31 = "[VCTextReceiver receiverThreadCallback:]";
        v32 = 1024;
        v33 = 162;
        v34 = 2112;
        v35 = v5;
        v36 = 2048;
        v37 = self;
        v9 = "VCTextReceiver [%s] %s:%d %@(%p) ";
        v10 = v13;
        v11 = 48;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v29 = v12;
        v30 = 2080;
        v31 = "[VCTextReceiver receiverThreadCallback:]";
        v32 = 1024;
        v33 = 162;
        v34 = 2112;
        v35 = v5;
        v36 = 2048;
        v37 = self;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCTextReceiver [%s] %s:%d %@(%p) ", buf, 0x30u);
      }
    }
  }

LABEL_18:
  v27 = 48;
  runLoop = self->_runLoop;
  if (runLoop)
  {
    if ((RTPGetReceiveStatusWithRunLoop(&self->_rtpHandle, &v27, 1, runLoop) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    usleep(0x2710u);
    return;
  }

  if ((RTPGetReceiveStatus(&self->_rtpHandle, &v27, 1, a3->var0) & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  v16 = v27;
  if ((v27 & 0x10) == 0)
  {
    goto LABEL_41;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      v20 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [VCTextReceiver receiverThreadCallback:];
        }

        goto LABEL_40;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v29 = v18;
        v30 = 2080;
        v31 = "[VCTextReceiver receiverThreadCallback:]";
        v32 = 1024;
        v33 = 178;
        v21 = "VCTextReceiver [%s] %s:%d Receiving RTP packet";
        v22 = v19;
        v23 = 28;
LABEL_35:
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCTextReceiver *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_40;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    v26 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v29 = v24;
        v30 = 2080;
        v31 = "[VCTextReceiver receiverThreadCallback:]";
        v32 = 1024;
        v33 = 178;
        v34 = 2112;
        v35 = v17;
        v36 = 2048;
        v37 = self;
        _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, "VCTextReceiver [%s] %s:%d %@(%p) Receiving RTP packet", buf, 0x30u);
      }

      goto LABEL_40;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v29 = v24;
      v30 = 2080;
      v31 = "[VCTextReceiver receiverThreadCallback:]";
      v32 = 1024;
      v33 = 178;
      v34 = 2112;
      v35 = v17;
      v36 = 2048;
      v37 = self;
      v21 = "VCTextReceiver [%s] %s:%d %@(%p) Receiving RTP packet";
      v22 = v25;
      v23 = 48;
      goto LABEL_35;
    }
  }

LABEL_40:
  [(VCTextReceiver *)self processRTPPacket];
  v16 = v27;
LABEL_41:
  if ((v16 & 0x20) != 0)
  {
    [(VCTextReceiver *)self processRTCPPacket];
  }
}

- (void)processRTPPacket
{
  v5[101] = *MEMORY[0x1E69E9840];
  v3 = [(VCTextJitterBuffer *)self->_jitterBuffer allocTextPacket];
  if ([(VCTextReceiver *)self retrieveRTPPacket:v3]< 0)
  {
    jitterBuffer = self->_jitterBuffer;

    [(VCTextJitterBuffer *)jitterBuffer releaseTextPacket:v3];
  }

  else
  {
    self->_lastReceivedRTPPacketTime = micro();
    bzero(v5, 0x328uLL);
    [(VCTextReceiver *)self splitPacket:v3 packetArray:v5];
    [(VCTextReceiver *)self validateAndEnqueuePackets:v5];
  }
}

- (void)processRTCPPacket
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[VCTextReceiver processRTCPPacket]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, "VCTextReceiver [%s] %s:%d Failed to retrieve RTCP packet. Error:%x", v3, *v4, "[VCTextReceiver processRTCPPacket]" >> 16, v5);
}

- (BOOL)isSupportedPayload:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  supportedPayloads = self->_supportedPayloads;
  v5 = [(NSArray *)supportedPayloads countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(supportedPayloads);
        }

        if ([*(*(&v12 + 1) + 8 * i) unsignedIntValue] == a3)
        {
          LOBYTE(v9) = 1;
          return v9;
        }
      }

      v6 = [(NSArray *)supportedPayloads countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_12;
  }

  VRTraceErrorLogLevelToCSTR();
  v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v9)
  {
    [VCTextReceiver isSupportedPayload:];
LABEL_12:
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)validateAndEnqueuePackets:(tagAudioPacketArray *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = AudioPacketArray_Next(a3);
  if (v5)
  {
    v7 = v5;
    v8 = MEMORY[0x1E6986650];
    *&v6 = 136315650;
    v17 = v6;
    while ([(VCTextReceiver *)self isSupportedPayload:*(v7 + 24), v17])
    {
      if (![(VCTextReceiver *)self enqueuePacket:v7])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v19 = v9;
            v20 = 2080;
            v21 = "[VCTextReceiver validateAndEnqueuePackets:]";
            v22 = 1024;
            v23 = 235;
            v11 = v10;
            v12 = "VCTextReceiver [%s] %s:%d Failed to enqueue packet";
            v13 = 28;
            goto LABEL_14;
          }
        }

        goto LABEL_10;
      }

LABEL_11:
      v7 = AudioPacketArray_Next(a3);
      if (!v7)
      {
        return;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v16 = *(v7 + 24);
        *buf = 136315906;
        v19 = v14;
        v20 = 2080;
        v21 = "[VCTextReceiver validateAndEnqueuePackets:]";
        v22 = 1024;
        v23 = 230;
        v24 = 1024;
        v25 = v16;
        v11 = v15;
        v12 = "VCTextReceiver [%s] %s:%d Payload not supported:%d";
        v13 = 34;
LABEL_14:
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v12, buf, v13);
      }
    }

LABEL_10:
    [(VCTextJitterBuffer *)self->_jitterBuffer releaseTextPacket:v7];
    goto LABEL_11;
  }
}

- (void)splitPacket:(tagAudioPacket *)a3 packetArray:(tagAudioPacketArray *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3->var7 == 20)
  {
    memset(v11, 0, sizeof(v11));
    v7 = VCAudioRedBuilder_SplitRedAudioPacket(self->_rtpHandle, a3, v11, 4, self->_sampleRate, 0);
    if (v7 >= 1)
    {
      v8 = v7;
      v9 = v11;
      do
      {
        v10 = [(VCTextJitterBuffer *)self->_jitterBuffer allocTextPacket];
        AudioPacket_initNewPacket(a3, v10);
        if (VCAudioRedBuilder_UpdateAudioPacketWithRedPayload(v10, v9))
        {
          AudioPacketArray_Append(a4, v10);
        }

        else
        {
          [(VCTextJitterBuffer *)self->_jitterBuffer releaseTextPacket:v10];
        }

        v9 += 8;
        --v8;
      }

      while (v8);
    }

    [(VCTextJitterBuffer *)self->_jitterBuffer releaseTextPacket:a3];
  }

  else
  {

    AudioPacketArray_Append(a4, a3);
  }
}

- (tagAudioFrame)allocFrameWithPacket:(tagAudioPacket *)a3 data:(char *)a4 dataLength:(int)a5 timestamp:(unsigned int)a6
{
  v10 = [(VCTextJitterBuffer *)self->_jitterBuffer allocTextFrame];
  v11 = v10;
  if (v10)
  {
    var0 = a3->var0;
    v10->var0 = 0;
    v10->var1 = var0;
    v10->var11 = 0;
    v10->var3 = a3->var4;
    v10->var2 = a3->var3;
    v10->var4 = a6;
    v10->var6 = a5;
    v10->var12 = a3->var17;
    v10->var14 = a3->var7;
    memcpy(v10->var5, a4, a5);
  }

  return v11;
}

- (BOOL)parsePacket:(tagAudioPacket *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3->var7 == 109)
  {
    var12 = a3->var12;
    if (var12 <= 0x465 && a3->var14 < 0x11u)
    {
      v7 = [(VCTextReceiver *)self allocFrameWithPacket:a3 data:a3->var11 dataLength:a3->var12 timestamp:a3->var5];
      if (v7)
      {
        var16 = a3->var16;
        a3->var16 = var16 + 1;
        a3->var15[var16] = v7;
        LOBYTE(v7) = 1;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_16;
        }

        v11 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        LODWORD(v7) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (v7)
        {
          var14 = a3->var14;
          v14 = 136316162;
          v15 = v11;
          v16 = 2080;
          v17 = "[VCTextReceiver parsePacket:]";
          v18 = 1024;
          v19 = 307;
          v20 = 1024;
          v21 = var12;
          v22 = 1024;
          v23 = var14;
          v9 = "VCTextReceiver [%s] %s:%d Failed to create frame. Data size: %d, padding len: %u";
          goto LABEL_7;
        }
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
LABEL_16:
        LOBYTE(v7) = 0;
        return v7;
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      LODWORD(v7) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v7)
      {
        v8 = a3->var14;
        v14 = 136316162;
        v15 = v5;
        v16 = 2080;
        v17 = "[VCTextReceiver parsePacket:]";
        v18 = 1024;
        v19 = 301;
        v20 = 1024;
        v21 = var12;
        v22 = 1024;
        v23 = v8;
        v9 = "VCTextReceiver [%s] %s:%d Unable to fit audio data into the audioFrame buffer. Data size: %d, padding len: %u";
LABEL_7:
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v9, &v14, 0x28u);
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_16;
    }

    VRTraceErrorLogLevelToCSTR();
    LODWORD(v7) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      [VCTextReceiver parsePacket:];
      goto LABEL_16;
    }
  }

  return v7;
}

- (BOOL)enqueuePacket:(tagAudioPacket *)a3
{
  v5 = [(VCTextReceiver *)self parsePacket:?];
  if (v5)
  {
    [(VCTextJitterBuffer *)self->_jitterBuffer enqueuePacket:a3];
  }

  return v5;
}

- (void)didDetectMissingFrame
{
  v2 = [(VCTextReceiver *)self delegate];

  [(VCTextReceiverDelegate *)v2 didReceiveText:@"\uFFFD"];
}

- (void)didReceiveFrame:(tagAudioFrame *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3->var14 == 109)
  {
    if (a3->var6 > 0)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3->var5 length:a3->var6 encoding:4];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 136315650;
            *&v28[4] = v8;
            *&v28[12] = 2080;
            *&v28[14] = "[VCTextReceiver didReceiveFrame:]";
            *&v28[22] = 1024;
            LODWORD(v29) = 343;
            v10 = "VCTextReceiver [%s] %s:%d ";
            v11 = v9;
            v12 = 28;
LABEL_19:
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v28, v12);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [(VCTextReceiver *)self performSelector:sel_logPrefix];
        }

        else
        {
          v5 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 136316162;
            *&v28[4] = v13;
            *&v28[12] = 2080;
            *&v28[14] = "[VCTextReceiver didReceiveFrame:]";
            *&v28[22] = 1024;
            LODWORD(v29) = 343;
            WORD2(v29) = 2112;
            *(&v29 + 6) = v5;
            HIWORD(v29) = 2048;
            v30 = self;
            v10 = "VCTextReceiver [%s] %s:%d %@(%p) ";
            v11 = v14;
            v12 = 48;
            goto LABEL_19;
          }
        }
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          v18 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] != 1)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              [(VCTextReceiver *)v16 didReceiveFrame:v4, v17];
            }

            goto LABEL_37;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v4 length];
            *v28 = 136316162;
            *&v28[4] = v16;
            *&v28[12] = 2080;
            *&v28[14] = "[VCTextReceiver didReceiveFrame:]";
            *&v28[22] = 1024;
            LODWORD(v29) = 344;
            WORD2(v29) = 2112;
            *(&v29 + 6) = v4;
            HIWORD(v29) = 2048;
            v30 = v19;
            v20 = "VCTextReceiver [%s] %s:%d Received text:%@ length:%lu";
            v21 = v17;
            v22 = 48;
LABEL_32:
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, v28, v22);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v15 = [(VCTextReceiver *)self performSelector:sel_logPrefix];
        }

        else
        {
          v15 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_37;
        }

        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        v25 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v27 = [v4 length];
            *v28 = 136316674;
            *&v28[4] = v23;
            *&v28[12] = 2080;
            *&v28[14] = "[VCTextReceiver didReceiveFrame:]";
            *&v28[22] = 1024;
            LODWORD(v29) = 344;
            WORD2(v29) = 2112;
            *(&v29 + 6) = v15;
            HIWORD(v29) = 2048;
            v30 = self;
            *v31 = 2112;
            *&v31[2] = v4;
            *&v31[10] = 2048;
            *&v31[12] = v27;
            _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, "VCTextReceiver [%s] %s:%d %@(%p) Received text:%@ length:%lu", v28, 0x44u);
          }

          goto LABEL_37;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v4 length];
          *v28 = 136316674;
          *&v28[4] = v23;
          *&v28[12] = 2080;
          *&v28[14] = "[VCTextReceiver didReceiveFrame:]";
          *&v28[22] = 1024;
          LODWORD(v29) = 344;
          WORD2(v29) = 2112;
          *(&v29 + 6) = v15;
          HIWORD(v29) = 2048;
          v30 = self;
          *v31 = 2112;
          *&v31[2] = v4;
          *&v31[10] = 2048;
          *&v31[12] = v26;
          v20 = "VCTextReceiver [%s] %s:%d %@(%p) Received text:%@ length:%lu";
          v21 = v24;
          v22 = 68;
          goto LABEL_32;
        }
      }

LABEL_37:
      [(VCTextReceiverDelegate *)[(VCTextReceiver *)self delegate:*v28] didReceiveText:v4];

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 136315650;
        *&v28[4] = v6;
        *&v28[12] = 2080;
        *&v28[14] = "[VCTextReceiver didReceiveFrame:]";
        *&v28[22] = 1024;
        LODWORD(v29) = 338;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCTextReceiver [%s] %s:%d Discarding empty text frame", v28, 0x1Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCTextReceiver didReceiveFrame:];
    }
  }
}

- (void)initWithConfiguration:(int)a1 .cold.1(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      v6 = v3;
      v7 = "[VCTextReceiver initWithConfiguration:]";
      OUTLINED_FUNCTION_4_2();
      v8 = 51;
      v9 = v4;
      v10 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "VCTextReceiver [%s] %s:%d VCTransportStreamRunLoopVTPCreate failed %d", v5, 0x22u);
    }
  }
}

- (void)initWithConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCTextReceiver [%s] %s:%d Failed to initialize the text receiver thread", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)initWithConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCTextReceiver [%s] %s:%d Failed to create the jitter buffer", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)start
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v4 = 99;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, "VCTextReceiver [%s] %s:%d Failed to start jitter buffer", v3, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)retrieveRTPPacket:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[VCTextReceiver retrieveRTPPacket:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCTextReceiver [%s] %s:%d Received an error %x", v2, 0x22u);
}

- (void)retrieveRTPPacket:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  v3 = 145;
  v4 = 2048;
  v5 = v0;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCTextReceiver [%s] %s:%d received packet time[%f]", v2, 0x26u);
}

- (void)receiverThreadCallback:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 162;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCTextReceiver [%s] %s:%d ", v1, 0x1Cu);
}

- (void)receiverThreadCallback:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 178;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCTextReceiver [%s] %s:%d Receiving RTP packet", v1, 0x1Cu);
}

- (void)isSupportedPayload:.cold.1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[VCTextReceiver isSupportedPayload:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, "VCTextReceiver [%s] %s:%d Received a packet with unknown payload: %d", v3, *v4, "[VCTextReceiver isSupportedPayload:]" >> 16, v5);
}

- (void)parsePacket:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCTextReceiver [%s] %s:%d Unrecognized payload type: %d", v2, v3, v4, 296);
}

- (void)didReceiveFrame:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCTextReceiver [%s] %s:%d Unexpected payload type: %u", v2, v3, v4, 334);
}

- (void)didReceiveFrame:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  [a2 length];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  v7 = 344;
  v8 = 2112;
  v9 = a2;
  v10 = 2048;
  v11 = v5;
  _os_log_debug_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_DEBUG, "VCTextReceiver [%s] %s:%d Received text:%@ length:%lu", v6, 0x30u);
}

@end