@interface VCMediaStreamConfig
- (NSDictionary)allRxPayloadMap;
- (NSDictionary)allTxPayloadMap;
- (VCMediaStreamConfig)init;
- (VCMediaStreamConfig)initWithClientDictionary:(id)dictionary xpcDictionary:(id)xpcDictionary;
- (id)description;
- (int)jitterBufferModeFromAVCJitterBufferMode:(unsigned int)mode;
- (int64_t)primaryTxCodecType;
- (unsigned)defaultRemoteSSRC;
- (void)addRxPayloadType:(int)type networkPayload:(unsigned int)payload;
- (void)addTxPayloadType:(int)type networkPayload:(unsigned int)payload;
- (void)applyMediaStreamClientDictionary:(id)dictionary;
- (void)applyMediaStreamClientXPCDictionary:(id)dictionary;
- (void)dealloc;
- (void)extractRemoteEndpointsAndSSRC:(id)c;
- (void)setDefaultRemoteSSRC:(unsigned int)c;
- (void)setJbTargetEstimatorSynchronizer:(tagVCJBTargetEstimatorSynchronizer *)synchronizer;
- (void)setSecurityKeyHolder:(tagVCSecurityKeyHolder *)holder;
- (void)setupMediaStreamConfig;
@end

@implementation VCMediaStreamConfig

- (NSDictionary)allTxPayloadMap
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[VCMediaStreamConfig txPayloadMap](self, "txPayloadMap")}];
  multiwayConfig = [(VCMediaStreamConfig *)self multiwayConfig];
  if (multiwayConfig)
  {
    [v3 addEntriesFromDictionary:{-[VCMediaStreamMultiwayConfig txPayloadMap](multiwayConfig, "txPayloadMap")}];
  }

  return v3;
}

- (NSDictionary)allRxPayloadMap
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[VCMediaStreamConfig rxPayloadMap](self, "rxPayloadMap")}];
  multiwayConfig = [(VCMediaStreamConfig *)self multiwayConfig];
  if (multiwayConfig)
  {
    [v3 addEntriesFromDictionary:{-[VCMediaStreamMultiwayConfig rxPayloadMap](multiwayConfig, "rxPayloadMap")}];
  }

  return v3;
}

- (VCMediaStreamConfig)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCMediaStreamConfig;
  v2 = [(VCMediaStreamConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VCMediaStreamConfig *)v2 setupMediaStreamConfig];
  }

  return v3;
}

- (VCMediaStreamConfig)initWithClientDictionary:(id)dictionary xpcDictionary:(id)xpcDictionary
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCMediaStreamConfig;
  v6 = [(VCMediaStreamConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(VCMediaStreamConfig *)v6 setupMediaStreamConfig];
    if (dictionary)
    {
      [(VCMediaStreamConfig *)v7 applyMediaStreamClientDictionary:dictionary];
    }

    if (xpcDictionary)
    {
      [(VCMediaStreamConfig *)v7 applyMediaStreamClientXPCDictionary:xpcDictionary];
    }
  }

  return v7;
}

- (void)setSecurityKeyHolder:(tagVCSecurityKeyHolder *)holder
{
  securityKeyHolder = self->_securityKeyHolder;
  self->_securityKeyHolder = holder;
  if (holder)
  {
    CFRetain(holder);
  }

  if (securityKeyHolder)
  {

    CFRelease(securityKeyHolder);
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];

  securityKeyHolder = self->_securityKeyHolder;
  if (securityKeyHolder)
  {
    CFRelease(securityKeyHolder);
  }

  jbTargetEstimatorSynchronizer = self->_jbTargetEstimatorSynchronizer;
  if (jbTargetEstimatorSynchronizer)
  {
    CFRelease(jbTargetEstimatorSynchronizer);
    self->_jbTargetEstimatorSynchronizer = 0;
  }

  v5.receiver = self;
  v5.super_class = VCMediaStreamConfig;
  [(VCMediaStreamConfig *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p)", NSStringFromClass(v4), self];
}

- (void)addRxPayloadType:(int)type networkPayload:(unsigned int)payload
{
  v4 = *&type;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];
  rxPayloadMap = self->_rxPayloadMap;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];

  [(NSMutableDictionary *)rxPayloadMap setObject:v6 forKeyedSubscript:v8];
}

- (void)addTxPayloadType:(int)type networkPayload:(unsigned int)payload
{
  v4 = *&type;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];
  txPayloadMap = self->_txPayloadMap;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];

  [(NSMutableDictionary *)txPayloadMap setObject:v6 forKeyedSubscript:v8];
}

- (int64_t)primaryTxCodecType
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allKeys = [(NSMutableDictionary *)self->_txPayloadMap allKeys];
  result = [allKeys countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(allKeys);
      }

      if ([*(*(&v8 + 1) + 8 * v6) integerValue] != 20)
      {
        result = [VCPayloadUtils codecTypeForPayload:?];
        if ((result - 11) < 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        result = [allKeys countByEnumeratingWithState:&v8 objects:v7 count:16];
        v4 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (void)setupMediaStreamConfig
{
  self->_txPayloadMap = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_rxPayloadMap = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_remoteAddress = objc_alloc_init(VCNetworkAddress);
  self->_localAddress = objc_alloc_init(VCNetworkAddress);
  self->_remoteSSRCs = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{&unk_1F579BAF0, 0}];
  self->_remoteEndpoints = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_cName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:&stru_1F570E008];
  self->_rtcpReceiveCallbackEnabled = 1;
  self->_networkClockID = *MEMORY[0x1E69DA108];
}

- (void)applyMediaStreamClientXPCDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  value = xpc_dictionary_get_value(dictionary, "vcMediaStreamRemoteAVCEndpointsXpcArgs");
  if (value)
  {
    v5 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      if (count >= 1)
      {
        v7 = 0;
        v8 = count & 0x7FFFFFFF;
        while (1)
        {
          v9 = xpc_array_get_value(v5, v7);
          if (!v9)
          {
            [(VCMediaStreamConfig *)v7 applyMediaStreamClientXPCDictionary:?];
            return;
          }

          v10 = v9;
          if (!xpc_dictionary_get_value(v9, "vcMediaStreamAVCEndpointSSRC"))
          {
            [VCMediaStreamConfig applyMediaStreamClientXPCDictionary:?];
            return;
          }

          valuePtr = 0;
          v11 = _CFXPCCreateCFObjectFromXPCObject();
          if (!v11)
          {
            [VCMediaStreamConfig applyMediaStreamClientXPCDictionary:?];
            return;
          }

          v12 = v11;
          CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
          CFRelease(v12);
          -[NSMutableArray setObject:atIndexedSubscript:](self->_remoteSSRCs, "setObject:atIndexedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:valuePtr], v7);
          if (!xpc_dictionary_get_value(v10, "vcMediaStreamAVCEndpointNWEndpoint"))
          {
            [VCMediaStreamConfig applyMediaStreamClientXPCDictionary:?];
            return;
          }

          v13 = nw_endpoint_create_from_dictionary();
          if (!v13)
          {
            [(VCMediaStreamConfig *)v7 applyMediaStreamClientXPCDictionary:?];
            return;
          }

          v14 = v13;
          v15 = [[AVCEndpoint alloc] initWithNWEndpoint:v13];
          nw_release(v14);
          if (!v15)
          {
            break;
          }

          [(AVCEndpoint *)v15 setRtpSSRC:valuePtr];
          [(NSMutableArray *)self->_remoteEndpoints setObject:v15 atIndexedSubscript:v7];

          if (v8 == ++v7)
          {
            return;
          }
        }

        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCMediaStreamConfig applyMediaStreamClientXPCDictionary:v17];
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v16 = [(VCMediaStreamConfig *)self performSelector:sel_logPrefix];
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
              v22 = v18;
              v23 = 2080;
              v24 = "[VCMediaStreamConfig applyMediaStreamClientXPCDictionary:]";
              v25 = 1024;
              v26 = 529;
              v27 = 2112;
              v28 = v16;
              v29 = 2048;
              selfCopy = self;
              v31 = 1024;
              v32 = v7;
              _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the AVCEndpoint for index=%d", buf, 0x36u);
            }
          }
        }
      }
    }

    else
    {
      [VCMediaStreamConfig applyMediaStreamClientXPCDictionary:?];
    }
  }

  else
  {
    [VCMediaStreamConfig applyMediaStreamClientXPCDictionary:?];
  }
}

- (void)setDefaultRemoteSSRC:(unsigned int)c
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&c];
  remoteSSRCs = self->_remoteSSRCs;

  [(NSMutableArray *)remoteSSRCs setObject:v4 atIndexedSubscript:0];
}

- (void)applyMediaStreamClientDictionary:(id)dictionary
{
  -[VCNetworkAddress setIp:](self->_remoteAddress, "setIp:", [dictionary objectForKeyedSubscript:@"vcMediaStreamDestIp"]);
  -[VCNetworkAddress setPort:](self->_remoteAddress, "setPort:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDestPort", "shortValue"}]);
  if ([objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDestIsIPv6", "BOOLValue"}])
  {
    v5 = 6;
  }

  else
  {
    v5 = 4;
  }

  [(VCNetworkAddress *)self->_remoteAddress setIpVersion:v5];
  -[NSMutableArray setObject:atIndexedSubscript:](self->_remoteSSRCs, "setObject:atIndexedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamRemoteSSRC", "integerValue")}], 0);
  -[VCNetworkAddress setIp:](self->_localAddress, "setIp:", [dictionary objectForKeyedSubscript:@"vcMediaStreamSourceIP"]);
  -[VCNetworkAddress setPort:](self->_localAddress, "setPort:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamSourcePort", "shortValue"}]);
  if ([objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamSourceIsIPv6", "BOOLValue"}])
  {
    v6 = 6;
  }

  else
  {
    v6 = 4;
  }

  [(VCNetworkAddress *)self->_localAddress setIpVersion:v6];
  -[VCNetworkAddress setInterfaceName:](self->_localAddress, "setInterfaceName:", [dictionary objectForKeyedSubscript:@"vcMediaStreamSourceInterfaceName"]);
  self->_localSSRC = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamLocalSSRC", "integerValue"}];
  self->_cName = [dictionary objectForKeyedSubscript:@"vcMediaStreamCName"];
  self->_recommendedMTU = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRecommendedMTU", "integerValue"}];
  self->_direction = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDirection", "integerValue"}];
  self->_rateAdaptationEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRateAdaptationEnabled", "BOOLValue"}];
  self->_rtpTimeOutEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTPTimeoutEnabled", "BOOLValue"}];
  [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTPTimeoutInterval", "doubleValue"}];
  self->_rtpTimeOutInterval = v7;
  self->_decryptionTimeOutEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDecryptionTimeoutEnabled", "BOOLValue"}];
  [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDecryptionTimeoutInterval", "doubleValue"}];
  self->_decryptionTimeOutInterval = v8;
  self->_SRTPCipherSuite = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamSRTPCipherSuite", "integerValue"}];
  self->_rtcpEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPEnabled", "BOOLValue"}];
  self->_rtcpXREnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPXREnabled", "BOOLValue"}];
  [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPSendInterval", "doubleValue"}];
  self->_rtcpSendInterval = v9;
  self->_rtcpRemotePort = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPRemotePort", "integerValue"}];
  self->_rtcpTimeOutEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPTimeoutEnabled", "BOOLValue"}];
  [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPTimeoutInterval", "doubleValue"}];
  self->_rtcpTimeOutInterval = v10;
  self->_SRTCPCipherSuite = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamSRTCPCipherSuite", "integerValue"}];
  self->_sendMediaKey = [dictionary objectForKeyedSubscript:@"vcMediaStreamSRTPSendMediaKey"];
  self->_receiveMediaKey = [dictionary objectForKeyedSubscript:@"vcMediaStreamSRTPReceiveMediaKey"];
  self->_captureSource = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamCaptureSource", "integerValue"}];
  self->_streamInputID = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamStreamInputID", "integerValue"}];
  if ([dictionary objectForKeyedSubscript:@"vcMediaStreamNetworkClockID"])
  {
    self->_networkClockID = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamNetworkClockID", "unsignedLongLongValue"}];
  }

  self->_jitterBufferMode = -[VCMediaStreamConfig jitterBufferModeFromAVCJitterBufferMode:](self, "jitterBufferModeFromAVCJitterBufferMode:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamJitterBufferMode", "unsignedIntValue"}]);
  self->_fixedJitterBufferSize = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamFixedJitterBufferSize", "unsignedLongValue"}];
  self->_outOfProcessCodecsEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamOutOfProcessCodecsEnabled", "BOOLValue"}];
  self->_accessNetworkType = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamAccessNetworkType", "integerValue"}];
  self->_dscpTag = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDSCPTag", "unsignedCharValue"}];
  self->_packetExpirationTime = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamPacketExpirationTime", "unsignedIntegerValue"}];
  v11 = [dictionary objectForKeyedSubscript:@"vcMediaStreamConnectionClientID"];
  self->_rtpNWConnectionClientID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v11];
  v12 = [dictionary objectForKeyedSubscript:@"vcMediaStreamRTCPConnectionClientID"];
  self->_rtcpNWConnectionClientID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];

  [(VCMediaStreamConfig *)self extractRemoteEndpointsAndSSRC:dictionary];
}

- (int)jitterBufferModeFromAVCJitterBufferMode:(unsigned int)mode
{
  if (mode == 2)
  {
    return 3;
  }

  else
  {
    return mode == 0;
  }
}

- (void)setJbTargetEstimatorSynchronizer:(tagVCJBTargetEstimatorSynchronizer *)synchronizer
{
  jbTargetEstimatorSynchronizer = self->_jbTargetEstimatorSynchronizer;
  if (jbTargetEstimatorSynchronizer)
  {
    CFRelease(jbTargetEstimatorSynchronizer);
  }

  self->_jbTargetEstimatorSynchronizer = synchronizer;
  if (synchronizer)
  {

    CFRetain(synchronizer);
  }
}

- (unsigned)defaultRemoteSSRC
{
  v3 = [(NSMutableArray *)self->_remoteSSRCs count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_remoteSSRCs objectAtIndexedSubscript:0];
  }

  return [v3 unsignedIntValue];
}

- (void)extractRemoteEndpointsAndSSRC:(id)c
{
  if ([c objectForKeyedSubscript:@"vcMediaStreamRemoteAVCEndpoints"])
  {
    v5 = [c objectForKeyedSubscript:@"vcMediaStreamRemoteAVCEndpoints"];
    v6 = [v5 count];
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = v6 & 0x7FFFFFFF;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:v7];
        [(NSMutableArray *)self->_remoteEndpoints setObject:v9 atIndexedSubscript:v7];
        -[NSMutableArray setObject:atIndexedSubscript:](self->_remoteSSRCs, "setObject:atIndexedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v9, "rtpSSRC")}], v7++);
      }

      while (v8 != v7);
    }
  }
}

- (void)applyMediaStreamClientXPCDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v6 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create the AVCEndpoint for index=%d", &v3, 0x22u);
}

- (void)applyMediaStreamClientXPCDictionary:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  if (objc_opt_class() == a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_2();
    v8 = 34;
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a2 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_11;
    }
  }
}

- (void)applyMediaStreamClientXPCDictionary:(uint64_t)a1 .cold.3(uint64_t a1)
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
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_9_0();
    v6 = 38;
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
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_24();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

- (void)applyMediaStreamClientXPCDictionary:(uint64_t)a1 .cold.4(uint64_t a1)
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
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_9_0();
    v6 = 38;
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
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_24();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

- (void)applyMediaStreamClientXPCDictionary:(uint64_t)a1 .cold.5(uint64_t a1)
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
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_9_0();
    v6 = 38;
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
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_24();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

- (void)applyMediaStreamClientXPCDictionary:(uint64_t)a1 .cold.6(uint64_t a1, void *a2)
{
  if (objc_opt_class() == a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_2();
    v8 = 34;
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a2 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_11;
    }
  }
}

- (void)applyMediaStreamClientXPCDictionary:(uint64_t)a1 .cold.7(uint64_t a1)
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
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
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
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)applyMediaStreamClientXPCDictionary:(uint64_t)a1 .cold.8(uint64_t a1)
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
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
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
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

@end