@interface AVCTextStream
- (AVCTextStream)initWithNetworkSockets:(id)a3 callID:(id)a4 error:(id *)a5;
- (AVCTextStream)initWithRTPNWConnectionClientID:(id)a3 rtcpNWConnectionClientID:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)configure:(id)a3 error:(id *)a4;
- (BOOL)initializeServerWithNetworkSockets:(id)a3 callID:(id)a4 error:(id *)a5;
- (BOOL)setupTextStreamOutOfProcessWithClientArgs:(id)a3 error:(id *)a4;
- (BOOL)validateResultsDictionary:(id)a3 error:(id *)a4;
- (id)newNSErrorWithErrorDictionary:(id)a3;
- (id)validateInitializeConnectionResult:(id)a3;
- (void)dealloc;
- (void)deregisterBlocksForDelegateNotifications;
- (void)pause;
- (void)refreshLoggingParameters;
- (void)registerBlocksForDelegateNotifications;
- (void)resume;
- (void)setDelegate:(id)a3;
- (void)setDirection:(int64_t)a3;
- (void)setRtcpEnabled:(BOOL)a3;
- (void)setRtcpSendIntervalSec:(double)a3;
- (void)setRtcpTimeOutEnabled:(BOOL)a3;
- (void)setRtcpTimeOutIntervalSec:(double)a3;
- (void)setRtpTimeOutEnabled:(BOOL)a3;
- (void)setRtpTimeOutIntervalSec:(double)a3;
- (void)start;
- (void)stop;
@end

@implementation AVCTextStream

- (AVCTextStream)initWithNetworkSockets:(id)a3 callID:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a5)
      {
        v11 = *a5;
      }

      else
      {
        v11 = @"nil";
      }

      *buf = 136316418;
      v27 = v9;
      v28 = 2080;
      v29 = "[AVCTextStream initWithNetworkSockets:callID:error:]";
      v30 = 1024;
      v31 = 58;
      v32 = 2112;
      v33 = a3;
      v34 = 2112;
      *v35 = a4;
      *&v35[8] = 2112;
      *&v35[10] = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d socketsDictionary=%@, callID=%@, error=%@", buf, 0x3Au);
    }
  }

  v25.receiver = self;
  v25.super_class = AVCTextStream;
  v12 = [(AVCTextStream *)&v25 init];
  if (v12)
  {
    v13 = v12;
    [(AVCTextStream *)v12 refreshLoggingParameters];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v15 = dispatch_queue_create_with_target_V2("com.apple.AVConference.avctextstream.callback.queue", 0, CustomRootQueue);
    *(v13 + 48) = v15;
    if (v15)
    {
      v16 = objc_alloc_init(AVConferenceXPCClient);
      *(v13 + 8) = v16;
      if (v16)
      {
        [v13 registerBlocksForDelegateNotifications];
        if ([v13 initializeServerWithNetworkSockets:a3 callID:a4 error:a5])
        {
          MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-init");
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v19 = getpid();
              v20 = *(v13 + 32);
              if (a5)
              {
                v21 = *a5;
              }

              else
              {
                v21 = @"None";
              }

              *buf = 136316930;
              v27 = v17;
              v28 = 2080;
              v29 = "[AVCTextStream initWithNetworkSockets:callID:error:]";
              v30 = 1024;
              v31 = 94;
              v32 = 2048;
              v33 = v13;
              v34 = 1024;
              *v35 = v19;
              *&v35[4] = 2112;
              *&v35[6] = a4;
              *&v35[14] = 1024;
              *&v35[16] = v20;
              v36 = 2112;
              v37 = v21;
              _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-init (%p) PID=%d, callID=%@, streamToken=%d, error=%@", buf, 0x46u);
            }
          }

          return v13;
        }

        [AVCTextStream initWithNetworkSockets:v13 callID:? error:?];
      }

      else
      {
        [AVCTextStream initWithNetworkSockets:v13 callID:? error:?];
      }
    }

    else
    {
      [AVCTextStream initWithNetworkSockets:v13 callID:? error:?];
    }
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v27 = v22;
      v28 = 2080;
      v29 = "[AVCTextStream initWithNetworkSockets:callID:error:]";
      v30 = 1024;
      v31 = 96;
      v32 = 2048;
      v33 = 0;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-init (%p)", buf, 0x26u);
    }
  }

  return 0;
}

- (AVCTextStream)initWithRTPNWConnectionClientID:(id)a3 rtcpNWConnectionClientID:(id)a4 options:(id)a5 error:(id *)a6
{
  *&v63[3] = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a3 UUIDString];
      v14 = [a4 UUIDString];
      if (a5)
      {
        v15 = [objc_msgSend(a5 "description")];
        if (a6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = "<nil>";
        if (a6)
        {
LABEL_5:
          v16 = *a6;
          if (!*a6)
          {
            v17 = "<nil>";
LABEL_10:
            *buf = 136316674;
            v54 = v11;
            v55 = 2080;
            v56 = "[AVCTextStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:]";
            v57 = 1024;
            v58 = 125;
            v59 = 2112;
            v60 = v13;
            v61 = 2112;
            *v62 = v14;
            *&v62[8] = 2080;
            *&v62[10] = v15;
            *&v62[18] = 2080;
            *v63 = v17;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtpClientID=%@, rtcpClientID=%@, options=%s, error=%s", buf, 0x44u);
            goto LABEL_11;
          }

LABEL_9:
          v17 = [-[__CFString description](v16 "description")];
          goto LABEL_10;
        }
      }

      v16 = @"nil";
      goto LABEL_9;
    }
  }

LABEL_11:
  v52.receiver = self;
  v52.super_class = AVCTextStream;
  v18 = [(AVCTextStream *)&v52 init];
  if (!v18)
  {
    goto LABEL_71;
  }

  v19 = v18;
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v20)
  {
    [AVCTextStream initWithRTPNWConnectionClientID:v19 rtcpNWConnectionClientID:? options:? error:?];
    goto LABEL_70;
  }

  if ([a5 objectForKeyedSubscript:@"avcMediaStreamOptionCallID"])
  {
    v21 = [a5 objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
  }

  else
  {
    v21 = 0;
  }

  if ([a5 objectForKeyedSubscript:@"avcMediaStreamOptionIsOriginator"])
  {
    [objc_msgSend(a5 objectForKeyedSubscript:{@"avcMediaStreamOptionIsOriginator", "BOOLValue"}];
  }

  v22 = [objc_msgSend(a5 objectForKeyedSubscript:{@"avcMediaStreamOptionRunInProcess", "BOOLValue"}];
  if (!a3)
  {
    if (a6)
    {
      *a6 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"rtpClientID cannot not be nil"];
    }

    if (objc_opt_class() == v19)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCTextStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:];
        }
      }

      goto LABEL_70;
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [v19 performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_70;
    }

    v44 = VRTraceErrorLogLevelToCSTR();
    v45 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 136316162;
    v54 = v44;
    v55 = 2080;
    v56 = "[AVCTextStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:]";
    v57 = 1024;
    v58 = 132;
    v59 = 2112;
    v60 = v26;
    v61 = 2048;
    *v62 = v19;
    v46 = "AVCTextStream [%s] %s:%d %@(%p) Failed to initialize AVCTextStream because of invalid parameters";
    goto LABEL_79;
  }

  v23 = v22;
  v51 = a6;
  v24 = v21;
  if (objc_opt_class() == v19)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = "out of";
        v54 = v27;
        *buf = 136315906;
        v56 = "[AVCTextStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:]";
        v55 = 2080;
        if (v23)
        {
          v29 = "in";
        }

        v57 = 1024;
        v58 = 134;
        v59 = 2080;
        v60 = v29;
        v30 = "AVCTextStream [%s] %s:%d AVCTextStream will run %s process";
        v31 = v28;
        v32 = 38;
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = [v19 performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v35 = "out of";
        v54 = v33;
        *buf = 136316418;
        v56 = "[AVCTextStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:]";
        v55 = 2080;
        if (v23)
        {
          v35 = "in";
        }

        v57 = 1024;
        v58 = 134;
        v59 = 2112;
        v60 = v25;
        v61 = 2048;
        *v62 = v19;
        *&v62[8] = 2080;
        *&v62[10] = v35;
        v30 = "AVCTextStream [%s] %s:%d %@(%p) AVCTextStream will run %s process";
        v31 = v34;
        v32 = 58;
LABEL_38:
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      }
    }
  }

  [v19 refreshLoggingParameters];
  [v20 setObject:objc_msgSend(a3 forKeyedSubscript:{"UUIDString"), @"vcMediaStreamConnectionClientID"}];
  if (a4)
  {
    [v20 setObject:objc_msgSend(a4 forKeyedSubscript:{"UUIDString"), @"vcMediaStreamRTCPConnectionClientID"}];
  }

  if (v24)
  {
    [v20 setObject:v24 forKeyedSubscript:@"vcMediaStreamCallID"];
  }

  if ([a5 objectForKeyedSubscript:@"avcMediaStreamOptionRemoteEndpointInfo"])
  {
    [v20 setObject:objc_msgSend(a5 forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionRemoteEndpointInfo", @"vcMediaStreamRemoteEndpointInfo"}];
  }

  if ([a5 objectForKeyedSubscript:@"avcMediaStreamOptionDelayNWConnectionStart"])
  {
    [v20 setObject:objc_msgSend(a5 forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionDelayNWConnectionStart", @"vcMediaStreamDelayNWConnectionStart"}];
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v37 = dispatch_queue_create_with_target_V2("com.apple.AVConference.avctextstream.callback.queue", 0, CustomRootQueue);
  *(v19 + 48) = v37;
  if (v37)
  {
    if (v23)
    {
      if (objc_opt_class() == v19)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCTextStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:];
          }
        }

        goto LABEL_70;
      }

      if (objc_opt_respondsToSelector())
      {
        v38 = [v19 performSelector:sel_logPrefix];
      }

      else
      {
        v38 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v47 = VRTraceErrorLogLevelToCSTR(), v45 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_70:

LABEL_71:
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-init");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v48 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v54 = v48;
            v55 = 2080;
            v56 = "[AVCTextStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:]";
            v57 = 1024;
            v58 = 175;
            v59 = 2048;
            v60 = 0;
            _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-init (%p)", buf, 0x26u);
          }
        }

        return 0;
      }

      *buf = 136316162;
      v54 = v47;
      v55 = 2080;
      v56 = "[AVCTextStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:]";
      v57 = 1024;
      v58 = 162;
      v59 = 2112;
      v60 = v38;
      v61 = 2048;
      *v62 = v19;
      v46 = "AVCTextStream [%s] %s:%d %@(%p) Failed to create in process VCTextStream as it is not supported";
LABEL_79:
      _os_log_error_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_ERROR, v46, buf, 0x30u);
      goto LABEL_70;
    }

    if (([v19 setupTextStreamOutOfProcessWithClientArgs:v20 error:v51] & 1) == 0)
    {
      [AVCTextStream initWithRTPNWConnectionClientID:v19 rtcpNWConnectionClientID:? options:? error:?];
      goto LABEL_70;
    }
  }

  else
  {
    [AVCTextStream initWithRTPNWConnectionClientID:v19 rtcpNWConnectionClientID:? options:? error:?];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v39 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v41 = getpid();
      v42 = *(v19 + 32);
      if (v51)
      {
        v43 = *v51;
      }

      else
      {
        v43 = @"None";
      }

      *buf = 136316930;
      v54 = v39;
      v55 = 2080;
      v56 = "[AVCTextStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:]";
      v57 = 1024;
      v58 = 173;
      v59 = 2048;
      v60 = v19;
      v61 = 1024;
      *v62 = v41;
      *&v62[4] = 2112;
      *&v62[6] = v24;
      *&v62[14] = 1024;
      *&v62[16] = v42;
      LOWORD(v63[0]) = 2112;
      *(v63 + 2) = v43;
      _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-init (%p) PID=%d, callID=%@, streamToken=%d, error=%@", buf, 0x46u);
    }
  }

  return v19;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  [(AVCTextStream *)self setCapabilities:0];
  [(AVCTextStream *)self setConfiguration:0];
  [(AVCTextStream *)self deregisterBlocksForDelegateNotifications];
  [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaStreamTerminateText"];

  self->_connection = 0;
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[AVCTextStream dealloc]";
      v11 = 1024;
      v12 = 196;
      v13 = 2048;
      v14 = self;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-dealloc (%p)", buf, 0x26u);
    }
  }

  v6.receiver = self;
  v6.super_class = AVCTextStream;
  [(AVCTextStream *)&v6 dealloc];
}

- (void)refreshLoggingParameters
{
  CFPreferencesAppSynchronize(@"com.apple.VideoConference");
  CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]);
  VRTraceReset();

  VRTracePrintLoggingInfo();
}

- (BOOL)validateResultsDictionary:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_58;
      }

      VRTraceErrorLogLevelToCSTR();
      v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v12)
      {
        [AVCTextStream validateResultsDictionary:error:];
        goto LABEL_58;
      }

      return v12;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [(AVCTextStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_58;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      return v12;
    }

    v29 = 136316162;
    v30 = v16;
    v31 = 2080;
    v32 = "[AVCTextStream validateResultsDictionary:error:]";
    v33 = 1024;
    v34 = 214;
    v35 = 2112;
    v36 = v8;
    v37 = 2048;
    v38 = self;
    v18 = "AVCTextStream [%s] %s:%d %@(%p) no results dict";
    v19 = v17;
LABEL_56:
    v27 = 48;
LABEL_57:
    _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v18, &v29, v27);
    goto LABEL_58;
  }

  if ([a3 objectForKeyedSubscript:@"SERVERDIED"])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCTextStream validateResultsDictionary:error:];
            if (a4)
            {
LABEL_48:
              v26 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"server died"];
              LOBYTE(v12) = 0;
              *a4 = v26;
              return v12;
            }

LABEL_58:
            LOBYTE(v12) = 0;
            return v12;
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCTextStream validateResultsDictionary:error:];
          if (!a4)
          {
            goto LABEL_58;
          }

          goto LABEL_48;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(AVCTextStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v15 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v29 = 136316162;
            v30 = v13;
            v31 = 2080;
            v32 = "[AVCTextStream validateResultsDictionary:error:]";
            v33 = 1024;
            v34 = 219;
            v35 = 2112;
            v36 = v7;
            v37 = 2048;
            v38 = self;
            _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, "AVCTextStream [%s] %s:%d %@(%p) server died", &v29, 0x30u);
            if (!a4)
            {
              goto LABEL_58;
            }

            goto LABEL_48;
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v29 = 136316162;
          v30 = v13;
          v31 = 2080;
          v32 = "[AVCTextStream validateResultsDictionary:error:]";
          v33 = 1024;
          v34 = 219;
          v35 = 2112;
          v36 = v7;
          v37 = 2048;
          v38 = self;
          _os_log_fault_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_FAULT, "AVCTextStream [%s] %s:%d %@(%p) server died", &v29, 0x30u);
          if (!a4)
          {
            goto LABEL_58;
          }

          goto LABEL_48;
        }
      }
    }

    if (a4)
    {
      goto LABEL_48;
    }

    goto LABEL_58;
  }

  v9 = [a3 objectForKeyedSubscript:@"ERROR"];
  v10 = v9;
  if (a4)
  {
    *a4 = v9;
  }

  if (!v9 && ![a3 objectForKeyedSubscript:@"TIMEOUT"])
  {
    LOBYTE(v12) = 1;
    return v12;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_58;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      return v12;
    }

    if (v10)
    {
      v22 = [objc_msgSend(v10 "description")];
    }

    else
    {
      v22 = "<nil>";
    }

    v29 = 136316162;
    v30 = v20;
    v31 = 2080;
    v32 = "[AVCTextStream validateResultsDictionary:error:]";
    v33 = 1024;
    v34 = 233;
    v35 = 2080;
    v36 = v22;
    v37 = 2080;
    v38 = [objc_msgSend(a3 "description")];
    v18 = "AVCTextStream [%s] %s:%d error initializing error[%s] resultDict[%s]";
    v19 = v21;
    goto LABEL_56;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [(AVCTextStream *)self performSelector:sel_logPrefix];
  }

  else
  {
    v11 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_58;
  }

  v23 = VRTraceErrorLogLevelToCSTR();
  v24 = *MEMORY[0x1E6986650];
  v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v12)
  {
    if (v10)
    {
      v25 = [objc_msgSend(v10 "description")];
    }

    else
    {
      v25 = "<nil>";
    }

    v29 = 136316674;
    v30 = v23;
    v31 = 2080;
    v32 = "[AVCTextStream validateResultsDictionary:error:]";
    v33 = 1024;
    v34 = 233;
    v35 = 2112;
    v36 = v11;
    v37 = 2048;
    v38 = self;
    v39 = 2080;
    v40 = v25;
    v41 = 2080;
    v42 = [objc_msgSend(a3 "description")];
    v18 = "AVCTextStream [%s] %s:%d %@(%p) error initializing error[%s] resultDict[%s]";
    v19 = v24;
    v27 = 68;
    goto LABEL_57;
  }

  return v12;
}

- (BOOL)initializeServerWithNetworkSockets:(id)a3 callID:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v9;
  if (a4)
  {
    [v9 setObject:a4 forKeyedSubscript:@"vcMediaStreamCallID"];
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"vcMediaStreamDictionary", 0}];
  v12 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaStreamInitializeText" arguments:v11 xpcArguments:a3];
  if (![(AVCTextStream *)self validateResultsDictionary:v12 error:a5])
  {
    goto LABEL_15;
  }

  -[AVCTextStream setCapabilities:](self, "setCapabilities:", [v12 objectForKeyedSubscript:@"vcMediaStreamStreamCapabilities"]);
  self->_streamToken = [objc_msgSend(v12 objectForKeyedSubscript:{@"vcMediaStreamToken", "integerValue"}];
  if (!self->_capabilities)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCTextStream initializeServerWithNetworkSockets:v15 callID:v12 error:?];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(AVCTextStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          if (v12)
          {
            v19 = [objc_msgSend(v12 "description")];
          }

          else
          {
            v19 = "<nil>";
          }

          *buf = 136316418;
          v21 = v16;
          v22 = 2080;
          v23 = "[AVCTextStream initializeServerWithNetworkSockets:callID:error:]";
          v24 = 1024;
          v25 = 256;
          v26 = 2112;
          v27 = v14;
          v28 = 2048;
          v29 = self;
          v30 = 2080;
          v31 = v19;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "AVCTextStream [%s] %s:%d %@(%p) error initializing no capabilities dict result[%s]", buf, 0x3Au);
        }
      }
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v13 = 1;
LABEL_16:

  return v13;
}

- (id)newNSErrorWithErrorDictionary:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = [a3 objectForKeyedSubscript:@"ERROR_DOMAIN"];
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"ERROR_CODE", "intValue"}];
  v7 = [a3 objectForKeyedSubscript:@"ERROR_USERINFO"];

  return [v4 initWithDomain:v5 code:v6 userInfo:v7];
}

- (void)registerBlocksForDelegateNotifications
{
  v13[6] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke;
  v13[3] = &unk_1E85F92E8;
  v13[4] = v4;
  v13[5] = a2;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidServerDie" block:v13 queue:self->_queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_72;
  v12[3] = &unk_1E85F3AD8;
  v12[4] = v4;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidStartConnection" block:v12 queue:self->_queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_80;
  v11[3] = &unk_1E85F3AD8;
  v11[4] = v4;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidStopConnection" block:v11 queue:self->_queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_82;
  v10[3] = &unk_1E85F3AD8;
  v10[4] = v4;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidPause" block:v10 queue:self->_queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_89;
  v9[3] = &unk_1E85F3AD8;
  v9[4] = v4;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidResume" block:v9 queue:self->_queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_96;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v4;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamRTPPacketTimeout" block:v8 queue:self->_queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_100;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v4;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamRTCPPacketTimeout" block:v7 queue:self->_queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_104;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v4;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidRecoverFromRTCPTimeout" block:v6 queue:self->_queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_108;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v4;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamRTCPPacketsReceived" block:v5 queue:self->_queue];
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v3 = [*(a1 + 32) strong];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      v5 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v13 = objc_opt_class();
          Name = class_getName(v13);
          v15 = sel_getName(*(a1 + 40));
          v16 = 136316162;
          v17 = v6;
          v18 = 2080;
          v19 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
          v20 = 1024;
          v21 = 282;
          v22 = 2080;
          v23 = Name;
          v24 = 2080;
          v25 = v15;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "AVCTextStream [%s] %s:%d [%s %s] server died, notifying client", &v16, 0x30u);
        }
      }

      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-didServerDie");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315906;
          v17 = v8;
          v18 = 2080;
          v19 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
          v20 = 1024;
          v21 = 283;
          v22 = 2048;
          v23 = v3;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-didServerDie (%p)", &v16, 0x26u);
        }
      }

      [objc_msgSend(v3 "delegate")];
    }

    else if (ErrorLogLevelForModule >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v12 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315650;
          v17 = v10;
          v18 = 2080;
          v19 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
          v20 = 1024;
          v21 = 286;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d AVCTextStream: server died, but AVCTextStream has already deallocated, NO-OP", &v16, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_cold_1();
      }
    }
  }
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_72(uint64_t a1, void *a2, const char *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v8 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      v33 = 136316162;
      v34 = v6;
      v35 = 2080;
      v36 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
      v37 = 1024;
      v38 = 294;
      v39 = 2048;
      v40 = a3;
      v41 = 2080;
      *v42 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d didStartConnectionBlock: error = %p, result = %s", &v33, 0x30u);
    }
  }

  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v9 = [*(a1 + 32) strong];
    if (v9)
    {
      v10 = v9;
      v11 = [a2 objectForKeyedSubscript:@"vcMediaStreamConnectionStarted"];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v13 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule > 6)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          Name = class_getName(v16);
          v18 = [v11 BOOLValue];
          v33 = 136316162;
          v34 = v14;
          v35 = 2080;
          v36 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
          v37 = 1024;
          v38 = 305;
          v39 = 2080;
          v40 = Name;
          v41 = 1024;
          *v42 = v18;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d %s: didStartConnectionBlock strongSelf started(%d)", &v33, 0x2Cu);
        }
      }

      v19 = [v10 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamError"}];
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-didStart");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v11 intValue];
          v33 = 136316418;
          v34 = v20;
          v35 = 2080;
          v36 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
          v37 = 1024;
          v38 = 308;
          v39 = 2048;
          v40 = v10;
          v41 = 1024;
          *v42 = v22;
          *&v42[4] = 2112;
          *&v42[6] = v19;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-didStart (%p) didSucceed=%d, error=%@", &v33, 0x36u);
        }
      }

      [objc_msgSend(v10 "delegate")];

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *v13;
      if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v25 = objc_opt_class();
      v26 = class_getName(v25);
      v27 = [v11 BOOLValue];
      v33 = 136316418;
      v34 = v23;
      v35 = 2080;
      v36 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
      v37 = 1024;
      v38 = 312;
      v39 = 2080;
      v40 = v26;
      v41 = 2048;
      *v42 = v10;
      *&v42[8] = 1024;
      *&v42[10] = v27;
      v28 = "AVCTextStream [%s] %s:%d %s: notified client %p of didStart started[%d]";
      v29 = v24;
      v30 = 54;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v33 = 136315650;
      v34 = v31;
      v35 = 2080;
      v36 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
      v37 = 1024;
      v38 = 299;
      v28 = "AVCTextStream [%s] %s:%d [AVCTextStream]: didStartConnectionBlock: strongSelf == nil";
      v29 = v32;
      v30 = 28;
    }

    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &v33, v30);
  }
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_80(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3 || [a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v4 = [*(a1 + 32) strong];
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = 136315650;
    v20 = v17;
    v21 = 2080;
    v22 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
    v23 = 1024;
    v24 = 322;
    v14 = "AVCTextStream [%s] %s:%d [AVCTextStream]: didStopConnectionBlock: strongSelf == nil";
    v15 = v18;
    v16 = 28;
LABEL_14:
    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
    return;
  }

  v5 = v4;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-didStop");
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v7 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = v8;
      v21 = 2080;
      v22 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
      v23 = 1024;
      v24 = 325;
      v25 = 2048;
      v26 = v5;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-didStop (%p)", &v19, 0x26u);
    }
  }

  [objc_msgSend(v5 "delegate")];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      Name = class_getName(v12);
      v19 = 136316162;
      v20 = v10;
      v21 = 2080;
      v22 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
      v23 = 1024;
      v24 = 327;
      v25 = 2080;
      v26 = Name;
      v27 = 2048;
      v28 = v5;
      v14 = "AVCTextStream [%s] %s:%d %s: notified client %p of didStop";
      v15 = v11;
      v16 = 48;
      goto LABEL_14;
    }
  }
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_82(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 || [a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v5 = [*(a1 + 32) strong];
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = 136315650;
    v22 = v19;
    v23 = 2080;
    v24 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
    v25 = 1024;
    v26 = 337;
    v16 = "AVCTextStream [%s] %s:%d [AVCTextStream]: didPauseBlock: strongSelf == nil";
    v17 = v20;
    v18 = 28;
LABEL_16:
    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v21, v18);
    return;
  }

  v6 = v5;
  v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamPaused"];
  v8 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamError"}];
  [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-didPause");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136316418;
        v22 = v9;
        v23 = 2080;
        v24 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
        v25 = 1024;
        v26 = 345;
        v27 = 2048;
        v28 = v6;
        v29 = 1024;
        *v30 = [v7 intValue];
        *&v30[4] = 2112;
        *&v30[6] = v8;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-didPause (%p) didSucceed=%d, error=%@", &v21, 0x36u);
      }
    }

    [objc_msgSend(v6 "delegate")];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      Name = class_getName(v13);
      v15 = [v7 BOOLValue];
      v21 = 136316418;
      v22 = v11;
      v23 = 2080;
      v24 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
      v25 = 1024;
      v26 = 350;
      v27 = 2080;
      v28 = Name;
      v29 = 2048;
      *v30 = v6;
      *&v30[8] = 1024;
      *&v30[10] = v15;
      v16 = "AVCTextStream [%s] %s:%d %s: notified client %p of didPause [%d]";
      v17 = v12;
      v18 = 54;
      goto LABEL_16;
    }
  }
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_89(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 || [a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v5 = [*(a1 + 32) strong];
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = 136315650;
    v22 = v19;
    v23 = 2080;
    v24 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
    v25 = 1024;
    v26 = 360;
    v16 = "AVCTextStream [%s] %s:%d [AVCTextStream]: didResumeBlock: strongSelf == nil";
    v17 = v20;
    v18 = 28;
LABEL_16:
    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v21, v18);
    return;
  }

  v6 = v5;
  v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamResumed"];
  v8 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamError"}];
  [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-didResume");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136316418;
        v22 = v9;
        v23 = 2080;
        v24 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
        v25 = 1024;
        v26 = 368;
        v27 = 2048;
        v28 = v6;
        v29 = 1024;
        *v30 = [v7 intValue];
        *&v30[4] = 2112;
        *&v30[6] = v8;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-didResume (%p) didSucceed=%d, error=%@", &v21, 0x36u);
      }
    }

    [objc_msgSend(v6 "delegate")];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      Name = class_getName(v13);
      v15 = [v7 BOOLValue];
      v21 = 136316418;
      v22 = v11;
      v23 = 2080;
      v24 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
      v25 = 1024;
      v26 = 373;
      v27 = 2080;
      v28 = Name;
      v29 = 2048;
      *v30 = v6;
      *&v30[8] = 1024;
      *&v30[10] = v15;
      v16 = "AVCTextStream [%s] %s:%d %s: notified client %p of didSucceed [%d]";
      v17 = v12;
      v18 = 54;
      goto LABEL_16;
    }
  }
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_96(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3 || [a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v4 = [*(a1 + 32) strong];
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = 136315650;
    v15 = v12;
    v16 = 2080;
    v17 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
    v18 = 1024;
    v19 = 384;
    v9 = "AVCTextStream [%s] %s:%d [AVCTextStream]: didRTPPacketTimeoutBlock: strongSelf == nil";
    v10 = v13;
    v11 = 28;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    return;
  }

  v5 = v4;
  [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(v5 "delegate")];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v14 = 136316162;
      v15 = v6;
      v16 = 2080;
      v17 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
      v18 = 1024;
      v19 = 391;
      v20 = 2080;
      Name = class_getName(v8);
      v22 = 2048;
      v23 = v5;
      v9 = "AVCTextStream [%s] %s:%d %s: notified client %p RTP packet timeout";
      v10 = v7;
      v11 = 48;
      goto LABEL_13;
    }
  }
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_100(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3 || [a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v4 = [*(a1 + 32) strong];
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = 136315650;
    v15 = v12;
    v16 = 2080;
    v17 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
    v18 = 1024;
    v19 = 401;
    v9 = "AVCTextStream [%s] %s:%d [AVCTextStream]: didRTCPPacketTimeoutBlock: strongSelf == nil";
    v10 = v13;
    v11 = 28;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    return;
  }

  v5 = v4;
  [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(v5 "delegate")];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v14 = 136316162;
      v15 = v6;
      v16 = 2080;
      v17 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
      v18 = 1024;
      v19 = 409;
      v20 = 2080;
      Name = class_getName(v8);
      v22 = 2048;
      v23 = v5;
      v9 = "AVCTextStream [%s] %s:%d %s: notified client %p RTCP packet timeout";
      v10 = v7;
      v11 = 48;
      goto LABEL_13;
    }
  }
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_104(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(v5 "delegate")];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315906;
          v9 = v6;
          v10 = 2080;
          v11 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
          v12 = 1024;
          v13 = 425;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d AVCTextStream: notified client=%p RTCP packet timeout", &v8, 0x26u);
        }
      }
    }
  }
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_108(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      [v5 delegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(v6 "delegate")];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v10 = 136316162;
          v11 = v7;
          v12 = 2080;
          v13 = "[AVCTextStream registerBlocksForDelegateNotifications]_block_invoke";
          v14 = 1024;
          v15 = 440;
          v16 = 2080;
          Name = class_getName(v9);
          v18 = 2048;
          v19 = v6;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d %s: notified client %p received RTCP packets", &v10, 0x30u);
        }
      }
    }
  }
}

- (void)deregisterBlocksForDelegateNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidStartConnection"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidStopConnection"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidPause"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidResume"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidStartSynchronization"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamRTPPacketTimeout"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamRTCPPacketTimeout"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidRecoverFromRTCPTimeout"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamRTCPPacketsReceived"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcMediaStreamDidServerDie"];
}

- (BOOL)configure:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (([a3 isValidTextConfig] & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_15;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      [AVCTextStream configure:v12 error:a4];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(AVCTextStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v13 = VRTraceErrorLogLevelToCSTR(), v14 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_15:
        if (!a4)
        {
          LOBYTE(v9) = 0;
          return v9;
        }

        goto LABEL_16;
      }

      if (*a4)
      {
        v16 = [objc_msgSend(*a4 "description")];
      }

      else
      {
        v16 = "<nil>";
      }

      *buf = 136316418;
      v18 = v13;
      v19 = 2080;
      v20 = "[AVCTextStream configure:error:]";
      v21 = 1024;
      v22 = 465;
      v23 = 2112;
      v24 = v11;
      v25 = 2048;
      v26 = self;
      v27 = 2080;
      v28 = v16;
      _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, "AVCTextStream [%s] %s:%d %@(%p) Invalid text configuration: error[%s]", buf, 0x3Au);
    }

LABEL_16:
    LOBYTE(v9) = 0;
    *a4 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32016 detailCode:0 description:@"AVCTextStream configuration is invalid"];
    return v9;
  }

  v7 = [a3 dictionary];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
  v9 = [(AVCTextStream *)self validateResultsDictionary:[(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaStreamSetSessionConfig" arguments:v8 xpcArguments:0] error:a4];

  if (v9)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  [(AVCTextStream *)self setConfiguration:v10];
  return v9;
}

- (void)start
{
  v18 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCTextStream start]");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 136315650;
      *&v15[4] = v3;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCTextStream start]";
      *&v15[22] = 1024;
      LODWORD(v16) = 493;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d ", v15, 0x1Cu);
    }
  }

  if (!self->_configuration)
  {
    -[AVCTextStreamDelegate stream:didStart:error:](-[AVCTextStream delegate](self, "delegate"), "stream:didStart:error:", self, 0, [MEMORY[0x1E696ABC0] AVConferenceServiceError:32016 detailCode:0 description:@"AVCTextStream hasn't been configured"]);
    goto LABEL_18;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_17;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *v15 = 136315650;
    *&v15[4] = v6;
    *&v15[12] = 2080;
    *&v15[14] = "[AVCTextStream start]";
    *&v15[22] = 1024;
    LODWORD(v16) = 497;
    v8 = "AVCTextStream [%s] %s:%d API_VCMEDIASTREAM_STARTCONFERENCE (client side)";
    v9 = v7;
    v10 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCTextStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_17;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *v15 = 136316162;
    *&v15[4] = v11;
    *&v15[12] = 2080;
    *&v15[14] = "[AVCTextStream start]";
    *&v15[22] = 1024;
    LODWORD(v16) = 497;
    WORD2(v16) = 2112;
    *(&v16 + 6) = v5;
    HIWORD(v16) = 2048;
    v17 = self;
    v8 = "AVCTextStream [%s] %s:%d %@(%p) API_VCMEDIASTREAM_STARTCONFERENCE (client side)";
    v9 = v12;
    v10 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v15, v10);
LABEL_17:
  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStartConference", *v15, *&v15[16], v16, v17];
LABEL_18:
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 136315906;
      *&v15[4] = v13;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCTextStream start]";
      *&v15[22] = 1024;
      LODWORD(v16) = 507;
      WORD2(v16) = 2048;
      *(&v16 + 6) = self;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-start (%p)", v15, 0x26u);
    }
  }
}

- (void)stop
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCTextStream stop]");
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule > 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVCTextStream stop]";
      v13 = 1024;
      v14 = 512;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d ", &v9, 0x1Cu);
    }
  }

  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStopConference"];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v7;
      v11 = 2080;
      v12 = "[AVCTextStream stop]";
      v13 = 1024;
      v14 = 519;
      v15 = 2048;
      v16 = self;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-stop (%p)", &v9, 0x26u);
    }
  }
}

- (void)pause
{
  v18 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCTextStream pause]");
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule > 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = v5;
      v12 = 2080;
      v13 = "[AVCTextStream pause]";
      v14 = 1024;
      v15 = 524;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579E6C0, @"vcMediaStreamDictionary", 0}];
  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetPause" arguments:v7];

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-pause");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = v8;
      v12 = 2080;
      v13 = "[AVCTextStream pause]";
      v14 = 1024;
      v15 = 535;
      v16 = 2048;
      v17 = self;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-pause (%p)", buf, 0x26u);
    }
  }
}

- (void)resume
{
  v18 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCTextStream resume]");
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule > 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = v5;
      v12 = 2080;
      v13 = "[AVCTextStream resume]";
      v14 = 1024;
      v15 = 540;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579E6E8, @"vcMediaStreamDictionary", 0}];
  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetPause" arguments:v7];

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCTextStream-resume");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = v8;
      v12 = 2080;
      v13 = "[AVCTextStream resume]";
      v14 = 1024;
      v15 = 551;
      v16 = 2048;
      v17 = self;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d @:@ AVCTextStream-resume (%p)", buf, 0x26u);
    }
  }
}

- (void)setDelegate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCTextStream setDelegate:]";
      v11 = 1024;
      v12 = 561;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d delegate=%p", &v7, 0x26u);
    }
  }

  objc_storeWeak(&self->_delegate, a3);
}

- (void)setDirection:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v5;
      v16 = 2080;
      v17 = "[AVCTextStream setDirection:]";
      v18 = 1024;
      v19 = 566;
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d direction=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)self->_configuration direction]== a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(AVCMediaStreamConfig *)self->_configuration direction];
        *buf = 136315906;
        v15 = v7;
        v16 = 2080;
        v17 = "[AVCTextStream setDirection:]";
        v18 = 1024;
        v19 = 568;
        v20 = 1024;
        v21 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d direction is already set to %d", buf, 0x22u);
      }
    }
  }

  else
  {
    [(AVCMediaStreamConfig *)self->_configuration setDirection:a3];
    v12 = @"vcMediaStreamDirection";
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetStreamDirection" arguments:v11];
  }
}

- (void)setRtcpEnabled:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v5;
      v16 = 2080;
      v17 = "[AVCTextStream setRtcpEnabled:]";
      v18 = 1024;
      v19 = 590;
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtcpEnabled=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)self->_configuration isRTCPEnabled]== v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(AVCMediaStreamConfig *)self->_configuration isRTCPEnabled];
        *buf = 136315906;
        v15 = v9;
        v16 = 2080;
        v17 = "[AVCTextStream setRtcpEnabled:]";
        v18 = 1024;
        v19 = 593;
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtcpEnabled is already set to %d", buf, 0x22u);
      }
    }
  }

  else
  {
    [(AVCMediaStreamConfig *)self->_configuration setRtcpEnabled:v3];
    v12 = @"vcMediaStreamRTCPEnabled";
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTCPEnabled" arguments:v8];
  }
}

- (void)setRtpTimeOutEnabled:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v5;
      v16 = 2080;
      v17 = "[AVCTextStream setRtpTimeOutEnabled:]";
      v18 = 1024;
      v19 = 616;
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtpTimeOutEnabled=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)self->_configuration isRTPTimeOutEnabled]== v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(AVCMediaStreamConfig *)self->_configuration isRTPTimeOutEnabled];
        *buf = 136315906;
        v15 = v9;
        v16 = 2080;
        v17 = "[AVCTextStream setRtpTimeOutEnabled:]";
        v18 = 1024;
        v19 = 619;
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtpTimeOutEnabled is already set to %d", buf, 0x22u);
      }
    }
  }

  else
  {
    [(AVCMediaStreamConfig *)self->_configuration setRtpTimeOutEnabled:v3];
    v12 = @"vcMediaStreamRTPTimeoutEnabled";
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTPTimeoutEnabled" arguments:v8];
  }
}

- (void)setRtcpTimeOutEnabled:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v5;
      v16 = 2080;
      v17 = "[AVCTextStream setRtcpTimeOutEnabled:]";
      v18 = 1024;
      v19 = 642;
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtcpTimeOutEnabled=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)self->_configuration isRTCPTimeOutEnabled]== v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(AVCMediaStreamConfig *)self->_configuration isRTCPTimeOutEnabled];
        *buf = 136315906;
        v15 = v9;
        v16 = 2080;
        v17 = "[AVCTextStream setRtcpTimeOutEnabled:]";
        v18 = 1024;
        v19 = 645;
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtcpTimeOutEnabled is already set to %d", buf, 0x22u);
      }
    }
  }

  else
  {
    [(AVCMediaStreamConfig *)self->_configuration setRtcpTimeOutEnabled:v3];
    v12 = @"vcMediaStreamRTCPTimeoutEnabled";
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTCPTimeoutEnabled" arguments:v8];
  }
}

- (void)setRtpTimeOutIntervalSec:(double)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = a3;
      *buf = 136315906;
      v17 = v5;
      v18 = 2080;
      v19 = "[AVCTextStream setRtpTimeOutIntervalSec:]";
      v20 = 1024;
      v21 = 668;
      v22 = 2048;
      v23 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtpTimeOutIntervalSec=%f", buf, 0x26u);
    }
  }

  [(AVCMediaStreamConfig *)self->_configuration rtpTimeOutInterval];
  if (v8 == a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [(AVCMediaStreamConfig *)self->_configuration rtpTimeOutInterval];
        *&v11 = v11;
        *buf = 136315906;
        v17 = v9;
        v18 = 2080;
        v19 = "[AVCTextStream setRtpTimeOutIntervalSec:]";
        v20 = 1024;
        v21 = 671;
        v22 = 2048;
        v23 = *&v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtpTimeOutInterval is already set to %f", buf, 0x26u);
      }
    }
  }

  else
  {
    [(AVCMediaStreamConfig *)self->_configuration setRtpTimeOutInterval:a3];
    v14 = @"vcMediaStreamRTPTimeoutInterval";
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v12, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTPTimeoutInterval" arguments:v13];
  }
}

- (void)setRtcpTimeOutIntervalSec:(double)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = a3;
      *buf = 136315906;
      v17 = v5;
      v18 = 2080;
      v19 = "[AVCTextStream setRtcpTimeOutIntervalSec:]";
      v20 = 1024;
      v21 = 695;
      v22 = 2048;
      v23 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtcpTimeOutIntervalSec=%f", buf, 0x26u);
    }
  }

  [(AVCMediaStreamConfig *)self->_configuration rtcpTimeOutInterval];
  if (v8 == a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [(AVCMediaStreamConfig *)self->_configuration rtcpTimeOutInterval];
        *&v11 = v11;
        *buf = 136315906;
        v17 = v9;
        v18 = 2080;
        v19 = "[AVCTextStream setRtcpTimeOutIntervalSec:]";
        v20 = 1024;
        v21 = 698;
        v22 = 2048;
        v23 = *&v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtcpTimeOutIntervalSec is already set to %f", buf, 0x26u);
      }
    }
  }

  else
  {
    [(AVCMediaStreamConfig *)self->_configuration setRtcpTimeOutInterval:a3];
    v14 = @"vcMediaStreamRTCPTimeoutInterval";
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v12, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTCPTimeoutInterval" arguments:v13];
  }
}

- (void)setRtcpSendIntervalSec:(double)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = a3;
      *buf = 136315906;
      v17 = v5;
      v18 = 2080;
      v19 = "[AVCTextStream setRtcpSendIntervalSec:]";
      v20 = 1024;
      v21 = 721;
      v22 = 2048;
      v23 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtcpSendIntervalSec=%f", buf, 0x26u);
    }
  }

  [(AVCMediaStreamConfig *)self->_configuration rtcpSendInterval];
  if (v8 == a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [(AVCMediaStreamConfig *)self->_configuration rtcpSendInterval];
        *&v11 = v11;
        *buf = 136315906;
        v17 = v9;
        v18 = 2080;
        v19 = "[AVCTextStream setRtcpSendIntervalSec:]";
        v20 = 1024;
        v21 = 724;
        v22 = 2048;
        v23 = *&v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCTextStream [%s] %s:%d rtcpSendIntervalSec is already set to %f", buf, 0x26u);
      }
    }
  }

  else
  {
    [(AVCMediaStreamConfig *)self->_configuration setRtcpSendInterval:a3];
    v14 = @"vcMediaStreamRTCPSendInterval";
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v12, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTCPSendInterval" arguments:v13];
  }
}

- (id)validateInitializeConnectionResult:(id)a3
{
  if (!a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCTextStream validateInitializeConnectionResult:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [AVCTextStream validateInitializeConnectionResult:];
      }
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = @"Missing result dictionary";
    return [v7 AVConferenceServiceError:32000 detailCode:0 description:v8];
  }

  if ([a3 objectForKeyedSubscript:@"SERVERDIED"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCTextStream validateInitializeConnectionResult:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [AVCTextStream validateInitializeConnectionResult:];
      }
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = @"Server died";
    return [v7 AVConferenceServiceError:32000 detailCode:0 description:v8];
  }

  if ([a3 objectForKeyedSubscript:@"ERROR"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v6 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(AVCTextStream *)v4 validateInitializeConnectionResult:a3];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [(AVCTextStream *)v4 validateInitializeConnectionResult:a3, v6];
      }
    }

    return [a3 objectForKeyedSubscript:@"ERROR"];
  }

  else
  {
    if ([a3 objectForKeyedSubscript:@"TIMEOUT"])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCTextStream validateInitializeConnectionResult:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCTextStream validateInitializeConnectionResult:];
        }
      }

      v7 = MEMORY[0x1E696ABC0];
      v8 = @"IPC Timeout";
      return [v7 AVConferenceServiceError:32000 detailCode:0 description:v8];
    }

    if (![a3 objectForKeyedSubscript:@"vcMediaStreamStreamCapabilities"])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCTextStream validateInitializeConnectionResult:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCTextStream validateInitializeConnectionResult:];
        }
      }

      v7 = MEMORY[0x1E696ABC0];
      v8 = @"Missing capabilities dictionary";
      return [v7 AVConferenceServiceError:32000 detailCode:0 description:v8];
    }

    if (![a3 objectForKeyedSubscript:@"vcMediaStreamToken"])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCTextStream validateInitializeConnectionResult:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCTextStream validateInitializeConnectionResult:];
        }
      }

      v7 = MEMORY[0x1E696ABC0];
      v8 = @"Missing stream token";
      return [v7 AVConferenceServiceError:32000 detailCode:0 description:v8];
    }

    return 0;
  }
}

- (BOOL)setupTextStreamOutOfProcessWithClientArgs:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(AVConferenceXPCClient);
  self->_connection = v7;
  if (v7)
  {
    [(AVCTextStream *)self registerBlocksForDelegateNotifications];
    v13 = @"vcMediaStreamDictionary";
    v14[0] = a3;
    v8 = -[AVConferenceXPCClient sendMessageSync:arguments:](self->_connection, "sendMessageSync:arguments:", "vcMediaStreamInitializeText", [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1]);
    v9 = [(AVCTextStream *)self validateInitializeConnectionResult:v8];
    if (v9)
    {
      if (a4)
      {
        v10 = v9;
        result = 0;
        *a4 = v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      -[AVCTextStream setCapabilities:](self, "setCapabilities:", [v8 objectForKeyedSubscript:@"vcMediaStreamStreamCapabilities"]);
      self->_streamToken = [objc_msgSend(v8 objectForKeyedSubscript:{@"vcMediaStreamToken", "integerValue"}];
      return 1;
    }
  }

  else
  {
    [AVCTextStream setupTextStreamOutOfProcessWithClientArgs:&v12 error:?];
    return v12;
  }

  return result;
}

- (void)initWithNetworkSockets:(uint64_t)a1 callID:error:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithNetworkSockets:(uint64_t)a1 callID:error:.cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithNetworkSockets:(uint64_t)a1 callID:error:.cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithRTPNWConnectionClientID:(uint64_t)a1 rtcpNWConnectionClientID:options:error:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithRTPNWConnectionClientID:(uint64_t)a1 rtcpNWConnectionClientID:options:error:.cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithRTPNWConnectionClientID:(uint64_t)a1 rtcpNWConnectionClientID:options:error:.cold.5(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)validateResultsDictionary:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "AVCTextStream [%s] %s:%d server died", v2, v3, v4, v5, v6);
}

- (void)validateResultsDictionary:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)validateResultsDictionary:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeServerWithNetworkSockets:(uint64_t)a1 callID:(void *)a2 error:.cold.1(uint64_t a1, void *a2)
{
  if (a2)
  {
    [objc_msgSend(a2 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __55__AVCTextStream_registerBlocksForDelegateNotifications__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 286;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "AVCTextStream [%s] %s:%d AVCTextStream: server died, but AVCTextStream has already deallocated, NO-OP", v1, 0x1Cu);
}

- (void)configure:(uint64_t)a1 error:(id *)a2 .cold.1(uint64_t a1, id *a2)
{
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)validateInitializeConnectionResult:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "AVCTextStream [%s] %s:%d Server died", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)validateInitializeConnectionResult:(NSObject *)a3 .cold.3(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  [a2 objectForKeyedSubscript:@"ERROR"];
  OUTLINED_FUNCTION_1_0();
  v9 = v5;
  v10 = "[AVCTextStream validateInitializeConnectionResult:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  v11 = v6;
  v12 = v7;
  v13 = a2;
  _os_log_fault_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_FAULT, "AVCTextStream [%s] %s:%d error=%@, result=%@", v8, 0x30u);
}

- (void)validateInitializeConnectionResult:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  [a2 objectForKeyedSubscript:@"ERROR"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

- (void)validateInitializeConnectionResult:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x26u);
}

- (void)validateInitializeConnectionResult:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x26u);
}

- (void)validateInitializeConnectionResult:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "AVCTextStream [%s] %s:%d Missing stream token", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)validateInitializeConnectionResult:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x26u);
}

- (void)validateInitializeConnectionResult:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x26u);
}

- (void)validateInitializeConnectionResult:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "AVCTextStream [%s] %s:%d Missing result dictionary", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.12()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupTextStreamOutOfProcessWithClientArgs:(void *)a1 error:(_BYTE *)a2 .cold.1(void *a1, _BYTE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    v15 = 780;
    OUTLINED_FUNCTION_16_0();
LABEL_12:
    _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = v11;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v16 = v4;
      v17 = 2048;
      v18 = a1;
      v5 = &dword_1DB56E000;
      v8 = "AVCTextStream [%s] %s:%d %@(%p) Failed to allocate callback XPC connection";
      v9 = &v13;
      v6 = v12;
      v7 = OS_LOG_TYPE_ERROR;
      v10 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a2 = 0;
}

@end