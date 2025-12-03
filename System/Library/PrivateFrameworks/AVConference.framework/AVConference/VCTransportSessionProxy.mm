@interface VCTransportSessionProxy
- (VCTransportSessionProxy)initWithTransportSessionID:(unsigned int)d;
- (int)createVFD:(int *)d forStreamType:(unsigned int)type;
@end

@implementation VCTransportSessionProxy

- (VCTransportSessionProxy)initWithTransportSessionID:(unsigned int)d
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCTransportSessionProxy;
  result = [(VCTransportSession *)&v5 initWithNotificationQueue:0 reportingAgent:0];
  if (result)
  {
    if (d)
    {
      *(&result->super._shouldIgnoreConnectionRefusedError + 2) = d;
    }

    else
    {
      [(VCTransportSessionProxy *)result initWithTransportSessionID:v6];
      return v6[0];
    }
  }

  return result;
}

- (int)createVFD:(int *)d forStreamType:(unsigned int)type
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = -2144665599;
  v16 = -1;
  if (d)
  {
    v7 = [VCTransportSession vtpPacketTypeForStreamType:*&type];
    if (v7)
    {
      v4 = VCCreateVFDForIDS(v7, 43, &v16);
      if ((v4 & 0x80000000) == 0)
      {
        if (VTP_SetTransportSessionID(v16, *(&self->super._shouldIgnoreConnectionRefusedError + 2)) != -1)
        {
          *d = v16;
          v16 = -1;
          goto LABEL_6;
        }

        v4 = *__error() | 0xC02B0000;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v18 = v14;
            v19 = 2080;
            v20 = "[VCTransportSessionProxy createVFD:forStreamType:]";
            v21 = 1024;
            v22 = 53;
            v23 = 1024;
            v24 = v4;
            v11 = " [%s] %s:%d VTP_SetTransportSessionID failed %x";
            v12 = v15;
            v13 = 34;
            goto LABEL_13;
          }
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = v9;
      v19 = 2080;
      v20 = "[VCTransportSessionProxy createVFD:forStreamType:]";
      v21 = 1024;
      v22 = 44;
      v11 = " [%s] %s:%d NULL vfd";
      v12 = v10;
      v13 = 28;
LABEL_13:
      _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    }
  }

LABEL_6:
  VCCloseVFDIfValid(v16);
  return v4;
}

- (void)initWithTransportSessionID:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCTransportSessionProxy initWithTransportSessionID:]";
      v9 = 1024;
      v10 = 28;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid transportSessionID", &v5, 0x1Cu);
    }
  }

  *a2 = 0;
}

@end