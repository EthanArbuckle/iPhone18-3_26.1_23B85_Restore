@interface VCTransportSessionIDSSingleLink
- (VCTransportSessionIDSSingleLink)initWithNotificationQueue:(id)queue reportingAgent:(opaqueRTCReporting *)agent;
- (id)copyActiveConnection;
- (int)createVFD:(int *)d forStreamType:(unsigned int)type;
- (int)onStart;
- (int)updateTransportStream:(OpaqueVCTransportStream *)stream;
- (void)dealloc;
- (void)handleLinkConnectedWithInfo:(id)info;
- (void)handleLinkDisconnectedWithInfo:(id)info;
- (void)onStart;
@end

@implementation VCTransportSessionIDSSingleLink

- (VCTransportSessionIDSSingleLink)initWithNotificationQueue:(id)queue reportingAgent:(opaqueRTCReporting *)agent
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCTransportSessionIDSSingleLink;
  return [(VCTransportSessionIDS *)&v5 initWithCallID:0 requireEncryptionInfo:0 reportingAgent:agent notificationQueue:queue];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCTransportSessionIDSSingleLink;
  [(VCTransportSessionIDS *)&v3 dealloc];
}

- (void)handleLinkDisconnectedWithInfo:(id)info
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCTransportSessionIDSSingleLink handleLinkDisconnectedWithInfo:]";
      v9 = 1024;
      v10 = 51;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d IDS channel disconnected", &v5, 0x1Cu);
    }
  }
}

- (int)onStart
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->super.super._stateLock);
  v3 = [(NSMutableArray *)self->super.super._streams count];
  if (v3 < 1)
  {
    v7 = 0;
LABEL_7:
    [(VCTransportSession *)self callEventHandlerWithEvent:1 info:0];
  }

  else
  {
    v4 = 0;
    v5 = v3 & 0x7FFFFFFF;
    while (1)
    {
      v6 = [(NSMutableArray *)self->super.super._streams objectAtIndexedSubscript:v4];
      v7 = [(VCTransportSessionIDSSingleLink *)self updateTransportStream:v6];
      if (v7 < 0)
      {
        break;
      }

      if (v5 == ++v4)
      {
        goto LABEL_7;
      }
    }

    [(VCTransportSessionIDSSingleLink *)v6 onStart];
    v7 = v9;
  }

  pthread_mutex_unlock(&self->super.super._stateLock);
  return v7;
}

- (int)updateTransportStream:(OpaqueVCTransportStream *)stream
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = 0;
  CMBaseObject = VCPacketFilterGetCMBaseObject(stream, a2);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(CMBaseObject, @"UnderlyingVFD", *MEMORY[0x1E695E480], &v13);
    if ((v7 & 0x80000000) == 0)
    {
      intValue = [v13 intValue];
      v9 = VCDatagramChannelIDS_Token(self->super._datagramChannel);
      if (VTP_SetSourceDestinationWithToken(intValue, v9) == -1)
      {
        [VCTransportSessionIDSSingleLink updateTransportStream:buf];
        v7 = *buf;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = -12782;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v15 = v10;
      v16 = 2080;
      v17 = "[VCTransportSessionIDSSingleLink updateTransportStream:]";
      v18 = 1024;
      v19 = 96;
      v20 = 2112;
      v21 = @"UnderlyingVFD";
      v22 = 2112;
      streamCopy = stream;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not get property '%@' for transport stream '%@'", buf, 0x30u);
    }
  }

LABEL_9:

  return v7;
}

- (id)copyActiveConnection
{
  connection = [(VCTransportSessionIDSSingleLink *)self connection];

  return connection;
}

- (void)handleLinkConnectedWithInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_23_7())
    {
      OUTLINED_FUNCTION_0_30();
      v11 = 1024;
      v12 = 37;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d IDS channel connected", v10, 0x1Cu);
    }
  }

  v6 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46B0]];
  if (v6)
  {
    firstObject = [v6 firstObject];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_23_7())
      {
        if (firstObject)
        {
          [objc_msgSend(firstObject "description")];
        }

        OUTLINED_FUNCTION_0_30();
        v11 = 1024;
        v12 = 42;
        v13 = v8;
        v14 = v9;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: new link established with link context=%s", v10, 0x26u);
      }
    }

    if (firstObject)
    {
      self->_connection = [[VCConnectionIDS alloc] initWithLinkContext:firstObject dataChannelToken:VCDatagramChannelIDS_Token(self->super._datagramChannel)];
    }
  }
}

- (int)createVFD:(int *)d forStreamType:(unsigned int)type
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = -2144665599;
  v18 = -1;
  if (d)
  {
    v7 = [VCTransportSession vtpPacketTypeForStreamType:*&type];
    if (v7)
    {
      v4 = VCCreateVFDForIDS(v7, 43, &v18);
      if ((v4 & 0x80000000) == 0)
      {
        v8 = v18;
        v9 = VCDatagramChannelIDS_Token(self->super._datagramChannel);
        if (VTP_SetSourceDestinationWithToken(v8, v9) != -1)
        {
          *d = v18;
          v18 = -1;
          goto LABEL_6;
        }

        v4 = *__error() | 0xC02B0000;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v20 = v16;
            v21 = 2080;
            v22 = "[VCTransportSessionIDSSingleLink createVFD:forStreamType:]";
            v23 = 1024;
            v24 = 84;
            v25 = 1024;
            v26 = v4;
            v13 = " [%s] %s:%d VTP_SetSourceDestinationWithToken failed %x";
            v14 = v17;
            v15 = 34;
            goto LABEL_13;
          }
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = v11;
      v21 = 2080;
      v22 = "[VCTransportSessionIDSSingleLink createVFD:forStreamType:]";
      v23 = 1024;
      v24 = 75;
      v13 = " [%s] %s:%d NULL vfd";
      v14 = v12;
      v15 = 28;
LABEL_13:
      _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }
  }

LABEL_6:
  VCCloseVFDIfValid(v18);
  return v4;
}

- (void)onStart
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCTransportSessionIDSSingleLink onStart]";
      v12 = 1024;
      v13 = 62;
      v14 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to update transport stream '%@'", &v8, 0x26u);
    }
  }

  *a3 = a2;
}

- (void)updateTransportStream:(unsigned int *)a1 .cold.1(unsigned int *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *__error() | 0xC02B0000;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCTransportSessionIDSSingleLink updateTransportStream:]";
      v9 = 1024;
      v10 = 100;
      v11 = 1024;
      v12 = v2;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTP_SetSourceDestinationWithToken failed %x", &v5, 0x22u);
    }
  }

  *a1 = v2;
}

@end