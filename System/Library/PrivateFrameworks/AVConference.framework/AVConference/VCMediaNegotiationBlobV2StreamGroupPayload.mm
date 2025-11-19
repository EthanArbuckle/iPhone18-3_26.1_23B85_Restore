@interface VCMediaNegotiationBlobV2StreamGroupPayload
+ (BOOL)isDefaultPayloadConfig:(id)a3 index:(unsigned int)a4 rtpSampleRate:(unsigned int)a5 streamGroupID:(unsigned int)a6;
+ (id)defaultDataCodecConfig;
+ (id)defaultFTXTCodecConfig;
+ (id)defaultMoCapConfig;
+ (id)defaultPayloadConfigurationsForStreamGroupID:(unsigned int)a3;
+ (id)rtcpFlagStringWithPayloadConfig:(id)a3;
+ (int)negotiationPackedRtpSampleRateWithRTPSampleRate:(unsigned int)a3;
+ (int64_t)codecTypeWithNegotiationCodecType:(unsigned int)a3;
+ (unsigned)cipherSuiteWithNegotiationCipherSuite:(unsigned int)a3;
+ (unsigned)defaultRTPSampleRateForStreamGroupID:(unsigned int)a3;
+ (unsigned)negotiationCipherSuiteWithCipherSuite:(unsigned int)a3;
+ (unsigned)negotiationCodecTypeWithCodecType:(int64_t)a3;
+ (unsigned)rtcpFlagsWithPayloadConfig:(id)a3;
+ (unsigned)rtpSampleRateWithNegotiationPackedSampleRate:(int)a3;
+ (void)printWithLogFile:(void *)a3 prefix:(id)a4 payloadConfig:(id)a5;
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiationBlobV2StreamGroupPayload)initWithPayloadConfig:(id)a3 index:(unsigned int)a4 rtpSampleRate:(unsigned int)a5 streamGroupID:(unsigned int)a6;
- (VCMediaNegotiationBlobV2StreamGroupPayload)initWithPayloadConfig:(id)a3 rtpSampleRate:(unsigned int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)newCompactPayloadWithPayloadConfig:(id)a3 rtpSampleRate:(unsigned int)a4;
- (id)payloadConfigurationWithPayloadConfig:(id)a3;
- (id)payloadConfigurationWithStreamGroupID:(unsigned int)a3 index:(unsigned int)a4;
- (unint64_t)hash;
- (unsigned)rtpSampleRateWithStreamGroupID:(unsigned int)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)getStreamGroupPayload:(tagStreamGroupPayload *)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCodecType:(BOOL)a3;
- (void)setHasEncoderUsage:(BOOL)a3;
- (void)setHasMediaFlags:(BOOL)a3;
- (void)setHasPTime:(BOOL)a3;
- (void)setHasProfileLevelId:(BOOL)a3;
- (void)setHasRtcpFlags:(BOOL)a3;
- (void)setHasRtpPayload:(BOOL)a3;
- (void)setHasRtpSampleRate:(BOOL)a3;
- (void)setNegotiationPackedPayloadWithStreamGroupPayload:(tagStreamGroupPayload *)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobV2StreamGroupPayload

+ (id)defaultFTXTCodecConfig
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setCodecType:102];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setRtpPayload:100];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setH264PacketizationMode:1];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setCipherSuite:3];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setEncoderUsage:4];
  [v2 addObject:v3];

  return v2;
}

+ (id)defaultDataCodecConfig
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setCodecType:102];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setRtpPayload:110];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setH264PacketizationMode:1];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setCipherSuite:3];
  [v2 addObject:v3];

  return v2;
}

+ (id)defaultMoCapConfig
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setCodecType:301];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setRtpPayload:124];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setH264PacketizationMode:1];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v3 setCipherSuite:3];
  [v2 addObject:v3];

  return v2;
}

+ (id)defaultPayloadConfigurationsForStreamGroupID:(unsigned int)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (a3 > 1835623281)
  {
    if (a3 <= 1935897188)
    {
      if (a3 == 1835623282)
      {
        v11 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v11 setCodecType:4];
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v11 setPTime:20];
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v11 setCipherSuite:3];
        [v4 addObject:v11];

        v12 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v12 setCodecType:9];
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v12 setPTime:20];
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v12 setCipherSuite:3];
        [v4 addObject:v12];

        v13 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v13 setCodecType:8];
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v13 setPTime:20];
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v13 setCipherSuite:3];
        [v4 addObject:v13];

        if (+[VCHardwareSettings deviceClass]== 8)
        {
          v14 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
          [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v14 setCodecType:16];
          [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v14 setRtpPayload:101];
          [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v14 setPTime:10];
          [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v14 setCipherSuite:3];
          [v4 addObject:v14];
        }

        if (!VCFeatureFlagManager_UseAudioCodecACC24ForGFT())
        {
          return v4;
        }

        v5 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setCodecType:20];
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setPTime:20];
        [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setRtpPayload:113];
        goto LABEL_11;
      }

      if (a3 != 1835623287)
      {
        return v4;
      }

      goto LABEL_19;
    }

    if (a3 != 1935897189)
    {
      if (a3 != 1936290409)
      {
        if (a3 == 1937339233)
        {
          v5 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
          [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setCodecType:16];
          [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setRtpPayload:96];
          [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setPTime:60];
LABEL_11:
          v7 = v5;
          v8 = 3;
LABEL_24:
          [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v7 setCipherSuite:v8];
          [v4 addObject:v5];
        }

        return v4;
      }

LABEL_19:
      v10 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v10 setCodecType:12];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v10 setRtpPayload:96];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v10 setPTime:60];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v10 setUseInBandFEC:0];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v10 setRtcpSREnabled:1];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v10 setCipherSuite:2];
      [v4 addObject:v10];

      v5 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setCodecType:11];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setRtpPayload:97];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setPTime:40];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setUseInBandFEC:1];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setRtcpSREnabled:1];
      v7 = v5;
      v8 = 2;
      goto LABEL_24;
    }

LABEL_10:
    v6 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
    [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v6 setCodecType:100];
    [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v6 setRtpPayload:123];
    [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v6 setH264PacketizationMode:1];
    [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v6 setCipherSuite:3];
    [v4 addObject:v6];

    v5 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
    [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setCodecType:102];
    [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setRtpPayload:100];
    [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setH264PacketizationMode:1];
    goto LABEL_11;
  }

  if (a3 > 1667329398)
  {
    if (a3 == 1667329399)
    {
      v5 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setCodecType:100];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setRtpPayload:123];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setRtcpPSFB_PLIEnabled:1];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setRtcpPSFB_FIREnabled:1];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setRtcpSREnabled:1];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setH264LevelAsymmetryAllowed:0];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setH264PacketizationMode:1];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v5 setProfileLevelId:4374559];
      v7 = v5;
      v8 = 1;
      goto LABEL_24;
    }

    if (a3 != 1718909044)
    {
      return v4;
    }

    return +[VCMediaNegotiationBlobV2StreamGroupPayload defaultFTXTCodecConfig];
  }

  else
  {
    if (a3 != 1650745716)
    {
      if (a3 != 1667329381)
      {
        return v4;
      }

      goto LABEL_10;
    }

    return +[VCMediaNegotiationBlobV2StreamGroupPayload defaultMoCapConfig];
  }
}

+ (unsigned)defaultRTPSampleRateForStreamGroupID:(unsigned int)a3
{
  if (a3 <= 1835623281)
  {
    if (a3 > 1667329398)
    {
      if (a3 == 1667329399)
      {
        return 90000;
      }

      v5 = 1718909044;
    }

    else
    {
      if (a3 == 1650745716)
      {
        return 24000;
      }

      v5 = 1667329381;
    }

    if (a3 != v5)
    {
      return 0;
    }

    return 24000;
  }

  result = 48000;
  if (a3 <= 1935897188)
  {
    if (a3 != 1835623282)
    {
      v4 = 1835623287;
LABEL_15:
      if (a3 == v4)
      {
        return result;
      }

      return 0;
    }

    return 24000;
  }

  if (a3 != 1935897189 && a3 != 1936290409)
  {
    v4 = 1937339233;
    goto LABEL_15;
  }

  return result;
}

+ (BOOL)isDefaultPayloadConfig:(id)a3 index:(unsigned int)a4 rtpSampleRate:(unsigned int)a5 streamGroupID:(unsigned int)a6
{
  v6 = *&a6;
  v10 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultPayloadConfigurationsForStreamGroupID:*&a6];
  if ([v10 count] <= a4)
  {
    goto LABEL_20;
  }

  v11 = [v10 objectAtIndex:a4];
  if (!v11)
  {
    return v11;
  }

  v12 = v11;
  v13 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultRTPSampleRateForStreamGroupID:v6];
  v14 = [v12 codecType];
  if (v14 != [a3 codecType] || (v15 = objc_msgSend(v12, "rtpPayload"), v15 != objc_msgSend(a3, "rtpPayload")) || (v16 = objc_msgSend(v12, "pTime"), v16 != objc_msgSend(a3, "pTime")) || (v17 = objc_msgSend(v12, "rtcpRTPFB_GNACKEnabled"), v17 != objc_msgSend(a3, "rtcpRTPFB_GNACKEnabled")) || (v18 = objc_msgSend(v12, "rtcpPSFB_PLIEnabled"), v18 != objc_msgSend(a3, "rtcpPSFB_PLIEnabled")) || (v19 = objc_msgSend(v12, "rtcpPSFB_FIREnabled"), v19 != objc_msgSend(a3, "rtcpPSFB_FIREnabled")) || (v20 = objc_msgSend(v12, "rtcpSREnabled"), v20 != objc_msgSend(a3, "rtcpSREnabled")) || (v21 = objc_msgSend(v12, "H264LevelAsymmetryAllowed"), v21 != objc_msgSend(a3, "H264LevelAsymmetryAllowed")) || (v22 = objc_msgSend(v12, "H264PacketizationMode"), v22 != objc_msgSend(a3, "H264PacketizationMode")) || (v23 = objc_msgSend(v12, "useInBandFEC"), v23 != objc_msgSend(a3, "useInBandFEC")) || (v24 = objc_msgSend(v12, "profileLevelId"), v24 != objc_msgSend(a3, "profileLevelId")))
  {
LABEL_20:
    LOBYTE(v11) = 0;
    return v11;
  }

  v25 = [v12 cipherSuite];
  LOBYTE(v11) = v25 == [a3 cipherSuite] && v13 == a5;
  return v11;
}

+ (unsigned)negotiationCodecTypeWithCodecType:(int64_t)a3
{
  if (a3 <= 15)
  {
    if (a3 <= 8)
    {
      if (a3 == 4)
      {
        return 8;
      }

      if (a3 == 8)
      {
        return 7;
      }
    }

    else
    {
      switch(a3)
      {
        case 9:
          return 9;
        case 11:
          return 4;
        case 12:
          return 3;
      }
    }
  }

  else if (a3 > 101)
  {
    switch(a3)
    {
      case 301:
        return 10;
      case 300:
        return 6;
      case 102:
        return 2;
    }
  }

  else
  {
    switch(a3)
    {
      case 16:
        return 5;
      case 20:
        return 12;
      case 100:
        return 1;
    }
  }

  return 0;
}

+ (int64_t)codecTypeWithNegotiationCodecType:(unsigned int)a3
{
  if (a3 - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1DBD4F7E8[a3 - 1];
  }
}

+ (unsigned)rtcpFlagsWithPayloadConfig:(id)a3
{
  v4 = [a3 rtcpPSFB_PLIEnabled];
  if ([a3 rtcpPSFB_FIREnabled])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v4;
  if ([a3 rtcpSREnabled])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  return v6 | v7;
}

+ (id)rtcpFlagStringWithPayloadConfig:(id)a3
{
  v3 = [VCMediaNegotiationBlobV2StreamGroupPayload rtcpFlagsWithPayloadConfig:a3];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = 1;
  do
  {
    if ((v5 & v3) != 0)
    {
      if (v5 < 5 && ((0x17u >> v5) & 1) != 0)
      {
        v6 = off_1E85F9088[v5];
      }

      else
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v5];
      }

      [v4 addObject:v6];
    }

    v7 = v5 >= 4;
    v5 = (2 * v5);
  }

  while (!v7);

  return [v4 componentsJoinedByString:{@", "}];
}

+ (unsigned)negotiationCipherSuiteWithCipherSuite:(unsigned int)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return -1;
  }
}

+ (unsigned)cipherSuiteWithNegotiationCipherSuite:(unsigned int)a3
{
  if (a3 - 1 >= 4)
  {
    return -1;
  }

  else
  {
    return a3 - 1;
  }
}

- (void)setNegotiationPackedPayloadWithStreamGroupPayload:(tagStreamGroupPayload *)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 length:10];
    if (!-[VCMediaNegotiationBlobV2StreamGroupPayload packedPayload](self, "packedPayload") || ([v4 isEqualToData:{-[VCMediaNegotiationBlobV2StreamGroupPayload packedPayload](self, "packedPayload")}] & 1) == 0)
    {

      [(VCMediaNegotiationBlobV2StreamGroupPayload *)self setPackedPayload:v4];
    }
  }
}

- (void)getStreamGroupPayload:(tagStreamGroupPayload *)a3
{
  if (a3)
  {
    v4 = [(VCMediaNegotiationBlobV2StreamGroupPayload *)self packedPayload];

    [(NSData *)v4 getBytes:a3 length:10];
  }
}

+ (int)negotiationPackedRtpSampleRateWithRTPSampleRate:(unsigned int)a3
{
  if (a3 > 31999)
  {
    if (a3 > 47999)
    {
      if (a3 == 48000)
      {
        return 7;
      }

      if (a3 == 90000)
      {
        return 8;
      }
    }

    else
    {
      if (a3 == 32000)
      {
        return 5;
      }

      if (a3 == 44100)
      {
        return 6;
      }
    }
  }

  else if (a3 > 22049)
  {
    if (a3 == 22050)
    {
      return 3;
    }

    if (a3 == 24000)
    {
      return 4;
    }
  }

  else
  {
    if (a3 == 8000)
    {
      return 1;
    }

    if (a3 == 16000)
    {
      return 2;
    }
  }

  return 0;
}

+ (unsigned)rtpSampleRateWithNegotiationPackedSampleRate:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_1DBD4F848[a3 - 1];
  }
}

- (VCMediaNegotiationBlobV2StreamGroupPayload)initWithPayloadConfig:(id)a3 rtpSampleRate:(unsigned int)a4
{
  v4 = *&a4;
  if (!a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) initWithPayloadConfig:v7 rtpSampleRate:?];
      }
    }
  }

  v8 = [(VCMediaNegotiationBlobV2StreamGroupPayload *)self init];
  if (v8)
  {
    v9 = +[VCMediaNegotiationBlobV2StreamGroupPayload negotiationCodecTypeWithCodecType:](VCMediaNegotiationBlobV2StreamGroupPayload, "negotiationCodecTypeWithCodecType:", [a3 codecType]);
    if (v9)
    {
      v10 = v9;
      if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 codecType]!= v9)
      {
        [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 setCodecType:v10];
      }

      v11 = [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 rtpPayload];
      if (v11 != [a3 rtpPayload])
      {
        -[VCMediaNegotiationBlobV2StreamGroupPayload setRtpPayload:](v8, "setRtpPayload:", [a3 rtpPayload]);
      }

      v12 = [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 pTime];
      if ([a3 pTime] != v12)
      {
        -[VCMediaNegotiationBlobV2StreamGroupPayload setPTime:](v8, "setPTime:", [a3 pTime]);
      }

      v13 = [VCMediaNegotiationBlobV2StreamGroupPayload rtcpFlagsWithPayloadConfig:a3];
      if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 rtcpFlags]!= v13)
      {
        [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 setRtcpFlags:v13];
      }

      v14 = [VCMediaNegotiationBlobV2StreamGroupPayload mediaFlagsWithPayloadConfig:a3];
      if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 mediaFlags]!= v14)
      {
        [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 setMediaFlags:v14];
      }

      v15 = [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 profileLevelId];
      if ([a3 profileLevelId] != v15)
      {
        -[VCMediaNegotiationBlobV2StreamGroupPayload setProfileLevelId:](v8, "setProfileLevelId:", [a3 profileLevelId]);
      }

      v16 = [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 encoderUsage];
      if (v16 != [a3 encoderUsage])
      {
        -[VCMediaNegotiationBlobV2StreamGroupPayload setEncoderUsage:](v8, "setEncoderUsage:", [a3 encoderUsage]);
      }

      if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 rtpSampleRate]!= v4)
      {
        [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 setRtpSampleRate:v4];
      }

      v17 = +[VCMediaNegotiationBlobV2StreamGroupPayload negotiationCipherSuiteWithCipherSuite:](VCMediaNegotiationBlobV2StreamGroupPayload, "negotiationCipherSuiteWithCipherSuite:", [a3 cipherSuite]);
      if (v17 != -1)
      {
        v18 = v17;
        if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 cipherSuite]!= v17)
        {
          [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 setCipherSuite:v18];
        }

        v19 = [(VCMediaNegotiationBlobV2StreamGroupPayload *)v8 newCompactPayloadWithPayloadConfig:a3 rtpSampleRate:v4];
        if (v19 && (v20 = [-[VCMediaNegotiationBlobV2StreamGroupPayload data](v8 "data")], v20 > objc_msgSend(-[VCMediaNegotiationBlobV2StreamGroupPayload data](v19, "data"), "length")))
        {

          return v19;
        }

        else
        {
        }

        return v8;
      }

      [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) initWithPayloadConfig:a3 rtpSampleRate:?];
    }

    else
    {
      [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) initWithPayloadConfig:a3 rtpSampleRate:?];
    }

    return 0;
  }

  return v8;
}

- (VCMediaNegotiationBlobV2StreamGroupPayload)initWithPayloadConfig:(id)a3 index:(unsigned int)a4 rtpSampleRate:(unsigned int)a5 streamGroupID:(unsigned int)a6
{
  if (!a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) initWithPayloadConfig:v33 index:? rtpSampleRate:? streamGroupID:?];
      }
    }

    goto LABEL_39;
  }

  v7 = *&a6;
  v8 = *&a5;
  v11 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultPayloadConfigurationsForStreamGroupID:*&a6];
  if ([v11 count] > a4)
  {
    v12 = [v11 objectAtIndex:a4];
    if (v12)
    {
      v13 = v12;
      self = [(VCMediaNegotiationBlobV2StreamGroupPayload *)self init];
      if (!self)
      {
        return self;
      }

      v14 = [v13 H264PacketizationMode];
      if (v14 == [a3 H264PacketizationMode])
      {
        v15 = [v13 H264LevelAsymmetryAllowed];
        if (v15 == [a3 H264LevelAsymmetryAllowed])
        {
          v16 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultRTPSampleRateForStreamGroupID:v7];
          v17 = [v13 codecType];
          if (v17 == [a3 codecType])
          {
LABEL_10:
            v19 = [v13 rtpPayload];
            if (v19 != [a3 rtpPayload])
            {
              -[VCMediaNegotiationBlobV2StreamGroupPayload setRtpPayload:](self, "setRtpPayload:", [a3 rtpPayload]);
            }

            v20 = [v13 pTime];
            if (v20 != [a3 pTime])
            {
              -[VCMediaNegotiationBlobV2StreamGroupPayload setPTime:](self, "setPTime:", [a3 pTime]);
            }

            v21 = [v13 rtcpRTPFB_GNACKEnabled];
            if (v21 != [a3 rtcpRTPFB_GNACKEnabled] || (v22 = objc_msgSend(v13, "rtcpPSFB_PLIEnabled"), v22 != objc_msgSend(a3, "rtcpPSFB_PLIEnabled")) || (v23 = objc_msgSend(v13, "rtcpPSFB_FIREnabled"), v23 != objc_msgSend(a3, "rtcpPSFB_FIREnabled")) || (v24 = objc_msgSend(v13, "rtcpSREnabled"), v24 != objc_msgSend(a3, "rtcpSREnabled")))
            {
              [(VCMediaNegotiationBlobV2StreamGroupPayload *)self setRtcpFlags:[VCMediaNegotiationBlobV2StreamGroupPayload rtcpFlagsWithPayloadConfig:a3]];
            }

            v25 = [v13 useInBandFEC];
            if (v25 != [a3 useInBandFEC])
            {
              [(VCMediaNegotiationBlobV2StreamGroupPayload *)self setMediaFlags:[VCMediaNegotiationBlobV2StreamGroupPayload mediaFlagsWithPayloadConfig:a3]];
            }

            v26 = [v13 profileLevelId];
            if (v26 != [a3 profileLevelId])
            {
              -[VCMediaNegotiationBlobV2StreamGroupPayload setProfileLevelId:](self, "setProfileLevelId:", [a3 profileLevelId]);
            }

            v27 = [v13 encoderUsage];
            if (v27 != [a3 encoderUsage])
            {
              -[VCMediaNegotiationBlobV2StreamGroupPayload setEncoderUsage:](self, "setEncoderUsage:", [a3 encoderUsage]);
            }

            if (v16 != v8)
            {
              [(VCMediaNegotiationBlobV2StreamGroupPayload *)self setRtpSampleRate:v8];
            }

            v28 = [v13 cipherSuite];
            if (v28 == [a3 cipherSuite])
            {
              goto LABEL_30;
            }

            v29 = +[VCMediaNegotiationBlobV2StreamGroupPayload negotiationCipherSuiteWithCipherSuite:](VCMediaNegotiationBlobV2StreamGroupPayload, "negotiationCipherSuiteWithCipherSuite:", [a3 cipherSuite]);
            if (v29 != -1)
            {
              [(VCMediaNegotiationBlobV2StreamGroupPayload *)self setCipherSuite:v29];
LABEL_30:
              v30 = [(VCMediaNegotiationBlobV2StreamGroupPayload *)self newCompactPayloadWithPayloadConfig:a3 rtpSampleRate:v8];
              if (v30 && (v31 = [-[VCMediaNegotiationBlobV2StreamGroupPayload data](self "data")], v31 > objc_msgSend(-[VCMediaNegotiationBlobV2StreamGroupPayload data](v30, "data"), "length")))
              {

                return v30;
              }

              else
              {
              }

              return self;
            }

            [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) initWithPayloadConfig:a3 index:? rtpSampleRate:? streamGroupID:?];
            goto LABEL_39;
          }

          v18 = +[VCMediaNegotiationBlobV2StreamGroupPayload negotiationCodecTypeWithCodecType:](VCMediaNegotiationBlobV2StreamGroupPayload, "negotiationCodecTypeWithCodecType:", [a3 codecType]);
          if (v18)
          {
            [(VCMediaNegotiationBlobV2StreamGroupPayload *)self setCodecType:v18];
            goto LABEL_10;
          }

          [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) initWithPayloadConfig:a3 index:? rtpSampleRate:? streamGroupID:?];
        }

        else
        {
          [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) initWithPayloadConfig:a3 index:? rtpSampleRate:? streamGroupID:?];
        }
      }

      else
      {
        [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) initWithPayloadConfig:a3 index:? rtpSampleRate:? streamGroupID:?];
      }

LABEL_39:

      return 0;
    }
  }

  return [(VCMediaNegotiationBlobV2StreamGroupPayload *)self initWithPayloadConfig:a3 rtpSampleRate:v8];
}

- (id)newCompactPayloadWithPayloadConfig:(id)a3 rtpSampleRate:(unsigned int)a4
{
  v4 = *&a4;
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 0;
  v6 = +[VCMediaNegotiationBlobV2StreamGroupPayload negotiationCodecTypeWithCodecType:](VCMediaNegotiationBlobV2StreamGroupPayload, "negotiationCodecTypeWithCodecType:", [a3 codecType]);
  v7 = v6;
  if (v6 >= 0x100)
  {
    [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) newCompactPayloadWithPayloadConfig:rtpSampleRate:];
    return v18;
  }

  v15[0] = v6;
  if ([a3 rtpPayload] >= 0x100)
  {
    [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) newCompactPayloadWithPayloadConfig:a3 rtpSampleRate:?];
    return v18;
  }

  v15[1] = [a3 rtpPayload];
  v8 = [VCMediaNegotiationBlobV2StreamGroupPayload rtcpFlagsWithPayloadConfig:a3];
  if (v8 >= 0x100)
  {
    [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) newCompactPayloadWithPayloadConfig:rtpSampleRate:];
    return v18;
  }

  v15[2] = v8;
  v9 = [VCMediaNegotiationBlobV2StreamGroupPayload negotiationPackedRtpSampleRateWithRTPSampleRate:v4];
  if (v9 >= 0x100)
  {
    [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) newCompactPayloadWithPayloadConfig:rtpSampleRate:];
    return v18;
  }

  if (!v9)
  {
    [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) newCompactPayloadWithPayloadConfig:rtpSampleRate:];
    return v18;
  }

  v15[3] = v9;
  v10 = +[VCMediaNegotiationBlobV2StreamGroupPayload negotiationCipherSuiteWithCipherSuite:](VCMediaNegotiationBlobV2StreamGroupPayload, "negotiationCipherSuiteWithCipherSuite:", [a3 cipherSuite]);
  if (v10 >= 0x100)
  {
    [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) newCompactPayloadWithPayloadConfig:rtpSampleRate:];
    return v18;
  }

  v15[4] = v10;
  if ([VCMediaNegotiationBlobV2StreamGroupPayload isNegotiationCodecTypeAudio:v7])
  {
    v11 = [VCMediaNegotiationBlobV2StreamGroupPayload mediaFlagsWithPayloadConfig:a3];
    if (v11 >= 0x100)
    {
      [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) newCompactPayloadWithPayloadConfig:rtpSampleRate:];
      return v18;
    }

    BYTE1(v16) = v11;
    if (!+[VCMediaNegotiationBlobV2StreamGroupPayload isPTimePackable:](VCMediaNegotiationBlobV2StreamGroupPayload, "isPTimePackable:", [a3 pTime]))
    {
      [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) newCompactPayloadWithPayloadConfig:a3 rtpSampleRate:?];
      return v18;
    }

    LOBYTE(v16) = +[VCMediaNegotiationBlobV2StreamGroupPayload negotiationPackedPTimeWithPTime:](VCMediaNegotiationBlobV2StreamGroupPayload, "negotiationPackedPTimeWithPTime:", [a3 pTime]);
  }

  else
  {
    v16 = bswap32([a3 profileLevelId]);
    v17 = [a3 encoderUsage];
  }

  v12 = objc_alloc_init(VCMediaNegotiationBlobV2StreamGroupPayload);
  if (!v12)
  {
    [VCMediaNegotiationBlobV2StreamGroupPayload(Utils) newCompactPayloadWithPayloadConfig:rtpSampleRate:];
    return v18;
  }

  v13 = v12;
  -[VCMediaNegotiationBlobV2StreamGroupPayload setPackedPayload:](v12, "setPackedPayload:", [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:10]);
  return v13;
}

- (unsigned)rtpSampleRateWithStreamGroupID:(unsigned int)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultRTPSampleRateForStreamGroupID:*&a3];
  if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasPackedPayload])
  {
    v7 = 0;
    v6 = 0;
    [(VCMediaNegotiationBlobV2StreamGroupPayload *)self getStreamGroupPayload:&v6];
    return [VCMediaNegotiationBlobV2StreamGroupPayload rtpSampleRateWithNegotiationPackedSampleRate:BYTE3(v6)];
  }

  else if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasRtpSampleRate])
  {
    return self->_rtpSampleRate;
  }

  return v4;
}

- (id)payloadConfigurationWithStreamGroupID:(unsigned int)a3 index:(unsigned int)a4
{
  v6 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultPayloadConfigurationsForStreamGroupID:*&a3];
  if ([v6 count] > a4 && (v7 = objc_msgSend(v6, "objectAtIndex:", a4)) != 0)
  {
    v8 = v7;
    v9 = 1;
  }

  else
  {
    v8 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
    v9 = 0;
  }

  -[VCMediaNegotiatorStreamGroupCodecConfiguration setSerializedSize:](v8, "setSerializedSize:", [-[VCMediaNegotiationBlobV2StreamGroupPayload data](self "data")]);
  if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasPackedPayload])
  {

    return [(VCMediaNegotiationBlobV2StreamGroupPayload *)self payloadConfigurationWithPayloadConfig:v8];
  }

  else
  {
    if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasCodecType])
    {
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setCodecType:[VCMediaNegotiationBlobV2StreamGroupPayload codecTypeWithNegotiationCodecType:self->_codecType]];
    }

    if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasRtpPayload])
    {
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setRtpPayload:self->_rtpPayload];
    }

    if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasPTime])
    {
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setPTime:self->_pTime];
    }

    if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasRtcpFlags])
    {
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setRtcpPSFB_PLIEnabled:self->_rtcpFlags & 1];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setRtcpPSFB_FIREnabled:(self->_rtcpFlags >> 1) & 1];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setRtcpSREnabled:(self->_rtcpFlags >> 2) & 1];
    }

    if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasMediaFlags])
    {
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setUseInBandFEC:self->_mediaFlags & 1];
    }

    if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasProfileLevelId])
    {
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setProfileLevelId:self->_profileLevelId];
    }

    if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasEncoderUsage])
    {
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setEncoderUsage:self->_encoderUsage];
    }

    if ((v9 & 1) == 0 && [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 codecType]== 100)
    {
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setH264LevelAsymmetryAllowed:1];
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setH264PacketizationMode:1];
    }

    if ([(VCMediaNegotiationBlobV2StreamGroupPayload *)self hasCipherSuite])
    {
      [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v8 setCipherSuite:[VCMediaNegotiationBlobV2StreamGroupPayload cipherSuiteWithNegotiationCipherSuite:self->_cipherSuite]];
    }

    -[VCMediaNegotiatorStreamGroupCodecConfiguration setSerializedSize:](v8, "setSerializedSize:", [-[VCMediaNegotiationBlobV2StreamGroupPayload data](self "data")]);
    return v8;
  }
}

- (id)payloadConfigurationWithPayloadConfig:(id)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  memset(v6, 0, 10);
  [(VCMediaNegotiationBlobV2StreamGroupPayload *)self getStreamGroupPayload:v6];
  [a3 setCodecType:{+[VCMediaNegotiationBlobV2StreamGroupPayload codecTypeWithNegotiationCodecType:](VCMediaNegotiationBlobV2StreamGroupPayload, "codecTypeWithNegotiationCodecType:", LOBYTE(v6[0]))}];
  [a3 setRtpPayload:BYTE1(v6[0])];
  [a3 setRtcpPSFB_PLIEnabled:BYTE2(v6[0]) & 1];
  [a3 setRtcpPSFB_FIREnabled:(BYTE2(v6[0]) >> 1) & 1];
  [a3 setRtcpSREnabled:(BYTE2(v6[0]) >> 2) & 1];
  [a3 setCipherSuite:{+[VCMediaNegotiationBlobV2StreamGroupPayload cipherSuiteWithNegotiationCipherSuite:](VCMediaNegotiationBlobV2StreamGroupPayload, "cipherSuiteWithNegotiationCipherSuite:", BYTE4(v6[0]))}];
  if ([VCMediaNegotiationBlobV2StreamGroupPayload isNegotiationCodecTypeAudio:LOBYTE(v6[0])])
  {
    [a3 setPTime:{+[VCMediaNegotiationBlobV2StreamGroupPayload pTimeWithNegotiationPackedPTime:](VCMediaNegotiationBlobV2StreamGroupPayload, "pTimeWithNegotiationPackedPTime:", BYTE5(v6[0]))}];
    [a3 setUseInBandFEC:BYTE6(v6[0]) & 1];
  }

  else
  {
    [a3 setProfileLevelId:bswap32(*(v6 + 5))];
    [a3 setEncoderUsage:BYTE1(v6[1])];
    if ([a3 codecType] == 100)
    {
      [a3 setH264LevelAsymmetryAllowed:1];
      [a3 setH264PacketizationMode:1];
    }
  }

  [a3 setSerializedSize:{objc_msgSend(-[VCMediaNegotiationBlobV2StreamGroupPayload data](self, "data"), "length")}];
  return a3;
}

+ (void)printWithLogFile:(void *)a3 prefix:(id)a4 payloadConfig:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(a5, "serializedSize"), a4];
  [v7 appendString:@"Payload config:"];
  if (!a5)
  {
    v12 = @" <failed to decode>";
LABEL_20:
    [v7 appendFormat:v12, v22];
    goto LABEL_21;
  }

  v8 = +[VCMediaNegotiationBlobV2StreamGroupPayload negotiationCodecTypeWithCodecType:](VCMediaNegotiationBlobV2StreamGroupPayload, "negotiationCodecTypeWithCodecType:", [a5 codecType]);
  if (v8 < 0xD && ((0x17FFu >> v8) & 1) != 0)
  {
    v9 = off_1E85F90B0[v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
  }

  [v7 appendFormat:@" CodecType=%@", v9];
  if ([a5 rtpPayload])
  {
    [v7 appendFormat:@" RTPPayload=%u", objc_msgSend(a5, "rtpPayload")];
  }

  if ([a5 pTime])
  {
    [v7 appendFormat:@" pTime=%lu", objc_msgSend(a5, "pTime")];
  }

  [v7 appendFormat:@" rtcpFlags=[%@]", +[VCMediaNegotiationBlobV2StreamGroupPayload rtcpFlagStringWithPayloadConfig:](VCMediaNegotiationBlobV2StreamGroupPayload, "rtcpFlagStringWithPayloadConfig:", a5)];
  if ([a5 useInBandFEC])
  {
    [v7 appendFormat:@" useInBandFEC=1"];
  }

  if ([a5 profileLevelId])
  {
    [v7 appendFormat:@" profileLevelID=%lx", objc_msgSend(a5, "profileLevelId")];
  }

  v10 = +[VCMediaNegotiationBlobV2StreamGroupPayload negotiationCipherSuiteWithCipherSuite:](VCMediaNegotiationBlobV2StreamGroupPayload, "negotiationCipherSuiteWithCipherSuite:", [a5 cipherSuite]);
  if ((v10 - 1) >= 4)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = off_1E85F9118[(v10 - 1)];
  }

  [v7 appendFormat:@" cipherSuite=%@", v11];
  if ([a5 encoderUsage])
  {
    v22 = [a5 encoderUsage];
    v12 = @" encoderUsage=%u";
    goto LABEL_20;
  }

LABEL_21:
  v13 = [v7 UTF8String];
  VRLogfilePrintWithTimestamp(a3, "%s\n", v14, v15, v16, v17, v18, v19, v13);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v24 = v20;
      v25 = 2080;
      v26 = "+[VCMediaNegotiationBlobV2StreamGroupPayload(Utils) printWithLogFile:prefix:payloadConfig:]";
      v27 = 1024;
      v28 = 887;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2StreamGroupPayload *)self setPackedPayload:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2StreamGroupPayload;
  [(VCMediaNegotiationBlobV2StreamGroupPayload *)&v3 dealloc];
}

- (void)setHasCodecType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasRtpPayload:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasPTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRtcpFlags:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMediaFlags:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasProfileLevelId:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRtpSampleRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasEncoderUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2StreamGroupPayload;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2StreamGroupPayload description](&v3, sel_description), -[VCMediaNegotiationBlobV2StreamGroupPayload dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_codecType), @"codecType"}];
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpPayload), @"rtpPayload"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_pTime), @"pTime"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtcpFlags), @"rtcpFlags"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mediaFlags), @"mediaFlags"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_profileLevelId), @"profileLevelId"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpSampleRate), @"rtpSampleRate"}];
  if (*&self->_has)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_cipherSuite), @"cipherSuite"}];
  }

LABEL_10:
  packedPayload = self->_packedPayload;
  if (packedPayload)
  {
    [v3 setObject:packedPayload forKey:@"packedPayload"];
  }

  if ((*&self->_has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_encoderUsage), @"encoderUsage"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_9:
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
  if (self->_packedPayload)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 3) = self->_codecType;
    *(a3 + 28) |= 2u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 12) = self->_rtpPayload;
  *(a3 + 28) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 6) = self->_pTime;
  *(a3 + 28) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 11) = self->_rtcpFlags;
  *(a3 + 28) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 5) = self->_mediaFlags;
  *(a3 + 28) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 10) = self->_profileLevelId;
  *(a3 + 28) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  *(a3 + 13) = self->_rtpSampleRate;
  *(a3 + 28) |= 0x100u;
  if (*&self->_has)
  {
LABEL_9:
    *(a3 + 2) = self->_cipherSuite;
    *(a3 + 28) |= 1u;
  }

LABEL_10:
  if (self->_packedPayload)
  {
    [a3 setPackedPayload:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(a3 + 4) = self->_encoderUsage;
    *(a3 + 28) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_codecType;
    *(v5 + 56) |= 2u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 48) = self->_rtpPayload;
  *(v5 + 56) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 24) = self->_pTime;
  *(v5 + 56) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 44) = self->_rtcpFlags;
  *(v5 + 56) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 20) = self->_mediaFlags;
  *(v5 + 56) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 40) = self->_profileLevelId;
  *(v5 + 56) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(v5 + 52) = self->_rtpSampleRate;
  *(v5 + 56) |= 0x100u;
  if (*&self->_has)
  {
LABEL_9:
    *(v5 + 8) = self->_cipherSuite;
    *(v5 + 56) |= 1u;
  }

LABEL_10:

  *(v6 + 32) = [(NSData *)self->_packedPayload copyWithZone:a3];
  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 16) = self->_encoderUsage;
    *(v6 + 56) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 28);
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_codecType != *(a3 + 3))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 2) != 0)
    {
LABEL_49:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_rtpPayload != *(a3 + 12))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_pTime != *(a3 + 6))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_rtcpFlags != *(a3 + 11))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_mediaFlags != *(a3 + 5))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_profileLevelId != *(a3 + 10))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_49;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 28) & 0x100) == 0 || self->_rtpSampleRate != *(a3 + 13))
      {
        goto LABEL_49;
      }
    }

    else if ((*(a3 + 28) & 0x100) != 0)
    {
      goto LABEL_49;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_cipherSuite != *(a3 + 2))
      {
        goto LABEL_49;
      }
    }

    else if (v7)
    {
      goto LABEL_49;
    }

    packedPayload = self->_packedPayload;
    if (packedPayload | *(a3 + 4))
    {
      v5 = [(NSData *)packedPayload isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 28);
    LOBYTE(v5) = (v9 & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((v9 & 4) == 0 || self->_encoderUsage != *(a3 + 4))
      {
        goto LABEL_49;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = 2654435761 * self->_codecType;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_rtpPayload;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_pTime;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_rtcpFlags;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_mediaFlags;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_profileLevelId;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = 0;
    if (has)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v8 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = 2654435761 * self->_rtpSampleRate;
  if (has)
  {
LABEL_9:
    v10 = 2654435761 * self->_cipherSuite;
    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
LABEL_18:
  v11 = [(NSData *)self->_packedPayload hash];
  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_encoderUsage;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v14 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 28);
  if ((v5 & 2) != 0)
  {
    self->_codecType = *(a3 + 3);
    *&self->_has |= 2u;
    v5 = *(a3 + 28);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_rtpPayload = *(a3 + 12);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_pTime = *(a3 + 6);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_rtcpFlags = *(a3 + 11);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_mediaFlags = *(a3 + 5);
  *&self->_has |= 8u;
  v5 = *(a3 + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_profileLevelId = *(a3 + 10);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  self->_rtpSampleRate = *(a3 + 13);
  *&self->_has |= 0x100u;
  if (*(a3 + 28))
  {
LABEL_9:
    self->_cipherSuite = *(a3 + 2);
    *&self->_has |= 1u;
  }

LABEL_10:
  if (*(a3 + 4))
  {
    [(VCMediaNegotiationBlobV2StreamGroupPayload *)self setPackedPayload:?];
  }

  if ((*(a3 + 28) & 4) != 0)
  {
    self->_encoderUsage = *(a3 + 4);
    *&self->_has |= 4u;
  }
}

@end