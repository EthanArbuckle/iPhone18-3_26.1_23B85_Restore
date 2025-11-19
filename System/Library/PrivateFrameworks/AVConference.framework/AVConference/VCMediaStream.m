@interface VCMediaStream
+ (BOOL)isSameSRTPKey:(id)a3 newKey:(id)a4;
- (BOOL)addRemoteEndpoint:(id)a3 error:(id *)a4;
- (BOOL)generateReceptionReportList:(_RTCP_RECEPTION_REPORT *)a3 reportCount:(char *)a4;
- (BOOL)handleEncryptionInfoChange:(id)a3;
- (BOOL)initializeTransportSessionWithIDSDestination:(id)a3 error:(id *)a4;
- (BOOL)initializeTransportSessionWithLocalNWEnpoint:(id)a3 clientAuditToken:(id)a4 error:(id *)a5;
- (BOOL)initializeTransportSessionWithRTPNWConnectionID:(id)a3 rtcpNWConnectionID:(id)a4 error:(id *)a5 isConnectionStartDelayed:(BOOL)a6;
- (BOOL)initializeTransportSessionWithSocketDictionary:(id)a3 error:(id *)a4;
- (BOOL)initializeTransportSetupInfoWithIDSDestination:(id)a3 error:(id *)a4;
- (BOOL)initializeTransportSetupInfoWithTransportSession:(id *)a3;
- (BOOL)isDecryptionTimeoutEnabled;
- (BOOL)isEndpointManagementAllowed:(id *)a3;
- (BOOL)isRTCPSendEnabled;
- (BOOL)isRTCPTimeoutEnabled;
- (BOOL)isRTPTimeoutEnabled;
- (BOOL)isSendingMedia;
- (BOOL)removeRemoteEndpoint:(id)a3 error:(id *)a4;
- (BOOL)setStreamConfig:(id)a3 withError:(id *)a4;
- (BOOL)setupNWConnectionWithID:(id)a3;
- (BOOL)shouldFinalizeAggregationOnStop;
- (BOOL)startMediaTransportsWithError:(id *)a3;
- (BOOL)updateNWConnectionClientIDWithConfig:(id)a3 error:(id *)a4;
- (BOOL)updateRemoteAddressWithConfig:(id)a3 error:(id *)a4;
- (VCMediaStream)init;
- (VCMediaStream)initWithTransportSessionID:(unsigned int)a3;
- (VCMediaStream)initWithTransportSessionID:(unsigned int)a3 localSSRC:(unsigned int)a4 streamToken:(int64_t)a5 logPrefix:(id)a6;
- (VCMediaStreamConfig)defaultStreamConfig;
- (VCMediaStreamConfig)oneToOneStreamConfig;
- (char)streamStateToString:(int)a3;
- (double)computeNextTimoutWithEnabledTime:(double)a3 timeoutInterval:(double)a4 lastReceivedPacketTime:(double)a5 currentTime:(double)a6 lastTimeoutReportTime:(double)a7 timeoutReportInterval:(double)a8;
- (id)createTransportWithStreamConfig:(id)a3 ssrc:(unsigned int)a4;
- (id)getInvalidParamErrorForSetPause:(BOOL)a3 didSucceed:(BOOL)a4;
- (id)getMediaStreamConfigForControlInfoGenerator:(id)a3;
- (id)getSharingGroupWithPolicy:(unsigned int)a3;
- (id)setLocalParticipantInfo:(id)a3 networkSockets:(id)a4 withError:(id *)a5;
- (id)setPause:(BOOL)a3;
- (id)setUpRTPWithLocalNWEndpoint:(id)a3 error:(id *)a4;
- (id)setupRTPForIDS;
- (id)setupRTPWithIDSDestination:(id)a3 error:(id *)a4;
- (id)setupRTPWithIPInfo:(id)a3 error:(id *)a4;
- (id)setupRTPWithLocalParticipantInfo:(id)a3 error:(id *)a4;
- (id)setupRTPWithNWConnection:(id)a3 error:(id *)a4;
- (id)setupRTPWithSocketDictionary:(id)a3 error:(id *)a4;
- (id)start;
- (id)stopWithError:(id)a3;
- (int)handleMediaCallbackNotification:(int)a3 inData:(void *)a4 outData:(void *)a5;
- (int)registerStatisticsHandler:(id)a3 statisticType:(int)a4;
- (int)setUpWiFiChannelSequenceMonitor;
- (int)updateConnectionWithConfig:(id)a3;
- (int64_t)streamDirection;
- (tagHANDLE)createRTPHandleWithStreamConfig:(id)a3 payloadType:(int)a4 localSSRC:(unsigned int)a5;
- (unsigned)endReason;
- (unsigned)getExtendedSequenceNumberForSequenceNumber:(unsigned __int16)a3;
- (unsigned)getRTCPReportNTPTimeMiddle32ForReportId:(unsigned __int8)a3;
- (void)applyClientSessionID:(int)a3 clientUserInfo:(id)a4;
- (void)checkRTCPPacketTimeoutAgainstTime:(double)a3 lastReceivedPacketTime:(double)a4;
- (void)checkRTPPacketTimeoutAgainstTime:(double)a3 lastReceivedPacketTime:(double)a4;
- (void)cleanUpWiFiChannelSequenceMonitor;
- (void)cleanupNWConnection:(id *)a3;
- (void)collectChannelSequenceMetrics:(id)a3;
- (void)configureDefaultMediaKeyIndexForStreamConfig:(id)a3;
- (void)createLocalMediaControlInfoGeneratorWithType:(unsigned int)a3 version:(unsigned __int8)a4;
- (void)createNWMonitor;
- (void)dealloc;
- (void)decryptionStatusChanged:(BOOL)a3;
- (void)defaultStreamConfig;
- (void)deregisterAggregationHandlers;
- (void)destroyNWMonitor;
- (void)dupNWConnectionBackingSocket:(int *)a3;
- (void)handleStartDidSucceed:(BOOL)a3 withError:(id)a4;
- (void)handleStartTransportSessionCompletionBlockDidSucceed:(BOOL)a3 withError:(id)a4;
- (void)handleTransportSessionEvent:(unsigned int)a3 info:(id)a4;
- (void)initializeTransportSetupInfoWithRTPSocket:(int)a3 RTCPSocket:(int)a4;
- (void)initializeTransportSetupInfoWithSocketDictionary:(id)a3;
- (void)initializeWRMUsingRtpHandle:(tagHANDLE *)a3;
- (void)lock;
- (void)manageRateAdaptationRemoteEndpointForEndpointWithSSRC:(unsigned int)a3 actionType:(unsigned __int8)a4;
- (void)notifyDelegateDidReceiveRTCPPackets:(_RTCPPacketList *)a3;
- (void)oneToOneStreamConfig;
- (void)processDecryptionTimeoutSettingChange;
- (void)processMKICollision;
- (void)processRTCPTimeoutSettingChange;
- (void)processRTPTimeoutSettingChange;
- (void)registerAggregationHandlers;
- (void)registerCallbacksForMediaControlInfoGenerator:(void *)a3 forDirection:(int64_t)a4 options:(unsigned int)a5;
- (void)registerMediaControlInfoGeneratorWithConfigs:(id)a3;
- (void)registerQoSReportingSource;
- (void)registerStatistics:(id)a3;
- (void)reportTransportInfo;
- (void)resetDecryptionTimeout;
- (void)resetRTCPSendHeartbeatTimer:(unint64_t)a3;
- (void)resetTimeoutHeartbeatTimer:(unint64_t)a3;
- (void)resetTimeoutHeartbeatWithRTPTimeout:(double)a3 rtcpTimeout:(double)a4 decryptionTimeout:(double)a5 currentTime:(double)a6;
- (void)rtcpSendHeartbeat;
- (void)sendControlPacketWithParameters:(_RTCP_SEND_CONTROL_PARAMETERS *)a3;
- (void)setBasebandCongestionDetector:(id)a3;
- (void)setDecryptionTimeOutEnabled:(BOOL)a3;
- (void)setDecryptionTimeOutInterval:(double)a3;
- (void)setMediaQueue:(tagVCMediaQueue *)a3;
- (void)setMediaQueueInRateControlConfig:(id)a3;
- (void)setMediaQueueInStreamConfig:(id)a3;
- (void)setPause:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)setRtcpEnabled:(BOOL)a3;
- (void)setRtcpSendInterval:(double)a3;
- (void)setRtcpTimeOutEnabled:(BOOL)a3;
- (void)setRtcpTimeOutInterval:(double)a3;
- (void)setRtpTimeOutEnabled:(BOOL)a3;
- (void)setRtpTimeOutInterval:(double)a3;
- (void)setState:(int)a3;
- (void)setStreamDirection:(int64_t)a3;
- (void)setupCallbacksWithNWConnectionMonitor:(tagVCNWConnectionMonitor *)a3;
- (void)setupMediaStream;
- (void)setupRTPForIDS;
- (void)start;
- (void)startRTCPSendHeartbeat;
- (void)startTimeoutHeartbeat;
- (void)startTransportSessionWithCompletion:(id)a3;
- (void)startWithCompletionHandler:(id)a3;
- (void)stopInternalWithHandler:(id)a3;
- (void)stopMediaTransports;
- (void)stopRTCPSendHeartbeat;
- (void)stopTimeoutHeartbeat;
- (void)timeoutHeartbeat;
- (void)unlock;
- (void)unregisterMediaControlInfoGenerator;
- (void)unregisterQoSReportingSource;
- (void)unregisterStatistics;
- (void)unregisterWRMCallback;
- (void)updateTransportsWithConstantConnectionOverhead:(unsigned int)a3;
@end

@implementation VCMediaStream

+ (BOOL)isSameSRTPKey:(id)a3 newKey:(id)a4
{
  if (a3)
  {
    return [a3 isEqualToData:a4];
  }

  else
  {
    return a4 == 0;
  }
}

- (VCMediaStreamConfig)defaultStreamConfig
{
  if ([(NSMutableArray *)self->_transportArray count])
  {
    v3 = [(NSMutableArray *)self->_transportArray objectAtIndexedSubscript:0];

    return [v3 streamConfig];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream defaultStreamConfig];
      }
    }

    return 0;
  }
}

- (VCMediaStreamConfig)oneToOneStreamConfig
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  transportArray = self->_transportArray;
  v3 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(transportArray);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v7 "streamConfig")])
        {
          return [v7 streamConfig];
        }
      }

      v4 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v10 objects:v9 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaStream oneToOneStreamConfig];
    }
  }

  return 0;
}

- (BOOL)isSendingMedia
{
  v2 = [(VCMediaStream *)self defaultStreamConfig];
  v3 = [(VCMediaStreamConfig *)v2 direction];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(VCMediaStreamConfig *)v2 direction]== 3;
  }

  return v3;
}

- (void)decryptionStatusChanged:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  if (v3 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      v8 = 136316674;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCMediaStream decryptionStatusChanged:]";
      v12 = 1024;
      v13 = 183;
      v14 = 2080;
      v15 = v7;
      v16 = 2048;
      v17 = self;
      v18 = 2080;
      v19 = "[VCMediaStream decryptionStatusChanged:]";
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s canDecrypt[%d]", &v8, 0x40u);
    }
  }

  if (v3)
  {
    self->_decryptionErrorStartTime = NAN;
  }

  pthread_mutex_unlock(&self->_streamLock);
}

- (void)processMKICollision
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (id)setupRTPWithSocketDictionary:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCMediaStream setupRTPWithSocketDictionary:error:]";
        v16 = 1024;
        v17 = 206;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d UseTransportStreamsForSockets feature flag set", buf, 0x1Cu);
      }
    }

    if (![(VCMediaStream *)self initializeTransportSessionWithSocketDictionary:a3 error:a4])
    {
      return 0;
    }
  }

  else
  {
    [(VCMediaStream *)self initializeTransportSetupInfoWithSocketDictionary:a3];
  }

  v11[0] = [(VCMediaStream *)self supportedPayloads];
  v10[1] = @"avcKeyRTPLocalSSRC";
  v11[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_localSSRC];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
}

- (BOOL)initializeTransportSetupInfoWithTransportSession:(id *)a3
{
  v8[5] = *MEMORY[0x1E69E9840];
  transportSession = self->_transportSession;
  if (transportSession)
  {
    v5 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__VCMediaStream_initializeTransportSetupInfoWithTransportSession___block_invoke;
    v8[3] = &unk_1E85F7918;
    v8[4] = v5;
    [(VCTransportSession *)self->_transportSession setEventHandler:v8];
    self->_transportSetupInfo.setupType = 5;
    self->_transportSetupInfo.var0.transportStreamInfo.context = self->_transportSession;
    self->_transportSetupInfo.var0.transportStreamInfo.creationCallback = _VCMediaStream_TransportStreamCreationCallback;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream initializeTransportSetupInfoWithTransportSession:];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a3, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 226], @"Transport session creation failed", @"Invalid parameter");
  }

  return transportSession != 0;
}

void __66__VCMediaStream_initializeTransportSetupInfoWithTransportSession___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
  [v5 handleTransportSessionEvent:a2 info:a3];
}

- (void)handleStartTransportSessionCompletionBlockDidSucceed:(BOOL)a3 withError:(id)a4
{
  startTransportSessionCompletionBlock = self->_startTransportSessionCompletionBlock;
  if (startTransportSessionCompletionBlock)
  {
    v6 = a3;
    v8 = startTransportSessionCompletionBlock;

    self->_startTransportSessionCompletionBlock = 0;
    v8[2](v8, v6, a4);
  }
}

- (void)handleTransportSessionEvent:(unsigned int)a3 info:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  if (a3 == 1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136315906;
          *&v15[4] = v8;
          *&v15[12] = 2080;
          *&v15[14] = "[VCMediaStream handleTransportSessionEvent:info:]";
          *&v15[22] = 1024;
          LODWORD(v16) = 263;
          WORD2(v16) = 2112;
          *(&v16 + 6) = a4;
          v10 = "VCMediaStream [%s] %s:%d Attempting to connect link=%@";
          v11 = v9;
          v12 = 38;
LABEL_22:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v15, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136316418;
          *&v15[4] = v13;
          *&v15[12] = 2080;
          *&v15[14] = "[VCMediaStream handleTransportSessionEvent:info:]";
          *&v15[22] = 1024;
          LODWORD(v16) = 263;
          WORD2(v16) = 2112;
          *(&v16 + 6) = v7;
          HIWORD(v16) = 2048;
          v17 = self;
          LOWORD(v18) = 2112;
          *(&v18 + 2) = a4;
          v10 = "VCMediaStream [%s] %s:%d %@(%p) Attempting to connect link=%@";
          v11 = v14;
          v12 = 58;
          goto LABEL_22;
        }
      }
    }

    [(VCMediaStream *)self handleStartTransportSessionCompletionBlockDidSucceed:1 withError:0, *v15, *&v15[16], v16, v17, v18];
    [(VCMediaStream *)self handleTransportSessionConnectionEvent];
    if (!self)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a3 == 7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream handleTransportSessionEvent:info:];
      }
    }

    [(VCMediaStream *)self handleStartTransportSessionCompletionBlockDidSucceed:0 withError:a4];
  }

  if (self)
  {
LABEL_10:
    pthread_mutex_unlock(&self->_streamLock);
  }
}

- (BOOL)initializeTransportSessionWithSocketDictionary:(id)a3 error:(id *)a4
{
  self->_transportSession = [[VCTransportSessionSocket alloc] initWithSocketDictionary:a3 notificationHandler:self->_notificationHandler eventHandler:self->_packetEventHandler handlerQueue:+[VCVTPWrapper context:"targetQueue"], self];

  return [(VCMediaStream *)self initializeTransportSetupInfoWithTransportSession:a4];
}

- (void)initializeTransportSetupInfoWithSocketDictionary:(id)a3
{
  v5 = xpc_dictionary_dup_fd(a3, "avcKeySharedSocket");
  v6 = v5;
  if (v5 == -1)
  {
    v6 = xpc_dictionary_dup_fd(a3, "avcKeyRTPSocket");
    v5 = xpc_dictionary_dup_fd(a3, "avcKeyRTCPSocket");
  }

  [(VCMediaStream *)self initializeTransportSetupInfoWithRTPSocket:v6 RTCPSocket:v5];
}

- (void)initializeTransportSetupInfoWithRTPSocket:(int)a3 RTCPSocket:(int)a4
{
  v23 = *MEMORY[0x1E69E9840];
  p_transportSetupInfo = &self->_transportSetupInfo;
  self->_transportSetupInfo.setupType = 1;
  self->_transportSetupInfo.var0.socketInfo.rtpSocket = a3;
  self->_transportSetupInfo.var0.socketInfo.rtcpSocket = a4;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      rtpSocket = p_transportSetupInfo->var0.socketInfo.rtpSocket;
      rtcpSocket = p_transportSetupInfo->var0.socketInfo.rtcpSocket;
      v11 = 136316418;
      v12 = v7;
      v13 = 2080;
      v14 = "[VCMediaStream initializeTransportSetupInfoWithRTPSocket:RTCPSocket:]";
      v15 = 1024;
      v16 = 300;
      v17 = 1024;
      v18 = a3 == a4;
      v19 = 1024;
      v20 = rtpSocket;
      v21 = 1024;
      v22 = rtcpSocket;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d isShared:%d sockets rtp(%d) rtcp(%d)", &v11, 0x2Eu);
    }
  }
}

- (BOOL)isEndpointManagementAllowed:(id *)a3
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a3, 32000, 120, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 308], @"Internal error", @"Protocol error: Adding/Removing remote endpoints is only valid for multilink transport");
  }

  return isKindOfClass & 1;
}

- (void)manageRateAdaptationRemoteEndpointForEndpointWithSSRC:(unsigned int)a3 actionType:(unsigned __int8)a4
{
  if (a3)
  {
    rateAdaptation = self->_rateAdaptation;

    [VCMediaStreamRateAdaptation manageRemoteEndpointForEndpointWithSSRC:"manageRemoteEndpointForEndpointWithSSRC:actionType:" actionType:?];
  }

  else
  {
    [VCMediaStream manageRateAdaptationRemoteEndpointForEndpointWithSSRC:? actionType:?];
  }
}

- (BOOL)addRemoteEndpoint:(id)a3 error:(id *)a4
{
  if ([(VCMediaStream *)self isEndpointManagementAllowed:a4])
  {
    -[VCMediaStream manageRateAdaptationRemoteEndpointForEndpointWithSSRC:actionType:](self, "manageRateAdaptationRemoteEndpointForEndpointWithSSRC:actionType:", [a3 rtpSSRC], 0);
    if (([(VCTransportSession *)self->_transportSession addRemoteEndpoint:a3 error:a4]& 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      [(VCObject *)self reportingAgent];
      v7 = 1;
      reportingGenericEvent();
    }
  }

  else
  {
    [VCMediaStream addRemoteEndpoint:error:];
    return v9;
  }

  return v7;
}

- (BOOL)removeRemoteEndpoint:(id)a3 error:(id *)a4
{
  if ([(VCMediaStream *)self isEndpointManagementAllowed:a4])
  {
    -[VCMediaStream manageRateAdaptationRemoteEndpointForEndpointWithSSRC:actionType:](self, "manageRateAdaptationRemoteEndpointForEndpointWithSSRC:actionType:", [a3 rtpSSRC], 1);
    v7 = [(VCTransportSession *)self->_transportSession removeRemoteEndpoint:a3 error:a4];
    if (v7 < 0)
    {
      if (a4 && !*a4)
      {
        +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32000, 120, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 356], @"Internal error", @"Error while removing the endpoint");
      }
    }

    else
    {
      [(VCObject *)self reportingAgent];
      reportingGenericEvent();
    }
  }

  else
  {
    [VCMediaStream removeRemoteEndpoint:error:];
    v7 = v9;
  }

  return v7 >= 0;
}

- (BOOL)initializeTransportSessionWithLocalNWEnpoint:(id)a3 clientAuditToken:(id)a4 error:(id *)a5
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"vcTransportSessionMultilinkOptionUseBackingSocket";
  v11[1] = @"vcTransportSessionMultiLinkOptionBackingSocketReceiveBufferSize";
  v12[0] = [MEMORY[0x1E696AD98] numberWithBool:{-[VCMediaStream shouldUseNWConnectionBackingSocket](self, "shouldUseNWConnectionBackingSocket")}];
  v12[1] = &unk_1F579A440;
  self->_transportSession = -[VCTransportSessionMultiLink initWithLocalEndpoint:clientAuditToken:handlerQueue:context:eventHandler:options:error:]([VCTransportSessionMultiLink alloc], "initWithLocalEndpoint:clientAuditToken:handlerQueue:context:eventHandler:options:error:", a3, a4, +[VCVTPWrapper targetQueue](VCVTPWrapper, "targetQueue"), self, self->_packetEventHandler, [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2], a5);
  self->_transportSetupInfo.var0.ipInfo.srcIPPORT.szIfName[14] = 1;
  if (self->_transportSession)
  {
    return [(VCMediaStream *)self initializeTransportSetupInfoWithTransportSession:a5];
  }

  [VCMediaStream initializeTransportSessionWithLocalNWEnpoint:clientAuditToken:error:];
  return v10;
}

- (id)setUpRTPWithLocalNWEndpoint:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v7)
  {
    [VCMediaStream setUpRTPWithLocalNWEndpoint:? error:?];
    return v7;
  }

  v8 = [a3 objectForKeyedSubscript:@"vcMediaStreamLocalNWEndpoint"];
  if (!v8)
  {
    [VCMediaStream setUpRTPWithLocalNWEndpoint:? error:?];
    return v7;
  }

  v9 = v8;
  v10 = [a3 objectForKeyedSubscript:@"vcMediaStreamClientAuditToken"];
  if (!v10)
  {
    [VCMediaStream setUpRTPWithLocalNWEndpoint:? error:?];
    return v7;
  }

  if (![(VCMediaStream *)self initializeTransportSessionWithLocalNWEnpoint:v9 clientAuditToken:v10 error:a4])
  {
    [VCMediaStream setUpRTPWithLocalNWEndpoint:? error:?];
    return v7;
  }

  v11 = [(VCTransportSession *)self->_transportSession localPort];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_16;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315906;
    v24 = v13;
    v25 = 2080;
    v26 = "[VCMediaStream setUpRTPWithLocalNWEndpoint:error:]";
    v27 = 1024;
    v28 = 404;
    v29 = 1024;
    LODWORD(v30) = v11;
    v15 = "VCMediaStream [%s] %s:%d Local RTP port reserved, port=%u";
    v16 = v14;
    v17 = 34;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCMediaStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_16;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136316418;
    v24 = v18;
    v25 = 2080;
    v26 = "[VCMediaStream setUpRTPWithLocalNWEndpoint:error:]";
    v27 = 1024;
    v28 = 404;
    v29 = 2112;
    v30 = v12;
    v31 = 2048;
    v32 = self;
    v33 = 1024;
    v34 = v11;
    v15 = "VCMediaStream [%s] %s:%d %@(%p) Local RTP port reserved, port=%u";
    v16 = v19;
    v17 = 54;
  }

  _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_16:
  v22[0] = [(VCMediaStream *)self supportedPayloads];
  v21[1] = @"avcKeyRTPLocalSSRC";
  v22[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_localSSRC];
  v21[2] = @"avcKeySourcePort";
  v22[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v11];
  [v7 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, v21, 3)}];
  return v7;
}

- (void)cleanupNWConnection:(id *)a3
{
  if (a3)
  {
    if (*a3)
    {
      nw_connection_cancel(*a3);
      nw_connection_set_state_changed_handler(*a3, 0);
      nw_release(*a3);
      *a3 = 0;
    }
  }
}

- (id)setupRTPWithNWConnection:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if ([a3 objectForKeyedSubscript:@"vcMediaStreamConnectionClientID"])
  {
    v7 = [a3 objectForKeyedSubscript:@"vcMediaStreamConnectionClientID"];
  }

  else
  {
    v7 = 0;
  }

  if ([a3 objectForKeyedSubscript:@"vcMediaStreamRTCPConnectionClientID"])
  {
    v8 = [a3 objectForKeyedSubscript:@"vcMediaStreamRTCPConnectionClientID"];
  }

  else
  {
    v8 = 0;
  }

  if ([a3 objectForKeyedSubscript:@"vcMediaStreamDelayNWConnectionStart"])
  {
    self->_isNWConnectionStartDelayed = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamDelayNWConnectionStart", "BOOLValue"}];
  }

  if (!v7)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 470];
    v13 = @"Invalid Parameter";
    v14 = @"connectionID should not be nil";
    v15 = a4;
    v16 = 32016;
    v17 = 105;
LABEL_21:
    [GKVoiceChatError getNSError:v15 code:v16 detailedCode:v17 filePath:v12 description:v13 reason:v14];
    return 0;
  }

  if (self->_transportSetupInfo.setupType == 4)
  {
    [(VCMediaStream *)self cleanupNWConnection:&self->_transportSetupInfo.var0];
  }

  if (_os_feature_enabled_impl())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = v9;
        v25 = 2080;
        v26 = "[VCMediaStream setupRTPWithNWConnection:error:]";
        v27 = 1024;
        v28 = 482;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d UseTransportStreamsForNW feature flag set", buf, 0x1Cu);
      }
    }

    v11 = [(VCMediaStream *)self initializeTransportSessionWithRTPNWConnectionID:v7 rtcpNWConnectionID:v8 error:a4 isConnectionStartDelayed:self->_isNWConnectionStartDelayed];
  }

  else
  {
    v11 = [(VCMediaStream *)self setupNWConnectionWithID:v7];
  }

  v18 = v11;
  v21[0] = @"avcKeySupportedCodecs";
  v22[0] = [(VCMediaStream *)self supportedPayloads];
  v21[1] = @"avcKeyRTPLocalSSRC";
  v22[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_localSSRC];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  if (!v18)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 495];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to retrieve NWConnection for clientID '%@'", v7];
    v14 = @"No NWConnection matching clientID found";
    v15 = a4;
    v16 = 32002;
    v17 = 116;
    v12 = v20;
    goto LABEL_21;
  }

  return result;
}

- (void)dupNWConnectionBackingSocket:(int *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  *a3 = -1;
  p_transportSetupInfo = &self->_transportSetupInfo;
  if (!self->_transportSetupInfo.var0.transportStreamInfo.context)
  {
    [VCMediaStream dupNWConnectionBackingSocket:];
    return;
  }

  connected_socket = nw_connection_get_connected_socket();
  if (connected_socket != -1)
  {
    v6 = connected_socket;
    v7 = dup(connected_socket);
    *a3 = v7;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v7 == -1)
    {
      if (ErrorLogLevelForModule >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          context = p_transportSetupInfo->var0.transportStreamInfo.context;
          v19 = 136316162;
          v20 = v16;
          v21 = 2080;
          v22 = "[VCMediaStream dupNWConnectionBackingSocket:]";
          v23 = 1024;
          v24 = 513;
          v25 = 2048;
          v26 = context;
          v27 = 1024;
          v28 = v6;
          v13 = "VCMediaStream [%s] %s:%d nw_connection %p is backed by socket %d. Failed to dup";
          v14 = v17;
          v15 = 44;
          goto LABEL_10;
        }
      }
    }

    else if (ErrorLogLevelForModule >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = p_transportSetupInfo->var0.transportStreamInfo.context;
        v12 = *a3;
        v19 = 136316418;
        v20 = v9;
        v21 = 2080;
        v22 = "[VCMediaStream dupNWConnectionBackingSocket:]";
        v23 = 1024;
        v24 = 511;
        v25 = 2048;
        v26 = v11;
        v27 = 1024;
        v28 = v6;
        v29 = 1024;
        v30 = v12;
        v13 = "VCMediaStream [%s] %s:%d nw_connection %p is backed by socket %d duped to %d";
        v14 = v10;
        v15 = 50;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
      }
    }
  }
}

- (BOOL)setupNWConnectionWithID:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -1;
  p_transportSetupInfo = &self->_transportSetupInfo;
  self->_transportSetupInfo.setupType = 4;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a3];
  v6 = v5;
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream setupNWConnectionWithID:];
      }
    }

    goto LABEL_20;
  }

  v24[0] = 0;
  v24[1] = 0;
  [v5 getUUIDBytes:v24];
  +[VCVTPWrapper connectionContext];
  v7 = nw_connection_create_with_client_id();
  p_transportSetupInfo->var0.transportStreamInfo.context = v7;
  p_var0 = &p_transportSetupInfo->var0;
  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream setupNWConnectionWithID:];
      }
    }

LABEL_20:
    v13 = 0;
    goto LABEL_10;
  }

  nw_connection_set_queue(v7, +[VCVTPWrapper targetQueue]);
  v9 = dispatch_semaphore_create(0);
  v10 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v11 = *p_var0;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __41__VCMediaStream_setupNWConnectionWithID___block_invoke;
  handler[3] = &unk_1E85F82B0;
  handler[6] = &v16;
  handler[7] = &v20;
  handler[4] = v10;
  handler[5] = v9;
  nw_connection_set_state_changed_handler(v11, handler);
  nw_connection_start(*p_var0);
  v12 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v9, v12))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream setupNWConnectionWithID:];
      }
    }

LABEL_30:
    v13 = 0;
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v21[3] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream setupNWConnectionWithID:];
      }
    }

    goto LABEL_30;
  }

  if (*(v17 + 6) != -1)
  {
    [(VCMediaStream *)self cleanupNWConnection:&p_transportSetupInfo->var0];
    [(VCMediaStream *)self initializeTransportSetupInfoWithRTPSocket:*(v17 + 6) RTCPSocket:*(v17 + 6)];
    goto LABEL_8;
  }

  if ((VTP_ScheduleReceiveForNWConnection() & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream setupNWConnectionWithID:];
      }
    }

    goto LABEL_30;
  }

LABEL_8:
  v13 = 1;
  if (v9)
  {
LABEL_9:
    dispatch_release(v9);
  }

LABEL_10:

  if (!v13 && p_transportSetupInfo->setupType == 4)
  {
    [(VCMediaStream *)self cleanupNWConnection:&p_transportSetupInfo->var0];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v13;
}

void __41__VCMediaStream_setupNWConnectionWithID___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = v6;
      v14 = 2080;
      v15 = "[VCMediaStream setupNWConnectionWithID:]_block_invoke";
      v16 = 1024;
      v17 = 544;
      v18 = 1024;
      LODWORD(v19) = a2;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d Get nw connection state %d", &v12, 0x22u);
    }
  }

  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v12 = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCMediaStream setupNWConnectionWithID:]_block_invoke";
        v16 = 1024;
        v17 = 546;
        v18 = 2112;
        v19 = a3;
        v20 = 1024;
        v21 = a2;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d Get error %@ from nw connection with state: %d!", &v12, 0x2Cu);
      }
    }
  }

  if (a2 != 4)
  {
    if (a2 != 3)
    {
      return;
    }

    v10 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
    if (v10)
    {
      v11 = v10;
      [v10 dupNWConnectionBackingSocket:*(*(a1 + 48) + 8) + 24];
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)setupCallbacksWithNWConnectionMonitor:(tagVCNWConnectionMonitor *)a3
{
  if (a3)
  {
    v5 = VTP_NWConnectionQueue();
    VCNWConnectionMonitor_SetNotificationHandler(a3, v5, self, self->_notificationHandler);
    v6 = VTP_NWConnectionQueue();
    packetEventHandler = self->_packetEventHandler;

    VCNWConnectionMonitor_SetPacketEventHandler(a3, v6, self, packetEventHandler);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaStream setupCallbacksWithNWConnectionMonitor:];
    }
  }
}

- (id)setupRTPWithLocalParticipantInfo:(id)a3 error:(id *)a4
{
  if ([a3 objectForKeyedSubscript:@"vcMediaStreamLocalNWEndpoint"])
  {

    return [(VCMediaStream *)self setUpRTPWithLocalNWEndpoint:a3 error:a4];
  }

  else if ([a3 objectForKeyedSubscript:@"vcMediaStreamConnectionClientID"])
  {

    return [(VCMediaStream *)self setupRTPWithNWConnection:a3 error:a4];
  }

  else if ([a3 objectForKeyedSubscript:@"vcMediaStreamDestID"])
  {
    v8 = [a3 objectForKeyedSubscript:@"vcMediaStreamDestID"];
    self->_idsDestination = v8;

    return [(VCMediaStream *)self setupRTPWithIDSDestination:v8 error:a4];
  }

  else if ([a3 objectForKeyedSubscript:@"vcMediaStreamSourceIP"])
  {

    return [(VCMediaStream *)self setupRTPWithIPInfo:a3 error:a4];
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 619], @"Invalid Parameter", @"No IDS destination, IP Address, NWConnection client UUID or NWEndpoint specified");
    return 0;
  }
}

- (id)setupRTPForIDS
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if (!_os_feature_enabled_impl())
  {
    self->_transportSetupInfo.setupType = 2;
LABEL_11:
    v7[0] = @"avcKeySupportedCodecs";
    v8[0] = [(VCMediaStream *)self supportedPayloads];
    v7[1] = @"avcKeyRTPLocalSSRC";
    v8[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_localSSRC];
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = v3;
      v11 = 2080;
      v12 = "[VCMediaStream setupRTPForIDS]";
      v13 = 1024;
      v14 = 631;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d UseTransportStreamsForProxy feature flag set", buf, 0x1Cu);
    }
  }

  self->_transportSession = [[VCTransportSessionProxy alloc] initWithTransportSessionID:self->_transportSessionID];
  if ([(VCMediaStream *)self initializeTransportSetupInfoWithTransportSession:&v6])
  {
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaStream setupRTPForIDS];
    }
  }

  return 0;
}

- (id)setupRTPWithIDSDestination:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (_os_feature_enabled_impl())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v13 = v7;
          v14 = 2080;
          v15 = "[VCMediaStream setupRTPWithIDSDestination:error:]";
          v16 = 1024;
          v17 = 660;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d UseTransportStreamsForIDS feature flag set", buf, 0x1Cu);
        }
      }

      if (![(VCMediaStream *)self initializeTransportSessionWithIDSDestination:a3 error:a4])
      {
        return 0;
      }

LABEL_10:
      v10[0] = @"avcKeySupportedCodecs";
      v11[0] = [(VCMediaStream *)self supportedPayloads];
      v10[1] = @"avcKeyRTPLocalSSRC";
      v11[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_localSSRC];
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    }

    if ([(VCMediaStream *)self initializeTransportSetupInfoWithIDSDestination:a3 error:a4])
    {
      goto LABEL_10;
    }
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 653], @"Invalid Parameter", @"No IDS destination");
  }

  return 0;
}

- (BOOL)initializeTransportSessionWithIDSDestination:(id)a3 error:(id *)a4
{
  v7 = [[VCTransportSessionIDSSingleLink alloc] initWithNotificationQueue:0 reportingAgent:0];
  self->_transportSession = &v7->super.super;
  [(VCTransportSessionIDS *)v7 setDestination:a3];

  return [(VCMediaStream *)self initializeTransportSetupInfoWithTransportSession:a4];
}

- (BOOL)initializeTransportSetupInfoWithIDSDestination:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  p_transportSetupInfo = &self->_transportSetupInfo;
  self->_transportSetupInfo.setupType = 2;
  v7 = [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager addDatagramChannelWithDestination:"addDatagramChannelWithDestination:eventHandler:error:" eventHandler:a3 error:&__block_literal_global_68, a4];
  self->_datagramChannel = v7;
  if (!v7 || !VCDatagramChannelIDS_Token(v7))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      if (objc_opt_class())
      {
        v12 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v12 = "<nil>";
      }

      if (a4)
      {
        if (*a4)
        {
          v14 = [objc_msgSend(*a4 "description")];
        }

        else
        {
          v14 = "<nil>";
        }
      }

      else
      {
        v14 = "nil";
      }

      *buf = 136316418;
      v17 = v10;
      v18 = 2080;
      v19 = "[VCMediaStream initializeTransportSetupInfoWithIDSDestination:error:]";
      v20 = 1024;
      v21 = 698;
      v22 = 2080;
      v23 = v12;
      v24 = 2048;
      v25 = self;
      v26 = 2080;
      v27 = v14;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %s[%p]: Create datagram channel failed with error %s", buf, 0x3Au);
    }

LABEL_16:
    LOBYTE(v9) = 0;
    return v9;
  }

  v8 = [(VCDatagramChannelIDS *)self->_datagramChannel start];
  if (v8 < 0)
  {
    v13 = v8;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaStream initializeTransportSetupInfoWithIDSDestination:error:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCMediaStream initializeTransportSetupInfoWithIDSDestination:error:];
      }
    }

    [GKVoiceChatError getNSError:a4 code:32002 detailedCode:1301 returnCode:v13 filePath:0 description:@"Could not start setup RTP" reason:@"datagramChannel start failed"];
    goto LABEL_16;
  }

  p_transportSetupInfo->datagramChannelToken = VCDatagramChannelIDS_Token(self->_datagramChannel);
  LOBYTE(v9) = 1;
  return v9;
}

void __70__VCMediaStream_initializeTransportSetupInfoWithIDSDestination_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69A4700]];
  if (v2)
  {
    v3 = v2;
    if ([v2 unsignedIntValue] == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315650;
          v9 = v4;
          v10 = 2080;
          v11 = "[VCMediaStream initializeTransportSetupInfoWithIDSDestination:error:]_block_invoke";
          v12 = 1024;
          v13 = 690;
          v6 = "VCMediaStream [%s] %s:%d IDS channel connected";
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0x1Cu);
        }
      }
    }

    else if ([v3 unsignedIntValue] == 2 && VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v7;
        v10 = 2080;
        v11 = "[VCMediaStream initializeTransportSetupInfoWithIDSDestination:error:]_block_invoke";
        v12 = 1024;
        v13 = 692;
        v6 = "VCMediaStream [%s] %s:%d IDS channel disconnected";
        goto LABEL_13;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __70__VCMediaStream_initializeTransportSetupInfoWithIDSDestination_error___block_invoke_cold_1();
    }
  }
}

- (id)setupRTPWithIPInfo:(id)a3 error:(id *)a4
{
  v11[3] = *MEMORY[0x1E69E9840];
  v7 = [a3 objectForKeyedSubscript:@"vcMediaStreamSourceIP"];
  if ([v7 length])
  {
    self->_transportSetupInfo.setupType = 3;
    v8 = [a3 objectForKeyedSubscript:@"vcMediaStreamSourceInterfaceName"];
    [v7 UTF8String];
    MakeIPPORT();
    if ([v8 length])
    {
      [v8 UTF8String];
      __strlcpy_chk();
    }

    v10[0] = @"avcKeySourcePort";
    v11[0] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_transportSetupInfo.var0.ipInfo.srcRTPIPPort.wPort];
    v10[1] = @"avcKeySupportedCodecs";
    v11[1] = [(VCMediaStream *)self supportedPayloads];
    v10[2] = @"avcKeyRTPLocalSSRC";
    v11[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_localSSRC];
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 726], @"Invalid Parameter", @"No IP Address specified");
    return 0;
  }
}

- (void)reportTransportInfo
{
  v4[1] = *MEMORY[0x1E69E9840];
  if ([(VCMediaStream *)self shouldReportNetworkInterfaceType])
  {
    if ([(VCTransportSession *)self->_transportSession networkInterfaceType])
    {
      v3 = @"TransportType";
      v4[0] = [MEMORY[0x1E696AD98] numberWithInt:{-[VCTransportSession networkInterfaceType](self->_transportSession, "networkInterfaceType")}];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
      [(VCObject *)self reportingAgent];
      reportingGenericEvent();
    }

    else
    {
      [(VCObject *)self reportingAgent];

      reportingSymptom();
    }
  }
}

- (void)updateTransportsWithConstantConnectionOverhead:(unsigned int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (!VCDefaults_GetBoolValueForKey(@"disableDynamicMediaPacketHeaderCalculations", 0))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    transportArray = self->_transportArray;
    v6 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(transportArray);
          }

          RTPUpdateConstantTransportOverhead([*(*(&v11 + 1) + 8 * v9++) rtpHandle], a3);
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v7);
    }
  }
}

- (VCMediaStream)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaStream;
  v2 = [(VCObject *)&v4 init];
  if (v2)
  {
    v2->_localSSRC = RTPGenerateSSRC();
    v2->_streamToken = VCUniqueIDGenerator_GenerateID();
    [(VCMediaStream *)v2 setupMediaStream];
  }

  return v2;
}

- (VCMediaStream)initWithTransportSessionID:(unsigned int)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaStream;
  v4 = [(VCObject *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_transportSessionID = a3;
    v4->_localSSRC = RTPGenerateSSRC();
    v5->_streamToken = VCUniqueIDGenerator_GenerateID();
    [(VCMediaStream *)v5 setupMediaStream];
  }

  return v5;
}

- (VCMediaStream)initWithTransportSessionID:(unsigned int)a3 localSSRC:(unsigned int)a4 streamToken:(int64_t)a5 logPrefix:(id)a6
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCMediaStream;
  v10 = [(VCObject *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(VCObject *)v10 setLogPrefix:a6];
    v11->_transportSessionID = a3;
    v11->_localSSRC = a4;
    v11->_streamToken = a5;
    v11->_isQoSReportingDisabled = 1;
    [(VCMediaStream *)v11 setupMediaStream];
  }

  return v11;
}

- (void)setupMediaStream
{
  v28 = *MEMORY[0x1E69E9840];
  self->_streamTokenUplink = VCUniqueIDGenerator_GenerateID();
  self->_streamTokenDownlink = VCUniqueIDGenerator_GenerateID();
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      streamTokenUplink = self->_streamTokenUplink;
      streamTokenDownlink = self->_streamTokenDownlink;
      *buf = 136316674;
      v17 = v3;
      v18 = 2080;
      v19 = "[VCMediaStream setupMediaStream]";
      v20 = 1024;
      v21 = 846;
      v22 = 2048;
      v23 = self;
      v24 = 1024;
      *v25 = streamToken;
      *&v25[4] = 1024;
      *&v25[6] = streamTokenUplink;
      v26 = 1024;
      v27 = streamTokenDownlink;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d (%p) Generated _streamToken=%u streamTokenUplink=%u streamTokenDownlink=%u", buf, 0x38u);
    }
  }

  v15.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v15.__opaque = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutexattr_init(&v15);
  pthread_mutexattr_settype(&v15, 2);
  pthread_mutex_init(&self->_streamLock, &v15);
  pthread_mutexattr_destroy(&v15);
  self->_nwMonitorLock._os_unfair_lock_opaque = 0;
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  self->_delegateNotificationQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMediaStream.delegateNotificationQueue", 0, CustomRootQueue);
  self->_vcMediaCallback = VCMediaCallback;
  self->_transportArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_transportSetupInfo.isSessionIDValid = self->_transportSessionID != 0;
  if ((VCFeatureFlagManager_SkipNonInfraWiFiAssertion() & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v9;
        v18 = 2080;
        v19 = "[VCMediaStream setupMediaStream]";
        v20 = 1024;
        v21 = 862;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d NetworkAgent is being asserted by setupMediaStream", buf, 0x1Cu);
      }
    }

    [+[VCNetworkAgent sharedInstance](VCNetworkAgent addAssertion];
  }

  +[VCVTPWrapper startVTP];
  [(VCMediaStream *)self setState:0];
  self->_useRandomTS = 1;
  self->_decryptionErrorStartTime = NAN;
  self->_decryptionTimeoutEnabledTime = NAN;
  self->_rtpTimeoutEnabledTime = NAN;
  self->_rtcpTimeoutEnabledTime = NAN;
  self->_isNWMonitorSignalEnabled = _os_feature_enabled_impl();
  self->_isRTTBasedFIRThrottlingEnabled = VCDefaults_GetBoolValueForKey(@"useRTTForFIRThrottling", 0);
  self->_nwMonitorHandlerIndex = -1;
  self->_rttMonitorHandlerIndex = -1;
  [(VCMediaStream *)self registerQoSReportingSource];
  self->_perfTimers = objc_alloc_init(MEMORY[0x1E6986620]);
  [+[VCQoSMonitorManager sharedInstance](VCQoSMonitorManager registerQoSReportingSourceForToken:"registerQoSReportingSourceForToken:", self->_streamToken];
  DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"mediaStreamRTCPTimeoutReportInterval", 1.0);
  self->_rtcpTimeoutReportInterval = DoubleValueForKey;
  self->_timeoutHeartbeatInterval = fmin(DoubleValueForKey, 1.0);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaStream-setup");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(VCObject *)self logPrefix];
      *buf = 136316162;
      v17 = v12;
      v18 = 2080;
      v19 = "[VCMediaStream setupMediaStream]";
      v20 = 1024;
      v21 = 885;
      v22 = 2048;
      v23 = self;
      v24 = 2112;
      *v25 = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d @:@ VCMediaStream-setup (%p) %@", buf, 0x30u);
    }
  }
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  p_transportSetupInfo = &self->_transportSetupInfo;
  if (self->_transportSetupInfo.setupType == 4)
  {
    [(VCMediaStream *)self cleanupNWConnection:&self->_transportSetupInfo.var0];
  }

  defaultMediaKeyIndex = p_transportSetupInfo->defaultMediaKeyIndex;
  if (defaultMediaKeyIndex)
  {
    CFRelease(defaultMediaKeyIndex);
  }

  [(VCMediaStream *)self destroyNWMonitor];

  [(VCMediaStream *)self unregisterWRMCallback];
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_momentsCollectorDelegate, 0);
  [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager removeDatagramChannel:"removeDatagramChannel:", self->_datagramChannel];

  mediaQueue = self->_mediaQueue;
  if (mediaQueue)
  {
    CFRelease(mediaQueue);
  }

  [(VCMediaStream *)self cleanUpWiFiChannelSequenceMonitor];
  pthread_mutex_destroy(&self->_streamLock);
  delegateNotificationQueue = self->_delegateNotificationQueue;
  if (delegateNotificationQueue)
  {
    dispatch_release(delegateNotificationQueue);
  }

  +[VCVTPWrapper stopVTP];
  if ((VCFeatureFlagManager_SkipNonInfraWiFiAssertion() & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCMediaStream dealloc]";
        v16 = 1024;
        v17 = 914;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d NetworkAgent is being un-asserted by VCMediaStream's dealloc", buf, 0x1Cu);
      }
    }

    [+[VCNetworkAgent sharedInstance](VCNetworkAgent removeAssertion];
  }

  callID = self->_callID;
  if (callID)
  {
  }

  idsDestination = self->_idsDestination;
  if (idsDestination)
  {
  }

  [(VCTransportSession *)self->_transportSession stop];
  [+[VCRateControllerManager sharedInstance](VCRateControllerManager cleanupRateControllerSharingGroupWithConnection:"cleanupRateControllerSharingGroupWithConnection:usePolicy:" usePolicy:self->_connection, 1];

  [(VCMediaStream *)self unregisterQoSReportingSource];
  [(VCMediaStream *)self unregisterMediaControlInfoGenerator];
  if (self->_isReportingAgentOwner)
  {
    [(VCObject *)self reportingAgent];
    VCReporting_finalizeAggregation();
  }

  v11.receiver = self;
  v11.super_class = VCMediaStream;
  [(VCObject *)&v11 dealloc];
}

- (void)lock
{
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }
}

- (void)unlock
{
  if (self)
  {
    pthread_mutex_unlock(&self->_streamLock);
  }
}

- (char)streamStateToString:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return "kVCMediaStreamStateStopped";
  }

  else
  {
    return off_1E85F8458[a3 - 1];
  }
}

- (tagHANDLE)createRTPHandleWithStreamConfig:(id)a3 payloadType:(int)a4 localSSRC:(unsigned int)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = 0xFFFFFFFFLL;
  v7 = RTPCreateHandle(&v29, a4, 1, self->_useRandomTS, self->_transportSessionID, self->_vcMediaCallback, self, a5);
  if ((v7 & 0x80000000) != 0)
  {
    [(VCMediaStream *)self createRTPHandleWithStreamConfig:v7 payloadType:v8 localSSRC:v9, v10, v11, v12, v13, v27, v28, v29, SWORD2(v29), *buf, *&buf[8], *v31, *&v31[4], v32, *(&v32 + 1), v33, v34, v35, v36, v37, v38, v39, v40, v41];
    return v29;
  }

  v14 = RTPSetSendTimestampRate(v29, [a3 rtpTimestampRate]);
  if ((v14 & 0x80000000) == 0)
  {
    if ([a3 rateControlConfig])
    {
      v15 = [objc_msgSend(a3 "rateControlConfig")];
      if (v15 != 0xFFFFFFFFLL)
      {
        v16 = v15;
        v17 = v29;
        [objc_msgSend(a3 "rateControlConfig")];
        RTPSetMediaQueue(v18, v17, v16);
        goto LABEL_11;
      }
    }

    if ([objc_msgSend(a3 "rateControlConfig")])
    {
      v19 = v29;
      mediaQueue = [objc_msgSend(a3 "rateControlConfig")];
      v21 = v19;
    }

    else
    {
      mediaQueue = self->_mediaQueue;
      if (!mediaQueue)
      {
        goto LABEL_11;
      }

      v21 = v29;
    }

    RTPSetVCMediaQueue(v21, mediaQueue);
LABEL_11:
    if ([a3 securityKeyHolder])
    {
      RTPSetVCSecurityKeyHolder(v29, [a3 securityKeyHolder]);
    }

    return v29;
  }

  v23 = v14;
  RTPCloseHandle();
  v29 = 0xFFFFFFFFLL;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream createRTPHandleWithStreamConfig:payloadType:localSSRC:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v24 = [(VCMediaStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v24 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = v25;
        *v31 = 2080;
        *&v31[2] = "[VCMediaStream createRTPHandleWithStreamConfig:payloadType:localSSRC:]";
        *&v31[10] = 1024;
        LODWORD(v32) = 998;
        WORD2(v32) = 2112;
        *(&v32 + 6) = v24;
        HIWORD(v32) = 2048;
        v33 = self;
        LOWORD(v34) = 1024;
        *(&v34 + 2) = v23;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %@(%p) Failed to set rtp timestamp rate. Error=%d", buf, 0x36u);
      }
    }
  }

  return v29;
}

- (id)createTransportWithStreamConfig:(id)a3 ssrc:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [(VCMediaStream *)self createRTPHandleWithStreamConfig:a3 payloadType:1 localSSRC:*&a4];
  if (v6 == 0xFFFFFFFFLL)
  {
    [VCMediaStream createTransportWithStreamConfig:ssrc:];
    v7 = v9;
  }

  else
  {
    v7 = [[VCMediaStreamTransport alloc] initWithHandle:v6 localSSRC:v4];
    if (v7)
    {
      [(NSMutableArray *)self->_transportArray addObject:v7];
    }

    else
    {
      [VCMediaStream createTransportWithStreamConfig:ssrc:];
    }
  }

  return v7;
}

- (void)unregisterStatistics
{
  statisticsCollector = self->_statisticsCollector;
  if (statisticsCollector)
  {
    if (self->_nwMonitorHandlerIndex < 0 || ([(AVCStatisticsCollector *)statisticsCollector unregisterStatisticsChangeHandlerWithType:11 handlerIndex:?], (statisticsCollector = self->_statisticsCollector) != 0))
    {
      if ((self->_rttMonitorHandlerIndex & 0x80000000) == 0)
      {
        [(AVCStatisticsCollector *)statisticsCollector unregisterStatisticsChangeHandlerWithType:3 handlerIndex:?];
      }
    }
  }

  self->_areStatisticsRegistered = 0;
}

- (int)registerStatisticsHandler:(id)a3 statisticType:(int)a4
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = self->_statisticsHandler;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3052000000;
  v7[3] = __Block_byref_object_copy__24;
  v7[4] = __Block_byref_object_dispose__24;
  v7[5] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__VCMediaStream_registerStatisticsHandler_statisticType___block_invoke;
  v6[3] = &unk_1E85F82F8;
  v6[4] = v8;
  v6[5] = v7;
  v4 = [a3 registerStatisticsChangeHandlerWithType:*&a4 handler:v6];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v8, 8);
  return v4;
}

uint64_t __57__VCMediaStream_registerStatisticsHandler_statisticType___block_invoke(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(result + 32) + 8) + 24);
  if (v2)
  {
    v3 = *(*(*(result + 40) + 8) + 40);
    v4 = *(a2 + 176);
    v10[10] = *(a2 + 160);
    v10[11] = v4;
    v11 = *(a2 + 192);
    v5 = *(a2 + 112);
    v10[6] = *(a2 + 96);
    v10[7] = v5;
    v6 = *(a2 + 144);
    v10[8] = *(a2 + 128);
    v10[9] = v6;
    v7 = *(a2 + 48);
    v10[2] = *(a2 + 32);
    v10[3] = v7;
    v8 = *(a2 + 80);
    v10[4] = *(a2 + 64);
    v10[5] = v8;
    v9 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v9;
    return v2(v3, v10);
  }

  return result;
}

- (void)registerStatistics:(id)a3
{
  if (a3)
  {
    if (self->_areStatisticsRegistered)
    {
      [(VCMediaStream *)self unregisterStatistics];
    }

    if (self->_isNWMonitorSignalEnabled || self->_isRTTBasedFIRThrottlingEnabled || self->_isServerPacketRetransmissionEnabled)
    {

      self->_statisticsCollector = a3;
      if (self->_isNWMonitorSignalEnabled)
      {
        self->_nwMonitorHandlerIndex = [(VCMediaStream *)self registerStatisticsHandler:a3 statisticType:11];
      }

      if (self->_isRTTBasedFIRThrottlingEnabled || self->_isServerPacketRetransmissionEnabled)
      {
        self->_rttMonitorHandlerIndex = [(VCMediaStream *)self registerStatisticsHandler:a3 statisticType:3];
      }

      self->_areStatisticsRegistered = 1;
    }
  }
}

- (void)initializeWRMUsingRtpHandle:(tagHANDLE *)a3
{
  WRMInitialize([(VCNetworkFeedbackController *)[(VCMediaStream *)self networkFeedbackController] wrmInfo], a3);
  RTPSetWRMInfo(a3, [(VCNetworkFeedbackController *)[(VCMediaStream *)self networkFeedbackController] wrmInfo]);
  RTPSetWRMMetricsCallback(a3, _VCMediaStream_WRMReportMetricsCallback, [(VCNetworkFeedbackController *)[(VCMediaStream *)self networkFeedbackController] wrmContext]);
  v5 = [(VCNetworkFeedbackController *)[(VCMediaStream *)self networkFeedbackController] callID];

  RTPSetWRMCallId(a3, v5);
}

- (void)unregisterWRMCallback
{
  if (self->_isWRMinitialized && [(VCMediaStream *)self networkFeedbackController]&& [(VCNetworkFeedbackController *)[(VCMediaStream *)self networkFeedbackController] wrmInfo])
  {
    v3 = [(VCNetworkFeedbackController *)[(VCMediaStream *)self networkFeedbackController] wrmInfo];

    WRMSetReportingCallback(v3, 0, 0);
  }
}

- (void)registerQoSReportingSource
{
  if (!self->_isQoSReportingDisabled)
  {
    v4 = +[VCQoSMonitorManager sharedInstance];
    streamToken = self->_streamToken;

    [(VCQoSMonitorManager *)v4 registerQoSReportingSourceForToken:streamToken];
  }
}

- (void)unregisterQoSReportingSource
{
  if (!self->_isQoSReportingDisabled)
  {
    v4 = +[VCQoSMonitorManager sharedInstance];
    streamToken = self->_streamToken;

    [(VCQoSMonitorManager *)v4 unregisterQoSReportingSourceForToken:streamToken];
  }
}

- (void)registerAggregationHandlers
{
  if (!self->_isQoSReportingDisabled)
  {
    [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    [(VCObject *)self reportingAgent];
    reportingSetPeriodicAggregationOccurredHandler();
    [(VCObject *)self reportingAgent];
    ReportingVC_SetEventDrivenAggregationOccurredHandler();
  }
}

uint64_t __44__VCMediaStream_registerAggregationHandlers__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[VCQoSMonitorManager sharedInstance];
  v5 = [objc_msgSend(*(a1 + 32) "strong")];

  return [(VCQoSMonitorManager *)v4 updateQoSReport:a2 toClientsWithToken:v5];
}

uint64_t __44__VCMediaStream_registerAggregationHandlers__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[VCQoSMonitorManager sharedInstance];
  v6 = [objc_msgSend(*(a1 + 32) "strong")];

  return [(VCQoSMonitorManager *)v5 updateEventDrivenQoSReport:a3 toClientsWithToken:v6];
}

- (void)deregisterAggregationHandlers
{
  if (!self->_isQoSReportingDisabled)
  {
    [(VCObject *)self reportingAgent];
    reportingSetPeriodicAggregationOccurredHandler();
    [(VCObject *)self reportingAgent];

    ReportingVC_SetEventDrivenAggregationOccurredHandler();
  }
}

- (void)registerMediaControlInfoGeneratorWithConfigs:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = [(VCMediaStream *)self getMediaStreamConfigForControlInfoGenerator:?];
  v50 = a3;
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = v5;
  v7 = [objc_msgSend(v5 "rateControlConfig")];
  self->_mediaControlInfoGeneratorType = [objc_msgSend(v6 "rateControlConfig")];
  if ([objc_msgSend(v6 "rateControlConfig")])
  {
    -[VCMediaStream createLocalMediaControlInfoGeneratorWithType:version:](self, "createLocalMediaControlInfoGeneratorWithType:version:", self->_mediaControlInfoGeneratorType, [objc_msgSend(v6 "rateControlConfig")]);
  }

  else if (v7)
  {
    self->_mediaControlInfoGenerator = CFRetain(v7);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v10 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v10 = "<nil>";
        }

        *buf = 136316162;
        v57 = v8;
        v58 = 2080;
        v59 = "[VCMediaStream registerMediaControlInfoGeneratorWithConfigs:]";
        v60 = 1024;
        v61 = 1146;
        v62 = 2080;
        v63 = v10;
        v64 = 2048;
        *v65 = self;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] Using Media Control Info Generator from multiway config", buf, 0x30u);
      }
    }
  }

  if ([objc_msgSend(v6 "rateControlConfig")])
  {
    self->_feedbackController = [objc_msgSend(v6 "rateControlConfig")];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v13 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v13 = "<nil>";
        }

        *buf = 136316162;
        v57 = v11;
        v58 = 2080;
        v59 = "[VCMediaStream registerMediaControlInfoGeneratorWithConfigs:]";
        v60 = 1024;
        v61 = 1150;
        v62 = 2080;
        v63 = v13;
        v64 = 2048;
        *v65 = self;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] Using Feedback Controller from multiway config", buf, 0x30u);
      }
    }
  }

  a3 = v50;
  if (![objc_msgSend(v6 "rateControlConfig")])
  {
    goto LABEL_31;
  }

  -[VCMediaStream registerCallbacksForMediaControlInfoGenerator:forDirection:options:](self, "registerCallbacksForMediaControlInfoGenerator:forDirection:options:", self->_mediaControlInfoGenerator, [v6 direction], objc_msgSend(objc_msgSend(v6, "rateControlConfig"), "mediaControlInfoGeneratorOptions"));
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_30;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    mediaControlInfoGenerator = self->_mediaControlInfoGenerator;
    Type = VCMediaControlInfoGeneratorGetType(mediaControlInfoGenerator);
    v19 = [v6 direction];
    *buf = 136316418;
    v57 = v15;
    v58 = 2080;
    v59 = "[VCMediaStream registerMediaControlInfoGeneratorWithConfigs:]";
    v60 = 1024;
    v61 = 1156;
    v62 = 2048;
    v63 = mediaControlInfoGenerator;
    v64 = 1024;
    *v65 = Type;
    *&v65[4] = 2048;
    *&v65[6] = v19;
    v20 = "VCMediaStream [%s] %s:%d Registered callbacks for MediaControlInfoGenerator[%p], type=%d, direction=%ld";
    v21 = v16;
    v22 = 54;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCMediaStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_30;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v25 = self->_mediaControlInfoGenerator;
    v26 = VCMediaControlInfoGeneratorGetType(v25);
    v27 = [v6 direction];
    *buf = 136316930;
    v57 = v23;
    v58 = 2080;
    v59 = "[VCMediaStream registerMediaControlInfoGeneratorWithConfigs:]";
    v60 = 1024;
    v61 = 1156;
    v62 = 2112;
    v63 = v14;
    v64 = 2048;
    *v65 = self;
    *&v65[8] = 2048;
    *&v65[10] = v25;
    v66 = 1024;
    v67 = v26;
    v68 = 2048;
    v69 = v27;
    v20 = "VCMediaStream [%s] %s:%d %@(%p) Registered callbacks for MediaControlInfoGenerator[%p], type=%d, direction=%ld";
    v21 = v24;
    v22 = 74;
  }

  _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_30:
  self->_mediaControlInfoCallbacksRegistered = 1;
  a3 = v50;
LABEL_31:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v28 = [a3 countByEnumeratingWithState:&v52 objects:v51 count:16];
  if (!v28)
  {
    return;
  }

  v30 = v28;
  v31 = *v53;
  *&v29 = 136316418;
  v49 = v29;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v53 != v31)
      {
        objc_enumerationMutation(a3);
      }

      v33 = *(*(&v52 + 1) + 8 * i);
      if ([objc_msgSend(v33 multiwayConfig] && objc_msgSend(objc_msgSend(v33, "rateControlConfig"), "shouldRegisterMediaControlInfoGeneratorCallbacks"))
      {
        -[VCMediaStream registerCallbacksForMediaControlInfoGenerator:forDirection:options:](self, "registerCallbacksForMediaControlInfoGenerator:forDirection:options:", [objc_msgSend(v33 "rateControlConfig")], objc_msgSend(v33, "direction"), objc_msgSend(objc_msgSend(v33, "rateControlConfig"), "mediaControlInfoGeneratorOptions"));
        self->_oneToOneFeedbackController = [objc_msgSend(v33 "rateControlConfig")];
        v34 = [objc_msgSend(v33 "rateControlConfig")];
        if (v34)
        {
          v34 = CFRetain(v34);
        }

        self->_oneToOneControlInfoGenerator = v34;
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v44 = VRTraceErrorLogLevelToCSTR();
            v45 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              oneToOneControlInfoGenerator = self->_oneToOneControlInfoGenerator;
              v47 = VCMediaControlInfoGeneratorGetType(oneToOneControlInfoGenerator);
              v48 = [v33 direction];
              *buf = v49;
              v57 = v44;
              v58 = 2080;
              v59 = "[VCMediaStream registerMediaControlInfoGeneratorWithConfigs:]";
              v60 = 1024;
              v61 = 1167;
              v62 = 2048;
              v63 = oneToOneControlInfoGenerator;
              v64 = 1024;
              *v65 = v47;
              a3 = v50;
              *&v65[4] = 2048;
              *&v65[6] = v48;
              v41 = v45;
              v42 = "VCMediaStream [%s] %s:%d Registered callbacks for oneToOne MediaControlInfoGenerator[%p], type=%d, direction=%ld";
              v43 = 54;
LABEL_49:
              _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, v43);
            }
          }
        }

        else
        {
          v35 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v35 = [(VCMediaStream *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v36 = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v38 = self->_oneToOneControlInfoGenerator;
              v39 = VCMediaControlInfoGeneratorGetType(v38);
              v40 = [v33 direction];
              *buf = 136316930;
              v57 = v36;
              v58 = 2080;
              v59 = "[VCMediaStream registerMediaControlInfoGeneratorWithConfigs:]";
              v60 = 1024;
              v61 = 1167;
              v62 = 2112;
              v63 = v35;
              v64 = 2048;
              *v65 = self;
              *&v65[8] = 2048;
              *&v65[10] = v38;
              a3 = v50;
              v66 = 1024;
              v67 = v39;
              v68 = 2048;
              v69 = v40;
              v41 = v37;
              v42 = "VCMediaStream [%s] %s:%d %@(%p) Registered callbacks for oneToOne MediaControlInfoGenerator[%p], type=%d, direction=%ld";
              v43 = 74;
              goto LABEL_49;
            }
          }
        }

        self->_mediaControlInfoCallbacksRegistered = 1;
        continue;
      }
    }

    v30 = [a3 countByEnumeratingWithState:&v52 objects:v51 count:16];
  }

  while (v30);
}

- (id)getMediaStreamConfigForControlInfoGenerator:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(a3);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([objc_msgSend(v8 "rateControlConfig")] || (objc_msgSend(objc_msgSend(v8, "rateControlConfig"), "shouldCreateMediaControlInfoGenerator") & 1) != 0)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v8 = 0;
      if (v5)
      {
        goto LABEL_3;
      }

      return v8;
    }
  }
}

- (void)createLocalMediaControlInfoGeneratorWithType:(unsigned int)a3 version:(unsigned __int8)a4
{
  v4 = a4;
  v5 = *&a3;
  v21 = *MEMORY[0x1E69E9840];
  if (self->_mediaControlInfoGenerator)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v9 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v9 = "<nil>";
        }

        v11 = 136316162;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCMediaStream createLocalMediaControlInfoGeneratorWithType:version:]";
        v15 = 1024;
        v16 = 1184;
        v17 = 2080;
        v18 = v9;
        v19 = 2048;
        v20 = self;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] Api usage error. Overriding generator from multiway config with a locally created generator", &v11, 0x30u);
      }
    }

    mediaControlInfoGenerator = self->_mediaControlInfoGenerator;
    if (mediaControlInfoGenerator)
    {
      CFRelease(mediaControlInfoGenerator);
    }
  }

  self->_mediaControlInfoGenerator = 0;
  self->_mediaControlInfoGenerator = VCMediaControlInfoGeneratorCreateWithTypeAndVersion(v5, v4);
}

- (void)registerCallbacksForMediaControlInfoGenerator:(void *)a3 forDirection:(int64_t)a4 options:(unsigned int)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a5)
    {
      VCMediaControlInfoGeneratorAddOptions(a3, *&a5);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v10 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v10 = "<nil>";
        }

        v15 = 136316418;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCMediaStream registerCallbacksForMediaControlInfoGenerator:forDirection:options:]";
        v19 = 1024;
        v20 = 1200;
        v21 = 2080;
        v22 = v10;
        v23 = 2048;
        v24 = self;
        v25 = 2048;
        v26 = a4;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] Registering Media Control Info Generator Callbacks for direction %ld", &v15, 0x3Au);
      }
    }

    switch(a4)
    {
      case 3:
        v11 = VCMediaStreamFillMediaControlInfoCallback;
        v14 = VCMediaStreamProcessMediaControlInfoCallback;
        v12 = a3;
        v13 = self;
        break;
      case 2:
        v14 = VCMediaStreamProcessMediaControlInfoCallback;
        v12 = a3;
        v13 = self;
        v11 = 0;
        break;
      case 1:
        v11 = VCMediaStreamFillMediaControlInfoCallback;
        v12 = a3;
        v13 = self;
        v14 = 0;
        break;
      default:
        return;
    }

    VCMediaControlInfoGeneratorRegisterCallbacks(v12, v13, v11, v14);
  }
}

- (void)unregisterMediaControlInfoGenerator
{
  v39 = *MEMORY[0x1E69E9840];
  mediaControlInfoGenerator = self->_mediaControlInfoGenerator;
  if (mediaControlInfoGenerator)
  {
    if (!self->_mediaControlInfoCallbacksRegistered)
    {
LABEL_15:
      CFRelease(mediaControlInfoGenerator);
      self->_mediaControlInfoGenerator = 0;
      goto LABEL_16;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = self->_mediaControlInfoGenerator;
          v27 = 136315906;
          v28 = v5;
          v29 = 2080;
          v30 = "[VCMediaStream unregisterMediaControlInfoGenerator]";
          v31 = 1024;
          v32 = 1219;
          v33 = 2048;
          v34 = v7;
          v8 = "VCMediaStream [%s] %s:%d Deregistering callbacks for MediaControlInfoGenerator[%p]";
          v9 = v6;
          v10 = 38;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v27, v10);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = self->_mediaControlInfoGenerator;
          v27 = 136316418;
          v28 = v11;
          v29 = 2080;
          v30 = "[VCMediaStream unregisterMediaControlInfoGenerator]";
          v31 = 1024;
          v32 = 1219;
          v33 = 2112;
          v34 = v4;
          v35 = 2048;
          v36 = self;
          v37 = 2048;
          v38 = v13;
          v8 = "VCMediaStream [%s] %s:%d %@(%p) Deregistering callbacks for MediaControlInfoGenerator[%p]";
          v9 = v12;
          v10 = 58;
          goto LABEL_13;
        }
      }
    }

    VCMediaControlInfoGeneratorDeregisterCallbacks(self->_mediaControlInfoGenerator, self);
    mediaControlInfoGenerator = self->_mediaControlInfoGenerator;
    if (!mediaControlInfoGenerator)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  oneToOneControlInfoGenerator = self->_oneToOneControlInfoGenerator;
  if (!oneToOneControlInfoGenerator)
  {
    goto LABEL_31;
  }

  if (self->_mediaControlInfoCallbacksRegistered)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = self->_oneToOneControlInfoGenerator;
          v27 = 136315906;
          v28 = v16;
          v29 = 2080;
          v30 = "[VCMediaStream unregisterMediaControlInfoGenerator]";
          v31 = 1024;
          v32 = 1226;
          v33 = 2048;
          v34 = v18;
          v19 = "VCMediaStream [%s] %s:%d Deregistering callbacks for oneToOne MediaControlInfoGenerator[%p]";
          v20 = v17;
          v21 = 38;
LABEL_28:
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v27, v21);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = self->_oneToOneControlInfoGenerator;
          v27 = 136316418;
          v28 = v22;
          v29 = 2080;
          v30 = "[VCMediaStream unregisterMediaControlInfoGenerator]";
          v31 = 1024;
          v32 = 1226;
          v33 = 2112;
          v34 = v15;
          v35 = 2048;
          v36 = self;
          v37 = 2048;
          v38 = v24;
          v19 = "VCMediaStream [%s] %s:%d %@(%p) Deregistering callbacks for oneToOne MediaControlInfoGenerator[%p]";
          v20 = v23;
          v21 = 58;
          goto LABEL_28;
        }
      }
    }

    VCMediaControlInfoGeneratorDeregisterCallbacks(self->_oneToOneControlInfoGenerator, self);
    oneToOneControlInfoGenerator = self->_oneToOneControlInfoGenerator;
    if (!oneToOneControlInfoGenerator)
    {
      goto LABEL_31;
    }
  }

  CFRelease(oneToOneControlInfoGenerator);
  self->_oneToOneControlInfoGenerator = 0;
LABEL_31:
  feedbackController = self->_feedbackController;
  if (feedbackController)
  {

    self->_feedbackController = 0;
  }

  oneToOneFeedbackController = self->_oneToOneFeedbackController;
  if (oneToOneFeedbackController)
  {

    self->_oneToOneFeedbackController = 0;
  }

  self->_mediaControlInfoCallbacksRegistered = 0;
}

- (BOOL)handleEncryptionInfoChange:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaStream-handleEncryptionInfoChange");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v40 = v4;
      v41 = 2080;
      v42 = "[VCMediaStream handleEncryptionInfoChange:]";
      v43 = 1024;
      v44 = 1293;
      v45 = 2048;
      *v46 = self;
      *&v46[8] = 2112;
      v47 = [(VCObject *)self logPrefix];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d @:@ VCMediaStream-handleEncryptionInfoChange (%p) %@", buf, 0x30u);
    }
  }

  v6 = [a3 objectForKeyedSubscript:@"SecurityKeyIndex"];
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v7 = [(VCMediaKeyIndex *)self->_lastReceivedMKI isEqual:v6];
  v8 = !v7;
  if (!v7)
  {
    VCMediaKeyIndex_ReleaseAndCopyNewValue(&self->_lastReceivedMKI, v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = self->_transportArray;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v51 count:16, 552];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v53;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v52 + 1) + 8 * i);
        if ((v7 & [v14 encryptionInfoReceived] & 1) == 0)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v22 = VRTraceErrorLogLevelToCSTR();
              v23 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v14 idsStreamId];
                *buf = 136316162;
                v40 = v22;
                v41 = 2080;
                v42 = "[VCMediaStream handleEncryptionInfoChange:]";
                v43 = 1024;
                v44 = 1305;
                v45 = 2048;
                *v46 = v14;
                *&v46[8] = 1024;
                LODWORD(v47) = v24;
                v19 = v23;
                v20 = "VCMediaStream [%s] %s:%d Propagating MKM to transport=%p streamID=%d";
                v21 = 44;
LABEL_23:
                _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
              }
            }
          }

          else
          {
            v15 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v15 = [(VCMediaStream *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v17 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v18 = [v14 idsStreamId];
                *buf = 136316674;
                v40 = v16;
                v41 = 2080;
                v42 = "[VCMediaStream handleEncryptionInfoChange:]";
                v43 = 1024;
                v44 = 1305;
                v45 = 2112;
                *v46 = v15;
                *&v46[8] = 2048;
                v47 = self;
                v48 = 2048;
                *v49 = v14;
                *&v49[8] = 1024;
                v50 = v18;
                v19 = v17;
                v20 = "VCMediaStream [%s] %s:%d %@(%p) Propagating MKM to transport=%p streamID=%d";
                v21 = 64;
                goto LABEL_23;
              }
            }
          }

          [v14 handleEncryptionInfoChange:a3];
          v11 = 1;
          continue;
        }
      }

      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v51 count:16];
      if (!v10)
      {
        v8 = !v7;
        if ((v11 & 1) == 0)
        {
          break;
        }

LABEL_39:
        if (self)
        {
          goto LABEL_40;
        }

        return v8;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_39;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v28 = [*(&self->super.super.isa + v36) count];
    *buf = 136316162;
    v40 = v26;
    v41 = 2080;
    v42 = "[VCMediaStream handleEncryptionInfoChange:]";
    v43 = 1024;
    v44 = 1311;
    v45 = 1024;
    *v46 = v8;
    *&v46[4] = 1024;
    *&v46[6] = v28;
    v29 = "VCMediaStream [%s] %s:%d MKM not updated on media stream transports. shouldHandle=%d isTransportArrayCount=%u";
    v30 = v27;
    v31 = 40;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = [(VCMediaStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_39;
    }

    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v34 = [*(&self->super.super.isa + v36) count];
    *buf = 136316674;
    v40 = v32;
    v41 = 2080;
    v42 = "[VCMediaStream handleEncryptionInfoChange:]";
    v43 = 1024;
    v44 = 1311;
    v45 = 2112;
    *v46 = v25;
    *&v46[8] = 2048;
    v47 = self;
    v48 = 1024;
    *v49 = v8;
    *&v49[4] = 1024;
    *&v49[6] = v34;
    v29 = "VCMediaStream [%s] %s:%d %@(%p) MKM not updated on media stream transports. shouldHandle=%d isTransportArrayCount=%u";
    v30 = v33;
    v31 = 60;
  }

  _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
LABEL_40:
  pthread_mutex_unlock(&self->_streamLock);
  return v8;
}

- (void)resetDecryptionTimeout
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = v3;
      v17 = 2080;
      v18 = "[VCMediaStream resetDecryptionTimeout]";
      v19 = 1024;
      v20 = 1318;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d Resetting decryption status", buf, 0x1Cu);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  transportArray = self->_transportArray;
  v6 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(transportArray);
        }

        [*(*(&v11 + 1) + 8 * i) rtpHandle];
        RTPResetDecryptionStatus();
      }

      v7 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  [(VCMediaStream *)self decryptionStatusChanged:1];
}

- (int)updateConnectionWithConfig:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  [objc_msgSend(objc_msgSend(a3 "localAddress")];
  [objc_msgSend(a3 "localAddress")];
  MakeIPPORT();
  [objc_msgSend(objc_msgSend(a3 "remoteAddress")];
  [objc_msgSend(a3 "remoteAddress")];
  MakeIPPORT();
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));

  v5 = [[VCConnectionLegacy alloc] initWithConnectionResult:v29 type:0];
  self->_connection = &v5->super;
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaStream updateConnectionWithConfig:];
        }
      }

      return 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCMediaStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 1;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v15 = 136316674;
    v16 = v11;
    v17 = 2080;
    v18 = "[VCMediaStream updateConnectionWithConfig:]";
    v19 = 1024;
    v20 = 1345;
    v21 = 2112;
    v22 = v9;
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = [a3 localAddress];
    v27 = 2112;
    v28 = [a3 remoteAddress];
    v13 = "VCMediaStream [%s] %s:%d %@(%p) Failed to create connection with localAddress=%@ and remoteAddress=%@";
    goto LABEL_26;
  }

  v6 = [+[VCRateControllerManager sharedInstance](VCRateControllerManager getRateControllerSharingGroupWithConnection:"getRateControllerSharingGroupWithConnection:usePolicy:" usePolicy:self->_connection, 1];
  self->_rateSharingGroup = v6;
  if (!v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaStream updateConnectionWithConfig:];
        }
      }

      return 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCMediaStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 1;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v15 = 136316674;
    v16 = v14;
    v17 = 2080;
    v18 = "[VCMediaStream updateConnectionWithConfig:]";
    v19 = 1024;
    v20 = 1349;
    v21 = 2112;
    v22 = v10;
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = [a3 localAddress];
    v27 = 2112;
    v28 = [a3 remoteAddress];
    v13 = "VCMediaStream [%s] %s:%d %@(%p) Failed to retrieve rate sharing group for connection with localAddress=%@ and remoteAddress=%@";
LABEL_26:
    _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, v13, &v15, 0x44u);
    return 1;
  }

  v7 = v6;
  return 0;
}

- (id)getSharingGroupWithPolicy:(unsigned int)a3
{
  v3 = *&a3;
  v5 = +[VCRateControllerManager sharedInstance];
  connection = self->_connection;

  return [(VCRateControllerManager *)v5 getRateControllerSharingGroupWithConnection:connection usePolicy:v3];
}

- (void)setMediaQueueInRateControlConfig:(id)a3
{
  if (a3)
  {
    v4 = [-[VCMediaStream getSharingGroupWithPolicy:](self getSharingGroupWithPolicy:{1), "mediaQueue"}];

    [a3 setVcMediaQueue:v4];
  }
}

- (void)setMediaQueueInStreamConfig:(id)a3
{
  v5 = [a3 accessNetworkType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 audioStreamMode] != 9)
    {
      return;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [a3 type] != 5)
    {
      return;
    }
  }

  if (v5 != 2)
  {
    return;
  }

  if (![a3 rateControlConfig])
  {
    v6 = objc_alloc_init(VCMediaStreamRateControlConfig);
    if (!v6)
    {
      [VCMediaStream setMediaQueueInStreamConfig:?];
      return;
    }

    v7 = v6;
    [a3 setRateControlConfig:v6];
  }

  v8 = [a3 rateControlConfig];

  [(VCMediaStream *)self setMediaQueueInRateControlConfig:v8];
}

- (BOOL)setStreamConfig:(id)a3 withError:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v10 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v10 = "<nil>";
      }

      *buf = 136316418;
      v36 = v8;
      v37 = 2080;
      v38 = "[VCMediaStream setStreamConfig:withError:]";
      v39 = 1024;
      v40 = 1465;
      v41 = 2080;
      v42 = v10;
      v43 = 2048;
      v44 = self;
      v45 = 2080;
      v46 = "[VCMediaStream setStreamConfig:withError:]";
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s", buf, 0x3Au);
    }
  }

  if (self->_state)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 1470], @"Bad API usage", @"setStreamConfig called while media stream is running");
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v13 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          if (objc_opt_class())
          {
            v14 = [objc_msgSend(objc_opt_class() "description")];
          }

          else
          {
            v14 = "<nil>";
          }

          if (*a4)
          {
            v28 = [objc_msgSend(*a4 "description")];
          }

          else
          {
            v28 = "<nil>";
          }

          *buf = 136316418;
          v36 = v11;
          v37 = 2080;
          v38 = "[VCMediaStream setStreamConfig:withError:]";
          v39 = 1024;
          v40 = 1473;
          v41 = 2080;
          v42 = v14;
          v43 = 2048;
          v44 = self;
          v45 = 2080;
          v46 = v28;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %s[%p] error[%s]", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        if (objc_opt_class())
        {
          v27 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v27 = "<nil>";
        }

        if (*a4)
        {
          v29 = [objc_msgSend(*a4 "description")];
        }

        else
        {
          v29 = "<nil>";
        }

        *buf = 136316418;
        v36 = v11;
        v37 = 2080;
        v38 = "[VCMediaStream setStreamConfig:withError:]";
        v39 = 1024;
        v40 = 1473;
        v41 = 2080;
        v42 = v27;
        v43 = 2048;
        v44 = self;
        v45 = 2080;
        v46 = v29;
        _os_log_fault_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_FAULT, "VCMediaStream [%s] %s:%d %s[%p] error[%s]", buf, 0x3Au);
      }
    }

    v25 = 0;
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(a3);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          if ([v19 localSSRC])
          {
            self->_localSSRC = [v19 localSSRC];
          }

          if (!self->_networkFeedbackController)
          {
            v20 = [v19 networkFeedbackController];
            self->_networkFeedbackController = v20;
            if (v20)
            {
              CFRetain(v20);
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v21 = VRTraceErrorLogLevelToCSTR();
              v22 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                networkFeedbackController = self->_networkFeedbackController;
                v24 = objc_opt_class();
                *buf = 136316162;
                v36 = v21;
                v37 = 2080;
                v38 = "[VCMediaStream setStreamConfig:withError:]";
                v39 = 1024;
                v40 = 1483;
                v41 = 2048;
                v42 = networkFeedbackController;
                v43 = 2112;
                v44 = v24;
                _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d Setting stream config with networkFeedbackController=%p type=%@", buf, 0x30u);
              }
            }
          }

          if (![(VCMediaStream *)self updateRemoteAddressWithConfig:v19 error:a4]|| ![(VCMediaStream *)self updateNWConnectionClientIDWithConfig:v19 error:a4])
          {
            v25 = 0;
            v7 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
            goto LABEL_40;
          }

          self->_isServerPacketRetransmissionEnabled |= [v19 isServerPacketRetransmissionEnabled];
          self->_isUplinkRetransmissionEnabled |= [v19 isUplinkRetransmissionEnabled];
          [(VCMediaStream *)self setMediaQueueInStreamConfig:v19];
        }

        v16 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
        v7 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    [(VCMediaStream *)self unregisterMediaControlInfoGenerator];
    [(VCMediaStream *)self configureDefaultMediaKeyIndexForStreamConfig:a3];
    v25 = [(VCMediaStream *)self onConfigureStreamWithConfiguration:a3 error:a4];
    if (!v25 && VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaStream setStreamConfig:withError:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCMediaStream setStreamConfig:withError:];
      }
    }
  }

LABEL_40:
  pthread_mutex_unlock((self + v7[869]));
  return v25;
}

- (id)start
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = micro();
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__24;
  v14 = __Block_byref_object_dispose__24;
  v15 = 0;
  v4 = dispatch_semaphore_create(0);
  [(TimingCollection *)self->_perfTimers startTimingForKey:19];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __22__VCMediaStream_start__block_invoke;
  v9[3] = &unk_1E85F7C68;
  v9[5] = v4;
  v9[6] = &v10;
  v9[4] = self;
  [(VCMediaStream *)self startWithCompletionHandler:v9];
  v5 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream start];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v11 + 5, 32029, 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 1532], @"Media stream start time out", @"Time out");
    VCUtil_GenerateDiagnostics(0, 1, "Media stream start time out", 1u);
    v6 = v11[5];
    [(VCMediaStream *)self stopWithError:v11[5]];
  }

  dispatch_release(v4);
  self->_mediaConnectionTimeStartToStartComplete = micro() - v3;
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

intptr_t __22__VCMediaStream_start__block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v8 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      v9 = *(a1 + 32);
      v11 = 136316418;
      v12 = v6;
      v13 = 2080;
      v14 = "[VCMediaStream start]_block_invoke";
      v15 = 1024;
      v16 = 1520;
      v17 = 2080;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      v21 = 2080;
      v22 = "[VCMediaStream start]_block_invoke";
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s", &v11, 0x3Au);
    }
  }

  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 40) = a3;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)startWithCompletionHandler:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316418;
      v40 = v5;
      v41 = 2080;
      v42 = "[VCMediaStream startWithCompletionHandler:]";
      v43 = 1024;
      v44 = 1547;
      v45 = 2080;
      v46 = v7;
      v47 = 2048;
      v48 = self;
      v49 = 2080;
      *v50 = "[VCMediaStream startWithCompletionHandler:]";
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s", buf, 0x3Au);
    }
  }

  v38 = 0;
  if (self->_state)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v38, 32016, 6, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 1554], @"Bad API usage", @"Start called while media stream is running or starting");
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_45;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      state = self->_state;
      *buf = 136315906;
      v40 = v10;
      v41 = 2080;
      v42 = "[VCMediaStream startWithCompletionHandler:]";
      v43 = 1024;
      v44 = 1557;
      v45 = 1024;
      LODWORD(v46) = state;
      v13 = "VCMediaStream [%s] %s:%d Start called while media stream is running (state=%d)";
      v14 = v11;
      v15 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_45;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      v18 = self->_state;
      *buf = 136316418;
      v40 = v16;
      v41 = 2080;
      v42 = "[VCMediaStream startWithCompletionHandler:]";
      v43 = 1024;
      v44 = 1557;
      v45 = 2112;
      v46 = v8;
      v47 = 2048;
      v48 = self;
      v49 = 1024;
      *v50 = v18;
      v13 = "VCMediaStream [%s] %s:%d %@(%p) Start called while media stream is running (state=%d)";
      v14 = v17;
      v15 = 54;
    }

LABEL_44:
    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_45:
    pthread_mutex_unlock(&self->_streamLock);
    (*(a3 + 2))(a3, 0, v38);
    return;
  }

  [(VCMediaStream *)self startMediaTransportsWithError:&v38];
  if (v38)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_45;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *buf = 136315650;
      v40 = v29;
      v41 = 2080;
      v42 = "[VCMediaStream startWithCompletionHandler:]";
      v43 = 1024;
      v44 = 1565;
      v13 = "VCMediaStream [%s] %s:%d Failed to start media stream transports";
      v14 = v30;
      v15 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_45;
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *buf = 136316162;
      v40 = v31;
      v41 = 2080;
      v42 = "[VCMediaStream startWithCompletionHandler:]";
      v43 = 1024;
      v44 = 1565;
      v45 = 2112;
      v46 = v9;
      v47 = 2048;
      v48 = self;
      v13 = "VCMediaStream [%s] %s:%d %@(%p) Failed to start media stream transports";
      v14 = v32;
      v15 = 48;
    }

    goto LABEL_44;
  }

  v19 = [(VCMediaStream *)self shouldStartTransportSessionBeforeStream];
  v20 = v19;
  v36[4] = self;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __44__VCMediaStream_startWithCompletionHandler___block_invoke;
  v37[3] = &unk_1E85F8370;
  v37[4] = self;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __44__VCMediaStream_startWithCompletionHandler___block_invoke_2;
  v36[3] = &unk_1E85F8370;
  if (v19)
  {
    v21 = v37;
  }

  else
  {
    v21 = v36;
  }

  if (v19)
  {
    v22 = v36;
  }

  else
  {
    v22 = v37;
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __44__VCMediaStream_startWithCompletionHandler___block_invoke_3;
  v34[3] = &unk_1E85F83C0;
  v34[4] = self;
  v34[5] = v22;
  v35 = v19;
  v34[6] = a3;
  [(VCMediaStream *)self setState:1];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaStream-onStart");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      streamToken = self->_streamToken;
      operatingMode = self->_operatingMode;
      *buf = 136316930;
      v40 = v33;
      v41 = 2080;
      v42 = "[VCMediaStream startWithCompletionHandler:]";
      v43 = 1024;
      v44 = 1610;
      v45 = 2112;
      v46 = v25;
      v47 = 2048;
      v48 = self;
      v49 = 1024;
      *v50 = streamToken;
      *&v50[4] = 1024;
      *&v50[6] = operatingMode;
      v51 = 1024;
      v52 = v20;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d @:@ VCMediaStream-onStart %@ (%p) streamToken=%d, operatingMode=%d, shouldStartTransportSessionBeforeStream=%d", buf, 0x42u);
    }
  }

  [(VCMediaStream *)self registerQoSReportingSource];
  if (v20)
  {
    v28 = v37;
  }

  else
  {
    v28 = v36;
  }

  (v28[2])(v21, v34);
  pthread_mutex_unlock(&self->_streamLock);
}

uint64_t __44__VCMediaStream_startWithCompletionHandler___block_invoke_3(uint64_t a1, int a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((*(a1 + 32) + 176));
  v6 = *(a1 + 32);
  v7 = *(v6 + 408);
  if (v7 != 3 && v7 != 0)
  {
    if (a2)
    {
      v12 = a1 + 48;
      v11 = *(a1 + 48);
      v13 = *(a1 + 40);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __44__VCMediaStream_startWithCompletionHandler___block_invoke_4;
      v19[3] = &unk_1E85F8398;
      v20 = *(a1 + 56);
      v19[4] = v6;
      v19[5] = v11;
      result = (*(v13 + 16))(v13, v19);
      if (*(a1 + 56))
      {
LABEL_24:
        v17 = *(a1 + 32);
        if (v17)
        {
          return pthread_mutex_unlock((v17 + 176));
        }

        return result;
      }
    }

    else
    {
      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __44__VCMediaStream_startWithCompletionHandler___block_invoke_3_cold_1();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        else
        {
          v14 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v18 = *(a1 + 32);
            *buf = 136316162;
            v22 = v15;
            v23 = 2080;
            v24 = "[VCMediaStream startWithCompletionHandler:]_block_invoke";
            v25 = 1024;
            v26 = 1601;
            v27 = 2112;
            v28 = v14;
            v29 = 2048;
            v30 = v18;
            _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %@(%p) Failed to start media", buf, 0x30u);
          }
        }
      }

      [*(a1 + 32) handleStartDidSucceed:0 withError:a3];
      v12 = a1 + 48;
    }

    result = (*(*v12 + 16))();
    goto LABEL_24;
  }

  v9 = (v6 + 176);

  return pthread_mutex_unlock(v9);
}

uint64_t __44__VCMediaStream_startWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) handleStartDidSucceed:a2 withError:a3];
  if (*(a1 + 48) == 1)
  {
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  return result;
}

- (void)setState:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != a3)
  {
    v4 = *&a3;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v14 = 136316162;
      *&v14[4] = v7;
      *&v14[12] = 2080;
      *&v14[14] = "[VCMediaStream setState:]";
      *&v14[22] = 1024;
      LODWORD(v15) = 1621;
      WORD2(v15) = 2080;
      *(&v15 + 6) = [(VCMediaStream *)self streamStateToString:state];
      HIWORD(v15) = 2080;
      v16 = [(VCMediaStream *)self streamStateToString:v4];
      v9 = "VCMediaStream [%s] %s:%d Exiting state:%s Entering state:%s";
      v10 = v8;
      v11 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v14 = 136316674;
      *&v14[4] = v12;
      *&v14[12] = 2080;
      *&v14[14] = "[VCMediaStream setState:]";
      *&v14[22] = 1024;
      LODWORD(v15) = 1621;
      WORD2(v15) = 2112;
      *(&v15 + 6) = v6;
      HIWORD(v15) = 2048;
      v16 = self;
      *v17 = 2080;
      *&v17[2] = [(VCMediaStream *)self streamStateToString:state];
      *&v17[10] = 2080;
      *&v17[12] = [(VCMediaStream *)self streamStateToString:v4];
      v9 = "VCMediaStream [%s] %s:%d %@(%p) Exiting state:%s Entering state:%s";
      v10 = v13;
      v11 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v14, v11);
LABEL_13:
    [(VCMediaStream *)self willExitState:state newState:v4, *v14, *&v14[16], v15, v16, *v17, *&v17[16], v18];
    self->_state = v4;
    [(VCMediaStream *)self didEnterState:v4 oldState:state];
  }
}

- (void)startTransportSessionWithCompletion:(id)a3
{
  [(VCMediaStream *)self setUpWiFiChannelSequenceMonitor];
  [(VCMediaStream *)self reportTransportInfo];
  if (self->_transportSession)
  {

    self->_startTransportSessionCompletionBlock = [a3 copy];
    transportSession = self->_transportSession;

    [(VCTransportSession *)transportSession start];
  }

  else
  {
    [(VCMediaStream *)self createNWMonitor];
    v6 = *(a3 + 2);

    v6(a3, 1, 0);
  }
}

- (void)handleStartDidSucceed:(BOOL)a3 withError:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_state != 1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      state = self->_state;
      v17 = 136316162;
      v18 = v8;
      v19 = 2080;
      v20 = "[VCMediaStream handleStartDidSucceed:withError:]";
      v21 = 1024;
      v22 = 1687;
      v23 = 2048;
      v24 = state;
      v25 = 2112;
      v26 = self;
      v11 = "VCMediaStream [%s] %s:%d Ignoring Link connected event on stream with _state=%lu self=%@";
      v12 = v9;
      v13 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v16 = self->_state;
      v17 = 136316674;
      v18 = v14;
      v19 = 2080;
      v20 = "[VCMediaStream handleStartDidSucceed:withError:]";
      v21 = 1024;
      v22 = 1687;
      v23 = 2112;
      v24 = v7;
      v25 = 2048;
      v26 = self;
      v27 = 2048;
      v28 = v16;
      v29 = 2112;
      v30 = self;
      v11 = "VCMediaStream [%s] %s:%d %@(%p) Ignoring Link connected event on stream with _state=%lu self=%@";
      v12 = v15;
      v13 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
    return;
  }

  v6 = a3;

  if (v6)
  {
    [(VCMediaStream *)self startRTCPSendHeartbeat];
    [(VCMediaStream *)self startTimeoutHeartbeat];

    [(VCMediaStream *)self setState:2];
  }

  else
  {
    self->_stopError = a4;

    [(VCMediaStream *)self stopInternalWithHandler:0];
  }
}

- (void)notifyDelegateDidReceiveRTCPPackets:(_RTCPPacketList *)a3
{
  v11[7] = *MEMORY[0x1E69E9840];
  v5 = [(VCMediaStream *)self copyDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a3->var1)
    {
      v7 = 0;
      do
      {
        v8 = a3->var2[v7];
        v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:RTCPPacketByteSize(v8)];
        [v6 addObject:v9];

        ++v7;
      }

      while (a3->var1 > v7);
    }

    delegateNotificationQueue = self->_delegateNotificationQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__VCMediaStream_notifyDelegateDidReceiveRTCPPackets___block_invoke;
    v11[3] = &unk_1E85F3E30;
    v11[4] = v5;
    v11[5] = self;
    v11[6] = v6;
    dispatch_async(delegateNotificationQueue, v11);
  }
}

- (BOOL)startMediaTransportsWithError:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transportArray = self->_transportArray;
  v6 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(transportArray);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) onStart];
        if (v10 < 0)
        {
          [(VCMediaStream *)v10 startMediaTransportsWithError:a3, self];
          return 0;
        }
      }

      v7 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)shouldFinalizeAggregationOnStop
{
  if (!self->_isReportingAgentOwner || self->_operatingMode != 12)
  {
    return 0;
  }

  if ([(NSString *)self->_clientName isEqualToString:@"NearbyScreenSharing"])
  {
    return 1;
  }

  clientName = self->_clientName;

  return [(NSString *)clientName isEqualToString:@"SidecarSharing"];
}

- (void)stopMediaTransports
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  transportArray = self->_transportArray;
  v3 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(transportArray);
        }

        [*(*(&v8 + 1) + 8 * i) onStop];
      }

      v4 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (id)stopWithError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__24;
  v14 = __Block_byref_object_dispose__24;
  v15 = 0;
  self->_stopError = a3;
  v4 = dispatch_semaphore_create(0);
  [(VCObject *)self startTimeoutTimer];
  pthread_mutex_lock(&self->_streamLock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__VCMediaStream_stopWithError___block_invoke;
  v9[3] = &unk_1E85F7C68;
  v9[5] = v4;
  v9[6] = &v10;
  v9[4] = self;
  [(VCMediaStream *)self stopInternalWithHandler:v9];
  pthread_mutex_unlock(&self->_streamLock);
  v5 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream stopWithError:];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v11 + 5, 32037, 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 1777], @"Media stream stop time out", @"Time out");
    VCUtil_GenerateDiagnostics(0, 1, "Media stream stop time out", 1u);
    v6 = v11[5];
  }

  dispatch_release(v4);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

intptr_t __31__VCMediaStream_stopWithError___block_invoke(uint64_t a1, int a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v9 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v9 = "<nil>";
        }

        v18 = *(a1 + 32);
        v20 = 136316674;
        v21 = v7;
        v22 = 2080;
        v23 = "[VCMediaStream stopWithError:]_block_invoke";
        v24 = 1024;
        v25 = 1766;
        v26 = 2080;
        v27 = v9;
        v28 = 2048;
        v29 = v18;
        v30 = 1024;
        *v31 = a2;
        *&v31[4] = 2112;
        *&v31[6] = a3;
        v15 = "VCMediaStream [%s] %s:%d %s[%p] Executing stop completion handler, succeeded=%d error=%@";
        v16 = v8;
        v17 = 64;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        if (objc_opt_class())
        {
          v13 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v13 = "<nil>";
        }

        v14 = *(a1 + 32);
        v20 = 136317186;
        v21 = v10;
        v22 = 2080;
        v23 = "[VCMediaStream stopWithError:]_block_invoke";
        v24 = 1024;
        v25 = 1766;
        v26 = 2112;
        v27 = v6;
        v28 = 2048;
        v29 = v12;
        v30 = 2080;
        *v31 = v13;
        *&v31[8] = 2048;
        *&v31[10] = v14;
        v32 = 1024;
        v33 = a2;
        v34 = 2112;
        v35 = a3;
        v15 = "VCMediaStream [%s] %s:%d %@(%p) %s[%p] Executing stop completion handler, succeeded=%d error=%@";
        v16 = v11;
        v17 = 84;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 40) = a3;
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)stopInternalWithHandler:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v8 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136316418;
      v24 = v6;
      v25 = 2080;
      v26 = "[VCMediaStream stopInternalWithHandler:]";
      v27 = 1024;
      v28 = 1791;
      v29 = 2080;
      v30 = v8;
      v31 = 2048;
      v32 = self;
      v33 = 2080;
      v34 = "[VCMediaStream stopInternalWithHandler:]";
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s", buf, 0x3Au);
    }
  }

  v9 = self->_state;
  if (v9 != 3 && v9 != 0)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __41__VCMediaStream_stopInternalWithHandler___block_invoke;
    v21[3] = &unk_1E85F83E8;
    v22 = state;
    v21[4] = self;
    v21[5] = a3;
    [(VCMediaStream *)self setState:3];
    [(VCMediaStream *)self stopRTCPSendHeartbeat];
    [(VCMediaStream *)self stopTimeoutHeartbeat];
    [(VCMediaStream *)self destroyNWMonitor];
    [(VCTransportSession *)self->_transportSession destroyNWMonitor];
    [(VCMediaStream *)self cleanUpWiFiChannelSequenceMonitor];
    [(VCMediaStream *)self onStopWithCompletionHandler:v21];
    [(VCMediaStream *)self unregisterStatistics];
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_23;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v14 = self->_state;
    *buf = 136315906;
    v24 = v12;
    v25 = 2080;
    v26 = "[VCMediaStream stopInternalWithHandler:]";
    v27 = 1024;
    v28 = 1793;
    v29 = 1024;
    LODWORD(v30) = v14;
    v15 = "VCMediaStream [%s] %s:%d Stop called while media stream is already stopped (state=%d)";
    v16 = v13;
    v17 = 34;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCMediaStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_23;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v20 = self->_state;
    *buf = 136316418;
    v24 = v18;
    v25 = 2080;
    v26 = "[VCMediaStream stopInternalWithHandler:]";
    v27 = 1024;
    v28 = 1793;
    v29 = 2112;
    v30 = v11;
    v31 = 2048;
    v32 = self;
    v33 = 1024;
    LODWORD(v34) = v20;
    v15 = "VCMediaStream [%s] %s:%d %@(%p) Stop called while media stream is already stopped (state=%d)";
    v16 = v19;
    v17 = 54;
  }

  _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_23:
  [(VCObject *)self stopTimeoutTimer];
  if (a3)
  {
    (*(a3 + 2))(a3, 1, 0);
  }
}

uint64_t __41__VCMediaStream_stopInternalWithHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v9 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v9 = "<nil>";
        }

        v18 = *(a1 + 32);
        *v49 = 136316418;
        *&v49[4] = v7;
        *&v49[12] = 2080;
        *&v49[14] = "[VCMediaStream stopInternalWithHandler:]_block_invoke";
        *&v49[22] = 1024;
        LODWORD(v50) = 1801;
        WORD2(v50) = 2080;
        *(&v50 + 6) = v9;
        HIWORD(v50) = 2048;
        v51 = v18;
        *v52 = 1024;
        *&v52[2] = a2;
        v15 = "VCMediaStream [%s] %s:%d %s[%p] Executing stop completion handler, stop succeeded[%d]";
        v16 = v8;
        v17 = 54;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        if (objc_opt_class())
        {
          v13 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v13 = "<nil>";
        }

        v14 = *(a1 + 32);
        *v49 = 136316930;
        *&v49[4] = v10;
        *&v49[12] = 2080;
        *&v49[14] = "[VCMediaStream stopInternalWithHandler:]_block_invoke";
        *&v49[22] = 1024;
        LODWORD(v50) = 1801;
        WORD2(v50) = 2112;
        *(&v50 + 6) = v6;
        HIWORD(v50) = 2048;
        v51 = v12;
        *v52 = 2080;
        *&v52[2] = v13;
        *&v52[10] = 2048;
        *&v52[12] = v14;
        *&v52[20] = 1024;
        *&v52[22] = a2;
        v15 = "VCMediaStream [%s] %s:%d %@(%p) %s[%p] Executing stop completion handler, stop succeeded[%d]";
        v16 = v11;
        v17 = 74;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, v49, v17);
      }
    }
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    pthread_mutex_lock((v19 + 176));
  }

  if (a2)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_48;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      if (objc_opt_class())
      {
        v24 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v24 = "<nil>";
      }

      v36 = *(a1 + 32);
      *v49 = 136316162;
      *&v49[4] = v22;
      *&v49[12] = 2080;
      *&v49[14] = "[VCMediaStream stopInternalWithHandler:]_block_invoke";
      *&v49[22] = 1024;
      LODWORD(v50) = 1805;
      WORD2(v50) = 2080;
      *(&v50 + 6) = v24;
      HIWORD(v50) = 2048;
      v51 = v36;
      v33 = "VCMediaStream [%s] %s:%d %s[%p] Stopping stream transports";
      v34 = v23;
      v35 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_48;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v27 = *(a1 + 32);
      if (objc_opt_class())
      {
        v28 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v28 = "<nil>";
      }

      v32 = *(a1 + 32);
      *v49 = 136316674;
      *&v49[4] = v25;
      *&v49[12] = 2080;
      *&v49[14] = "[VCMediaStream stopInternalWithHandler:]_block_invoke";
      *&v49[22] = 1024;
      LODWORD(v50) = 1805;
      WORD2(v50) = 2112;
      *(&v50 + 6) = v20;
      HIWORD(v50) = 2048;
      v51 = v27;
      *v52 = 2080;
      *&v52[2] = v28;
      *&v52[10] = 2048;
      *&v52[12] = v32;
      v33 = "VCMediaStream [%s] %s:%d %@(%p) %s[%p] Stopping stream transports";
      v34 = v26;
      v35 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, v49, v35);
LABEL_48:
    [*(a1 + 32) stopMediaTransports];
    [*(*(a1 + 32) + 592) stop];
    [*(a1 + 32) setState:0];
    goto LABEL_49;
  }

  [*(a1 + 32) setState:*(a1 + 48)];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __41__VCMediaStream_stopInternalWithHandler___block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v21 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 32);
        *v49 = 136316162;
        *&v49[4] = v29;
        *&v49[12] = 2080;
        *&v49[14] = "[VCMediaStream stopInternalWithHandler:]_block_invoke";
        *&v49[22] = 1024;
        LODWORD(v50) = 1811;
        WORD2(v50) = 2112;
        *(&v50 + 6) = v21;
        HIWORD(v50) = 2048;
        v51 = v31;
        _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %@(%p) Failed to stop media", v49, 0x30u);
      }
    }
  }

LABEL_49:
  v37 = *(a1 + 32);
  if (v37)
  {
    pthread_mutex_unlock((v37 + 176));
    v38 = *(a1 + 32);
  }

  else
  {
    v38 = 0;
  }

  [v38 stopTimeoutTimer];
  if ([*(a1 + 32) shouldFinalizeAggregationOnStop])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_64;
      }

      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }

      *v49 = 136315650;
      *&v49[4] = v40;
      *&v49[12] = 2080;
      *&v49[14] = "[VCMediaStream stopInternalWithHandler:]_block_invoke";
      *&v49[22] = 1024;
      LODWORD(v50) = 1818;
      v42 = "VCMediaStream [%s] %s:%d Finalizing aggregation on stop";
      v43 = v41;
      v44 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v39 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v39 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_64;
      }

      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }

      v47 = *(a1 + 32);
      *v49 = 136316162;
      *&v49[4] = v45;
      *&v49[12] = 2080;
      *&v49[14] = "[VCMediaStream stopInternalWithHandler:]_block_invoke";
      *&v49[22] = 1024;
      LODWORD(v50) = 1818;
      WORD2(v50) = 2112;
      *(&v50 + 6) = v39;
      HIWORD(v50) = 2048;
      v51 = v47;
      v42 = "VCMediaStream [%s] %s:%d %@(%p) Finalizing aggregation on stop";
      v43 = v46;
      v44 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, v42, v49, v44);
LABEL_64:
    [*(a1 + 32) reportingAgent];
    VCReporting_finalizeAggregation();
    [*(a1 + 32) reportingAgent];
    VCReporting_FlushReportingSession();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, a3);
  }

  return result;
}

- (id)setPause:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__24;
  v16 = __Block_byref_object_dispose__24;
  v17 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __26__VCMediaStream_setPause___block_invoke;
  v10[3] = &unk_1E85F8410;
  v11 = v3;
  v10[5] = v5;
  v10[6] = &v12;
  v10[4] = self;
  [(VCMediaStream *)self setPause:v3 withCompletionHandler:v10];
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStream setPause:];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v13 + 5, 32037, 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 1853], @"Media stream pause time out", @"Time out");
    VCUtil_GenerateDiagnostics(0, 1, "Media stream pause time out", 1u);
    v7 = v13[5];
  }

  dispatch_release(v5);
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v8;
}

intptr_t __26__VCMediaStream_setPause___block_invoke(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v8 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v12 = 136316930;
      v13 = v6;
      v14 = 2080;
      v15 = "[VCMediaStream setPause:]_block_invoke";
      v16 = 1024;
      v17 = 1842;
      v18 = 2080;
      v19 = v8;
      v20 = 2048;
      v21 = v9;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = a2;
      v26 = 2112;
      v27 = a3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] setPause=%d completed success=%d error=%@", &v12, 0x46u);
    }
  }

  *(*(*(a1 + 48) + 8) + 40) = a3;
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (id)getInvalidParamErrorForSetPause:(BOOL)a3 didSucceed:(BOOL)a4
{
  v4 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (a4)
  {
    [VCMediaStream getInvalidParamErrorForSetPause:? didSucceed:?];
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 1870];
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v13, 32016, 115, v6, @"Bad API usage", [MEMORY[0x1E696AEC0] stringWithFormat:@"Trying to set pause=%d while the media stream is in state=%d", v4, self->_state]);
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaStream getInvalidParamErrorForSetPause:v8 didSucceed:&v13];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          if (v13)
          {
            v12 = [objc_msgSend(v13 "description")];
          }

          else
          {
            v12 = "<nil>";
          }

          *buf = 136316418;
          v15 = v9;
          v16 = 2080;
          v17 = "[VCMediaStream getInvalidParamErrorForSetPause:didSucceed:]";
          v18 = 1024;
          v19 = 1873;
          v20 = 2112;
          v21 = v7;
          v22 = 2048;
          v23 = self;
          v24 = 2080;
          v25 = v12;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %@(%p) error=%s", buf, 0x3Au);
        }
      }
    }
  }

  return v13;
}

- (void)setPause:(BOOL)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v38 = *MEMORY[0x1E69E9840];
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v9 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      v10 = self->_state == 4;
      *buf = 136316674;
      v25 = v7;
      v26 = 2080;
      v27 = "[VCMediaStream setPause:withCompletionHandler:]";
      v28 = 1024;
      v29 = 1880;
      v30 = 2080;
      v31 = v9;
      v32 = 2048;
      v33 = self;
      v34 = 1024;
      v35 = v10;
      v36 = 1024;
      v37 = v5;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] setPause (was %d is %d)", buf, 0x3Cu);
    }
  }

  state = self->_state;
  if (v5)
  {
    if ((state - 1) < 2)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_2;
      v20[3] = &unk_1E85F5518;
      v20[4] = self;
      v20[5] = a4;
      [(VCMediaStream *)self onPauseWithCompletionHandler:v20];
LABEL_14:
      pthread_mutex_unlock(&self->_streamLock);
      return;
    }

    v12 = state == 4;
    pthread_mutex_unlock(&self->_streamLock);
    delegateNotificationQueue = self->_delegateNotificationQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48__VCMediaStream_setPause_withCompletionHandler___block_invoke;
    v21[3] = &unk_1E85F8438;
    v22 = v5;
    v23 = v12;
    v21[4] = self;
    v21[5] = a4;
    v14 = v21;
  }

  else
  {
    if (state == 4)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_2_207;
      v16[3] = &unk_1E85F5518;
      v16[4] = self;
      v16[5] = a4;
      [(VCMediaStream *)self onResumeWithCompletionHandler:v16];
      goto LABEL_14;
    }

    v15 = state == 2;
    pthread_mutex_unlock(&self->_streamLock);
    delegateNotificationQueue = self->_delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_206;
    block[3] = &unk_1E85F8438;
    v18 = 0;
    v19 = v15;
    block[4] = self;
    block[5] = a4;
    v14 = block;
  }

  dispatch_async(delegateNotificationQueue, v14);
}

uint64_t __48__VCMediaStream_setPause_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) getInvalidParamErrorForSetPause:*(a1 + 48) didSucceed:*(a1 + 49)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_2(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    pthread_mutex_lock((v4 + 176));
  }

  if (a2)
  {
    [*(a1 + 32) setState:4];
  }

  else if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_2_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v11 = 136316162;
        v12 = v6;
        v13 = 2080;
        v14 = "[VCMediaStream setPause:withCompletionHandler:]_block_invoke";
        v15 = 1024;
        v16 = 1896;
        v17 = 2112;
        v18 = v5;
        v19 = 2048;
        v20 = v10;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %@(%p) Error pausing media", &v11, 0x30u);
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    pthread_mutex_unlock((v8 + 176));
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_206(uint64_t a1)
{
  [*(a1 + 32) getInvalidParamErrorForSetPause:*(a1 + 48) didSucceed:*(a1 + 49)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_2_207(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    pthread_mutex_lock((v4 + 176));
  }

  v5 = *(a1 + 32);
  if (a2)
  {
    [v5 setState:2];
  }

  else
  {
    [v5 setState:4];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_2_207_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 32);
          v12 = 136316162;
          v13 = v7;
          v14 = 2080;
          v15 = "[VCMediaStream setPause:withCompletionHandler:]_block_invoke";
          v16 = 1024;
          v17 = 1919;
          v18 = 2112;
          v19 = v6;
          v20 = 2048;
          v21 = v11;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %@(%p) Error resuming media", &v12, 0x30u);
        }
      }
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    pthread_mutex_unlock((v9 + 176));
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)setLocalParticipantInfo:(id)a3 networkSockets:(id)a4 withError:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  self->_callID = [a3 objectForKeyedSubscript:@"vcMediaStreamCallID"];
  [(VCMediaStream *)self onCallIDChanged];
  if ([a3 objectForKeyedSubscript:@"vcMediaStreamClientPID"])
  {
    self->_clientPID = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamClientPID", "intValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"vcMediaStreamRemoteEndpointInfo"])
  {
    self->_remoteEndpointInfo = -[VCCallInfoBlob initWithData:]([VCCallInfoBlob alloc], "initWithData:", [a3 objectForKeyedSubscript:@"vcMediaStreamRemoteEndpointInfo"]);
  }

  if ([a3 objectForKeyedSubscript:@"vcMediaStreamClientName"])
  {
    self->_clientName = [a3 objectForKeyedSubscript:@"vcMediaStreamClientName"];
  }

  if ([a3 objectForKeyedSubscript:@"vcMediaStreamClientSessionID"])
  {
    self->_clientSessionID = [a3 objectForKeyedSubscript:@"vcMediaStreamClientSessionID"];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v11 = [objc_msgSend(objc_opt_class() "description")];
        if (a3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v11 = "<nil>";
        if (a3)
        {
LABEL_13:
          v12 = [objc_msgSend(a3 "description")];
          if (a4)
          {
LABEL_14:
            v13 = [objc_msgSend(a4 "description")];
LABEL_18:
            callID = self->_callID;
            if (callID)
            {
              v15 = [[(NSString *)callID description] UTF8String];
            }

            else
            {
              v15 = "<nil>";
            }

            v17 = 136316930;
            v18 = v9;
            v19 = 2080;
            v20 = "[VCMediaStream setLocalParticipantInfo:networkSockets:withError:]";
            v21 = 1024;
            v22 = 1951;
            v23 = 2080;
            v24 = v11;
            v25 = 2048;
            v26 = self;
            v27 = 2080;
            v28 = v12;
            v29 = 2080;
            v30 = v13;
            v31 = 2080;
            v32 = v15;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] infoDict = %s networkSockets = %s callID = %s", &v17, 0x4Eu);
            goto LABEL_22;
          }

LABEL_17:
          v13 = "<nil>";
          goto LABEL_18;
        }
      }

      v12 = "<nil>";
      if (a4)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }
  }

LABEL_22:
  if (a4)
  {
    return [(VCMediaStream *)self setupRTPWithSocketDictionary:a4 error:a5];
  }

  else
  {
    return [(VCMediaStream *)self setupRTPWithLocalParticipantInfo:a3 error:a5];
  }
}

- (void)setStreamDirection:(int64_t)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316930;
      v19 = v5;
      v20 = 2080;
      v21 = "[VCMediaStream setStreamDirection:]";
      v22 = 1024;
      v23 = 1964;
      v24 = 2080;
      v25 = v7;
      v26 = 2048;
      v27 = self;
      v28 = 2080;
      v29 = "[VCMediaStream setStreamDirection:]";
      v30 = 1024;
      v31 = [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] streamDirection];
      v32 = 1024;
      v33 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s was[%d] now[%d]", buf, 0x46u);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  transportArray = self->_transportArray;
  v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *v15;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(transportArray);
      }

      [*(*(&v14 + 1) + 8 * i) setStreamDirection:a3];
    }

    v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v14 objects:v13 count:16];
  }

  while (v10);
  if (self)
  {
LABEL_17:
    pthread_mutex_unlock(&self->_streamLock);
  }
}

- (int64_t)streamDirection
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v3 = [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] streamDirection];
  if (self)
  {
    pthread_mutex_unlock(&self->_streamLock);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v6 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v6 = "<nil>";
      }

      v8 = 136316674;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCMediaStream streamDirection]";
      v12 = 1024;
      v13 = 1980;
      v14 = 2080;
      v15 = v6;
      v16 = 2048;
      v17 = self;
      v18 = 2080;
      v19 = "[VCMediaStream streamDirection]";
      v20 = 2048;
      v21 = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s streamDirection[%ld]", &v8, 0x44u);
    }
  }

  return v3;
}

- (void)sendControlPacketWithParameters:(_RTCP_SEND_CONTROL_PARAMETERS *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(VCMediaStream *)self compoundStreamIDs];
  a3->var18 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v13 + 1) + 8 * v9) unsignedShortValue];
      var18 = a3->var18;
      a3->var18 = var18 + 1;
      a3->var17[var18] = v10;
      if ((var18 + 1) == 12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] sendControlPacketWithParameters:a3];
}

- (void)setRtcpEnabled:(BOOL)a3
{
  v3 = a3;
  v34 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316674;
      v21 = v5;
      v22 = 2080;
      v23 = "[VCMediaStream setRtcpEnabled:]";
      v24 = 1024;
      v25 = 1998;
      v26 = 2080;
      v27 = v7;
      v28 = 2048;
      v29 = self;
      v30 = 2080;
      v31 = "[VCMediaStream setRtcpEnabled:]";
      v32 = 1024;
      v33 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s rtcpEnabled[%d]", buf, 0x40u);
    }
  }

  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  transportArray = self->_transportArray;
  v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(transportArray);
        }

        [*(*(&v16 + 1) + 8 * i) setRtcpEnabled:v3];
      }

      v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }

  state = self->_state;
  if (state)
  {
    v14 = state == 3;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    if (v3)
    {
      [(VCMediaStream *)self startRTCPSendHeartbeat];
    }

    else
    {
      [(VCMediaStream *)self stopRTCPSendHeartbeat];
    }
  }

  pthread_mutex_unlock(&self->_streamLock);
}

- (BOOL)isRTPTimeoutEnabled
{
  v2 = [(VCMediaStream *)self defaultTransport];

  return [(VCMediaStreamTransport *)v2 isRTPTimeoutEnabled];
}

- (BOOL)isRTCPTimeoutEnabled
{
  v2 = [(VCMediaStream *)self defaultTransport];

  return [(VCMediaStreamTransport *)v2 isRTCPTimeoutEnabled];
}

- (BOOL)isDecryptionTimeoutEnabled
{
  v2 = [(VCMediaStream *)self defaultTransport];

  return [(VCMediaStreamTransport *)v2 isDecryptionTimeoutEnabled];
}

- (BOOL)isRTCPSendEnabled
{
  v2 = [(VCMediaStream *)self defaultTransport];

  return [(VCMediaStreamTransport *)v2 isRTCPSendEnabled];
}

- (void)processRTPTimeoutSettingChange
{
  v3 = [(VCMediaStream *)self isRTPTimeoutEnabled];
  state = self->_state;
  if (state)
  {
    v5 = state == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v3)
    {

      [(VCMediaStream *)self startTimeoutHeartbeat];
    }

    else
    {

      [(VCMediaStream *)self stopTimeoutHeartbeat];
    }
  }
}

- (void)processRTCPTimeoutSettingChange
{
  v3 = [(VCMediaStream *)self isRTCPTimeoutEnabled];
  state = self->_state;
  if (state)
  {
    v5 = state == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v3)
    {

      [(VCMediaStream *)self startTimeoutHeartbeat];
    }

    else
    {

      [(VCMediaStream *)self stopTimeoutHeartbeat];
    }
  }
}

- (void)processDecryptionTimeoutSettingChange
{
  v3 = [(VCMediaStream *)self isDecryptionTimeoutEnabled];
  state = self->_state;
  if (state)
  {
    v5 = state == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v3)
    {

      [(VCMediaStream *)self startTimeoutHeartbeat];
    }

    else
    {

      [(VCMediaStream *)self stopTimeoutHeartbeat];
    }
  }
}

- (void)setRtpTimeOutEnabled:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316674;
      v23 = v5;
      v24 = 2080;
      v25 = "[VCMediaStream setRtpTimeOutEnabled:]";
      v26 = 1024;
      v27 = 2066;
      v28 = 2080;
      v29 = v7;
      v30 = 2048;
      v31 = self;
      v32 = 2080;
      v33 = "[VCMediaStream setRtpTimeOutEnabled:]";
      v34 = 1024;
      v35 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s rtpTimeOutEnabled[%d]", buf, 0x40u);
    }
  }

  v8 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  transportArray = self->_transportArray;
  v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v10)
  {
    [(VCMediaStream *)self processRTPTimeoutSettingChange];
LABEL_22:
    pthread_mutex_unlock((self + v8[869]));
    return;
  }

  v11 = v10;
  v12 = *v19;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(transportArray);
      }

      v14 = *(*(&v18 + 1) + 8 * i);
      v15 = [v14 isRTPTimeoutEnabled];
      [v14 setRtpTimeoutEnabled:v3];
      v16 = [v14 isRTPTimeoutEnabled];
      if ((v15 & 1) == 0)
      {
        if (v16)
        {
          self->_rtpTimeoutEnabledTime = NAN;
        }
      }
    }

    v11 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v18 objects:v17 count:16];
  }

  while (v11);
  [(VCMediaStream *)self processRTPTimeoutSettingChange];
  v8 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
  if (self)
  {
    goto LABEL_22;
  }
}

- (void)setRtcpTimeOutEnabled:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316674;
      v23 = v5;
      v24 = 2080;
      v25 = "[VCMediaStream setRtcpTimeOutEnabled:]";
      v26 = 1024;
      v27 = 2089;
      v28 = 2080;
      v29 = v7;
      v30 = 2048;
      v31 = self;
      v32 = 2080;
      v33 = "[VCMediaStream setRtcpTimeOutEnabled:]";
      v34 = 1024;
      v35 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s rtcpTimeOutEnabled[%d]", buf, 0x40u);
    }
  }

  v8 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  transportArray = self->_transportArray;
  v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v10)
  {
    [(VCMediaStream *)self processRTCPTimeoutSettingChange];
LABEL_22:
    pthread_mutex_unlock((self + v8[869]));
    return;
  }

  v11 = v10;
  v12 = *v19;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(transportArray);
      }

      v14 = *(*(&v18 + 1) + 8 * i);
      v15 = [v14 isRTCPTimeoutEnabled];
      [v14 setRtcpTimeoutEnabled:v3];
      v16 = [v14 isRTCPTimeoutEnabled];
      if ((v15 & 1) == 0)
      {
        if (v16)
        {
          self->_rtcpTimeoutEnabledTime = NAN;
        }
      }
    }

    v11 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v18 objects:v17 count:16];
  }

  while (v11);
  [(VCMediaStream *)self processRTCPTimeoutSettingChange];
  v8 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
  if (self)
  {
    goto LABEL_22;
  }
}

- (void)setDecryptionTimeOutEnabled:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316674;
      v23 = v5;
      v24 = 2080;
      v25 = "[VCMediaStream setDecryptionTimeOutEnabled:]";
      v26 = 1024;
      v27 = 2112;
      v28 = 2080;
      v29 = v7;
      v30 = 2048;
      v31 = self;
      v32 = 2080;
      v33 = "[VCMediaStream setDecryptionTimeOutEnabled:]";
      v34 = 1024;
      v35 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s decryptionTimeOutEnabled[%d]", buf, 0x40u);
    }
  }

  v8 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  transportArray = self->_transportArray;
  v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v10)
  {
    [(VCMediaStream *)self processDecryptionTimeoutSettingChange];
LABEL_22:
    pthread_mutex_unlock((self + v8[869]));
    return;
  }

  v11 = v10;
  v12 = *v19;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(transportArray);
      }

      v14 = *(*(&v18 + 1) + 8 * i);
      v15 = [v14 isDecryptionTimeoutEnabled];
      [v14 setDecryptionTimeoutEnabled:v3];
      v16 = [v14 isDecryptionTimeoutEnabled];
      if ((v15 & 1) == 0)
      {
        if (v16)
        {
          self->_decryptionTimeoutEnabledTime = NAN;
        }
      }
    }

    v11 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v18 objects:v17 count:16];
  }

  while (v11);
  [(VCMediaStream *)self processDecryptionTimeoutSettingChange];
  v8 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
  if (self)
  {
    goto LABEL_22;
  }
}

- (void)setRtpTimeOutInterval:(double)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316674;
      v22 = v5;
      v23 = 2080;
      v24 = "[VCMediaStream setRtpTimeOutInterval:]";
      v25 = 1024;
      v26 = 2135;
      v27 = 2080;
      v28 = v7;
      v29 = 2048;
      v30 = self;
      v31 = 2080;
      v32 = "[VCMediaStream setRtpTimeOutInterval:]";
      v33 = 2048;
      v34 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s rtpTimeOutInterval[%f]", buf, 0x44u);
    }
  }

  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  transportArray = self->_transportArray;
  v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (!v9)
  {
    [(VCMediaStream *)self processRTPTimeoutSettingChange];
LABEL_22:
    pthread_mutex_unlock(&self->_streamLock);
    return;
  }

  v10 = v9;
  v11 = *v18;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(transportArray);
      }

      v13 = *(*(&v17 + 1) + 8 * i);
      v14 = [v13 isRTPTimeoutEnabled];
      [v13 setRtpTimeoutInterval:a3];
      v15 = [v13 isRTPTimeoutEnabled];
      if ((v14 & 1) == 0)
      {
        if (v15)
        {
          self->_rtpTimeoutEnabledTime = NAN;
        }
      }
    }

    v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v10);
  [(VCMediaStream *)self processRTPTimeoutSettingChange];
  if (self)
  {
    goto LABEL_22;
  }
}

- (void)setRtcpTimeOutInterval:(double)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316674;
      v22 = v5;
      v23 = 2080;
      v24 = "[VCMediaStream setRtcpTimeOutInterval:]";
      v25 = 1024;
      v26 = 2158;
      v27 = 2080;
      v28 = v7;
      v29 = 2048;
      v30 = self;
      v31 = 2080;
      v32 = "[VCMediaStream setRtcpTimeOutInterval:]";
      v33 = 2048;
      v34 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s rtcpTimeOutInterval[%f]", buf, 0x44u);
    }
  }

  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  transportArray = self->_transportArray;
  v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (!v9)
  {
    [(VCMediaStream *)self processRTCPTimeoutSettingChange];
LABEL_22:
    pthread_mutex_unlock(&self->_streamLock);
    return;
  }

  v10 = v9;
  v11 = *v18;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(transportArray);
      }

      v13 = *(*(&v17 + 1) + 8 * i);
      v14 = [v13 isRTCPTimeoutEnabled];
      [v13 setRtcpTimeoutInterval:a3];
      v15 = [v13 isRTCPTimeoutEnabled];
      if ((v14 & 1) == 0)
      {
        if (v15)
        {
          self->_rtcpTimeoutEnabledTime = NAN;
        }
      }
    }

    v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v10);
  [(VCMediaStream *)self processRTCPTimeoutSettingChange];
  if (self)
  {
    goto LABEL_22;
  }
}

- (void)setDecryptionTimeOutInterval:(double)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316674;
      v22 = v5;
      v23 = 2080;
      v24 = "[VCMediaStream setDecryptionTimeOutInterval:]";
      v25 = 1024;
      v26 = 2181;
      v27 = 2080;
      v28 = v7;
      v29 = 2048;
      v30 = self;
      v31 = 2080;
      v32 = "[VCMediaStream setDecryptionTimeOutInterval:]";
      v33 = 2048;
      v34 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s decryptionTimeOutInterval[%f]", buf, 0x44u);
    }
  }

  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  transportArray = self->_transportArray;
  v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (!v9)
  {
    [(VCMediaStream *)self processDecryptionTimeoutSettingChange];
LABEL_22:
    pthread_mutex_unlock(&self->_streamLock);
    return;
  }

  v10 = v9;
  v11 = *v18;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(transportArray);
      }

      v13 = *(*(&v17 + 1) + 8 * i);
      v14 = [v13 isDecryptionTimeoutEnabled];
      VCMediaStreamTransport_SetDecryptionTimeoutInterval(v13, a3);
      v15 = [v13 isDecryptionTimeoutEnabled];
      if ((v14 & 1) == 0)
      {
        if (v15)
        {
          self->_decryptionTimeoutEnabledTime = NAN;
        }
      }
    }

    v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v10);
  [(VCMediaStream *)self processDecryptionTimeoutSettingChange];
  if (self)
  {
    goto LABEL_22;
  }
}

- (void)setRtcpSendInterval:(double)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (objc_opt_class())
      {
        v7 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316674;
      v21 = v5;
      v22 = 2080;
      v23 = "[VCMediaStream setRtcpSendInterval:]";
      v24 = 1024;
      v25 = 2203;
      v26 = 2080;
      v27 = v7;
      v28 = 2048;
      v29 = self;
      v30 = 2080;
      v31 = "[VCMediaStream setRtcpSendInterval:]";
      v32 = 2048;
      v33 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d %s[%p] %s rtcpSendInterval[%f]", buf, 0x44u);
    }
  }

  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  transportArray = self->_transportArray;
  v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(transportArray);
        }

        [*(*(&v16 + 1) + 8 * i) setRtcpSendInterval:a3];
      }

      v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }

  state = self->_state;
  if (state)
  {
    v14 = state == 3;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    if ([(VCMediaStream *)self isRTCPSendEnabled])
    {
      if (self->_rtcpSendHeartbeat)
      {
        [(VCMediaStream *)self resetRTCPSendHeartbeatTimer:0];
      }

      else
      {
        [(VCMediaStream *)self startRTCPSendHeartbeat];
      }
    }

    else
    {
      [(VCMediaStream *)self stopRTCPSendHeartbeat];
    }
  }

  pthread_mutex_unlock(&self->_streamLock);
}

- (void)setBasebandCongestionDetector:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];

  self->_basebandCongestionDetector = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  transportArray = self->_transportArray;
  v6 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(transportArray);
        }

        [*(*(&v11 + 1) + 8 * i) setBasebandCongestionDetector:self->_basebandCongestionDetector];
      }

      v7 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)setMediaQueue:(tagVCMediaQueue *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  mediaQueue = self->_mediaQueue;
  if (mediaQueue)
  {
    CFRelease(mediaQueue);
  }

  if (a3)
  {
    v6 = CFRetain(a3);
  }

  else
  {
    v6 = 0;
  }

  self->_mediaQueue = v6;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transportArray = self->_transportArray;
  v8 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(transportArray);
        }

        RTPSetVCMediaQueue([*(*(&v13 + 1) + 8 * i) rtpHandle], self->_mediaQueue);
      }

      v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }
}

- (void)applyClientSessionID:(int)a3 clientUserInfo:(id)a4
{
  if (a3 <= 0x1A && ((1 << a3) & 0x7DFED0C) != 0)
  {
    [a4 setObject:self->_clientSessionID forKeyedSubscript:@"CLID"];
  }
}

- (void)cleanUpWiFiChannelSequenceMonitor
{
  [(VCWiFiChannelSequenceMonitor *)[(VCMediaStream *)self wifiChannelSequenceMonitor] invalidate];

  [(VCMediaStream *)self setWifiChannelSequenceMonitor:0];
}

- (BOOL)generateReceptionReportList:(_RTCP_RECEPTION_REPORT *)a3 reportCount:(char *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  *a4 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  transportArray = self->_transportArray;
  v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v9)
  {
    v11 = v9;
    v24 = 0;
    v12 = *v38;
    *&v10 = 136315650;
    v22 = v10;
    v23 = transportArray;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(transportArray);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v25 = v7;
        if ([v14 generateReceptionReport:a3 reportCount:{&v25, v22}])
        {
          v15 = v25;
          a3 += v25;
          *a4 += v25;
          v7 -= v15;
          v24 = 1;
          continue;
        }

        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            continue;
          }

          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v27 = v19;
            v28 = 2080;
            v29 = "[VCMediaStream generateReceptionReportList:reportCount:]";
            v30 = 1024;
            v31 = 2320;
            _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d Failed to generate reception report.", buf, 0x1Cu);
          }

          goto LABEL_18;
        }

        v16 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v16 = [(VCMediaStream *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v27 = v17;
            v28 = 2080;
            v29 = "[VCMediaStream generateReceptionReportList:reportCount:]";
            v30 = 1024;
            v31 = 2320;
            v32 = 2112;
            v33 = v16;
            v34 = 2048;
            v35 = self;
            _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %@(%p) Failed to generate reception report.", buf, 0x30u);
          }

LABEL_18:
          transportArray = v23;
          continue;
        }
      }

      v11 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (!v11)
      {
        return v24;
      }
    }
  }

  return 0;
}

- (unsigned)getRTCPReportNTPTimeMiddle32ForReportId:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [(VCMediaStream *)self defaultTransport];

  return [(VCMediaStreamTransport *)v4 getRTCPReportNTPTimeMiddle32ForReportId:v3];
}

- (unsigned)getExtendedSequenceNumberForSequenceNumber:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(VCMediaStream *)self defaultTransport];

  return [(VCMediaStreamTransport *)v4 getExtendedSequenceNumberForSequenceNumber:v3];
}

- (void)resetRTCPSendHeartbeatTimer:(unint64_t)a3
{
  rtcpSendHeartbeat = self->_rtcpSendHeartbeat;
  if (rtcpSendHeartbeat)
  {
    [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtcpSendInterval];
    v7 = (v6 * 1000000000.0);
    [(VCMediaStream *)self rtcpHeartbeatLeeway];

    dispatch_source_set_timer(rtcpSendHeartbeat, a3, v7, (v8 * 1000000000.0));
  }
}

- (void)rtcpSendHeartbeat
{
  v36 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == 3 || state == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315650;
      v25 = v8;
      v26 = 2080;
      v27 = "[VCMediaStream rtcpSendHeartbeat]";
      v28 = 1024;
      v29 = 2349;
      v10 = "VCMediaStream [%s] %s:%d RTCP send heartbeat called while the stream has already stopped.";
      v11 = v9;
      v12 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136316162;
      v25 = v13;
      v26 = 2080;
      v27 = "[VCMediaStream rtcpSendHeartbeat]";
      v28 = 1024;
      v29 = 2349;
      v30 = 2112;
      *v31 = v5;
      *&v31[8] = 2048;
      *&v31[10] = self;
      v10 = "VCMediaStream [%s] %s:%d %@(%p) RTCP send heartbeat called while the stream has already stopped.";
      v11 = v14;
      v12 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    return;
  }

  v23 = 0;
  v22 = NAN;
  if ([(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] sendIntervalDidElapse:&v23 remainingTime:&v22])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_29;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 136316162;
      v25 = v15;
      v26 = 2080;
      v27 = "[VCMediaStream rtcpSendHeartbeat]";
      v28 = 1024;
      v29 = 2360;
      v30 = 1024;
      *v31 = v23;
      *&v31[4] = 2048;
      *&v31[6] = v22;
      v17 = "VCMediaStream [%s] %s:%d RTCP HeartBeat intervalElapsed:%d remainingInterval:%.5f";
      v18 = v16;
      v19 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_29;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 136316674;
      v25 = v20;
      v26 = 2080;
      v27 = "[VCMediaStream rtcpSendHeartbeat]";
      v28 = 1024;
      v29 = 2360;
      v30 = 2112;
      *v31 = v7;
      *&v31[8] = 2048;
      *&v31[10] = self;
      v32 = 1024;
      v33 = v23;
      v34 = 2048;
      v35 = v22;
      v17 = "VCMediaStream [%s] %s:%d %@(%p) RTCP HeartBeat intervalElapsed:%d remainingInterval:%.5f";
      v18 = v21;
      v19 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_29:
    if (v23)
    {
      [(VCMediaStream *)self onSendRTCPPacket];
    }

    else
    {
      [(VCMediaStream *)self resetRTCPSendHeartbeatTimer:dispatch_time(0, (v22 * 1000000000.0))];
    }
  }
}

- (void)startRTCPSendHeartbeat
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

_BYTE *__39__VCMediaStream_startRTCPSendHeartbeat__block_invoke(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 176));
  result = *(a1 + 32);
  if ((result[352] & 1) != 0 || ([result rtcpSendHeartbeat], (result = *(a1 + 32)) != 0))
  {
    v3 = (result + 176);

    return pthread_mutex_unlock(v3);
  }

  return result;
}

- (void)stopRTCPSendHeartbeat
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_rtcpSendHeartbeat)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v12 = 136315650;
      v13 = v4;
      v14 = 2080;
      v15 = "[VCMediaStream stopRTCPSendHeartbeat]";
      v16 = 1024;
      v17 = 2398;
      v6 = "VCMediaStream [%s] %s:%d Tearing down rtcp heartbeat!";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v12 = 136316162;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCMediaStream stopRTCPSendHeartbeat]";
      v16 = 1024;
      v17 = 2398;
      v18 = 2112;
      v19 = v3;
      v20 = 2048;
      v21 = self;
      v6 = "VCMediaStream [%s] %s:%d %@(%p) Tearing down rtcp heartbeat!";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
LABEL_13:
    self->_rtcpHeartbeatCancelled = 1;
    dispatch_source_cancel(self->_rtcpSendHeartbeat);
    rtcpSendHeartbeat = self->_rtcpSendHeartbeat;
    if (rtcpSendHeartbeat)
    {
      dispatch_release(rtcpSendHeartbeat);
      self->_rtcpSendHeartbeat = 0;
    }
  }
}

- (void)createNWMonitor
{
  os_unfair_lock_lock(&self->_nwMonitorLock);
  if (self->_transportSetupInfo.setupType == 4 && !self->_nwMonitor)
  {
    v3 = VCNWConnectionMonitor_Create(&self->_transportSetupInfo.var0.transportStreamInfo.context);
    self->_nwMonitor = v3;
    [(VCMediaStream *)self setupCallbacksWithNWConnectionMonitor:v3];
  }

  os_unfair_lock_unlock(&self->_nwMonitorLock);
}

- (void)destroyNWMonitor
{
  os_unfair_lock_lock(&self->_nwMonitorLock);
  nwMonitor = self->_nwMonitor;
  if (nwMonitor)
  {
    VCNWConnectionMonitor_Destroy(nwMonitor);
    self->_nwMonitor = 0;
  }

  os_unfair_lock_unlock(&self->_nwMonitorLock);
}

- (void)resetTimeoutHeartbeatTimer:(unint64_t)a3
{
  timeoutHeartbeat = self->_timeoutHeartbeat;
  if (timeoutHeartbeat)
  {
    dispatch_source_set_timer(timeoutHeartbeat, a3, (self->_timeoutHeartbeatInterval * 1000000000.0), 0x5F5E100uLL);
  }
}

- (void)resetTimeoutHeartbeatWithRTPTimeout:(double)a3 rtcpTimeout:(double)a4 decryptionTimeout:(double)a5 currentTime:(double)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = fmin(fmin(a3, a4), a5);
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCMediaStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_17;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    v18 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136316674;
        v23 = v16;
        v24 = 2080;
        v25 = "[VCMediaStream resetTimeoutHeartbeatWithRTPTimeout:rtcpTimeout:decryptionTimeout:currentTime:]";
        v26 = 1024;
        v27 = 2454;
        v28 = 2112;
        v29 = *&v9;
        v30 = 2048;
        v31 = *&self;
        v32 = 2048;
        v33 = v7;
        v34 = 2048;
        v35 = a6;
        v13 = "VCMediaStream [%s] %s:%d %@(%p) Schedule next timeout @ %f currentTime:%f";
        v14 = v17;
        v15 = 68;
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v22 = 136316674;
    v23 = v16;
    v24 = 2080;
    v25 = "[VCMediaStream resetTimeoutHeartbeatWithRTPTimeout:rtcpTimeout:decryptionTimeout:currentTime:]";
    v26 = 1024;
    v27 = 2454;
    v28 = 2112;
    v29 = *&v9;
    v30 = 2048;
    v31 = *&self;
    v32 = 2048;
    v33 = v7;
    v34 = 2048;
    v35 = a6;
    v19 = "VCMediaStream [%s] %s:%d %@(%p) Schedule next timeout @ %f currentTime:%f";
    v20 = v17;
    v21 = 68;
LABEL_19:
    _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, v19, &v22, v21);
    goto LABEL_17;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_17;
  }

  v10 = VRTraceErrorLogLevelToCSTR();
  v11 = *MEMORY[0x1E6986650];
  v12 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v22 = 136316162;
    v23 = v10;
    v24 = 2080;
    v25 = "[VCMediaStream resetTimeoutHeartbeatWithRTPTimeout:rtcpTimeout:decryptionTimeout:currentTime:]";
    v26 = 1024;
    v27 = 2454;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = a6;
    v19 = "VCMediaStream [%s] %s:%d Schedule next timeout @ %f currentTime:%f";
    v20 = v11;
    v21 = 48;
    goto LABEL_19;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136316162;
    v23 = v10;
    v24 = 2080;
    v25 = "[VCMediaStream resetTimeoutHeartbeatWithRTPTimeout:rtcpTimeout:decryptionTimeout:currentTime:]";
    v26 = 1024;
    v27 = 2454;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = a6;
    v13 = "VCMediaStream [%s] %s:%d Schedule next timeout @ %f currentTime:%f";
    v14 = v11;
    v15 = 48;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v22, v15);
  }

LABEL_17:
  [(VCMediaStream *)self resetTimeoutHeartbeatTimer:dispatch_time(0, ((v7 - a6) * 1000000000.0))];
}

- (double)computeNextTimoutWithEnabledTime:(double)a3 timeoutInterval:(double)a4 lastReceivedPacketTime:(double)a5 currentTime:(double)a6 lastTimeoutReportTime:(double)a7 timeoutReportInterval:(double)a8
{
  v8 = a4 + a5;
  v9 = fmax(a4 + a5, a7 + a8);
  if (a7 != 0.0)
  {
    v8 = v9;
  }

  result = v8;
  if (v8 <= a6)
  {
    return a6 + a8;
  }

  return result;
}

- (void)checkRTPPacketTimeoutAgainstTime:(double)a3 lastReceivedPacketTime:(double)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3 - self->_rtpTimeoutEnabledTime;
  [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtpTimeoutInterval];
  if (v7 > v8 && a3 - self->_lastRTPTimeoutReportTime > 1.0)
  {
    [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtpTimeoutInterval];
    if (a3 - a4 > v9)
    {
      self->_lastRTPTimeoutReportTime = a3;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_13;
        }

        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        rtpTimeoutEnabledTime = self->_rtpTimeoutEnabledTime;
        *buf = 136316418;
        v23 = v11;
        v24 = 2080;
        v25 = "[VCMediaStream checkRTPPacketTimeoutAgainstTime:lastReceivedPacketTime:]";
        v26 = 1024;
        v27 = 2499;
        v28 = 2048;
        v29 = a4;
        v30 = 2048;
        v31 = a3;
        v32 = 2048;
        v33 = rtpTimeoutEnabledTime;
        v14 = "VCMediaStream [%s] %s:%d Last RTP packet receive time:%f now:%f rtpTimeoutEnabledTime=%f";
        v15 = v12;
        v16 = 58;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          *&v10 = COERCE_DOUBLE([(VCMediaStream *)self performSelector:sel_logPrefix]);
        }

        else
        {
          *&v10 = COERCE_DOUBLE(&stru_1F570E008);
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_13;
        }

        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v20 = self->_rtpTimeoutEnabledTime;
        *buf = 136316930;
        v23 = v17;
        v24 = 2080;
        v25 = "[VCMediaStream checkRTPPacketTimeoutAgainstTime:lastReceivedPacketTime:]";
        v26 = 1024;
        v27 = 2499;
        v28 = 2112;
        v29 = *&v10;
        v30 = 2048;
        v31 = *&self;
        v32 = 2048;
        v33 = a4;
        v34 = 2048;
        v35 = a3;
        v36 = 2048;
        v37 = v20;
        v14 = "VCMediaStream [%s] %s:%d %@(%p) Last RTP packet receive time:%f now:%f rtpTimeoutEnabledTime=%f";
        v15 = v18;
        v16 = 78;
      }

      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
LABEL_13:
      [(VCMediaStream *)self onRTPTimeout];
      delegateNotificationQueue = self->_delegateNotificationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__VCMediaStream_checkRTPPacketTimeoutAgainstTime_lastReceivedPacketTime___block_invoke;
      block[3] = &unk_1E85F3778;
      block[4] = self;
      dispatch_async(delegateNotificationQueue, block);
    }
  }
}

uint64_t __73__VCMediaStream_checkRTPPacketTimeoutAgainstTime_lastReceivedPacketTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);

    return [v3 vcMediaStreamDidRTPTimeOut:v4];
  }

  return result;
}

- (void)checkRTCPPacketTimeoutAgainstTime:(double)a3 lastReceivedPacketTime:(double)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3 - self->_rtcpTimeoutEnabledTime;
  [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtcpTimeoutInterval];
  if (v7 > v8 && a3 - self->_lastRTCPTimeoutReportTime > self->_rtcpTimeoutReportInterval)
  {
    [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtcpTimeoutInterval];
    if (a3 - a4 > v9)
    {
      self->_lastRTCPTimeoutReportTime = a3;
      self->_rtcpDidTimeout = 1;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_16;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 136316162;
        v23 = v13;
        v24 = 2080;
        v25 = "[VCMediaStream checkRTCPPacketTimeoutAgainstTime:lastReceivedPacketTime:]";
        v26 = 1024;
        v27 = 2521;
        v28 = 2048;
        v29 = a4;
        v30 = 2048;
        v31 = a3;
        v15 = "VCMediaStream [%s] %s:%d Last RTCP packet receive time:%f now:%f";
        v16 = v14;
        v17 = 48;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [(VCMediaStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v10 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_16;
        }

        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 136316674;
        v23 = v18;
        v24 = 2080;
        v25 = "[VCMediaStream checkRTCPPacketTimeoutAgainstTime:lastReceivedPacketTime:]";
        v26 = 1024;
        v27 = 2521;
        v28 = 2112;
        v29 = *&v10;
        v30 = 2048;
        v31 = *&self;
        v32 = 2048;
        v33 = a4;
        v34 = 2048;
        v35 = a3;
        v15 = "VCMediaStream [%s] %s:%d %@(%p) Last RTCP packet receive time:%f now:%f";
        v16 = v19;
        v17 = 68;
      }

      _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
LABEL_16:
      [(VCMediaStream *)self onRTCPTimeout];
      delegateNotificationQueue = self->_delegateNotificationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__VCMediaStream_checkRTCPPacketTimeoutAgainstTime_lastReceivedPacketTime___block_invoke;
      block[3] = &unk_1E85F3778;
      block[4] = self;
      v12 = block;
      goto LABEL_17;
    }

    if (self->_rtcpDidTimeout && self->_lastRTCPTimeoutReportTime < a4)
    {
      self->_rtcpDidTimeout = 0;
      delegateNotificationQueue = self->_delegateNotificationQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __74__VCMediaStream_checkRTCPPacketTimeoutAgainstTime_lastReceivedPacketTime___block_invoke_2;
      v20[3] = &unk_1E85F3778;
      v20[4] = self;
      v12 = v20;
LABEL_17:
      dispatch_async(delegateNotificationQueue, v12);
    }
  }
}

uint64_t __74__VCMediaStream_checkRTCPPacketTimeoutAgainstTime_lastReceivedPacketTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);

    return [v3 vcMediaStreamDidRTCPTimeOut:v4];
  }

  return result;
}

uint64_t __74__VCMediaStream_checkRTCPPacketTimeoutAgainstTime_lastReceivedPacketTime___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);

    return [v3 vcMediaStreamDidRecoverFromRTCPTimeOut:v4];
  }

  return result;
}

uint64_t __VCMediaStream_CheckDecryptionTimeoutForMKMRecoveryAgainstTime_block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);

    return [v3 vcMediaStreamDidDecryptionTimeOutForMKMRecovery:v4];
  }

  return result;
}

- (void)timeoutHeartbeat
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = micro();
  if (self)
  {
    pthread_mutex_lock(&self->_streamLock);
  }

  state = self->_state;
  if (state == 3 || state == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_21;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v30 = 136315650;
      v31 = v15;
      v32 = 2080;
      v33 = "[VCMediaStream timeoutHeartbeat]";
      v34 = 1024;
      v35 = 2614;
      v17 = "VCMediaStream [%s] %s:%d RTCP send heartbeat called while the stream has already stopped.";
      v18 = v16;
      v19 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_21;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v30 = 136316162;
      v31 = v20;
      v32 = 2080;
      v33 = "[VCMediaStream timeoutHeartbeat]";
      v34 = 1024;
      v35 = 2614;
      v36 = 2112;
      v37 = v6;
      v38 = 2048;
      v39 = self;
      v17 = "VCMediaStream [%s] %s:%d %@(%p) RTCP send heartbeat called while the stream has already stopped.";
      v18 = v21;
      v19 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v30, v19);
LABEL_21:
    pthread_mutex_unlock(&self->_streamLock);
    return;
  }

  v7 = _VCMediaStream_DefaultTransport(self);
  if ([(VCMediaStream *)self isRTPTimeoutEnabled])
  {
    [(VCMediaStream *)self lastReceivedRTPPacketTime];
    v10 = v9;
    [(VCMediaStream *)self checkRTPPacketTimeoutAgainstTime:v3 lastReceivedPacketTime:v9];
    rtpTimeoutEnabledTime = self->_rtpTimeoutEnabledTime;
    [v7 rtpTimeoutInterval];
    [(VCMediaStream *)self computeNextTimoutWithEnabledTime:rtpTimeoutEnabledTime timeoutInterval:v12 lastReceivedPacketTime:v10 currentTime:v3 lastTimeoutReportTime:self->_lastRTPTimeoutReportTime timeoutReportInterval:1.0];
    v14 = v13;
  }

  else
  {
    v14 = NAN;
  }

  if ([(VCMediaStream *)self isRTCPTimeoutEnabled])
  {
    [(VCMediaStream *)self lastReceivedRTCPPacketTime];
    v23 = v22;
    [(VCMediaStream *)self checkRTCPPacketTimeoutAgainstTime:v3 lastReceivedPacketTime:v22];
    rtcpTimeoutEnabledTime = self->_rtcpTimeoutEnabledTime;
    [v7 rtcpTimeoutInterval];
    [(VCMediaStream *)self computeNextTimoutWithEnabledTime:rtcpTimeoutEnabledTime timeoutInterval:v25 lastReceivedPacketTime:v23 currentTime:v3 lastTimeoutReportTime:self->_lastRTCPTimeoutReportTime timeoutReportInterval:self->_rtcpTimeoutReportInterval];
    v27 = v26;
  }

  else
  {
    v27 = NAN;
  }

  if ([(VCMediaStream *)self isDecryptionTimeoutEnabled])
  {
    _VCMediaStream_CheckDecryptionTimeoutAgainstTime(self, v3, self->_decryptionErrorStartTime);
    [(VCMediaStream *)self computeNextTimoutWithEnabledTime:self->_decryptionTimeoutEnabledTime timeoutInterval:VCMediaStreamTransport_DecryptionTimeoutInterval(v7) lastReceivedPacketTime:self->_decryptionErrorStartTime currentTime:v3 lastTimeoutReportTime:self->_lastDecryptionTimeoutReportTime timeoutReportInterval:1.0];
    v29 = v28;
  }

  else
  {
    v29 = NAN;
  }

  [(VCMediaStream *)self resetTimeoutHeartbeatWithRTPTimeout:v14 rtcpTimeout:v27 decryptionTimeout:v29 currentTime:v3];

  pthread_mutex_unlock(&self->_streamLock);
}

- (void)startTimeoutHeartbeat
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)stopTimeoutHeartbeat
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_timeoutHeartbeat)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = 136315650;
      v24 = v13;
      v25 = 2080;
      v26 = "[VCMediaStream stopTimeoutHeartbeat]";
      v27 = 1024;
      v28 = 2707;
      v15 = "VCMediaStream [%s] %s:%d heartbeat is not active";
      v16 = v14;
      v17 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = 136316162;
      v24 = v21;
      v25 = 2080;
      v26 = "[VCMediaStream stopTimeoutHeartbeat]";
      v27 = 1024;
      v28 = 2707;
      v29 = 2112;
      v30 = v6;
      v31 = 2048;
      v32 = self;
      v15 = "VCMediaStream [%s] %s:%d %@(%p) heartbeat is not active";
      v16 = v22;
      v17 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v23, v17);
    return;
  }

  state = self->_state;
  if (state)
  {
    v4 = state == 3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7 = [(VCMediaStream *)self isRTPTimeoutEnabled];
    if (v7 || [(VCMediaStream *)self isRTCPTimeoutEnabled]|| [(VCMediaStream *)self isDecryptionTimeoutEnabled])
    {

      [(VCMediaStream *)self resetTimeoutHeartbeatTimer:0];
      return;
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_30;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v23 = 136315650;
    v24 = v8;
    v25 = 2080;
    v26 = "[VCMediaStream stopTimeoutHeartbeat]";
    v27 = 1024;
    v28 = 2719;
    v10 = "VCMediaStream [%s] %s:%d Tearing down timeout heartbeat!";
    v11 = v9;
    v12 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCMediaStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_30;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v23 = 136316162;
    v24 = v18;
    v25 = 2080;
    v26 = "[VCMediaStream stopTimeoutHeartbeat]";
    v27 = 1024;
    v28 = 2719;
    v29 = 2112;
    v30 = v5;
    v31 = 2048;
    v32 = self;
    v10 = "VCMediaStream [%s] %s:%d %@(%p) Tearing down timeout heartbeat!";
    v11 = v19;
    v12 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v23, v12);
LABEL_30:
  dispatch_source_cancel(self->_timeoutHeartbeat);
  timeoutHeartbeat = self->_timeoutHeartbeat;
  if (timeoutHeartbeat)
  {
    dispatch_release(timeoutHeartbeat);
    self->_timeoutHeartbeat = 0;
  }

  self->_rtpTimeoutEnabledTime = NAN;
  self->_rtcpTimeoutEnabledTime = NAN;
  self->_decryptionTimeoutEnabledTime = NAN;
}

- (int)handleMediaCallbackNotification:(int)a3 inData:(void *)a4 outData:(void *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        delegateNotificationQueue = self->_delegateNotificationQueue;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke;
        v19[3] = &unk_1E85F37F0;
        v19[4] = self;
        v19[5] = a4;
        v11 = v19;
      }

      else
      {
        v9 = *a4;
        delegateNotificationQueue = self->_delegateNotificationQueue;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_240;
        v17[3] = &unk_1E85F37A0;
        v17[4] = self;
        v18 = v9;
        v11 = v17;
      }

      goto LABEL_17;
    }

    if (a3 == 6)
    {
      delegateNotificationQueue = self->_delegateNotificationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_4;
      block[3] = &unk_1E85F37F0;
      block[4] = self;
      block[5] = a4;
      v11 = block;
      goto LABEL_17;
    }

    if (a3 == 7)
    {
      delegateNotificationQueue = self->_delegateNotificationQueue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_2;
      v16[3] = &unk_1E85F3778;
      v16[4] = self;
      v11 = v16;
LABEL_17:
      dispatch_async(delegateNotificationQueue, v11);
      return 0;
    }
  }

  else
  {
    if (a3 < 3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        v8 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v21 = v6;
            v22 = 2080;
            v23 = "[VCMediaStream handleMediaCallbackNotification:inData:outData:]";
            v24 = 1024;
            v25 = 2873;
            v26 = 1024;
            v27 = a3;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d MediaCallback: call back is not supported for notification %d.", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [VCMediaStream handleMediaCallbackNotification:inData:outData:];
        }
      }

      return 0;
    }

    if (a3 == 3)
    {
      delegateNotificationQueue = self->_delegateNotificationQueue;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_3;
      v15[3] = &unk_1E85F37F0;
      v15[4] = self;
      v15[5] = a4;
      v11 = v15;
      goto LABEL_17;
    }
  }

  v12 = -2146369535;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaStream handleMediaCallbackNotification:inData:outData:];
    }
  }

  return v12;
}

uint64_t __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v2;
        v8 = 2080;
        v9 = "[VCMediaStream handleMediaCallbackNotification:inData:outData:]_block_invoke";
        v10 = 1024;
        v11 = 2838;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d MediaCallback: SRTP key needs update", &v6, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_cold_1();
    }
  }

  return [objc_msgSend(*(a1 + 32) "notificationDelegate")];
}

uint64_t __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) notificationDelegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) notificationDelegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 mediaStream:v4 didReceiveFlushRequestWithPayloads:v5];
  }

  return result;
}

uint64_t __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v2;
        v8 = 2080;
        v9 = "[VCMediaStream handleMediaCallbackNotification:inData:outData:]_block_invoke_4";
        v10 = 1024;
        v11 = 2866;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d MediaCallback: Gap in RTP sequence number detected", &v6, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_4_cold_1();
    }
  }

  return [objc_msgSend(*(a1 + 32) "notificationDelegate")];
}

- (unsigned)endReason
{
  if (self->_stopError)
  {
    return [(NSError *)self->_stopError code];
  }

  if (self->_rtcpDidTimeout)
  {
    return 32040;
  }

  return 0;
}

uint64_t ___VCMediaStream_CheckDecryptionTimeoutAgainstTime_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v2 vcMediaStreamDidDecryptionTimeOut:v4];
  }

  return result;
}

- (BOOL)initializeTransportSessionWithRTPNWConnectionID:(id)a3 rtcpNWConnectionID:(id)a4 error:(id *)a5 isConnectionStartDelayed:(BOOL)a6
{
  v28 = *MEMORY[0x1E69E9840];

  LOBYTE(v20) = a6;
  self->_transportSession = [[VCTransportSessionNW alloc] initWithRTPNWConnectionID:a3 RTCPNWConnectionID:a4 handlerQueue:+[VCVTPWrapper context:"targetQueue"]notificationHandler:self eventHandler:self->_notificationHandler isConnectionStartDelayed:self->_packetEventHandler, v20];
  if ([(VCMediaStream *)self shouldUseNWConnectionBackingSocket])
  {
    v11 = [(VCTransportSession *)self->_transportSession dupRTPNWConnectionBackingSocket];
    transportSession = self->_transportSession;
    if (transportSession && v11 != -1)
    {
      v14 = [(VCTransportSession *)transportSession dupRTCPNWConnectionBackingSocket];

      v15 = [[VCTransportSessionSocket alloc] initWithRTPSocket:v11 RTCPSocket:v14];
      self->_transportSession = &v15->super;
      if (!v15)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v22 = v16;
            OUTLINED_FUNCTION_33_5();
            OUTLINED_FUNCTION_5_13();
            v23 = 443;
            v24 = v19;
            v25 = v11;
            v26 = v19;
            v27 = v14;
            _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d Failed to create VCTransportSessionSocket with backingRTPSocket=%d, backingRTCPSocket=%d", buf, 0x28u);
          }
        }

        VCCloseSocketIfValid(v11);
        VCCloseSocketIfValid(v14);
      }
    }
  }

  return [(VCMediaStream *)self initializeTransportSetupInfoWithTransportSession:a5];
}

- (void)collectChannelSequenceMetrics:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (![(VCMediaStream *)self wifiChannelSequenceMonitor])
  {
    goto LABEL_21;
  }

  v5 = [(VCWiFiChannelSequenceMonitor *)[(VCMediaStream *)self wifiChannelSequenceMonitor] copyAWDLChannelSequence:&v25 twoPtFourGHzChannelCount:&v27 fiveGHzChannelCount:&v27 + 4 dfsChannelCount:&v26 + 4 inactiveSlotCount:&v26];
  if ((v5 & 0x80000000) == 0)
  {
    [a3 setObject:objc_msgSend(v25 forKeyedSubscript:{"componentsJoinedByString:", @", "), @"ChannelSequence"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", HIDWORD(v27)), @"Unique5GhzChannelCount"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v27), @"Unique2pt4GhzChannelCount"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", HIDWORD(v26)), @"UniqueDFSChannelCount"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v26), @"InactiveSlotCount"}];
    if (!v26)
    {
      goto LABEL_21;
    }

    ++self->_channelSequenceCountWithInactiveSlots;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5 || (VRTraceErrorLogLevelToCSTR(), v7 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_19:
        if (self->_channelSequenceCountWithInactiveSlots == 2)
        {
          [(VCObject *)self reportingAgent];
          reportingSymptom();
        }

        goto LABEL_21;
      }

      if ([v25 componentsJoinedByString:{@", "}])
      {
        [objc_msgSend(objc_msgSend(v25 componentsJoinedByString:{@", "), "description"), "UTF8String"}];
      }

      OUTLINED_FUNCTION_41_5();
      OUTLINED_FUNCTION_31_10();
      v31 = v14;
      v32 = v15;
      v11 = "VCMediaStream [%s] %s:%d Channel sequence has inactive slots %s";
      v12 = v7;
      v13 = 38;
    }

    else
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        v6 = OUTLINED_FUNCTION_6_1();
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_19;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      if ([v25 componentsJoinedByString:{@", "}])
      {
        [objc_msgSend(objc_msgSend(v25 componentsJoinedByString:{@", "), "description"), "UTF8String"}];
      }

      *buf = 136316418;
      v29 = v8;
      v30 = 2080;
      OUTLINED_FUNCTION_31_10();
      v31 = 2112;
      v32 = v6;
      OUTLINED_FUNCTION_40_9();
      v33 = v10;
      v11 = "VCMediaStream [%s] %s:%d %@(%p) Channel sequence has inactive slots %s";
      v12 = v9;
      v13 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    goto LABEL_19;
  }

  v16 = v5;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_21;
    }

    VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_34_6();
    v31 = v19;
    LODWORD(v32) = v16;
    v20 = "VCMediaStream [%s] %s:%d copyAWDLChannelSequence failed, error=%x";
    v21 = v18;
    v22 = 34;
LABEL_32:
    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    goto LABEL_21;
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [(VCMediaStream *)self performSelector:sel_logPrefix];
  }

  else
  {
    v17 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v29 = v23;
      v30 = 2080;
      OUTLINED_FUNCTION_34_6();
      v31 = 2112;
      v32 = v17;
      OUTLINED_FUNCTION_40_9();
      LODWORD(v33) = v16;
      v20 = "VCMediaStream [%s] %s:%d %@(%p) copyAWDLChannelSequence failed, error=%x";
      v21 = v24;
      v22 = 54;
      goto LABEL_32;
    }
  }

LABEL_21:
}

- (BOOL)updateNWConnectionClientIDWithConfig:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (![a3 rtpNWConnectionClientID])
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = -[VCTransportSession setRTPNWConnectionID:rtcpNWConnectionID:](self->_transportSession, "setRTPNWConnectionID:rtcpNWConnectionID:", [a3 rtpNWConnectionClientID], objc_msgSend(a3, "rtcpNWConnectionClientID"));
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }

    v12 = v7;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_17;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!OUTLINED_FUNCTION_28())
      {
        goto LABEL_17;
      }

      *buf = 136315906;
      *&buf[4] = v14;
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_5_13();
      v24 = 1368;
      v25 = v16;
      LODWORD(v26) = v12;
      v17 = "VCMediaStream [%s] %s:%d Failed to set NWConnectionClientID on transportSession. result=%d";
      v18 = v15;
      v19 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCMediaStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_17;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136316418;
      *&buf[4] = v20;
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_5_13();
      v24 = 1368;
      v25 = 2112;
      v26 = v13;
      v27 = 2048;
      v28 = self;
      v29 = v22;
      v30 = v12;
      v17 = "VCMediaStream [%s] %s:%d %@(%p) Failed to set NWConnectionClientID on transportSession. result=%d";
      v18 = v21;
      v19 = 54;
    }

    _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
LABEL_17:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 1372, *buf];
    OUTLINED_FUNCTION_42_3();
    return 0;
  }

  v9 = [objc_msgSend(a3 "rtpNWConnectionClientID")];
  v10 = [objc_msgSend(a3 "rtcpNWConnectionClientID")];
  isNWConnectionStartDelayed = self->_isNWConnectionStartDelayed;

  return [(VCMediaStream *)self initializeTransportSessionWithRTPNWConnectionID:v9 rtcpNWConnectionID:v10 error:a4 isConnectionStartDelayed:isNWConnectionStartDelayed];
}

- (BOOL)updateRemoteAddressWithConfig:(id)a3 error:(id *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![a3 remoteEndpoints])
      {
        return 1;
      }

      v7 = -[VCTransportSession setRemoteEndpoints:error:](self->_transportSession, "setRemoteEndpoints:error:", [a3 remoteEndpoints], a4);
      goto LABEL_11;
    }

    if ([a3 remoteAddress])
    {
      v7 = -[VCTransportSession setRemoteAddress:remoteRTCPPort:](self->_transportSession, "setRemoteAddress:remoteRTCPPort:", [a3 remoteAddress], objc_msgSend(a3, "rtcpRemotePort"));
      goto LABEL_11;
    }

    return 1;
  }

  if (![a3 remoteAddress])
  {
    return 1;
  }

  if ((-[VCTransportSession setRemoteAddress:remoteRTCPPort:](self->_transportSession, "setRemoteAddress:remoteRTCPPort:", [a3 remoteAddress], objc_msgSend(a3, "rtcpRemotePort")) & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v7 = [(VCMediaStream *)self updateConnectionWithConfig:a3];
LABEL_11:
  if ((v7 & 0x80000000) == 0)
  {
    return 1;
  }

LABEL_13:
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v11 = *MEMORY[0x1E6986650];
    if (IsOSFaultDisabled)
    {
      if (OUTLINED_FUNCTION_31())
      {
        if (objc_opt_class())
        {
          [objc_msgSend(objc_opt_class() "description")];
        }

        *buf = 136316418;
        *&buf[4] = v9;
        OUTLINED_FUNCTION_33_5();
        OUTLINED_FUNCTION_22_5();
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d %s[%p] Failed to setRemoteAddress on transportSession %d", buf, 0x36u);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      if (objc_opt_class())
      {
        [objc_msgSend(objc_opt_class() "description")];
      }

      *buf = 136316418;
      *&buf[4] = v9;
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_22_5();
      _os_log_fault_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_FAULT, "VCMediaStream [%s] %s:%d %s[%p] Failed to setRemoteAddress on transportSession %d", buf, 0x36u);
    }
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStream.m", 1414, *buf];
  OUTLINED_FUNCTION_42_3();
  return 0;
}

- (void)configureDefaultMediaKeyIndexForStreamConfig:(id)a3
{
  if ([a3 count])
  {
    v5 = [a3 objectAtIndexedSubscript:0];
    if ((-[VCMediaStream isRCCMCipherSuiteWithStreamConfig:](self, "isRCCMCipherSuiteWithStreamConfig:", [v5 SRTPCipherSuite]) || -[VCMediaStream isRCCMCipherSuiteWithStreamConfig:](self, "isRCCMCipherSuiteWithStreamConfig:", objc_msgSend(v5, "SRTCPCipherSuite"))) && !objc_msgSend(v5, "securityKeyHolder"))
    {
      MediaKeyIndexWithUUIDString = VCMediaKeyIndex_CreateMediaKeyIndexWithUUIDString(@"0A0B0C0D-0E0F-0000-AAAA-0B0C0D0E0F01");
      v7 = MediaKeyIndexWithUUIDString;
      p_transportSetupInfo = &self->_transportSetupInfo;
      defaultMediaKeyIndex = self->_transportSetupInfo.defaultMediaKeyIndex;
      p_transportSetupInfo->defaultMediaKeyIndex = MediaKeyIndexWithUUIDString;
      if (MediaKeyIndexWithUUIDString)
      {
        CFRetain(MediaKeyIndexWithUUIDString);
      }

      if (defaultMediaKeyIndex)
      {
        CFRelease(defaultMediaKeyIndex);
      }

      if (v7)
      {

        CFRelease(v7);
      }
    }
  }
}

- (int)setUpWiFiChannelSequenceMonitor
{
  OUTLINED_FUNCTION_40_0();
  v18 = v2;
  v19 = v3;
  v5 = v4;
  v17 = *MEMORY[0x1E69E9840];
  if ([v4[74] networkInterfaceType] != 2 && objc_msgSend(v5[74], "networkInterfaceType") != 4)
  {
    goto LABEL_4;
  }

  [v5 setWifiChannelSequenceMonitor:objc_alloc_init(VCWiFiChannelSequenceMonitor)];
  v6 = [objc_msgSend(v5 "wifiChannelSequenceMonitor")];
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  [v5 cleanUpWiFiChannelSequenceMonitor];
  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_4;
    }

    VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    *(&v16 + 2) = v6;
    v9 = "VCMediaStream [%s] %s:%d Failed with result=%x";
    v10 = v8;
    v11 = 34;
LABEL_14:
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v14, v11);
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_8();
      v15 = v13;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_2();
      v9 = "VCMediaStream [%s] %s:%d %@(%p) Failed with result=%x";
      v10 = v12;
      v11 = 54;
      goto LABEL_14;
    }
  }

LABEL_4:
  OUTLINED_FUNCTION_39_0();
  return result;
}

- (void)defaultStreamConfig
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)oneToOneStreamConfig
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeTransportSetupInfoWithTransportSession:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)handleTransportSessionEvent:info:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)manageRateAdaptationRemoteEndpointForEndpointWithSSRC:(uint64_t)a1 actionType:.cold.1(uint64_t a1)
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

- (void)addRemoteEndpoint:error:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 1;
  OUTLINED_FUNCTION_39_0();
}

- (void)removeRemoteEndpoint:error:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)initializeTransportSessionWithLocalNWEnpoint:clientAuditToken:error:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpRTPWithLocalNWEndpoint:(uint64_t)a1 error:.cold.1(uint64_t a1)
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

- (void)setUpRTPWithLocalNWEndpoint:(uint64_t)a1 error:.cold.2(uint64_t a1)
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

- (void)setUpRTPWithLocalNWEndpoint:(uint64_t)a1 error:.cold.3(uint64_t a1)
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

- (void)setUpRTPWithLocalNWEndpoint:(uint64_t)a1 error:.cold.4(uint64_t a1)
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

- (void)dupNWConnectionBackingSocket:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)setupNWConnectionWithID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupNWConnectionWithID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupNWConnectionWithID:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupNWConnectionWithID:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupNWConnectionWithID:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupCallbacksWithNWConnectionMonitor:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupRTPForIDS
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initializeTransportSetupInfoWithIDSDestination:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v5 = v1;
  _os_log_fault_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_FAULT, "VCMediaStream [%s] %s:%d DatagramChannel start failed with error %x", v3, 0x22u);
}

- (void)initializeTransportSetupInfoWithIDSDestination:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __70__VCMediaStream_initializeTransportSetupInfoWithIDSDestination_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createRTPHandleWithStreamConfig:payloadType:localSSRC:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)createRTPHandleWithStreamConfig:(uint64_t)a3 payloadType:(uint64_t)a4 localSSRC:(uint64_t)a5 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, int a10, int a11, __int16 a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_40_0();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  a19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == v31)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    *(&a15 + 2) = v30;
    v33 = "VCMediaStream [%s] %s:%d Failed to create RTP extension. Error=%d";
    v34 = v32;
    v35 = 34;
LABEL_11:
    _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, v33, &a9, v35);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      a12 = v37;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_2();
      v33 = "VCMediaStream [%s] %s:%d %@(%p) Failed to create RTP extension. Error=%d";
      v34 = v36;
      v35 = 54;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_39_0();
}

- (void)createTransportWithStreamConfig:ssrc:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  RTPCloseHandle();
  OUTLINED_FUNCTION_39_0();
}

- (void)createTransportWithStreamConfig:ssrc:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)updateConnectionWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_18_2();
  [OUTLINED_FUNCTION_25_8(v1 *MEMORY[0x1E69E9840])];
  [v0 remoteAddress];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

- (void)updateConnectionWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_18_2();
  [OUTLINED_FUNCTION_25_8(v1 *MEMORY[0x1E69E9840])];
  [v0 remoteAddress];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

- (void)setMediaQueueInStreamConfig:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v1 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v7 = 1453;
        v2 = "VCMediaStream [%s] %s:%d Could not allocate memory for creating VCMediaStreamRateControlConfig object";
        v3 = v1;
        v4 = 28;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, v2, v6, v4);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        v2 = "VCMediaStream [%s] %s:%d %@(%p) Could not allocate memory for creating VCMediaStreamRateControlConfig object";
        v3 = v5;
        v4 = 48;
        goto LABEL_10;
      }
    }
  }
}

- (void)setStreamConfig:withError:.cold.1()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_25_8(v1, *MEMORY[0x1E69E9840]);
  if (objc_opt_class())
  {
    [objc_msgSend(objc_opt_class() "description")];
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_21_7();
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, "VCMediaStream [%s] %s:%d %s[%p] %s error configuring stream", v2, 0x3Au);
}

- (void)setStreamConfig:withError:.cold.2()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_25_8(v0, *MEMORY[0x1E69E9840]);
  if (objc_opt_class())
  {
    [objc_msgSend(objc_opt_class() "description")];
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
}

- (void)start
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __44__VCMediaStream_startWithCompletionHandler___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)stopWithError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __41__VCMediaStream_stopInternalWithHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setPause:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)getInvalidParamErrorForSetPause:(uint64_t)a1 didSucceed:(id *)a2 .cold.1(uint64_t a1, id *a2)
{
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)getInvalidParamErrorForSetPause:(void *)a1 didSucceed:.cold.2(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316162;
        v17 = v3;
        v18 = 2080;
        OUTLINED_FUNCTION_32_7();
        v19 = v5;
        *v20 = v6;
        *&v20[4] = v5;
        *&v20[6] = v7;
        v8 = "VCMediaStream [%s] %s:%d setPause=%d called while in same state=%d already";
        v9 = v4;
        v10 = 40;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v16, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316674;
        v17 = v11;
        v18 = 2080;
        OUTLINED_FUNCTION_32_7();
        v19 = 2112;
        *v20 = v2;
        *&v20[8] = 2048;
        v21 = a1;
        v22 = v13;
        v23 = v14;
        v24 = v13;
        v25 = v15;
        v8 = "VCMediaStream [%s] %s:%d %@(%p) setPause=%d called while in same state=%d already";
        v9 = v12;
        v10 = 60;
        goto LABEL_11;
      }
    }
  }
}

void __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __48__VCMediaStream_setPause_withCompletionHandler___block_invoke_2_207_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)handleMediaCallbackNotification:inData:outData:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v5 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, "VCMediaStream [%s] %s:%d MediaCallback: call back is not supported for notification %d.", v3, 0x22u);
}

- (void)handleMediaCallbackNotification:inData:outData:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 2838;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCMediaStream [%s] %s:%d MediaCallback: SRTP key needs update", v1, 0x1Cu);
}

void __64__VCMediaStream_handleMediaCallbackNotification_inData_outData___block_invoke_4_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 2866;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCMediaStream [%s] %s:%d MediaCallback: Gap in RTP sequence number detected", v1, 0x1Cu);
}

@end