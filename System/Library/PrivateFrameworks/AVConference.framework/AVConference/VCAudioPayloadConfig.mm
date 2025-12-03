@interface VCAudioPayloadConfig
- (BOOL)configure:(id)configure;
- (VCAudioPayloadConfig)initWithConfigDict:(id)dict;
- (float)qualityForBitRate:(unsigned int)rate;
- (id)className;
- (id)description;
- (unsigned)aacBitrate;
- (unsigned)acc24Bitrate;
- (unsigned)flags;
- (void)applyCodecTypeWithConfiguration:(id)configuration;
- (void)createSupportedBitrates;
- (void)dealloc;
- (void)setUseSBR:(BOOL)r;
- (void)setupEncodeProperties:(id)properties;
@end

@implementation VCAudioPayloadConfig

- (BOOL)configure:(id)configure
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = [configure objectForKeyedSubscript:@"vcAudioPayloadConfigKeyPayloadType"];
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v11)
      {
        return v11;
      }

      [(VCAudioPayloadConfig *)v9 configure:v10];
    }

    goto LABEL_75;
  }

  self->_payload = [v5 intValue];
  p_payload = &self->_payload;
  [(VCAudioPayloadConfig *)self applyCodecTypeWithConfiguration:configure];
  v7 = [configure objectForKeyedSubscript:@"vcPayloadConfigKeySampleRate"];
  if (v7)
  {
    intValue = [v7 intValue];
  }

  else
  {
    intValue = [VCPayloadUtils sampleRateForCodecType:self->_codecType];
    if (!intValue)
    {
      intValue = [VCPayloadUtils sampleRateForPayload:*p_payload];
    }
  }

  self->_codecSampleRate = intValue;
  if (!intValue && *p_payload != 117)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_75;
    }

    VRTraceErrorLogLevelToCSTR();
    v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [VCAudioPayloadConfig configure:];
      goto LABEL_75;
    }

    return v11;
  }

  v12 = [configure objectForKeyedSubscript:@"vcAudioPayloadConfigKeyInputSampleRate"];
  if (v12)
  {
    intValue2 = [v12 intValue];
    self->_inputSampleRate = intValue2;
    if (intValue2)
    {
      goto LABEL_16;
    }
  }

  else if (self->_inputSampleRate)
  {
    goto LABEL_16;
  }

  codecSampleRate = self->_codecSampleRate;
  if (codecSampleRate >= 0x5DC0)
  {
    codecSampleRate = 24000;
  }

  self->_inputSampleRate = codecSampleRate;
LABEL_16:
  v15 = [configure objectForKeyedSubscript:@"vcPayloadConfigKeyInternalBundleFactor"];
  if (v15)
  {
    intValue3 = [v15 intValue];
  }

  else
  {
    intValue3 = [VCPayloadUtils internalBundleFactorForPayload:*p_payload];
  }

  self->_internalBundleFactor = intValue3;
  if (intValue3 - 4 <= 0xFFFFFFFC)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v11)
      {
        [VCAudioPayloadConfig configure:];
        goto LABEL_75;
      }

      return v11;
    }

LABEL_75:
    LOBYTE(v11) = 0;
    return v11;
  }

  v17 = [configure objectForKeyedSubscript:@"vcAudioPayloadConfigKeyBlockSize"];
  if (v17)
  {
    intValue4 = [v17 intValue];
  }

  else
  {
    intValue4 = [VCPayloadUtils codecSamplesPerFrameForCodecType:self->_codecType secondsPerFrame:0.02];
    if (!intValue4)
    {
      intValue4 = [VCPayloadUtils codecSamplesPerFrameForPayload:*p_payload blockSize:0.02];
    }
  }

  self->_blockSize = intValue4;
  if (intValue4)
  {
    v21 = self->_internalBundleFactor * intValue4;
    LODWORD(v20) = self->_codecSampleRate;
    LODWORD(v19) = self->_inputSampleRate;
    self->_codecSamplesPerFrame = v21;
    self->_inputSamplesPerFrame = vcvtpd_u64_f64(v19 / v20 * v21);
    v22 = [configure objectForKeyedSubscript:@"vcPayloadConfigKeyOctetAligned"];
    if (v22)
    {
      bOOLValue = [v22 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    self->_payloadOctetAligned = bOOLValue;
    v24 = [configure objectForKeyedSubscript:@"vcPayloadConfigKeyDTXEnabled"];
    if (v24)
    {
      LOBYTE(v24) = [v24 BOOLValue];
    }

    self->_isDTXEnabled = v24;
    v25 = [configure objectForKeyedSubscript:@"vcPayloadConfigKeyEVSSIDPeriod"];
    if (v25)
    {
      intValue5 = [v25 intValue];
    }

    else
    {
      intValue5 = 8;
    }

    self->_evsSIDPeriod = intValue5;
    v27 = [configure objectForKeyedSubscript:@"vcPayloadConfigKeyEVSChannelAwareOffset"];
    if (v27)
    {
      LOWORD(v27) = [v27 intValue];
    }

    self->_evsChannelAwareOffset = v27;
    self->_evsChannelAwareIndicator = 1;
    v28 = [configure objectForKeyedSubscript:@"vcPayloadConfigKeyEVSHeaderFullOnly"];
    if (v28)
    {
      LOBYTE(v28) = [v28 BOOLValue];
    }

    self->_evsHeaderFullOnly = v28;
    v29 = [configure objectForKeyedSubscript:@"vcPayloadConfigKeyEVSCMRMode"];
    if (v29)
    {
      LODWORD(v29) = [v29 integerValue];
    }

    self->_evsCMRMode = v29;
    v30 = [configure objectForKeyedSubscript:@"vcAudioPayloadConfigKeyOPUSInBandFecEnabled"];
    if (v30)
    {
      LOBYTE(v30) = [v30 BOOLValue];
    }

    self->_isOpusInBandFecEnabled = v30;
    v31 = [objc_msgSend(configure objectForKeyedSubscript:{@"vcAudioPayloadConfigKeyOpusRestrictedLowDelayEnabled", "BOOLValue"}];
    self->_opusRestrictedLowDelayEnabled = v31;
    if (!self->_isOpusInBandFecEnabled && !v31 || *p_payload == 119)
    {
      [(VCAudioPayloadConfig *)self setupEncodeProperties:configure];
      if (HIWORD(self->_format) << 16 == 0x100000)
      {
        v32 = [configure objectForKeyedSubscript:@"vcPayloadConfigKeyUseSBR"];
        if (v32)
        {
          -[VCAudioPayloadConfig setUseSBR:](self, "setUseSBR:", [v32 BOOLValue]);
        }

        else
        {
          self->_useSBR = 0;
        }
      }

      v34 = [configure objectForKeyedSubscript:@"vcAudioPayloadConfigKeyACC24FixedBitrateModeEnabled"];
      if (v34)
      {
        LOBYTE(v34) = [v34 BOOLValue];
      }

      self->_isACC24FixedBitrateModeEnabled = v34;
      v35 = [configure objectForKeyedSubscript:@"vcAudioPayloadConfigKeyPayloadTypeOverride"];
      if (v35)
      {
        *p_payload = [v35 intValue];
      }

      LOBYTE(v11) = 1;
      return v11;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_75;
      }

      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v11)
      {
        return v11;
      }

      payload = self->_payload;
      isOpusInBandFecEnabled = self->_isOpusInBandFecEnabled;
      opusRestrictedLowDelayEnabled = self->_opusRestrictedLowDelayEnabled;
      v50 = 136316418;
      v51 = v36;
      v52 = 2080;
      v53 = "[VCAudioPayloadConfig configure:]";
      v54 = 1024;
      v55 = 190;
      v56 = 1024;
      *v57 = payload;
      *&v57[4] = 1024;
      *&v57[6] = isOpusInBandFecEnabled;
      LOWORD(selfCopy) = 1024;
      *(&selfCopy + 2) = opusRestrictedLowDelayEnabled;
      v41 = " [%s] %s:%d payload=%d Invalid payload configuration, isOpusInBandFecEnabled=%{BOOL}d opusRestrictedLowDelayEnabled=%{BOOL}d";
      v42 = v37;
      v43 = 46;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v33 = [(VCAudioPayloadConfig *)self performSelector:sel_logPrefix];
      }

      else
      {
        v33 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_75;
      }

      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v11)
      {
        return v11;
      }

      v46 = self->_payload;
      v47 = self->_isOpusInBandFecEnabled;
      v48 = self->_opusRestrictedLowDelayEnabled;
      v50 = 136316930;
      v51 = v44;
      v52 = 2080;
      v53 = "[VCAudioPayloadConfig configure:]";
      v54 = 1024;
      v55 = 190;
      v56 = 2112;
      *v57 = v33;
      *&v57[8] = 2048;
      selfCopy = self;
      v59 = 1024;
      v60 = v46;
      v61 = 1024;
      v62 = v47;
      v63 = 1024;
      v64 = v48;
      v41 = " [%s] %s:%d %@(%p) payload=%d Invalid payload configuration, isOpusInBandFecEnabled=%{BOOL}d opusRestrictedLowDelayEnabled=%{BOOL}d";
      v42 = v45;
      v43 = 66;
    }

    _os_log_error_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_ERROR, v41, &v50, v43);
    goto LABEL_75;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_75;
  }

  VRTraceErrorLogLevelToCSTR();
  v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v11)
  {
    [VCAudioPayloadConfig configure:];
    goto LABEL_75;
  }

  return v11;
}

- (void)setUseSBR:(BOOL)r
{
  if (r)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_supportedBitrates];
    [(NSArray *)v4 addObject:&unk_1F579BFB8];
    [(NSArray *)v4 addObject:&unk_1F579BFD0];

    self->_supportedBitrates = v4;
    self->_useSBR = 1;
  }
}

- (unsigned)aacBitrate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = 32000;
  valuePtr = 32000;
  v4 = CFPreferencesCopyAppValue(@"forceAACELDBitrate", @"com.apple.VideoConference");
  if (v4)
  {
    v5 = v4;
    if (CFNumberGetValue(v4, kCFNumberIntType, &valuePtr))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v11 = v6;
          v12 = 2080;
          v13 = "[VCAudioPayloadConfig aacBitrate]";
          v14 = 1024;
          v15 = 242;
          v16 = 1024;
          v17 = valuePtr;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d forceAACELDBitRate to %d", buf, 0x22u);
        }
      }

      self->_forcingBitrate = 1;
    }

    CFRelease(v5);
    return valuePtr;
  }

  return v3;
}

- (unsigned)acc24Bitrate
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"forceACC24FixedBitrate", @"com.apple.VideoConference");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 != CFStringGetTypeID())
    {
      goto LABEL_7;
    }

    IntValue = CFStringGetIntValue(v4);
    v7 = -[NSArray indexOfObject:](self->_supportedBitrates, "indexOfObject:", [MEMORY[0x1E696AD98] numberWithInt:IntValue]);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (ErrorLogLevelForModule >= 5)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315906;
          v16 = v12;
          v17 = 2080;
          v18 = "[VCAudioPayloadConfig acc24Bitrate]";
          v19 = 1024;
          v20 = 280;
          v21 = 1024;
          v22 = IntValue;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d force ACC24 bitrate to preferredBitrate=%d", &v15, 0x22u);
        }
      }

      self->_forcingBitrate = 1;
      v11 = IntValue;
      goto LABEL_13;
    }

    if (ErrorLogLevelForModule >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = 14000;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCAudioPayloadConfig acc24Bitrate]";
        v19 = 1024;
        v20 = 277;
        v21 = 1024;
        v22 = IntValue;
        v23 = 1024;
        v24 = 14000;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempt to force ACC24 bitrate to unsupported value=%d. Using default=%d instead.", &v15, 0x28u);
      }
    }

    else
    {
LABEL_7:
      v11 = 14000;
    }

LABEL_13:
    CFRelease(v4);
    return v11;
  }

  return 14000;
}

- (void)createSupportedBitrates
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_bitrate];
  self->_supportedBitrates = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

- (void)setupEncodeProperties:(id)properties
{
  payload = self->_payload;
  if (payload <= 12)
  {
    if (payload)
    {
      if (payload != 8)
      {
        if (payload != 9)
        {
          return;
        }

        self->_format = 999040;
        v9 = 480 * (self->_codecSampleRate / self->_codecSamplesPerFrame);
        goto LABEL_27;
      }

      v10 = 335680;
    }

    else
    {
      v10 = 270144;
    }

    self->_format = v10;
    v9 = 8 * self->_codecSampleRate;
LABEL_27:
    self->_bitrate = v9;

    [(VCAudioPayloadConfig *)self createSupportedBitrates];
    return;
  }

  v5 = payload - 97;
  v7 = 5274880;
  switch(v5)
  {
    case 0:
      self->_format = 4202304;
      if ([properties objectForKeyedSubscript:@"vcPayloadConfigKeyPreferredBitrate"])
      {
        v8 = [objc_msgSend(properties objectForKeyedSubscript:{@"vcPayloadConfigKeyPreferredBitrate", "unsignedIntValue"}];
      }

      else
      {
        v8 = 12200;
      }

      self->_bitrate = v8;
      v18 = [properties objectForKeyedSubscript:@"vcPayloadConfigKeyCodecBitrates"];
      self->_supportedBitrates = v18;
      if (!v18)
      {

        [(VCAudioPayloadConfig *)self createSupportedBitratesForAMR8k];
      }

      return;
    case 1:
      self->_format = 4210304;
      if ([properties objectForKeyedSubscript:@"vcPayloadConfigKeyPreferredBitrate"])
      {
        v14 = [objc_msgSend(properties objectForKeyedSubscript:{@"vcPayloadConfigKeyPreferredBitrate", "unsignedIntValue"}];
      }

      else
      {
        v14 = 12650;
      }

      self->_bitrate = v14;
      v19 = [properties objectForKeyedSubscript:@"vcPayloadConfigKeyCodecBitrates"];
      self->_supportedBitrates = v19;
      if (!v19)
      {

        [(VCAudioPayloadConfig *)self createSupportedBitratesForAMR16k];
      }

      return;
    case 2:
      self->_format = 16785216;
      return;
    case 4:
      self->_format = 1096576;
      self->_bundleHeaderBytes = 1;
      self->_bitrate = [(VCAudioPayloadConfig *)self aacBitrate];

      [(VCAudioPayloadConfig *)self createSupportedBitratesForAACELD48];
      return;
    case 7:
      v12 = 1072576;
      goto LABEL_33;
    case 8:
      v12 = 1070626;
      goto LABEL_33;
    case 9:
      v12 = 1064576;
LABEL_33:
      self->_format = v12;
      self->_bundleHeaderBytes = 1;
      self->_bitrate = [(VCAudioPayloadConfig *)self aacBitrate];

      [(VCAudioPayloadConfig *)self createSupportedBitratesForAACELD];
      return;
    case 10:
      v11 = 16000;
      goto LABEL_18;
    case 11:
      goto LABEL_19;
    case 14:
      v11 = 8000;
LABEL_18:
      v7 = v11 | 0x500000;
LABEL_19:
      self->_format = v7;
      self->_bundleHeaderBytes = 1;
      if ([properties objectForKeyedSubscript:@"vcPayloadConfigKeyPreferredBitrate"])
      {
        v13 = [objc_msgSend(properties objectForKeyedSubscript:{@"vcPayloadConfigKeyPreferredBitrate", "unsignedIntValue"}];
      }

      else
      {
        v13 = 13200;
      }

      self->_bitrate = v13;
      self->_supportedBitrates = [properties objectForKeyedSubscript:@"vcPayloadConfigKeyCodecBitrates"];
      self->_supportedBandwidths = [properties objectForKeyedSubscript:@"vcAudioPayloadConfigKeySupportedBandwidths"];
      if (!self->_supportedBitrates)
      {

        [(VCAudioPayloadConfig *)self createSupportedBitratesForEVS];
      }

      break;
    case 15:
      self->_format = 1138112;
      self->_bundleHeaderBytes = 1;
      break;
    case 16:
      self->_format = 1203648;
      self->_bundleHeaderBytes = 1;
      [(VCAudioPayloadConfig *)self createSupportedBitratesForACC24];
      self->_bitrate = [(VCAudioPayloadConfig *)self acc24Bitrate];
      break;
    case 22:
      codecSampleRate = self->_codecSampleRate;
      if (codecSampleRate == 48000)
      {
        v16 = 2145152;
      }

      else
      {
        v16 = 2121152;
      }

      if (codecSampleRate == 16000)
      {
        v17 = 2113152;
      }

      else
      {
        v17 = v16;
      }

      self->_format = v17;
      self->_bundleHeaderBytes = 1;
      self->_bitrate = 24000;

      [(VCAudioPayloadConfig *)self createSupportedBitratesForOpus];
      break;
    case 24:
      self->_format = 671360;
      v9 = 7750;
      goto LABEL_27;
    case 25:
      self->_format = 663360;
      v9 = 3950;
      goto LABEL_27;
    default:
      return;
  }
}

- (VCAudioPayloadConfig)initWithConfigDict:(id)dict
{
  v28 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VCAudioPayloadConfig;
  v4 = [(VCAudioPayloadConfig *)&v15 init];
  v5 = v4;
  if (v4)
  {
    if ([(VCAudioPayloadConfig *)v4 configure:dict])
    {
      [(VCAudioPayloadConfig *)v5 updateDescription];
      if (objc_opt_class() == v5)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v17 = v7;
            v18 = 2080;
            v19 = "[VCAudioPayloadConfig initWithConfigDict:]";
            v20 = 1024;
            v21 = 477;
            v22 = 2112;
            v23 = v5;
            v9 = " [%s] %s:%d %@";
            v10 = v8;
            v11 = 38;
LABEL_14:
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [(VCAudioPayloadConfig *)v5 performSelector:sel_logPrefix];
        }

        else
        {
          v6 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v17 = v12;
            v18 = 2080;
            v19 = "[VCAudioPayloadConfig initWithConfigDict:]";
            v20 = 1024;
            v21 = 477;
            v22 = 2112;
            v23 = v6;
            v24 = 2048;
            v25 = v5;
            v26 = 2112;
            v27 = v5;
            v9 = " [%s] %s:%d %@(%p) %@";
            v10 = v13;
            v11 = 58;
            goto LABEL_14;
          }
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioPayloadConfig;
  [(VCAudioPayloadConfig *)&v3 dealloc];
}

- (float)qualityForBitRate:(unsigned int)rate
{
  v3 = *&rate;
  if ([VCPayloadUtils canSetBitrateForPayload:self->_payload])
  {
    if (!-[NSArray containsObject:](self->_supportedBitrates, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]))
    {
      return 0.0;
    }
  }

  else if (self->_bitrate != v3)
  {
    return 0.0;
  }

  payload = self->_payload;

  [VCPayloadUtils qualityForPayload:payload forBitrate:v3];
  return result;
}

- (unsigned)flags
{
  v2 = HIWORD(self->_format) << 16;
  if (v2 >= 1179648)
  {
    if (v2 >= 0x400000)
    {
      if (v2 != 5242880 && v2 != 0x400000)
      {
        return 0;
      }
    }

    else if (v2 != 1179648 && v2 != 0x200000)
    {
      return 0;
    }

    return self->_internalBundleFactor;
  }

  if (v2 == 655360)
  {
    return 3;
  }

  if (v2 != 0x100000)
  {
    if (v2 != 1114112)
    {
      return 0;
    }

    return self->_internalBundleFactor;
  }

  return self->_useSBR;
}

- (id)className
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (void)applyCodecTypeWithConfiguration:(id)configuration
{
  v30 = *MEMORY[0x1E69E9840];
  self->_codecType = 0;
  v4 = [configuration objectForKeyedSubscript:@"vcAudioPayloadConfigKeyCodecType"];
  if (v4)
  {
    self->_codecType = [v4 integerValue];
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        VCMediaStreamConfig_CodecTypeDescription(self->_codecType);
        v19 = 136316162;
        v20 = v6;
        v21 = 2080;
        OUTLINED_FUNCTION_4_40();
        v22 = v8;
        v23 = v9;
        v24 = 2048;
        selfCopy = v10;
        v11 = " [%s] %s:%d codecType=%s[%ld]";
        v12 = v7;
        v13 = 48;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v19, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioPayloadConfig *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        VCMediaStreamConfig_CodecTypeDescription(self->_codecType);
        v19 = 136316674;
        v20 = v14;
        v21 = 2080;
        OUTLINED_FUNCTION_4_40();
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        selfCopy = self;
        v26 = v16;
        v27 = v17;
        v28 = 2048;
        v29 = v18;
        v11 = " [%s] %s:%d %@(%p) codecType=%s[%ld]";
        v12 = v15;
        v13 = 68;
        goto LABEL_13;
      }
    }
  }
}

- (void)configure:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d payload:%d Invalid Codec SampleRate", v2, v3, v4, v5);
}

- (void)configure:.cold.2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d payload:%d Invalid block size", v2, v3, v4, v5);
}

- (void)configure:.cold.3()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d payload:%d Invalid internal bundle factor", v2, v3, v4, v5);
}

- (void)configure:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCAudioPayloadConfig configure:]";
  v6 = 1024;
  v7 = 79;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Missing payloadType", &v2, 0x1Cu);
}

@end