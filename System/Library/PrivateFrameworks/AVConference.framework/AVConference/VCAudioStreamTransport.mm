@interface VCAudioStreamTransport
- (VCAudioStreamTransport)initWithHandle:(tagHANDLE *)handle callId:(unsigned int)id localSSRC:(unsigned int)c enableNetworkMonitor:(BOOL)monitor;
- (int)onStart;
- (void)dealloc;
- (void)onStop;
- (void)startWRM;
- (void)stopWRM;
@end

@implementation VCAudioStreamTransport

- (VCAudioStreamTransport)initWithHandle:(tagHANDLE *)handle callId:(unsigned int)id localSSRC:(unsigned int)c enableNetworkMonitor:(BOOL)monitor
{
  monitorCopy = monitor;
  v7 = *&id;
  v32 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VCAudioStreamTransport;
  v8 = [(VCMediaStreamTransport *)&v19 initWithHandle:handle localSSRC:*&c];
  v9 = v8;
  if (v8)
  {
    v8->super._payloadType = 0;
    if (monitorCopy)
    {
      v8->_wrmClient = [[WRMClient alloc] initWithDelegate:v8];
      rtpHandle = v9->super._rtpHandle;
      v9->_realtimeContext.rtpHandle = rtpHandle;
      WRMInitialize(&v9->_realtimeContext, rtpHandle);
      [(VCAudioStreamTransport *)v9 setWRMCallId:v7];
      v11 = RTPSetWRMInfo(v9->super._rtpHandle, &v9->_realtimeContext);
      if (v11 < 0)
      {
        v12 = v11;
        if (objc_opt_class() == v9)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAudioStreamTransport initWithHandle:v14 callId:v12 localSSRC:v15 enableNetworkMonitor:?];
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v13 = [(VCAudioStreamTransport *)v9 performSelector:sel_logPrefix];
          }

          else
          {
            v13 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v16 = VRTraceErrorLogLevelToCSTR();
            v17 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v21 = v16;
              v22 = 2080;
              v23 = "[VCAudioStreamTransport initWithHandle:callId:localSSRC:enableNetworkMonitor:]";
              v24 = 1024;
              v25 = 56;
              v26 = 2112;
              v27 = v13;
              v28 = 2048;
              v29 = v9;
              v30 = 1024;
              v31 = v12;
              _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to set the WRM info. Error=%d", buf, 0x36u);
            }
          }
        }

        return 0;
      }
    }
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  WRMUninitialize(&self->_realtimeContext);

  v3.receiver = self;
  v3.super_class = VCAudioStreamTransport;
  [(VCMediaStreamTransport *)&v3 dealloc];
}

- (void)onStop
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCAudioStreamTransport *)self stopWRM];
  v3.receiver = self;
  v3.super_class = VCAudioStreamTransport;
  [(VCMediaStreamTransport *)&v3 onStop];
}

- (void)startWRM
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_wrmClient)
  {
    *&v3 = self;
    *(&v3 + 1) = MEMORY[0x1E695D7C8];
    v4 = MEMORY[0x1E695D7C0];
    RTPSetWRMMetricsCallback(self->super._rtpHandle, WRMReportMetricsCallback_0, &v3);
    [(WRMClient *)self->_wrmClient startWRMClientWithMode:0 metricsConfig:2852192513];
  }
}

- (void)stopWRM
{
  if (self->_wrmClient)
  {
    RTPSetWRMMetricsCallback(self->super._rtpHandle, 0, 0);
    wrmClient = self->_wrmClient;

    [(WRMClient *)wrmClient stopWRMClient];
  }
}

- (int)onStart
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCAudioStreamTransport;
  onStart = [(VCMediaStreamTransport *)&v5 onStart];
  if ((onStart & 0x80000000) == 0)
  {
    [(VCAudioStreamTransport *)self startWRM];
  }

  return onStart;
}

- (void)initWithHandle:(os_log_t)log callId:localSSRC:enableNetworkMonitor:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCAudioStreamTransport initWithHandle:callId:localSSRC:enableNetworkMonitor:]";
  v7 = 1024;
  v8 = 56;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set the WRM info. Error=%d", &v3, 0x22u);
}

@end