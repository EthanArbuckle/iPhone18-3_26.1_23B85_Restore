@interface AVCAudioStream
- (AVCAudioStream)initWithIDSDestination:(id)destination isOriginator:(BOOL)originator callID:(id)d error:(id *)error;
- (AVCAudioStream)initWithIDSDestination:(id)destination isOriginator:(BOOL)originator error:(id *)error;
- (AVCAudioStream)initWithIDSDestination:(id)destination options:(id)options error:(id *)error;
- (AVCAudioStream)initWithLocalAddress:(id)address callID:(id)d error:(id *)error;
- (AVCAudioStream)initWithLocalAddress:(id)address error:(id *)error;
- (AVCAudioStream)initWithLocalAddress:(id)address isOriginator:(BOOL)originator callID:(id)d error:(id *)error;
- (AVCAudioStream)initWithLocalAddress:(id)address isOriginator:(BOOL)originator error:(id *)error;
- (AVCAudioStream)initWithLocalAddress:(id)address networkSockets:(id)sockets IDSDestination:(id)destination rtpConnectionClientID:(id)d rtcpConnectionClientID:(id)iD localEndpoint:(id)endpoint callID:(id)callID options:(id)self0 error:(id *)self1;
- (AVCAudioStream)initWithLocalEndpoint:(id)endpoint options:(id)options error:(id *)error;
- (AVCAudioStream)initWithNetworkSockets:(id)sockets isOriginator:(BOOL)originator callID:(id)d error:(id *)error;
- (AVCAudioStream)initWithNetworkSockets:(id)sockets isOriginator:(BOOL)originator error:(id *)error;
- (AVCAudioStream)initWithNetworkSockets:(id)sockets options:(id)options error:(id *)error;
- (AVCAudioStream)initWithRTPNWConnectionClientID:(id)d rtcpNWConnectionClientID:(id)iD options:(id)options error:(id *)error;
- (BOOL)addRemoteEndpoint:(id)endpoint error:(id *)error;
- (BOOL)configure:(id)configure error:(id *)error;
- (BOOL)configureInProcess:(id)process error:(id *)error;
- (BOOL)configureOutOfProcess:(id)process error:(id *)error;
- (BOOL)isInputFrequencyMeteringEnabled;
- (BOOL)isOutputFrequencyMeteringEnabled;
- (BOOL)isRTCPEnabled;
- (BOOL)isRTCPTimeOutEnabled;
- (BOOL)isRTPTimeOutEnabled;
- (BOOL)isRemoteEndpointValid:(id)valid error:(id *)error;
- (BOOL)manageRemoteEndpointInProcess:(id)process actionType:(int64_t)type error:(id *)error;
- (BOOL)manageRemoteEndpointOutOfProcess:(id)process actionType:(int64_t)type error:(id *)error;
- (BOOL)removeRemoteEndpoint:(id)endpoint error:(id *)error;
- (BOOL)setUpAudioStreamInProcessWithClientArgs:(id)args xpcArguments:(id)arguments error:(id *)error;
- (BOOL)setUpAudioStreamOutOfProcessWithClientArgs:(id)args xpcArguments:(id)arguments error:(id *)error;
- (BOOL)shouldRunInProcessWithOptions:(id)options;
- (double)rtcpSendIntervalSec;
- (double)rtcpTimeOutIntervalSec;
- (double)rtpTimeOutIntervalSec;
- (float)volume;
- (id)validateInitializeConnectionResult:(id)result;
- (int64_t)direction;
- (unsigned)jitterBufferMode;
- (void)dealloc;
- (void)deregisterBlocksForDelegateNotifications;
- (void)didInterruptionBeginHandler;
- (void)didInterruptionEndHandler;
- (void)pause;
- (void)processDTMFEventWithDigit:(id)digit;
- (void)refreshLoggingParameters;
- (void)registerBlocksForDelegateNotifications;
- (void)resume;
- (void)sendDTMFDigitString:(id)string withVolume:(unsigned __int8)volume duration:(unsigned __int16)duration interval:(unsigned __int16)interval;
- (void)setDirection:(int64_t)direction;
- (void)setInputFrequencyMeteringEnabled:(BOOL)enabled;
- (void)setJitterBufferMode:(unsigned int)mode;
- (void)setOutputFrequencyMeteringEnabled:(BOOL)enabled;
- (void)setRtcpEnabled:(BOOL)enabled;
- (void)setRtcpSendIntervalSec:(double)sec;
- (void)setRtcpTimeOutEnabled:(BOOL)enabled;
- (void)setRtcpTimeOutIntervalSec:(double)sec;
- (void)setRtpTimeOutEnabled:(BOOL)enabled;
- (void)setRtpTimeOutIntervalSec:(double)sec;
- (void)setVolume:(float)volume;
- (void)start;
- (void)startContinuousDTMFWithDigit:(char)digit volume:(unsigned __int8)volume;
- (void)startSynchronizeWithStream:(int64_t)stream;
- (void)stop;
- (void)stopContinuousDTMF;
- (void)terminateSession;
- (void)vcMediaStream:(id)stream didPauseStream:(BOOL)pauseStream error:(id)error;
- (void)vcMediaStream:(id)stream didReceiveDTMFEventWithDigit:(char)digit;
- (void)vcMediaStream:(id)stream didReceiveRTCPPackets:(id)packets;
- (void)vcMediaStream:(id)stream didResumeStream:(BOOL)resumeStream error:(id)error;
- (void)vcMediaStream:(id)stream didStartStream:(BOOL)startStream error:(id)error;
- (void)vcMediaStream:(id)stream updateInputFrequencyLevel:(id)level;
- (void)vcMediaStream:(id)stream updateOutputFrequencyLevel:(id)level;
- (void)vcMediaStreamDidRTCPTimeOut:(id)out;
- (void)vcMediaStreamDidRTPTimeOut:(id)out;
- (void)vcMediaStreamDidStop:(id)stop;
- (void)vcMediaStreamServerDidDie:(id)die;
@end

@implementation AVCAudioStream

- (AVCAudioStream)initWithLocalAddress:(id)address error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *error;
      *buf = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "[AVCAudioStream initWithLocalAddress:error:]";
      v15 = 1024;
      v16 = 78;
      v17 = 2112;
      addressCopy = address;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d localAddress=%@, error=%@", buf, 0x30u);
    }
  }

  return [(AVCAudioStream *)self initWithLocalAddress:address networkSockets:0 IDSDestination:0 rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:0 options:0 error:error];
}

- (AVCAudioStream)initWithLocalAddress:(id)address callID:(id)d error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      *buf = 136316418;
      v14 = v9;
      v15 = 2080;
      v16 = "[AVCAudioStream initWithLocalAddress:callID:error:]";
      v17 = 1024;
      v18 = 83;
      v19 = 2112;
      addressCopy = address;
      v21 = 2112;
      dCopy = d;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d localAddress=%@, callID=%@, error=%@", buf, 0x3Au);
    }
  }

  return [(AVCAudioStream *)self initWithLocalAddress:address networkSockets:0 IDSDestination:0 rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:d options:0 error:error];
}

- (AVCAudioStream)initWithLocalAddress:(id)address isOriginator:(BOOL)originator error:(id *)error
{
  originatorCopy = originator;
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      *buf = 136316418;
      v14 = v9;
      v15 = 2080;
      v16 = "[AVCAudioStream initWithLocalAddress:isOriginator:error:]";
      v17 = 1024;
      v18 = 88;
      v19 = 2112;
      addressCopy = address;
      v21 = 1024;
      v22 = originatorCopy;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d localAddress=%@, isOriginator=%d, error=%@", buf, 0x36u);
    }
  }

  return [(AVCAudioStream *)self initWithLocalAddress:address networkSockets:0 IDSDestination:0 rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:0 options:0 error:error];
}

- (AVCAudioStream)initWithLocalAddress:(id)address isOriginator:(BOOL)originator callID:(id)d error:(id *)error
{
  originatorCopy = originator;
  v29 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *error;
      *buf = 136316674;
      v16 = v11;
      v17 = 2080;
      v18 = "[AVCAudioStream initWithLocalAddress:isOriginator:callID:error:]";
      v19 = 1024;
      v20 = 93;
      v21 = 2112;
      addressCopy = address;
      v23 = 1024;
      v24 = originatorCopy;
      v25 = 2112;
      dCopy = d;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d localAddress=%@, isOriginator=%d, callID=%@, error=%@", buf, 0x40u);
    }
  }

  return [(AVCAudioStream *)self initWithLocalAddress:address networkSockets:0 IDSDestination:0 rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:d options:0 error:error];
}

- (AVCAudioStream)initWithNetworkSockets:(id)sockets isOriginator:(BOOL)originator error:(id *)error
{
  originatorCopy = originator;
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      *buf = 136316418;
      v14 = v9;
      v15 = 2080;
      v16 = "[AVCAudioStream initWithNetworkSockets:isOriginator:error:]";
      v17 = 1024;
      v18 = 98;
      v19 = 2112;
      socketsCopy = sockets;
      v21 = 1024;
      v22 = originatorCopy;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d socketsDictionary=%@, isOriginator=%d, error=%@", buf, 0x36u);
    }
  }

  return [(AVCAudioStream *)self initWithLocalAddress:0 networkSockets:sockets IDSDestination:0 rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:0 options:0 error:error];
}

- (AVCAudioStream)initWithNetworkSockets:(id)sockets isOriginator:(BOOL)originator callID:(id)d error:(id *)error
{
  originatorCopy = originator;
  v29 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *error;
      *buf = 136316674;
      v16 = v11;
      v17 = 2080;
      v18 = "[AVCAudioStream initWithNetworkSockets:isOriginator:callID:error:]";
      v19 = 1024;
      v20 = 103;
      v21 = 2112;
      socketsCopy = sockets;
      v23 = 1024;
      v24 = originatorCopy;
      v25 = 2112;
      dCopy = d;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d socketsDictionary=%@, isOriginator=%d, callID=%@, error=%@", buf, 0x40u);
    }
  }

  return [(AVCAudioStream *)self initWithLocalAddress:0 networkSockets:sockets IDSDestination:0 rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:d options:0 error:error];
}

- (AVCAudioStream)initWithNetworkSockets:(id)sockets options:(id)options error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  if ([options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"])
  {
    v9 = [options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
  }

  else
  {
    v9 = 0;
  }

  if ([options objectForKeyedSubscript:@"avcMediaStreamOptionIsOriginator"])
  {
    v10 = [objc_msgSend(options objectForKeyedSubscript:{@"avcMediaStreamOptionIsOriginator", "BOOLValue"}];
  }

  else
  {
    v10 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() < 6)
  {
    return [(AVCAudioStream *)self initWithLocalAddress:0 networkSockets:sockets IDSDestination:0 rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:v9 options:options error:error];
  }

  __str = 0;
  if (sockets)
  {
    v11 = [objc_msgSend(sockets "description")];
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_13:
    v12 = "<nil>";
    if (options)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v11 = "<nil>";
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = [objc_msgSend(v9 "description")];
  if (options)
  {
LABEL_11:
    v13 = [objc_msgSend(options "description")];
    goto LABEL_15;
  }

LABEL_14:
  v13 = "<nil>";
LABEL_15:
  if (*error)
  {
    v14 = [objc_msgSend(*error "description")];
  }

  else
  {
    v14 = "<nil>";
  }

  asprintf(&__str, "socketsDictionary=%s, isOriginator=%d, callID=%s, options=%s, error=%s", v11, v10, v12, v13, v14);
  if (__str)
  {
    v20 = v9;
    selfCopy = self;
    socketsCopy = sockets;
    __lasts = 0;
    v15 = strtok_r(__str, "\n", &__lasts);
    v16 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v26 = v17;
          v27 = 2080;
          v28 = "[AVCAudioStream initWithNetworkSockets:options:error:]";
          v29 = 1024;
          v30 = 117;
          v31 = 2080;
          v32 = "";
          v33 = 2080;
          v34 = v15;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v15 = strtok_r(0, "\n", &__lasts);
    }

    while (v15);
    free(__str);
    self = selfCopy;
    sockets = socketsCopy;
    v9 = v20;
  }

  return [(AVCAudioStream *)self initWithLocalAddress:0 networkSockets:sockets IDSDestination:0 rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:v9 options:options error:error];
}

- (AVCAudioStream)initWithIDSDestination:(id)destination isOriginator:(BOOL)originator error:(id *)error
{
  originatorCopy = originator;
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      *buf = 136316418;
      v14 = v9;
      v15 = 2080;
      v16 = "[AVCAudioStream initWithIDSDestination:isOriginator:error:]";
      v17 = 1024;
      v18 = 123;
      v19 = 2112;
      destinationCopy = destination;
      v21 = 1024;
      v22 = originatorCopy;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d destination=%@, isOriginator=%d, error=%@", buf, 0x36u);
    }
  }

  return [(AVCAudioStream *)self initWithLocalAddress:0 networkSockets:0 IDSDestination:destination rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:0 options:0 error:error];
}

- (AVCAudioStream)initWithIDSDestination:(id)destination isOriginator:(BOOL)originator callID:(id)d error:(id *)error
{
  originatorCopy = originator;
  v29 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *error;
      *buf = 136316674;
      v16 = v11;
      v17 = 2080;
      v18 = "[AVCAudioStream initWithIDSDestination:isOriginator:callID:error:]";
      v19 = 1024;
      v20 = 128;
      v21 = 2112;
      destinationCopy = destination;
      v23 = 1024;
      v24 = originatorCopy;
      v25 = 2112;
      dCopy = d;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d destination=%@, isOriginator=%d, callID=%@, error=%@", buf, 0x40u);
    }
  }

  return [(AVCAudioStream *)self initWithLocalAddress:0 networkSockets:0 IDSDestination:destination rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:d options:0 error:error];
}

- (AVCAudioStream)initWithIDSDestination:(id)destination options:(id)options error:(id *)error
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
  v18 = "[AVCAudioStream initWithIDSDestination:options:error:]";
  v19 = 1024;
  v20 = 133;
  v21 = 2112;
  destinationCopy = destination;
  v23 = 2080;
  v24 = v11;
  v25 = 2112;
  v26 = v12;
  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d destination=%@, options=%s, error=%@", buf, 0x3Au);
LABEL_9:
  if (options)
  {
    v13 = [options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
  }

  else
  {
    v13 = 0;
  }

  return [(AVCAudioStream *)self initWithLocalAddress:0 networkSockets:0 IDSDestination:destination rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:0 callID:v13 options:options error:error];
}

- (AVCAudioStream)initWithRTPNWConnectionClientID:(id)d rtcpNWConnectionClientID:(id)iD options:(id)options error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  if ([options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"])
  {
    v11 = [options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
  }

  else
  {
    v11 = 0;
  }

  if ([options objectForKeyedSubscript:@"avcMediaStreamOptionIsOriginator"])
  {
    v12 = [objc_msgSend(options objectForKeyedSubscript:{@"avcMediaStreamOptionIsOriginator", "BOOLValue"}];
  }

  else
  {
    v12 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [d UUIDString];
      uUIDString2 = [iD UUIDString];
      if (options)
      {
        v15 = [objc_msgSend(options "description")];
      }

      else
      {
        v15 = "<nil>";
      }

      if (*error)
      {
        v16 = [objc_msgSend(*error "description")];
      }

      else
      {
        v16 = "<nil>";
      }

      *buf = 136317186;
      v21 = v13;
      v22 = 2080;
      v23 = "[AVCAudioStream initWithRTPNWConnectionClientID:rtcpNWConnectionClientID:options:error:]";
      v24 = 1024;
      v25 = 150;
      v26 = 2112;
      v27 = uUIDString;
      v28 = 2112;
      v29 = uUIDString2;
      v30 = 1024;
      v31 = v12;
      v32 = 2112;
      v33 = v11;
      v34 = 2080;
      v35 = v15;
      v36 = 2080;
      v37 = v16;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d rtpClientID=%@, rtcpClientID=%@, isOriginator=%d, callID=%@, options=%s, error=%s", buf, 0x54u);
    }
  }

  if (d)
  {
    return -[AVCAudioStream initWithLocalAddress:networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:](self, "initWithLocalAddress:networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:", 0, 0, 0, [d UUIDString], objc_msgSend(iD, "UUIDString"), 0, v11, options, error);
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"rtpClientID cannot not be nil"];
  }

  return 0;
}

- (AVCAudioStream)initWithLocalEndpoint:(id)endpoint options:(id)options error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = [options objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = [endpoint description];
      if (options)
      {
        v13 = [objc_msgSend(options "description")];
      }

      else
      {
        v13 = "<nil>";
      }

      *buf = 136316418;
      v16 = v10;
      v17 = 2080;
      v18 = "[AVCAudioStream initWithLocalEndpoint:options:error:]";
      v19 = 1024;
      v20 = 165;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v9;
      v25 = 2080;
      v26 = v13;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-init Local NW Endpoint=%@, callID=%@, options=%s", buf, 0x3Au);
    }
  }

  return [(AVCAudioStream *)self initWithLocalAddress:0 networkSockets:0 IDSDestination:0 rtpConnectionClientID:0 rtcpConnectionClientID:0 localEndpoint:endpoint callID:v9 options:options error:error];
}

- (AVCAudioStream)initWithLocalAddress:(id)address networkSockets:(id)sockets IDSDestination:(id)destination rtpConnectionClientID:(id)d rtcpConnectionClientID:(id)iD localEndpoint:(id)endpoint callID:(id)callID options:(id)self0 error:(id *)self1
{
  v69 = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = AVCAudioStream;
  v17 = [(AVCAudioStream *)&v55 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v18)
    {
      v19 = v18;
      callIDCopy2 = callID;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_32;
      }

      __str = 0;
      if (address)
      {
        v52 = [objc_msgSend(address "description")];
        if (sockets)
        {
LABEL_6:
          v50 = [objc_msgSend(sockets "description")];
LABEL_9:
          endpointCopy = endpoint;
          if (destination)
          {
            v21 = [objc_msgSend(destination "description")];
          }

          else
          {
            v21 = "<nil>";
          }

          dCopy = d;
          if (d)
          {
            v22 = [objc_msgSend(d "description")];
          }

          else
          {
            v22 = "<nil>";
          }

          destinationCopy = destination;
          if (iD)
          {
            v23 = [objc_msgSend(iD "description")];
          }

          else
          {
            v23 = "<nil>";
          }

          addressCopy = address;
          if (callID)
          {
            v24 = [objc_msgSend(callID "description")];
          }

          else
          {
            v24 = "<nil>";
          }

          iDCopy = iD;
          if (options)
          {
            v25 = [objc_msgSend(options "description")];
          }

          else
          {
            v25 = "<nil>";
          }

          asprintf(&__str, "localAddress=%s, socketsDictionary=%s, destination=%s, rtpConnectionClientID=%s, rtcpConnectionClientID=%s, callID=%s, options=%s", v52, v50, v21, v22, v23, v24, v25);
          if (__str)
          {
            socketsCopy = sockets;
            v51 = v17;
            __lasts = 0;
            v26 = strtok_r(__str, "\n", &__lasts);
            v27 = MEMORY[0x1E6986650];
            do
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v28 = VRTraceErrorLogLevelToCSTR();
                v29 = *v27;
                if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  *&buf[4] = v28;
                  v57 = 2080;
                  v58 = "[AVCAudioStream initWithLocalAddress:networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:]";
                  v59 = 1024;
                  v60 = 182;
                  v61 = 2080;
                  v62 = "";
                  v63 = 2080;
                  *v64 = v26;
                  _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d %s %s", buf, 0x30u);
                }
              }

              v26 = strtok_r(0, "\n", &__lasts);
            }

            while (v26);
            free(__str);
            v17 = v51;
            sockets = socketsCopy;
            callIDCopy2 = callID;
          }

          iD = iDCopy;
          endpoint = endpointCopy;
          destination = destinationCopy;
          d = dCopy;
          address = addressCopy;
LABEL_32:
          v17->_isInProcess = [(AVCAudioStream *)v17 shouldRunInProcessWithOptions:options];
          [(AVCAudioStream *)v17 refreshLoggingParameters];
          if (sockets)
          {
            sockets = xpc_retain(sockets);
          }

          if (address)
          {
            [v19 setObject:objc_msgSend(address forKeyedSubscript:{"ip"), @"vcMediaStreamSourceIP"}];
            [v19 setObject:objc_msgSend(address forKeyedSubscript:{"interfaceName"), @"vcMediaStreamSourceInterfaceName"}];
          }

          if (destination)
          {
            [v19 setObject:destination forKeyedSubscript:@"vcMediaStreamDestID"];
          }

          if (d)
          {
            [v19 setObject:d forKeyedSubscript:@"vcMediaStreamConnectionClientID"];
          }

          if (iD)
          {
            [v19 setObject:iD forKeyedSubscript:@"vcMediaStreamRTCPConnectionClientID"];
          }

          if ([endpoint endpoint])
          {
            if (nw_endpoint_get_port([endpoint endpoint]))
            {
              [AVCAudioStream initWithLocalAddress:sockets networkSockets:buf IDSDestination:&__str rtpConnectionClientID:? rtcpConnectionClientID:? localEndpoint:? callID:? options:? error:?];
              sockets = *buf;
              v35 = __str;
              if (*buf)
              {
LABEL_72:
                xpc_release(sockets);
              }

LABEL_73:

              if (v35)
              {
                return v17;
              }

              goto LABEL_74;
            }

            isInProcess = v17->_isInProcess;
            endpoint = [endpoint endpoint];
            if (isInProcess)
            {
              v32 = @"vcMediaStreamLocalNWEndpoint";
            }

            else
            {
              sockets = nw_endpoint_copy_dictionary();
              endpoint = MEMORY[0x1E695E118];
              v32 = @"vcMediaStreamLocalNWEndpointInXpcArgs";
            }

            [v19 setObject:endpoint forKeyedSubscript:v32];
          }

          if (callIDCopy2)
          {
            [v19 setObject:callIDCopy2 forKeyedSubscript:@"vcMediaStreamCallID"];
          }

          if ([options objectForKeyedSubscript:@"avcMediaStreamOptionRemoteEndpointInfo"])
          {
            [v19 setObject:objc_msgSend(options forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionRemoteEndpointInfo", @"vcMediaStreamRemoteEndpointInfo"}];
          }

          if ([options objectForKeyedSubscript:@"avcMediaStreamOptionClientName"])
          {
            [v19 setObject:objc_msgSend(options forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionClientName", @"vcMediaStreamClientName"}];
          }

          if ([options objectForKeyedSubscript:@"avcMediaStreamOptionDelayNWConnectionStart"])
          {
            [v19 setObject:objc_msgSend(options forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionDelayNWConnectionStart", @"vcMediaStreamDelayNWConnectionStart"}];
          }

          if ([options objectForKeyedSubscript:@"avcMediaStreamOptionClientSessionID"])
          {
            [options objectForKeyedSubscript:@"avcMediaStreamOptionClientSessionID"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v19 setObject:objc_msgSend(objc_msgSend(options forKeyedSubscript:{"objectForKeyedSubscript:", @"avcMediaStreamOptionClientSessionID", "UUIDString"), @"vcMediaStreamClientSessionID"}];
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [AVCAudioStream initWithLocalAddress:networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:];
              }
            }
          }

          [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", VCFeatureFlagManager_CallRecordingEnabled()), @"vcMediaStreamSetUpCaptioning"}];
          [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", VCFeatureFlagManager_CallRecordingEnabled()), @"vcMediaStreamSetUpRecording"}];
          CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
          v17->_callbackQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.avcaudiostream.callback.queue", 0, CustomRootQueue);
          if (v17->_isInProcess)
          {
            v34 = [(AVCAudioStream *)v17 setUpAudioStreamInProcessWithClientArgs:v19 xpcArguments:sockets error:error];
          }

          else
          {
            v34 = [(AVCAudioStream *)v17 setUpAudioStreamOutOfProcessWithClientArgs:v19 xpcArguments:sockets error:error];
          }

          v35 = v34;
          MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-init");
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v36 = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v38 = getpid();
              streamToken = v17->_streamToken;
              if (error)
              {
                v40 = *error;
              }

              else
              {
                v40 = @"None";
              }

              *buf = 136316930;
              *&buf[4] = v36;
              v57 = 2080;
              v58 = "[AVCAudioStream initWithLocalAddress:networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:]";
              v59 = 1024;
              v60 = 247;
              v61 = 2048;
              v62 = v17;
              v63 = 1024;
              *v64 = v38;
              *&v64[4] = 2112;
              *&v64[6] = callIDCopy2;
              v65 = 1024;
              v66 = streamToken;
              v67 = 2112;
              v68 = v40;
              _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-init (%p) PID=%d, callID=%@, streamToken=%d, error=%@", buf, 0x46u);
            }
          }

          if (sockets)
          {
            goto LABEL_72;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v52 = "<nil>";
        if (sockets)
        {
          goto LABEL_6;
        }
      }

      v50 = "<nil>";
      goto LABEL_9;
    }

    [AVCAudioStream initWithLocalAddress:v17 networkSockets:? IDSDestination:? rtpConnectionClientID:? rtcpConnectionClientID:? localEndpoint:? callID:? options:? error:?];
  }

  else
  {
    [AVCAudioStream initWithLocalAddress:networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:];
  }

LABEL_74:

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v41 = VRTraceErrorLogLevelToCSTR();
    v42 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v41;
      v57 = 2080;
      v58 = "[AVCAudioStream initWithLocalAddress:networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:]";
      v59 = 1024;
      v60 = 257;
      v61 = 2048;
      v62 = 0;
      _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-init (%p)", buf, 0x26u);
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
        v19 = "[AVCAudioStream shouldRunInProcessWithOptions:]";
        v18 = 2080;
        if (v4)
        {
          v8 = "in";
        }

        v20 = 1024;
        v21 = 264;
        v22 = 2080;
        v23 = v8;
        v9 = "AVCAudioStream [%s] %s:%d AVCAudioStream will run %s process";
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
      v5 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
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
        v19 = "[AVCAudioStream shouldRunInProcessWithOptions:]";
        v18 = 2080;
        if (v4)
        {
          v14 = "in";
        }

        v20 = 1024;
        v21 = 264;
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        selfCopy = self;
        v26 = 2080;
        v27 = v14;
        v9 = "AVCAudioStream [%s] %s:%d %@(%p) AVCAudioStream will run %s process";
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
  v54 = *MEMORY[0x1E69E9840];
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
            [AVCAudioStream validateInitializeConnectionResult:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCAudioStream validateInitializeConnectionResult:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
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
            v40 = 136316162;
            v41 = v11;
            v42 = 2080;
            v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
            v44 = 1024;
            v45 = 272;
            v46 = 2112;
            v47 = v6;
            v48 = 2048;
            selfCopy16 = self;
            _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) Missing result dictionary", &v40, 0x30u);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v40 = 136316162;
          v41 = v11;
          v42 = 2080;
          v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
          v44 = 1024;
          v45 = 272;
          v46 = 2112;
          v47 = v6;
          v48 = 2048;
          selfCopy16 = self;
          _os_log_fault_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_FAULT, "AVCAudioStream [%s] %s:%d %@(%p) Missing result dictionary", &v40, 0x30u);
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
            [AVCAudioStream validateInitializeConnectionResult:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCAudioStream validateInitializeConnectionResult:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
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
            v40 = 136316162;
            v41 = v8;
            v42 = 2080;
            v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
            v44 = 1024;
            v45 = 275;
            v46 = 2112;
            v47 = v5;
            v48 = 2048;
            selfCopy16 = self;
            _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) Server died", &v40, 0x30u);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v40 = 136316162;
          v41 = v8;
          v42 = 2080;
          v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
          v44 = 1024;
          v45 = 275;
          v46 = 2112;
          v47 = v5;
          v48 = 2048;
          selfCopy16 = self;
          _os_log_fault_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_FAULT, "AVCAudioStream [%s] %s:%d %@(%p) Server died", &v40, 0x30u);
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
            [AVCAudioStream validateInitializeConnectionResult:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCAudioStream validateInitializeConnectionResult:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
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
            v40 = 136316674;
            v41 = v15;
            v42 = 2080;
            v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
            v44 = 1024;
            v45 = 278;
            v46 = 2112;
            v47 = v7;
            v48 = 2048;
            selfCopy16 = self;
            v50 = 2112;
            resultCopy6 = [result objectForKeyedSubscript:@"ERROR"];
            v52 = 2112;
            resultCopy2 = result;
            _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) error=%@, result=%@", &v40, 0x44u);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v40 = 136316674;
          v41 = v15;
          v42 = 2080;
          v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
          v44 = 1024;
          v45 = 278;
          v46 = 2112;
          v47 = v7;
          v48 = 2048;
          selfCopy16 = self;
          v50 = 2112;
          resultCopy6 = [result objectForKeyedSubscript:@"ERROR"];
          v52 = 2112;
          resultCopy2 = result;
          _os_log_fault_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_FAULT, "AVCAudioStream [%s] %s:%d %@(%p) error=%@, result=%@", &v40, 0x44u);
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
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [AVCAudioStream validateInitializeConnectionResult:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [AVCAudioStream validateInitializeConnectionResult:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v14 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = VRTraceIsOSFaultDisabled();
          v23 = *MEMORY[0x1E6986650];
          if (v22)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v40 = 136316418;
              v41 = v21;
              v42 = 2080;
              v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
              v44 = 1024;
              v45 = 281;
              v46 = 2112;
              v47 = v14;
              v48 = 2048;
              selfCopy16 = self;
              v50 = 2112;
              resultCopy6 = result;
              _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) IPC Timeout: result=%@", &v40, 0x3Au);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            v40 = 136316418;
            v41 = v21;
            v42 = 2080;
            v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
            v44 = 1024;
            v45 = 281;
            v46 = 2112;
            v47 = v14;
            v48 = 2048;
            selfCopy16 = self;
            v50 = 2112;
            resultCopy6 = result;
            _os_log_fault_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_FAULT, "AVCAudioStream [%s] %s:%d %@(%p) IPC Timeout: result=%@", &v40, 0x3Au);
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
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [AVCAudioStream validateInitializeConnectionResult:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [AVCAudioStream validateInitializeConnectionResult:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v24 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v24 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = VRTraceIsOSFaultDisabled();
          v29 = *MEMORY[0x1E6986650];
          if (v28)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v40 = 136316418;
              v41 = v27;
              v42 = 2080;
              v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
              v44 = 1024;
              v45 = 284;
              v46 = 2112;
              v47 = v24;
              v48 = 2048;
              selfCopy16 = self;
              v50 = 2112;
              resultCopy6 = result;
              _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) Missing capabilities dictionary: result=%@", &v40, 0x3Au);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            v40 = 136316418;
            v41 = v27;
            v42 = 2080;
            v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
            v44 = 1024;
            v45 = 284;
            v46 = 2112;
            v47 = v24;
            v48 = 2048;
            selfCopy16 = self;
            v50 = 2112;
            resultCopy6 = result;
            _os_log_fault_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_FAULT, "AVCAudioStream [%s] %s:%d %@(%p) Missing capabilities dictionary: result=%@", &v40, 0x3Au);
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
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [AVCAudioStream validateInitializeConnectionResult:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [AVCAudioStream validateInitializeConnectionResult:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v25 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v25 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          v31 = VRTraceErrorLogLevelToCSTR();
          v32 = VRTraceIsOSFaultDisabled();
          v33 = *MEMORY[0x1E6986650];
          if (v32)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v40 = 136316162;
              v41 = v31;
              v42 = 2080;
              v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
              v44 = 1024;
              v45 = 287;
              v46 = 2112;
              v47 = v25;
              v48 = 2048;
              selfCopy16 = self;
              _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) Missing stream token", &v40, 0x30u);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            v40 = 136316162;
            v41 = v31;
            v42 = 2080;
            v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
            v44 = 1024;
            v45 = 287;
            v46 = 2112;
            v47 = v25;
            v48 = 2048;
            selfCopy16 = self;
            _os_log_fault_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_FAULT, "AVCAudioStream [%s] %s:%d %@(%p) Missing stream token", &v40, 0x30u);
          }
        }
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = @"Missing stream token";
      return [v18 AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    if (![result objectForKeyedSubscript:@"vcMediaStreamTokenUplink"])
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
              [AVCAudioStream validateInitializeConnectionResult:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [AVCAudioStream validateInitializeConnectionResult:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v26 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v26 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          v34 = VRTraceErrorLogLevelToCSTR();
          v35 = VRTraceIsOSFaultDisabled();
          v36 = *MEMORY[0x1E6986650];
          if (v35)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v40 = 136316162;
              v41 = v34;
              v42 = 2080;
              v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
              v44 = 1024;
              v45 = 290;
              v46 = 2112;
              v47 = v26;
              v48 = 2048;
              selfCopy16 = self;
              _os_log_error_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) Missing stream token for the uplink", &v40, 0x30u);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            v40 = 136316162;
            v41 = v34;
            v42 = 2080;
            v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
            v44 = 1024;
            v45 = 290;
            v46 = 2112;
            v47 = v26;
            v48 = 2048;
            selfCopy16 = self;
            _os_log_fault_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_FAULT, "AVCAudioStream [%s] %s:%d %@(%p) Missing stream token for the uplink", &v40, 0x30u);
          }
        }
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = @"Missing stream token (uplink)";
      return [v18 AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    if (![result objectForKeyedSubscript:@"vcMediaStreamTokenDownlink"])
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
              [AVCAudioStream validateInitializeConnectionResult:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [AVCAudioStream validateInitializeConnectionResult:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v30 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v30 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          v38 = VRTraceIsOSFaultDisabled();
          v39 = *MEMORY[0x1E6986650];
          if (v38)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v40 = 136316162;
              v41 = v37;
              v42 = 2080;
              v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
              v44 = 1024;
              v45 = 293;
              v46 = 2112;
              v47 = v30;
              v48 = 2048;
              selfCopy16 = self;
              _os_log_error_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) Missing stream token for the downlink", &v40, 0x30u);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            v40 = 136316162;
            v41 = v37;
            v42 = 2080;
            v43 = "[AVCAudioStream validateInitializeConnectionResult:]";
            v44 = 1024;
            v45 = 293;
            v46 = 2112;
            v47 = v30;
            v48 = 2048;
            selfCopy16 = self;
            _os_log_fault_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_FAULT, "AVCAudioStream [%s] %s:%d %@(%p) Missing stream token for the downlink", &v40, 0x30u);
          }
        }
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = @"Missing stream token (downlink)";
      return [v18 AVConferenceServiceError:32000 detailCode:0 description:v19];
    }

    return 0;
  }
}

- (void)refreshLoggingParameters
{
  CFPreferencesAppSynchronize(@"com.apple.VideoConference");
  CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]);
  VRTraceReset();

  VRTracePrintLoggingInfo();
}

- (void)terminateSession
{
  if (!self->_isInProcess)
  {
    [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidServerDie"];
    [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaStreamTerminateAudio"];

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
    v18 = "[AVCAudioStream dealloc]";
    v19 = 1024;
    v20 = 320;
    v6 = "AVCAudioStream [%s] %s:%d ";
    v7 = v5;
    v8 = 28;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
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
      v18 = "[AVCAudioStream dealloc]";
      v19 = 1024;
      v20 = 320;
      v21 = 2112;
      selfCopy2 = v3;
      v23 = 2048;
      selfCopy = self;
      v6 = "AVCAudioStream [%s] %s:%d %@(%p) ";
      v7 = v10;
      v8 = 48;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  [(AVCAudioStream *)self setCapabilities:0];
  [(AVCAudioStream *)self setConfiguration:0];
  if (self->_isInProcess)
  {
    [(VCMediaStream *)self->_opaqueStream stop];
    [(VCMediaStream *)self->_opaqueStream setDelegate:0];
  }

  else
  {
    [(AVCAudioStream *)self deregisterBlocksForDelegateNotifications];
    [(AVCAudioStream *)self terminateSession];
  }

  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
    self->_callbackQueue = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v12;
      v17 = 2080;
      v18 = "[AVCAudioStream dealloc]";
      v19 = 1024;
      v20 = 338;
      v21 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-dealloc (%p)", buf, 0x26u);
    }
  }

  v14.receiver = self;
  v14.super_class = AVCAudioStream;
  [(AVCAudioStream *)&v14 dealloc];
}

- (BOOL)configure:(id)configure error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
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
            v30 = v11;
            v31 = 2080;
            v32 = "[AVCAudioStream configure:error:]";
            v33 = 1024;
            v34 = 353;
            v35 = 2080;
            selfCopy = "";
            v37 = 2080;
            *v38 = v9;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v9 = strtok_r(0, "\n", &__lasts);
      }

      while (v9);
      free(__str);
      error = errorCopy;
    }
  }

  if ([configure isValidAudioConfig])
  {
    if (self->_isInProcess)
    {
      v13 = [(AVCAudioStream *)self configureInProcess:configure error:error];
    }

    else
    {
      v13 = [(AVCAudioStream *)self configureOutOfProcess:configure error:error];
    }

    v15 = v13;
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-configure");
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
        v30 = v16;
        v31 = 2080;
        v32 = "[AVCAudioStream configure:error:]";
        v33 = 1024;
        v34 = 372;
        v35 = 2048;
        selfCopy = self;
        v37 = 1024;
        *v38 = v15;
        *&v38[4] = 2112;
        *&v38[6] = v18;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-configure (%p) didSucceed=%d, error=%@", buf, 0x36u);
      }
    }
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCAudioStream.m", 360], @"Invalid Parameter", @"Called with an invalid parameter");
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCAudioStream configure:v19 error:error];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCAudioStream configure:v19 error:error];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v22 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
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
            v30 = v20;
            v31 = 2080;
            v32 = "[AVCAudioStream configure:error:]";
            v33 = 1024;
            v34 = 363;
            v35 = 2112;
            selfCopy = v14;
            v37 = 2048;
            *v38 = self;
            *&v38[8] = 2080;
            *&v38[10] = v23;
            _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) Invalid audio configuration: error[%s]", buf, 0x3Au);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          if (*error)
          {
            v24 = [objc_msgSend(*error "description")];
          }

          else
          {
            v24 = "<nil>";
          }

          *buf = 136316418;
          v30 = v20;
          v31 = 2080;
          v32 = "[AVCAudioStream configure:error:]";
          v33 = 1024;
          v34 = 363;
          v35 = 2112;
          selfCopy = v14;
          v37 = 2048;
          *v38 = self;
          *&v38[8] = 2080;
          *&v38[10] = v24;
          _os_log_fault_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_FAULT, "AVCAudioStream [%s] %s:%d %@(%p) Invalid audio configuration: error[%s]", buf, 0x3Au);
        }
      }
    }

    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)start
{
  v23 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCAudioStream start]");
  if (![(AVCAudioStream *)self configuration])
  {
    start = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32016 detailCode:0 description:@"AVCAudioStream hasn't been configured"];
    opaqueStream = self->_opaqueStream;
    selfCopy2 = self;
    v9 = 0;
LABEL_8:
    [(AVCAudioStream *)selfCopy2 vcMediaStream:opaqueStream didStartStream:v9 error:start];
    goto LABEL_13;
  }

  isInProcess = self->_isInProcess;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (isInProcess)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v5;
        v17 = 2080;
        v18 = "[AVCAudioStream start]";
        v19 = 1024;
        v20 = 385;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream start (not using XPC)", &v15, 0x1Cu);
      }
    }

    start = [(VCMediaStream *)self->_opaqueStream start];
    opaqueStream = self->_opaqueStream;
    v9 = start == 0;
    selfCopy2 = self;
    goto LABEL_8;
  }

  if (ErrorLogLevelForModule >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = v11;
      v17 = 2080;
      v18 = "[AVCAudioStream start]";
      v19 = 1024;
      v20 = 382;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream API_VCMEDIASTREAM_STARTCONFERENCE (client side)", &v15, 0x1Cu);
    }
  }

  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStartConference"];
LABEL_13:
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = v13;
      v17 = 2080;
      v18 = "[AVCAudioStream start]";
      v19 = 1024;
      v20 = 393;
      v21 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-start (%p)", &v15, 0x26u);
    }
  }
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCAudioStream stop]");
  if (self->_isInProcess)
  {
    [(VCMediaStream *)self->_opaqueStream stop];
    [(AVCAudioStream *)self vcMediaStreamDidStop:self->_opaqueStream];
  }

  else
  {
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStopConference"];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[AVCAudioStream stop]";
      v9 = 1024;
      v10 = 405;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-stop (%p)", &v5, 0x26u);
    }
  }
}

- (void)pause
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCAudioStream pause]");
  if (self->_isInProcess)
  {
    v3 = [(VCMediaStream *)self->_opaqueStream setPause:1];
    [(AVCAudioStream *)self vcMediaStream:self->_opaqueStream didPauseStream:v3 == 0 error:v3];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579E670, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetPause" arguments:v4];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-pause");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCAudioStream pause]";
      v11 = 1024;
      v12 = 422;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-pause (%p)", buf, 0x26u);
    }
  }
}

- (void)resume
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[AVCAudioStream resume]");
  if (self->_isInProcess)
  {
    v3 = [(VCMediaStream *)self->_opaqueStream setPause:0];
    [(AVCAudioStream *)self vcMediaStream:self->_opaqueStream didResumeStream:v3 == 0 error:v3];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579E698, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetPause" arguments:v4];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-resume");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCAudioStream resume]";
      v11 = 1024;
      v12 = 439;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-resume (%p)", buf, 0x26u);
    }
  }
}

- (void)sendDTMFDigitString:(id)string withVolume:(unsigned __int8)volume duration:(unsigned __int16)duration interval:(unsigned __int16)interval
{
  intervalCopy = interval;
  durationCopy = duration;
  volumeCopy = volume;
  v31 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v18 = v11;
      v19 = 2080;
      v20 = "[AVCAudioStream sendDTMFDigitString:withVolume:duration:interval:]";
      v21 = 1024;
      v22 = 444;
      v23 = 2112;
      stringCopy = string;
      v25 = 1024;
      v26 = volumeCopy;
      v27 = 1024;
      v28 = durationCopy;
      v29 = 1024;
      v30 = intervalCopy;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d digits=%@, volume=%hhu, duration=%hu, interval=%hu", buf, 0x38u);
    }
  }

  v16[0] = string;
  v15[0] = @"event";
  v15[1] = @"volume";
  v16[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:volumeCopy];
  v15[2] = @"duration";
  v16[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:durationCopy];
  v15[3] = @"interval";
  v16[3] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:intervalCopy];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (self->_isInProcess)
  {
    [(VCAudioStream *)self->_opaqueStream sendDTMFEvent:v13];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v13, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSendDTMFEvent" arguments:v14];
  }
}

- (BOOL)manageRemoteEndpointInProcess:(id)process actionType:(int64_t)type error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (type == 1)
  {
    v8 = [(VCMediaStream *)self->_opaqueStream removeRemoteEndpoint:process error:error];
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

    v8 = [(VCMediaStream *)self->_opaqueStream addRemoteEndpoint:process error:error];
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
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCAudioStream" code:-3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, &v28, 1)}];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCAudioStream manageRemoteEndpointInProcess:actionType:error:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
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
          v19 = "[AVCAudioStream manageRemoteEndpointInProcess:actionType:error:]";
          v20 = 1024;
          v21 = 476;
          v22 = 2112;
          v23 = v13;
          v24 = 2048;
          selfCopy = self;
          v26 = 2112;
          v27 = v12;
          _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
        }
      }
    }
  }

  return v9;
}

- (BOOL)manageRemoteEndpointOutOfProcess:(id)process actionType:(int64_t)type error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = [AVCEndpoint newEndpointXPCDictionaryWithAVCEndpoint:?];
  if (!v9)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCAudioStream manageRemoteEndpointOutOfProcess:v17 actionType:process error:?];
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
        v16 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v26 = v18;
          v27 = 2080;
          v28 = "[AVCAudioStream manageRemoteEndpointOutOfProcess:actionType:error:]";
          v29 = 1024;
          v30 = 484;
          v31 = 2112;
          v32 = v16;
          v33 = 2048;
          selfCopy2 = self;
          v35 = 2112;
          v36 = [process description];
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) Failed to encode the AVC remote endpoint=%@", buf, 0x3Au);
          if (error)
          {
LABEL_25:
            v23 = *MEMORY[0x1E696A588];
            v24 = @"Failed to encode the remote endpoint provided";
            *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCAudioStream" code:-3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v24, &v23, 1)}];
            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [AVCAudioStream manageRemoteEndpointOutOfProcess:actionType:error:];
                }
              }
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v20 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
              }

              else
              {
                v20 = &stru_1F570E008;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v21 = VRTraceErrorLogLevelToCSTR();
                v22 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  v26 = v21;
                  v27 = 2080;
                  v28 = "[AVCAudioStream manageRemoteEndpointOutOfProcess:actionType:error:]";
                  v29 = 1024;
                  v30 = 512;
                  v31 = 2112;
                  v32 = v20;
                  v33 = 2048;
                  selfCopy2 = self;
                  v35 = 2112;
                  v36 = @"Failed to encode the remote endpoint provided";
                  _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
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
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCAudioStream.m", 525], @"Invalid Parameter", @"Remote endpoint is invalid");
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

        [AVCAudioStream isRemoteEndpointValid:error:];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
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
        v15 = "[AVCAudioStream isRemoteEndpointValid:error:]";
        v16 = 1024;
        v17 = 528;
        v18 = 2112;
        v19 = v8;
        v20 = 2048;
        selfCopy = self;
        v22 = 2112;
        v23 = [objc_msgSend(valid "endpoint")];
        v24 = 1024;
        rtpSSRC = [valid rtpSSRC];
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) Invalid remote endpoint: endpoint=%@, rtpSSRC=%d", buf, 0x40u);
      }
    }

    LOBYTE(v7) = 0;
    return v7;
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (void)startContinuousDTMFWithDigit:(char)digit volume:(unsigned __int8)volume
{
  volumeCopy = volume;
  digitCopy = digit;
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = v7;
      v16 = 2080;
      v17 = "[AVCAudioStream startContinuousDTMFWithDigit:volume:]";
      v18 = 1024;
      v19 = 567;
      v20 = 1024;
      v21 = digitCopy;
      v22 = 1024;
      v23 = volumeCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d digit=%c, volume=%u", buf, 0x28u);
    }
  }

  v12[0] = @"event";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:digitCopy];
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v12[1] = @"volume";
  v13[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:volumeCopy];
  v13[2] = &unk_1F579B250;
  v12[2] = @"duration";
  v12[3] = @"interval";
  v13[3] = &unk_1F579B250;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  if (self->_isInProcess)
  {
    [(VCAudioStream *)self->_opaqueStream sendDTMFEvent:v9];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSendDTMFEvent" arguments:v10];
  }
}

- (void)stopContinuousDTMF
{
  if (self->_isInProcess)
  {
    [(VCAudioStream *)self->_opaqueStream stopSendDTMFEvent];
  }

  else
  {
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStopSendDTMFEvent"];
  }
}

- (void)startSynchronizeWithStream:(int64_t)stream
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
      v14 = "[AVCAudioStream startSynchronizeWithStream:]";
      v15 = 1024;
      v16 = 593;
      v17 = 2048;
      streamCopy = stream;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d syncStreamToken=%ld", buf, 0x26u);
    }
  }

  if (!self->_isInProcess)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:stream];
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamToken", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStartSynchronization" arguments:v8];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v9;
        v13 = 2080;
        v14 = "[AVCAudioStream startSynchronizeWithStream:]";
        v15 = 1024;
        v16 = 601;
        v17 = 1024;
        LODWORD(streamCopy) = stream;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: synchronizeWithStream %u", buf, 0x22u);
      }
    }
  }
}

- (void)setJitterBufferMode:(unsigned int)mode
{
  v3 = *&mode;
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
      v15 = "[AVCAudioStream setJitterBufferMode:]";
      v16 = 1024;
      v17 = 651;
      v18 = 1024;
      v19 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d Handover between cellular and wifi AVCJitterBufferMode=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] jitterBufferMode]!= v3)
  {
    [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] setJitterBufferMode:v3];
    v7 = [AVCMediaStreamConfig streamJitterBufferModeWithClientJitterBufferMode:v3];
    if (self->_isInProcess)
    {
      [(VCAudioStream *)self->_opaqueStream setJitterBufferMode:v7];
    }

    else
    {
      v10 = @"vcMediaStreamJitterBufferMode";
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"vcMediaStreamDictionary", 0}];
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetJitterBufferMode" arguments:v9];
    }
  }
}

- (unsigned)jitterBufferMode
{
  configuration = [(AVCAudioStream *)self configuration];

  return [(AVCMediaStreamConfig *)configuration jitterBufferMode];
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
      v14 = "[AVCAudioStream setDirection:]";
      v15 = 1024;
      v16 = 677;
      v17 = 2048;
      directionCopy = direction;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d direction=%ld", buf, 0x26u);
    }
  }

  if ([(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] direction]!= direction)
  {
    [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] setDirection:direction];
    if (self->_isInProcess)
    {
      [(VCAudioStream *)self->_opaqueStream setStreamDirection:[AVCMediaStreamConfig streamDirectionWithClientDirection:direction]];
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
  configuration = [(AVCAudioStream *)self configuration];

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
      v14 = "[AVCAudioStream setRtcpEnabled:]";
      v15 = 1024;
      v16 = 701;
      v17 = 1024;
      v18 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d rtcpEnabled=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] isRTCPEnabled]!= enabledCopy)
  {
    [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] setRtcpEnabled:enabledCopy];
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
  configuration = [(AVCAudioStream *)self configuration];

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
      v14 = "[AVCAudioStream setRtpTimeOutEnabled:]";
      v15 = 1024;
      v16 = 727;
      v17 = 1024;
      v18 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d rtpTimeOutEnabled=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] isRTPTimeOutEnabled]!= enabledCopy)
  {
    [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] setRtpTimeOutEnabled:enabledCopy];
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
  configuration = [(AVCAudioStream *)self configuration];

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
      v14 = "[AVCAudioStream setRtcpTimeOutEnabled:]";
      v15 = 1024;
      v16 = 753;
      v17 = 1024;
      v18 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d rtcpTimeOutEnabled=%d", buf, 0x22u);
    }
  }

  if ([(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] isRTCPTimeOutEnabled]!= enabledCopy)
  {
    [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] setRtcpTimeOutEnabled:enabledCopy];
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
  configuration = [(AVCAudioStream *)self configuration];

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
      v15 = "[AVCAudioStream setRtpTimeOutIntervalSec:]";
      v16 = 1024;
      v17 = 779;
      v18 = 2048;
      secCopy = sec;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d rtpTimeOutIntervalSec=%f", buf, 0x26u);
    }
  }

  [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] rtpTimeOutInterval];
  if (v7 != sec)
  {
    [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] setRtpTimeOutInterval:sec];
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
  configuration = [(AVCAudioStream *)self configuration];

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
      v15 = "[AVCAudioStream setRtcpTimeOutIntervalSec:]";
      v16 = 1024;
      v17 = 805;
      v18 = 2048;
      secCopy = sec;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d rtcpTimeOutIntervalSec=%f", buf, 0x26u);
    }
  }

  [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] rtcpTimeOutInterval];
  if (v7 != sec)
  {
    [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] setRtcpTimeOutInterval:sec];
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
  configuration = [(AVCAudioStream *)self configuration];

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
      v15 = "[AVCAudioStream setRtcpSendIntervalSec:]";
      v16 = 1024;
      v17 = 831;
      v18 = 2048;
      secCopy = sec;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d rtcpSendIntervalSec=%f", buf, 0x26u);
    }
  }

  [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] rtcpSendInterval];
  if (v7 != sec)
  {
    [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] setRtcpSendInterval:sec];
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
  configuration = [(AVCAudioStream *)self configuration];

  [(AVCMediaStreamConfig *)configuration rtcpSendInterval];
  return result;
}

- (float)volume
{
  audio = [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] audio];

  [(AVCAudioStreamConfig *)audio volume];
  return result;
}

- (void)setVolume:(float)volume
{
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = v5;
      v19 = 2080;
      v20 = "[AVCAudioStream setVolume:]";
      v21 = 1024;
      v22 = 861;
      v23 = 2048;
      volumeCopy = volume;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d volume=%f", buf, 0x26u);
    }
  }

  [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration] audio] volume];
  if (*&v7 != volume)
  {
    LODWORD(v7) = 0;
    LODWORD(v8) = 1065353216;
    if (volume < 0.0 || volume > 1.0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCAudioStream setVolume:];
        }
      }
    }

    else
    {
      audio = [(AVCMediaStreamConfig *)[(AVCAudioStream *)self configuration:v7] audio];
      *&v11 = volume;
      [(AVCAudioStreamConfig *)audio setVolume:v11];
      if (self->_isInProcess)
      {
        *&v12 = volume;
        [(VCAudioStream *)self->_opaqueStream setVolume:v12];
      }

      else
      {
        v15 = @"vcMediaStreamVolume";
        *&v12 = volume;
        v16 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v13, @"vcMediaStreamDictionary", 0}];
        [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetVolume" arguments:v14];
      }
    }
  }
}

- (BOOL)isInputFrequencyMeteringEnabled
{
  if (self->_isInProcess)
  {
    opaqueStream = self->_opaqueStream;

    return [(VCAudioStream *)opaqueStream isFrequencyMeteringEnabled:0];
  }

  else
  {
    v4 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaStreamGetInputFrequencyMeteringEnabled" arguments:0];
    if (v4 && (v5 = [v4 objectForKeyedSubscript:@"vcMediaStreamInputFreqMeterEnabled"]) != 0)
    {

      return [v5 BOOLValue];
    }

    else
    {
      return 0;
    }
  }
}

- (void)setInputFrequencyMeteringEnabled:(BOOL)enabled
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
      v14 = "[AVCAudioStream setInputFrequencyMeteringEnabled:]";
      v15 = 1024;
      v16 = 904;
      v17 = 1024;
      v18 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d isEnabled=%d", buf, 0x22u);
    }
  }

  if (self->_isInProcess)
  {
    [(VCAudioStream *)self->_opaqueStream setFrequencyMeteringEnabled:enabledCopy meterType:0];
  }

  else
  {
    v9 = @"vcMediaStreamInputFreqMeterEnabled";
    v10 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetInputFrequencyMeteringEnabled" arguments:v8];
  }
}

- (BOOL)isOutputFrequencyMeteringEnabled
{
  if (self->_isInProcess)
  {
    opaqueStream = self->_opaqueStream;

    return [(VCAudioStream *)opaqueStream isFrequencyMeteringEnabled:1];
  }

  else
  {
    v4 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaStreamGetOutputFrequencyMeteringEnabled" arguments:0];
    if (v4 && (v5 = [v4 objectForKeyedSubscript:@"vcMediaStreamOutputFreqMeterEnabled"]) != 0)
    {

      return [v5 BOOLValue];
    }

    else
    {
      return 0;
    }
  }
}

- (void)setOutputFrequencyMeteringEnabled:(BOOL)enabled
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
      v14 = "[AVCAudioStream setOutputFrequencyMeteringEnabled:]";
      v15 = 1024;
      v16 = 934;
      v17 = 1024;
      v18 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d isEnabled=%d", buf, 0x22u);
    }
  }

  if (self->_isInProcess)
  {
    [(VCAudioStream *)self->_opaqueStream setFrequencyMeteringEnabled:enabledCopy meterType:1];
  }

  else
  {
    v9 = @"vcMediaStreamOutputFreqMeterEnabled";
    v10 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamSetOutputFrequencyMeteringEnabled" arguments:v8];
  }
}

- (void)didInterruptionBeginHandler
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p interruption begin", v2, v3, v4, v5);
}

- (void)didInterruptionEndHandler
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p interruption end", v2, v3, v4, v5);
}

- (void)processDTMFEventWithDigit:(id)digit
{
  v18 = *MEMORY[0x1E69E9840];
  charValue = [digit charValue];
  delegate = [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didReceiveDTMFEventWithDigit");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316162;
        v9 = v6;
        v10 = 2080;
        v11 = "[AVCAudioStream processDTMFEventWithDigit:]";
        v12 = 1024;
        v13 = 973;
        v14 = 2048;
        selfCopy = self;
        v16 = 1024;
        v17 = charValue;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didReceiveDTMFEventWithDigit (%p) dtmfDigit=%c", &v8, 0x2Cu);
      }
    }

    [(AVCAudioStreamDelegate *)delegate stream:self didReceiveDTMFEventWithDigit:charValue];
  }
}

- (void)registerBlocksForDelegateNotifications
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke;
  v18[3] = &unk_1E85F3AD8;
  v18[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidServerDie" block:v18 queue:self->_callbackQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_237;
  v17[3] = &unk_1E85F3AD8;
  v17[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidStartConnection" block:v17 queue:self->_callbackQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_256;
  v16[3] = &unk_1E85F3AD8;
  v16[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidStopConnection" block:v16 queue:self->_callbackQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_258;
  v15[3] = &unk_1E85F3AD8;
  v15[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidPause" block:v15 queue:self->_callbackQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_265;
  v14[3] = &unk_1E85F3AD8;
  v14[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidResume" block:v14 queue:self->_callbackQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_272;
  v13[3] = &unk_1E85F3AD8;
  v13[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidStartSynchronization" block:v13 queue:self->_callbackQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_279;
  v12[3] = &unk_1E85F3AD8;
  v12[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamRTPPacketTimeout" block:v12 queue:self->_callbackQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_281;
  v11[3] = &unk_1E85F3AD8;
  v11[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamRTCPPacketTimeout" block:v11 queue:self->_callbackQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_283;
  v10[3] = &unk_1E85F3AD8;
  v10[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidRecoverFromRTCPTimeout" block:v10 queue:self->_callbackQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_287;
  v9[3] = &unk_1E85F3AD8;
  v9[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamRTCPPacketsReceived" block:v9 queue:self->_callbackQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_292;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamUpdateInputFrequencyMetering" block:v8 queue:self->_callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_297;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamUpdateOutputFrequencyMetering" block:v7 queue:self->_callbackQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_302;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidInterruptionBegin" block:v6 queue:self->_callbackQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_2;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidInterruptionEnd" block:v5 queue:self->_callbackQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_3;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDTMFDigitReceived" block:v4 queue:self->_callbackQueue];
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke(uint64_t a1, void *a2)
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
          __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_cold_1();
        }
      }
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_cold_2();
      }
    }

    [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didServerDie");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315906;
          v12 = v9;
          v13 = 2080;
          v14 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v15 = 1024;
          v16 = 996;
          v17 = 2048;
          v18 = v4;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didServerDie (%p)", &v11, 0x26u);
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
      v14 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
      v15 = 1024;
      v16 = 1000;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: Server died, but AVCAudioStream has already deallocated, NO-OP", &v11, 0x1Cu);
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_237(uint64_t a1, void *a2, void *a3)
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
      v32 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
      v33 = 1024;
      v34 = 1007;
      v35 = 2048;
      v36 = a3;
      v37 = 2080;
      v38[0] = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d didStartConnectionBlock: error = %p, result = %s", &v29, 0x30u);
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
          v32 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v33 = 1024;
          v34 = 1018;
          v35 = 1024;
          LODWORD(v36) = v16;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: didStartConnectionBlock strongSelf started(%d)", &v29, 0x22u);
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
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didStart");
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
            v32 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
            v33 = 1024;
            v34 = 1030;
            v35 = 2048;
            v36 = v10;
            v37 = 1024;
            LODWORD(v38[0]) = v20;
            WORD2(v38[0]) = 2112;
            *(v38 + 6) = v17;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didStart (%p) didSucceed=%d, error=%@", &v29, 0x36u);
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
      v32 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
      v33 = 1024;
      v34 = 1035;
      v35 = 2048;
      v36 = v10;
      v37 = 1024;
      LODWORD(v38[0]) = v23;
      v24 = "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p of didStart started[%d]";
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
      v32 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
      v33 = 1024;
      v34 = 1012;
      v24 = "AVCAudioStream [%s] %s:%d AVCAudioStream: didStartConnectionBlock: strongSelf == nil";
      v25 = v28;
      v26 = 28;
    }

    _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, &v29, v26);
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_256(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didStop");
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
          v15 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v16 = 1024;
          v17 = 1047;
          v18 = 2048;
          v19 = v5;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didStop (%p)", &v12, 0x26u);
        }
      }

      [objc_msgSend(v5 "delegate")];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v10;
          v14 = 2080;
          v15 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v16 = 1024;
          v17 = 1050;
          v18 = 2048;
          v19 = v5;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p of didStop", &v12, 0x26u);
        }
      }
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_258(uint64_t a1, void *a2, uint64_t a3)
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
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didPause");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136316418;
            v15 = v9;
            v16 = 2080;
            v17 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
            v18 = 1024;
            v19 = 1075;
            v20 = 2048;
            v21 = v6;
            v22 = 1024;
            v23 = [v7 intValue];
            v24 = 2112;
            v25 = v8;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didPause (%p) didSucceed=%d, error=%@", &v14, 0x36u);
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
          v17 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v18 = 1024;
          v19 = 1080;
          v20 = 2048;
          v21 = v6;
          v22 = 1024;
          v23 = v13;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p of didPause [%d]", &v14, 0x2Cu);
        }
      }
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_265(uint64_t a1, void *a2, uint64_t a3)
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
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didResume");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136316418;
            v15 = v9;
            v16 = 2080;
            v17 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
            v18 = 1024;
            v19 = 1105;
            v20 = 2048;
            v21 = v6;
            v22 = 1024;
            v23 = [v7 intValue];
            v24 = 2112;
            v25 = v8;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didResume (%p) didSucceed=%d, error=%@", &v14, 0x36u);
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
          v17 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v18 = 1024;
          v19 = 1110;
          v20 = 2048;
          v21 = v6;
          v22 = 1024;
          v23 = v13;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p of didResume [%d]", &v14, 0x2Cu);
        }
      }
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_272(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamSynchronizationStarted"];
      v8 = [a2 objectForKeyedSubscript:@"vcMediaStreamError"];
      if (v8)
      {
        v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(v8 code:"objectForKeyedSubscript:" userInfo:{@"ERROR_DOMAIN", objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"ERROR_CODE", "intValue"), objc_msgSend(v8, "objectForKeyedSubscript:", @"ERROR_USERINFO"}];
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(v6 "delegate")];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316162;
          v12 = v9;
          v13 = 2080;
          v14 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v15 = 1024;
          v16 = 1140;
          v17 = 2048;
          v18 = v6;
          v19 = 1024;
          v20 = [v7 BOOLValue];
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p of didStartSynchronizer [%d]", &v11, 0x2Cu);
        }
      }
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_279(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      [objc_msgSend(v4 "delegate")];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315906;
          v9 = v6;
          v10 = 2080;
          v11 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v12 = 1024;
          v13 = 1155;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p RTP packet timeout", &v8, 0x26u);
        }
      }
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_281(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      [objc_msgSend(v4 "delegate")];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315906;
          v9 = v6;
          v10 = 2080;
          v11 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v12 = 1024;
          v13 = 1170;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p RTCP packet timeout", &v8, 0x26u);
        }
      }
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_283(uint64_t a1, void *a2, uint64_t a3)
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
          v11 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v12 = 1024;
          v13 = 1186;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client=%p RTCP packet timeout", &v8, 0x26u);
        }
      }
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_287(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      [v5 vcMediaStream:0 didReceiveRTCPPackets:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamRTCPPackets"}];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315906;
          v10 = v7;
          v11 = 2080;
          v12 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
          v13 = 1024;
          v14 = 1201;
          v15 = 2048;
          v16 = v6;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p received RTCP packets", &v9, 0x26u);
        }
      }
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_292(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      [v5 vcMediaStream:0 updateInputFrequencyLevel:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamInputFreqMetering"}];
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        v9 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136315906;
            v11 = v7;
            v12 = 2080;
            v13 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
            v14 = 1024;
            v15 = 1218;
            v16 = 2048;
            v17 = v6;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p received input frequency metering packets", &v10, 0x26u);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_292_cold_1();
        }
      }
    }
  }
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_297(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      [v5 vcMediaStream:0 updateOutputFrequencyLevel:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamOutputFreqMetering"}];
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        v9 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136315906;
            v11 = v7;
            v12 = 2080;
            v13 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
            v14 = 1024;
            v15 = 1235;
            v16 = 2048;
            v17 = v6;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p received input frequency metering packets", &v10, 0x26u);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_297_cold_1();
        }
      }
    }
  }
}

id *__56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_302(id *result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = result;
    result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
    if (!result)
    {
      result = [v3[4] strong];
      if (result)
      {

        return [result didInterruptionBeginHandler];
      }
    }
  }

  return result;
}

id *__56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_2(id *result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = result;
    result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
    if (!result)
    {
      result = [v3[4] strong];
      if (result)
      {

        return [result didInterruptionEndHandler];
      }
    }
  }

  return result;
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
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

      v12 = 136316162;
      v13 = v6;
      v14 = 2080;
      v15 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke_3";
      v16 = 1024;
      v17 = 1263;
      v18 = 2048;
      v19 = a3;
      v20 = 2080;
      v21 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d didReceiveDTMFEventWithDigitBlock: error=%p, result=%s", &v12, 0x30u);
    }
  }

  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v9 = [*(a1 + 32) strong];
    if (v9)
    {
      [v9 processDTMFEventWithDigit:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamDTMFDigitReceived"}];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v10;
        v14 = 2080;
        v15 = "[AVCAudioStream registerBlocksForDelegateNotifications]_block_invoke";
        v16 = 1024;
        v17 = 1268;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d AVCAudioStream: didReceiveDTMFEventWithDigit: strongSelf == nil", &v12, 0x1Cu);
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
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamUpdateInputFrequencyMetering"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamUpdateOutputFrequencyMetering"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidInterruptionBegin"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidInterruptionEnd"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcMediaStreamDTMFDigitReceived"];
}

- (BOOL)configureInProcess:(id)process error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  v7 = -[VCAudioStreamConfig initWithClientDictionary:]([VCAudioStreamConfig alloc], "initWithClientDictionary:", [process dictionary]);
  v8 = v7;
  if (v7 && (opaqueStream = self->_opaqueStream, v29[0] = v7, -[VCMediaStream setStreamConfig:withError:](opaqueStream, "setStreamConfig:withError:", [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1], error)))
  {
    [(AVCAudioStream *)self setConfiguration:process];
    v10 = 1;
  }

  else
  {
    if (error && !*error)
    {
      v27 = *MEMORY[0x1E696A588];
      v28 = @"Failed to create VCAudioStreamConfig from config dictionary.";
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCAudioStream" code:-1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v28, &v27, 1)}];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCAudioStream configureInProcess:error:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v12 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
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
            v18 = "[AVCAudioStream configureInProcess:error:]";
            v19 = 1024;
            v20 = 1339;
            v21 = 2112;
            v22 = v12;
            v23 = 2048;
            selfCopy = self;
            v25 = 2112;
            v26 = @"Failed to create VCAudioStreamConfig from config dictionary.";
            _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d %@(%p) error=%@", &v15, 0x3Au);
          }
        }
      }
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)setUpAudioStreamOutOfProcessWithClientArgs:(id)args xpcArguments:(id)arguments error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  self->_connection = objc_alloc_init(AVConferenceXPCClient);
  v13 = @"vcMediaStreamDictionary";
  v14[0] = args;
  v9 = -[AVConferenceXPCClient sendMessageSync:arguments:xpcArguments:](self->_connection, "sendMessageSync:arguments:xpcArguments:", "vcMediaStreamInitializeAudio", [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1], arguments);
  [(AVCAudioStream *)self registerBlocksForDelegateNotifications];
  v10 = [(AVCAudioStream *)self validateInitializeConnectionResult:v9];
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
    -[AVCAudioStream setCapabilities:](self, "setCapabilities:", [v9 objectForKeyedSubscript:@"vcMediaStreamStreamCapabilities"]);
    self->_streamToken = [objc_msgSend(v9 objectForKeyedSubscript:{@"vcMediaStreamToken", "integerValue"}];
    self->_uplinkToken = [objc_msgSend(v9 objectForKeyedSubscript:{@"vcMediaStreamTokenUplink", "integerValue"}];
    self->_downlinkToken = [objc_msgSend(v9 objectForKeyedSubscript:{@"vcMediaStreamTokenDownlink", "integerValue"}];
  }

  return v11 == 0;
}

- (void)vcMediaStream:(id)stream didStartStream:(BOOL)startStream error:(id)error
{
  startStreamCopy = startStream;
  v25 = *MEMORY[0x1E69E9840];
  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didStart");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316674;
        v12 = v9;
        v13 = 2080;
        v14 = "[AVCAudioStream vcMediaStream:didStartStream:error:]";
        v15 = 1024;
        v16 = 1409;
        v17 = 2112;
        selfCopy = self;
        v19 = 2112;
        streamCopy = stream;
        v21 = 1024;
        v22 = startStreamCopy;
        v23 = 2112;
        errorCopy = error;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didStart instance=%@ stream=%@, didStartStream=%{BOOL}d, error=%@", &v11, 0x40u);
      }
    }

    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] stream:self didStart:startStreamCopy error:error];
  }
}

- (void)vcMediaStreamDidStop:(id)stop
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didStop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCAudioStream vcMediaStreamDidStop:]";
      v11 = 1024;
      v12 = 1415;
      v13 = 2112;
      selfCopy = self;
      v15 = 2112;
      stopCopy = stop;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didStop instance=%@ stream=%@", &v7, 0x30u);
    }
  }

  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] streamDidStop:self];
  }
}

- (void)vcMediaStream:(id)stream didPauseStream:(BOOL)pauseStream error:(id)error
{
  pauseStreamCopy = pauseStream;
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didPause");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316674;
      v12 = v9;
      v13 = 2080;
      v14 = "[AVCAudioStream vcMediaStream:didPauseStream:error:]";
      v15 = 1024;
      v16 = 1422;
      v17 = 2112;
      selfCopy = self;
      v19 = 2112;
      streamCopy = stream;
      v21 = 1024;
      v22 = pauseStreamCopy;
      v23 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didPause instance=%@ stream=%@, didPauseStream=%{BOOL}d, error=%@", &v11, 0x40u);
    }
  }

  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] stream:self didPause:pauseStreamCopy error:error];
  }
}

- (void)vcMediaStream:(id)stream didResumeStream:(BOOL)resumeStream error:(id)error
{
  resumeStreamCopy = resumeStream;
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-didResume");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316674;
      v12 = v9;
      v13 = 2080;
      v14 = "[AVCAudioStream vcMediaStream:didResumeStream:error:]";
      v15 = 1024;
      v16 = 1429;
      v17 = 2112;
      selfCopy = self;
      v19 = 2112;
      streamCopy = stream;
      v21 = 1024;
      v22 = resumeStreamCopy;
      v23 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-didResume instance=%@ stream=%@, didResumeStream=%{BOOL}d, error=%@", &v11, 0x40u);
    }
  }

  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] stream:self didResume:resumeStreamCopy error:error];
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
      v10 = "[AVCAudioStream vcMediaStreamDidRTPTimeOut:]";
      v11 = 1024;
      v12 = 1436;
      v13 = 2112;
      outCopy = out;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d stream=%@", &v7, 0x26u);
    }
  }

  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] streamDidRTPTimeOut:self];
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
      v10 = "[AVCAudioStream vcMediaStreamDidRTCPTimeOut:]";
      v11 = 1024;
      v12 = 1443;
      v13 = 2112;
      outCopy = out;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d stream=%@", &v7, 0x26u);
    }
  }

  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] streamDidRTCPTimeOut:self];
  }
}

- (void)vcMediaStream:(id)stream didReceiveDTMFEventWithDigit:(char)digit
{
  digitCopy = digit;
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
      v12 = "[AVCAudioStream vcMediaStream:didReceiveDTMFEventWithDigit:]";
      v13 = 1024;
      v14 = 1450;
      v15 = 2112;
      streamCopy = stream;
      v17 = 1024;
      v18 = digitCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d stream=%@, digit=%c", &v9, 0x2Cu);
    }
  }

  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] stream:self didReceiveDTMFEventWithDigit:digitCopy];
  }
}

- (void)vcMediaStream:(id)stream didReceiveRTCPPackets:(id)packets
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [packets countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(packets);
        }

        v11 = +[AVCRTCPPacket newPacketWithRTCPPacket:packetLength:](AVCRTCPPacket, "newPacketWithRTCPPacket:packetLength:", [*(*(&v32 + 1) + 8 * i) bytes], objc_msgSend(*(*(&v32 + 1) + 8 * i), "length"));
        if (v11)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [packets countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v8);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    if (stream)
    {
      v12 = [objc_msgSend(stream "description")];
      if (packets)
      {
LABEL_13:
        v13 = [objc_msgSend(packets "description")];
        goto LABEL_16;
      }
    }

    else
    {
      v12 = "<nil>";
      if (packets)
      {
        goto LABEL_13;
      }
    }

    v13 = "<nil>";
LABEL_16:
    asprintf(&__str, "stream=%s, rtcpPackets=%s", v12, v13);
    if (__str)
    {
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
            v24 = "[AVCAudioStream vcMediaStream:didReceiveRTCPPackets:]";
            v25 = 1024;
            v26 = 1469;
            v27 = 2080;
            v28 = "";
            v29 = 2080;
            v30 = v14;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v14 = strtok_r(0, "\n", &__lasts);
      }

      while (v14);
      free(__str);
    }
  }

  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] stream:self didReceiveRTCPPackets:v6];
  }
}

- (void)vcMediaStream:(id)stream updateInputFrequencyLevel:(id)level
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
      v12 = "[AVCAudioStream vcMediaStream:updateInputFrequencyLevel:]";
      v13 = 1024;
      v14 = 1478;
      v15 = 2112;
      streamCopy = stream;
      v17 = 2112;
      levelCopy = level;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d stream=%@, inputFreq=%@", &v9, 0x30u);
    }
  }

  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] stream:self updateInputFrequencyLevel:level];
  }
}

- (void)vcMediaStream:(id)stream updateOutputFrequencyLevel:(id)level
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
      v12 = "[AVCAudioStream vcMediaStream:updateOutputFrequencyLevel:]";
      v13 = 1024;
      v14 = 1485;
      v15 = 2112;
      streamCopy = stream;
      v17 = 2112;
      levelCopy = level;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d stream=%@, outputFreq=%@", &v9, 0x30u);
    }
  }

  [(AVCAudioStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCAudioStreamDelegate *)[(AVCAudioStream *)self delegate] stream:self updateOutputFrequencyLevel:level];
  }
}

- (void)vcMediaStreamServerDidDie:(id)die
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-serverDidDie");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCAudioStream vcMediaStreamServerDidDie:]";
      v11 = 1024;
      v12 = 1505;
      v13 = 2112;
      selfCopy = self;
      v15 = 2112;
      dieCopy = die;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-serverDidDie instance=%@ stream=%@", &v7, 0x30u);
    }
  }

  [(AVCAudioStream *)self stop];
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
            *(&v41 + 6) = "[AVCAudioStream addRemoteEndpoint:error:]";
            HIWORD(v41) = 1024;
            OUTLINED_FUNCTION_15_13(536, v28, v30, v32, v34, v36, v37, __lasts, __str, v40, v41, *(&v41 + 1), v42, v43, v44);
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

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-addRemoteEndpoint");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_21_8();
      *(&v41 + 6) = "[AVCAudioStream addRemoteEndpoint:error:]";
      HIWORD(v41) = 1024;
      OUTLINED_FUNCTION_12_11();
      OUTLINED_FUNCTION_23_6(&dword_1DB56E000, v20, v21, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-addRemoteEndpoint (%p) didSucceed=%d, error=%@", v22, v23, v24, v25, v27, v29, errorCopy, selfCopy, v35, *(&v35 + 1), __lasts, __str, v40);
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
            *(&v41 + 6) = "[AVCAudioStream removeRemoteEndpoint:error:]";
            HIWORD(v41) = 1024;
            OUTLINED_FUNCTION_15_13(552, v28, v30, v32, v34, v36, v37, __lasts, __str, v40, v41, *(&v41 + 1), v42, v43, v44);
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

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioStream-removeRemoteEndpoint");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_21_8();
      *(&v41 + 6) = "[AVCAudioStream removeRemoteEndpoint:error:]";
      HIWORD(v41) = 1024;
      OUTLINED_FUNCTION_12_11();
      OUTLINED_FUNCTION_23_6(&dword_1DB56E000, v20, v21, "AVCAudioStream [%s] %s:%d @:@ AVCAudioStream-removeRemoteEndpoint (%p) didSucceed=%d, error=%@", v22, v23, v24, v25, v27, v29, errorCopy, selfCopy, v35, *(&v35 + 1), __lasts, __str, v40);
    }
  }

  return v19;
}

- (BOOL)setUpAudioStreamInProcessWithClientArgs:(id)args xpcArguments:(id)arguments error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  v9 = [VCAudioStream alloc];
  v10 = -[VCAudioStream initWithClientPid:](v9, "initWithClientPid:", [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")]);
  self->_opaqueStream = v10;
  if (v10)
  {
    [(VCMediaStream *)v10 setDelegate:self];
    [(VCMediaStream *)self->_opaqueStream setDelegateFunctions:_AVCAudioStream_UpdateFrequencyLevel];
    v11 = [args mutableCopy];
    [v11 setObject:+[AVCAuditToken currentProcessToken](AVCAuditToken forKeyedSubscript:{"currentProcessToken"), @"vcMediaStreamClientAuditToken"}];
    v12 = [(VCAudioStream *)self->_opaqueStream setLocalParticipantInfo:v11 networkSockets:arguments withError:error];
    v13 = v12 != 0;
    if (v12)
    {
      [(AVCAudioStream *)self setCapabilities:v12];
    }

    self->_streamToken = [(VCMediaStream *)self->_opaqueStream streamToken];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (v13 || *error)
  {
    goto LABEL_7;
  }

  v33 = *MEMORY[0x1E696A588];
  v34[0] = @"Failed to create VCAudioStream";
  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCAudioStream" code:-2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v34, &v33, 1)}];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_7;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v26 = 136315906;
    v27 = v16;
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    v28 = @"Failed to create VCAudioStream";
    OUTLINED_FUNCTION_5_12();
LABEL_18:
    _os_log_error_impl(v17, v18, v19, v20, v21, v22);
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(AVCAudioStream *)self performSelector:sel_logPrefix];
  }

  else
  {
    v15 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v26 = 136316418;
      v27 = v23;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v28 = v15;
      v29 = 2048;
      selfCopy = self;
      v31 = v25;
      v32 = @"Failed to create VCAudioStream";
      v17 = &dword_1DB56E000;
      v20 = "AVCAudioStream [%s] %s:%d %@(%p) error=%@";
      v21 = &v26;
      v18 = v24;
      v19 = OS_LOG_TYPE_ERROR;
      v22 = 58;
      goto LABEL_18;
    }
  }

LABEL_7:

  return v13;
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
      [(AVCAudioStream *)self setConfiguration:0];
      v8 = 0;
      if (error)
      {
        *error = v12;
      }
    }

    else
    {
      [(AVCAudioStream *)self setConfiguration:process];
      return 1;
    }
  }

  return v8;
}

- (void)initWithLocalAddress:(_BYTE *)a3 networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:.cold.1(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = v6;
      OUTLINED_FUNCTION_0();
      v10 = 206;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "AVCAudioStream [%s] %s:%d AVCAudioStream: nw_endpoint_t in local AVCEndpoint should not be configured with a desired port", &v8, 0x1Cu);
    }
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)initWithLocalAddress:networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d AVCAudioStream: clientSessionID in the options is not of NSUUIDtype", v2, v3, v4, v5, v6);
}

- (void)initWithLocalAddress:(void *)a1 networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:.cold.3(void *a1)
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
    v12 = 180;
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
      v5 = "AVCAudioStream [%s] %s:%d %@(%p) Failed to create the clientArgs dictionary";
      v6 = &v10;
      v3 = v9;
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithLocalAddress:networkSockets:IDSDestination:rtpConnectionClientID:rtcpConnectionClientID:localEndpoint:callID:options:error:.cold.4()
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
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Server died", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Server died", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.3()
{
  OUTLINED_FUNCTION_18_2();
  [v0 objectForKeyedSubscript:@"ERROR"];
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x30u);
}

- (void)validateInitializeConnectionResult:.cold.4()
{
  OUTLINED_FUNCTION_18_2();
  [v0 objectForKeyedSubscript:@"ERROR"];
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

- (void)validateInitializeConnectionResult:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x26u);
}

- (void)validateInitializeConnectionResult:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)validateInitializeConnectionResult:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Missing stream token for the downlink", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Missing stream token for the downlink", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Missing stream token for the uplink", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Missing stream token for the uplink", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Missing stream token", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.12()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Missing stream token", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.13()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x26u);
}

- (void)validateInitializeConnectionResult:.cold.14()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)validateInitializeConnectionResult:.cold.15()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Missing result dictionary", v2, v3, v4, v5, v6);
}

- (void)validateInitializeConnectionResult:.cold.16()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d Missing result dictionary", v2, v3, v4, v5, v6);
}

- (void)configure:(uint64_t)a1 error:(id *)a2 .cold.1(uint64_t a1, id *a2)
{
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x26u);
}

- (void)configure:(uint64_t)a1 error:(id *)a2 .cold.2(uint64_t a1, id *a2)
{
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)manageRemoteEndpointInProcess:actionType:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)manageRemoteEndpointOutOfProcess:(uint64_t)a1 actionType:(void *)a2 error:.cold.1(uint64_t a1, void *a2)
{
  [a2 description];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)manageRemoteEndpointOutOfProcess:actionType:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
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
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

- (void)setVolume:.cold.1()
{
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d AVCAudioStream: AVC server died, notifying client", v2, v3, v4, v5, v6);
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d AVCAudioStream: Media server died, notifying client", v2, v3, v4, v5, v6);
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_292_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p received input frequency metering packets", v2, v3, v4, v5);
}

void __56__AVCAudioStream_registerBlocksForDelegateNotifications__block_invoke_297_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "AVCAudioStream [%s] %s:%d AVCAudioStream: notified client %p received input frequency metering packets", v2, v3, v4, v5);
}

- (void)configureInProcess:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end