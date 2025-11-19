@interface VCAudioPayload
- (AudioStreamBasicDescription)encoderFormatWithInternalFormat:(SEL)a3;
- (BOOL)createEncoderWithInputFormat:(const tagVCAudioFrameFormat *)a3;
- (BOOL)is5MSRestrictedLowDelayOpusConfig;
- (BOOL)isSIDFrame:(const char *)a3 encodedBytes:(int)a4;
- (BOOL)setBandwidth:(int)a3;
- (BOOL)setBitrate:(unsigned int)a3;
- (BOOL)setCodecModeRequest:(_VCAudioCodecModeChangeEvent *)a3;
- (VCAudioPayload)initWithConfig:(id)a3;
- (id)description;
- (id)encoderDescription;
- (int)encodeAudio:(opaqueVCAudioBufferList *)a3 numInputSamples:(int)a4 outputBytes:(void *)a5 numOutputBytes:(int)a6 shortREDBytes:(unsigned int *)a7;
- (void)dealloc;
- (void)resetEncoderWithSampleBuffer:(char *)a3 numBytes:(int)a4;
- (void)setCurrentDTXEnable:(BOOL)a3;
- (void)setShortREDEnabled:(BOOL)a3;
@end

@implementation VCAudioPayload

- (VCAudioPayload)initWithConfig:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8.receiver = self;
    v8.super_class = VCAudioPayload;
    v5 = [(VCAudioPayload *)&v8 init];
    if (v5)
    {
      v5->_config = a3;
      v5->_bitrate = [a3 bitrate];
      v5->_bandwidth = VCPayloadUtils_DefaultAudioCodecBandwidthCodecForSampleRate([a3 codecSampleRate]);
      v5->_ramStadSRCEnabled = 0;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioPayload initWithConfig:v6];
      }
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  SoundDec_Destroy(self->_encoder);

  v3.receiver = self;
  v3.super_class = VCAudioPayload;
  [(VCAudioPayload *)&v3 dealloc];
}

- (AudioStreamBasicDescription)encoderFormatWithInternalFormat:(SEL)a3
{
  *&retstr->mBitsPerChannel = 0;
  *&retstr->mSampleRate = 0u;
  *&retstr->mBytesPerPacket = 0u;
  v7 = [(VCAudioPayloadConfig *)self->_config blockSize];
  v8 = v7 / [(VCAudioPayloadConfig *)self->_config codecSampleRate];
  v9 = [VCPayloadUtils codecSamplesPerFrameForCodecType:[(VCAudioPayloadConfig *)self->_config codecType] secondsPerFrame:v8];
  if (!v9)
  {
    v9 = [VCPayloadUtils codecSamplesPerFrameForPayload:[(VCAudioPayloadConfig *)self->_config payload] blockSize:a4->format.mSampleRate sampleRate:v8];
  }

  v10 = [(VCAudioPayloadConfig *)self->_config format];
  mChannelsPerFrame = a4->format.mChannelsPerFrame;
  v12 = [(VCAudioPayloadConfig *)self->_config flags];

  return SoundDec_FormatASBD(v10, retstr, v9, mChannelsPerFrame, v12, v8);
}

- (BOOL)is5MSRestrictedLowDelayOpusConfig
{
  if ([(VCAudioPayloadConfig *)self->_config payload]!= 119)
  {
    return 0;
  }

  v3 = [(VCAudioPayloadConfig *)self->_config codecSampleRate];
  if (v3 / [(VCAudioPayloadConfig *)self->_config blockSize]!= 200)
  {
    return 0;
  }

  config = self->_config;

  return [(VCAudioPayloadConfig *)config opusRestrictedLowDelayEnabled];
}

- (BOOL)createEncoderWithInputFormat:(const tagVCAudioFrameFormat *)a3
{
  v58 = *MEMORY[0x1E69E9840];
  p_encoder = &self->_encoder;
  if (self->_encoder)
  {
    return 1;
  }

  *v33 = -1;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v33[8] = v7;
  *&v33[24] = v7;
  [(VCAudioPayload *)self encoderFormatWithInternalFormat:?];
  *v31 = xmmword_1DBD50638;
  memset(&v31[16], 170, 32);
  v8 = *&a3->format.mBytesPerPacket;
  v30[0] = *&a3->format.mSampleRate;
  v30[1] = v8;
  *&v31[8] = *v33;
  *v31 = *&a3->format.mBitsPerChannel;
  *&v31[24] = *&v33[16];
  *&v31[40] = *&v33[32];
  v32 = 0xAAAAAAAAAAAAAA00;
  BYTE1(v32) = self->_ramStadSRCEnabled;
  BYTE2(v32) = [(VCAudioPayloadConfig *)self->_config isACC24FixedBitrateModeEnabled:v30[0]];
  if ((SoundDec_Create(p_encoder, v30) & 0x80000000) != 0)
  {
    [VCAudioPayload createEncoderWithInputFormat:];
    goto LABEL_42;
  }

  SoundDec_SetEnablePacketSizeLimitForVBR(self->_encoder, [VCPayloadUtils shouldEnablePacketSizeLimitForAudioFormat:v30]);
  v9 = [(VCAudioPayload *)self is5MSRestrictedLowDelayOpusConfig];
  if ([VCPayloadUtils canSetBitrateForPayload:[(VCAudioPayloadConfig *)self->_config payload]])
  {
    if ([VCPayloadUtils isEVSPayload:[(VCAudioPayloadConfig *)self->_config payload]]|| v9)
    {
      SoundDec_SetCodecInitialBitrate(self->_encoder, self->_bitrate, 0);
      if (!v9)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (![VCPayloadUtils isOpus4Channel48KhzPayload:[(VCAudioPayloadConfig *)self->_config payload] outFormat:v33]&& ![VCPayloadUtils isFormatAACELDNonSBR48KHzStereo:v33])
    {
      SoundDec_SetBitrate(self->_encoder, self->_bitrate);
      if (!v9)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    SoundDec_SetCodecInitialBitrate(self->_encoder, self->_bitrate, 1);
  }

  if (v9)
  {
LABEL_12:
    SoundDec_ApplyLocalQuality(*p_encoder, v10, v11);
  }

LABEL_13:
  SoundDec_SetDTX(self->_encoder, [(VCAudioPayloadConfig *)self->_config isDTXEnabled]);
  SoundDec_EnableShortRED(self->_encoder, self->_shortREDEnabled, self->_shortREDBytesPerFrame, self->_shortREDBitrate);
  if ([VCPayloadUtils isEVSPayload:[(VCAudioPayloadConfig *)self->_config payload]])
  {
    SoundDec_SetEVSSIDPeriod(self->_encoder, [(VCAudioPayloadConfig *)self->_config evsSIDPeriod]);
    SoundDec_SetEVSCodecCMRMode(self->_encoder, [(VCAudioPayloadConfig *)self->_config evsCMRMode]);
    v12 = [(VCAudioPayloadConfig *)self->_config evsChannelAwareOffset];
    if (v12 <= 7 && ((1 << v12) & 0xAC) != 0)
    {
      *buf = [(VCAudioPayloadConfig *)self->_config evsChannelAwareOffset];
      LODWORD(v35) = [(VCAudioPayloadConfig *)self->_config evsChannelAwareIndicator];
      SoundDec_SetEVSChannelAwareOffset(self->_encoder, buf);
    }

    SoundDec_SetEVSFormatHandling(self->_encoder, [(VCAudioPayloadConfig *)self->_config evsHeaderFullOnly]);
    bandwidth = self->_bandwidth;
    if ([(NSArray *)[(VCAudioPayloadConfig *)self->_config supportedBandwidths] count])
    {
      bandwidth = [-[NSArray valueForKeyPath:](-[VCAudioPayloadConfig supportedBandwidths](self->_config "supportedBandwidths")];
    }

    if ((SoundDec_SetEVSAudioCodecBandwidth(*p_encoder, [VCPayloadUtils audioCodecBandwidthForVCAudioCodecBandwidth:bandwidth]) & 0x80000000) == 0)
    {
      self->_bandwidth = bandwidth;
    }
  }

  if (*&v33[8] != 1633772390 || !VCFeatureFlagManager_SendAACELDSBRHeaderWithEveryFrame() || (VCSoundDec_SetAACELDSBRInterval(*p_encoder, 1) & 0x80000000) == 0)
  {
    SoundDec_SetAMRPayloadFormat(self->_encoder, [(VCAudioPayloadConfig *)self->_config payloadOctetAligned]);
    if ([(VCAudioPayloadConfig *)self->_config isOpusInBandFecEnabled])
    {
      SoundDec_SetOpusInBandFecEnabled(self->_encoder, [(VCAudioPayloadConfig *)self->_config isOpusInBandFecEnabled]);
      SoundDec_SetPacketLossPercentage(self->_encoder, 5);
    }

    if ([(VCAudioPayloadConfig *)self->_config opusRestrictedLowDelayEnabled])
    {
      VCSoundDec_SetOpusApplication(*p_encoder, 3);
    }

    v56 = 0u;
    v57 = 0u;
    *__str = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    *v50 = 0u;
    v51 = 0u;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return 1;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v17 = FormatToCStr(a3, __str, 0x40uLL);
      v18 = FormatToCStr(v33, v50, 0x40uLL);
      LODWORD(v19) = a3->samplesPerFrame;
      *buf = 136316418;
      mSampleRate = a3->format.mSampleRate;
      v35 = v15;
      v36 = 2080;
      v37 = "[VCAudioPayload createEncoderWithInputFormat:]";
      v38 = 1024;
      v39 = 173;
      v40 = 2080;
      v41 = v17;
      v42 = 2080;
      v43 = v18;
      v44 = 2048;
      v45 = v19 / mSampleRate;
      v21 = " [%s] %s:%d internalFormat=%s encodedFormat=%s secondsPerFrame=%f";
      v22 = v16;
      v23 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCAudioPayload *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return 1;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      *&v26 = COERCE_DOUBLE(FormatToCStr(a3, __str, 0x40uLL));
      v27 = FormatToCStr(v33, v50, 0x40uLL);
      LODWORD(v28) = a3->samplesPerFrame;
      *buf = 136316930;
      v29 = a3->format.mSampleRate;
      v35 = v24;
      v36 = 2080;
      v37 = "[VCAudioPayload createEncoderWithInputFormat:]";
      v38 = 1024;
      v39 = 173;
      v40 = 2112;
      v41 = v14;
      v42 = 2048;
      v43 = self;
      v44 = 2080;
      v45 = *&v26;
      v46 = 2080;
      v47 = v27;
      v48 = 2048;
      v49 = v28 / v29;
      v21 = " [%s] %s:%d %@(%p) internalFormat=%s encodedFormat=%s secondsPerFrame=%f";
      v22 = v25;
      v23 = 78;
    }

    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    return 1;
  }

  [VCAudioPayload createEncoderWithInputFormat:];
LABEL_42:
  SoundDec_Destroy(*p_encoder);
  result = 0;
  *p_encoder = 0;
  return result;
}

- (int)encodeAudio:(opaqueVCAudioBufferList *)a3 numInputSamples:(int)a4 outputBytes:(void *)a5 numOutputBytes:(int)a6 shortREDBytes:(unsigned int *)a7
{
  v69 = *MEMORY[0x1E69E9840];
  v36 = a6;
  outPacketDescription.mStartOffset = 0xAAAAAAAAAAAAAAAALL;
  *&outPacketDescription.mVariableFramesInPacket = 2863311530;
  AudioBufferList = VCAudioBufferList_GetAudioBufferList(a3);
  SoundDec_Encode(self->_encoder, AudioBufferList, a4, a5, a6, &v36, &outPacketDescription, self->_shouldReset, v13, v14);
  if (v15 < 0)
  {
    v22 = v15;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(v55, 0, sizeof(v55));
    v23 = [(VCAudioPayloadConfig *)self->_config payload:256];
    if (v23 == 99)
    {
      v24 = 8;
    }

    else
    {
      v24 = 7;
    }

    VCAudioPayloadConfig_GetDescription(self->_config, v55, &v34);
    if (v24 > VRTraceGetErrorLogLevelForModule())
    {
      return 0;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    if (v23 == 99)
    {
      v26 = *MEMORY[0x1E6986650];
      v27 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          shouldReset = self->_shouldReset;
          *buf = 136317186;
          v38 = v25;
          v39 = 2080;
          v40 = "[VCAudioPayload encodeAudio:numInputSamples:outputBytes:numOutputBytes:shortREDBytes:]";
          v41 = 1024;
          v42 = 205;
          v43 = 2080;
          v44 = "[VCAudioPayload encodeAudio:numInputSamples:outputBytes:numOutputBytes:shortREDBytes:]";
          v45 = 1024;
          v46 = v22;
          v47 = 1024;
          v48 = shouldReset;
          v49 = 1024;
          v50 = a4;
          v51 = 1024;
          v52 = v36;
          v53 = 2080;
          v54 = v55;
          _os_log_debug_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %s: SoundDec_Encode failed result=%x. reset=%d inSamples=%d outBytes=%d payloadDescription=%s", buf, 0x48u);
        }

        return 0;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v28 = self->_shouldReset;
        *buf = 136317186;
        v38 = v25;
        v39 = 2080;
        v40 = "[VCAudioPayload encodeAudio:numInputSamples:outputBytes:numOutputBytes:shortREDBytes:]";
        v41 = 1024;
        v42 = 205;
        v43 = 2080;
        v44 = "[VCAudioPayload encodeAudio:numInputSamples:outputBytes:numOutputBytes:shortREDBytes:]";
        v45 = 1024;
        v46 = v22;
        v47 = 1024;
        v48 = v28;
        v49 = 1024;
        v50 = a4;
        v51 = 1024;
        v52 = v36;
        v53 = 2080;
        v54 = v55;
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: SoundDec_Encode failed result=%x. reset=%d inSamples=%d outBytes=%d payloadDescription=%s", buf, 0x48u);
      }
    }

    return 0;
  }

  self->_shouldReset = 0;
  if (outPacketDescription.mDataByteSize)
  {
    v16 = v36 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    mDataByteSize = v36;
  }

  else
  {
    mDataByteSize = outPacketDescription.mDataByteSize;
  }

  v18 = [(VCAudioPayload *)self isDTXEmptyPacket:mDataByteSize];
  buf[0] = 0;
  IsShortREDEnabled = SoundDec_IsShortREDEnabled(self->_encoder, buf);
  if (v18 || IsShortREDEnabled < 0 || buf[0] != 1)
  {
    goto LABEL_13;
  }

  ShortREDBytesPerFrame = SoundDec_GetShortREDBytesPerFrame(self->_encoder, a7);
  if (ShortREDBytesPerFrame < 0)
  {
    v29 = ShortREDBytesPerFrame;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v32 = [(VCAudioPayloadConfig *)self->_config payload];
      *v55 = 136316418;
      *&v55[4] = v30;
      *&v55[12] = 2080;
      *&v55[14] = "[VCAudioPayload encodeAudio:numInputSamples:outputBytes:numOutputBytes:shortREDBytes:]";
      *&v55[22] = 1024;
      *&v55[24] = 229;
      *&v55[28] = 1024;
      *&v55[30] = v32;
      *&v55[34] = 1024;
      *&v55[36] = v29;
      *&v55[40] = 1024;
      *&v55[42] = mDataByteSize;
      _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d Short RED is enabled for payload=%d, but SoundDec_GetShortREDBytesPerFrame returned result=%x and bytesActuallyEncoded=%d", v55, 0x2Eu);
    }

    return 0;
  }

  LODWORD(mDataByteSize) = mDataByteSize - *a7;
LABEL_13:
  if (v18)
  {
    return 0;
  }

  else
  {
    return mDataByteSize;
  }
}

- (void)resetEncoderWithSampleBuffer:(char *)a3 numBytes:(int)a4
{
  if ([(VCAudioPayloadConfig *)self->_config payload]== 13)
  {
    SoundDec_Reset(self->_encoder);
    encoder = self->_encoder;

    SoundDec_SetDTXPrimerSamples(encoder, a3, a4);
  }

  else if ((VCPayloadUtils_supportsInternalDTXForPayload([(VCAudioPayloadConfig *)self->_config payload]) & 1) == 0)
  {
    self->_shouldReset = 1;
  }
}

- (BOOL)setBitrate:(unsigned int)a3
{
  v5 = [VCPayloadUtils canSetBitrateForPayload:[(VCAudioPayloadConfig *)self->_config payload]];
  if (v5)
  {
    if ([(VCAudioPayloadConfig *)self->_config forcingBitrate])
    {
      goto LABEL_3;
    }

    v6 = [+[VCDefaults sharedInstance](VCDefaults forceAudioBitrate];
    if (v6 > 0)
    {
      a3 = v6;
    }

    encoder = self->_encoder;
    if (encoder && (SoundDec_SetBitrate(encoder, a3) & 0x80000000) != 0)
    {
LABEL_3:
      LOBYTE(v5) = 0;
    }

    else
    {
      self->_bitrate = a3;
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)setBandwidth:(int)a3
{
  v3 = *&a3;
  v5 = [VCPayloadUtils codecTypeForPayload:[(VCAudioPayloadConfig *)self->_config payload]];
  v6 = [VCPayloadUtils audioCodecBandwidthForVCAudioCodecBandwidth:v3];
  v7 = [VCPayloadUtils supportsCodecBandwidthUpdateForCodecType:v5];
  if (v7)
  {
    if (self->_bandwidth == v3)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      self->_bandwidth = v3;
      LOBYTE(v7) = SoundDec_SetEVSAudioCodecBandwidthUpdate(self->_encoder, v6) >= 0;
    }
  }

  return v7;
}

- (void)setCurrentDTXEnable:(BOOL)a3
{
  encoder = self->_encoder;
  v4 = a3 && [(VCAudioPayloadConfig *)self->_config isDTXEnabled];

  SoundDec_SetDTX(encoder, v4);
}

- (id)encoderDescription
{
  v2 = VCSoundDec_CopyDescription(*MEMORY[0x1E695E480], self->_encoder);

  return v2;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCAudioPayload;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"{ %@ config=%@ currentBitrate=%u encoder=%@ }", -[VCAudioPayload description](&v3, sel_description), self->_config, self->_bitrate, -[VCAudioPayload encoderDescription](self, "encoderDescription")];
}

- (void)setShortREDEnabled:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (VCPayloadUtils_SupportsShortREDForPayload([(VCAudioPayloadConfig *)self->_config payload]))
  {
    v5 = VCPayloadUtils_ShortREDBitrateForPayload([(VCAudioPayloadConfig *)self->_config payload], v3);
    self->_shortREDBitrate = v5;
    if (v3)
    {
      [VCPayloadUtils blockSizeForPayload:[(VCAudioPayloadConfig *)self->_config payload] sampleRate:[(VCAudioPayloadConfig *)self->_config codecSampleRate]];
      shortREDBitrate = self->_shortREDBitrate;
      *&v7 = v7;
      v8 = ((*&v7 * shortREDBitrate) * 0.125);
    }

    else
    {
      shortREDBitrate = v5;
      v8 = 0;
    }

    encoder = self->_encoder;
    if (encoder && (v10 = SoundDec_EnableShortRED(encoder, v3, v8, shortREDBitrate), v10 < 0))
    {
      v11 = v10;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v14 = [(VCAudioPayloadConfig *)self->_config payload];
          v15 = 136316162;
          v16 = v12;
          v17 = 2080;
          v18 = "[VCAudioPayload setShortREDEnabled:]";
          v19 = 1024;
          v20 = 344;
          v21 = 1024;
          v22 = v14;
          v23 = 1024;
          v24 = v11;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enable short RED for payload=%d. result=%x", &v15, 0x28u);
        }
      }
    }

    else
    {
      self->_shortREDBytesPerFrame = v8;
      self->_shortREDEnabled = v3;
    }
  }
}

- (BOOL)isSIDFrame:(const char *)a3 encodedBytes:(int)a4
{
  v4 = 0;
  v31 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    if ([(VCAudioPayloadConfig *)self->_config payload]!= 97 && [(VCAudioPayloadConfig *)self->_config payload]!= 98)
    {
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29[16] = v9;
      v29[17] = v9;
      v29[14] = v9;
      v29[15] = v9;
      v30 = 0xAAAAAAAAAAAAAAAALL;
      v29[13] = v9;
      v29[12] = v9;
      v29[11] = v9;
      v29[10] = v9;
      v29[9] = v9;
      v29[8] = v9;
      v29[7] = v9;
      v29[6] = v9;
      v29[5] = v9;
      v29[4] = v9;
      v29[3] = v9;
      v29[2] = v9;
      v29[0] = v9;
      v29[1] = v9;
      v27 = v9;
      v28 = v9;
      outPropertyData = a3;
      LODWORD(v27) = a4;
      SpeechCodecBundleData = SoundDec_GetSpeechCodecBundleData(self->_encoder, &outPropertyData);
      if (SpeechCodecBundleData < 0)
      {
        v11 = SpeechCodecBundleData;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [(VCAudioPayload *)v12 isSIDFrame:v11 encodedBytes:v13];
          }
        }
      }

      else
      {
        if (DWORD2(v28))
        {
          v4 = *(v29 + 20 * (DWORD2(v28) - 1));
          return v4 & 1;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v16 = 136316162;
            v17 = v14;
            v18 = 2080;
            v19 = "[VCAudioPayload isSIDFrame:encodedBytes:]";
            v20 = 1024;
            v21 = 370;
            v22 = 2048;
            v23 = a3;
            v24 = 1024;
            v25 = a4;
            _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d No packets in the bundle data encodedOutput=%p encodedBytes=%u", &v16, 0x2Cu);
          }
        }
      }

      v4 = 0;
      return v4 & 1;
    }

    v4 = a4 < 9;
  }

  return v4 & 1;
}

- (BOOL)setCodecModeRequest:(_VCAudioCodecModeChangeEvent *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  payload = a3->payload;
  if (payload != [(VCAudioPayloadConfig *)self->_config payload])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      v11 = a3->payload;
      v12 = [(VCAudioPayloadConfig *)self->_config payload];
      v14 = 136316162;
      v15 = v9;
      v16 = 2080;
      v17 = "[VCAudioPayload setCodecModeRequest:]";
      v18 = 1024;
      v19 = 290;
      v20 = 1024;
      v21 = v11;
      v22 = 1024;
      v23 = v12;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Payload=%d on codec mode change event does not match configuration with payload=%d", &v14, 0x28u);
    }

LABEL_8:
    LOBYTE(v8) = 0;
    return v8;
  }

  v6 = [VCPayloadUtils codecTypeForPayload:[(VCAudioPayloadConfig *)self->_config payload]];
  if (a3->codecRateMode == -1)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [VCPayloadUtils supportsCodecRateModesForCodecType:v6];
  if (v8)
  {
    LOBYTE(v8) = SoundDec_SetCMR(self->_encoder, [VCPayloadUtils bitrateForCodecType:v7 mode:a3->codecRateMode], [VCPayloadUtils audioCodecBandwidthForVCAudioCodecBandwidth:a3->codecBandwidth]) >= 0;
  }

  return v8;
}

- (void)initWithConfig:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 47;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Configuration is nil!", &v2, 0x1Cu);
}

- (void)createEncoderWithInputFormat:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d SoundDec_SetAACELDSBRInterval failed", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)createEncoderWithInputFormat:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d SoundDec_Create failed!", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)isSIDFrame:(os_log_t)log encodedBytes:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCAudioPayload isSIDFrame:encodedBytes:]";
  v7 = 1024;
  v8 = 373;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d unable to read bundle data hResult=%d", &v3, 0x22u);
}

@end