@interface AVCMediaStreamConfig
+ (id)dictionaryForCommonStreamConfig:(id)config;
+ (int)streamJitterBufferModeWithClientJitterBufferMode:(unsigned int)mode;
+ (int64_t)clientStreamDirectionWithDirection:(int64_t)direction;
+ (int64_t)streamDirectionWithClientDirection:(int64_t)direction;
- (AVCMediaStreamConfig)init;
- (BOOL)isAudioCodecMaskValid;
- (BOOL)isAudioCodecValid;
- (BOOL)isDSCPTagValid;
- (BOOL)isJitterBufferModeValid;
- (BOOL)isRemoteEndpointsConfigValid;
- (BOOL)isStreamInputIDValid;
- (BOOL)isValidAudioConfig;
- (BOOL)isValidTextConfig;
- (BOOL)isValidVideoConfig;
- (id)description;
- (id)dictionary;
- (unsigned)jitterBufferMode;
- (void)dealloc;
- (void)encodeRemoteAVCEndpoints:(id *)endpoints;
- (void)isAudioCodecValid;
- (void)isDSCPTagValid;
- (void)isValidVideoConfig;
- (void)setUpWithDictionary:(id)dictionary;
@end

@implementation AVCMediaStreamConfig

- (AVCMediaStreamConfig)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = AVCMediaStreamConfig;
  v2 = [(AVCMediaStreamConfig *)&v6 init];
  if (v2)
  {
    v2->_remoteAddress = objc_opt_new();
    v2->_localAddress = objc_opt_new();
    v2->_cName = objc_opt_new();
    v2->_direction = 3;
    v2->_sendMediaKey = objc_opt_new();
    v2->_receiveMediaKey = objc_opt_new();
    v2->_audio = objc_opt_new();
    v2->_video = objc_opt_new();
    v3 = objc_opt_new();
    v4 = MEMORY[0x1E69DA108];
    v2->_text = v3;
    v2->_networkClockID = *v4;
    v2->_dscpTag = 0;
    v2->_remoteEndpoints = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCMediaStreamConfig;
  [(AVCMediaStreamConfig *)&v3 dealloc];
}

- (BOOL)isValidAudioConfig
{
  if (![(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] isValid]|| ![(AVCMediaStreamConfig *)self isAudioCodecValid]|| ![(AVCMediaStreamConfig *)self isAudioCodecMaskValid]|| ![(AVCMediaStreamConfig *)self isStreamInputIDValid]|| ![(AVCMediaStreamConfig *)self isJitterBufferModeValid]|| ![(AVCMediaStreamConfig *)self isDSCPTagValid])
  {
    return 0;
  }

  return [(AVCMediaStreamConfig *)self isRemoteEndpointsConfigValid];
}

- (BOOL)isValidVideoConfig
{
  v3 = [(AVCVideoStreamConfig *)[(AVCMediaStreamConfig *)self video] captureSource]== 3 && self->_streamInputID == 0;
  if ([(AVCVideoStreamConfig *)[(AVCMediaStreamConfig *)self video] videoStreamMode]!= 1 && [(AVCVideoStreamConfig *)[(AVCMediaStreamConfig *)self video] isFoveationEnabled])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaStreamConfig isValidVideoConfig];
      }
    }

    return 0;
  }

  if ([(AVCVideoStreamConfig *)[(AVCMediaStreamConfig *)self video] enableInterleavedEncoding]&& ![VideoUtil isBufferDescriptionForMultiImageStream:[(AVCVideoStreamConfig *)[(AVCMediaStreamConfig *)self video] videoBufferDescription]])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaStreamConfig isValidVideoConfig];
      }
    }

    return 0;
  }

  if ([(AVCMediaStreamConfig *)self txPayloadType]> 0x7F || [(AVCMediaStreamConfig *)self txPayloadType]< 0x60 || [(AVCMediaStreamConfig *)self rxPayloadType]> 0x7F || [(AVCMediaStreamConfig *)self rxPayloadType]< 0x60 || v3 | ![(AVCVideoStreamConfig *)[(AVCMediaStreamConfig *)self video] isValidForDirection:[(AVCMediaStreamConfig *)self direction]])
  {
    return 0;
  }

  return [(AVCMediaStreamConfig *)self isRemoteEndpointsConfigValid];
}

- (BOOL)isValidTextConfig
{
  if ([(AVCMediaStreamConfig *)self txPayloadType]> 0x7F || [(AVCMediaStreamConfig *)self txPayloadType]< 0x60 || [(AVCMediaStreamConfig *)self rxPayloadType]> 0x7F || [(AVCMediaStreamConfig *)self rxPayloadType]< 0x60)
  {
    return 0;
  }

  text = [(AVCMediaStreamConfig *)self text];

  return [(AVCTextStreamConfig *)text isValid];
}

- (id)description
{
  dictionary = [(AVCMediaStreamConfig *)self dictionary];

  return [dictionary description];
}

+ (int64_t)streamDirectionWithClientDirection:(int64_t)direction
{
  if ((direction - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return direction;
  }
}

+ (int)streamJitterBufferModeWithClientJitterBufferMode:(unsigned int)mode
{
  if (mode < 3)
  {
    return dword_1DBD51588[mode];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[AVCMediaStreamConfig streamJitterBufferModeWithClientJitterBufferMode:];
    }
  }

  return 1;
}

+ (int64_t)clientStreamDirectionWithDirection:(int64_t)direction
{
  if ((direction - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return direction;
  }
}

- (void)setUpWithDictionary:(id)dictionary
{
  -[AVCNetworkAddress setIp:](self->_remoteAddress, "setIp:", [dictionary objectForKeyedSubscript:@"vcMediaStreamDestIp"]);
  -[AVCNetworkAddress setPort:](self->_remoteAddress, "setPort:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDestPort", "shortValue"}]);
  -[AVCNetworkAddress setIsIPv6:](self->_remoteAddress, "setIsIPv6:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDestIsIPv6", "BOOLValue"}]);
  -[AVCNetworkAddress setIp:](self->_localAddress, "setIp:", [dictionary objectForKeyedSubscript:@"vcMediaStreamSourceIP"]);
  -[AVCNetworkAddress setPort:](self->_localAddress, "setPort:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamSourcePort", "shortValue"}]);
  -[AVCNetworkAddress setIsIPv6:](self->_localAddress, "setIsIPv6:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamSourceIsIPv6", "BOOLValue"}]);
  -[AVCNetworkAddress setInterfaceName:](self->_localAddress, "setInterfaceName:", [dictionary objectForKeyedSubscript:@"vcMediaStreamSourceInterfaceName"]);
  self->_cName = [dictionary objectForKeyedSubscript:@"vcMediaStreamCName"];
  self->_direction = +[AVCMediaStreamConfig clientStreamDirectionWithDirection:](AVCMediaStreamConfig, "clientStreamDirectionWithDirection:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDirection", "integerValue"}]);
  self->_txPayloadType = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamTxPayloadType", "integerValue"}];
  self->_rxPayloadType = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRxPayloadType", "integerValue"}];
  self->_remoteSSRC = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRemoteSSRC", "integerValue"}];
  self->_localSSRC = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamLocalSSRC", "integerValue"}];
  self->_rateAdaptationEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRateAdaptationEnabled", "BOOLValue"}];
  self->_rtcpEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPEnabled", "BOOLValue"}];
  [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPSendInterval", "doubleValue"}];
  self->_rtcpSendInterval = v5;
  self->_rtcpRemotePort = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPRemotePort", "integerValue"}];
  self->_rtcpTimeOutEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPTimeoutEnabled", "BOOLValue"}];
  [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPTimeoutInterval", "doubleValue"}];
  self->_rtcpTimeOutInterval = v6;
  self->_rtcpXREnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTCPXREnabled", "BOOLValue"}];
  self->_rtpTimeOutEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTPTimeoutEnabled", "BOOLValue"}];
  [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRTPTimeoutInterval", "doubleValue"}];
  self->_rtpTimeOutInterval = v7;
  self->_sendMediaKey = [dictionary objectForKeyedSubscript:@"vcMediaStreamSRTPSendMediaKey"];
  self->_recommendedMTU = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRecommendedMTU", "integerValue"}];
  self->_receiveMediaKey = [dictionary objectForKeyedSubscript:@"vcMediaStreamSRTPReceiveMediaKey"];
  self->_SRTPCipherSuite = VCMediaStreamCipherSuite_ClientCipherSuiteWithCipherSuite([objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamSRTPCipherSuite", "integerValue"}]);
  self->_SRTCPCipherSuite = VCMediaStreamCipherSuite_ClientCipherSuiteWithCipherSuite([objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamSRTCPCipherSuite", "integerValue"}]);
  self->_streamInputID = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamStreamInputID", "integerValue"}];
  self->_jitterBufferMode = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamJitterBufferMode", "unsignedIntValue"}];
  self->_fixedJitterBufferSize = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamFixedJitterBufferSize", "unsignedLongValue"}];
  self->_accessNetworkType = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamAccessNetworkType", "integerValue"}];
  self->_outOfProcessCodecsEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamOutOfProcessCodecsEnabled", "BOOLValue"}];
  self->_dscpTag = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDSCPTag", "unsignedCharValue"}];
  self->_packetExpirationTime = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamPacketExpirationTime", "unsignedIntegerValue"}];
  self->_remoteEndpoints = [dictionary objectForKeyedSubscript:@"vcMediaStreamRemoteAVCEndpoints"];
  self->_rtpNWConnectionClientID = [dictionary objectForKeyedSubscript:@"vcMediaStreamConnectionClientID"];
  self->_rtcpNWConnectionClientID = [dictionary objectForKeyedSubscript:@"vcMediaStreamRTCPConnectionClientID"];
  if ([dictionary objectForKeyedSubscript:@"vcMediaStreamNetworkClockID"])
  {
    self->_networkClockID = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamNetworkClockID", "unsignedLongLongValue"}];
  }
}

- (id)dictionary
{
  v3 = [+[AVCMediaStreamConfig dictionaryForCommonStreamConfig:](AVCMediaStreamConfig dictionaryForCommonStreamConfig:{self), "mutableCopy"}];
  [v3 addEntriesFromDictionary:{-[AVCAudioStreamConfig dictionary](self->_audio, "dictionary")}];
  [v3 addEntriesFromDictionary:{-[AVCVideoStreamConfig dictionary](self->_video, "dictionary")}];
  [v3 addEntriesFromDictionary:{-[AVCTextStreamConfig dictionary](self->_text, "dictionary")}];

  return v3;
}

- (void)encodeRemoteAVCEndpoints:(id *)endpoints
{
  if (endpoints)
  {
    empty = xpc_array_create_empty();
    if (empty)
    {
      v6 = empty;
      if ([(NSArray *)self->_remoteEndpoints count])
      {
        v7 = 0;
        while (1)
        {
          v8 = [AVCEndpoint newEndpointXPCDictionaryWithAVCEndpoint:[(NSArray *)self->_remoteEndpoints objectAtIndexedSubscript:v7]];
          if (!v8)
          {
            break;
          }

          v9 = v8;
          xpc_array_append_value(v6, v8);
          xpc_release(v9);
          if (++v7 >= [(NSArray *)self->_remoteEndpoints count])
          {
            goto LABEL_7;
          }
        }

        [AVCMediaStreamConfig encodeRemoteAVCEndpoints:];
      }

      else
      {
LABEL_7:
        xpc_dictionary_set_value(*endpoints, "vcMediaStreamRemoteAVCEndpointsXpcArgs", v6);
      }

      xpc_release(v6);
    }

    else
    {
      [AVCMediaStreamConfig encodeRemoteAVCEndpoints:];
    }
  }

  else
  {
    [AVCMediaStreamConfig encodeRemoteAVCEndpoints:];
  }
}

+ (id)dictionaryForCommonStreamConfig:(id)config
{
  v10[36] = *MEMORY[0x1E69E9840];
  v9[0] = @"vcMediaStreamDestIp";
  v10[0] = [objc_msgSend(config "remoteAddress")];
  v9[1] = @"vcMediaStreamDestPort";
  v10[1] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(objc_msgSend(config, "remoteAddress"), "port")}];
  v9[2] = @"vcMediaStreamDestIsIPv6";
  v10[2] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_msgSend(config, "remoteAddress"), "isIPv6")}];
  v9[3] = @"vcMediaStreamSourceIP";
  v10[3] = [objc_msgSend(config "localAddress")];
  v9[4] = @"vcMediaStreamSourcePort";
  v10[4] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(objc_msgSend(config, "localAddress"), "port")}];
  v9[5] = @"vcMediaStreamSourceIsIPv6";
  v10[5] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_msgSend(config, "localAddress"), "isIPv6")}];
  v9[6] = @"vcMediaStreamSourceInterfaceName";
  v10[6] = [objc_msgSend(config "localAddress")];
  v9[7] = @"vcMediaStreamCName";
  v10[7] = [config cName];
  v9[8] = @"vcMediaStreamDirection";
  v10[8] = [MEMORY[0x1E696AD98] numberWithInteger:{+[AVCMediaStreamConfig streamDirectionWithClientDirection:](AVCMediaStreamConfig, "streamDirectionWithClientDirection:", objc_msgSend(config, "direction"))}];
  v9[9] = @"vcMediaStreamTxPayloadType";
  v10[9] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(config, "txPayloadType")}];
  v9[10] = @"vcMediaStreamRxPayloadType";
  v10[10] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(config, "rxPayloadType")}];
  v9[11] = @"vcMediaStreamRemoteSSRC";
  v10[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "remoteSSRC")}];
  v9[12] = @"vcMediaStreamLocalSSRC";
  v10[12] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "localSSRC")}];
  v9[13] = @"vcMediaStreamRateAdaptationEnabled";
  v10[13] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "isRateAdaptationEnabled")}];
  v9[14] = @"vcMediaStreamRTCPEnabled";
  v10[14] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "isRTCPEnabled")}];
  v9[15] = @"vcMediaStreamRTCPSendInterval";
  v4 = MEMORY[0x1E696AD98];
  [config rtcpSendInterval];
  v10[15] = [v4 numberWithDouble:?];
  v9[16] = @"vcMediaStreamRTCPRemotePort";
  v10[16] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(config, "rtcpRemotePort")}];
  v9[17] = @"vcMediaStreamRTCPTimeoutEnabled";
  v10[17] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "isRTCPTimeOutEnabled")}];
  v9[18] = @"vcMediaStreamRTCPTimeoutInterval";
  v5 = MEMORY[0x1E696AD98];
  [config rtcpTimeOutInterval];
  v10[18] = [v5 numberWithDouble:?];
  v9[19] = @"vcMediaStreamRTCPXREnabled";
  v10[19] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "isRTCPXREnabled")}];
  v9[20] = @"vcMediaStreamRTPTimeoutEnabled";
  v10[20] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "isRTPTimeOutEnabled")}];
  v9[21] = @"vcMediaStreamRTPTimeoutInterval";
  v6 = MEMORY[0x1E696AD98];
  [config rtpTimeOutInterval];
  v10[21] = [v6 numberWithDouble:?];
  v9[22] = @"vcMediaStreamRecommendedMTU";
  v10[22] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(config, "recommendedMTU")}];
  v9[23] = @"vcMediaStreamSRTPSendMediaKey";
  v10[23] = [config sendMediaKey];
  v9[24] = @"vcMediaStreamSRTPReceiveMediaKey";
  v10[24] = [config receiveMediaKey];
  v9[25] = @"vcMediaStreamSRTPCipherSuite";
  v10[25] = [MEMORY[0x1E696AD98] numberWithInteger:{VCMediaStreamCipherSuite_CipherSuiteWithClientCipherSuite(objc_msgSend(config, "SRTPCipherSuite"))}];
  v9[26] = @"vcMediaStreamSRTCPCipherSuite";
  v10[26] = [MEMORY[0x1E696AD98] numberWithInteger:{VCMediaStreamCipherSuite_CipherSuiteWithClientCipherSuite(objc_msgSend(config, "SRTCPCipherSuite"))}];
  v9[27] = @"vcMediaStreamStreamInputID";
  v10[27] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(config, "streamInputID")}];
  v9[28] = @"vcMediaStreamNetworkClockID";
  v10[28] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(config, "networkClockID")}];
  v9[29] = @"vcMediaStreamJitterBufferMode";
  v10[29] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(config, "jitterBufferMode")}];
  v9[30] = @"vcMediaStreamFixedJitterBufferSize";
  v10[30] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(config, "fixedJitterBufferSize")}];
  v9[31] = @"vcMediaStreamAccessNetworkType";
  v10[31] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(config, "accessNetworkType")}];
  v9[32] = @"vcMediaStreamOutOfProcessCodecsEnabled";
  v10[32] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "outOfProcessCodecsEnabled")}];
  v9[33] = @"vcMediaStreamDSCPTag";
  v10[33] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(config, "dscpTag")}];
  v9[34] = @"vcMediaStreamPacketExpirationTime";
  v10[34] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(config, "packetExpirationTime")}];
  v9[35] = @"vcMediaStreamRemoteAVCEndpoints";
  v10[35] = [config remoteEndpoints];
  v7 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:{36), "mutableCopy"}];
  if ([config rtpNWConnectionClientID])
  {
    [v7 setObject:objc_msgSend(objc_msgSend(config forKeyedSubscript:{"rtpNWConnectionClientID"), "UUIDString"), @"vcMediaStreamConnectionClientID"}];
  }

  if ([config rtcpNWConnectionClientID])
  {
    [v7 setObject:objc_msgSend(objc_msgSend(config forKeyedSubscript:{"rtcpNWConnectionClientID"), "UUIDString"), @"vcMediaStreamRTCPConnectionClientID"}];
  }

  return v7;
}

- (unsigned)jitterBufferMode
{
  if (self->_jitterBufferModeSet)
  {
    return self->_jitterBufferMode;
  }

  if ([(AVCAudioStreamConfig *)self->_audio isLatencySensitiveMode])
  {
    return 0;
  }

  return ![(AVCVideoStreamConfig *)self->_video isLatencySensitiveModeEnabled];
}

- (BOOL)isAudioCodecValid
{
  v25 = *MEMORY[0x1E69E9840];
  codecType = [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] codecType];
  if (codecType > 0x11)
  {
    goto LABEL_15;
  }

  if (((1 << codecType) & 0x3FE73) == 0)
  {
    if (codecType == 2)
    {
      if (![(AVCMediaStreamConfig *)self rxPayloadType]&& ![(AVCMediaStreamConfig *)self txPayloadType])
      {
        goto LABEL_27;
      }
    }

    else if (codecType == 3 && [(AVCMediaStreamConfig *)self rxPayloadType]== 8 && [(AVCMediaStreamConfig *)self txPayloadType]== 8)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v5)
        {
          return v5;
        }

        [AVCMediaStreamConfig isAudioCodecValid];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(AVCMediaStreamConfig *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v5)
        {
          return v5;
        }

        v9 = 136316930;
        v10 = v6;
        v11 = 2080;
        v12 = "[AVCMediaStreamConfig isAudioCodecValid]";
        v13 = 1024;
        v14 = 487;
        v15 = 2112;
        v16 = v4;
        v17 = 2048;
        selfCopy = self;
        v19 = 2048;
        codecType2 = [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] codecType];
        v21 = 2048;
        txPayloadType = [(AVCMediaStreamConfig *)self txPayloadType];
        v23 = 2048;
        rxPayloadType = [(AVCMediaStreamConfig *)self rxPayloadType];
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid audio codec for codecType=%ld, txPayloadType=%lu, rxPayloadType=%lu", &v9, 0x4Eu);
      }
    }

    LOBYTE(v5) = 0;
    return v5;
  }

  if ([(AVCMediaStreamConfig *)self txPayloadType]> 0x7F || [(AVCMediaStreamConfig *)self txPayloadType]< 0x60 || [(AVCMediaStreamConfig *)self rxPayloadType]> 0x7F || [(AVCMediaStreamConfig *)self rxPayloadType]<= 0x5F)
  {
    goto LABEL_15;
  }

LABEL_27:
  LOBYTE(v5) = 1;
  return v5;
}

- (BOOL)isAudioCodecMaskValid
{
  v27 = *MEMORY[0x1E69E9840];
  codecBandwidthMask = [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] codecBandwidthMask];
  codecType = [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] codecType];
  if (codecType == 14)
  {
    if (codecBandwidthMask >= 2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (codecType != 13)
  {
    if (codecType == 12)
    {
      if (codecBandwidthMask > 3 || codecBandwidthMask == 1)
      {
        goto LABEL_13;
      }
    }

    else if (codecBandwidthMask)
    {
      goto LABEL_13;
    }

LABEL_11:
    LOBYTE(v5) = 1;
    return v5;
  }

  if (codecBandwidthMask < 8 && ((0x9Fu >> codecBandwidthMask) & 1) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      v15 = 136316162;
      v16 = v7;
      v17 = 2080;
      v18 = "[AVCMediaStreamConfig isAudioCodecMaskValid]";
      v19 = 1024;
      v20 = 523;
      v21 = 1024;
      *v22 = codecBandwidthMask;
      *&v22[4] = 2048;
      *&v22[6] = [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] codecType];
      v9 = " [%s] %s:%d Invalid codec mask=0%08x for codec type=%ld";
      v10 = v8;
      v11 = 44;
LABEL_23:
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, &v15, v11);
      goto LABEL_24;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(AVCMediaStreamConfig *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_24;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      v15 = 136316674;
      v16 = v12;
      v17 = 2080;
      v18 = "[AVCMediaStreamConfig isAudioCodecMaskValid]";
      v19 = 1024;
      v20 = 523;
      v21 = 2112;
      *v22 = v6;
      *&v22[8] = 2048;
      *&v22[10] = self;
      v23 = 1024;
      v24 = codecBandwidthMask;
      v25 = 2048;
      codecType2 = [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] codecType];
      v9 = " [%s] %s:%d %@(%p) Invalid codec mask=0%08x for codec type=%ld";
      v10 = v13;
      v11 = 64;
      goto LABEL_23;
    }
  }

  return v5;
}

- (BOOL)isStreamInputIDValid
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] audioStreamMode]!= 7 && [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] audioStreamMode]!= 11 || (self->_direction | 2) != 3 || self->_streamInputID)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(AVCMediaStreamConfig *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_18;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    streamInputID = self->_streamInputID;
    audioStreamMode = [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] audioStreamMode];
    direction = self->_direction;
    v19 = 136316930;
    v20 = v13;
    v21 = 2080;
    v22 = "[AVCMediaStreamConfig isStreamInputIDValid]";
    v23 = 1024;
    v24 = 537;
    v25 = 2112;
    v26 = v4;
    v27 = 2048;
    selfCopy = self;
    v29 = 2048;
    v30 = streamInputID;
    v31 = 2048;
    v32 = audioStreamMode;
    v33 = 2048;
    v34 = direction;
    v10 = " [%s] %s:%d %@(%p) Invalid stream input ID=%ld for mode=%ld direction=%ld";
    v11 = v14;
    v12 = 78;
    goto LABEL_17;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    v7 = self->_streamInputID;
    audioStreamMode2 = [(AVCAudioStreamConfig *)[(AVCMediaStreamConfig *)self audio] audioStreamMode];
    v9 = self->_direction;
    v19 = 136316418;
    v20 = v5;
    v21 = 2080;
    v22 = "[AVCMediaStreamConfig isStreamInputIDValid]";
    v23 = 1024;
    v24 = 537;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    selfCopy = audioStreamMode2;
    v29 = 2048;
    v30 = v9;
    v10 = " [%s] %s:%d Invalid stream input ID=%ld for mode=%ld direction=%ld";
    v11 = v6;
    v12 = 58;
LABEL_17:
    _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v10, &v19, v12);
  }

LABEL_18:
  LOBYTE(v3) = 0;
  return v3;
}

- (BOOL)isJitterBufferModeValid
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(AVCMediaStreamConfig *)self jitterBufferMode]!= 2 || self->_fixedJitterBufferSize)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(AVCMediaStreamConfig *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_16;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    jitterBufferMode = [(AVCMediaStreamConfig *)self jitterBufferMode];
    fixedJitterBufferSize = self->_fixedJitterBufferSize;
    v17 = 136316674;
    v18 = v12;
    v19 = 2080;
    v20 = "[AVCMediaStreamConfig isJitterBufferModeValid]";
    v21 = 1024;
    v22 = 545;
    v23 = 2112;
    *v24 = v4;
    *&v24[8] = 2048;
    *&v24[10] = self;
    v25 = 1024;
    v26 = jitterBufferMode;
    v27 = 2048;
    v28 = fixedJitterBufferSize;
    v9 = " [%s] %s:%d %@(%p) Invalid jitter buffer mode=%u fixedSize=%lu";
    v10 = v13;
    v11 = 64;
    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    jitterBufferMode2 = [(AVCMediaStreamConfig *)self jitterBufferMode];
    v8 = self->_fixedJitterBufferSize;
    v17 = 136316162;
    v18 = v5;
    v19 = 2080;
    v20 = "[AVCMediaStreamConfig isJitterBufferModeValid]";
    v21 = 1024;
    v22 = 545;
    v23 = 1024;
    *v24 = jitterBufferMode2;
    *&v24[4] = 2048;
    *&v24[6] = v8;
    v9 = " [%s] %s:%d Invalid jitter buffer mode=%u fixedSize=%lu";
    v10 = v6;
    v11 = 44;
LABEL_15:
    _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, &v17, v11);
  }

LABEL_16:
  LOBYTE(v3) = 0;
  return v3;
}

- (BOOL)isDSCPTagValid
{
  v22 = *MEMORY[0x1E69E9840];
  HIDWORD(v4) = [(AVCMediaStreamConfig *)self dscpTag];
  LODWORD(v4) = HIDWORD(v4);
  v3 = v4 >> 1;
  if (v3 >= 0x1D || ((0x11BFFFF1u >> v3) & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v5)
        {
          return v5;
        }

        [AVCMediaStreamConfig isDSCPTagValid];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(AVCMediaStreamConfig *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v5)
        {
          return v5;
        }

        v10 = 136316418;
        v11 = v7;
        v12 = 2080;
        v13 = "[AVCMediaStreamConfig isDSCPTagValid]";
        v14 = 1024;
        v15 = 579;
        v16 = 2112;
        v17 = v6;
        v18 = 2048;
        selfCopy = self;
        v20 = 1024;
        dscpTag = [(AVCMediaStreamConfig *)self dscpTag];
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid DSCP tag=%hhu", &v10, 0x36u);
      }
    }

    LOBYTE(v5) = 0;
    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (BOOL)isRemoteEndpointsConfigValid
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)[(AVCMediaStreamConfig *)self remoteEndpoints] count];
  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_12;
  }

  if (v3 >= 8)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_24;
      }

      VRTraceErrorLogLevelToCSTR();
      v11 = OUTLINED_FUNCTION_34();
      if (!v11)
      {
        return v11;
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      *v32 = v4;
      *&v32[4] = v26;
      *&v32[6] = 7;
      OUTLINED_FUNCTION_9_0();
      v20 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(AVCMediaStreamConfig *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_24;
      }

      VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v11)
      {
        return v11;
      }

      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_38();
      v34 = v28;
      *v35 = v4;
      *&v35[4] = v28;
      *&v35[6] = 7;
      v15 = &dword_1DB56E000;
      v18 = " [%s] %s:%d %@(%p) Invalid number of remote endpoints=%d, max remote endpoints supported=%d";
      v19 = v30;
      v16 = v27;
      v17 = OS_LOG_TYPE_ERROR;
      v20 = 60;
    }

LABEL_23:
    _os_log_error_impl(v15, v16, v17, v18, v19, v20);
LABEL_24:
    LOBYTE(v11) = 0;
    return v11;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  remoteEndpoints = [(AVCMediaStreamConfig *)self remoteEndpoints];
  v6 = [(NSArray *)remoteEndpoints countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (!v6)
  {
LABEL_12:
    LOBYTE(v11) = 1;
    return v11;
  }

  v7 = v6;
  v8 = *v39;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v39 != v8)
    {
      objc_enumerationMutation(remoteEndpoints);
    }

    v10 = *(*(&v38 + 1) + 8 * v9);
    if (![v10 endpoint] || !objc_msgSend(v10, "rtpSSRC"))
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSArray *)remoteEndpoints countByEnumeratingWithState:&v38 objects:v37 count:16];
      if (v7)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      [(AVCMediaStreamConfig *)self performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_24;
    }

    VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v11)
    {
      return v11;
    }

    endpoint = [v10 endpoint];
    [v10 rtpSSRC];
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8_38();
    v34 = v23;
    *v35 = endpoint;
    *&v35[8] = v24;
    v36 = v25;
    v15 = &dword_1DB56E000;
    v18 = " [%s] %s:%d %@(%p) Invalid endpoint, nwEndpoint=%p, rtpSSRC=%u.";
    v19 = v30;
    v16 = v21;
    v17 = OS_LOG_TYPE_ERROR;
    v20 = 64;
    goto LABEL_23;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_24;
  }

  VRTraceErrorLogLevelToCSTR();
  v11 = OUTLINED_FUNCTION_34();
  if (v11)
  {
    endpoint2 = [v10 endpoint];
    [v10 rtpSSRC];
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_6();
    v30[6] = 231;
    v31 = 2048;
    *v32 = endpoint2;
    *&v32[8] = v13;
    v33 = v14;
    OUTLINED_FUNCTION_9_0();
    v20 = 44;
    goto LABEL_23;
  }

  return v11;
}

- (void)isValidVideoConfig
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

+ (void)streamJitterBufferModeWithClientJitterBufferMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)encodeRemoteAVCEndpoints:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)encodeRemoteAVCEndpoints:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)encodeRemoteAVCEndpoints:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)isAudioCodecValid
{
  OUTLINED_FUNCTION_18_2();
  [objc_msgSend(v1 "audio")];
  [v0 txPayloadType];
  [v0 rxPayloadType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
}

- (void)isDSCPTagValid
{
  OUTLINED_FUNCTION_14_5();
  [v0 dscpTag];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

@end