@interface AVCVideoStream
+ (id)extractClientDownlinkQualityInfoDictionary:(id)dictionary;
+ (id)extractClientUplinkQualityInfoDictionary:(id)dictionary;
- (AVCVideoStream)initWithIDSDestination:(id)destination callID:(id)d error:(id *)error;
- (AVCVideoStream)initWithIDSDestination:(id)destination options:(id)options error:(id *)error;
- (AVCVideoStream)initWithLocalAddress:(id)address networkSockets:(id)sockets IDSDestination:(id)destination connectionClientID:(id)d localEndpoint:(id)endpoint callID:(id)iD options:(id)options error:(id *)self0;
- (AVCVideoStream)initWithLocalEndpoint:(id)endpoint options:(id)options error:(id *)error;
- (AVCVideoStream)initWithNWConnectionClientID:(unsigned __int8)d[16] options:(id)options error:(id *)error;
- (AVCVideoStream)initWithNetworkSockets:(id)sockets callID:(id)d error:(id *)error;
- (AVCVideoStream)initWithNetworkSockets:(id)sockets options:(id)options error:(id *)error;
- (BOOL)addRemoteEndpoint:(id)endpoint error:(id *)error;
- (BOOL)configure:(id)configure error:(id *)error;
- (BOOL)configureInProcess:(id)process error:(id *)error;
- (BOOL)configureOutOfProcess:(id)process error:(id *)error;
- (BOOL)isRTCPEnabled;
- (BOOL)isRTCPTimeOutEnabled;
- (BOOL)isRTPTimeOutEnabled;
- (BOOL)isRemoteEndpointValid:(id)valid error:(id *)error;
- (BOOL)manageRemoteEndpointInProcess:(id)process actionType:(int64_t)type error:(id *)error;
- (BOOL)manageRemoteEndpointOutOfProcess:(id)process actionType:(int64_t)type error:(id *)error;
- (BOOL)removeRemoteEndpoint:(id)endpoint error:(id *)error;
- (BOOL)setUpVideoStreamInProcessWithClientArgs:(id)args xpcArguments:(id)arguments error:(id *)error;
- (BOOL)setUpVideoStreamOutOfProcessWithClientArgs:(id)args xpcArguments:(id)arguments error:(id *)error;
- (BOOL)shouldRunInProcessWithOptions:(id)options;
- (double)rtcpSendIntervalSec;
- (double)rtcpTimeOutIntervalSec;
- (double)rtpTimeOutIntervalSec;
- (id)validateInitializeConnectionResult:(id)result;
- (int64_t)direction;
- (void)dealloc;
- (void)deregisterBlocksForDelegateNotifications;
- (void)pause;
- (void)refreshLoggingParameters;
- (void)registerBlocksForDelegateNotifications;
- (void)requestLastDecodedFrame;
- (void)resume;
- (void)setDirection:(int64_t)direction;
- (void)setRtcpEnabled:(BOOL)enabled;
- (void)setRtcpSendIntervalSec:(double)sec;
- (void)setRtcpTimeOutEnabled:(BOOL)enabled;
- (void)setRtcpTimeOutIntervalSec:(double)sec;
- (void)setRtpTimeOutEnabled:(BOOL)enabled;
- (void)setRtpTimeOutIntervalSec:(double)sec;
- (void)start;
- (void)stop;
- (void)terminateSession;
- (void)updateVideoConfiguration:(id)configuration;
- (void)vcMediaStream:(id)stream didPauseStream:(BOOL)pauseStream error:(id)error;
- (void)vcMediaStream:(id)stream didReceiveRTCPPackets:(id)packets;
- (void)vcMediaStream:(id)stream didResumeStream:(BOOL)resumeStream error:(id)error;
- (void)vcMediaStream:(id)stream didStartStream:(BOOL)startStream error:(id)error;
- (void)vcMediaStream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error dictionary:(id)dictionary;
- (void)vcMediaStream:(id)stream downlinkQualityDidChange:(id)change;
- (void)vcMediaStream:(id)stream uplinkQualityDidChange:(id)change;
- (void)vcMediaStreamDidRTCPTimeOut:(id)out;
- (void)vcMediaStreamDidRTPTimeOut:(id)out;
- (void)vcMediaStreamDidStop:(id)stop;
- (void)vcMediaStreamServerDidDie:(id)die;
@end

@implementation AVCVideoStream

- (AVCVideoStream)initWithNetworkSockets:(id)sockets callID:(id)d error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() < 6)
  {
    return [(AVCVideoStream *)self initWithLocalAddress:0 networkSockets:sockets IDSDestination:0 connectionClientID:0 localEndpoint:0 callID:d options:0 error:error];
  }

  __str = 0;
  if (sockets)
  {
    v9 = [objc_msgSend(sockets "description")];
    if (d)
    {
LABEL_4:
      v10 = [objc_msgSend(d "description")];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = "<nil>";
    if (d)
    {
      goto LABEL_4;
    }
  }

  v10 = "<nil>";
LABEL_7:
  if (*error)
  {
    v11 = [objc_msgSend(*error "description")];
  }

  else
  {
    v11 = "<nil>";
  }

  asprintf(&__str, "socketsDictionary=%s, callID=%s, error=%s", v9, v10, v11);
  if (__str)
  {
    errorCopy = error;
    selfCopy = self;
    __lasts = 0;
    v12 = strtok_r(__str, "\n", &__lasts);
    v13 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v22 = v14;
          v23 = 2080;
          v24 = "[AVCVideoStream initWithNetworkSockets:callID:error:]";
          v25 = 1024;
          v26 = 66;
          v27 = 2080;
          v28 = "";
          v29 = 2080;
          v30 = v12;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v12 = strtok_r(0, "\n", &__lasts);
    }

    while (v12);
    free(__str);
    error = errorCopy;
    self = selfCopy;
  }

  return [(AVCVideoStream *)self initWithLocalAddress:0 networkSockets:sockets IDSDestination:0 connectionClientID:0 localEndpoint:0 callID:d options:0 error:error];
}

- (AVCVideoStream)initWithNetworkSockets:(id)sockets options:(id)options error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() < 6)
  {
    goto LABEL_17;
  }

  __str = 0;
  if (sockets)
  {
    v9 = [objc_msgSend(sockets "description")];
    if (options)
    {
LABEL_4:
      v10 = [objc_msgSend(options "description")];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = "<nil>";
    if (options)
    {
      goto LABEL_4;
    }
  }

  v10 = "<nil>";
LABEL_7:
  if (*error)
  {
    v11 = [objc_msgSend(*error "description")];
  }

  else
  {
    v11 = "<nil>";
  }

  asprintf(&__str, "socketsDictionary=%s, options=%s, error=%s", v9, v10, v11);
  if (__str)
  {
    errorCopy = error;
    selfCopy = self;
    __lasts = 0;
    v12 = strtok_r(__str, "\n", &__lasts);
    v13 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v23 = v14;
          v24 = 2080;
          v25 = "[AVCVideoStream initWithNetworkSockets:options:error:]";
          v26 = 1024;
          v27 = 71;
          v28 = 2080;
          v29 = "";
          v30 = 2080;
          v31 = v12;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v12 = strtok_r(0, "\n", &__lasts);
    }

    while (v12);
    free(__str);
    self = selfCopy;
    error = errorCopy;
  }

LABEL_17:
  if (options)
  {
    v16 = [options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
  }

  else
  {
    v16 = 0;
  }

  return [(AVCVideoStream *)self initWithLocalAddress:0 networkSockets:sockets IDSDestination:0 connectionClientID:0 localEndpoint:0 callID:v16 options:options error:error];
}

- (AVCVideoStream)initWithNWConnectionClientID:(unsigned __int8)d[16] options:(id)options error:(id *)error
{
  selfCopy = self;
  v42 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v9 = [options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:d];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      v11 = [-[AVCVideoStream UUIDString](v10 "UUIDString")];
      v12 = options ? [objc_msgSend(options "description")] : "<nil>";
      v19 = *error ? [objc_msgSend(*error "description")] : "<nil>";
      asprintf(&__str, "clientID=%s, options=%s, error=%s", v11, v12, v19);
      if (__str)
      {
        v28 = v9;
        v29 = selfCopy;
        __lasts = 0;
        v23 = strtok_r(__str, "\n", &__lasts);
        v24 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v25 = VRTraceErrorLogLevelToCSTR();
            v26 = *v24;
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v33 = v25;
              v34 = 2080;
              v35 = "[AVCVideoStream initWithNWConnectionClientID:options:error:]";
              v36 = 1024;
              v37 = 93;
              v38 = 2080;
              v39 = "";
              v40 = 2080;
              v41 = v23;
              _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v23 = strtok_r(0, "\n", &__lasts);
        }

        while (v23);
        free(__str);
        selfCopy = v29;
        v9 = v28;
      }
    }

    v22 = [(AVCVideoStream *)selfCopy initWithLocalAddress:0 networkSockets:0 IDSDestination:0 connectionClientID:[(AVCVideoStream *)v10 UUIDString] localEndpoint:0 callID:v9 options:options error:error];
    goto LABEL_31;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_19;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315650;
    v33 = v14;
    v34 = 2080;
    v35 = "[AVCVideoStream initWithNWConnectionClientID:options:error:]";
    v36 = 1024;
    v37 = 83;
    v16 = "AVCVideoStream [%s] %s:%d clientID is nil";
    v17 = v15;
    v18 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(AVCVideoStream *)selfCopy performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_19;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136316162;
    v33 = v20;
    v34 = 2080;
    v35 = "[AVCVideoStream initWithNWConnectionClientID:options:error:]";
    v36 = 1024;
    v37 = 83;
    v38 = 2112;
    v39 = v13;
    v40 = 2048;
    v41 = selfCopy;
    v16 = "AVCVideoStream [%s] %s:%d %@(%p) clientID is nil";
    v17 = v21;
    v18 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_19:
  v22 = 0;
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"clientID may not be nil"];
  }

  v10 = selfCopy;
LABEL_31:

  return v22;
}

- (AVCVideoStream)initWithLocalEndpoint:(id)endpoint options:(id)options error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = [options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [endpoint description];
        if (options)
        {
          v14 = [objc_msgSend(options "description")];
        }

        else
        {
          v14 = "<nil>";
        }

        *buf = 136316418;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "[AVCVideoStream initWithLocalEndpoint:options:error:]";
        *&buf[22] = 1024;
        LODWORD(v24) = 102;
        WORD2(v24) = 2112;
        *(&v24 + 6) = v13;
        HIWORD(v24) = 2112;
        selfCopy = v9;
        *v26 = 2080;
        *&v26[2] = v14;
        v19 = "AVCVideoStream [%s] %s:%d Local NW Endpoint=%@, callID=%@, options=%s";
        v20 = v12;
        v21 = 58;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = [endpoint description];
        if (options)
        {
          v18 = [objc_msgSend(options "description")];
        }

        else
        {
          v18 = "<nil>";
        }

        *buf = 136316930;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = "[AVCVideoStream initWithLocalEndpoint:options:error:]";
        *&buf[22] = 1024;
        LODWORD(v24) = 102;
        WORD2(v24) = 2112;
        *(&v24 + 6) = v10;
        HIWORD(v24) = 2048;
        selfCopy = self;
        *v26 = 2112;
        *&v26[2] = v17;
        *&v26[10] = 2112;
        *&v26[12] = v9;
        *&v26[20] = 2080;
        *&v26[22] = v18;
        v19 = "AVCVideoStream [%s] %s:%d %@(%p) Local NW Endpoint=%@, callID=%@, options=%s";
        v20 = v16;
        v21 = 78;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }
  }

  return [(AVCVideoStream *)self initWithLocalAddress:0 networkSockets:0 IDSDestination:0 connectionClientID:0 localEndpoint:endpoint callID:v9 options:options error:error, *buf, *&buf[16], v24, selfCopy, *v26, *&v26[16]];
}

- (AVCVideoStream)initWithIDSDestination:(id)destination callID:(id)d error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *error;
        *buf = 136316418;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "[AVCVideoStream initWithIDSDestination:callID:error:]";
        *&buf[22] = 1024;
        LODWORD(v21) = 109;
        WORD2(v21) = 2112;
        *(&v21 + 6) = destination;
        HIWORD(v21) = 2112;
        selfCopy = d;
        *v23 = 2112;
        *&v23[2] = v12;
        v13 = "AVCVideoStream [%s] %s:%d destination=%@, callID=%@, error=%@";
        v14 = v11;
        v15 = 58;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = *error;
        *buf = 136316930;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = "[AVCVideoStream initWithIDSDestination:callID:error:]";
        *&buf[22] = 1024;
        LODWORD(v21) = 109;
        WORD2(v21) = 2112;
        *(&v21 + 6) = v9;
        HIWORD(v21) = 2048;
        selfCopy = self;
        *v23 = 2112;
        *&v23[2] = destination;
        *&v23[10] = 2112;
        *&v23[12] = d;
        *&v23[20] = 2112;
        *&v23[22] = v18;
        v13 = "AVCVideoStream [%s] %s:%d %@(%p) destination=%@, callID=%@, error=%@";
        v14 = v17;
        v15 = 78;
        goto LABEL_11;
      }
    }
  }

  return [(AVCVideoStream *)self initWithLocalAddress:0 networkSockets:0 IDSDestination:destination connectionClientID:0 localEndpoint:0 callID:d options:0 error:error, *buf, *&buf[16], v21, selfCopy, *v23, *&v23[16]];
}

- (AVCVideoStream)initWithIDSDestination:(id)destination options:(id)options error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() < 6)
  {
    goto LABEL_9;
  }

  v9 = VRTraceErrorLogLevelToCSTR();
  v10 = *MEMORY[0x1E6986650];
  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_9;
  }

  if (!options)
  {
    v11 = "<nil>";
    if (error)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = [objc_msgSend(options "description")];
  if (!error)
  {
    goto LABEL_7;
  }

LABEL_5:
  v12 = *error;
LABEL_8:
  *buf = 136316418;
  v16 = v9;
  v17 = 2080;
  v18 = "[AVCVideoStream initWithIDSDestination:options:error:]";
  v19 = 1024;
  v20 = 114;
  v21 = 2112;
  destinationCopy = destination;
  v23 = 2080;
  v24 = v11;
  v25 = 2112;
  v26 = v12;
  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d destination=%@, options=%s, error=%@", buf, 0x3Au);
LABEL_9:
  if (options)
  {
    v13 = [options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
  }

  else
  {
    v13 = 0;
  }

  return [(AVCVideoStream *)self initWithLocalAddress:0 networkSockets:0 IDSDestination:destination connectionClientID:0 localEndpoint:0 callID:v13 options:options error:error];
}

- (AVCVideoStream)initWithLocalAddress:(id)address networkSockets:(id)sockets IDSDestination:(id)destination connectionClientID:(id)d localEndpoint:(id)endpoint callID:(id)iD options:(id)options error:(id *)self0
{
  v65 = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = AVCVideoStream;
  v16 = [(AVCVideoStream *)&v51 init];
  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v17)
    {
      v18 = v17;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_28;
      }

      __str = 0;
      if (address)
      {
        v48 = [objc_msgSend(address "description")];
      }

      else
      {
        v48 = "<nil>";
      }

      endpointCopy = endpoint;
      if (sockets)
      {
        v19 = [objc_msgSend(sockets "description")];
        if (destination)
        {
LABEL_9:
          v20 = [objc_msgSend(destination "description")];
          goto LABEL_12;
        }
      }

      else
      {
        v19 = "<nil>";
        if (destination)
        {
          goto LABEL_9;
        }
      }

      v20 = "<nil>";
LABEL_12:
      dCopy = d;
      if (d)
      {
        v21 = [objc_msgSend(d "description")];
      }

      else
      {
        v21 = "<nil>";
      }

      addressCopy = address;
      if (iD)
      {
        v22 = [objc_msgSend(iD "description")];
        if (options)
        {
LABEL_17:
          v23 = [objc_msgSend(options "description")];
LABEL_20:
          asprintf(&__str, "localAddress=%s, socketsDictionary=%s, destination=%s, connectionClientID=%s, callID=%s, options=%s", v48, v19, v20, v21, v22, v23);
          if (__str)
          {
            socketsCopy = sockets;
            iDCopy = iD;
            v43 = v18;
            v44 = v16;
            __lasts = 0;
            v24 = strtok_r(__str, "\n", &__lasts);
            v25 = MEMORY[0x1E6986650];
            do
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v26 = VRTraceErrorLogLevelToCSTR();
                v27 = *v25;
                if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  *&buf[4] = v26;
                  v53 = 2080;
                  v54 = "[AVCVideoStream initWithLocalAddress:networkSockets:IDSDestination:connectionClientID:localEndpoint:callID:options:error:]";
                  v55 = 1024;
                  v56 = 133;
                  v57 = 2080;
                  v58 = "";
                  v59 = 2080;
                  iDCopy2 = v24;
                  _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
                }
              }

              v24 = strtok_r(0, "\n", &__lasts);
            }

            while (v24);
            free(__str);
            v18 = v43;
            v16 = v44;
            iD = iDCopy;
            sockets = socketsCopy;
          }

          endpoint = endpointCopy;
          d = dCopy;
          address = addressCopy;
LABEL_28:
          v16->_isInProcess = [(AVCVideoStream *)v16 shouldRunInProcessWithOptions:options];
          [(AVCVideoStream *)v16 refreshLoggingParameters];
          if (sockets)
          {
            sockets = xpc_retain(sockets);
          }

          if (address)
          {
            [v18 setObject:objc_msgSend(address forKeyedSubscript:{"ip"), @"vcMediaStreamSourceIP"}];
            [v18 setObject:objc_msgSend(address forKeyedSubscript:{"interfaceName"), @"vcMediaStreamSourceInterfaceName"}];
          }

          if (destination)
          {
            [v18 setObject:destination forKeyedSubscript:@"vcMediaStreamDestID"];
          }

          if ([endpoint endpoint])
          {
            if (nw_endpoint_get_port([endpoint endpoint]))
            {
              [AVCVideoStream initWithLocalAddress:sockets networkSockets:buf IDSDestination:&__str connectionClientID:? localEndpoint:? callID:? options:? error:?];
              sockets = *buf;
              v33 = __str;
              if (*buf)
              {
LABEL_66:
                xpc_release(sockets);
              }

LABEL_67:

              if (v33)
              {
                return v16;
              }

              goto LABEL_68;
            }

            isInProcess = v16->_isInProcess;
            endpoint = [endpoint endpoint];
            if (isInProcess)
            {
              v30 = @"vcMediaStreamLocalNWEndpoint";
            }

            else
            {
              sockets = nw_endpoint_copy_dictionary();
              endpoint = MEMORY[0x1E695E118];
              v30 = @"vcMediaStreamLocalNWEndpointInXpcArgs";
            }

            [v18 setObject:endpoint forKeyedSubscript:v30];
          }

          if (d)
          {
            [v18 setObject:d forKeyedSubscript:@"vcMediaStreamConnectionClientID"];
          }

          if (iD)
          {
            [v18 setObject:iD forKeyedSubscript:@"vcMediaStreamCallID"];
          }

          if ([options objectForKeyedSubscript:@"avcMediaStreamOptionClientPID"])
          {
            [v18 setObject:objc_msgSend(options forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionClientPID", @"vcMediaStreamClientPID"}];
          }

          if ([options objectForKeyedSubscript:@"avcMediaStreamOptionRemoteEndpointInfo"])
          {
            [v18 setObject:objc_msgSend(options forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionRemoteEndpointInfo", @"vcMediaStreamRemoteEndpointInfo"}];
          }

          if ([options objectForKeyedSubscript:@"avcMediaStreamOptionClientName"])
          {
            [v18 setObject:objc_msgSend(options forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionClientName", @"vcMediaStreamClientName"}];
          }

          if ([options objectForKeyedSubscript:@"avcMediaStreamOptionClientSessionID"])
          {
            [options objectForKeyedSubscript:@"avcMediaStreamOptionClientSessionID"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v18 setObject:objc_msgSend(objc_msgSend(options forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionClientSessionID", "UUIDString"), @"vcMediaStreamClientSessionID"}];
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [AVCVideoStream initWithLocalAddress:networkSockets:IDSDestination:connectionClientID:localEndpoint:callID:options:error:];
              }
            }
          }

          CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
          v16->_callbackQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.avcvideostream.callback.queue", 0, CustomRootQueue);
          if (v16->_isInProcess)
          {
            v32 = [(AVCVideoStream *)v16 setUpVideoStreamInProcessWithClientArgs:v18 xpcArguments:sockets error:error];
          }

          else
          {
            v32 = [(AVCVideoStream *)v16 setUpVideoStreamOutOfProcessWithClientArgs:v18 xpcArguments:sockets error:error];
          }

          v33 = v32;
          MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-init");
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v34 = VRTraceErrorLogLevelToCSTR();
            v35 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              streamToken = v16->_streamToken;
              if (error)
              {
                v37 = *error;
              }

              else
              {
                v37 = @"None";
              }

              *buf = 136316674;
              *&buf[4] = v34;
              v53 = 2080;
              v54 = "[AVCVideoStream initWithLocalAddress:networkSockets:IDSDestination:connectionClientID:localEndpoint:callID:options:error:]";
              v55 = 1024;
              v56 = 192;
              v57 = 2048;
              v58 = v16;
              v59 = 2112;
              iDCopy2 = iD;
              v61 = 1024;
              v62 = streamToken;
              v63 = 2112;
              v64 = v37;
              _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-init (%p) callID=%@, streamToken=%d, error=%@", buf, 0x40u);
            }
          }

          if (sockets)
          {
            goto LABEL_66;
          }

          goto LABEL_67;
        }
      }

      else
      {
        v22 = "<nil>";
        if (options)
        {
          goto LABEL_17;
        }
      }

      v23 = "<nil>";
      goto LABEL_20;
    }

    [AVCVideoStream initWithLocalAddress:v16 networkSockets:? IDSDestination:? connectionClientID:? localEndpoint:? callID:? options:? error:?];
  }

  else
  {
    [AVCVideoStream initWithLocalAddress:networkSockets:IDSDestination:connectionClientID:localEndpoint:callID:options:error:];
  }

LABEL_68:

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v38 = VRTraceErrorLogLevelToCSTR();
    v39 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v38;
      v53 = 2080;
      v54 = "[AVCVideoStream initWithLocalAddress:networkSockets:IDSDestination:connectionClientID:localEndpoint:callID:options:error:]";
      v55 = 1024;
      v56 = 203;
      v57 = 2048;
      v58 = 0;
      _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-init (%p)", buf, 0x26u);
    }
  }

  return 0;
}

- (BOOL)shouldRunInProcessWithOptions:(id)options
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(options objectForKeyedSubscript:{@"avcMediaStreamOptionRunInProcess", "BOOLValue"}];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = "out of";
        v17 = v6;
        v16 = 136315906;
        v19 = "[AVCVideoStream shouldRunInProcessWithOptions:]";
        v18 = 2080;
        if (v4)
        {
          v8 = "in";
        }

        v20 = 1024;
        v21 = 210;
        v22 = 2080;
        v23 = v8;
        v9 = "AVCVideoStream [%s] %s:%d AVCVideoStream will run %s process";
        v10 = v7;
        v11 = 38;
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = "out of";
        v17 = v12;
        v16 = 136316418;
        v19 = "[AVCVideoStream shouldRunInProcessWithOptions:]";
        v18 = 2080;
        if (v4)
        {
          v14 = "in";
        }

        v20 = 1024;
        v21 = 210;
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        selfCopy = self;
        v26 = 2080;
        v27 = v14;
        v9 = "AVCVideoStream [%s] %s:%d %@(%p) AVCVideoStream will run %s process";
        v10 = v13;
        v11 = 58;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
      }
    }
  }

  return v4;
}

- (id)validateInitializeConnectionResult:(id)result
{
  v45 = *MEMORY[0x1E69E9840];
  if (!result)
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
            [AVCVideoStream validateInitializeConnectionResult:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCVideoStream validateInitializeConnectionResult:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v13 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v31 = 136316162;
            v32 = v11;
            v33 = 2080;
            v34 = "[AVCVideoStream validateInitializeConnectionResult:]";
            v35 = 1024;
            v36 = 218;
            v37 = 2112;
            v38 = v6;
            v39 = 2048;
            selfCopy9 = self;
            _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) Error initializing... no results dict", &v31, 0x30u);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v31 = 136316162;
          v32 = v11;
          v33 = 2080;
          v34 = "[AVCVideoStream validateInitializeConnectionResult:]";
          v35 = 1024;
          v36 = 218;
          v37 = 2112;
          v38 = v6;
          v39 = 2048;
          selfCopy9 = self;
          _os_log_fault_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_FAULT, "AVCVideoStream [%s] %s:%d %@(%p) Error initializing... no results dict", &v31, 0x30u);
        }
      }
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = @"Missing result dictionary";
    return [v18 AVConferenceServiceError:32000 detailCode:0 description:v19];
  }

  if ([result objectForKeyedSubscript:@"SERVERDIED"])
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
            [AVCVideoStream validateInitializeConnectionResult:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCVideoStream validateInitializeConnectionResult:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = VRTraceIsOSFaultDisabled();
        v10 = *MEMORY[0x1E6986650];
        if (v9)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v31 = 136316162;
            v32 = v8;
            v33 = 2080;
            v34 = "[AVCVideoStream validateInitializeConnectionResult:]";
            v35 = 1024;
            v36 = 221;
            v37 = 2112;
            v38 = v5;
            v39 = 2048;
            selfCopy9 = self;
            _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) Server died", &v31, 0x30u);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v31 = 136316162;
          v32 = v8;
          v33 = 2080;
          v34 = "[AVCVideoStream validateInitializeConnectionResult:]";
          v35 = 1024;
          v36 = 221;
          v37 = 2112;
          v38 = v5;
          v39 = 2048;
          selfCopy9 = self;
          _os_log_fault_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_FAULT, "AVCVideoStream [%s] %s:%d %@(%p) Server died", &v31, 0x30u);
        }
      }
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = @"Server died";
    return [v18 AVConferenceServiceError:32000 detailCode:0 description:v19];
  }

  if ([result objectForKeyedSubscript:@"ERROR"])
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
            [AVCVideoStream validateInitializeConnectionResult:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCVideoStream validateInitializeConnectionResult:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = VRTraceIsOSFaultDisabled();
        v17 = *MEMORY[0x1E6986650];
        if (v16)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v31 = 136316674;
            v32 = v15;
            v33 = 2080;
            v34 = "[AVCVideoStream validateInitializeConnectionResult:]";
            v35 = 1024;
            v36 = 224;
            v37 = 2112;
            v38 = v7;
            v39 = 2048;
            selfCopy9 = self;
            v41 = 2112;
            v42 = [result objectForKeyedSubscript:@"ERROR"];
            v43 = 2112;
            resultCopy2 = result;
            _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) Critical error=%@, result=%@", &v31, 0x44u);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v31 = 136316674;
          v32 = v15;
          v33 = 2080;
          v34 = "[AVCVideoStream validateInitializeConnectionResult:]";
          v35 = 1024;
          v36 = 224;
          v37 = 2112;
          v38 = v7;
          v39 = 2048;
          selfCopy9 = self;
          v41 = 2112;
          v42 = [result objectForKeyedSubscript:@"ERROR"];
          v43 = 2112;
          resultCopy2 = result;
          _os_log_fault_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_FAULT, "AVCVideoStream [%s] %s:%d %@(%p) Critical error=%@, result=%@", &v31, 0x44u);
        }
      }
    }

    return [result objectForKeyedSubscript:@"ERROR"];
  }

  else
  {
    if ([result objectForKeyedSubscript:@"TIMEOUT"])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [(AVCVideoStream *)v21 validateInitializeConnectionResult:result];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v14 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            if ([result objectForKeyedSubscript:@"ERROR"])
            {
              v30 = [objc_msgSend(objc_msgSend(result objectForKeyedSubscript:{@"ERROR", "description"), "UTF8String"}];
            }

            else
            {
              v30 = "<nil>";
            }

            v31 = 136316674;
            v32 = v22;
            v33 = 2080;
            v34 = "[AVCVideoStream validateInitializeConnectionResult:]";
            v35 = 1024;
            v36 = 227;
            v37 = 2112;
            v38 = v14;
            v39 = 2048;
            selfCopy9 = self;
            v41 = 2080;
            v42 = v30;
            v43 = 2080;
            resultCopy2 = [objc_msgSend(result "description")];
            _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) Error initializing error=%s resultDict=%s", &v31, 0x44u);
          }
        }
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = @"IPC Timeout";
      return [v18 AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    if (![result objectForKeyedSubscript:@"vcMediaStreamStreamCapabilities"])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCVideoStream validateInitializeConnectionResult:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v24 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v24 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v31 = 136316418;
            v32 = v26;
            v33 = 2080;
            v34 = "[AVCVideoStream validateInitializeConnectionResult:]";
            v35 = 1024;
            v36 = 230;
            v37 = 2112;
            v38 = v24;
            v39 = 2048;
            selfCopy9 = self;
            v41 = 2080;
            v42 = [objc_msgSend(result "description")];
            _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) Error initializing no capabilities dict result=%s", &v31, 0x3Au);
          }
        }
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = @"Missing capabilities dictionary";
      return [v18 AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    if (![result objectForKeyedSubscript:@"vcMediaStreamToken"])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCVideoStream validateInitializeConnectionResult:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v25 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v25 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v31 = 136316162;
            v32 = v28;
            v33 = 2080;
            v34 = "[AVCVideoStream validateInitializeConnectionResult:]";
            v35 = 1024;
            v36 = 233;
            v37 = 2112;
            v38 = v25;
            v39 = 2048;
            selfCopy9 = self;
            _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) Error initializing... return stream token failed", &v31, 0x30u);
          }
        }
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = @"Missing stream token";
      return [v18 AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    return 0;
  }
}

- (BOOL)configureInProcess:(id)process error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  v7 = -[VCVideoStreamConfig initWithClientDictionary:]([VCVideoStreamConfig alloc], "initWithClientDictionary:", [process dictionary]);
  v8 = v7;
  if (v7 && (opaqueStream = self->_opaqueStream, v29[0] = v7, -[VCMediaStream setStreamConfig:withError:](opaqueStream, "setStreamConfig:withError:", [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1], error)))
  {
    [(AVCVideoStream *)self setConfiguration:process];
    v10 = 1;
  }

  else
  {
    if (error && !*error)
    {
      v27 = *MEMORY[0x1E696A588];
      v28 = @"Failed to create VCVideoStreamConfig from config dictionary.";
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCVideoStream" code:-1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v28, &v27, 1)}];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCVideoStream configureInProcess:error:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v12 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v12 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v15 = 136316418;
            v16 = v13;
            v17 = 2080;
            v18 = "[AVCVideoStream configureInProcess:error:]";
            v19 = 1024;
            v20 = 281;
            v21 = 2112;
            v22 = v12;
            v23 = 2048;
            selfCopy = self;
            v25 = 2112;
            v26 = @"Failed to create VCVideoStreamConfig from config dictionary.";
            _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) error=%@", &v15, 0x3Au);
          }
        }
      }
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)setUpVideoStreamOutOfProcessWithClientArgs:(id)args xpcArguments:(id)arguments error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  self->_connection = objc_alloc_init(AVConferenceXPCClient);
  v13 = @"vcMediaStreamDictionary";
  v14[0] = args;
  v9 = -[AVConferenceXPCClient sendMessageSync:arguments:xpcArguments:](self->_connection, "sendMessageSync:arguments:xpcArguments:", "vcMediaStreamInitializeVideo", [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1], arguments);
  [(AVCVideoStream *)self registerBlocksForDelegateNotifications];
  v10 = [(AVCVideoStream *)self validateInitializeConnectionResult:v9];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      *error = v10;
    }
  }

  else
  {
    -[AVCVideoStream setCapabilities:](self, "setCapabilities:", [v9 objectForKeyedSubscript:@"vcMediaStreamStreamCapabilities"]);
    self->_streamToken = [objc_msgSend(v9 objectForKeyedSubscript:{@"vcMediaStreamToken", "integerValue"}];
  }

  return v11 == 0;
}

- (BOOL)manageRemoteEndpointInProcess:(id)process actionType:(int64_t)type error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (type == 1)
  {
    v8 = [(VCVideoStream *)self->_opaqueStream removeRemoteEndpoint:process error:error];
  }

  else
  {
    if (type)
    {
      v9 = 0;
      if (!error)
      {
        return v9;
      }

      goto LABEL_8;
    }

    v8 = [(VCVideoStream *)self->_opaqueStream addRemoteEndpoint:process error:error];
  }

  v9 = v8;
  if (!error)
  {
    return v9;
  }

LABEL_8:
  if (!v9 && !*error)
  {
    v11 = "remove";
    if (!type)
    {
      v11 = "add";
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to %s the remote endpoint", v11];
    v28 = *MEMORY[0x1E696A588];
    v29[0] = v12;
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCVideoStream" code:-3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, &v28, 1)}];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCVideoStream manageRemoteEndpointInProcess:actionType:error:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v17 = v14;
          v18 = 2080;
          v19 = "[AVCVideoStream manageRemoteEndpointInProcess:actionType:error:]";
          v20 = 1024;
          v21 = 364;
          v22 = 2112;
          v23 = v13;
          v24 = 2048;
          selfCopy = self;
          v26 = 2112;
          v27 = v12;
          _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
        }
      }
    }
  }

  return v9;
}

- (BOOL)manageRemoteEndpointOutOfProcess:(id)process actionType:(int64_t)type error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = [AVCEndpoint newEndpointXPCDictionaryWithAVCEndpoint:?];
  if (!v9)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCVideoStream manageRemoteEndpointOutOfProcess:actionType:error:];
          if (error)
          {
            goto LABEL_25;
          }

          return 0;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v25 = v17;
          v26 = 2080;
          v27 = "[AVCVideoStream manageRemoteEndpointOutOfProcess:actionType:error:]";
          v28 = 1024;
          v29 = 372;
          v30 = 2112;
          v31 = v16;
          v32 = 2048;
          selfCopy2 = self;
          v34 = 2112;
          v35 = [process description];
          _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) Failed to encode the AVC remote endpoint=%@", buf, 0x3Au);
          if (error)
          {
LABEL_25:
            v22 = *MEMORY[0x1E696A588];
            v23 = @"Failed to encode the remote endpoint provided";
            *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCVideoStream" code:-3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v23, &v22, 1)}];
            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [AVCVideoStream manageRemoteEndpointOutOfProcess:actionType:error:];
                }
              }
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v19 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
              }

              else
              {
                v19 = &stru_1F570E008;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v20 = VRTraceErrorLogLevelToCSTR();
                v21 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  v25 = v20;
                  v26 = 2080;
                  v27 = "[AVCVideoStream manageRemoteEndpointOutOfProcess:actionType:error:]";
                  v28 = 1024;
                  v29 = 400;
                  v30 = 2112;
                  v31 = v19;
                  v32 = 2048;
                  selfCopy2 = self;
                  v34 = 2112;
                  v35 = @"Failed to encode the remote endpoint provided";
                  _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
                }
              }
            }
          }

          return 0;
        }
      }
    }

    if (error)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v10 = v9;
  if (type)
  {
    if (type != 1)
    {
LABEL_10:
      v14 = 0;
      goto LABEL_12;
    }

    v11 = "vcMediaStreamRemoveRemoteAVCEndpoint";
  }

  else
  {
    v11 = "vcMediaStreamAddRemoteAVCEndpoint";
  }

  v12 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:v11 arguments:0 xpcArguments:v9];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = [v12 objectForKeyedSubscript:@"ERROR"];
  if (!v13)
  {
    v14 = 1;
    goto LABEL_12;
  }

  if (!error)
  {
    goto LABEL_10;
  }

  v14 = 0;
  *error = v13;
LABEL_12:
  xpc_release(v10);
  return v14;
}

- (BOOL)isRemoteEndpointValid:(id)valid error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  if (![valid endpoint] || !objc_msgSend(valid, "rtpSSRC"))
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCVideoStream.m", 413], @"Invalid Parameter", @"Remote endpoint is invalid");
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v7)
        {
          return v7;
        }

        [AVCVideoStream isRemoteEndpointValid:error:];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v7)
        {
          return v7;
        }

        *buf = 136316674;
        v13 = v9;
        v14 = 2080;
        v15 = "[AVCVideoStream isRemoteEndpointValid:error:]";
        v16 = 1024;
        v17 = 416;
        v18 = 2112;
        v19 = v8;
        v20 = 2048;
        selfCopy = self;
        v22 = 2112;
        v23 = [objc_msgSend(valid "endpoint")];
        v24 = 1024;
        rtpSSRC = [valid rtpSSRC];
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) Invalid remote endpoint: endpoint=%@, rtpSSRC=%d", buf, 0x40u);
      }
    }

    LOBYTE(v7) = 0;
    return v7;
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (void)terminateSession
{
  if (!self->_isInProcess)
  {
    [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidServerDie"];
    [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaStreamTerminateVideo"];

    self->_connection = 0;
  }
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
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

    *buf = 136315650;
    v16 = v4;
    v17 = 2080;
    v18 = "[AVCVideoStream dealloc]";
    v19 = 1024;
    v20 = 465;
    v6 = "AVCVideoStream [%s] %s:%d ";
    v7 = v5;
    v8 = 28;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
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
      *buf = 136316162;
      v16 = v9;
      v17 = 2080;
      v18 = "[AVCVideoStream dealloc]";
      v19 = 1024;
      v20 = 465;
      v21 = 2112;
      selfCopy2 = v3;
      v23 = 2048;
      selfCopy = self;
      v6 = "AVCVideoStream [%s] %s:%d %@(%p) ";
      v7 = v10;
      v8 = 48;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  [(AVCVideoStream *)self setCapabilities:0];
  [(AVCVideoStream *)self setConfiguration:0];
  if (self->_isInProcess)
  {
    [(VCMediaStream *)self->_opaqueStream stop];
    [(VCMediaStream *)self->_opaqueStream setDelegate:0];
  }

  else
  {
    [(AVCVideoStream *)self deregisterBlocksForDelegateNotifications];
    [(AVCVideoStream *)self terminateSession];
  }

  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
    self->_callbackQueue = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v12;
      v17 = 2080;
      v18 = "[AVCVideoStream dealloc]";
      v19 = 1024;
      v20 = 482;
      v21 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-dealloc (%p)", buf, 0x26u);
    }
  }

  v14.receiver = self;
  v14.super_class = AVCVideoStream;
  [(AVCVideoStream *)&v14 dealloc];
}

- (void)refreshLoggingParameters
{
  CFPreferencesAppSynchronize(@"com.apple.AVConference");
  CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]);
  VRTraceReset();

  VRTracePrintLoggingInfo();
}

- (BOOL)configure:(id)configure error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v7 = configure ? [objc_msgSend(configure "description")] : "<nil>";
    v8 = *error ? [objc_msgSend(*error "description")] : "<nil>";
    asprintf(&__str, "configuration=%s, error=%s", v7, v8);
    if (__str)
    {
      errorCopy = error;
      __lasts = 0;
      v9 = strtok_r(__str, "\n", &__lasts);
      v10 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v29 = v11;
            v30 = 2080;
            v31 = "[AVCVideoStream configure:error:]";
            v32 = 1024;
            v33 = 508;
            v34 = 2080;
            selfCopy = "";
            v36 = 2080;
            *v37 = v9;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v9 = strtok_r(0, "\n", &__lasts);
      }

      while (v9);
      free(__str);
      error = errorCopy;
    }
  }

  if ([configure isValidVideoConfig])
  {
    if (self->_isInProcess)
    {
      v13 = [(AVCVideoStream *)self configureInProcess:configure error:error];
    }

    else
    {
      v13 = [(AVCVideoStream *)self configureOutOfProcess:configure error:error];
    }

    v15 = v13;
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-configure");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v18 = *error;
        }

        else
        {
          v18 = @"None";
        }

        *buf = 136316418;
        v29 = v16;
        v30 = 2080;
        v31 = "[AVCVideoStream configure:error:]";
        v32 = 1024;
        v33 = 527;
        v34 = 2048;
        selfCopy = self;
        v36 = 1024;
        *v37 = v15;
        *&v37[4] = 2112;
        *&v37[6] = v18;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-configure (%p) didSucceed=%d, error=%@", buf, 0x36u);
      }
    }
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCVideoStream.m", 515], @"Invalid Parameter", @"Called with an invalid parameter");
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCVideoStream configure:error:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCVideoStream configure:error:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v21 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            if (*error)
            {
              v22 = [objc_msgSend(*error "description")];
            }

            else
            {
              v22 = "<nil>";
            }

            *buf = 136316418;
            v29 = v19;
            v30 = 2080;
            v31 = "[AVCVideoStream configure:error:]";
            v32 = 1024;
            v33 = 518;
            v34 = 2112;
            selfCopy = v14;
            v36 = 2048;
            *v37 = self;
            *&v37[8] = 2080;
            *&v37[10] = v22;
            _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d %@(%p) Invalid video configuration: error[%s]", buf, 0x3Au);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          if (*error)
          {
            v23 = [objc_msgSend(*error "description")];
          }

          else
          {
            v23 = "<nil>";
          }

          *buf = 136316418;
          v29 = v19;
          v30 = 2080;
          v31 = "[AVCVideoStream configure:error:]";
          v32 = 1024;
          v33 = 518;
          v34 = 2112;
          selfCopy = v14;
          v36 = 2048;
          *v37 = self;
          *&v37[8] = 2080;
          *&v37[10] = v23;
          _os_log_fault_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_FAULT, "AVCVideoStream [%s] %s:%d %@(%p) Invalid video configuration: error[%s]", buf, 0x3Au);
        }
      }
    }

    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)start
{
  v30 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCVideoStream start]");
  if (![(AVCVideoStream *)self configuration])
  {
    v6 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32016 detailCode:0 description:@"AVCVideoStream hasn't been configured"];
    opaqueStream = self->_opaqueStream;
    selfCopy3 = self;
    v9 = 0;
LABEL_22:
    [(AVCVideoStream *)selfCopy3 vcMediaStream:opaqueStream didStartStream:v9 error:v6];
    goto LABEL_29;
  }

  isInProcess = self->_isInProcess;
  v4 = objc_opt_class();
  if (isInProcess)
  {
    if (v4 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_21;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *v27 = 136315650;
      *&v27[4] = v11;
      *&v27[12] = 2080;
      *&v27[14] = "[AVCVideoStream start]";
      *&v27[22] = 1024;
      LODWORD(v28) = 540;
      v13 = "AVCVideoStream [%s] %s:%d AVCVideoStream start (not using XPC)";
      v14 = v12;
      v15 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_21;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *v27 = 136316162;
      *&v27[4] = v21;
      *&v27[12] = 2080;
      *&v27[14] = "[AVCVideoStream start]";
      *&v27[22] = 1024;
      LODWORD(v28) = 540;
      WORD2(v28) = 2112;
      *(&v28 + 6) = v5;
      HIWORD(v28) = 2048;
      selfCopy4 = self;
      v13 = "AVCVideoStream [%s] %s:%d %@(%p) AVCVideoStream start (not using XPC)";
      v14 = v22;
      v15 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v27, v15);
LABEL_21:
    v6 = [(VCMediaStream *)self->_opaqueStream start:*v27];
    opaqueStream = self->_opaqueStream;
    v9 = v6 == 0;
    selfCopy3 = self;
    goto LABEL_22;
  }

  if (v4 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_28;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *v27 = 136315650;
    *&v27[4] = v16;
    *&v27[12] = 2080;
    *&v27[14] = "[AVCVideoStream start]";
    *&v27[22] = 1024;
    LODWORD(v28) = 537;
    v18 = "AVCVideoStream [%s] %s:%d AVCVideoStream API_VCMEDIASTREAM_STARTCONFERENCE (client side)";
    v19 = v17;
    v20 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_28;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *v27 = 136316162;
    *&v27[4] = v23;
    *&v27[12] = 2080;
    *&v27[14] = "[AVCVideoStream start]";
    *&v27[22] = 1024;
    LODWORD(v28) = 537;
    WORD2(v28) = 2112;
    *(&v28 + 6) = v10;
    HIWORD(v28) = 2048;
    selfCopy4 = self;
    v18 = "AVCVideoStream [%s] %s:%d %@(%p) AVCVideoStream API_VCMEDIASTREAM_STARTCONFERENCE (client side)";
    v19 = v24;
    v20 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, v27, v20);
LABEL_28:
  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStartConference", *v27, *&v27[8], v28, selfCopy4];
LABEL_29:
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 136315906;
      *&v27[4] = v25;
      *&v27[12] = 2080;
      *&v27[14] = "[AVCVideoStream start]";
      *&v27[22] = 1024;
      LODWORD(v28) = 549;
      WORD2(v28) = 2048;
      *(&v28 + 6) = self;
      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-start (%p)", v27, 0x26u);
    }
  }
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCVideoStream stop]");
  if (self->_isInProcess)
  {
    [(VCMediaStream *)self->_opaqueStream stop];
    [(AVCVideoStream *)self vcMediaStreamDidStop:self->_opaqueStream];
  }

  else
  {
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStopConference"];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[AVCVideoStream stop]";
      v9 = 1024;
      v10 = 561;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-stop (%p)", &v5, 0x26u);
    }
  }
}

- (void)pause
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCVideoStream pause]");
  if (self->_isInProcess)
  {
    v3 = [(VCMediaStream *)self->_opaqueStream setPause:1];
    [(AVCVideoStream *)self vcMediaStream:self->_opaqueStream didPauseStream:v3 == 0 error:v3];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579E7D8, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetPause" arguments:v4];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-pause");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCVideoStream pause]";
      v11 = 1024;
      v12 = 578;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-pause (%p)", buf, 0x26u);
    }
  }
}

- (void)resume
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCVideoStream resume]");
  if (self->_isInProcess)
  {
    v3 = [(VCMediaStream *)self->_opaqueStream setPause:0];
    [(AVCVideoStream *)self vcMediaStream:self->_opaqueStream didResumeStream:v3 == 0 error:v3];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579E800, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetPause" arguments:v4];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-resume");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCVideoStream resume]";
      v11 = 1024;
      v12 = 595;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-resume (%p)", buf, 0x26u);
    }
  }
}

- (void)updateVideoConfiguration:(id)configuration
{
  v34 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCVideoStream updateVideoConfiguration:]");
  if ([configuration isValidForDirection:{-[AVCVideoStream direction](self, "direction")}])
  {
    dictionary = [configuration dictionary];
    if (self->_isInProcess)
    {
      opaqueStream = self->_opaqueStream;

      [(VCVideoStream *)opaqueStream updateVideoConfig:dictionary];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{dictionary, @"vcMediaStreamDictionary", 0}];
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamUpdateVideoConfig" arguments:?];
    }
  }

  else
  {
    v21 = 0;
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v21, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCVideoStream.m", 605], @"Invalid Parameter", @"Called with an invalid parameter");
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v9 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          if (v21)
          {
            v10 = [objc_msgSend(v21 "description")];
          }

          else
          {
            v10 = "<nil>";
          }

          *buf = 136316418;
          v23 = v7;
          v24 = 2080;
          v25 = "[AVCVideoStream updateVideoConfiguration:]";
          v26 = 1024;
          v27 = 608;
          v28 = 2048;
          selfCopy2 = self;
          v30 = 2080;
          v31 = "[AVCVideoStream updateVideoConfiguration:]";
          v32 = 2080;
          v33 = v10;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "AVCVideoStream [%s] %s:%d AVCVideoStream[%p] %s error[%s]", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        if (v21)
        {
          v17 = [objc_msgSend(v21 "description")];
        }

        else
        {
          v17 = "<nil>";
        }

        *buf = 136316418;
        v23 = v7;
        v24 = 2080;
        v25 = "[AVCVideoStream updateVideoConfiguration:]";
        v26 = 1024;
        v27 = 608;
        v28 = 2048;
        selfCopy2 = self;
        v30 = 2080;
        v31 = "[AVCVideoStream updateVideoConfiguration:]";
        v32 = 2080;
        v33 = v17;
        _os_log_fault_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_FAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream[%p] %s error[%s]", buf, 0x3Au);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      v11 = configuration ? [objc_msgSend(configuration "description")] : "<nil>";
      asprintf(&__str, "videoConfig=%s", v11);
      if (__str)
      {
        __lasts = 0;
        v12 = strtok_r(__str, "\n", &__lasts);
        v13 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *v13;
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v23 = v14;
              v24 = 2080;
              v25 = "[AVCVideoStream updateVideoConfiguration:]";
              v26 = 1024;
              v27 = 609;
              v28 = 2080;
              selfCopy2 = "";
              v30 = 2080;
              v31 = v12;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v12 = strtok_r(0, "\n", &__lasts);
        }

        while (v12);
        free(__str);
      }
    }

    [(AVCVideoStream *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(AVCVideoStream *)self delegate];
      [(AVCVideoStreamDelegate *)delegate stream:self didUpdateVideoConfiguration:0 error:v21];
    }
  }
}

- (void)requestLastDecodedFrame
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setDirection:(int64_t)direction
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCVideoStream setDirection:]";
      v15 = 1024;
      v16 = 644;
      v17 = 2048;
      directionCopy = direction;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d direction=%ld", buf, 0x26u);
    }
  }

  if ([(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] direction]!= direction)
  {
    [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] setDirection:direction];
    if (self->_isInProcess)
    {
      [(VCMediaStream *)self->_opaqueStream setStreamDirection:[AVCMediaStreamConfig streamDirectionWithClientDirection:direction]];
    }

    else
    {
      v9 = @"vcMediaStreamDirection";
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:direction];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetStreamDirection" arguments:v8];
    }
  }
}

- (int64_t)direction
{
  configuration = [(AVCVideoStream *)self configuration];

  return [(AVCMediaStreamConfig *)configuration direction];
}

- (void)setRtcpEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCVideoStream setRtcpEnabled:]";
      v15 = 1024;
      v16 = 669;
      v17 = 1024;
      v18 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d rtcpEnabled=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] isRTCPEnabled]!= enabledCopy)
  {
    [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] setRtcpEnabled:enabledCopy];
    if (self->_isInProcess)
    {
      [(VCMediaStream *)self->_opaqueStream setRtcpEnabled:enabledCopy];
    }

    else
    {
      v9 = @"vcMediaStreamRTCPEnabled";
      v10 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTCPEnabled" arguments:v8];
    }
  }
}

- (BOOL)isRTCPEnabled
{
  configuration = [(AVCVideoStream *)self configuration];

  return [(AVCMediaStreamConfig *)configuration isRTCPEnabled];
}

- (void)setRtpTimeOutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCVideoStream setRtpTimeOutEnabled:]";
      v15 = 1024;
      v16 = 695;
      v17 = 1024;
      v18 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d rtpTimeOutEnabled=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] isRTPTimeOutEnabled]!= enabledCopy)
  {
    [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] setRtpTimeOutEnabled:enabledCopy];
    if (self->_isInProcess)
    {
      [(VCMediaStream *)self->_opaqueStream setRtpTimeOutEnabled:enabledCopy];
    }

    else
    {
      v9 = @"vcMediaStreamRTPTimeoutEnabled";
      v10 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTPTimeoutEnabled" arguments:v8];
    }
  }
}

- (BOOL)isRTPTimeOutEnabled
{
  configuration = [(AVCVideoStream *)self configuration];

  return [(AVCMediaStreamConfig *)configuration isRTPTimeOutEnabled];
}

- (void)setRtcpTimeOutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCVideoStream setRtcpTimeOutEnabled:]";
      v15 = 1024;
      v16 = 721;
      v17 = 1024;
      v18 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d rtcpTimeOutEnabled=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] isRTCPTimeOutEnabled]!= enabledCopy)
  {
    [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] setRtcpTimeOutEnabled:enabledCopy];
    if (self->_isInProcess)
    {
      [(VCMediaStream *)self->_opaqueStream setRtcpTimeOutEnabled:enabledCopy];
    }

    else
    {
      v9 = @"vcMediaStreamRTCPTimeoutEnabled";
      v10 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTCPTimeoutEnabled" arguments:v8];
    }
  }
}

- (BOOL)isRTCPTimeOutEnabled
{
  configuration = [(AVCVideoStream *)self configuration];

  return [(AVCMediaStreamConfig *)configuration isRTCPTimeOutEnabled];
}

- (void)setRtpTimeOutIntervalSec:(double)sec
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = v5;
      v14 = 2080;
      v15 = "[AVCVideoStream setRtpTimeOutIntervalSec:]";
      v16 = 1024;
      v17 = 747;
      v18 = 2048;
      secCopy = sec;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d rtpTimeOutIntervalSec=%f", buf, 0x26u);
    }
  }

  [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] rtpTimeOutInterval];
  if (v7 != sec)
  {
    [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] setRtpTimeOutInterval:sec];
    if (self->_isInProcess)
    {
      [(VCMediaStream *)self->_opaqueStream setRtpTimeOutInterval:sec];
    }

    else
    {
      v10 = @"vcMediaStreamRTPTimeoutInterval";
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:sec];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"vcMediaStreamDictionary", 0}];
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTPTimeoutInterval" arguments:v9];
    }
  }
}

- (double)rtpTimeOutIntervalSec
{
  configuration = [(AVCVideoStream *)self configuration];

  [(AVCMediaStreamConfig *)configuration rtpTimeOutInterval];
  return result;
}

- (void)setRtcpTimeOutIntervalSec:(double)sec
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = v5;
      v14 = 2080;
      v15 = "[AVCVideoStream setRtcpTimeOutIntervalSec:]";
      v16 = 1024;
      v17 = 773;
      v18 = 2048;
      secCopy = sec;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d rtcpTimeOutIntervalSec=%f", buf, 0x26u);
    }
  }

  [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] rtcpTimeOutInterval];
  if (v7 != sec)
  {
    [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] setRtcpTimeOutInterval:sec];
    if (self->_isInProcess)
    {
      [(VCMediaStream *)self->_opaqueStream setRtcpTimeOutInterval:sec];
    }

    else
    {
      v10 = @"vcMediaStreamRTCPTimeoutInterval";
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:sec];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"vcMediaStreamDictionary", 0}];
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTCPTimeoutInterval" arguments:v9];
    }
  }
}

- (double)rtcpTimeOutIntervalSec
{
  configuration = [(AVCVideoStream *)self configuration];

  [(AVCMediaStreamConfig *)configuration rtcpTimeOutInterval];
  return result;
}

- (void)setRtcpSendIntervalSec:(double)sec
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = v5;
      v14 = 2080;
      v15 = "[AVCVideoStream setRtcpSendIntervalSec:]";
      v16 = 1024;
      v17 = 799;
      v18 = 2048;
      secCopy = sec;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d rtcpSendIntervalSec=%f", buf, 0x26u);
    }
  }

  [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] rtcpSendInterval];
  if (v7 != sec)
  {
    [(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] setRtcpSendInterval:sec];
    if (self->_isInProcess)
    {
      [(VCMediaStream *)self->_opaqueStream setRtcpSendInterval:sec];
    }

    else
    {
      v10 = @"vcMediaStreamRTCPSendInterval";
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:sec];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"vcMediaStreamDictionary", 0}];
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetRTCPSendInterval" arguments:v9];
    }
  }
}

- (double)rtcpSendIntervalSec
{
  configuration = [(AVCVideoStream *)self configuration];

  [(AVCMediaStreamConfig *)configuration rtcpSendInterval];
  return result;
}

- (void)registerBlocksForDelegateNotifications
{
  v16[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke;
  v16[3] = &unk_1E85F3AD8;
  v16[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidServerDie" block:v16 queue:self->_callbackQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_203;
  v15[3] = &unk_1E85F3AD8;
  v15[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidStartConnection" block:v15 queue:self->_callbackQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_223;
  v14[3] = &unk_1E85F3AD8;
  v14[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidStopConnection" block:v14 queue:self->_callbackQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_225;
  v13[3] = &unk_1E85F3AD8;
  v13[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidPause" block:v13 queue:self->_callbackQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_232;
  v12[3] = &unk_1E85F3AD8;
  v12[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidResume" block:v12 queue:self->_callbackQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_239;
  v11[3] = &unk_1E85F3AD8;
  v11[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamRTPPacketTimeout" block:v11 queue:self->_callbackQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_243;
  v10[3] = &unk_1E85F3AD8;
  v10[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamRTCPPacketTimeout" block:v10 queue:self->_callbackQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_247;
  v9[3] = &unk_1E85F3AD8;
  v9[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidRecoverFromRTCPTimeout" block:v9 queue:self->_callbackQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_251;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamRTCPPacketsReceived" block:v8 queue:self->_callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_256;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidGetLastDecodedFrame" block:v7 queue:self->_callbackQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_264;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDownlinkQualityDidChange" block:v6 queue:self->_callbackQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_271;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamUplinkQualityDidChange" block:v5 queue:self->_callbackQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_278;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidUpdateVideoConfiguration" block:v4 queue:self->_callbackQueue];
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) strong];
  if (v3)
  {
    v4 = v3;
    v5 = [a2 objectForKeyedSubscript:@"SERVERDIED"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v5)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_cold_1();
        }
      }
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_cold_2();
      }
    }

    [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-didServerDie");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315906;
          v12 = v9;
          v13 = 2080;
          v14 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v15 = 1024;
          v16 = 846;
          v17 = 2048;
          v18 = v4;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-didServerDie (%p)", &v11, 0x26u);
        }
      }

      [objc_msgSend(v4 "delegate")];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v7;
      v13 = 2080;
      v14 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
      v15 = 1024;
      v16 = 850;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: Server died, but AVCVideoStream has already deallocated, NO-OP", &v11, 0x1Cu);
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_203(uint64_t a1, void *a2, void *a3)
{
  v38[2] = *MEMORY[0x1E69E9840];
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

      v29 = 136316162;
      v30 = v6;
      v31 = 2080;
      v32 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
      v33 = 1024;
      v34 = 857;
      v35 = 2048;
      v36 = a3;
      v37 = 2080;
      v38[0] = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d didStartConnectionBlock: error = %p, result = %s", &v29, 0x30u);
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
      if (ErrorLogLevelForModule >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v11 BOOLValue];
          v29 = 136315906;
          v30 = v14;
          v31 = 2080;
          v32 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v33 = 1024;
          v34 = 868;
          v35 = 1024;
          LODWORD(v36) = v16;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: didStartConnectionBlock strongSelf started(%d)", &v29, 0x22u);
        }
      }

      v17 = [a2 objectForKeyedSubscript:@"vcMediaStreamError"];
      if (v17)
      {
        v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(v17 code:"objectForKeyedSubscript:" userInfo:{@"ERROR_DOMAIN", objc_msgSend(objc_msgSend(v17, "objectForKeyedSubscript:", @"ERROR_CODE", "intValue"), objc_msgSend(v17, "objectForKeyedSubscript:", @"ERROR_USERINFO"}];
      }

      [v10 delegate];
      if (objc_opt_respondsToSelector())
      {
        MEMORY[0x1E128B590](&dword_1DB56E000, "Calling -stream:didStart:error:");
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-didStart");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v11 intValue];
            v29 = 136316418;
            v30 = v18;
            v31 = 2080;
            v32 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
            v33 = 1024;
            v34 = 881;
            v35 = 2048;
            v36 = v10;
            v37 = 1024;
            LODWORD(v38[0]) = v20;
            WORD2(v38[0]) = 2112;
            *(v38 + 6) = v17;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-didStart (%p) didSucceed=%d, error=%@", &v29, 0x36u);
          }
        }

        [objc_msgSend(v10 "delegate")];
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *v13;
      if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = [v11 BOOLValue];
      v29 = 136316162;
      v30 = v21;
      v31 = 2080;
      v32 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
      v33 = 1024;
      v34 = 886;
      v35 = 2048;
      v36 = v10;
      v37 = 1024;
      LODWORD(v38[0]) = v23;
      v24 = "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p of didStart started[%d]";
      v25 = v22;
      v26 = 44;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v29 = 136315650;
      v30 = v27;
      v31 = 2080;
      v32 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
      v33 = 1024;
      v34 = 862;
      v24 = "AVCVideoStream [%s] %s:%d AVCVideoStream: didStartConnectionBlock: strongSelf == nil";
      v25 = v28;
      v26 = 28;
    }

    _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, &v29, v26);
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_223(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      [objc_msgSend(v4 "delegate")];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v7 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v8;
          v14 = 2080;
          v15 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v16 = 1024;
          v17 = 901;
          v18 = 2048;
          v19 = v5;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p of didStop", &v12, 0x26u);
        }
      }

      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-didStop");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v10;
          v14 = 2080;
          v15 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v16 = 1024;
          v17 = 902;
          v18 = 2048;
          v19 = v5;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-didStop (%p)", &v12, 0x26u);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_225(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamPaused"];
      v8 = [a2 objectForKeyedSubscript:@"vcMediaStreamError"];
      if (v8)
      {
        v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(v8 code:"objectForKeyedSubscript:" userInfo:{@"ERROR_DOMAIN", objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"ERROR_CODE", "intValue"), objc_msgSend(v8, "objectForKeyedSubscript:", @"ERROR_USERINFO"}];
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-didPause");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136316418;
            v15 = v9;
            v16 = 2080;
            v17 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
            v18 = 1024;
            v19 = 927;
            v20 = 2048;
            v21 = v6;
            v22 = 1024;
            v23 = [v7 intValue];
            v24 = 2112;
            v25 = v8;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-didPause (%p) didSucceed=%d, error=%@", &v14, 0x36u);
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
          v13 = [v7 BOOLValue];
          v14 = 136316162;
          v15 = v11;
          v16 = 2080;
          v17 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v18 = 1024;
          v19 = 932;
          v20 = 2048;
          v21 = v6;
          v22 = 1024;
          v23 = v13;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p of didPause [%d]", &v14, 0x2Cu);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_232(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamResumed"];
      v8 = [a2 objectForKeyedSubscript:@"vcMediaStreamError"];
      if (v8)
      {
        v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(v8 code:"objectForKeyedSubscript:" userInfo:{@"ERROR_DOMAIN", objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"ERROR_CODE", "intValue"), objc_msgSend(v8, "objectForKeyedSubscript:", @"ERROR_USERINFO"}];
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-didResume");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136316418;
            v15 = v9;
            v16 = 2080;
            v17 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
            v18 = 1024;
            v19 = 957;
            v20 = 2048;
            v21 = v6;
            v22 = 1024;
            v23 = [v7 intValue];
            v24 = 2112;
            v25 = v8;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-didResume (%p) didSucceed=%d, error=%@", &v14, 0x36u);
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
          v13 = [v7 BOOLValue];
          v14 = 136316162;
          v15 = v11;
          v16 = 2080;
          v17 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v18 = 1024;
          v19 = 962;
          v20 = 2048;
          v21 = v6;
          v22 = 1024;
          v23 = v13;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p of didResume [%d]", &v14, 0x2Cu);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_239(uint64_t a1, void *a2, uint64_t a3)
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
          v11 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v12 = 1024;
          v13 = 978;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p RTP packet timeout", &v8, 0x26u);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_243(uint64_t a1, void *a2, uint64_t a3)
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
          v11 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v12 = 1024;
          v13 = 994;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p RTCP packet timeout", &v8, 0x26u);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_247(uint64_t a1, void *a2, uint64_t a3)
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
          v11 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v12 = 1024;
          v13 = 1010;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client=%p RTCP packet timeout", &v8, 0x26u);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_251(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      [v5 vcMediaStream:0 didReceiveRTCPPackets:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamRTCPPackets"}];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315906;
          v10 = v7;
          v11 = 2080;
          v12 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v13 = 1024;
          v14 = 1025;
          v15 = 2048;
          v16 = v6;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p received RTCP packets", &v9, 0x26u);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_256(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(v5 "delegate")];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = objc_opt_class();
          v9 = 136316162;
          v10 = v6;
          v11 = 2080;
          v12 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v13 = 1024;
          v14 = 1035;
          v15 = 2080;
          v16 = [NSStringFromClass(v8) UTF8String];
          v17 = 2048;
          v18 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d %s: notified client %p didGetLastDecodedFrame", &v9, 0x30u);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_264(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamDownlinkQualityInfo"];
      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(v6 "delegate")];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316162;
          v11 = v8;
          v12 = 2080;
          v13 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v14 = 1024;
          v15 = 1055;
          v16 = 2048;
          v17 = v6;
          v18 = 2080;
          v19 = [objc_msgSend(v7 "description")];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p of downlinkQualityDidChange [%s]", &v10, 0x30u);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_271(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamUplinkQualityInfo"];
      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(v6 "delegate")];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316162;
          v11 = v8;
          v12 = 2080;
          v13 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v14 = 1024;
          v15 = 1074;
          v16 = 2048;
          v17 = v6;
          v18 = 2080;
          v19 = [objc_msgSend(v7 "description")];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p of uplinkQualityDidChange [%s]", &v10, 0x30u);
        }
      }
    }
  }
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_278(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamDidUpdateVideoConfiguration"];
      v8 = [a2 objectForKeyedSubscript:@"vcMediaStreamError"];
      v9 = [a2 objectForKeyedSubscript:@"vcMediaStreamUpdatedVideoConfiguration"];
      if (v8)
      {
        v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(v8 code:"objectForKeyedSubscript:" userInfo:{@"ERROR_DOMAIN", objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"ERROR_CODE", "intValue"), objc_msgSend(v8, "objectForKeyedSubscript:", @"ERROR_USERINFO"}];
      }

      if (v9)
      {
        [objc_msgSend(objc_msgSend(v6 "configuration")];
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(v6 "delegate")];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v10;
          v14 = 2080;
          v15 = "[AVCVideoStream registerBlocksForDelegateNotifications]_block_invoke";
          v16 = 1024;
          v17 = 1108;
          v18 = 2048;
          v19 = v6;
          v20 = 1024;
          v21 = [v7 BOOLValue];
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d AVCVideoStream: notified client %p of didUpdateVideoConfiguration [%d]", &v12, 0x2Cu);
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
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamRTPPacketTimeout"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamRTCPPacketTimeout"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidRecoverFromRTCPTimeout"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamRTCPPacketsReceived"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidGetLastDecodedFrame"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDownlinkQualityDidChange"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamUplinkQualityDidChange"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcMediaStreamDidUpdateVideoConfiguration"];
}

+ (id)extractClientDownlinkQualityInfoDictionary:(id)dictionary
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"avcKeyVideoStreamDownlinkOperatingBitrate";
  v6[0] = [dictionary objectForKeyedSubscript:0x1F5718568];
  v5[1] = @"avcKeyVideoStreamDownlinkOptimalBitrate";
  v6[1] = [dictionary objectForKeyedSubscript:0x1F5718548];
  v5[2] = @"avcKeyVideoStreamDownlinkIsOperatingAtMaxBitrate";
  v6[2] = [dictionary objectForKeyedSubscript:0x1F5718588];
  v5[3] = @"avcKeyVideoStreamDownlinkIsOperatingAtMinBitrate";
  v6[3] = [dictionary objectForKeyedSubscript:0x1F57185A8];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
}

+ (id)extractClientUplinkQualityInfoDictionary:(id)dictionary
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"avcKeyVideoStreamUplinkOperatingBitrate";
  v5[0] = [dictionary objectForKeyedSubscript:0x1F57185C8];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
}

- (void)vcMediaStream:(id)stream didStartStream:(BOOL)startStream error:(id)error
{
  startStreamCopy = startStream;
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316418;
      v12 = v9;
      v13 = 2080;
      v14 = "[AVCVideoStream vcMediaStream:didStartStream:error:]";
      v15 = 1024;
      v16 = 1145;
      v17 = 2112;
      streamCopy = stream;
      v19 = 1024;
      v20 = startStreamCopy;
      v21 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d stream=%@, didStartStream=%d, error=%@", &v11, 0x36u);
    }
  }

  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    MEMORY[0x1E128B590](&dword_1DB56E000, "Calling -stream:didStart:error:");
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] stream:self didStart:startStreamCopy error:error];
  }
}

- (void)vcMediaStreamDidStop:(id)stop
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCVideoStream vcMediaStreamDidStop:]";
      v11 = 1024;
      v12 = 1153;
      v13 = 2112;
      stopCopy = stop;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d stream=%@", &v7, 0x26u);
    }
  }

  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    MEMORY[0x1E128B590](&dword_1DB56E000, "Calling -streamDidStop:");
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] streamDidStop:self];
  }
}

- (void)vcMediaStream:(id)stream didPauseStream:(BOOL)pauseStream error:(id)error
{
  pauseStreamCopy = pauseStream;
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316418;
      v12 = v9;
      v13 = 2080;
      v14 = "[AVCVideoStream vcMediaStream:didPauseStream:error:]";
      v15 = 1024;
      v16 = 1161;
      v17 = 2112;
      streamCopy = stream;
      v19 = 1024;
      v20 = pauseStreamCopy;
      v21 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d stream=%@, didPauseStream=%d, error=%@", &v11, 0x36u);
    }
  }

  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] stream:self didPause:pauseStreamCopy error:error];
  }
}

- (void)vcMediaStream:(id)stream didResumeStream:(BOOL)resumeStream error:(id)error
{
  resumeStreamCopy = resumeStream;
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316418;
      v12 = v9;
      v13 = 2080;
      v14 = "[AVCVideoStream vcMediaStream:didResumeStream:error:]";
      v15 = 1024;
      v16 = 1168;
      v17 = 2112;
      streamCopy = stream;
      v19 = 1024;
      v20 = resumeStreamCopy;
      v21 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d stream=%@, didResumeStream=%d, error=%@", &v11, 0x36u);
    }
  }

  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] stream:self didResume:resumeStreamCopy error:error];
  }
}

- (void)vcMediaStreamDidRTPTimeOut:(id)out
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCVideoStream vcMediaStreamDidRTPTimeOut:]";
      v11 = 1024;
      v12 = 1175;
      v13 = 2112;
      outCopy = out;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d stream=%@", &v7, 0x26u);
    }
  }

  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] streamDidRTPTimeOut:self];
  }
}

- (void)vcMediaStreamDidRTCPTimeOut:(id)out
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCVideoStream vcMediaStreamDidRTCPTimeOut:]";
      v11 = 1024;
      v12 = 1182;
      v13 = 2112;
      outCopy = out;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d stream=%@", &v7, 0x26u);
    }
  }

  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] streamDidRTCPTimeOut:self];
  }
}

- (void)vcMediaStream:(id)stream didReceiveRTCPPackets:(id)packets
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [packets countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(packets);
        }

        v11 = +[AVCRTCPPacket newPacketWithRTCPPacket:packetLength:](AVCRTCPPacket, "newPacketWithRTCPPacket:packetLength:", [*(*(&v26 + 1) + 8 * v10) bytes], objc_msgSend(*(*(&v26 + 1) + 8 * v10), "length"));
        if (v11)
        {
          [v6 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [packets countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v8);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v16 = v12;
      v17 = 2080;
      v18 = "[AVCVideoStream vcMediaStream:didReceiveRTCPPackets:]";
      v19 = 1024;
      v20 = 1201;
      v21 = 2112;
      streamCopy = stream;
      v23 = 2112;
      packetsCopy = packets;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d conf=%@, rtcpPackets=%@", buf, 0x30u);
    }
  }

  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] stream:self didReceiveRTCPPackets:v6];
  }
}

- (void)vcMediaStream:(id)stream downlinkQualityDidChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "[AVCVideoStream vcMediaStream:downlinkQualityDidChange:]";
      v13 = 1024;
      v14 = 1210;
      v15 = 2112;
      streamCopy = stream;
      v17 = 2112;
      changeCopy = change;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d stream=%@, downlinkQualityInfo=%@", &v9, 0x30u);
    }
  }

  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] stream:self downlinkQualityDidChange:[AVCVideoStream extractClientDownlinkQualityInfoDictionary:change]];
  }
}

- (void)vcMediaStream:(id)stream uplinkQualityDidChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "[AVCVideoStream vcMediaStream:uplinkQualityDidChange:]";
      v13 = 1024;
      v14 = 1217;
      v15 = 2112;
      streamCopy = stream;
      v17 = 2112;
      changeCopy = change;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d stream=%@, uplinkQualityInfo=%@", &v9, 0x30u);
    }
  }

  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] stream:self uplinkQualityDidChange:[AVCVideoStream extractClientUplinkQualityInfoDictionary:change]];
  }
}

- (void)vcMediaStream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error dictionary:(id)dictionary
{
  configurationCopy = configuration;
  v31 = *MEMORY[0x1E69E9840];
  if (dictionary && configuration)
  {
    [(AVCVideoStreamConfig *)[(AVCMediaStreamConfig *)[(AVCVideoStream *)self configuration] video] setUpWithDictionary:dictionary];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    if (stream)
    {
      v11 = [objc_msgSend(stream "description")];
      if (error)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = "<nil>";
      if (error)
      {
LABEL_7:
        v12 = [objc_msgSend(error "description")];
        if (dictionary)
        {
LABEL_8:
          v13 = [objc_msgSend(dictionary "description")];
          goto LABEL_12;
        }

LABEL_11:
        v13 = "<nil>";
LABEL_12:
        asprintf(&__str, "stream=%s, didUpdateVideoConfiguration=%d, error=%s, configDict=%s", v11, configurationCopy, v12, v13);
        if (__str)
        {
          errorCopy = error;
          __lasts = 0;
          v14 = strtok_r(__str, "\n", &__lasts);
          v15 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v17 = *v15;
              if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v22 = v16;
                v23 = 2080;
                v24 = "[AVCVideoStream vcMediaStream:didUpdateVideoConfiguration:error:dictionary:]";
                v25 = 1024;
                v26 = 1227;
                v27 = 2080;
                v28 = "";
                v29 = 2080;
                v30 = v14;
                _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v14 = strtok_r(0, "\n", &__lasts);
          }

          while (v14);
          free(__str);
          error = errorCopy;
        }

        goto LABEL_19;
      }
    }

    v12 = "<nil>";
    if (dictionary)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_19:
  [(AVCVideoStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCVideoStreamDelegate *)[(AVCVideoStream *)self delegate] stream:self didUpdateVideoConfiguration:configurationCopy error:error];
  }
}

- (void)vcMediaStreamServerDidDie:(id)die
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCVideoStream vcMediaStreamServerDidDie:]";
      v11 = 1024;
      v12 = 1238;
      v13 = 2112;
      dieCopy = die;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVideoStream [%s] %s:%d stream=%@, serverDidDie", &v7, 0x26u);
    }
  }

  [(AVCVideoStream *)self stop];
}

- (BOOL)setUpVideoStreamInProcessWithClientArgs:(id)args xpcArguments:(id)arguments error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(VCVideoStream);
  self->_opaqueStream = v9;
  if (v9)
  {
    [(VCMediaStream *)v9 setDelegate:self];
    v10 = [args mutableCopy];
    [v10 setObject:+[AVCAuditToken currentProcessToken](AVCAuditToken forKeyedSubscript:{"currentProcessToken"), @"vcMediaStreamClientAuditToken"}];
    v11 = [(VCVideoStream *)self->_opaqueStream setLocalParticipantInfo:v10 networkSockets:arguments withError:error];
    v12 = v11 != 0;
    if (v11)
    {
      [(AVCVideoStream *)self setCapabilities:v11];
    }

    self->_streamToken = [(VCMediaStream *)self->_opaqueStream streamToken];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (v12 || *error)
  {
    goto LABEL_7;
  }

  v33 = *MEMORY[0x1E696A588];
  v34[0] = @"Failed to create VCVideoStream";
  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCVideoStream" code:-2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v34, &v33, 1)}];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_7;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v25 = 136315906;
    v26 = v15;
    v27 = 2080;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    v28 = @"Failed to create VCVideoStream";
    OUTLINED_FUNCTION_5_12();
LABEL_18:
    _os_log_error_impl(v16, v17, v18, v19, v20, v21);
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [(AVCVideoStream *)self performSelector:sel_logPrefix];
  }

  else
  {
    v14 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v25 = 136316418;
      v26 = v22;
      v27 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v28 = v14;
      v29 = 2048;
      selfCopy = self;
      v31 = v24;
      v32 = @"Failed to create VCVideoStream";
      v16 = &dword_1DB56E000;
      v19 = "AVCVideoStream [%s] %s:%d %@(%p) error=%@";
      v20 = &v25;
      v17 = v23;
      v18 = OS_LOG_TYPE_ERROR;
      v21 = 58;
      goto LABEL_18;
    }
  }

LABEL_7:

  return v12;
}

- (BOOL)configureOutOfProcess:(id)process error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(process, "dictionary")}];
  object = xpc_dictionary_create(0, 0, 0);
  if ([process remoteEndpoints])
  {
    [process encodeRemoteAVCEndpoints:&object];
    [v7 setObject:0 forKeyedSubscript:@"vcMediaStreamRemoteAVCEndpoints"];
  }

  if ([objc_msgSend(process "video")])
  {
    [objc_msgSend(process "video")];
    [v7 setObject:0 forKeyedSubscript:@"vcMediaStreamVideoBufferDescription"];
  }

  v15 = @"vcMediaStreamDictionary";
  v16[0] = v7;
  v8 = 1;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaStreamSetSessionConfig" arguments:v9 xpcArguments:object];
  xpc_release(object);
  if (v10)
  {
    v11 = [v10 objectForKeyedSubscript:@"ERROR"];
    if (v11)
    {
      v12 = v11;
      [(AVCVideoStream *)self setConfiguration:0];
      v8 = 0;
      if (error)
      {
        *error = v12;
      }
    }

    else
    {
      [(AVCVideoStream *)self setConfiguration:process];
      return 1;
    }
  }

  return v8;
}

- (BOOL)addRemoteEndpoint:(id)endpoint error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v7 = endpoint ? [objc_msgSend(endpoint "description")] : "<nil>";
    v8 = *error ? [objc_msgSend(*error "description")] : "<nil>";
    asprintf(&__str, "addRemoteEndpoint=%s, error=%s", v7, v8);
    if (__str)
    {
      errorCopy = error;
      selfCopy = self;
      __lasts = 0;
      strtok_r(__str, "\n", &__lasts);
      *&v9 = 136316162;
      v35 = v9;
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          VRTraceErrorLogLevelToCSTR();
          v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            OUTLINED_FUNCTION_22_6(v10, v11, v12, v13, v14, v15, v16, v17, v27, v29, errorCopy, selfCopy, v35);
            *(&v41 + 6) = "[AVCVideoStream addRemoteEndpoint:error:]";
            HIWORD(v41) = 1024;
            OUTLINED_FUNCTION_15_13(424, v28, v30, v32, v34, v36, v37, __lasts, __str, v40, v41, *(&v41 + 1), v42, v43, v44);
          }
        }
      }

      while (strtok_r(0, "\n", &__lasts));
      free(__str);
      self = selfCopy;
    }
  }

  if ([OUTLINED_FUNCTION_18_9() isRemoteEndpointValid:? error:?])
  {
    if (self->_isInProcess)
    {
      v18 = [OUTLINED_FUNCTION_18_9() manageRemoteEndpointInProcess:? actionType:? error:?];
    }

    else
    {
      v18 = [OUTLINED_FUNCTION_18_9() manageRemoteEndpointOutOfProcess:? actionType:? error:?];
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-addRemoteEndpoint");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_21_8();
      *(&v41 + 6) = "[AVCVideoStream addRemoteEndpoint:error:]";
      HIWORD(v41) = 1024;
      OUTLINED_FUNCTION_12_11();
      OUTLINED_FUNCTION_23_6(&dword_1DB56E000, v20, v21, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-addRemoteEndpoint (%p) didSucceed=%d, error=%@", v22, v23, v24, v25, v27, v29, errorCopy, selfCopy, v35, *(&v35 + 1), __lasts, __str, v40);
    }
  }

  return v19;
}

- (BOOL)removeRemoteEndpoint:(id)endpoint error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v7 = endpoint ? [objc_msgSend(endpoint "description")] : "<nil>";
    v8 = *error ? [objc_msgSend(*error "description")] : "<nil>";
    asprintf(&__str, "removeRemoteEndpoint=%s, error=%s", v7, v8);
    if (__str)
    {
      errorCopy = error;
      selfCopy = self;
      __lasts = 0;
      strtok_r(__str, "\n", &__lasts);
      *&v9 = 136316162;
      v35 = v9;
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          VRTraceErrorLogLevelToCSTR();
          v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            OUTLINED_FUNCTION_22_6(v10, v11, v12, v13, v14, v15, v16, v17, v27, v29, errorCopy, selfCopy, v35);
            *(&v41 + 6) = "[AVCVideoStream removeRemoteEndpoint:error:]";
            HIWORD(v41) = 1024;
            OUTLINED_FUNCTION_15_13(440, v28, v30, v32, v34, v36, v37, __lasts, __str, v40, v41, *(&v41 + 1), v42, v43, v44);
          }
        }
      }

      while (strtok_r(0, "\n", &__lasts));
      free(__str);
      self = selfCopy;
    }
  }

  if ([OUTLINED_FUNCTION_18_9() isRemoteEndpointValid:? error:?])
  {
    if (self->_isInProcess)
    {
      v18 = [OUTLINED_FUNCTION_18_9() manageRemoteEndpointInProcess:? actionType:? error:?];
    }

    else
    {
      v18 = [OUTLINED_FUNCTION_18_9() manageRemoteEndpointOutOfProcess:? actionType:? error:?];
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVideoStream-removeRemoteEndpoint");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_21_8();
      *(&v41 + 6) = "[AVCVideoStream removeRemoteEndpoint:error:]";
      HIWORD(v41) = 1024;
      OUTLINED_FUNCTION_12_11();
      OUTLINED_FUNCTION_23_6(&dword_1DB56E000, v20, v21, "AVCVideoStream [%s] %s:%d @:@ AVCVideoStream-removeRemoteEndpoint (%p) didSucceed=%d, error=%@", v22, v23, v24, v25, v27, v29, errorCopy, selfCopy, v35, *(&v35 + 1), __lasts, __str, v40);
    }
  }

  return v19;
}

- (void)initWithLocalAddress:(_BYTE *)a3 networkSockets:IDSDestination:connectionClientID:localEndpoint:callID:options:error:.cold.1(uint64_t a1, void *a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    }
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)initWithLocalAddress:networkSockets:IDSDestination:connectionClientID:localEndpoint:callID:options:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithLocalAddress:(void *)a1 networkSockets:IDSDestination:connectionClientID:localEndpoint:callID:options:error:.cold.3(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v12 = 131;
    OUTLINED_FUNCTION_9_0();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_20_9();
      v13 = a1;
      v2 = &dword_1DB56E000;
      v5 = "AVCVideoStream [%s] %s:%d %@(%p) Failed to create the clientArgs dictionary";
      v6 = &v10;
      v3 = v9;
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithLocalAddress:networkSockets:IDSDestination:connectionClientID:localEndpoint:callID:options:error:.cold.4()
{
  if (objc_opt_class())
  {
    if (objc_opt_respondsToSelector())
    {
      [0 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() < 2)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_20_9();
        OUTLINED_FUNCTION_9_0();
        v5 = 48;
        goto LABEL_12;
      }

      return;
    }

    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_4_0();
    v10 = 48;
LABEL_18:
    _os_log_fault_impl(v6, v7, OS_LOG_TYPE_FAULT, v8, v9, v10);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() < 2)
  {
    return;
  }

  VRTraceErrorLogLevelToCSTR();
  if (!VRTraceIsOSFaultDisabled())
  {
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4_0();
    v10 = 28;
    goto LABEL_18;
  }

  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v5 = 28;
LABEL_12:
    _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  }
}

- (void)validateInitializeConnectionResult:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 221;
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, "AVCVideoStream [%s] %s:%d Server died", v1, 0x1Cu);
}

- (void)validateInitializeConnectionResult:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)validateInitializeConnectionResult:.cold.3()
{
  OUTLINED_FUNCTION_18_2();
  [v0 objectForKeyedSubscript:@"ERROR"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x30u);
}

- (void)validateInitializeConnectionResult:.cold.4()
{
  OUTLINED_FUNCTION_18_2();
  [v0 objectForKeyedSubscript:@"ERROR"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

- (void)validateInitializeConnectionResult:(uint64_t)a1 .cold.5(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"ERROR"])
  {
    [objc_msgSend(objc_msgSend(a2 objectForKeyedSubscript:{@"ERROR", "description"), "UTF8String"}];
  }

  [objc_msgSend(a2 "description")];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
}

- (void)validateInitializeConnectionResult:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)validateInitializeConnectionResult:.cold.7()
{
  OUTLINED_FUNCTION_14_5();
  [objc_msgSend(v0 "description")];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)validateInitializeConnectionResult:.cold.8()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 218;
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, "AVCVideoStream [%s] %s:%d Error initializing... no results dict", v1, 0x1Cu);
}

- (void)validateInitializeConnectionResult:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)configureInProcess:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)manageRemoteEndpointInProcess:actionType:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)manageRemoteEndpointOutOfProcess:actionType:error:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [v0 description];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)manageRemoteEndpointOutOfProcess:actionType:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)isRemoteEndpointValid:error:.cold.1()
{
  OUTLINED_FUNCTION_18_2();
  [objc_msgSend(v1 "endpoint")];
  [v0 rtpSSRC];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

- (void)configure:error:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  if (*v0)
  {
    [objc_msgSend(*v0 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x26u);
}

- (void)configure:error:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  if (*v0)
  {
    [objc_msgSend(*v0 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __56__AVCVideoStream_registerBlocksForDelegateNotifications__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end