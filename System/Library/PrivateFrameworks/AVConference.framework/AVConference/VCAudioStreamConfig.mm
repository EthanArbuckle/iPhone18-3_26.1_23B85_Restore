@interface VCAudioStreamConfig
+ (int)bundlingSchemeForAudioStreamMode:(int64_t)mode payloadType:(int)type;
- (BOOL)setupCNCodecWithClientDictionary:(id)dictionary;
- (BOOL)setupCodecWithClientDictionary:(id)dictionary;
- (BOOL)setupDTMFCodecWithClientDictionary:(id)dictionary;
- (NSArray)supportedNumRedundantPayload;
- (NSDictionary)allCodecConfigurations;
- (VCAudioStreamConfig)init;
- (VCAudioStreamConfig)initWithClientDictionary:(id)dictionary xpcDictionary:(id)xpcDictionary;
- (void)addCodecConfiguration:(id)configuration;
- (void)addSupportedNumRedundantPayload:(unsigned int)payload;
- (void)dealloc;
- (void)setExternalIOFormat:(const tagVCAudioFrameFormat *)format;
- (void)setupRedWithRxPayload:(unsigned int)payload txPayload:(unsigned int)txPayload;
@end

@implementation VCAudioStreamConfig

- (NSDictionary)allCodecConfigurations
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[VCAudioStreamConfig codecConfigurations](self, "codecConfigurations")}];
  multiwayConfig = [(VCMediaStreamConfig *)self multiwayConfig];
  if (multiwayConfig)
  {
    [v3 addEntriesFromDictionary:{-[VCMediaStreamMultiwayConfig v2CodecConfigurations](multiwayConfig, "v2CodecConfigurations")}];
  }

  return v3;
}

- (VCAudioStreamConfig)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCAudioStreamConfig;
  v2 = [(VCMediaStreamConfig *)&v4 init];
  if (v2)
  {
    v2->_codecConfigurations = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_supportedNumRedundantPayload = objc_alloc_init(MEMORY[0x1E695DFA0]);
  }

  return v2;
}

- (VCAudioStreamConfig)initWithClientDictionary:(id)dictionary xpcDictionary:(id)xpcDictionary
{
  v32 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v7 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
    asprintf(&__str, "%s[%p] %s", v7, self, [objc_msgSend(dictionary "description")]);
    if (__str)
    {
      xpcDictionaryCopy = xpcDictionary;
      __lasts = 0;
      v8 = strtok_r(__str, "\n", &__lasts);
      v9 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v23 = v10;
            v24 = 2080;
            v25 = "[VCAudioStreamConfig initWithClientDictionary:xpcDictionary:]";
            v26 = 1024;
            v27 = 93;
            v28 = 2080;
            v29 = "[VCAudioStreamConfig initWithClientDictionary:xpcDictionary:]";
            v30 = 2080;
            v31 = v8;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v8 = strtok_r(0, "\n", &__lasts);
      }

      while (v8);
      free(__str);
      xpcDictionary = xpcDictionaryCopy;
    }
  }

  v19.receiver = self;
  v19.super_class = VCAudioStreamConfig;
  v12 = [(VCMediaStreamConfig *)&v19 initWithClientDictionary:dictionary xpcDictionary:xpcDictionary];
  if (v12)
  {
    if ((v12->_codecConfigurations = objc_alloc_init(MEMORY[0x1E695DF90]), v12->_audioStreamMode = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamAudioStreamMode", "integerValue"}], v12->_supportedNumRedundantPayload = objc_alloc_init(MEMORY[0x1E695DFA0]), v12->_enableMaxBitrateOnNoChangeCMR = objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamEnableMaxBitrateOnNoChangeCMR"), "BOOLValue"), v12->_dtmfTonePlaybackEnabled = objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamdtmfTonePlaybackEnabled"), "BOOLValue"), v12->_dtmfEventCallbacksEnabled = objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamDTMFEventCallbacksEnabled"), "BOOLValue"), v12->_dtmfSampleRate = objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamDTMFTsRate"), "integerValue"), v12->_subscriptionSlot = objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamTelephonyServiceSubscriptionSlot"), "integerValue"), v12->_anbrEnabled = objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamAnbrEnabled"), "BOOLValue"), !-[VCAudioStreamConfig setupCodecWithClientDictionary:](v12, "setupCodecWithClientDictionary:", dictionary))
      || ![(VCAudioStreamConfig *)v12 setupCNCodecWithClientDictionary:dictionary]
      || ((v13 = -[VCAudioStreamConfig setupDTMFCodecWithClientDictionary:](v12, "setupDTMFCodecWithClientDictionary:", dictionary), v12->_bundlingScheme = +[VCAudioStreamConfig bundlingSchemeForAudioStreamMode:payloadType:](VCAudioStreamConfig, "bundlingSchemeForAudioStreamMode:payloadType:", v12->_audioStreamMode, +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", -[VCMediaStreamConfig primaryTxCodecType](v12, "primaryTxCodecType"))), ![objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamChannelCount", "integerValue"}]) ? (v14 = 1) : (v14 = objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamChannelCount"), "integerValue")), (v12->_channelCount = v14, v12->_preferredMediaBitRate = objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamPreferredMediaBitRate"), "integerValue"), v12->_remoteDeviceInfo = objc_alloc_init(VCMediaStreamConfigRemoteDeviceInfo), -[VCMediaStreamConfigRemoteDeviceInfo setDeviceName:](v12->_remoteDeviceInfo, "setDeviceName:", objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamRemoteDeviceInfoDeviceName")), -[VCMediaStreamConfigRemoteDeviceInfo setDeviceUID:](v12->_remoteDeviceInfo, "setDeviceUID:", objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamRemoteDeviceInfoDeviceUID")), -[VCMediaStreamConfigRemoteDeviceInfo setModelUID:](v12->_remoteDeviceInfo, "setModelUID:", objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamRemoteDeviceInfoModelUID")), v15 = objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamSystemAudioCaptureIncludedAuditTokens"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v16 = 0) : (v16 = +[AVCAuditToken processIdentifiersFromAuditTokens:](AVCAuditToken, "processIdentifiersFromAuditTokens:", +[AVCAuditToken deserializeAuditTokens:](AVCAuditToken, "deserializeAuditTokens:", v15))), v12->_processIdentifiersForAudioTap = v16, v12->_muteBehaviorForAudioTap = objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"vcMediaStreamSystemAudioCaptureMuteBehavior"), "integerValue"), !v13))
    {

      return 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioStreamConfig;
  [(VCMediaStreamConfig *)&v3 dealloc];
}

+ (int)bundlingSchemeForAudioStreamMode:(int64_t)mode payloadType:(int)type
{
  if (mode > 5)
  {
    if (mode <= 0xC && ((1 << mode) & 0x1A40) == 0)
    {
      if (((1 << mode) & 0x480) != 0)
      {
        return 3;
      }

      if (mode == 8)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  if (mode < 4)
  {
    return 0;
  }

  if (mode != 4)
  {
    if (mode == 5)
    {
      return [VCPayloadUtils canBundleExternallyForPayload:*&type forBundlingScheme:1 operatingMode:[VCAudioStream operatingModeForAudioStreamMode:?]];
    }

    return 0;
  }

LABEL_12:
  if ([VCPayloadUtils canBundleExternallyForPayload:*&type forBundlingScheme:2 operatingMode:[VCAudioStream operatingModeForAudioStreamMode:?]])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)setupCodecWithClientDictionary:(id)dictionary
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamCodecType", "integerValue"}];
  v6 = [VCPayloadUtils payloadForCodecType:v5];
  v7 = [[VCAudioStreamCodecConfig alloc] initWithCodecType:v5];
  if (v7)
  {
    v8 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRxPayloadType", "integerValue"}];
    [(VCAudioStreamCodecConfig *)v7 setNetworkPayload:v8];
    -[VCAudioStreamCodecConfig setEvsChannelAwareOffset:](v7, "setEvsChannelAwareOffset:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamEVSChannelAwareOffset", "integerValue"}]);
    -[VCAudioStreamCodecConfig setEvsHeaderFullOnly:](v7, "setEvsHeaderFullOnly:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamEVSHeaderFullOnly", "BOOLValue"}]);
    -[VCAudioStreamCodecConfig setEvsCMRMode:](v7, "setEvsCMRMode:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamEVSCMRMode", "integerValue"}]);
    -[VCAudioStreamCodecConfig setOctetAligned:](v7, "setOctetAligned:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamAMRIsOctetAligned", "BOOLValue"}]);
    -[VCAudioStreamCodecConfig setDtxEnabled:](v7, "setDtxEnabled:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamAMRDTXEnabled", "BOOLValue"}]);
    -[VCAudioStreamCodecConfig setPTime:](v7, "setPTime:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamPtime", "integerValue"}]);
    -[VCAudioStreamCodecConfig setPreferredModeWithClientMode:](v7, "setPreferredModeWithClientMode:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamCodecRateModePreferred", "integerValue"}]);
    -[VCAudioStreamCodecConfig setupModesWithClientModeMask:](v7, "setupModesWithClientModeMask:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamCodecRateModeMask", "integerValue"}]);
    -[VCAudioStreamCodecConfig setupCodecBandwidthsWithClientBandwidthMask:](v7, "setupCodecBandwidthsWithClientBandwidthMask:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamCodecBandwidthMask", "integerValue"}]);
    [(VCAudioStreamConfig *)self addCodecConfiguration:v7];
    [(VCMediaStreamConfig *)self addRxPayloadType:v6 networkPayload:v8];
    -[VCMediaStreamConfig addTxPayloadType:networkPayload:](self, "addTxPayloadType:networkPayload:", v6, [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamTxPayloadType", "integerValue"}]);

    v9 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamNumRedundantPayloads", "integerValue"}];
    self->_numRedundantPayloads = v9;
    if (v9)
    {
      self->_redEnabled = 1;
      -[VCMediaStreamConfig addTxPayloadType:networkPayload:](self, "addTxPayloadType:networkPayload:", 20, [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamTxRedPayloadType", "integerValue"}]);
    }

    if ([objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamRxRedPayloadType", "integerValue"}])
    {
      [(VCMediaStreamConfig *)self addRxPayloadType:20 networkPayload:?];
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136316674;
          v23 = v12;
          v24 = 2080;
          v25 = "[VCAudioStreamConfig setupCodecWithClientDictionary:]";
          v26 = 1024;
          v27 = 213;
          v28 = 2048;
          v29 = v5;
          v30 = 1024;
          *v31 = v6;
          *&v31[4] = 1024;
          *&v31[6] = [(VCAudioStreamCodecConfig *)v7 networkPayload];
          *v32 = 2048;
          *&v32[2] = [(VCAudioStreamCodecConfig *)v7 pTime];
          v14 = " [%s] %s:%d codecType=%ld payload=%u networkPayload=%u pTimeMS=%lu";
          v15 = v13;
          v16 = 60;
LABEL_19:
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v22, v16);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCAudioStreamConfig *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136317186;
          v23 = v17;
          v24 = 2080;
          v25 = "[VCAudioStreamConfig setupCodecWithClientDictionary:]";
          v26 = 1024;
          v27 = 213;
          v28 = 2112;
          v29 = v10;
          v30 = 2048;
          *v31 = self;
          *&v31[8] = 2048;
          *v32 = v5;
          *&v32[8] = 1024;
          v33 = v6;
          v34 = 1024;
          networkPayload = [(VCAudioStreamCodecConfig *)v7 networkPayload];
          v36 = 2048;
          pTime = [(VCAudioStreamCodecConfig *)v7 pTime];
          v14 = " [%s] %s:%d %@(%p) codecType=%ld payload=%u networkPayload=%u pTimeMS=%lu";
          v15 = v18;
          v16 = 80;
          goto LABEL_19;
        }
      }
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioStreamConfig setupCodecWithClientDictionary:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCAudioStreamConfig *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v22 = 136316418;
        v23 = v19;
        v24 = 2080;
        v25 = "[VCAudioStreamConfig setupCodecWithClientDictionary:]";
        v26 = 1024;
        v27 = 177;
        v28 = 2112;
        v29 = v11;
        v30 = 2048;
        *v31 = self;
        *&v31[8] = 1024;
        *v32 = v5;
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate config for type: %d", &v22, 0x36u);
      }
    }
  }

  return v7 != 0;
}

- (void)setupRedWithRxPayload:(unsigned int)payload txPayload:(unsigned int)txPayload
{
  v4 = *&txPayload;
  self->_redEnabled = 1;
  [(VCMediaStreamConfig *)self addRxPayloadType:20 networkPayload:*&payload];

  [(VCMediaStreamConfig *)self addTxPayloadType:20 networkPayload:v4];
}

- (BOOL)setupCNCodecWithClientDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamCNEnabled", "BOOLValue"}])
  {
    goto LABEL_4;
  }

  v5 = [[VCAudioStreamCodecConfig alloc] initWithCodecType:9];
  if (v5)
  {
    v6 = v5;
    [(VCAudioStreamConfig *)self addCodecConfiguration:v5];
    v7 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamCNPayloadType", "unsignedIntValue"}];
    [(VCMediaStreamConfig *)self addRxPayloadType:13 networkPayload:v7];
    [(VCMediaStreamConfig *)self addTxPayloadType:13 networkPayload:v7];

LABEL_4:
    LOBYTE(v8) = 1;
    return v8;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      [VCAudioStreamConfig setupCNCodecWithClientDictionary:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioStreamConfig *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      v13 = 136316418;
      v14 = v10;
      v15 = 2080;
      v16 = "[VCAudioStreamConfig setupCNCodecWithClientDictionary:]";
      v17 = 1024;
      v18 = 229;
      v19 = 2112;
      v20 = v9;
      v21 = 2048;
      selfCopy = self;
      v23 = 1024;
      v24 = 9;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate config for type: %d", &v13, 0x36u);
    }
  }

  LOBYTE(v8) = 0;
  return v8;
}

- (BOOL)setupDTMFCodecWithClientDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [[VCAudioStreamCodecConfig alloc] initWithCodecType:10];
  v6 = v5;
  if (v5)
  {
    [(VCAudioStreamCodecConfig *)v5 setDtmf:1];
    [(VCAudioStreamConfig *)self addCodecConfiguration:v6];
    v7 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMediaStreamDTMFPayloadType", "unsignedIntValue"}];
    [(VCAudioStreamCodecConfig *)v6 setNetworkPayload:v7];
    [(VCMediaStreamConfig *)self addRxPayloadType:117 networkPayload:v7];
    [(VCMediaStreamConfig *)self addTxPayloadType:117 networkPayload:v7];
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioStreamConfig setupDTMFCodecWithClientDictionary:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioStreamConfig *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = v10;
        v14 = 2080;
        v15 = "[VCAudioStreamConfig setupDTMFCodecWithClientDictionary:]";
        v16 = 1024;
        v17 = 244;
        v18 = 2112;
        v19 = v9;
        v20 = 2048;
        selfCopy = self;
        v22 = 1024;
        v23 = 10;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate config for type: %d", &v12, 0x36u);
      }
    }
  }

  return v6 != 0;
}

- (void)setExternalIOFormat:(const tagVCAudioFrameFormat *)format
{
  if (format)
  {
    v4 = *&format->format.mBytesPerPacket;
    v3 = *&format->format.mBitsPerChannel;
    *&self->_externalIOFormat.format.mSampleRate = *&format->format.mSampleRate;
    *&self->_externalIOFormat.format.mBytesPerPacket = v4;
    *&self->_externalIOFormat.format.mBitsPerChannel = v3;
    self->_useExternalIO = 1;
  }
}

- (void)addCodecConfiguration:(id)configuration
{
  if (configuration)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_codecConfigurations, "setObject:forKeyedSubscript:", configuration, [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(configuration, "codecType")}]);
    v5 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [configuration codecType]);
    -[VCMediaStreamConfig addRxPayloadType:networkPayload:](self, "addRxPayloadType:networkPayload:", v5, [configuration networkPayload]);
    networkPayload = [configuration networkPayload];

    [(VCMediaStreamConfig *)self addTxPayloadType:v5 networkPayload:networkPayload];
  }
}

- (void)addSupportedNumRedundantPayload:(unsigned int)payload
{
  supportedNumRedundantPayload = self->_supportedNumRedundantPayload;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];

  [(NSMutableOrderedSet *)supportedNumRedundantPayload addObject:v4];
}

- (NSArray)supportedNumRedundantPayload
{
  array = [(NSMutableOrderedSet *)self->_supportedNumRedundantPayload array];
  if ([(NSArray *)array count])
  {
    return array;
  }

  else
  {
    return &unk_1F579E208;
  }
}

- (void)setupCodecWithClientDictionary:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v4 = 177;
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate config for type: %d", v3, 0x22u);
}

- (void)setupCNCodecWithClientDictionary:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v3 = 229;
  v4 = v0;
  v5 = 9;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate config for type: %d", v2, 0x22u);
}

- (void)setupDTMFCodecWithClientDictionary:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v3 = 244;
  v4 = v0;
  v5 = 10;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate config for type: %d", v2, 0x22u);
}

@end