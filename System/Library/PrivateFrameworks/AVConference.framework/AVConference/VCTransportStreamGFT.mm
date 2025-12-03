@interface VCTransportStreamGFT
- (VCTransportStreamGFT)initWithTransportSessionID:(unsigned int)d options:(id)options;
- (int)VCTransportStreamSendPacket:(id *)packet;
- (int)receivePacket:(id *)packet;
- (int)registerPacketCallbackContext:(void *)context callback:(id)callback;
- (int)unregisterPacketCallback;
- (void)VCTransportStreamUnblock;
- (void)dealloc;
@end

@implementation VCTransportStreamGFT

- (VCTransportStreamGFT)initWithTransportSessionID:(unsigned int)d options:(id)options
{
  v32 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VCTransportStreamGFT;
  v5 = [(VCTransportStreamGFT *)&v17 init:*&d];
  if (!v5)
  {
    return v5;
  }

  +[VCVTPWrapper startVTP];
  v6 = VTP_SocketForIDS();
  if (v6 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCTransportStreamGFT *)v14 initWithTransportSessionID:v5 options:v15];
      }
    }

    goto LABEL_13;
  }

  v5->_transportSessionID = d;
  v5->_vtpReceiveSocket = v6;
  v5->_vtpCancelSocket = VTP_Socket(2, 1, 6);
  v5->_vtpCallbackId = -1;
  VTP_SetSocketMode(v5->_vtpReceiveSocket, 2);
  VTP_SetPktType(v5->_vtpReceiveSocket, 0x20000);
  VTP_SetTransportSessionID(v5->_vtpReceiveSocket, v5->_transportSessionID);
  CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0xAuLL, 0, 0, 0, 0xAuLL, 1u, &v5->_emptyBlockBuffer);
  emptyBlockBuffer = v5->_emptyBlockBuffer;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!emptyBlockBuffer)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportStreamGFT initWithTransportSessionID:options:];
      }
    }

LABEL_13:

    return 0;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      transportSessionID = v5->_transportSessionID;
      vtpReceiveSocket = v5->_vtpReceiveSocket;
      vtpCancelSocket = v5->_vtpCancelSocket;
      *buf = 136316674;
      v19 = v9;
      v20 = 2080;
      v21 = "[VCTransportStreamGFT initWithTransportSessionID:options:]";
      v22 = 1024;
      v23 = 70;
      v24 = 2048;
      v25 = v5;
      v26 = 1024;
      v27 = transportSessionID;
      v28 = 1024;
      v29 = vtpReceiveSocket;
      v30 = 1024;
      v31 = vtpCancelSocket;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created VCTransportStream object [%p] for sessionID %d, with vfd:%d, vfdCancel:%d", buf, 0x38u);
    }
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCTransportStreamGFT dealloc]";
      v11 = 1024;
      v12 = 77;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d dealloc [%p]", buf, 0x26u);
    }
  }

  VTP_Close(self->_vtpCancelSocket);
  VTP_Close(self->_vtpReceiveSocket);
  +[VCVTPWrapper stopVTP];
  emptyBlockBuffer = self->_emptyBlockBuffer;
  if (emptyBlockBuffer)
  {
    CFRelease(emptyBlockBuffer);
    self->_emptyBlockBuffer = 0;
  }

  v6.receiver = self;
  v6.super_class = VCTransportStreamGFT;
  [(VCTransportStreamGFT *)&v6 dealloc];
}

- (int)VCTransportStreamSendPacket:(id *)packet
{
  v33 = *MEMORY[0x1E69E9840];
  if (packet)
  {
    mediaQueue = self->_mediaQueue;
    if (mediaQueue)
    {
      *&v22[0] = 0;
      v6 = VCMediaQueue_AllocMediaPacket(mediaQueue, packet->var5.streamIDs[0], 1, v22);
      if (v6 < 0)
      {
        [(VCTransportStreamGFT *)v6 VCTransportStreamSendPacket:?];
        return v21;
      }

      p_var5 = &packet->var5;
      v8 = micro();
      v9 = *&v22[0];
      *(*&v22[0] + 272) = v8;
      *(v9 + 16) = *p_var5->streamIDs;
      v10 = *&p_var5->streamIDs[8];
      v11 = *&p_var5->participantID;
      v12 = *&p_var5->encryptionSequenceNumber;
      *(v9 + 64) = *&p_var5->statsPayload.serverPacketInterval;
      *(v9 + 80) = v12;
      *(v9 + 32) = v10;
      *(v9 + 48) = v11;
      *(v9 + 228) = p_var5->streamIDs[0];
      *(v9 + 264) = self->_vtpReceiveSocket;
      *(v9 + 232) = self->_transportSessionID;
      *(v9 + 176) = 0;
      IDSHeaderSizeWithChannelDataFormatArray = VCIDSChannelData_GetIDSHeaderSizeWithChannelDataFormatArray(p_var5, 1u);
      v14 = *&v22[0];
      **&v22[0] = IDSHeaderSizeWithChannelDataFormatArray;
      *(v14 + 8) = self->_emptyBlockBuffer;
      *(v14 + 294) = 1;
      VCMediaQueue_AddPacket(self->_mediaQueue, v14);
      v16 = v15;
      if (v15 < 0)
      {
        [(VCTransportStreamGFT *)v15 VCTransportStreamSendPacket:?];
        return v21;
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v17 = *packet->var5.streamIDs;
      v24 = *&packet->var5.streamIDs[8];
      v25 = 0u;
      v18 = *&packet->var5.statsPayload.serverPacketInterval;
      v25 = *&packet->var5.participantID;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      memset(v22, 0, sizeof(v22));
      v26 = v18;
      v27 = 0u;
      v27 = *&packet->var5.encryptionSequenceNumber;
      v28 = 0u;
      vtpReceiveSocket = self->_vtpReceiveSocket;
      DWORD2(v22[0]) = self->_transportSessionID;
      v23 = v17;
      BYTE13(v24) = 1;
      VTP_Send(vtpReceiveSocket, packet->var2, packet->var3, packet->var4, v22);
      return 0;
    }
  }

  else
  {
    v16 = -2144206847;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportStreamGFT VCTransportStreamSendPacket:];
      }
    }
  }

  return v16;
}

- (int)receivePacket:(id *)packet
{
  v24 = *MEMORY[0x1E69E9840];
  p_vtpReceiveSocket = &self->_vtpReceiveSocket;
  if (self->_vtpReceiveSocket == -1 || (vtpCancelSocket = self->_vtpCancelSocket, vtpCancelSocket == -1))
  {
    v12 = -2144206806;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportStreamGFT receivePacket:];
      }
    }
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    if (__darwin_check_fd_set_overflow(vtpCancelSocket, v23, 0))
    {
      *(v23 + ((vtpCancelSocket >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << vtpCancelSocket;
    }

    v9 = &self->_vtpReceiveSocket;
    vtpReceiveSocket = self->_vtpReceiveSocket;
    v8 = v9[1];
    if (__darwin_check_fd_set_overflow(vtpReceiveSocket, v23, 0))
    {
      *(v23 + ((vtpReceiveSocket >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << vtpReceiveSocket;
    }

    v10 = *p_vtpReceiveSocket;
    if (*p_vtpReceiveSocket <= v8)
    {
      v10 = v8;
    }

    v11 = VTP_Select((v10 + 1), v23, 0, 0, 0);
    v12 = v11;
    if (v11)
    {
      if (v11 == -1)
      {
        if (*__error() != 9)
        {
          return *__error() | 0xC00F0000;
        }

        return 0;
      }

      v13 = *p_vtpReceiveSocket;
      if (!__darwin_check_fd_set_overflow(*p_vtpReceiveSocket, v23, 0) || ((*(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v13) & 1) == 0)
      {
        return 0;
      }

      v22 = 0;
      v12 = VTP_Recvfrom(*p_vtpReceiveSocket, &v22);
      if (v12 < 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [(VCTransportStreamGFT *)v20 receivePacket:v21];
          }
        }
      }

      else
      {
        v14 = v22;
        v15 = v22 + 360;
        *packet->var5.streamIDs = *(v22 + 360);
        v16 = v15[1];
        v17 = v15[2];
        v18 = v15[4];
        *&packet->var5.statsPayload.serverPacketInterval = v15[3];
        *&packet->var5.encryptionSequenceNumber = v18;
        *&packet->var5.streamIDs[8] = v16;
        *&packet->var5.participantID = v17;
        packet->var0 = *(v14 + 51);
        packet->var1 = *v14;
        VTP_ReleasePacket(&v22);
      }
    }
  }

  return v12;
}

- (void)VCTransportStreamUnblock
{
  vtpCancelSocket = self->_vtpCancelSocket;
  if (vtpCancelSocket != -1)
  {
    VTP_Close(vtpCancelSocket);
    self->_vtpCancelSocket = -1;
  }
}

- (int)registerPacketCallbackContext:(void *)context callback:(id)callback
{
  v31 = *MEMORY[0x1E69E9840];
  if (context && callback)
  {
    vtpReceiveSocket = self->_vtpReceiveSocket;
    if (vtpReceiveSocket < 0x400)
    {
      if (self->_vtpCallbackId == -1)
      {
        *self->_readFDsForCallback.fds_bits = 0u;
        p_readFDsForCallback = &self->_readFDsForCallback;
        *&self->_readFDsForCallback.fds_bits[24] = 0u;
        *&self->_readFDsForCallback.fds_bits[28] = 0u;
        *&self->_readFDsForCallback.fds_bits[16] = 0u;
        *&self->_readFDsForCallback.fds_bits[20] = 0u;
        *&self->_readFDsForCallback.fds_bits[8] = 0u;
        *&self->_readFDsForCallback.fds_bits[12] = 0u;
        *&self->_readFDsForCallback.fds_bits[4] = 0u;
        if (__darwin_check_fd_set_overflow(vtpReceiveSocket, &self->_readFDsForCallback, 0))
        {
          *(p_readFDsForCallback->fds_bits + ((vtpReceiveSocket >> 3) & 0x1FFFFFFC)) |= 1 << vtpReceiveSocket;
        }

        self->_callback = _Block_copy(callback);
        self->_callbackContext = context;
        v8 = 0;
        self->_vtpCallbackId = VTP_RegisterPacketCallback(self->_readFDsForCallback.fds_bits, self, &__block_literal_global_113);
      }

      else
      {
        v8 = -2144206844;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            vtpCallbackId = self->_vtpCallbackId;
            v19 = 136316162;
            v20 = v14;
            v21 = 2080;
            v22 = "[VCTransportStreamGFT registerPacketCallbackContext:callback:]";
            v23 = 1024;
            v24 = 191;
            v25 = 2048;
            selfCopy3 = self;
            v27 = 1024;
            LODWORD(callbackCopy) = vtpCallbackId;
            _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d transportStream[%p] already registered a vtpCallbackId [%d]", &v19, 0x2Cu);
            return -2144206844;
          }
        }
      }
    }

    else
    {
      v8 = -2144206806;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = self->_vtpReceiveSocket;
          v19 = 136316162;
          v20 = v9;
          v21 = 2080;
          v22 = "[VCTransportStreamGFT registerPacketCallbackContext:callback:]";
          v23 = 1024;
          v24 = 186;
          v25 = 2048;
          selfCopy3 = self;
          v27 = 1024;
          LODWORD(callbackCopy) = v11;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d transportStream[%p] socket[%d] is invalid", &v19, 0x2Cu);
          return -2144206806;
        }
      }
    }
  }

  else
  {
    v8 = -2144206847;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v19 = 136316418;
        v20 = v12;
        v21 = 2080;
        v22 = "[VCTransportStreamGFT registerPacketCallbackContext:callback:]";
        v23 = 1024;
        v24 = 181;
        v25 = 2048;
        selfCopy3 = self;
        v27 = 2048;
        callbackCopy = callback;
        v29 = 2048;
        contextCopy = context;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d transportStream[%p] callback %p or callback context %p is invalid", &v19, 0x3Au);
      }
    }
  }

  return v8;
}

uint64_t __63__VCTransportStreamGFT_registerPacketCallbackContext_callback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  bzero(v9, 0x5D8uLL);
  v6 = *(a4 + 51);
  v13 = *(a4 + 49);
  v14 = v6;
  v15 = *(a4 + 53);
  v7 = *(a4 + 47);
  v11 = *(a4 + 45);
  v12 = v7;
  v9[0] = *(a4 + 51);
  v10 = *a4;
  result = *(a3 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a3 + 40), v9);
  }

  return result;
}

- (int)unregisterPacketCallback
{
  v19 = *MEMORY[0x1E69E9840];
  vtpCallbackId = self->_vtpCallbackId;
  if (vtpCallbackId == -1)
  {
    v4 = -2144206844;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = self->_vtpCallbackId;
        v9 = 136316162;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCTransportStreamGFT unregisterPacketCallback]";
        v13 = 1024;
        v14 = 210;
        v15 = 2048;
        selfCopy = self;
        v17 = 1024;
        v18 = v8;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d transportStream[%p] cannot unregister an invalid vtpCallbackId [%d]", &v9, 0x2Cu);
      }
    }
  }

  else
  {
    VTP_UnregisterPacketCallback(vtpCallbackId);
    _Block_release(self->_callback);
    v4 = 0;
    self->_callback = 0;
    self->_callbackContext = 0;
    self->_vtpCallbackId = -1;
  }

  return v4;
}

- (void)initWithTransportSessionID:options:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Out of memory when creating CMBlockBuffer!", v2, v3, v4, v5, v6);
}

- (void)initWithTransportSessionID:(os_log_t)log options:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCTransportStreamGFT initWithTransportSessionID:options:]";
  v8 = 1024;
  v9 = 49;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not create VTP socket for VCTransportStream for sessionID=%d", &v4, 0x22u);
}

- (void)VCTransportStreamSendPacket:(int)a1 .cold.1(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to add media packet. (%X)", v6, v7, v8, v9, v10);
    }
  }

  *a2 = a1;
}

- (void)VCTransportStreamSendPacket:(int)a1 .cold.2(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to allocate media packet. (%X)", v6, v7, v8, v9, v10);
    }
  }

  *a2 = a1;
}

- (void)VCTransportStreamSendPacket:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d invalid packet", v2, v3, v4, v5, v6);
}

- (void)receivePacket:(NSObject *)a3 .cold.1(uint64_t a1, int *a2, NSObject *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *__error() | 0xC00F0000;
  v7 = 136316418;
  v8 = a1;
  v9 = 2080;
  v10 = "[VCTransportStreamGFT receivePacket:]";
  v11 = 1024;
  v12 = 157;
  v13 = 1024;
  v14 = v5;
  v15 = 1024;
  v16 = v6;
  v17 = 1024;
  v18 = -1;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTP_Recvfrom(%d) failed(%08X) for sessionID=%d", &v7, 0x2Eu);
}

- (void)receivePacket:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid socket, return", v2, v3, v4, v5, v6);
}

@end