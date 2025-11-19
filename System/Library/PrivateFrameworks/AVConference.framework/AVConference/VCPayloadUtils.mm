@interface VCPayloadUtils
+ (BOOL)canBundleExternallyForPayload:(int)a3 forBundlingScheme:(int)a4 operatingMode:(int)a5;
+ (BOOL)isAMRCodecModeSupported:(int)a3 forBandwidth:(int)a4;
+ (BOOL)isCodecModeSupported:(int)a3 forBandwidth:(int)a4 withPayload:(int)a5;
+ (BOOL)isEVSCodecModeSupported:(int)a3 forBandwidth:(int)a4;
+ (BOOL)isFormatAACELDNonSBR48KHzStereo:(const AudioStreamBasicDescription *)a3;
+ (BOOL)isPayloadSupportedInFaceTime:(int)a3;
+ (BOOL)shouldEnablePacketSizeLimitForAudioFormat:(AudioStreamBasicDescription *)a3;
+ (BOOL)skipBandWidthCheckForCodecRateModes:(int)a3 supportedBitrates:(id)a4;
+ (double)blockSizeForPayload:(int)a3 sampleRate:(unsigned int)a4;
+ (float)qualityForPayload:(int)a3 forBitrate:(unsigned int)a4;
+ (id)allowedBitratesForPayload:(int)a3 supportedBitrates:(id)a4 supportedBandwidths:(id)a5;
+ (id)supportedCodecModesForBandwidth:(int)a3 payload:(int)a4;
+ (int)audioCodecBandwidthForVCAudioCodecBandwidth:(int)a3;
+ (int)codecBandwidthForPayload:(int)a3;
+ (int)codecRateModeForDesiredANBR:(unsigned int)a3 payload:(int)a4 supportedBitrates:(id)a5 supportedBandwidths:(id)a6;
+ (int)payloadForCodecType:(int64_t)a3;
+ (int)vcAudioCodecBandwidthForAudioCodecBandwidth:(int)a3;
+ (int64_t)ctAudioCodecEVSBandwidthForAudioCodecBandwidth:(int)a3;
+ (int64_t)ctAudioCodecEVSBitrateForBitrate:(unsigned int)a3;
+ (int64_t)ctAudioCodecTypeForMediaStreamCodec:(int64_t)a3;
+ (unsigned)audioCodecTypeForPayload:(int)a3;
+ (unsigned)bitrateForAMRCodecMode:(int)a3;
+ (unsigned)bitrateForAMRWBCodecMode:(int)a3;
+ (unsigned)bitrateForCodecType:(int64_t)a3 mode:(int)a4;
+ (unsigned)bitrateForEVSCodecMode:(int)a3;
+ (unsigned)codecSamplesPerFrameForCodecType:(int64_t)a3 secondsPerFrame:(double)a4;
+ (unsigned)codecSamplesPerFrameForPayload:(int)a3 blockSize:(double)a4 sampleRate:(unsigned int)a5;
+ (unsigned)internalBundleFactorForPayload:(int)a3;
+ (unsigned)sampleRateForCodecBandwidth:(int)a3;
+ (unsigned)sampleRateForCodecType:(int64_t)a3;
+ (unsigned)sampleRateForPayload:(int)a3;
@end

@implementation VCPayloadUtils

+ (BOOL)isPayloadSupportedInFaceTime:(int)a3
{
  result = 1;
  if ((a3 - 97) <= 0x19)
  {
    if (((1 << (a3 - 97)) & 0x3400F83) != 0)
    {
      return result;
    }

    if (a3 == 99)
    {
      return 0;
    }

    if (a3 == 113)
    {
      return VCFeatureFlagManager_UseAudioCodecACC24ForU1();
    }
  }

  if (a3 > 0x14 || ((1 << a3) & 0x2301) == 0)
  {
    return 0;
  }

  return result;
}

+ (unsigned)sampleRateForCodecType:(int64_t)a3
{
  if ((a3 - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return dword_1DBD47638[a3 - 1];
  }
}

+ (unsigned)sampleRateForPayload:(int)a3
{
  result = 8000;
  if (a3 <= 12)
  {
    if (a3 && a3 != 8)
    {
      if (a3 == 9)
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
    switch(a3)
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
        if (a3 != 13)
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

+ (unsigned)sampleRateForCodecBandwidth:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 8000;
  }

  else
  {
    return 16000 * a3;
  }
}

+ (unsigned)audioCodecTypeForPayload:(int)a3
{
  if (a3 > 105)
  {
    if (a3 > 110)
    {
      if (a3 != 111)
      {
        if (a3 == 113)
        {
          return 1633903462;
        }

        if (a3 == 119)
        {
          return 1869641075;
        }

        goto LABEL_27;
      }
    }

    else if ((a3 - 107) >= 2)
    {
      if (a3 == 106)
      {
        return 1633772390;
      }

      goto LABEL_27;
    }

    return 1936029299;
  }

  result = 1935764850;
  if (a3 <= 97)
  {
    switch(a3)
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

  if (a3 <= 100)
  {
    if (a3 == 98)
    {
      return 1935767394;
    }

    if (a3 == 99)
    {
      return 1953790320;
    }

    goto LABEL_27;
  }

  if (a3 == 101 || a3 == 104)
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

+ (double)blockSizeForPayload:(int)a3 sampleRate:(unsigned int)a4
{
  v4 = a4 == 48000 && a3 == 119;
  result = 0.02;
  if (v4)
  {
    return 0.01;
  }

  return result;
}

+ (unsigned)codecSamplesPerFrameForCodecType:(int64_t)a3 secondsPerFrame:(double)a4
{
  v4 = 0.0;
  result = 1408;
  switch(a3)
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
      v4 = a4 * v6;
      break;
    default:
      return vcvtad_u64_f64(v4);
  }

  return vcvtad_u64_f64(v4);
}

+ (unsigned)codecSamplesPerFrameForPayload:(int)a3 blockSize:(double)a4 sampleRate:(unsigned int)a5
{
  v5 = 480.0;
  if (a3 > 106)
  {
    if (a3 > 111)
    {
      if (a3 <= 120)
      {
        if ((a3 - 112) < 2)
        {
          return vcvtad_u64_f64(v5);
        }

        if (a3 == 119)
        {
          [a1 opusSamplesPerFrameForSampleRate:*&a5 blockSize:a4];
          v5 = v6;
          return vcvtad_u64_f64(v5);
        }

        goto LABEL_27;
      }

      if (a3 == 121)
      {
        goto LABEL_30;
      }

      if (a3 != 122)
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
      v5 = a4 * v7;
      return vcvtad_u64_f64(v5);
    }

    if (a3 != 107)
    {
      if (a3 == 108)
      {
        v7 = 32000.0;
        goto LABEL_34;
      }

      if (a3 != 111)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_30:
    v7 = 16000.0;
    goto LABEL_34;
  }

  if (a3 <= 97)
  {
    if (a3 <= 8)
    {
      if (a3 && a3 != 8)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    if (a3 != 9)
    {
      if (a3 == 13)
      {
        v7 = 24000.0;
        goto LABEL_34;
      }

      if (a3 != 97)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (a3 > 103)
  {
    return vcvtad_u64_f64(v5);
  }

  if (a3 == 98)
  {
    goto LABEL_30;
  }

  if (a3 == 99)
  {
    v5 = 1408.0;
    return vcvtad_u64_f64(v5);
  }

  if (a3 != 101)
  {
    goto LABEL_27;
  }

  return vcvtad_u64_f64(v5);
}

+ (int)codecBandwidthForPayload:(int)a3
{
  result = 0;
  if (a3 > 106)
  {
    if (a3 == 111)
    {
      return result;
    }

    if (a3 != 107)
    {
      return 2;
    }
  }

  else
  {
    if (a3 == 97)
    {
      return result;
    }

    if (a3 != 98)
    {
      return 2;
    }
  }

  return 1;
}

+ (id)supportedCodecModesForBandwidth:(int)a3 payload:(int)a4
{
  if (a4 <= 106)
  {
    if (a4 != 97)
    {
      if (a4 == 98)
      {
        return [a1 codecModesForAMR16kHz];
      }

      return 0;
    }

    return [a1 codecModesForAMR8kHz];
  }

  else
  {
    if ((a4 - 107) >= 2 && a4 != 111)
    {
      return 0;
    }

    switch(a3)
    {
      case 2:
        return [a1 codecModesForEVS32kHz];
      case 1:
        return [a1 codecModesForEVS16kHz];
      case 0:
        return [a1 codecModesForEVS8kHz];
      default:
        return 0;
    }
  }
}

+ (id)allowedBitratesForPayload:(int)a3 supportedBitrates:(id)a4 supportedBandwidths:(id)a5
{
  v7 = *&a3;
  v23 = *MEMORY[0x1E69E9840];
  v9 = [a1 codecBandwidthForPayload:?];
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(a1, "supportedCodecModesForBandwidth:payload:", v9, v7)}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [a5 countByEnumeratingWithState:&v19 objects:v18 count:16];
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
          objc_enumerationMutation(a5);
        }

        if (v9 != [*(*(&v19 + 1) + 8 * i) integerValue])
        {
          [v10 addObjectsFromArray:{objc_msgSend(a1, "supportedCodecModesForBandwidth:payload:")}];
        }
      }

      v12 = [a5 countByEnumeratingWithState:&v19 objects:v18 count:16];
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

  [v10 intersectSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", a4)}];
  v15 = [objc_msgSend(objc_msgSend(v10 "allObjects")];
  if (!v15)
  {
    [VCPayloadUtils allowedBitratesForPayload:? supportedBitrates:? supportedBandwidths:?];
    goto LABEL_15;
  }

LABEL_12:

  return v15;
}

+ (int)codecRateModeForDesiredANBR:(unsigned int)a3 payload:(int)a4 supportedBitrates:(id)a5 supportedBandwidths:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [a1 allowedBitratesForPayload:*&a4 supportedBitrates:a5 supportedBandwidths:a6];
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
        if ([v10 unsignedIntValue] > a3)
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

          return VCPayloadUtils_AudioCodecRateModeForBitrate(a4, [v15 unsignedIntValue]);
        }
      }
    }

    else
    {
      v15 = v10;
    }

    return VCPayloadUtils_AudioCodecRateModeForBitrate(a4, [v15 unsignedIntValue]);
  }

  else
  {
    [VCPayloadUtils codecRateModeForDesiredANBR:? payload:? supportedBitrates:? supportedBandwidths:?];
    return v17;
  }
}

+ (BOOL)isEVSCodecModeSupported:(int)a3 forBandwidth:(int)a4
{
  v4 = (a3 - 13) < 9;
  v5 = (a3 - 15) < 7;
  if (a4 != 3)
  {
    v5 = 0;
  }

  if (a4 != 2)
  {
    v4 = v5;
  }

  v6 = (a3 - 10) < 0xC;
  if (a4 != 1)
  {
    v6 = 0;
  }

  if (!a4)
  {
    v6 = (a3 - 10) < 7;
  }

  if (a4 <= 1)
  {
    v4 = v6;
  }

  return a3 < 9 || v4;
}

+ (BOOL)isAMRCodecModeSupported:(int)a3 forBandwidth:(int)a4
{
  v4 = a3 < 8;
  if (a4)
  {
    v4 = 0;
  }

  if (a4 == 1)
  {
    return a3 < 9;
  }

  else
  {
    return v4;
  }
}

+ (BOOL)isCodecModeSupported:(int)a3 forBandwidth:(int)a4 withPayload:(int)a5
{
  if ((a5 - 97) > 0xE)
  {
    return 0;
  }

  v5 = 1 << (a5 - 97);
  if ((v5 & 0x4C00) != 0)
  {
    return [a1 isEVSCodecModeSupported:*&a3 forBandwidth:*&a4];
  }

  if ((v5 & 3) != 0)
  {
    return [a1 isAMRCodecModeSupported:*&a3 forBandwidth:*&a4];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isFormatAACELDNonSBR48KHzStereo:(const AudioStreamBasicDescription *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return a3->mFormatID == 1633772389 && a3->mSampleRate == 48000 && a3->mChannelsPerFrame == 2;
  }

  [VCPayloadUtils isFormatAACELDNonSBR48KHzStereo:?];
  return v4;
}

+ (BOOL)skipBandWidthCheckForCodecRateModes:(int)a3 supportedBitrates:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  LODWORD(v5) = [a1 isEVSPayload:*&a3];
  if (!v5)
  {
    return v5;
  }

  v5 = [a4 count];
  if (!v5)
  {
    return v5;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v18 objects:v17 count:16];
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
        objc_enumerationMutation(a4);
      }

      v10 = [*(*(&v18 + 1) + 8 * i) unsignedIntValue];
      if (v10 <= 24399)
      {
        if (v10 > 9599)
        {
          v11 = v10 == 9600 || v10 == 13200;
          v12 = 16400;
        }

        else
        {
          v11 = v10 == 5900 || v10 == 7200;
          v12 = 8000;
        }

        goto LABEL_23;
      }

      if (v10 <= 63999)
      {
        v11 = v10 == 24400 || v10 == 32000;
        v12 = 48000;
LABEL_23:
        if (v11 || v10 == v12)
        {
          goto LABEL_39;
        }

        continue;
      }

      if (v10 == 64000 || v10 == 96000 || v10 == 128000)
      {
LABEL_39:
        LOBYTE(v5) = 0;
        return v5;
      }
    }

    v7 = [a4 countByEnumeratingWithState:&v18 objects:v17 count:16];
    LOBYTE(v5) = 1;
    if (v7)
    {
      continue;
    }

    return v5;
  }
}

+ (BOOL)canBundleExternallyForPayload:(int)a3 forBundlingScheme:(int)a4 operatingMode:(int)a5
{
  if (a4 == 2)
  {
    v5 = 0x29u >> (a3 - 101);
    if ((a3 - 101) > 5)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    if (a4 != 1 || (a3 - 98) > 0x15)
    {
      goto LABEL_7;
    }

    LOBYTE(v5) = 1;
    if (((1 << (a3 - 98)) & 0x20C5C8) == 0)
    {
      if (a3 == 98)
      {
        LOBYTE(v5) = a5 == 6;
        return v5 & 1;
      }

LABEL_7:
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

+ (unsigned)internalBundleFactorForPayload:(int)a3
{
  if ((a3 - 121) >= 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

+ (BOOL)shouldEnablePacketSizeLimitForAudioFormat:(AudioStreamBasicDescription *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3->mFormatID == 1869641075 || (v3 = [VCPayloadUtils isFormatAACELDNonSBR48KHzStereo:?]))
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

+ (float)qualityForPayload:(int)a3 forBitrate:(unsigned int)a4
{
  if (a3 <= 103)
  {
    if (a3 != 97)
    {
      if (a3 == 98)
      {
        result = 0.5;
        if (a4 >> 6 < 0x7D)
        {
          return result;
        }

        result = 0.75;
        if (a4 < 0x2EE1)
        {
          return result;
        }

        return 1.0;
      }

      if (a3 != 101)
      {
        return 1.0;
      }

      result = 0.5;
      if (a4 >> 4 < 0x753)
      {
        return result;
      }

      v6 = 48001;
      goto LABEL_43;
    }

    v7 = a4 >> 5 > 0x176;
    result = 0.5;
    v8 = 0.0;
  }

  else
  {
    v4 = a3 - 107;
    if ((a3 - 107) > 0xC)
    {
LABEL_30:
      if (a3 != 104)
      {
        if (a3 == 106)
        {
          result = 0.5;
          if (a4 > 0x5DC0)
          {
            return result;
          }

          if (a4 <= 0x4E20)
          {
            if (a4 == 20000)
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
      if (a4 >> 5 < 0x271)
      {
        return result;
      }

      v6 = 24001;
LABEL_43:
      if (a4 < v6)
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
        if (a4 >> 3 <= 0xC34)
        {
          if (a4 >> 5 <= 0x176)
          {
            if (a4 >> 3 <= 0x464)
            {
              return flt_1DBD47610[a4 >> 6 > 0x7C];
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

      if (a3 == 119)
      {
        result = 0.0;
        if (a4 >> 6 <= 0x176)
        {
          result = 0.75;
          if (a4 >> 5 <= 0x270)
          {
            result = 0.5;
            if (a4 <= 0x3E80)
            {
              result = 0.33;
              if (a4 >> 5 <= 0x176)
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
    if (a4 >> 3 > 0xC34)
    {
      return result;
    }

    if (a4 >> 5 > 0x176)
    {
      return 0.93;
    }

    if (a4 >> 3 > 0x464)
    {
      return 0.85;
    }

    v7 = a4 >> 6 > 0x7C;
    result = 0.4;
    v8 = 0.75;
  }

  if (v7)
  {
    return v8;
  }

  return result;
}

+ (int)payloadForCodecType:(int64_t)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if (a3 > 100)
  {
    if (a3 > 199)
    {
      switch(a3)
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
      if ((a3 - 102) < 2)
      {
        return 100;
      }

      if (a3 == 101)
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
        v14 = v3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported codec type %d", &v7, 0x22u);
      }
    }

    return 128;
  }

  else
  {
    result = 0;
    switch(a3)
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
        if (a3 != 100)
        {
          goto LABEL_17;
        }

        result = 123;
        break;
    }
  }

  return result;
}

+ (unsigned)bitrateForCodecType:(int64_t)a3 mode:(int)a4
{
  if (a3 > 10)
  {
    if (a3 > 15)
    {
      switch(a3)
      {
        case 16:
          return 64000;
        case 17:
LABEL_11:

          return [VCPayloadUtils bitrateForEVSCodecMode:*&a4];
        case 19:
          return 48000;
      }

      return 0;
    }

    if (a3 != 11)
    {
      if (a3 == 12)
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
    if (a3 > 2)
    {
      if ((a3 - 3) >= 2)
      {
        if (a3 != 8)
        {
          return 0;
        }

        return 48000;
      }

      goto LABEL_11;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {

        return [VCPayloadUtils bitrateForAMRWBCodecMode:*&a4];
      }

      return 0;
    }

    return [VCPayloadUtils bitrateForAMRCodecMode:*&a4];
  }
}

+ (unsigned)bitrateForAMRCodecMode:(int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 < 8)
  {
    return dword_1DBD47688[a3];
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
    v14 = a3;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported mode %d", &v7, 0x22u);
  }

  return 0;
}

+ (unsigned)bitrateForAMRWBCodecMode:(int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 < 9)
  {
    return dword_1DBD476A8[a3];
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
    v14 = a3;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported mode %d", &v7, 0x22u);
  }

  return 0;
}

+ (unsigned)bitrateForEVSCodecMode:(int)a3
{
  if ((a3 - 10) >= 0xC)
  {
    return [VCPayloadUtils bitrateForAMRWBCodecMode:?];
  }

  else
  {
    return dword_1DBD476CC[a3 - 10];
  }
}

+ (int64_t)ctAudioCodecTypeForMediaStreamCodec:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      return 0;
    }

    if (a3 == 2)
    {
      return 1;
    }
  }

  else if ((a3 - 3) < 2 || a3 == 17)
  {
    return 2;
  }

  return 5;
}

+ (int64_t)ctAudioCodecEVSBandwidthForAudioCodecBandwidth:(int)a3
{
  if (a3 >= 3)
  {
    return 3;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)ctAudioCodecEVSBitrateForBitrate:(unsigned int)a3
{
  if (a3 <= 24399)
  {
    v3 = 9599;
    v11 = 5;
    if (a3 != 16400)
    {
      v11 = 0;
    }

    if (a3 == 13200)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    if (a3 == 9600)
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
    if (a3 != 8000)
    {
      v10 = 0;
    }
  }

  else
  {
    v3 = 63999;
    v4 = 11;
    if (a3 != 128000)
    {
      v4 = 0;
    }

    if (a3 == 96000)
    {
      v5 = 10;
    }

    else
    {
      v5 = v4;
    }

    if (a3 == 64000)
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
    if (a3 != 48000)
    {
      v9 = 0;
    }

    if (a3 == 32000)
    {
      v10 = 7;
    }

    else
    {
      v10 = v9;
    }
  }

  if (a3 == v7)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (a3 <= v3)
  {
    return v13;
  }

  else
  {
    return v6;
  }
}

+ (int)vcAudioCodecBandwidthForAudioCodecBandwidth:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)audioCodecBandwidthForVCAudioCodecBandwidth:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
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