@interface AVCAudioStreamConfig
+ (int)clientCodecCMRModeModeWithEVSCMRMode:(int)a3;
+ (int)codecRateModeForClientCodecRateMode:(int64_t)a3;
+ (int)evsCMRModeForClientCodecCMRMode:(int)a3;
+ (int64_t)clientCodecRateModeForCodecRateMode:(int)a3;
+ (int64_t)clientCodecTypeWithCodecType:(int64_t)a3;
+ (int64_t)clientStreamModeWithStreamMode:(int64_t)a3;
+ (int64_t)codecTypeWithClientCodecType:(int64_t)a3;
+ (int64_t)streamModeWithClientStreamMode:(int64_t)a3;
- (AVCAudioStreamConfig)init;
- (BOOL)isCNValid;
- (BOOL)isChannelCountValid;
- (BOOL)isDTMFValid;
- (BOOL)isRedValid;
- (BOOL)isSystemAudioCaptureMuteBehaviorValid;
- (BOOL)isValid;
- (id)dictionary;
- (void)dealloc;
- (void)isCNValid;
- (void)isChannelCountValid;
- (void)isDTMFValid;
- (void)isRedValid;
- (void)isSystemAudioCaptureMuteBehaviorValid;
- (void)setUpWithDictionary:(id)a3;
@end

@implementation AVCAudioStreamConfig

- (AVCAudioStreamConfig)init
{
  v23 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AVCAudioStreamConfig;
  v2 = [(AVCAudioStreamConfig *)&v12 init];
  if (v2)
  {
    if (objc_opt_class() == v2)
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

      *buf = 136315650;
      v14 = v4;
      v15 = 2080;
      v16 = "[AVCAudioStreamConfig init]";
      v17 = 1024;
      v18 = 632;
      v6 = " [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(AVCAudioStreamConfig *)v2 performSelector:sel_logPrefix];
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

      *buf = 136316162;
      v14 = v9;
      v15 = 2080;
      v16 = "[AVCAudioStreamConfig init]";
      v17 = 1024;
      v18 = 632;
      v19 = 2112;
      v20 = v3;
      v21 = 2048;
      v22 = v2;
      v6 = " [%s] %s:%d %@(%p) ";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
LABEL_13:
    *&v2->_ptime = vdupq_n_s64(0x14uLL);
    v2->_volume = 1.0;
    v2->_channelCount = 1;
    v2->_remoteDeviceInfo = objc_alloc_init(AVCMediaStreamConfigRemoteDeviceInfo);
    v2->_systemAudioCaptureMuteBehavior = 0;
  }

  return v2;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[AVCAudioStreamConfig dealloc]";
        v16 = 1024;
        v17 = 644;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(AVCAudioStreamConfig *)self performSelector:sel_logPrefix];
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
        v13 = v9;
        v14 = 2080;
        v15 = "[AVCAudioStreamConfig dealloc]";
        v16 = 1024;
        v17 = 644;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = AVCAudioStreamConfig;
  [(AVCAudioStreamConfig *)&v11 dealloc];
}

- (BOOL)isValid
{
  if (![(AVCAudioStreamConfig *)self isDTMFValid]|| ![(AVCAudioStreamConfig *)self isCNValid]|| ![(AVCAudioStreamConfig *)self isRedValid]|| ![(AVCAudioStreamConfig *)self isChannelCountValid])
  {
    return 0;
  }

  return [(AVCAudioStreamConfig *)self isSystemAudioCaptureMuteBehaviorValid];
}

+ (int64_t)codecTypeWithClientCodecType:(int64_t)a3
{
  if (a3 > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_1DBD51598[a3];
  }
}

+ (int64_t)clientCodecTypeWithCodecType:(int64_t)a3
{
  if ((a3 - 2) > 0x12)
  {
    return 0;
  }

  else
  {
    return qword_1DBD51628[a3 - 2];
  }
}

+ (int64_t)streamModeWithClientStreamMode:(int64_t)a3
{
  if (a3 < 0xC)
  {
    return a3 + 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[AVCAudioStreamConfig streamModeWithClientStreamMode:];
    }
  }

  return 0;
}

+ (int64_t)clientStreamModeWithStreamMode:(int64_t)a3
{
  if ((a3 - 2) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1DBD516C0[a3 - 2];
  }
}

+ (int)clientCodecCMRModeModeWithEVSCMRMode:(int)a3
{
  if (a3 == -1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

+ (int)evsCMRModeForClientCodecCMRMode:(int)a3
{
  if (a3 == -1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

+ (int)codecRateModeForClientCodecRateMode:(int64_t)a3
{
  if (a3 > 0x15)
  {
    return -1;
  }

  else
  {
    return dword_1DBD51718[a3];
  }
}

+ (int64_t)clientCodecRateModeForCodecRateMode:(int)a3
{
  if ((a3 - 1) > 0x14)
  {
    return 0;
  }

  else
  {
    return qword_1DBD51770[a3 - 1];
  }
}

- (BOOL)isDTMFValid
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(AVCAudioStreamConfig *)self dtmfPayloadType]&& ([(AVCAudioStreamConfig *)self dtmfPayloadType]> 0x7F || [(AVCAudioStreamConfig *)self dtmfPayloadType]<= 0x5F))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v3)
        {
          return v3;
        }

        [AVCAudioStreamConfig isDTMFValid];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(AVCAudioStreamConfig *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
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

        v8 = 136316418;
        v9 = v5;
        v10 = 2080;
        v11 = "[AVCAudioStreamConfig isDTMFValid]";
        v12 = 1024;
        v13 = 1001;
        v14 = 2112;
        v15 = v4;
        v16 = 2048;
        v17 = self;
        v18 = 2048;
        v19 = [(AVCAudioStreamConfig *)self dtmfPayloadType];
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid DTMF type=%lu", &v8, 0x3Au);
      }
    }

    LOBYTE(v3) = 0;
    return v3;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (BOOL)isCNValid
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(AVCAudioStreamConfig *)self isCNEnabled]&& [(AVCAudioStreamConfig *)self cnPayloadType]!= 13)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v3)
        {
          return v3;
        }

        [AVCAudioStreamConfig isCNValid];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(AVCAudioStreamConfig *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
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

        v8 = 136316418;
        v9 = v5;
        v10 = 2080;
        v11 = "[AVCAudioStreamConfig isCNValid]";
        v12 = 1024;
        v13 = 1012;
        v14 = 2112;
        v15 = v4;
        v16 = 2048;
        v17 = self;
        v18 = 2048;
        v19 = [(AVCAudioStreamConfig *)self cnPayloadType];
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid CN type=%lu", &v8, 0x3Au);
      }
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)isRedValid
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(AVCAudioStreamConfig *)self numRedundantPayloads]&& ([(AVCAudioStreamConfig *)self txRedPayloadType]> 0x7F || [(AVCAudioStreamConfig *)self txRedPayloadType]< 0x60 || [(AVCAudioStreamConfig *)self rxRedPayloadType]> 0x7F || [(AVCAudioStreamConfig *)self rxRedPayloadType]<= 0x5F))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v3)
        {
          return v3;
        }

        [AVCAudioStreamConfig isRedValid];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(AVCAudioStreamConfig *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
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

        v8 = 136316674;
        v9 = v5;
        v10 = 2080;
        v11 = "[AVCAudioStreamConfig isRedValid]";
        v12 = 1024;
        v13 = 1024;
        v14 = 2112;
        v15 = v4;
        v16 = 2048;
        v17 = self;
        v18 = 2048;
        v19 = [(AVCAudioStreamConfig *)self txRedPayloadType];
        v20 = 2048;
        v21 = [(AVCAudioStreamConfig *)self rxRedPayloadType];
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid RED type(tx)=%lu, type(rx)=%lu", &v8, 0x44u);
      }
    }

    LOBYTE(v3) = 0;
    return v3;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (BOOL)isChannelCountValid
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(AVCAudioStreamConfig *)self audioStreamMode];
  v4 = v3 + 1;
  if ((v3 + 1) <= 0xC)
  {
    if (((1 << v4) & 0x4FF) != 0)
    {
      if (self->_channelCount == 1)
      {
        goto LABEL_20;
      }
    }

    else if (((1 << v4) & 0x1A00) != 0)
    {
      if (self->_channelCount == 2)
      {
LABEL_20:
        LOBYTE(v6) = 1;
        return v6;
      }
    }

    else
    {
      channelCount = self->_channelCount;
      if (channelCount <= 4 && ((1 << channelCount) & 0x16) != 0)
      {
        goto LABEL_20;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      [AVCAudioStreamConfig isChannelCountValid];
    }

LABEL_17:
    LOBYTE(v6) = 0;
    return v6;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(AVCAudioStreamConfig *)self performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_17;
  }

  v7 = VRTraceErrorLogLevelToCSTR();
  v8 = *MEMORY[0x1E6986650];
  v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v6)
  {
    v9 = self->_channelCount;
    v12 = 136316674;
    v13 = v7;
    v14 = 2080;
    v15 = "[AVCAudioStreamConfig isChannelCountValid]";
    v16 = 1024;
    v17 = 1053;
    v18 = 2112;
    v19 = v5;
    v20 = 2048;
    v21 = self;
    v22 = 2048;
    v23 = v9;
    v24 = 2048;
    v25 = [(AVCAudioStreamConfig *)self audioStreamMode];
    _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid channel count==%lu for audio mode=%ld", &v12, 0x44u);
    goto LABEL_17;
  }

  return v6;
}

- (BOOL)isSystemAudioCaptureMuteBehaviorValid
{
  v5 = *MEMORY[0x1E69E9840];
  if ([(AVCAudioStreamConfig *)self audioStreamMode]== 8 && !+[VCHardwareSettings deviceClass]|| self->_systemAudioCaptureMuteBehavior != 1)
  {
    return 1;
  }

  [(AVCAudioStreamConfig *)self isSystemAudioCaptureMuteBehaviorValid];
  return v4;
}

- (void)setUpWithDictionary:(id)a3
{
  self->_audioStreamMode = +[AVCAudioStreamConfig clientStreamModeWithStreamMode:](AVCAudioStreamConfig, "clientStreamModeWithStreamMode:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamAudioStreamMode", "integerValue"}]);
  self->_codecType = +[AVCAudioStreamConfig clientCodecTypeWithCodecType:](AVCAudioStreamConfig, "clientCodecTypeWithCodecType:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCodecType", "integerValue"}]);
  self->_cnEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCNEnabled", "BOOLValue"}];
  self->_cnPayloadType = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCNPayloadType", "integerValue"}];
  self->_dtmfPayloadType = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamDTMFPayloadType", "integerValue"}];
  self->_dtmfTimestampRate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamDTMFTsRate", "integerValue"}];
  self->_dtmfTonePlaybackEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamdtmfTonePlaybackEnabled", "BOOLValue"}];
  self->_dtmfEventCallbacksEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamDTMFEventCallbacksEnabled", "BOOLValue"}];
  self->_ptime = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamPtime", "integerValue"}];
  self->_maxPtime = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamMaxPtime", "integerValue"}];
  self->_channelAwareOffset = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamEVSChannelAwareOffset", "integerValue"}];
  self->_headerFullOnly = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamEVSHeaderFullOnly", "BOOLValue"}];
  self->_dtxEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamAMRDTXEnabled", "BOOLValue"}];
  self->_octetAligned = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamAMRIsOctetAligned", "BOOLValue"}];
  self->_codecRateModeMask = +[AVCAudioStreamConfig clientCodecRateMaskForCodecRateMode:](AVCAudioStreamConfig, "clientCodecRateMaskForCodecRateMode:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCodecRateModeMask", "integerValue"}]);
  self->_codecBandwidthMask = +[AVCAudioStreamConfig clientCodecBandwidthMaskForCodecBandwidth:](AVCAudioStreamConfig, "clientCodecBandwidthMaskForCodecBandwidth:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCodecBandwidthMask", "integerValue"}]);
  self->_preferredCodecRateMode = +[AVCAudioStreamConfig clientCodecRateModeForCodecRateMode:](AVCAudioStreamConfig, "clientCodecRateModeForCodecRateMode:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCodecRateModePreferred", "integerValue"}]);
  self->_latencySensitiveMode = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamLatencySensitiveMode", "BOOLValue"}];
  self->_numRedundantPayloads = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamNumRedundantPayloads", "integerValue"}];
  self->_txRedPayloadType = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTxRedPayloadType", "integerValue"}];
  self->_rxRedPayloadType = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRxRedPayloadType", "integerValue"}];
  self->_enableMaxBitrateOnNoChangeCMR = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamEnableMaxBitrateOnNoChangeCMR", "BOOLValue"}];
  self->_anbrEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamAnbrEnabled", "BOOLValue"}];
  self->_subscriptionSlot = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTelephonyServiceSubscriptionSlot", "integerValue"}];
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamChannelCount", "unsignedIntegerValue"}])
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamChannelCount", "unsignedIntegerValue"}];
  }

  else
  {
    v5 = 1;
  }

  self->_channelCount = v5;
  self->_preferredMediaBitRate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamPreferredMediaBitRate", "unsignedIntegerValue"}];
  self->_codecCMRMode = +[AVCAudioStreamConfig clientCodecCMRModeModeWithEVSCMRMode:](AVCAudioStreamConfig, "clientCodecCMRModeModeWithEVSCMRMode:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamEVSCMRMode", "integerValue"}]);
  v6 = [a3 objectForKeyedSubscript:@"vcMediaStreamSystemAudioCaptureIncludedAuditTokens"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [AVCAuditToken deserializeAuditTokens:v6];
  }

  else
  {
    v7 = 0;
  }

  self->_systemAudioCaptureIncludedAuditTokens = v7;
  self->_systemAudioCaptureMuteBehavior = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamSystemAudioCaptureMuteBehavior", "integerValue"}];
}

- (id)dictionary
{
  v6[31] = *MEMORY[0x1E69E9840];
  v5[0] = @"vcMediaStreamAudioStreamMode";
  v6[0] = [MEMORY[0x1E696AD98] numberWithInteger:{+[AVCAudioStreamConfig streamModeWithClientStreamMode:](AVCAudioStreamConfig, "streamModeWithClientStreamMode:", self->_audioStreamMode)}];
  v5[1] = @"vcMediaStreamAMRDTXEnabled";
  v6[1] = [MEMORY[0x1E696AD98] numberWithBool:self->_dtxEnabled];
  v5[2] = @"vcMediaStreamAMRIsOctetAligned";
  v6[2] = [MEMORY[0x1E696AD98] numberWithBool:self->_octetAligned];
  v5[3] = @"vcMediaStreamCodecRateModeMask";
  v6[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{+[AVCAudioStreamConfig codecRateMaskForClientCodecRateMode:](AVCAudioStreamConfig, "codecRateMaskForClientCodecRateMode:", self->_codecRateModeMask)}];
  v5[4] = @"vcMediaStreamCodecRateModePreferred";
  v6[4] = [MEMORY[0x1E696AD98] numberWithInt:{+[AVCAudioStreamConfig codecRateModeForClientCodecRateMode:](AVCAudioStreamConfig, "codecRateModeForClientCodecRateMode:", self->_preferredCodecRateMode)}];
  v5[5] = @"vcMediaStreamCodecBandwidthMask";
  v6[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{+[AVCAudioStreamConfig codecBandwidthMaskForClientCodecBandwidth:](AVCAudioStreamConfig, "codecBandwidthMaskForClientCodecBandwidth:", self->_codecBandwidthMask)}];
  v5[6] = @"vcMediaStreamCNEnabled";
  v6[6] = [MEMORY[0x1E696AD98] numberWithBool:self->_cnEnabled];
  v5[7] = @"vcMediaStreamCNPayloadType";
  v6[7] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cnPayloadType];
  v5[8] = @"vcMediaStreamDTMFPayloadType";
  v6[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dtmfPayloadType];
  v5[9] = @"vcMediaStreamDTMFTsRate";
  v6[9] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dtmfTimestampRate];
  v5[10] = @"vcMediaStreamdtmfTonePlaybackEnabled";
  v6[10] = [MEMORY[0x1E696AD98] numberWithBool:self->_dtmfTonePlaybackEnabled];
  v5[11] = @"vcMediaStreamDTMFEventCallbacksEnabled";
  v6[11] = [MEMORY[0x1E696AD98] numberWithBool:self->_dtmfEventCallbacksEnabled];
  v5[12] = @"vcMediaStreamPtime";
  v6[12] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_ptime];
  v5[13] = @"vcMediaStreamEVSChannelAwareOffset";
  v6[13] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_channelAwareOffset];
  v5[14] = @"vcMediaStreamEVSHeaderFullOnly";
  v6[14] = [MEMORY[0x1E696AD98] numberWithBool:self->_headerFullOnly];
  v5[15] = @"vcMediaStreamMaxPtime";
  v6[15] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxPtime];
  v5[16] = @"vcMediaStreamCodecType";
  v6[16] = [MEMORY[0x1E696AD98] numberWithInteger:{+[AVCAudioStreamConfig codecTypeWithClientCodecType:](AVCAudioStreamConfig, "codecTypeWithClientCodecType:", self->_codecType)}];
  v5[17] = @"vcMediaStreamNumRedundantPayloads";
  v6[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numRedundantPayloads];
  v5[18] = @"vcMediaStreamTxRedPayloadType";
  v6[18] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_txRedPayloadType];
  v5[19] = @"vcMediaStreamRxRedPayloadType";
  v6[19] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_rxRedPayloadType];
  v5[20] = @"vcMediaStreamEnableMaxBitrateOnNoChangeCMR";
  v6[20] = [MEMORY[0x1E696AD98] numberWithBool:self->_enableMaxBitrateOnNoChangeCMR];
  v5[21] = @"vcMediaStreamAnbrEnabled";
  v6[21] = [MEMORY[0x1E696AD98] numberWithBool:self->_anbrEnabled];
  v5[22] = @"vcMediaStreamTelephonyServiceSubscriptionSlot";
  v6[22] = [MEMORY[0x1E696AD98] numberWithInteger:self->_subscriptionSlot];
  v5[23] = @"vcMediaStreamChannelCount";
  v6[23] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_channelCount];
  v5[24] = @"vcMediaStreamPreferredMediaBitRate";
  v6[24] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preferredMediaBitRate];
  v5[25] = @"vcMediaStreamRemoteDeviceInfoDeviceName";
  v6[25] = [(AVCMediaStreamConfigRemoteDeviceInfo *)self->_remoteDeviceInfo deviceName];
  v5[26] = @"vcMediaStreamRemoteDeviceInfoDeviceUID";
  v6[26] = [(AVCMediaStreamConfigRemoteDeviceInfo *)self->_remoteDeviceInfo deviceUID];
  v5[27] = @"vcMediaStreamRemoteDeviceInfoModelUID";
  v6[27] = [(AVCMediaStreamConfigRemoteDeviceInfo *)self->_remoteDeviceInfo modelUID];
  v5[28] = @"vcMediaStreamEVSCMRMode";
  v6[28] = [MEMORY[0x1E696AD98] numberWithInt:{+[AVCAudioStreamConfig evsCMRModeForClientCodecCMRMode:](AVCAudioStreamConfig, "evsCMRModeForClientCodecCMRMode:", self->_codecCMRMode)}];
  v5[29] = @"vcMediaStreamSystemAudioCaptureIncludedAuditTokens";
  if (self->_systemAudioCaptureIncludedAuditTokens)
  {
    v3 = [AVCAuditToken serializeAuditTokens:?];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v6[29] = v3;
  v5[30] = @"vcMediaStreamSystemAudioCaptureMuteBehavior";
  v6[30] = [MEMORY[0x1E696AD98] numberWithInteger:self->_systemAudioCaptureMuteBehavior];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:31];
}

+ (void)streamModeWithClientStreamMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)isDTMFValid
{
  OUTLINED_FUNCTION_14_5();
  [v0 dtmfPayloadType];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)isCNValid
{
  OUTLINED_FUNCTION_14_5();
  [v0 cnPayloadType];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)isRedValid
{
  OUTLINED_FUNCTION_18_2();
  [v1 txRedPayloadType];
  [v0 rxRedPayloadType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

- (void)isChannelCountValid
{
  OUTLINED_FUNCTION_14_5();
  [v0 audioStreamMode];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

- (void)isSystemAudioCaptureMuteBehaviorValid
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [a1 audioStreamMode];
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);
    }
  }

  *a3 = 0;
}

@end