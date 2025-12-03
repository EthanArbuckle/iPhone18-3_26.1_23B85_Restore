@interface VCTransportSessionSocket
- (VCTransportSessionSocket)initWithRTPSocket:(int)socket RTCPSocket:(int)pSocket notificationHandler:(void *)handler eventHandler:(void *)eventHandler handlerQueue:(id)queue context:(void *)context;
- (VCTransportSessionSocket)initWithSocketDictionary:(id)dictionary notificationHandler:(void *)handler eventHandler:(void *)eventHandler handlerQueue:(id)queue context:(void *)context;
- (id)streams;
- (int)configureParamatersForStreamType:(unsigned int)type socket:(int *)socket packetType:(int *)packetType remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length;
- (int)connectSocket:(int)socket remoteAddress:(id)address storage:(sockaddr_storage *)storage;
- (int)createVFD:(int *)d forStreamType:(unsigned int)type;
- (int)createVFD:(int *)d realSocket:(int)socket sockAddr:(sockaddr_storage *)addr length:(unsigned int *)length isUsable:(BOOL *)usable;
- (int)initializeNetworkInfoWithSocket:(int)socket;
- (int)setAudioRTCPStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length;
- (int)setAudioRTPStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length;
- (int)setBasebandNotificationStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length;
- (int)setRemoteAddress:(id)address remoteRTCPPort:(int)port;
- (int)setVideoRTCPStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length;
- (int)setVideoRTPStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length;
- (int)updateTransportStream:(OpaqueVCTransportStream *)stream;
- (tagVCNWConnectionMonitor)createNWMonitor;
- (void)addNetworkAssertion;
- (void)dealloc;
- (void)initializeInterfaceTypeWithSocket:(int)socket;
- (void)removeNetworkAssertion;
- (void)start;
- (void)stop;
@end

@implementation VCTransportSessionSocket

- (VCTransportSessionSocket)initWithSocketDictionary:(id)dictionary notificationHandler:(void *)handler eventHandler:(void *)eventHandler handlerQueue:(id)queue context:(void *)context
{
  v32 = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportSessionSocket initWithSocketDictionary:notificationHandler:eventHandler:handlerQueue:context:];
      }
    }

    v18 = 0;
    goto LABEL_8;
  }

  v13 = xpc_dictionary_dup_fd(dictionary, "avcKeySharedSocket");
  if (v13 == -1)
  {
    v14 = xpc_dictionary_dup_fd(dictionary, "avcKeyRTPSocket");
    v16 = xpc_dictionary_dup_fd(dictionary, "avcKeyRTCPSocket");
    if (v16 == -1)
    {

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionSocket initWithSocketDictionary:notificationHandler:eventHandler:handlerQueue:context:];
        }
      }

      v18 = 0;
      v15 = 0xFFFFFFFFLL;
      goto LABEL_10;
    }

    v15 = v16;
    if (v14 == -1)
    {

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionSocket initWithSocketDictionary:notificationHandler:eventHandler:handlerQueue:context:];
        }
      }

      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = v13;
    v15 = 0xFFFFFFFFLL;
  }

  v17 = [(VCTransportSessionSocket *)self initWithRTPSocket:v14 RTCPSocket:v15 notificationHandler:handler eventHandler:eventHandler handlerQueue:queue context:context];
  if (v17)
  {
    v18 = v17;
LABEL_8:
    v15 = 0xFFFFFFFFLL;
LABEL_9:
    v14 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v22 = 136316162;
      v23 = v20;
      v24 = 2080;
      v25 = "[VCTransportSessionSocket initWithSocketDictionary:notificationHandler:eventHandler:handlerQueue:context:]";
      v26 = 1024;
      v27 = 54;
      v28 = 1024;
      v29 = v14;
      v30 = 1024;
      v31 = v15;
      _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d initWithRTPSocket:%d RTCPSocket:%d failed", &v22, 0x28u);
    }
  }

  v18 = 0;
LABEL_10:
  VCCloseSocketIfValid(v14);
  VCCloseSocketIfValid(v15);
  return v18;
}

- (VCTransportSessionSocket)initWithRTPSocket:(int)socket RTCPSocket:(int)pSocket notificationHandler:(void *)handler eventHandler:(void *)eventHandler handlerQueue:(id)queue context:(void *)context
{
  v15 = *MEMORY[0x1E69E9840];
  if (socket == -1)
  {
    [VCTransportSessionSocket initWithRTPSocket:? RTCPSocket:? notificationHandler:? eventHandler:? handlerQueue:? context:?];
    return v14;
  }

  v8 = *&pSocket;
  v9 = *&socket;
  v13.receiver = self;
  v13.super_class = VCTransportSessionSocket;
  v10 = [(VCTransportSession *)&v13 initWithNotificationQueue:0 reportingAgent:0 notificationHandler:handler eventHandler:eventHandler handlerQueue:queue context:context];
  v11 = v10;
  if (v10)
  {
    v10->_rtcpVFD = -1;
    v10->_rtpVFD = -1;
    if (v8 == -1)
    {
      v10->_isSharedSocket = 1;
    }

    if ([(VCTransportSessionSocket *)v10 createVFD:&v10->_rtpVFD realSocket:v9 sockAddr:&v10->_rtpIPPort length:&v10->_rtpIPPortLength isUsable:&v10->_isRTPUsable])
    {
      [VCTransportSessionSocket initWithRTPSocket:RTCPSocket:notificationHandler:eventHandler:handlerQueue:context:];
    }

    else if (!v11->_isSharedSocket && [(VCTransportSessionSocket *)v11 createVFD:&v11->_rtcpVFD realSocket:v8 sockAddr:&v11->_rtcpIPPort length:&v11->_rtcpIPPortLength isUsable:&v11->_isRTCPUsable])
    {
      [VCTransportSessionSocket initWithRTPSocket:RTCPSocket:notificationHandler:eventHandler:handlerQueue:context:];
    }

    else
    {
      if (([(VCTransportSessionSocket *)v11 initializeNetworkInfoWithSocket:v9]& 0x80000000) == 0)
      {
        [(VCTransportSessionSocket *)v11 initializeInterfaceTypeWithSocket:v9];
        return v11;
      }

      [VCTransportSessionSocket initWithRTPSocket:RTCPSocket:notificationHandler:eventHandler:handlerQueue:context:];
    }

    return v14;
  }

  return v11;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  VCCloseVFDIfValid(self->_rtpVFD);
  VCCloseVFDIfValid(self->_rtcpVFD);

  v3.receiver = self;
  v3.super_class = VCTransportSessionSocket;
  [(VCTransportSession *)&v3 dealloc];
}

- (int)createVFD:(int *)d realSocket:(int)socket sockAddr:(sockaddr_storage *)addr length:(unsigned int *)length isUsable:(BOOL *)usable
{
  v15 = *MEMORY[0x1E69E9840];
  *usable = 0;
  *d = VTP_SocketWithRealSocket(2, 2, 17, socket);
  if (self->_rtpVFD == -1)
  {
    [VCTransportSessionSocket createVFD:? realSocket:? sockAddr:? length:? isUsable:?];
    return v14;
  }

  *length = 128;
  if (getpeername(socket, addr, length) != -1)
  {
    if (VTP_SetSourceDestinationWithIPPort(*d) != -1)
    {
      result = 0;
      *usable = 1;
      return result;
    }

    [VCTransportSessionSocket createVFD:realSocket:sockAddr:length:isUsable:];
    return v14;
  }

  *length = 16;
  *&addr->ss_len = 0;
  addr->__ss_align = 0;
  if (VTP_SetSourceDestinationWithIPPort(*d) == -1)
  {
    [VCTransportSessionSocket createVFD:realSocket:sockAddr:length:isUsable:];
    return v14;
  }

  return 0;
}

- (id)streams
{
  pthread_mutex_lock(&self->super._stateLock);
  v3 = [(NSMutableArray *)self->super._streams copy];
  pthread_mutex_unlock(&self->super._stateLock);
  return v3;
}

- (int)updateTransportStream:(OpaqueVCTransportStream *)stream
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = 0;
  CMBaseObject = VCPacketFilterGetCMBaseObject(stream, a2);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, @"UnderlyingVFD", *MEMORY[0x1E695E480], &v13);
    if (!v6)
    {
      intValue = [v13 intValue];
      v12 = 0;
      if (VTP_GetPktType(intValue, &v12) == -1)
      {
        [VCTransportSessionSocket updateTransportStream:];
      }

      else
      {
        if (VTP_SetSourceDestinationWithIPPort(intValue) != -1)
        {
          v8 = 0;
          goto LABEL_10;
        }

        [VCTransportSessionSocket updateTransportStream:];
      }

      v8 = *buf;
      goto LABEL_10;
    }

    v8 = v6;
  }

  else
  {
    v8 = -12782;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v15 = v9;
      v16 = 2080;
      v17 = "[VCTransportSessionSocket updateTransportStream:]";
      v18 = 1024;
      v19 = 149;
      v20 = 2112;
      v21 = @"UnderlyingVFD";
      v22 = 2112;
      streamCopy = stream;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not get property '%@' for transport stream '%@'", buf, 0x30u);
    }
  }

LABEL_10:

  return v8;
}

- (int)connectSocket:(int)socket remoteAddress:(id)address storage:(sockaddr_storage *)storage
{
  v9 = *MEMORY[0x1E69E9840];
  if (!address)
  {
    [VCTransportSessionSocket connectSocket:? remoteAddress:? storage:?];
    return v8;
  }

  v7 = 128;
  if ([address getSockaddrStorage:storage size:&v7])
  {
    [VCTransportSessionSocket connectSocket:remoteAddress:storage:];
    return v8;
  }

  if (VTP_SetSourceDestinationWithIPPort(socket) == -1)
  {
    [VCTransportSessionSocket connectSocket:remoteAddress:storage:];
    return v8;
  }

  return 0;
}

- (int)setRemoteAddress:(id)address remoteRTCPPort:(int)port
{
  v29 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->super._stateLock);
  if ([(VCNetworkAddress *)self->_remoteAddress isEqual:address])
  {
    [VCTransportSessionSocket setRemoteAddress:&v24 remoteRTCPPort:?];
LABEL_17:
    v22 = v24;
    goto LABEL_19;
  }

  v7 = [address copy];
  self->_remoteAddress = v7;
  rtpVFD = self->_rtpVFD;
  if (rtpVFD == -1)
  {
    goto LABEL_5;
  }

  if ([(VCTransportSessionSocket *)self connectSocket:rtpVFD remoteAddress:v7 storage:&self->_rtpIPPort])
  {
    [VCTransportSessionSocket setRemoteAddress:remoteRTCPPort:];
    goto LABEL_17;
  }

  self->_rtpIPPortLength = self->_rtpIPPort.ss_len;
  self->_isRTPUsable = 1;
LABEL_5:
  if (self->_isSharedSocket)
  {
    goto LABEL_13;
  }

  port = [(VCNetworkAddress *)self->_remoteAddress port];
  [(VCNetworkAddress *)self->_remoteAddress setPort:([(VCNetworkAddress *)self->_remoteAddress port]+ 1)];
  if ((port - 1) <= 0xFFFFFFFD)
  {
    [(VCNetworkAddress *)self->_remoteAddress setPort:port];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      port2 = [(VCNetworkAddress *)self->_remoteAddress port];
      v24 = 136315906;
      v25 = v10;
      v26 = 2080;
      *v27 = "[VCTransportSessionSocket setRemoteAddress:remoteRTCPPort:]";
      *&v27[8] = 1024;
      LODWORD(v28) = 206;
      WORD2(v28) = 1024;
      *(&v28 + 6) = port2;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTCP port is set to '%d'", &v24, 0x22u);
    }
  }

  v13 = [(VCTransportSessionSocket *)self connectSocket:self->_rtcpVFD remoteAddress:self->_remoteAddress storage:&self->_rtcpIPPort];
  [(VCNetworkAddress *)self->_remoteAddress setPort:port];
  if (v13)
  {
    [VCTransportSessionSocket setRemoteAddress:remoteRTCPPort:];
    goto LABEL_17;
  }

  self->_rtcpIPPortLength = self->_rtcpIPPort.ss_len;
  self->_isRTCPUsable = 1;
LABEL_13:
  v14 = [(NSMutableArray *)self->super._streams count]- 1;
  while ((v14 & 0x80000000) == 0)
  {
    0x7FFFFFFF = [(NSMutableArray *)self->super._streams objectAtIndexedSubscript:v14 & 0x7FFFFFFF];
    v16 = [(VCTransportSessionSocket *)self updateTransportStream:0x7FFFFFFF];
    --v14;
    if (v16)
    {
      [(VCTransportSessionSocket *)0x7FFFFFFF setRemoteAddress:v16 remoteRTCPPort:&v24, v17, v18, v19, v20, v21, v24, v25, SHIDWORD(v25), v26, *&v27[2], v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8];
      goto LABEL_17;
    }
  }

  v22 = 0;
LABEL_19:
  pthread_mutex_unlock(&self->super._stateLock);
  return v22;
}

- (int)setAudioRTPStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length
{
  *socket = self->_rtpVFD;
  *type = 16;
  v6 = *&self->_rtpIPPort.__ss_pad2[32];
  v8 = *&self->_rtpIPPort.ss_len;
  v7 = *self->_rtpIPPort.__ss_pad2;
  *&p->__ss_pad2[16] = *&self->_rtpIPPort.__ss_pad2[16];
  *&p->__ss_pad2[32] = v6;
  *&p->ss_len = v8;
  *p->__ss_pad2 = v7;
  v9 = *&self->_rtpIPPort.__ss_pad2[96];
  v11 = *&self->_rtpIPPort.__ss_pad2[48];
  v10 = *&self->_rtpIPPort.__ss_pad2[64];
  *&p->__ss_pad2[80] = *&self->_rtpIPPort.__ss_pad2[80];
  *&p->__ss_pad2[96] = v9;
  *&p->__ss_pad2[48] = v11;
  *&p->__ss_pad2[64] = v10;
  *length = self->_rtpIPPortLength;
  if (self->_isRTPUsable)
  {
    return 0;
  }

  else
  {
    return -2144665536;
  }
}

- (int)setAudioRTCPStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length
{
  if (self->_isSharedSocket)
  {
    v6 = &OBJC_IVAR___VCTransportSessionSocket__rtpVFD;
  }

  else
  {
    v6 = &OBJC_IVAR___VCTransportSessionSocket__rtcpVFD;
  }

  *socket = *(&self->super.super.isa + *v6);
  *type = 64;
  v7 = *&self->_rtcpIPPort.__ss_pad2[32];
  v9 = *&self->_rtcpIPPort.ss_len;
  v8 = *self->_rtcpIPPort.__ss_pad2;
  *&p->__ss_pad2[16] = *&self->_rtcpIPPort.__ss_pad2[16];
  *&p->__ss_pad2[32] = v7;
  *&p->ss_len = v9;
  *p->__ss_pad2 = v8;
  v10 = *&self->_rtcpIPPort.__ss_pad2[96];
  v12 = *&self->_rtcpIPPort.__ss_pad2[48];
  v11 = *&self->_rtcpIPPort.__ss_pad2[64];
  *&p->__ss_pad2[80] = *&self->_rtcpIPPort.__ss_pad2[80];
  *&p->__ss_pad2[96] = v10;
  *&p->__ss_pad2[48] = v12;
  *&p->__ss_pad2[64] = v11;
  *length = self->_rtcpIPPortLength;
  if (self->_isRTCPUsable)
  {
    v13 = 0;
  }

  else
  {
    v13 = -2144665536;
  }

  if (self->_isSharedSocket)
  {
    if (self->_isRTPUsable)
    {
      return 0;
    }

    else
    {
      return -2144665536;
    }
  }

  return v13;
}

- (int)setVideoRTPStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length
{
  *socket = self->_rtpVFD;
  *type = 32;
  v6 = *&self->_rtpIPPort.__ss_pad2[32];
  v8 = *&self->_rtpIPPort.ss_len;
  v7 = *self->_rtpIPPort.__ss_pad2;
  *&p->__ss_pad2[16] = *&self->_rtpIPPort.__ss_pad2[16];
  *&p->__ss_pad2[32] = v6;
  *&p->ss_len = v8;
  *p->__ss_pad2 = v7;
  v9 = *&self->_rtpIPPort.__ss_pad2[96];
  v11 = *&self->_rtpIPPort.__ss_pad2[48];
  v10 = *&self->_rtpIPPort.__ss_pad2[64];
  *&p->__ss_pad2[80] = *&self->_rtpIPPort.__ss_pad2[80];
  *&p->__ss_pad2[96] = v9;
  *&p->__ss_pad2[48] = v11;
  *&p->__ss_pad2[64] = v10;
  *length = self->_rtpIPPortLength;
  if (self->_isRTPUsable)
  {
    return 0;
  }

  else
  {
    return -2144665536;
  }
}

- (int)setVideoRTCPStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length
{
  if (self->_isSharedSocket)
  {
    v6 = &OBJC_IVAR___VCTransportSessionSocket__rtpVFD;
  }

  else
  {
    v6 = &OBJC_IVAR___VCTransportSessionSocket__rtcpVFD;
  }

  *socket = *(&self->super.super.isa + *v6);
  *type = 128;
  v7 = *&self->_rtcpIPPort.__ss_pad2[32];
  v9 = *&self->_rtcpIPPort.ss_len;
  v8 = *self->_rtcpIPPort.__ss_pad2;
  *&p->__ss_pad2[16] = *&self->_rtcpIPPort.__ss_pad2[16];
  *&p->__ss_pad2[32] = v7;
  *&p->ss_len = v9;
  *p->__ss_pad2 = v8;
  v10 = *&self->_rtcpIPPort.__ss_pad2[96];
  v12 = *&self->_rtcpIPPort.__ss_pad2[48];
  v11 = *&self->_rtcpIPPort.__ss_pad2[64];
  *&p->__ss_pad2[80] = *&self->_rtcpIPPort.__ss_pad2[80];
  *&p->__ss_pad2[96] = v10;
  *&p->__ss_pad2[48] = v12;
  *&p->__ss_pad2[64] = v11;
  *length = self->_rtcpIPPortLength;
  if (self->_isRTCPUsable)
  {
    v13 = 0;
  }

  else
  {
    v13 = -2144665536;
  }

  if (self->_isSharedSocket)
  {
    if (self->_isRTPUsable)
    {
      return 0;
    }

    else
    {
      return -2144665536;
    }
  }

  return v13;
}

- (int)setBasebandNotificationStreamParamatersForSocket:(int *)socket packetType:(int *)type remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length
{
  *socket = self->_rtpVFD;
  *type = 256;
  v6 = *&self->_rtpIPPort.__ss_pad2[32];
  v8 = *&self->_rtpIPPort.ss_len;
  v7 = *self->_rtpIPPort.__ss_pad2;
  *&p->__ss_pad2[16] = *&self->_rtpIPPort.__ss_pad2[16];
  *&p->__ss_pad2[32] = v6;
  *&p->ss_len = v8;
  *p->__ss_pad2 = v7;
  v9 = *&self->_rtpIPPort.__ss_pad2[96];
  v11 = *&self->_rtpIPPort.__ss_pad2[48];
  v10 = *&self->_rtpIPPort.__ss_pad2[64];
  *&p->__ss_pad2[80] = *&self->_rtpIPPort.__ss_pad2[80];
  *&p->__ss_pad2[96] = v9;
  *&p->__ss_pad2[48] = v11;
  *&p->__ss_pad2[64] = v10;
  *length = self->_rtpIPPortLength;
  if (self->_isRTPUsable)
  {
    return 0;
  }

  else
  {
    return -2144665536;
  }
}

- (int)configureParamatersForStreamType:(unsigned int)type socket:(int *)socket packetType:(int *)packetType remoteIP:(sockaddr_storage *)p remoteIPLength:(unsigned int *)length
{
  if (type <= 3)
  {
    if (type == 1)
    {
      v7 = [(VCTransportSessionSocket *)self setBasebandNotificationStreamParamatersForSocket:socket packetType:packetType remoteIP:p remoteIPLength:length];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_14;
      }

      v7 = [(VCTransportSessionSocket *)self setAudioRTPStreamParamatersForSocket:socket packetType:packetType remoteIP:p remoteIPLength:length];
    }

LABEL_12:
    v8 = v7;
    if (!v7)
    {
      return v8;
    }

    goto LABEL_17;
  }

  switch(type)
  {
    case 4u:
      v7 = [(VCTransportSessionSocket *)self setAudioRTCPStreamParamatersForSocket:socket packetType:packetType remoteIP:p remoteIPLength:length];
      goto LABEL_12;
    case 5u:
      v7 = [(VCTransportSessionSocket *)self setVideoRTPStreamParamatersForSocket:socket packetType:packetType remoteIP:p remoteIPLength:length];
      goto LABEL_12;
    case 6u:
      v7 = [(VCTransportSessionSocket *)self setVideoRTCPStreamParamatersForSocket:socket packetType:packetType remoteIP:p remoteIPLength:length];
      goto LABEL_12;
  }

LABEL_14:
  v8 = -2144665599;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCTransportSessionSocket configureParamatersForStreamType:socket:packetType:remoteIP:remoteIPLength:];
    }
  }

LABEL_17:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCTransportSessionSocket configureParamatersForStreamType:socket:packetType:remoteIP:remoteIPLength:];
    }
  }

  return v8;
}

- (int)createVFD:(int *)d forStreamType:(unsigned int)type
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, sizeof(v13));
  v10 = -1;
  v11 = 0;
  v8 = 0;
  v9 = -1;
  if ([(VCTransportSessionSocket *)self configureParamatersForStreamType:*&type socket:&v10 packetType:&v8 remoteIP:v13 remoteIPLength:&v11])
  {
    [VCTransportSessionSocket createVFD:forStreamType:];
LABEL_9:
    v6 = v12;
    goto LABEL_5;
  }

  if ([(VCTransportSessionSocket *)self createAndConfigureVFDForSocket:v10 packetType:v8 remoteIP:v13 remoteIPLength:v11 vfd:&v9])
  {
    [VCTransportSessionSocket createVFD:forStreamType:];
    goto LABEL_9;
  }

  if (v9 == -1)
  {
    [VCTransportSessionSocket createVFD:? forStreamType:?];
    goto LABEL_9;
  }

  v6 = 0;
  *d = v9;
  v9 = -1;
LABEL_5:
  VCCloseVFDIfValid(v9);
  return v6;
}

- (void)start
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCTransportSessionSocket start]";
      v9 = 1024;
      v10 = 348;
      v11 = 2080;
      networkInterfaceName = self->_networkInterfaceName;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Creating NW Connection based on network interface=%s", &v5, 0x26u);
    }
  }

  [(VCTransportSession *)self setupNWMonitor];
  [(VCTransportSessionSocket *)self addNetworkAssertion];
  [(VCTransportSession *)self callEventHandlerWithEvent:1 info:0];
}

- (void)stop
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCTransportSession *)self destroyNWMonitor];
  [(VCTransportSessionSocket *)self removeNetworkAssertion];
  v3.receiver = self;
  v3.super_class = VCTransportSessionSocket;
  [(VCTransportSession *)&v3 stop];
}

- (void)initializeInterfaceTypeWithSocket:(int)socket
{
  v16 = *MEMORY[0x1E69E9840];
  LocalIFFunctionalTypeForBoundSocket = GetLocalIFFunctionalTypeForBoundSocket();
  GetLocalIFNameForBoundSocket();
  if (LocalIFFunctionalTypeForBoundSocket > 2)
  {
    if (LocalIFFunctionalTypeForBoundSocket == 3)
    {
      if (!strcmp(self->_networkInterfaceName, "llw0"))
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      goto LABEL_15;
    }

    if (LocalIFFunctionalTypeForBoundSocket == 4)
    {
      v5 = 4;
      goto LABEL_15;
    }
  }

  else
  {
    if (LocalIFFunctionalTypeForBoundSocket == 1)
    {
      v5 = 5;
      goto LABEL_15;
    }

    if (LocalIFFunctionalTypeForBoundSocket == 2)
    {
      v5 = 1;
LABEL_15:
      self->_networkInterfaceType = v5;
      return;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCTransportSessionSocket initializeInterfaceTypeWithSocket:]";
      v12 = 1024;
      v13 = 384;
      v14 = 1024;
      v15 = LocalIFFunctionalTypeForBoundSocket;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Not setting unexpected transport type %d", &v8, 0x22u);
    }
  }
}

- (int)initializeNetworkInfoWithSocket:(int)socket
{
  v17 = *MEMORY[0x1E69E9840];
  *&v4.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v4.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v15 = v4;
  v16 = v4;
  v13 = v4;
  v14 = v4;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8[0] = 128;
  result = getsockname(socket, &v9, v8);
  if (result)
  {
    [VCTransportSessionSocket initializeNetworkInfoWithSocket:];
    return v8[1];
  }

  else
  {
    v6 = v9.sa_family == 30;
    self->_isIPv6 = v6;
    if (v6)
    {
      v7 = 1280;
    }

    else
    {
      v7 = 1450;
    }

    self->_networkMTU = v7;
  }

  return result;
}

- (tagVCNWConnectionMonitor)createNWMonitor
{
  v6[5] = *MEMORY[0x1E69E9840];
  isIPv6 = self->_isIPv6;
  nwMonitorEventHandlerQueue = [(VCTransportSession *)self nwMonitorEventHandlerQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__VCTransportSessionSocket_createNWMonitor__block_invoke;
  v6[3] = &unk_1E85F3778;
  v6[4] = self;
  return VCNWConnectionMonitor_CreateWithInterfaceName(self->_networkInterfaceName, 16, isIPv6, nwMonitorEventHandlerQueue, v6);
}

- (void)addNetworkAssertion
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VCTransportSessionSocket_addNetworkAssertion__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

id __47__VCTransportSessionSocket_addNetworkAssertion__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3.receiver = v1;
  v3.super_class = VCTransportSessionSocket;
  return objc_msgSendSuper2(&v3, sel_addNetworkAssertionWithInterfaceType_, [v1 networkInterfaceType]);
}

- (void)removeNetworkAssertion
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__VCTransportSessionSocket_removeNetworkAssertion__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

id __50__VCTransportSessionSocket_removeNetworkAssertion__block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = *(a1 + 32);
  v2.super_class = VCTransportSessionSocket;
  return objc_msgSendSuper2(&v2, sel_removeNetworkAssertion);
}

- (void)initWithSocketDictionary:notificationHandler:eventHandler:handlerQueue:context:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 51;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d 'rtpSocket' may not be kVCInvalidSocket", v2);
}

- (void)initWithSocketDictionary:notificationHandler:eventHandler:handlerQueue:context:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 49;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d 'rtcpSocket' may not be kVCInvalidSocket for regular mode", v2);
}

- (void)initWithSocketDictionary:notificationHandler:eventHandler:handlerQueue:context:.cold.3()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 44;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Parameter 'socketDictionary' may not be NULL", v2);
}

- (void)initWithRTPSocket:RTCPSocket:notificationHandler:eventHandler:handlerQueue:context:.cold.1()
{
  OUTLINED_FUNCTION_13_11();

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initWithRTPSocket:RTCPSocket:notificationHandler:eventHandler:handlerQueue:context:.cold.2()
{
  OUTLINED_FUNCTION_13_11();

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initWithRTPSocket:RTCPSocket:notificationHandler:eventHandler:handlerQueue:context:.cold.3()
{
  OUTLINED_FUNCTION_13_11();

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initWithRTPSocket:(void *)a1 RTCPSocket:notificationHandler:eventHandler:handlerQueue:context:.cold.4(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)createVFD:realSocket:sockAddr:length:isUsable:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      __error();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

- (void)createVFD:realSocket:sockAddr:length:isUsable:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      __error();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

- (void)createVFD:(_DWORD *)a1 realSocket:sockAddr:length:isUsable:.cold.3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2144665558;
}

- (void)updateTransportStream:.cold.1()
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

  OUTLINED_FUNCTION_15_7();
}

- (void)updateTransportStream:.cold.2()
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

  OUTLINED_FUNCTION_15_7();
}

- (void)connectSocket:remoteAddress:storage:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)connectSocket:remoteAddress:storage:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      __error();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_15_7();
}

- (void)connectSocket:(_DWORD *)a1 remoteAddress:storage:.cold.3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2144665599;
}

- (void)setRemoteAddress:remoteRTCPPort:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)setRemoteAddress:remoteRTCPPort:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)setRemoteAddress:(uint64_t)a3 remoteRTCPPort:(uint64_t)a4 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, int a10, int a11, __int16 a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_37();
  a22 = v23;
  a23 = v24;
  OUTLINED_FUNCTION_13_11();
  v26 = v25;
  a15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      a12 = v28;
      OUTLINED_FUNCTION_6();
      LODWORD(a14) = 217;
      WORD2(a14) = 2112;
      *(&a14 + 6) = v26;
      _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set up remoteAddress on transport stream '%@'", &a9, 0x26u);
    }
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_36();
}

- (void)setRemoteAddress:(uint64_t)a1 remoteRTCPPort:(_DWORD *)a2 .cold.4(uint64_t a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      OUTLINED_FUNCTION_7();
      v9 = 191;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d New configuration matches current one '%@'. Ignoring...", &v6, 0x26u);
    }
  }

  *a2 = 0;
}

- (void)configureParamatersForStreamType:socket:packetType:remoteIP:remoteIPLength:.cold.1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid stream type '%d'", v3, v4, v5, 295);
}

- (void)configureParamatersForStreamType:socket:packetType:remoteIP:remoteIPLength:.cold.2()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d sourceDestinationInfo has not been set. streamType=%d", v3, v4, v5, 298);
}

- (void)createAndConfigureVFDForSocket:(uint64_t)a3 packetType:(uint64_t)a4 remoteIP:(uint64_t)a5 remoteIPLength:(uint64_t)a6 vfd:(uint64_t)a7 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37();
  a21 = v22;
  a22 = v23;
  a14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      a12 = 314;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v24, v25, " [%s] %s:%d VTP_SetPktType failed", &a9);
    }
  }

  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_36();
}

- (void)createAndConfigureVFDForSocket:(uint64_t)a3 packetType:(uint64_t)a4 remoteIP:(uint64_t)a5 remoteIPLength:(uint64_t)a6 vfd:(uint64_t)a7 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37();
  a21 = v22;
  a22 = v23;
  a14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      a12 = 311;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v24, v25, " [%s] %s:%d VTP_SetSocketMode failed", &a9);
    }
  }

  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_36();
}

- (void)createAndConfigureVFDForSocket:packetType:remoteIP:remoteIPLength:vfd:.cold.3()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *v1 = -2144665558;
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_36();
}

- (void)createVFD:forStreamType:.cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_13_11();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_36();
}

- (void)createVFD:forStreamType:.cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_13_11();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_36();
}

- (void)createVFD:(_DWORD *)a1 forStreamType:.cold.3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2144665558;
}

- (void)initializeNetworkInfoWithSocket:.cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  v1 = *__error() | 0xC02B0000;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
  OUTLINED_FUNCTION_36();
}

@end