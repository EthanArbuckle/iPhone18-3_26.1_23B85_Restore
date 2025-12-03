@interface VCPayloadUtils
+ (BOOL)canBundleExternallyForPayload:(int)payload forBundlingScheme:(int)scheme operatingMode:(int)mode;
+ (BOOL)isAMRCodecModeSupported:(int)supported forBandwidth:(int)bandwidth;
+ (BOOL)isCodecModeSupported:(int)supported forBandwidth:(int)bandwidth withPayload:(int)payload;
+ (BOOL)isEVSCodecModeSupported:(int)supported forBandwidth:(int)bandwidth;
+ (BOOL)isFormatAACELDNonSBR48KHzStereo:(const AudioStreamBasicDescription *)stereo;
+ (BOOL)isPayloadSupportedInFaceTime:(int)time;
+ (BOOL)shouldEnablePacketSizeLimitForAudioFormat:(AudioStreamBasicDescription *)format;
+ (BOOL)skipBandWidthCheckForCodecRateModes:(int)modes supportedBitrates:(id)bitrates;
+ (double)blockSizeForPayload:(int)payload sampleRate:(unsigned int)rate;
+ (float)qualityForPayload:(int)payload forBitrate:(unsigned int)bitrate;
+ (id)allowedBitratesForPayload:(int)payload supportedBitrates:(id)bitrates supportedBandwidths:(id)bandwidths;
+ (id)supportedCodecModesForBandwidth:(int)bandwidth payload:(int)payload;
+ (int)audioCodecBandwidthForVCAudioCodecBandwidth:(int)bandwidth;
+ (int)codecBandwidthForPayload:(int)payload;
+ (int)codecRateModeForDesiredANBR:(unsigned int)r payload:(int)payload supportedBitrates:(id)bitrates supportedBandwidths:(id)bandwidths;
+ (int)payloadForCodecType:(int64_t)type;
+ (int)vcAudioCodecBandwidthForAudioCodecBandwidth:(int)bandwidth;
+ (int64_t)ctAudioCodecEVSBandwidthForAudioCodecBandwidth:(int)bandwidth;
+ (int64_t)ctAudioCodecEVSBitrateForBitrate:(unsigned int)bitrate;
+ (int64_t)ctAudioCodecTypeForMediaStreamCodec:(int64_t)codec;
+ (unsigned)audioCodecTypeForPayload:(int)payload;
+ (unsigned)bitrateForAMRCodecMode:(int)mode;
+ (unsigned)bitrateForAMRWBCodecMode:(int)mode;
+ (unsigned)bitrateForCodecType:(int64_t)type mode:(int)mode;
+ (unsigned)bitrateForEVSCodecMode:(int)mode;
+ (unsigned)codecSamplesPerFrameForCodecType:(int64_t)type secondsPerFrame:(double)frame;
+ (unsigned)codecSamplesPerFrameForPayload:(int)payload blockSize:(double)size sampleRate:(unsigned int)rate;
+ (unsigned)internalBundleFactorForPayload:(int)payload;
+ (unsigned)sampleRateForCodecBandwidth:(int)bandwidth;
+ (unsigned)sampleRateForCodecType:(int64_t)type;
+ (unsigned)sampleRateForPayload:(int)payload;
@end

@implementation VCPayloadUtils

+ (BOOL)isPayloadSupportedInFaceTime:(int)time
{
  result = 1;
  if ((time - 97) <= 0x19)
  {
    if (((1 << (time - 97)) & 0x3400F83) != 0)
    {
      return result;
    }

    if (time == 99)
    {
      return 0;
    }

    if (time == 113)
    {
      return VCFeatureFlagManager_UseAudioCodecACC24ForU1();
    }
  }

  if (time > 0x14 || ((1 << time) & 0x2301) == 0)
  {
    return 0;
  }

  return result;
}

+ (unsigned)sampleRateForCodecType:(int64_t)type
{
  if ((type - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return dword_1DBD47638[type - 1];
  }
}

+ (unsigned)sampleRateForPayload:(int)payload
{
  result = 8000;
  if (payload <= 12)
  {
    if (payload && payload != 8)
    {
      if (payload == 9)
      {
        return 16000;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    switch(payload)
    {
      case 'a':
      case 'c':
      case 'o':
      case 'z':
        return result;
      case 'b':
      case 'j':
      case 'k':
      case 'y':
        return 16000;
      case 'd':
      case 'f':
      case 'g':
      case 'm':
      case 'n':
      case 'r':
      case 's':
      case 't':
      case 'u':
      case 'v':
      case 'x':
        return 0;
      case 'e':
        return 48000;
      case 'h':
      case 'p':
      case 'q':
      case 'w':
        goto LABEL_3;
      case 'i':
        return 22050;
      case 'l':
        return 32000;
      default:
        if (payload != 13)
        {
          return 0;
        }

LABEL_3:
        result = 24000;
        break;
    }
  }

  return result;
}

+ (unsigned)sampleRateForCodecBandwidth:(int)bandwidth
{
  if ((bandwidth - 1) >= 3)
  {
    return 8000;
  }

  else
  {
    return 16000 * bandwidth;
  }
}

+ (unsigned)audioCodecTypeForPayload:(int)payload
{
  if (payload > 105)
  {
    if (payload > 110)
    {
      if (payload != 111)
      {
        if (payload == 113)
        {
          return 1633903462;
        }

        if (payload == 119)
        {
          return 1869641075;
        }

        goto LABEL_27;
      }
    }

    else if ((payload - 107) >= 2)
    {
      if (payload == 106)
      {
        return 1633772390;
      }

      goto LABEL_27;
    }

    return 1936029299;
  }

  result = 1935764850;
  if (payload <= 97)
  {
    switch(payload)
    {
      case 0:
        return 1970037111;
      case 8:
        return 1634492791;
      case 97:
        return result;
    }

    goto LABEL_27;
  }

  if (payload <= 100)
  {
    if (payload == 98)
    {
      return 1935767394;
    }

    if (payload == 99)
    {
      return 1953790320;
    }

    goto LABEL_27;
  }

  if (payload == 101 || payload == 104)
  {
    return 1633772390;
  }

LABEL_27:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[VCPayloadUtils audioCodecTypeForPayload:];
    }
  }

  return -1;
}

+ (double)blockSizeForPayload:(int)payload sampleRate:(unsigned int)rate
{
  v4 = rate == 48000 && payload == 119;
  result = 0.02;
  if (v4)
  {
    return 0.01;
  }

  return result;
}

+ (unsigned)codecSamplesPerFrameForCodecType:(int64_t)type secondsPerFrame:(double)frame
{
  v4 = 0.0;
  result = 1408;
  switch(type)
  {
    case 1:
    case 5:
    case 6:
    case 14:
    case 17:
      v6 = 8000.0;
      goto LABEL_8;
    case 2:
    case 3:
    case 15:
      v6 = 16000.0;
      goto LABEL_8;
    case 4:
      v6 = 32000.0;
      goto LABEL_8;
    case 7:
    case 8:
    case 16:
    case 18:
    case 20:
      return 480;
    case 9:
    case 11:
    case 12:
      v6 = 24000.0;
      goto LABEL_8;
    case 13:
      return result;
    case 19:
      v6 = 48000.0;
LABEL_8:
      v4 = frame * v6;
      break;
    default:
      return vcvtad_u64_f64(v4);
  }

  return vcvtad_u64_f64(v4);
}

+ (unsigned)codecSamplesPerFrameForPayload:(int)payload blockSize:(double)size sampleRate:(unsigned int)rate
{
  v5 = 480.0;
  if (payload > 106)
  {
    if (payload > 111)
    {
      if (payload <= 120)
      {
        if ((payload - 112) < 2)
        {
          return vcvtad_u64_f64(v5);
        }

        if (payload == 119)
        {
          [self opusSamplesPerFrameForSampleRate:*&rate blockSize:size];
          v5 = v6;
          return vcvtad_u64_f64(v5);
        }

        goto LABEL_27;
      }

      if (payload == 121)
      {
        goto LABEL_30;
      }

      if (payload != 122)
      {
LABEL_27:
        v5 = 0.0;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            +[VCPayloadUtils codecSamplesPerFrameForPayload:blockSize:sampleRate:];
          }
        }

        return vcvtad_u64_f64(v5);
      }

LABEL_24:
      v7 = 8000.0;
LABEL_34:
      v5 = size * v7;
      return vcvtad_u64_f64(v5);
    }

    if (payload != 107)
    {
      if (payload == 108)
      {
        v7 = 32000.0;
        goto LABEL_34;
      }

      if (payload != 111)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_30:
    v7 = 16000.0;
    goto LABEL_34;
  }

  if (payload <= 97)
  {
    if (payload <= 8)
    {
      if (payload && payload != 8)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    if (payload != 9)
    {
      if (payload == 13)
      {
        v7 = 24000.0;
        goto LABEL_34;
      }

      if (payload != 97)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (payload > 103)
  {
    return vcvtad_u64_f64(v5);
  }

  if (payload == 98)
  {
    goto LABEL_30;
  }

  if (payload == 99)
  {
    v5 = 1408.0;
    return vcvtad_u64_f64(v5);
  }

  if (payload != 101)
  {
    goto LABEL_27;
  }

  return vcvtad_u64_f64(v5);
}

+ (int)codecBandwidthForPayload:(int)payload
{
  result = 0;
  if (payload > 106)
  {
    if (payload == 111)
    {
      return result;
    }

    if (payload != 107)
    {
      return 2;
    }
  }

  else
  {
    if (payload == 97)
    {
      return result;
    }

    if (payload != 98)
    {
      return 2;
    }
  }

  return 1;
}

+ (id)supportedCodecModesForBandwidth:(int)bandwidth payload:(int)payload
{
  if (payload <= 106)
  {
    if (payload != 97)
    {
      if (payload == 98)
      {
        return [self codecModesForAMR16kHz];
      }

      return 0;
    }

    return [self codecModesForAMR8kHz];
  }

  else
  {
    if ((payload - 107) >= 2 && payload != 111)
    {
      return 0;
    }

    switch(bandwidth)
    {
      case 2:
        return [self codecModesForEVS32kHz];
      case 1:
        return [self codecModesForEVS16kHz];
      case 0:
        return [self codecModesForEVS8kHz];
      default:
        return 0;
    }
  }
}

+ (id)allowedBitratesForPayload:(int)payload supportedBitrates:(id)bitrates supportedBandwidths:(id)bandwidths
{
  v7 = *&payload;
  v23 = *MEMORY[0x1E69E9840];
  v9 = [self codecBandwidthForPayload:?];
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(self, "supportedCodecModesForBandwidth:payload:", v9, v7)}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [bandwidths countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(bandwidths);
        }

        if (v9 != [*(*(&v19 + 1) + 8 * i) integerValue])
        {
          [v10 addObjectsFromArray:{objc_msgSend(self, "supportedCodecModesForBandwidth:payload:")}];
        }
      }

      v12 = [bandwidths countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v12);
  }

  if (!v10)
  {
    [VCPayloadUtils allowedBitratesForPayload:? supportedBitrates:? supportedBandwidths:?];
LABEL_15:
    v15 = v17;
    goto LABEL_12;
  }

  [v10 intersectSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", bitrates)}];
  v15 = [objc_msgSend(objc_msgSend(v10 "allObjects")];
  if (!v15)
  {
    [VCPayloadUtils allowedBitratesForPayload:? supportedBitrates:? supportedBandwidths:?];
    goto LABEL_15;
  }

LABEL_12:

  return v15;
}

+ (int)codecRateModeForDesiredANBR:(unsigned int)r payload:(int)payload supportedBitrates:(id)bitrates supportedBandwidths:(id)bandwidths
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [self allowedBitratesForPayload:*&payload supportedBitrates:bitrates supportedBandwidths:bandwidths];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 objectAtIndex:0];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
LABEL_4:
      v14 = 0;
      v15 = v10;
      while (1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v10 = *(*(&v19 + 1) + 8 * v14);
        if ([v10 unsignedIntValue] > r)
        {
          break;
        }

        ++v14;
        v15 = v10;
        if (v12 == v14)
        {
          v12 = [v9 countByEnumeratingWithState:&v19 objects:v18 count:16];
          v15 = v10;
          if (v12)
          {
            goto LABEL_4;
          }

          return VCPayloadUtils_AudioCodecRateModeForBitrate(payload, [v15 unsignedIntValue]);
        }
      }
    }

    else
    {
      v15 = v10;
    }

    return VCPayloadUtils_AudioCodecRateModeForBitrate(payload, [v15 unsignedIntValue]);
  }

  else
  {
    [VCPayloadUtils codecRateModeForDesiredANBR:? payload:? supportedBitrates:? supportedBandwidths:?];
    return v17;
  }
}

+ (BOOL)isEVSCodecModeSupported:(int)supported forBandwidth:(int)bandwidth
{
  v4 = (supported - 13) < 9;
  v5 = (supported - 15) < 7;
  if (bandwidth != 3)
  {
    v5 = 0;
  }

  if (bandwidth != 2)
  {
    v4 = v5;
  }

  v6 = (supported - 10) < 0xC;
  if (bandwidth != 1)
  {
    v6 = 0;
  }

  if (!bandwidth)
  {
    v6 = (supported - 10) < 7;
  }

  if (bandwidth <= 1)
  {
    v4 = v6;
  }

  return supported < 9 || v4;
}

+ (BOOL)isAMRCodecModeSupported:(int)supported forBandwidth:(int)bandwidth
{
  v4 = supported < 8;
  if (bandwidth)
  {
    v4 = 0;
  }

  if (bandwidth == 1)
  {
    return supported < 9;
  }

  else
  {
    return v4;
  }
}

+ (BOOL)isCodecModeSupported:(int)supported forBandwidth:(int)bandwidth withPayload:(int)payload
{
  if ((payload - 97) > 0xE)
  {
    return 0;
  }

  v5 = 1 << (payload - 97);
  if ((v5 & 0x4C00) != 0)
  {
    return [self isEVSCodecModeSupported:*&supported forBandwidth:*&bandwidth];
  }

  if ((v5 & 3) != 0)
  {
    return [self isAMRCodecModeSupported:*&supported forBandwidth:*&bandwidth];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isFormatAACELDNonSBR48KHzStereo:(const AudioStreamBasicDescription *)stereo
{
  v5 = *MEMORY[0x1E69E9840];
  if (stereo)
  {
    return stereo->mFormatID == 1633772389 && stereo->mSampleRate == 48000 && stereo->mChannelsPerFrame == 2;
  }

  [VCPayloadUtils isFormatAACELDNonSBR48KHzStereo:?];
  return v4;
}

+ (BOOL)skipBandWidthCheckForCodecRateModes:(int)modes supportedBitrates:(id)bitrates
{
  v22 = *MEMORY[0x1E69E9840];
  LODWORD(v5) = [self isEVSPayload:*&modes];
  if (!v5)
  {
    return v5;
  }

  v5 = [bitrates count];
  if (!v5)
  {
    return v5;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [bitrates countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v6)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  v7 = v6;
  v8 = *v19;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(bitrates);
      }

      unsignedIntValue = [*(*(&v18 + 1) + 8 * i) unsignedIntValue];
      if (unsignedIntValue <= 24399)
      {
        if (unsignedIntValue > 9599)
        {
          v11 = unsignedIntValue == 9600 || unsignedIntValue == 13200;
          v12 = 16400;
        }

        else
        {
          v11 = unsignedIntValue == 5900 || unsignedIntValue == 7200;
          v12 = 8000;
        }

        goto LABEL_23;
      }

      if (unsignedIntValue <= 63999)
      {
        v11 = unsignedIntValue == 24400 || unsignedIntValue == 32000;
        v12 = 48000;
LABEL_23:
        if (v11 || unsignedIntValue == v12)
        {
          goto LABEL_39;
        }

        continue;
      }

      if (unsignedIntValue == 64000 || unsignedIntValue == 96000 || unsignedIntValue == 128000)
      {
LABEL_39:
        LOBYTE(v5) = 0;
        return v5;
      }
    }

    v7 = [bitrates countByEnumeratingWithState:&v18 objects:v17 count:16];
    LOBYTE(v5) = 1;
    if (v7)
    {
      continue;
    }

    return v5;
  }
}

+ (BOOL)canBundleExternallyForPayload:(int)payload forBundlingScheme:(int)scheme operatingMode:(int)mode
{
  if (scheme == 2)
  {
    v5 = 0x29u >> (payload - 101);
    if ((payload - 101) > 5)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    if (scheme != 1 || (payload - 98) > 0x15)
    {
      goto LABEL_7;
    }

    LOBYTE(v5) = 1;
    if (((1 << (payload - 98)) & 0x20C5C8) == 0)
    {
      if (payload == 98)
      {
        LOBYTE(v5) = mode == 6;
        return v5 & 1;
      }

LABEL_7:
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

+ (unsigned)internalBundleFactorForPayload:(int)payload
{
  if ((payload - 121) >= 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

+ (BOOL)shouldEnablePacketSizeLimitForAudioFormat:(AudioStreamBasicDescription *)format
{
  v6 = *MEMORY[0x1E69E9840];
  if (format)
  {
    if (format->mFormatID == 1869641075 || (v3 = [VCPayloadUtils isFormatAACELDNonSBR48KHzStereo:?]))
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    [VCPayloadUtils shouldEnablePacketSizeLimitForAudioFormat:?];
    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (float)qualityForPayload:(int)payload forBitrate:(unsigned int)bitrate
{
  if (payload <= 103)
  {
    if (payload != 97)
    {
      if (payload == 98)
      {
        result = 0.5;
        if (bitrate >> 6 < 0x7D)
        {
          return result;
        }

        result = 0.75;
        if (bitrate < 0x2EE1)
        {
          return result;
        }

        return 1.0;
      }

      if (payload != 101)
      {
        return 1.0;
      }

      result = 0.5;
      if (bitrate >> 4 < 0x753)
      {
        return result;
      }

      v6 = 48001;
      goto LABEL_43;
    }

    v7 = bitrate >> 5 > 0x176;
    result = 0.5;
    v8 = 0.0;
  }

  else
  {
    v4 = payload - 107;
    if ((payload - 107) > 0xC)
    {
LABEL_30:
      if (payload != 104)
      {
        if (payload == 106)
        {
          result = 0.5;
          if (bitrate > 0x5DC0)
          {
            return result;
          }

          if (bitrate <= 0x4E20)
          {
            if (bitrate == 20000)
            {
              return 0.8;
            }

            return 1.0;
          }

          return 0.66;
        }

        return 1.0;
      }

      result = 0.5;
      if (bitrate >> 5 < 0x271)
      {
        return result;
      }

      v6 = 24001;
LABEL_43:
      if (bitrate < v6)
      {
        return 0.66;
      }

      return 1.0;
    }

    if (((1 << v4) & 0x13) == 0)
    {
      if (((1 << v4) & 0x60) != 0)
      {
        result = 0.0;
        if (bitrate >> 3 <= 0xC34)
        {
          if (bitrate >> 5 <= 0x176)
          {
            if (bitrate >> 3 <= 0x464)
            {
              return flt_1DBD47610[bitrate >> 6 > 0x7C];
            }

            else
            {
              return 0.86;
            }
          }

          else
          {
            return 0.94;
          }
        }

        return result;
      }

      if (payload == 119)
      {
        result = 0.0;
        if (bitrate >> 6 <= 0x176)
        {
          result = 0.75;
          if (bitrate >> 5 <= 0x270)
          {
            result = 0.5;
            if (bitrate <= 0x3E80)
            {
              result = 0.33;
              if (bitrate >> 5 <= 0x176)
              {
                return 0.0;
              }
            }
          }
        }

        return result;
      }

      goto LABEL_30;
    }

    result = 0.0;
    if (bitrate >> 3 > 0xC34)
    {
      return result;
    }

    if (bitrate >> 5 > 0x176)
    {
      return 0.93;
    }

    if (bitrate >> 3 > 0x464)
    {
      return 0.85;
    }

    v7 = bitrate >> 6 > 0x7C;
    result = 0.4;
    v8 = 0.75;
  }

  if (v7)
  {
    return v8;
  }

  return result;
}

+ (int)payloadForCodecType:(int64_t)type
{
  typeCopy = type;
  v15 = *MEMORY[0x1E69E9840];
  if (type > 100)
  {
    if (type > 199)
    {
      switch(type)
      {
        case 200:
          return 109;
        case 300:
          return 110;
        case 301:
          return 124;
      }
    }

    else
    {
      if ((type - 102) < 2)
      {
        return 100;
      }

      if (type == 101)
      {
        return 126;
      }
    }

LABEL_17:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "+[VCPayloadUtils payloadForCodecType:]";
        v11 = 1024;
        v12 = 761;
        v13 = 1024;
        v14 = typeCopy;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported codec type %d", &v7, 0x22u);
      }
    }

    return 128;
  }

  else
  {
    result = 0;
    switch(type)
    {
      case 1:
        result = 97;
        break;
      case 2:
        result = 98;
        break;
      case 3:
        result = 107;
        break;
      case 4:
        result = 108;
        break;
      case 5:
        return result;
      case 6:
        result = 8;
        break;
      case 7:
        result = 106;
        break;
      case 8:
        result = 104;
        break;
      case 9:
        result = 13;
        break;
      case 10:
        result = 117;
        break;
      case 11:
      case 12:
      case 19:
        result = 119;
        break;
      case 13:
        result = 99;
        break;
      case 14:
        result = 122;
        break;
      case 15:
        result = 121;
        break;
      case 16:
        result = 101;
        break;
      case 17:
        result = 111;
        break;
      case 18:
        result = 112;
        break;
      case 20:
        result = 113;
        break;
      default:
        if (type != 100)
        {
          goto LABEL_17;
        }

        result = 123;
        break;
    }
  }

  return result;
}

+ (unsigned)bitrateForCodecType:(int64_t)type mode:(int)mode
{
  if (type > 10)
  {
    if (type > 15)
    {
      switch(type)
      {
        case 16:
          return 64000;
        case 17:
LABEL_11:

          return [VCPayloadUtils bitrateForEVSCodecMode:*&mode];
        case 19:
          return 48000;
      }

      return 0;
    }

    if (type != 11)
    {
      if (type == 12)
      {
        return 24000;
      }

      return 0;
    }

    if (VCDefaults_GetBoolValueForKey(@"useStandardsBasedOpusCodec", 0))
    {
      return 48000;
    }

    else
    {
      return 32000;
    }
  }

  else
  {
    if (type > 2)
    {
      if ((type - 3) >= 2)
      {
        if (type != 8)
        {
          return 0;
        }

        return 48000;
      }

      goto LABEL_11;
    }

    if (type != 1)
    {
      if (type == 2)
      {

        return [VCPayloadUtils bitrateForAMRWBCodecMode:*&mode];
      }

      return 0;
    }

    return [VCPayloadUtils bitrateForAMRCodecMode:*&mode];
  }
}

+ (unsigned)bitrateForAMRCodecMode:(int)mode
{
  v15 = *MEMORY[0x1E69E9840];
  if (mode < 8)
  {
    return dword_1DBD47688[mode];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = 136315906;
    v8 = v5;
    v9 = 2080;
    v10 = "+[VCPayloadUtils bitrateForAMRCodecMode:]";
    v11 = 1024;
    v12 = 833;
    v13 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported mode %d", &v7, 0x22u);
  }

  return 0;
}

+ (unsigned)bitrateForAMRWBCodecMode:(int)mode
{
  v15 = *MEMORY[0x1E69E9840];
  if (mode < 9)
  {
    return dword_1DBD476A8[mode];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = 136315906;
    v8 = v5;
    v9 = 2080;
    v10 = "+[VCPayloadUtils bitrateForAMRWBCodecMode:]";
    v11 = 1024;
    v12 = 859;
    v13 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported mode %d", &v7, 0x22u);
  }

  return 0;
}

+ (unsigned)bitrateForEVSCodecMode:(int)mode
{
  if ((mode - 10) >= 0xC)
  {
    return [VCPayloadUtils bitrateForAMRWBCodecMode:?];
  }

  else
  {
    return dword_1DBD476CC[mode - 10];
  }
}

+ (int64_t)ctAudioCodecTypeForMediaStreamCodec:(int64_t)codec
{
  if (codec <= 2)
  {
    if (codec == 1)
    {
      return 0;
    }

    if (codec == 2)
    {
      return 1;
    }
  }

  else if ((codec - 3) < 2 || codec == 17)
  {
    return 2;
  }

  return 5;
}

+ (int64_t)ctAudioCodecEVSBandwidthForAudioCodecBandwidth:(int)bandwidth
{
  if (bandwidth >= 3)
  {
    return 3;
  }

  else
  {
    return bandwidth;
  }
}

+ (int64_t)ctAudioCodecEVSBitrateForBitrate:(unsigned int)bitrate
{
  if (bitrate <= 24399)
  {
    v3 = 9599;
    v11 = 5;
    if (bitrate != 16400)
    {
      v11 = 0;
    }

    if (bitrate == 13200)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    if (bitrate == 9600)
    {
      v6 = 3;
    }

    else
    {
      v6 = v12;
    }

    v7 = 7200;
    v8 = 1;
    v10 = 2;
    if (bitrate != 8000)
    {
      v10 = 0;
    }
  }

  else
  {
    v3 = 63999;
    v4 = 11;
    if (bitrate != 128000)
    {
      v4 = 0;
    }

    if (bitrate == 96000)
    {
      v5 = 10;
    }

    else
    {
      v5 = v4;
    }

    if (bitrate == 64000)
    {
      v6 = 9;
    }

    else
    {
      v6 = v5;
    }

    v7 = 24400;
    v8 = 6;
    v9 = 8;
    if (bitrate != 48000)
    {
      v9 = 0;
    }

    if (bitrate == 32000)
    {
      v10 = 7;
    }

    else
    {
      v10 = v9;
    }
  }

  if (bitrate == v7)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (bitrate <= v3)
  {
    return v13;
  }

  else
  {
    return v6;
  }
}

+ (int)vcAudioCodecBandwidthForAudioCodecBandwidth:(int)bandwidth
{
  if ((bandwidth - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return bandwidth;
  }
}

+ (int)audioCodecBandwidthForVCAudioCodecBandwidth:(int)bandwidth
{
  if ((bandwidth - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return bandwidth;
  }
}

+ (void)audioCodecTypeForPayload:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

+ (void)codecSamplesPerFrameForPayload:blockSize:sampleRate:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)allowedBitratesForPayload:(void *)a1 supportedBitrates:supportedBandwidths:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate filteredAndSortedBitrates", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

+ (void)allowedBitratesForPayload:(void *)a1 supportedBitrates:supportedBandwidths:.cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate standardsBitrateSet", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

+ (void)codecRateModeForDesiredANBR:(_DWORD *)a1 payload:supportedBitrates:supportedBandwidths:.cold.1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate primaryBitrates", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

+ (void)isFormatAACELDNonSBR48KHzStereo:(_BYTE *)a1 .cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Audio format cannot be nil", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

+ (void)shouldEnablePacketSizeLimitForAudioFormat:(_BYTE *)a1 .cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Audio format cannot be nil", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

@end