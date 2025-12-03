@interface VCMediaNegotiationBlobV2StreamGroupStream
+ (BOOL)isDefaultPayloadConfigsWithStreamConfig:(id)config payloadConfigs:(id)configs streamGroupID:(unsigned int)d;
+ (BOOL)isFallbackStreamWithStreamGroupID:(unsigned int)d streamConfig:(id)config;
+ (BOOL)payloadSpecWithStreamConfig:(id)config payloadConfigs:(id)configs payloadSpecs:(unsigned int *)specs;
+ (BOOL)payloadsWithStreamConfig:(id)config payloadBitmap:(unsigned int *)bitmap;
+ (BOOL)qualityIndex:(unsigned int *)index isFallbackStream:(BOOL *)stream forStreamGroupID:(unsigned int)d streamIndex:(unsigned __int8)streamIndex;
+ (BOOL)streamIndex:(char *)index forStreamGroupID:(unsigned int)d qualityIndex:(unsigned int)qualityIndex isFallbackStream:(BOOL)stream;
+ (id)defaultsForBDATV2WithStreamIndex:(unsigned __int8)index;
+ (id)defaultsForBDATWithStreamIndex:(unsigned __int8)index;
+ (id)defaultsForFTXTV2WithStreamIndex:(unsigned __int8)index;
+ (id)defaultsForFTXTWithStreamIndex:(unsigned __int8)index;
+ (id)defaultsForStreamGroupID:(unsigned int)d streamIndex:(unsigned __int8)index;
+ (int)payloadsWithPayloadBit:(int)bit;
+ (unsigned)metadataWithStreamConfig:(id)config;
+ (unsigned)payloadFlagWithPayload:(int)payload;
+ (void)appendMetadata:(unsigned int)metadata toString:(id)string;
+ (void)appendPayloadsSpecsToString:(id)string streamConfig:(id)config;
+ (void)appendPayloadsToString:(id)string streamConfig:(id)config;
+ (void)printWithLogFile:(void *)file prefix:(id)prefix streamConfig:(id)config;
+ (void)updateStreamConfig:(id)config withMetadata:(unsigned int)metadata;
- (BOOL)initSSRC:(id)c;
- (BOOL)isEqual:(id)equal;
- (BOOL)readOptionalPacketPayload:(tagStreamGroupStreamOptionalPackedPayload *)payload;
- (BOOL)readRequiredPacketPayloadWithStreamConfig:(id)config;
- (BOOL)setNegotiatedCoordinateSystemFromCoordinateSystem:(unsigned int)system;
- (BOOL)updatePayloadSpecsForConfig:(id)config defaultConfig:(id)defaultConfig;
- (BOOL)updatePayloadSpecsForConfig:(id)config defaultConfig:(id)defaultConfig payloadConfigs:(id)configs;
- (BOOL)usesPayloadConfigsWithGroupID:(unsigned int)d;
- (VCMediaNegotiationBlobV2StreamGroupStream)initWithStreamConfig:(id)config payloadConfigs:(id)configs streamGroupID:(unsigned int)d;
- (VCMediaNegotiationBlobV2StreamGroupStream)initWithStreamConfig:(id)config payloadConfigs:(id)configs streamGroupID:(unsigned int)d defaultConfig:(id)defaultConfig;
- (id)compressWithConfig:(id)config;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRequiredPacketPayload;
- (id)description;
- (id)dictionaryRepresentation;
- (id)optionalPackedPayloaWithDefaultConfig:(id)config;
- (id)optionalPayloadCompressWithConfig:(id)config;
- (id)requiredPayloadCompressWithConfig:(id)config;
- (id)streamConfigWithPayloadConfigs:(id)configs payloadConfigSampleRates:(id)rates streamGroupID:(unsigned int)d;
- (unint64_t)hash;
- (unsigned)actualAudioChannelCountWithDefaultConfig:(id)config;
- (unsigned)actualMaxNetworkBitrateWithDefaultConfig:(id)config;
- (unsigned)actualMaxRepairedNetworkBitrateWithDefaultConfig:(id)config;
- (unsigned)actualMetadataWithDefaultConfig:(id)config;
- (unsigned)actualQualityIndexWithDefaultConfig:(id)config;
- (unsigned)actualStreamIndex;
- (unsigned)audioChannelCount;
- (unsigned)mediaStreamGroupCoordinateSystem;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCoordinateSystem:(BOOL)system;
- (void)setHasMaxNetworkBitrate:(BOOL)bitrate;
- (void)setHasMaxNetworkBitrateV2:(BOOL)v2;
- (void)setHasMetadata:(BOOL)metadata;
- (void)setHasPayloadSpecOrPayloads:(BOOL)payloads;
- (void)setHasPayloadsVersion:(BOOL)version;
- (void)setHasQualityIndex:(BOOL)index;
- (void)setHasRepairedMaxNetworkBitrate:(BOOL)bitrate;
- (void)setHasRepairedMaxNetworkBitrateV2:(BOOL)v2;
- (void)setHasRtpSSRC:(BOOL)c;
- (void)setHasStreamID:(BOOL)d;
- (void)setHasStreamIndex:(BOOL)index;
- (void)usePayloadSpecWithGroupID:(unsigned int)d qualityIndexForPayloadSpecIndex:(id)index defaultPayloadSpecsForQualityIndex:(id)qualityIndex;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobV2StreamGroupStream

- (VCMediaNegotiationBlobV2StreamGroupStream)initWithStreamConfig:(id)config payloadConfigs:(id)configs streamGroupID:(unsigned int)d defaultConfig:(id)defaultConfig
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = [(VCMediaNegotiationBlobV2StreamGroupStream *)self init:config];
  if (v9)
  {
    -[VCMediaNegotiationBlobV2StreamGroupStream setStreamIndex:](v9, "setStreamIndex:", [defaultConfig streamIndex]);
    if (![(VCMediaNegotiationBlobV2StreamGroupStream *)v9 initSSRC:config])
    {
LABEL_33:

      return 0;
    }

    maxNetworkBitrate = [config maxNetworkBitrate];
    if (maxNetworkBitrate != [defaultConfig maxNetworkBitrate])
    {
      -[VCMediaNegotiationBlobV2StreamGroupStream setMaxNetworkBitrateV2:](v9, "setMaxNetworkBitrateV2:", [config maxNetworkBitrate]);
    }

    if ([config repairedStreamID])
    {
      repairedMaxNetworkBitrate = [config repairedMaxNetworkBitrate];
      if (repairedMaxNetworkBitrate != [defaultConfig repairedMaxNetworkBitrate])
      {
        -[VCMediaNegotiationBlobV2StreamGroupStream setRepairedMaxNetworkBitrateV2:](v9, "setRepairedMaxNetworkBitrateV2:", [config repairedMaxNetworkBitrate]);
      }
    }

    if ([config repairedStreamID] && !objc_msgSend(defaultConfig, "repairedMaxNetworkBitrate"))
    {
      -[VCMediaNegotiationBlobV2StreamGroupStream setRepairedMaxNetworkBitrate:](v9, "setRepairedMaxNetworkBitrate:", [config repairedMaxNetworkBitrate]);
    }

    if (![config repairedStreamID] && objc_msgSend(defaultConfig, "repairedMaxNetworkBitrate"))
    {
      [(VCMediaNegotiationBlobV2StreamGroupStream *)v9 setRepairedMaxNetworkBitrate:0];
    }

    audioChannelCount = [config audioChannelCount];
    if (audioChannelCount != [defaultConfig audioChannelCount])
    {
      -[VCMediaNegotiationBlobV2StreamGroupStream setAudioChannelCount:](v9, "setAudioChannelCount:", [config audioChannelCount]);
    }

    v13 = [VCMediaNegotiationBlobV2StreamGroupStream metadataWithStreamConfig:config];
    if (v13 != [VCMediaNegotiationBlobV2StreamGroupStream metadataWithStreamConfig:defaultConfig])
    {
      [(VCMediaNegotiationBlobV2StreamGroupStream *)v9 setMetadata:v13];
    }

    if ([objc_msgSend(config codecs])
    {
      if (![VCMediaNegotiationBlobV2StreamGroupStream payloadSpecWithStreamConfig:config payloadConfigs:configs payloadSpecs:&v17])
      {
        [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:defaultConfig:];
        goto LABEL_33;
      }

      if (![VCMediaNegotiationBlobV2StreamGroupStream payloadSpecWithStreamConfig:defaultConfig payloadConfigs:0 payloadSpecs:&v16])
      {
        [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:defaultConfig:];
        goto LABEL_33;
      }
    }

    else
    {
      if (![VCMediaNegotiationBlobV2StreamGroupStream payloadsWithStreamConfig:config payloadBitmap:&v17])
      {
        [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:defaultConfig:];
        goto LABEL_33;
      }

      if (![VCMediaNegotiationBlobV2StreamGroupStream payloadsWithStreamConfig:defaultConfig payloadBitmap:&v16])
      {
        [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:defaultConfig:];
        goto LABEL_33;
      }
    }

    if (v17 != v16)
    {
      [(VCMediaNegotiationBlobV2StreamGroupStream *)v9 setPayloadSpecOrPayloads:?];
    }

    coordinateSystem = [config coordinateSystem];
    if (coordinateSystem != [defaultConfig coordinateSystem] && !-[VCMediaNegotiationBlobV2StreamGroupStream setNegotiatedCoordinateSystemFromCoordinateSystem:](v9, "setNegotiatedCoordinateSystemFromCoordinateSystem:", objc_msgSend(config, "coordinateSystem")))
    {
      [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:defaultConfig:];
      goto LABEL_33;
    }
  }

  return v9;
}

- (VCMediaNegotiationBlobV2StreamGroupStream)initWithStreamConfig:(id)config payloadConfigs:(id)configs streamGroupID:(unsigned int)d
{
  v22 = *MEMORY[0x1E69E9840];
  if (!config)
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:];
    goto LABEL_36;
  }

  v6 = *&d;
  if ([objc_msgSend(config "codecs")] && objc_msgSend(objc_msgSend(config, "payloads"), "count"))
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:v6 payloadConfigs:config streamGroupID:?];
    goto LABEL_36;
  }

  HIBYTE(v21) = -1;
  if (+[VCMediaNegotiationBlobV2StreamGroupStream streamIndex:forStreamGroupID:qualityIndex:isFallbackStream:](VCMediaNegotiationBlobV2StreamGroupStream, "streamIndex:forStreamGroupID:qualityIndex:isFallbackStream:", &v21 + 7, v6, [config qualityIndex], +[VCMediaNegotiationBlobV2StreamGroupStream isFallbackStreamWithStreamGroupID:streamConfig:](VCMediaNegotiationBlobV2StreamGroupStream, "isFallbackStreamWithStreamGroupID:streamConfig:", v6, config)))
  {
    v9 = [VCMediaNegotiationBlobV2StreamGroupStream defaultsForStreamGroupID:v6 streamIndex:HIBYTE(v21)];
    if (v9)
    {
      v10 = v9;
      self = [(VCMediaNegotiationBlobV2StreamGroupStream *)self initWithStreamConfig:config payloadConfigs:configs streamGroupID:v6 defaultConfig:v9];
      goto LABEL_28;
    }

    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:];
LABEL_36:

    return 0;
  }

  v11 = [VCMediaNegotiationBlobV2StreamGroupStream metadataWithStreamConfig:config];
  if ([(VCMediaNegotiationBlobV2StreamGroupStream *)self metadata]!= v11)
  {
    [(VCMediaNegotiationBlobV2StreamGroupStream *)self setMetadata:v11];
  }

  LODWORD(v21) = 0;
  if ([objc_msgSend(config codecs])
  {
    if (![VCMediaNegotiationBlobV2StreamGroupStream payloadSpecWithStreamConfig:config payloadConfigs:configs payloadSpecs:&v21])
    {
      [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:];
      goto LABEL_36;
    }
  }

  else if (![VCMediaNegotiationBlobV2StreamGroupStream payloadsWithStreamConfig:config payloadBitmap:&v21])
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:];
    goto LABEL_36;
  }

  payloadSpecOrPayloads = [(VCMediaNegotiationBlobV2StreamGroupStream *)self payloadSpecOrPayloads];
  if (payloadSpecOrPayloads != v21)
  {
    [(VCMediaNegotiationBlobV2StreamGroupStream *)self setPayloadSpecOrPayloads:?];
  }

  qualityIndex = [(VCMediaNegotiationBlobV2StreamGroupStream *)self qualityIndex];
  if (qualityIndex != [config qualityIndex])
  {
    -[VCMediaNegotiationBlobV2StreamGroupStream setQualityIndex:](self, "setQualityIndex:", [config qualityIndex]);
  }

  if (![(VCMediaNegotiationBlobV2StreamGroupStream *)self initSSRC:config])
  {
    goto LABEL_36;
  }

  maxNetworkBitrateV2 = [(VCMediaNegotiationBlobV2StreamGroupStream *)self maxNetworkBitrateV2];
  if (maxNetworkBitrateV2 != [config maxNetworkBitrate])
  {
    -[VCMediaNegotiationBlobV2StreamGroupStream setMaxNetworkBitrateV2:](self, "setMaxNetworkBitrateV2:", [config maxNetworkBitrate]);
  }

  if ([config repairedStreamID])
  {
    repairedMaxNetworkBitrateV2 = [(VCMediaNegotiationBlobV2StreamGroupStream *)self repairedMaxNetworkBitrateV2];
    if (repairedMaxNetworkBitrateV2 != [config repairedMaxNetworkBitrate])
    {
      -[VCMediaNegotiationBlobV2StreamGroupStream setRepairedMaxNetworkBitrateV2:](self, "setRepairedMaxNetworkBitrateV2:", [config repairedMaxNetworkBitrate]);
    }
  }

  audioChannelCount = [(VCMediaNegotiationBlobV2StreamGroupStream *)self audioChannelCount];
  if (audioChannelCount != [config audioChannelCount])
  {
    -[VCMediaNegotiationBlobV2StreamGroupStream setAudioChannelCount:](self, "setAudioChannelCount:", [config audioChannelCount]);
  }

  coordinateSystem = [(VCMediaNegotiationBlobV2StreamGroupStream *)self coordinateSystem];
  if (coordinateSystem != [config coordinateSystem] && !-[VCMediaNegotiationBlobV2StreamGroupStream setNegotiatedCoordinateSystemFromCoordinateSystem:](self, "setNegotiatedCoordinateSystemFromCoordinateSystem:", objc_msgSend(config, "coordinateSystem")))
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initWithStreamConfig:payloadConfigs:streamGroupID:];
    goto LABEL_36;
  }

  v10 = 0;
LABEL_28:
  v18 = [(VCMediaNegotiationBlobV2StreamGroupStream *)self compressWithConfig:v10];
  if (v18)
  {
    v19 = v18;

    return v19;
  }

  return self;
}

- (BOOL)initSSRC:(id)c
{
  rtpSSRC = [(VCMediaNegotiationBlobV2StreamGroupStream *)self rtpSSRC];
  if (rtpSSRC != [c ssrc])
  {
    ssrc = [c ssrc];
    if ([c streamID] != ssrc)
    {
      -[VCMediaNegotiationBlobV2StreamGroupStream setStreamID:](self, "setStreamID:", [c streamID]);
      ssrc = [c streamID];
    }

    if ([c v2StreamID])
    {
      if (ssrc >= 0xFF9Bu)
      {
        v7 = -65435;
      }

      else
      {
        v7 = 100;
      }

      if (v7 + ssrc != [c v2StreamID])
      {
        [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initSSRC:];
        return v9;
      }

      [(VCMediaNegotiationBlobV2StreamGroupStream *)self setPayloadsVersion:3];
    }

    if ([c repairedStreamID] && objc_msgSend(c, "repairedStreamID") != (ssrc + 1))
    {
      [VCMediaNegotiationBlobV2StreamGroupStream(Utils) initSSRC:];
      return v10;
    }

    -[VCMediaNegotiationBlobV2StreamGroupStream setRtpSSRC:](self, "setRtpSSRC:", [c ssrc]);
  }

  return 1;
}

- (id)streamConfigWithPayloadConfigs:(id)configs payloadConfigSampleRates:(id)rates streamGroupID:(unsigned int)d
{
  v5 = *&d;
  v31 = *MEMORY[0x1E69E9840];
  v9 = [configs count];
  if (v9 != [rates count])
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) streamConfigWithPayloadConfigs:&v30 payloadConfigSampleRates:? streamGroupID:?];
    goto LABEL_42;
  }

  actualStreamIndex = [(VCMediaNegotiationBlobV2StreamGroupStream *)self actualStreamIndex];
  DWORD1(v29) = [(VCMediaNegotiationBlobV2StreamGroupStream *)self qualityIndex];
  if (actualStreamIndex == 255)
  {
    if ((*&self->_has & 0x80) == 0)
    {
      [VCMediaNegotiationBlobV2StreamGroupStream(Utils) streamConfigWithPayloadConfigs:payloadConfigSampleRates:streamGroupID:];
LABEL_42:
      v27 = *(&v29 + 1);
      v26 = v30;
      goto LABEL_35;
    }
  }

  else
  {
    LOBYTE(v30) = 0;
    if (![VCMediaNegotiationBlobV2StreamGroupStream qualityIndex:&v29 + 4 isFallbackStream:&v30 forStreamGroupID:v5 streamIndex:actualStreamIndex])
    {
      [VCMediaNegotiationBlobV2StreamGroupStream(Utils) streamConfigWithPayloadConfigs:v5 payloadConfigSampleRates:actualStreamIndex streamGroupID:?];
      v27 = 0;
      v26 = 0;
      goto LABEL_35;
    }

    v11 = [VCMediaNegotiationBlobV2StreamGroupStream defaultsForStreamGroupID:v5 streamIndex:actualStreamIndex];
    if (v11)
    {
      v12 = v11;
      v13 = v11;
      v14 = 0;
      goto LABEL_9;
    }
  }

  v13 = objc_alloc_init(VCMediaNegotiatorStreamGroupStreamConfiguration);
  v12 = 0;
  v14 = 1;
LABEL_9:
  if (![(VCMediaNegotiationBlobV2StreamGroupStream *)self readRequiredPacketPayloadWithStreamConfig:v13])
  {
    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setStreamIndex:actualStreamIndex];
    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setSsrc:[(VCMediaNegotiationBlobV2StreamGroupStream *)self rtpSSRC]];
    if ((*&self->_has & 0x800) != 0)
    {
      streamID = [(VCMediaNegotiationBlobV2StreamGroupStream *)self streamID];
    }

    else
    {
      streamID = [(VCMediaNegotiationBlobV2StreamGroupStream *)self rtpSSRC];
    }

    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setStreamID:streamID];
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setQualityIndex:DWORD1(v29)];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setRepairedMaxNetworkBitrate:[(VCMediaNegotiationBlobV2StreamGroupStream *)self actualMaxRepairedNetworkBitrateWithDefaultConfig:v12]];
  if (VCFeatureFlagManager_UseAudioCodecACC24ForGFT() && [(VCMediaNegotiationBlobV2StreamGroupStream(Utils) *)self payloadsVersion]== 3)
  {
    streamID2 = [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 streamID];
    if (streamID2 < 0xFF9Bu)
    {
      v17 = 100;
    }

    else
    {
      v17 = 101;
    }

    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setV2StreamID:(v17 + streamID2)];
  }

  if ([(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 repairedMaxNetworkBitrate])
  {
    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setRepairedStreamID:([(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 streamID]+ 1)];
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setAudioChannelCount:[(VCMediaNegotiationBlobV2StreamGroupStream *)self actualAudioChannelCountWithDefaultConfig:v12]];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setMaxNetworkBitrate:[(VCMediaNegotiationBlobV2StreamGroupStream *)self actualMaxNetworkBitrateWithDefaultConfig:v12]];
  v18 = [(VCMediaNegotiationBlobV2StreamGroupStream *)self actualMetadataWithDefaultConfig:v12];
  v23 = v18;
  if (v18 >= 0x10)
  {
    [(VCMediaNegotiationBlobV2StreamGroupStream(Utils) *)v18 streamConfigWithPayloadConfigs:v13 payloadConfigSampleRates:&v29 + 8 streamGroupID:&v30, v19, v20, v21, v22, v29, v30, v31, SHIDWORD(v31), v32, v33, v34, v35, v36, v37, v38, v39, v40, v41];
    goto LABEL_42;
  }

  [VCMediaNegotiationBlobV2StreamGroupStream updateStreamConfig:v13 withMetadata:v18];
  if (v23 >= 8)
  {
    if (![(VCMediaNegotiationBlobV2StreamGroupStream *)self updatePayloadSpecsForConfig:v13 defaultConfig:v12 payloadConfigs:configs])
    {
      [VCMediaNegotiationBlobV2StreamGroupStream(Utils) streamConfigWithPayloadConfigs:v13 payloadConfigSampleRates:&v29 + 8 streamGroupID:&v30];
      goto LABEL_42;
    }

    if (![rates count])
    {
      [VCMediaNegotiationBlobV2StreamGroupStream(Utils) streamConfigWithPayloadConfigs:v13 payloadConfigSampleRates:&v29 + 8 streamGroupID:&v30];
      goto LABEL_42;
    }

    rtpTimestampRate = [objc_msgSend(rates objectAtIndex:{objc_msgSend(-[NSArray firstObject](-[VCMediaNegotiatorStreamGroupStreamConfiguration codecs](v13, "codecs"), "firstObject"), "unsignedIntValue")), "unsignedIntValue"}];
    goto LABEL_31;
  }

  if (![(VCMediaNegotiationBlobV2StreamGroupStream *)self updatePayloadSpecsForConfig:v13 defaultConfig:v12])
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) streamConfigWithPayloadConfigs:v13 payloadConfigSampleRates:&v29 + 8 streamGroupID:&v30];
    goto LABEL_42;
  }

  if ((v14 & 1) == 0)
  {
    rtpTimestampRate = [v12 rtpTimestampRate];
LABEL_31:
    v24 = rtpTimestampRate;
    goto LABEL_32;
  }

  v24 = 24000;
LABEL_32:
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setRtpTimestampRate:v24];
  if ((*&self->_has & 2) != 0)
  {
    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v13 setCoordinateSystem:[(VCMediaNegotiationBlobV2StreamGroupStream *)self mediaStreamGroupCoordinateSystem]];
  }

  -[VCMediaNegotiatorStreamGroupStreamConfiguration setSerializedSize:](v13, "setSerializedSize:", [-[VCMediaNegotiationBlobV2StreamGroupStream data](self "data")]);
  v26 = v13;
  v27 = 0;
LABEL_35:

  return v26;
}

- (void)usePayloadSpecWithGroupID:(unsigned int)d qualityIndexForPayloadSpecIndex:(id)index defaultPayloadSpecsForQualityIndex:(id)qualityIndex
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*&self->_has & 0x1000) != 0)
  {
    v8 = [VCMediaNegotiationBlobV2StreamGroupStream defaultsForStreamGroupID:*&d streamIndex:[(VCMediaNegotiationBlobV2StreamGroupStream *)self streamIndex]];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(VCMediaNegotiationBlobV2StreamGroupStream *)self actualQualityIndexWithDefaultConfig:v8];
  if (([(VCMediaNegotiationBlobV2StreamGroupStream *)self actualMetadataWithDefaultConfig:v8]& 8) != 0)
  {
    if (!v8 || (*&self->_has & 0x20) != 0)
    {
      payloadSpecOrPayloads = [(VCMediaNegotiationBlobV2StreamGroupStream *)self payloadSpecOrPayloads];
      if (payloadSpecOrPayloads)
      {
        v16 = payloadSpecOrPayloads;
        v17 = 0;
        do
        {
          if ((v16 & (1 << v17)) != 0)
          {
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
            [index setObject:v18 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v17)}];
            v16 &= ~(1 << v17);
          }

          v17 = (v17 + 1);
        }

        while (v16);
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      codecs = [v8 codecs];
      v11 = [codecs countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(codecs);
            }

            [qualityIndex setObject:*(*(&v20 + 1) + 8 * i) forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v9)}];
          }

          v12 = [codecs countByEnumeratingWithState:&v20 objects:v19 count:16];
        }

        while (v12);
      }
    }
  }
}

+ (void)printWithLogFile:(void *)file prefix:(id)prefix streamConfig:(id)config
{
  v25 = *MEMORY[0x1E69E9840];
  prefix = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(config, "serializedSize"), prefix];
  [prefix appendFormat:@"Stream: QualityIndex=%4d", objc_msgSend(config, "qualityIndex")];
  [prefix appendFormat:@" SSRC=%08x StreamID=%5d NetworkBitrate=%6d", objc_msgSend(config, "ssrc"), objc_msgSend(config, "streamID"), objc_msgSend(config, "maxNetworkBitrate")];
  if ([config v2StreamID])
  {
    [prefix appendFormat:@" v2StreamID=%5d", objc_msgSend(config, "v2StreamID")];
  }

  if ([config repairedStreamID])
  {
    [prefix appendFormat:@" Repair[ID=%5d NetworkBitrate=%6d]", objc_msgSend(config, "repairedStreamID"), objc_msgSend(config, "repairedMaxNetworkBitrate")];
  }

  [VCMediaNegotiationBlobV2StreamGroupStream appendMetadata:[VCMediaNegotiationBlobV2StreamGroupStream metadataWithStreamConfig:config] toString:prefix];
  if ([objc_msgSend(config "codecs")])
  {
    [VCMediaNegotiationBlobV2StreamGroupStream appendPayloadsSpecsToString:prefix streamConfig:config];
  }

  else
  {
    [VCMediaNegotiationBlobV2StreamGroupStream appendPayloadsToString:prefix streamConfig:config];
  }

  [prefix appendFormat:@" RTPSampleRate=%d", objc_msgSend(config, "rtpTimestampRate")];
  if ([config audioChannelCount])
  {
    [prefix appendFormat:@" channels=%u", objc_msgSend(config, "audioChannelCount")];
  }

  uTF8String = [prefix UTF8String];
  VRLogfilePrintWithTimestamp(file, "%s\n", v9, v10, v11, v12, v13, v14, uTF8String);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = v15;
      v19 = 2080;
      v20 = "+[VCMediaNegotiationBlobV2StreamGroupStream(Utils) printWithLogFile:prefix:streamConfig:]";
      v21 = 1024;
      v22 = 624;
      v23 = 2112;
      v24 = prefix;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

+ (BOOL)isDefaultPayloadConfigsWithStreamConfig:(id)config payloadConfigs:(id)configs streamGroupID:(unsigned int)d
{
  v5 = *&d;
  v21 = *MEMORY[0x1E69E9840];
  v15 = -1;
  LODWORD(v8) = +[VCMediaNegotiationBlobV2StreamGroupStream streamIndex:forStreamGroupID:qualityIndex:isFallbackStream:](VCMediaNegotiationBlobV2StreamGroupStream, "streamIndex:forStreamGroupID:qualityIndex:isFallbackStream:", &v15, *&d, [config qualityIndex], +[VCMediaNegotiationBlobV2StreamGroupStream isFallbackStreamWithStreamGroupID:streamConfig:](VCMediaNegotiationBlobV2StreamGroupStream, "isFallbackStreamWithStreamGroupID:streamConfig:", *&d, config));
  if (v8)
  {
    v8 = [VCMediaNegotiationBlobV2StreamGroupStream defaultsForStreamGroupID:v5 streamIndex:v15];
    if (v8)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      obj = [config codecs];
      v9 = [obj countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(obj);
          }

          LODWORD(v8) = +[VCMediaNegotiationBlobV2StreamGroupPayload isDefaultPayloadConfig:index:rtpSampleRate:streamGroupID:](VCMediaNegotiationBlobV2StreamGroupPayload, "isDefaultPayloadConfig:index:rtpSampleRate:streamGroupID:", [configs objectAtIndex:{objc_msgSend(*(*(&v17 + 1) + 8 * v12), "integerValue")}], objc_msgSend(*(*(&v17 + 1) + 8 * v12), "integerValue"), objc_msgSend(config, "rtpTimestampRate"), v5);
          if (!v8)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [obj countByEnumeratingWithState:&v17 objects:v16 count:16];
            LOBYTE(v8) = 1;
            if (v10)
            {
              goto LABEL_5;
            }

            return v8;
          }
        }
      }

      else
      {
        LOBYTE(v8) = 1;
      }
    }
  }

  return v8;
}

- (BOOL)usesPayloadConfigsWithGroupID:(unsigned int)d
{
  if ((*&self->_has & 0x1000) != 0)
  {
    v4 = [VCMediaNegotiationBlobV2StreamGroupStream defaultsForStreamGroupID:*&d streamIndex:[(VCMediaNegotiationBlobV2StreamGroupStream *)self streamIndex]];
  }

  else
  {
    v4 = 0;
  }

  return ([(VCMediaNegotiationBlobV2StreamGroupStream *)self actualMetadataWithDefaultConfig:v4]>> 3) & 1;
}

+ (BOOL)streamIndex:(char *)index forStreamGroupID:(unsigned int)d qualityIndex:(unsigned int)qualityIndex isFallbackStream:(BOOL)stream
{
  if (d == 1835623282 && qualityIndex == 25 && !stream)
  {
    goto LABEL_23;
  }

  streamCopy = stream;
  if (d == 1835623282 && qualityIndex == 200 && !stream)
  {
    goto LABEL_11;
  }

  v13 = +[VCHardwareSettings deviceClass];
  if (d == 1835623282 && qualityIndex == 240 && v13 == 8 && !streamCopy)
  {
    goto LABEL_19;
  }

  if (d == 1667329381 && qualityIndex == 35 && !streamCopy)
  {
    goto LABEL_23;
  }

  if (d == 1667329381 && qualityIndex == 62 && !streamCopy)
  {
    goto LABEL_11;
  }

  if (d == 1667329381 && qualityIndex == 125 && !streamCopy)
  {
    goto LABEL_19;
  }

  if (d == 1667329381 && qualityIndex == 250 && !streamCopy)
  {
    goto LABEL_35;
  }

  if (d == 1667329381 && qualityIndex == 425 && !streamCopy)
  {
LABEL_39:
    v12 = 4;
    goto LABEL_24;
  }

  if (d == 1667329381 && qualityIndex == 1000 && !streamCopy)
  {
LABEL_43:
    v12 = 5;
    goto LABEL_24;
  }

  if (d == 1667329381 && qualityIndex == 1800 && !streamCopy)
  {
LABEL_47:
    v12 = 6;
    goto LABEL_24;
  }

  if (d == 1937339233 && qualityIndex == 101 && !streamCopy)
  {
    goto LABEL_23;
  }

  if (d == 1937339233 && qualityIndex == 332 && !streamCopy)
  {
    goto LABEL_11;
  }

  if (d == 1935897189 && qualityIndex == 100 && !streamCopy)
  {
LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v16 = d == 1935897189 && qualityIndex == 120;
  v17 = !v16;
  if (v16 && !streamCopy)
  {
    goto LABEL_11;
  }

  v18 = d == 1935897189 && qualityIndex == 150;
  v19 = !v18;
  if (v18 && !streamCopy)
  {
LABEL_19:
    v12 = 2;
    goto LABEL_24;
  }

  v20 = d == 1935897189 && qualityIndex == 350;
  v21 = !v20;
  if (v20 && !streamCopy)
  {
    goto LABEL_35;
  }

  v22 = d == 1935897189 && qualityIndex == 390;
  v23 = !v22;
  if (v22 && !streamCopy)
  {
    goto LABEL_39;
  }

  if (d == 1935897189 && qualityIndex == 450 && !streamCopy)
  {
    goto LABEL_43;
  }

  if (d == 1935897189 && qualityIndex == 700 && !streamCopy)
  {
    goto LABEL_47;
  }

  if (d == 1935897189 && qualityIndex == 950 && !streamCopy)
  {
    v12 = 7;
    goto LABEL_24;
  }

  v24 = !streamCopy;
  if ((!streamCopy | v17) != 1)
  {
    v12 = 8;
    goto LABEL_24;
  }

  if ((v24 | v19) != 1)
  {
    v12 = 9;
    goto LABEL_24;
  }

  if ((v24 | v21) != 1)
  {
    v12 = 10;
    goto LABEL_24;
  }

  if ((v24 | v23) != 1)
  {
    v12 = 11;
    goto LABEL_24;
  }

  if (d == 1667329399 && qualityIndex == 93 && !streamCopy)
  {
    goto LABEL_23;
  }

  if (d == 1667329399 && qualityIndex == 400 && !streamCopy)
  {
    goto LABEL_11;
  }

  if (d == 1667329399 && qualityIndex == 1250 && !streamCopy)
  {
    goto LABEL_19;
  }

  if (d == 1835623287 && qualityIndex == 27 && !streamCopy)
  {
    goto LABEL_23;
  }

  if (d == 1835623287 && qualityIndex == 162 && !streamCopy)
  {
    goto LABEL_11;
  }

  if (d == 1667330164 && qualityIndex == 15 && !streamCopy || d == 1718909044 && qualityIndex == 96 && !streamCopy)
  {
    goto LABEL_23;
  }

  if (d == 1718909044 && qualityIndex == 135 && !streamCopy)
  {
    goto LABEL_11;
  }

  if (d == 1718909044 && qualityIndex == 275 && !streamCopy)
  {
    goto LABEL_19;
  }

  if (d == 1718909044 && qualityIndex == 1600 && !streamCopy)
  {
LABEL_35:
    v12 = 3;
    goto LABEL_24;
  }

  if (d == 1650745716 && qualityIndex == 98 && !streamCopy)
  {
LABEL_11:
    v12 = 1;
LABEL_24:
    *index = v12;
    return 1;
  }

  if (d == 1650745716 && qualityIndex == 140 && !streamCopy)
  {
    goto LABEL_19;
  }

  if (d == 1936290409 && qualityIndex == 30 && !streamCopy)
  {
    goto LABEL_23;
  }

  result = 0;
  if (d == 1936290409 && qualityIndex == 210 && !streamCopy)
  {
    goto LABEL_11;
  }

  return result;
}

+ (BOOL)qualityIndex:(unsigned int *)index isFallbackStream:(BOOL *)stream forStreamGroupID:(unsigned int)d streamIndex:(unsigned __int8)streamIndex
{
  if (d == 1835623282 && streamIndex == 0)
  {
    v11 = 0;
    v12 = 25;
    goto LABEL_9;
  }

  streamIndexCopy = streamIndex;
  if (d == 1835623282 && streamIndex == 1)
  {
    v11 = 0;
    v12 = 200;
LABEL_9:
    *index = v12;
    *stream = v11;
    return 1;
  }

  v14 = +[VCHardwareSettings deviceClass];
  if (d == 1835623282 && streamIndexCopy == 2 && v14 == 8)
  {
    v11 = 0;
    v12 = 240;
    goto LABEL_9;
  }

  if (d == 1667329381 && !streamIndexCopy)
  {
    v11 = 0;
    v12 = 35;
    goto LABEL_9;
  }

  if (d == 1667329381 && streamIndexCopy == 1)
  {
    v11 = 0;
    v12 = 62;
    goto LABEL_9;
  }

  if (d == 1667329381 && streamIndexCopy == 2)
  {
    v11 = 0;
    v12 = 125;
    goto LABEL_9;
  }

  if (d == 1667329381 && streamIndexCopy == 3)
  {
    v11 = 0;
    v12 = 250;
    goto LABEL_9;
  }

  if (d == 1667329381 && streamIndexCopy == 4)
  {
    v11 = 0;
    v12 = 425;
    goto LABEL_9;
  }

  if (d == 1667329381 && streamIndexCopy == 5)
  {
    v11 = 0;
    v12 = 1000;
    goto LABEL_9;
  }

  if (d == 1667329381 && streamIndexCopy == 6)
  {
    v11 = 0;
    v12 = 1800;
    goto LABEL_9;
  }

  if (d == 1937339233 && !streamIndexCopy)
  {
    v11 = 0;
    v12 = 101;
    goto LABEL_9;
  }

  if (d == 1937339233 && streamIndexCopy == 1)
  {
    v11 = 0;
    v12 = 332;
    goto LABEL_9;
  }

  if (d == 1935897189 && !streamIndexCopy)
  {
    v11 = 0;
    v12 = 100;
    goto LABEL_9;
  }

  if (d == 1935897189 && streamIndexCopy == 1)
  {
    v11 = 0;
LABEL_48:
    v12 = 120;
    goto LABEL_9;
  }

  if (d == 1935897189 && streamIndexCopy == 2)
  {
    v11 = 0;
LABEL_52:
    v12 = 150;
    goto LABEL_9;
  }

  if (d == 1935897189 && streamIndexCopy == 3)
  {
    v11 = 0;
LABEL_56:
    v12 = 350;
    goto LABEL_9;
  }

  if (d == 1935897189 && streamIndexCopy == 4)
  {
    v11 = 0;
LABEL_60:
    v12 = 390;
    goto LABEL_9;
  }

  if (d == 1935897189 && streamIndexCopy == 5)
  {
    v11 = 0;
    v12 = 450;
    goto LABEL_9;
  }

  if (d == 1935897189 && streamIndexCopy == 6)
  {
    v11 = 0;
    v12 = 700;
    goto LABEL_9;
  }

  if (d == 1935897189 && streamIndexCopy == 7)
  {
    v11 = 0;
    v12 = 950;
    goto LABEL_9;
  }

  if (d == 1935897189 && streamIndexCopy == 8)
  {
    v11 = 1;
    goto LABEL_48;
  }

  if (d == 1935897189 && streamIndexCopy == 9)
  {
    v11 = 1;
    goto LABEL_52;
  }

  if (d == 1935897189 && streamIndexCopy == 10)
  {
    v11 = 1;
    goto LABEL_56;
  }

  if (d == 1935897189 && streamIndexCopy == 11)
  {
    v11 = 1;
    goto LABEL_60;
  }

  if (d == 1667329399 && !streamIndexCopy)
  {
    v11 = 0;
    v12 = 93;
    goto LABEL_9;
  }

  if (d == 1667329399 && streamIndexCopy == 1)
  {
    v11 = 0;
    v12 = 400;
    goto LABEL_9;
  }

  if (d == 1667329399 && streamIndexCopy == 2)
  {
    v11 = 0;
    v12 = 1250;
    goto LABEL_9;
  }

  if (d == 1835623287 && !streamIndexCopy)
  {
    v11 = 0;
    v12 = 27;
    goto LABEL_9;
  }

  if (d == 1835623287 && streamIndexCopy == 1)
  {
    v11 = 0;
    v12 = 162;
    goto LABEL_9;
  }

  if (d == 1667330164 && !streamIndexCopy)
  {
    v11 = 0;
    v12 = 15;
    goto LABEL_9;
  }

  if (d == 1718909044 && !streamIndexCopy)
  {
    v11 = 0;
    v12 = 96;
    goto LABEL_9;
  }

  if (d == 1718909044 && streamIndexCopy == 1)
  {
    v11 = 0;
    v12 = 135;
    goto LABEL_9;
  }

  if (d == 1718909044 && streamIndexCopy == 2)
  {
    v11 = 0;
    v12 = 275;
    goto LABEL_9;
  }

  if (d == 1718909044 && streamIndexCopy == 3)
  {
    v11 = 0;
    v12 = 1600;
    goto LABEL_9;
  }

  if (d == 1650745716 && streamIndexCopy == 1)
  {
    v11 = 0;
    v12 = 98;
    goto LABEL_9;
  }

  if (d == 1650745716 && streamIndexCopy == 2)
  {
    v11 = 0;
    v12 = 140;
    goto LABEL_9;
  }

  if (d == 1936290409 && !streamIndexCopy)
  {
    v11 = 0;
    v12 = 30;
    goto LABEL_9;
  }

  if (d != 1936290409)
  {
    return 0;
  }

  result = 0;
  if (streamIndexCopy == 1)
  {
    v11 = 0;
    v12 = 210;
    goto LABEL_9;
  }

  return result;
}

+ (id)defaultsForFTXTWithStreamIndex:(unsigned __int8)index
{
  if (index == 2)
  {
    LODWORD(v6) = 0;
    BYTE4(v5) = 2;
    LODWORD(v5) = 0;
    LOWORD(v4) = 0;
    return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:275 mediaBitrate:502452 maxPacketsPerSecond:459252 repairedNwBitrate:30 keyFrameInterval:864558 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v4 isSubStream:0 metadata:&unk_1F579CB58 payloads:0x30000000100 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
  }

  else if (index == 1)
  {
    LODWORD(v6) = 0;
    BYTE4(v5) = 1;
    LODWORD(v5) = 0;
    LOWORD(v4) = 0;
    return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:135 mediaBitrate:261812 maxPacketsPerSecond:239252 repairedNwBitrate:30 keyFrameInterval:522664 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v4 isSubStream:0 metadata:&unk_1F579CB40 payloads:0x30000000100 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
  }

  else if (index)
  {
    return 0;
  }

  else
  {
    LODWORD(v6) = 0;
    BYTE4(v5) = 0;
    LODWORD(v5) = 0;
    LOWORD(v4) = 0;
    return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:96 mediaBitrate:172772 maxPacketsPerSecond:149252 repairedNwBitrate:30 keyFrameInterval:344104 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v4 isSubStream:0 metadata:&unk_1F579CB28 payloads:0x30000000100 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
  }
}

+ (id)defaultsForFTXTV2WithStreamIndex:(unsigned __int8)index
{
  if (index > 1)
  {
    if (index != 2)
    {
      if (index == 3)
      {
        LODWORD(v6) = 0;
        BYTE4(v5) = 3;
        LODWORD(v5) = 0;
        LOWORD(v4) = 0;
        return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:1600 mediaBitrate:1715000 maxPacketsPerSecond:1600000 repairedNwBitrate:30 keyFrameInterval:0 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v4 isSubStream:0 metadata:&unk_1F579CBB8 payloads:0x40000000600 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
      }

      return 0;
    }

    LODWORD(v6) = 0;
    BYTE4(v5) = 2;
    LODWORD(v5) = 0;
    LOWORD(v4) = 0;
    return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:275 mediaBitrate:710000 maxPacketsPerSecond:650000 repairedNwBitrate:30 keyFrameInterval:1250000 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v4 isSubStream:0 metadata:&unk_1F579CBA0 payloads:0x40000000600 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
  }

  else
  {
    if (index)
    {
      if (index == 1)
      {
        LODWORD(v6) = 0;
        BYTE4(v5) = 1;
        LODWORD(v5) = 0;
        LOWORD(v4) = 0;
        return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:135 mediaBitrate:340000 maxPacketsPerSecond:300000 repairedNwBitrate:30 keyFrameInterval:740000 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v4 isSubStream:0 metadata:&unk_1F579CB88 payloads:0x40000000600 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
      }

      return 0;
    }

    LODWORD(v6) = 0;
    BYTE4(v5) = 0;
    LODWORD(v5) = 0;
    LOWORD(v4) = 0;
    return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:96 mediaBitrate:160000 maxPacketsPerSecond:150000 repairedNwBitrate:15 keyFrameInterval:320000 framerate:0 rtpSampleRate:0x5DC00000000FLL isTemporal:v4 isSubStream:0 metadata:&unk_1F579CB70 payloads:0x40000000600 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
  }
}

+ (id)defaultsForBDATWithStreamIndex:(unsigned __int8)index
{
  if (index == 2)
  {
    LODWORD(v6) = 0;
    BYTE4(v5) = 2;
    LODWORD(v5) = 0;
    LOWORD(v4) = 1;
    return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:140 mediaBitrate:130640 maxPacketsPerSecond:110000 repairedNwBitrate:30 keyFrameInterval:0 framerate:0 rtpSampleRate:0x5DC000000000 isTemporal:v4 isSubStream:0 metadata:&unk_1F579CBE8 payloads:0 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
  }

  else if (index == 1)
  {
    LODWORD(v6) = 0;
    BYTE4(v5) = 1;
    LODWORD(v5) = 0;
    LOWORD(v4) = 1;
    return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:98 mediaBitrate:80560 maxPacketsPerSecond:70000 repairedNwBitrate:15 keyFrameInterval:0 framerate:0 rtpSampleRate:0x5DC000000000 isTemporal:v4 isSubStream:0 metadata:&unk_1F579CBD0 payloads:0 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
  }

  else
  {
    return 0;
  }
}

+ (id)defaultsForBDATV2WithStreamIndex:(unsigned __int8)index
{
  if (index != 1)
  {
    return 0;
  }

  LODWORD(v6) = 0;
  BYTE4(v5) = 1;
  LODWORD(v5) = 0;
  LOWORD(v4) = 0;
  return [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:98 mediaBitrate:110000 maxPacketsPerSecond:97000 repairedNwBitrate:30 keyFrameInterval:0 framerate:0 rtpSampleRate:0x5DC000000000 isTemporal:v4 isSubStream:0 metadata:&unk_1F579CC00 payloads:0 codecs:v5 width:v6 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
}

+ (id)defaultsForStreamGroupID:(unsigned int)d streamIndex:(unsigned __int8)index
{
  indexCopy = index;
  v31 = *MEMORY[0x1E69E9840];
  if (d > 1835623281)
  {
    if (d <= 1935897188)
    {
      if (d == 1835623282)
      {
        if (index != 1)
        {
          if (!index)
          {
            LODWORD(v20) = 0;
            BYTE4(v19) = 0;
            LODWORD(v19) = 1;
            LOWORD(v16) = 0;
            result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:25 mediaBitrate:28933 maxPacketsPerSecond:13200 repairedNwBitrate:16 keyFrameInterval:0 framerate:0 rtpSampleRate:0x5DC000000000 isTemporal:v16 isSubStream:0 metadata:&unk_1F579CC18 payloads:0 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
            goto LABEL_95;
          }

          v12 = +[VCHardwareSettings deviceClass];
          if (indexCopy == 2 && v12 == 8)
          {
            LODWORD(v20) = 0;
            BYTE4(v19) = 2;
            LODWORD(v19) = 1;
            LOWORD(v16) = 0;
            result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:240 mediaBitrate:156800 maxPacketsPerSecond:64000 repairedNwBitrate:100 keyFrameInterval:0 framerate:0 rtpSampleRate:0x5DC000000000 isTemporal:v16 isSubStream:0 metadata:&unk_1F579CC48 payloads:0 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        LODWORD(v20) = 0;
        BYTE4(v19) = 1;
        LODWORD(v19) = 1;
        v17 = &unk_1F579CC30;
        v18 = 0;
        LOWORD(v16) = 0;
        v15 = 0x5DC000000000;
        v7 = 200;
      }

      else
      {
        if (d != 1835623287)
        {
          goto LABEL_96;
        }

        if (index != 1)
        {
          if (index)
          {
            goto LABEL_96;
          }

          LODWORD(v20) = 0;
          BYTE4(v19) = 0;
          LODWORD(v19) = 1;
          v17 = &unk_1F579CEA0;
          v18 = 0;
          LOWORD(v16) = 0;
          v15 = 0xBB8000000000;
          v7 = 27;
          goto LABEL_46;
        }

        LODWORD(v20) = 0;
        BYTE4(v19) = 1;
        LODWORD(v19) = 1;
        v17 = &unk_1F579CEB8;
        v18 = 0;
        LOWORD(v16) = 0;
        v15 = 0xBB8000000000;
        v7 = 162;
      }
    }

    else
    {
      if (d == 1935897189)
      {
        if (index > 5)
        {
          if (index > 8)
          {
            if (index == 9)
            {
              LODWORD(v20) = 1;
              BYTE4(v19) = 9;
              LODWORD(v19) = 0;
              v18 = 0x41A00000672;
              v17 = &unk_1F579CE10;
              LOWORD(v16) = 0;
              v15 = 0xBB800000000FLL;
              v7 = 150;
              v9 = 2200000;
              v10 = 2000000;
LABEL_87:
              v11 = 15;
              goto LABEL_94;
            }

            if (index == 10)
            {
              LODWORD(v20) = 1;
              BYTE4(v19) = 10;
              LODWORD(v19) = 0;
              v18 = 0x41A00000672;
              v17 = &unk_1F579CE28;
              LOWORD(v16) = 0;
              v15 = 0xBB800000001ELL;
              v7 = 350;
              v9 = 3300000;
              v10 = 3000000;
              goto LABEL_93;
            }

            if (index != 11)
            {
              goto LABEL_96;
            }

            LODWORD(v20) = 1;
            BYTE4(v19) = 11;
            LODWORD(v19) = 0;
            v18 = 0x41A00000672;
            v17 = &unk_1F579CE40;
            LOWORD(v16) = 0;
            v15 = 0xBB800000003CLL;
            v7 = 390;
            v9 = 4400000;
            v10 = 4000000;
          }

          else if (index == 6)
          {
            LODWORD(v20) = 1;
            BYTE4(v19) = 6;
            LODWORD(v19) = 0;
            v18 = 0x41A00000672;
            v17 = &unk_1F579CDC8;
            LOWORD(v16) = 1;
            v15 = 0xBB800000003CLL;
            v7 = 700;
            v9 = 4620000;
            v10 = 4200000;
          }

          else
          {
            if (index != 7)
            {
              LODWORD(v20) = 1;
              BYTE4(v19) = 8;
              LODWORD(v19) = 0;
              LOWORD(v16) = 0;
              result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:120 mediaBitrate:1100000 maxPacketsPerSecond:1000000 repairedNwBitrate:5 keyFrameInterval:0 framerate:0 rtpSampleRate:0xBB8000000005 isTemporal:v16 isSubStream:0 metadata:&unk_1F579CDF8 payloads:0x41A00000672 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
              goto LABEL_95;
            }

            LODWORD(v20) = 1;
            BYTE4(v19) = 7;
            LODWORD(v19) = 0;
            v18 = 0x41A00000672;
            v17 = &unk_1F579CDE0;
            LOWORD(v16) = 1;
            v15 = 0xBB800000003CLL;
            v7 = 950;
            v9 = 5500000;
            v10 = 5000000;
          }
        }

        else if (index > 2)
        {
          if (index == 3)
          {
            LODWORD(v20) = 1;
            BYTE4(v19) = 3;
            LODWORD(v19) = 0;
            v18 = 0x41A00000672;
            v17 = &unk_1F579CD80;
            LOWORD(v16) = 1;
            v15 = 0xBB800000003CLL;
            v7 = 350;
            v9 = 1430000;
            v10 = 1300000;
          }

          else
          {
            LODWORD(v20) = 1;
            if (index == 4)
            {
              BYTE4(v19) = 4;
              LODWORD(v19) = 0;
              v18 = 0x41A00000672;
              v17 = &unk_1F579CD98;
              LOWORD(v16) = 1;
              v15 = 0xBB800000003CLL;
              v7 = 390;
              v9 = 2310000;
              v10 = 2100000;
            }

            else
            {
              BYTE4(v19) = 5;
              LODWORD(v19) = 0;
              v18 = 0x41A00000672;
              v17 = &unk_1F579CDB0;
              LOWORD(v16) = 1;
              v15 = 0xBB800000003CLL;
              v7 = 450;
              v9 = 3520000;
              v10 = 3200000;
            }
          }
        }

        else
        {
          switch(index)
          {
            case 0u:
              LODWORD(v20) = 1;
              BYTE4(v19) = 0;
              LODWORD(v19) = 0;
              LOWORD(v16) = 0;
              result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:100 mediaBitrate:366666 maxPacketsPerSecond:333333 repairedNwBitrate:10 keyFrameInterval:0 framerate:0 rtpSampleRate:0xBB800000000ALL isTemporal:v16 isSubStream:0 metadata:&unk_1F579CD38 payloads:0x41A00000672 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
              goto LABEL_95;
            case 1u:
              LODWORD(v20) = 1;
              BYTE4(v19) = 1;
              LODWORD(v19) = 0;
              v18 = 0x41A00000672;
              v17 = &unk_1F579CD50;
              LOWORD(v16) = 1;
              v15 = 0xBB800000003CLL;
              v7 = 120;
              v9 = 550000;
              v10 = 500000;
              break;
            case 2u:
              LODWORD(v20) = 1;
              BYTE4(v19) = 2;
              LODWORD(v19) = 0;
              v18 = 0x41A00000672;
              v17 = &unk_1F579CD68;
              LOWORD(v16) = 1;
              v15 = 0xBB800000003CLL;
              v7 = 150;
              v9 = 880000;
              v10 = 800000;
              break;
            default:
              goto LABEL_96;
          }
        }

        v11 = 60;
        goto LABEL_94;
      }

      if (d != 1936290409)
      {
        if (d != 1937339233)
        {
          goto LABEL_96;
        }

        if (index == 1)
        {
          LODWORD(v20) = 0;
          BYTE4(v19) = 1;
          LODWORD(v19) = 2;
          v17 = &unk_1F579CD20;
          v18 = 0;
          v9 = 157600;
          LOWORD(v16) = 0;
          v15 = 0xBB8000000000;
          v7 = 332;
          v10 = 128000;
LABEL_63:
          v11 = 25;
          goto LABEL_94;
        }

        if (index)
        {
          goto LABEL_96;
        }

        LODWORD(v20) = 0;
        BYTE4(v19) = 0;
        LODWORD(v19) = 2;
        v17 = &unk_1F579CD08;
        v18 = 0;
        LOWORD(v16) = 0;
        v15 = 0xBB8000000000;
        v7 = 101;
        v8 = 14064;
LABEL_62:
        v9 = v8 | 0x10000u;
        v10 = 48000;
        goto LABEL_63;
      }

      if (index != 1)
      {
        if (index)
        {
          goto LABEL_96;
        }

        LODWORD(v20) = 0;
        BYTE4(v19) = 0;
        LODWORD(v19) = 1;
        v17 = &unk_1F579CEE8;
        v18 = 0;
        LOWORD(v16) = 0;
        v15 = 0xBB8000000000;
        v7 = 101;
LABEL_46:
        v9 = 27066;
        v10 = 13200;
        v11 = 17;
LABEL_94:
        result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:v7 mediaBitrate:v9 maxPacketsPerSecond:v10 repairedNwBitrate:v11 keyFrameInterval:0 framerate:0 rtpSampleRate:v15 isTemporal:v16 isSubStream:0 metadata:v17 payloads:v18 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
        goto LABEL_95;
      }

      LODWORD(v20) = 0;
      BYTE4(v19) = 1;
      LODWORD(v19) = 1;
      v17 = &unk_1F579CF00;
      v18 = 0;
      LOWORD(v16) = 0;
      v15 = 0xBB8000000000;
      v7 = 332;
    }

    v8 = 5664;
    goto LABEL_62;
  }

  if (d <= 1667329398)
  {
    if (d == 1650745716)
    {
      if (VCFeatureFlagManager_PersonaV2Enabled())
      {
        result = [VCMediaNegotiationBlobV2StreamGroupStream defaultsForBDATV2WithStreamIndex:indexCopy];
      }

      else
      {
        result = [VCMediaNegotiationBlobV2StreamGroupStream defaultsForBDATWithStreamIndex:indexCopy];
      }
    }

    else
    {
      if (d != 1667329381)
      {
        goto LABEL_96;
      }

      if (index <= 2)
      {
        if (index)
        {
          if (index == 1)
          {
            LODWORD(v20) = 3;
            BYTE4(v19) = 1;
            LODWORD(v19) = 0;
            LOWORD(v16) = 0;
            result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:62 mediaBitrate:63900 maxPacketsPerSecond:50000 repairedNwBitrate:15 keyFrameInterval:130000 framerate:0 rtpSampleRate:0x5DC00000000FLL isTemporal:v16 isSubStream:0 metadata:&unk_1F579CC78 payloads:0xC0000000C0 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
            goto LABEL_95;
          }

          if (index == 2)
          {
            LODWORD(v20) = 3;
            BYTE4(v19) = 2;
            LODWORD(v19) = 0;
            LOWORD(v16) = 0;
            result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:125 mediaBitrate:114000 maxPacketsPerSecond:100000 repairedNwBitrate:15 keyFrameInterval:230000 framerate:0 rtpSampleRate:0x5DC00000000FLL isTemporal:v16 isSubStream:0 metadata:&unk_1F579CC90 payloads:0xF0000000F0 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        LODWORD(v20) = 3;
        BYTE4(v19) = 0;
        LODWORD(v19) = 0;
        v17 = &unk_1F579CC60;
        v18 = 0x6000000060;
        LOWORD(v16) = 0;
        v15 = 0x5DC00000000FLL;
        v7 = 35;
        v9 = 35100;
        v10 = 20000;
        goto LABEL_87;
      }

      if (index > 4)
      {
        if (index == 5)
        {
          LODWORD(v20) = 3;
          BYTE4(v19) = 5;
          LODWORD(v19) = 0;
          LOWORD(v16) = 0;
          result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:1000 mediaBitrate:902000 maxPacketsPerSecond:800000 repairedNwBitrate:30 keyFrameInterval:1370000 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v16 isSubStream:0 metadata:&unk_1F579CCD8 payloads:0x2D0000002D0 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
          goto LABEL_95;
        }

        if (index == 6)
        {
          LODWORD(v20) = 3;
          BYTE4(v19) = 6;
          LODWORD(v19) = 0;
          LOWORD(v16) = 0;
          result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:1800 mediaBitrate:1780000 maxPacketsPerSecond:1600000 repairedNwBitrate:30 keyFrameInterval:2710000 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v16 isSubStream:0 metadata:&unk_1F579CCF0 payloads:0x44000000440 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      LODWORD(v20) = 3;
      if (index == 3)
      {
        BYTE4(v19) = 3;
        LODWORD(v19) = 0;
        LOWORD(v16) = 0;
        result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:250 mediaBitrate:225400 maxPacketsPerSecond:200000 repairedNwBitrate:30 keyFrameInterval:460500 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v16 isSubStream:0 metadata:&unk_1F579CCA8 payloads:0x14000000140 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
      }

      else
      {
        BYTE4(v19) = 4;
        LODWORD(v19) = 0;
        LOWORD(v16) = 0;
        result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:425 mediaBitrate:451000 maxPacketsPerSecond:400000 repairedNwBitrate:30 keyFrameInterval:961000 framerate:0 rtpSampleRate:0x5DC00000001ELL isTemporal:v16 isSubStream:0 metadata:&unk_1F579CCC0 payloads:0x1E0000001E0 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
      }
    }

LABEL_95:
    if (result)
    {
      return result;
    }

    goto LABEL_96;
  }

  switch(d)
  {
    case 0x63616D77u:
      if (index == 2)
      {
        LODWORD(v20) = 3;
        BYTE4(v19) = 2;
        LODWORD(v19) = 0;
        v18 = 0x2D0000002D0;
        v17 = &unk_1F579CE88;
        v9 = 882600;
        LOWORD(v16) = 0;
        v15 = 0x15F900000001ELL;
        v7 = 1250;
        v10 = 800000;
      }

      else
      {
        if (index != 1)
        {
          if (index)
          {
            break;
          }

          LODWORD(v20) = 3;
          BYTE4(v19) = 0;
          LODWORD(v19) = 0;
          v17 = &unk_1F579CE58;
          v18 = 0xC0000000C0;
          LOWORD(v16) = 0;
          v15 = 0x15F900000000FLL;
          v7 = 93;
          v9 = 63300;
          v10 = 50000;
          goto LABEL_87;
        }

        LODWORD(v20) = 3;
        BYTE4(v19) = 1;
        LODWORD(v19) = 0;
        v18 = 0x14000000140;
        v17 = &unk_1F579CE70;
        LOWORD(v16) = 0;
        v15 = 0x15F900000001ELL;
        v7 = 400;
        v9 = 220640;
        v10 = 200000;
      }

LABEL_93:
      v11 = 30;
      goto LABEL_94;
    case 0x63617074u:
      if (!index)
      {
        LODWORD(v20) = 0;
        BYTE4(v19) = 0;
        LODWORD(v19) = 0;
        LOWORD(v16) = 0;
        result = [VCMediaNegotiatorStreamGroupStreamConfiguration configWithQualityIndex:"configWithQualityIndex:nwBitrate:mediaBitrate:maxPacketsPerSecond:repairedNwBitrate:keyFrameInterval:framerate:rtpSampleRate:isTemporal:isSubStream:metadata:payloads:codecs:width:height:audioChannelCount:streamIndex:coordinateSystem:" nwBitrate:15 mediaBitrate:5000 maxPacketsPerSecond:5000 repairedNwBitrate:2 keyFrameInterval:0 framerate:0 rtpSampleRate:0x5DC000000000 isTemporal:v16 isSubStream:0 metadata:&unk_1F579CED0 payloads:0 codecs:v19 width:v20 height:? audioChannelCount:? streamIndex:? coordinateSystem:?];
        goto LABEL_95;
      }

      break;
    case 0x66747874u:
      if (VCFeatureFlagManager_PersonaV2Enabled())
      {
        result = [VCMediaNegotiationBlobV2StreamGroupStream defaultsForFTXTV2WithStreamIndex:indexCopy];
      }

      else
      {
        result = [VCMediaNegotiationBlobV2StreamGroupStream defaultsForFTXTWithStreamIndex:indexCopy];
      }

      goto LABEL_95;
  }

LABEL_96:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v22 = v13;
      v23 = 2080;
      v24 = "+[VCMediaNegotiationBlobV2StreamGroupStream(Utils) defaultsForStreamGroupID:streamIndex:]";
      v25 = 1024;
      v26 = 933;
      v27 = 2080;
      v28 = FourccToCStr(d);
      v29 = 1024;
      v30 = indexCopy;
      _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate config for known stream type. streamGroupID=%s streamIndex=%d!", buf, 0x2Cu);
    }
  }

  return 0;
}

+ (BOOL)isFallbackStreamWithStreamGroupID:(unsigned int)d streamConfig:(id)config
{
  if (d != 1935897189)
  {
    return 0;
  }

  if ([config isTemporalStream])
  {
    return 0;
  }

  return [config qualityIndex] > 0x77;
}

+ (unsigned)metadataWithStreamConfig:(id)config
{
  if ([config isTemporalStream])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | [config isSubStream];
  v6 = v5 | (4 * ([config keyFrameInterval] == 0));
  return v6 | (8 * ([objc_msgSend(config "codecs")] != 0));
}

+ (void)updateStreamConfig:(id)config withMetadata:(unsigned int)metadata
{
  [config setIsSubStream:metadata & 1];
  [config setIsTemporalStream:(metadata >> 1) & 1];

  [config setKeyFrameInterval:((metadata >> 2) & 1) == 0];
}

+ (unsigned)payloadFlagWithPayload:(int)payload
{
  if (payload > 107)
  {
    if (payload <= 118)
    {
      if (payload == 108)
      {
        return 32;
      }

      if (payload == 110)
      {
        return 4;
      }
    }

    else
    {
      switch(payload)
      {
        case 'w':
          return 8;
        case '{':
          return 1;
        case '|':
          return 512;
      }
    }
  }

  else if (payload <= 99)
  {
    if (payload == 13)
    {
      return 256;
    }

    if (payload == 20)
    {
      return 128;
    }
  }

  else
  {
    switch(payload)
    {
      case 'd':
        return 2;
      case 'e':
        return 64;
      case 'h':
        return 16;
    }
  }

  return 0;
}

+ (BOOL)payloadsWithStreamConfig:(id)config payloadBitmap:(unsigned int *)bitmap
{
  v19 = *MEMORY[0x1E69E9840];
  if (bitmap)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    payloads = [config payloads];
    v6 = [payloads countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(payloads);
          }

          v11 = +[VCMediaNegotiationBlobV2StreamGroupStream payloadFlagWithPayload:](VCMediaNegotiationBlobV2StreamGroupStream, "payloadFlagWithPayload:", [*(*(&v15 + 1) + 8 * i) unsignedIntValue]);
          if (!v11)
          {
            +[VCMediaNegotiationBlobV2StreamGroupStream(Utils) payloadsWithStreamConfig:payloadBitmap:];
            return v13;
          }

          v8 |= v11;
        }

        v7 = [payloads countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }

    *bitmap = v8;
    return 1;
  }

  else
  {
    +[VCMediaNegotiationBlobV2StreamGroupStream(Utils) payloadsWithStreamConfig:payloadBitmap:];
    return v13;
  }
}

+ (BOOL)payloadSpecWithStreamConfig:(id)config payloadConfigs:(id)configs payloadSpecs:(unsigned int *)specs
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  codecs = [config codecs];
  v8 = [codecs countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(codecs);
        }

        unsignedIntValue = [*(*(&v17 + 1) + 8 * i) unsignedIntValue];
        if (configs && [configs count] <= unsignedIntValue)
        {
          +[VCMediaNegotiationBlobV2StreamGroupStream(Utils) payloadSpecWithStreamConfig:payloadConfigs:payloadSpecs:];
          return v15;
        }

        v10 |= 1 << unsignedIntValue;
      }

      v9 = [codecs countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  *specs = v10;
  return 1;
}

+ (int)payloadsWithPayloadBit:(int)bit
{
  if (bit > 31)
  {
    if (bit <= 127)
    {
      if (bit == 32)
      {
        return 108;
      }

      if (bit == 64)
      {
        return 101;
      }
    }

    else
    {
      switch(bit)
      {
        case 128:
          return 20;
        case 256:
          return 13;
        case 512:
          return 124;
      }
    }
  }

  else if (bit <= 3)
  {
    if (bit == 1)
    {
      return 123;
    }

    if (bit == 2)
    {
      return 100;
    }
  }

  else
  {
    switch(bit)
    {
      case 4:
        return 110;
      case 8:
        return 119;
      case 16:
        return 104;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaNegotiationBlobV2StreamGroupStream(Utils) payloadsWithPayloadBit:v4];
    }
  }

  return 128;
}

- (unsigned)actualStreamIndex
{
  v5 = *MEMORY[0x1E69E9840];
  *&v4[3] = 0;
  *v4 = 0;
  if ([(NSData *)self->_requiredPackedPayload length]< 7)
  {
    if ((*&self->_has & 0x1000) != 0)
    {
      return self->_streamIndex;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    [(NSData *)self->_requiredPackedPayload getBytes:v4 length:7];
    return v4[0];
  }
}

- (unsigned)actualMaxNetworkBitrateWithDefaultConfig:(id)config
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*&self->_has & 8) != 0)
  {
    v6 = &OBJC_IVAR___VCMediaNegotiationBlobV2StreamGroupStream__maxNetworkBitrateV2;
    return *(&self->super.super.isa + *v6);
  }

  v9 = 0;
  v8 = 0;
  if ([(VCMediaNegotiationBlobV2StreamGroupStream *)self readOptionalPacketPayload:&v8])
  {
    return HIWORD(v8);
  }

  if ((*&self->_has & 4) != 0)
  {
    v6 = &OBJC_IVAR___VCMediaNegotiationBlobV2StreamGroupStream__maxNetworkBitrate;
    return *(&self->super.super.isa + *v6);
  }

  if (config)
  {
    selfCopy = config;
  }

  else
  {
    selfCopy = self;
  }

  return [selfCopy maxNetworkBitrate];
}

- (unsigned)actualMaxRepairedNetworkBitrateWithDefaultConfig:(id)config
{
  if ((*&self->_has & 0x200) != 0)
  {
    v4 = &OBJC_IVAR___VCMediaNegotiationBlobV2StreamGroupStream__repairedMaxNetworkBitrateV2;
    return *(&self->super.super.isa + *v4);
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v4 = &OBJC_IVAR___VCMediaNegotiationBlobV2StreamGroupStream__repairedMaxNetworkBitrate;
    return *(&self->super.super.isa + *v4);
  }

  if (config)
  {
    self = config;
  }

  return [(VCMediaNegotiationBlobV2StreamGroupStream *)self repairedMaxNetworkBitrate];
}

- (unsigned)actualAudioChannelCountWithDefaultConfig:(id)config
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = 0;
  if ([(VCMediaNegotiationBlobV2StreamGroupStream *)self readOptionalPacketPayload:&v7])
  {
    return v8;
  }

  if (*&self->_has)
  {
    return self->_audioChannelCount;
  }

  if (config)
  {
    selfCopy = config;
  }

  else
  {
    selfCopy = self;
  }

  return [selfCopy audioChannelCount];
}

- (unsigned)actualMetadataWithDefaultConfig:(id)config
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0;
  if ([(VCMediaNegotiationBlobV2StreamGroupStream *)self readOptionalPacketPayload:&v6])
  {
    return v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    return self->_metadata;
  }

  if (config)
  {
    return [VCMediaNegotiationBlobV2StreamGroupStream metadataWithStreamConfig:config];
  }

  return [(VCMediaNegotiationBlobV2StreamGroupStream *)self metadata];
}

- (unsigned)actualQualityIndexWithDefaultConfig:(id)config
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_qualityIndex;
  }

  if (config)
  {
    self = config;
  }

  return [(VCMediaNegotiationBlobV2StreamGroupStream *)self qualityIndex];
}

- (BOOL)updatePayloadSpecsForConfig:(id)config defaultConfig:(id)defaultConfig
{
  v22 = *MEMORY[0x1E69E9840];
  [config resetCodecs];
  if (defaultConfig && (*&self->_has & 0x20) == 0)
  {
    if (config != defaultConfig)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      payloads = [defaultConfig payloads];
      v8 = [payloads countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(payloads);
            }

            [config addPayload:{objc_msgSend(*(*(&v18 + 1) + 8 * i), "unsignedIntValue")}];
          }

          v9 = [payloads countByEnumeratingWithState:&v18 objects:v17 count:16];
        }

        while (v9);
      }
    }

LABEL_22:
    LOBYTE(v15) = 1;
    return v15;
  }

  payloadSpecOrPayloads = [(VCMediaNegotiationBlobV2StreamGroupStream *)self payloadSpecOrPayloads];
  [config resetPayloads];
  if ((payloadSpecOrPayloads & 0xFFF) != 0)
  {
    v13 = 1;
    do
    {
      if ((payloadSpecOrPayloads & v13) != 0)
      {
        [config addPayload:{+[VCMediaNegotiationBlobV2StreamGroupStream payloadsWithPayloadBit:](VCMediaNegotiationBlobV2StreamGroupStream, "payloadsWithPayloadBit:", v13)}];
        payloadSpecOrPayloads &= ~v13;
      }

      v13 = (2 * v13);
    }

    while ((payloadSpecOrPayloads & 0xFFF) != 0);
  }

  if (!payloadSpecOrPayloads)
  {
    goto LABEL_22;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_21;
  }

  v14 = VRTraceErrorLogLevelToCSTR();
  v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v15)
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) updatePayloadSpecsForConfig:v14 defaultConfig:self];
LABEL_21:
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)updatePayloadSpecsForConfig:(id)config defaultConfig:(id)defaultConfig payloadConfigs:(id)configs
{
  v38 = *MEMORY[0x1E69E9840];
  [config resetPayloads];
  if (!defaultConfig || (*&self->_has & 0x20) != 0)
  {
    payloadSpecOrPayloads = [(VCMediaNegotiationBlobV2StreamGroupStream *)self payloadSpecOrPayloads];
    [config resetCodecs];
    if ([configs count])
    {
      v17 = 0;
      do
      {
        if ((payloadSpecOrPayloads & (1 << v17)) != 0)
        {
          [config addCodec:v17];
          payloadSpecOrPayloads &= ~(1 << v17);
        }

        v17 = (v17 + 1);
      }

      while ([configs count] > v17);
    }

    if (payloadSpecOrPayloads)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v15)
        {
          return v15;
        }

        [VCMediaNegotiationBlobV2StreamGroupStream(Utils) updatePayloadSpecsForConfig:v18 defaultConfig:self payloadConfigs:?];
      }

LABEL_38:
      LOBYTE(v15) = 0;
      return v15;
    }

    goto LABEL_34;
  }

  if (config != defaultConfig)
  {
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    codecs = [defaultConfig codecs];
    v10 = [codecs countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(codecs);
        }

        unsignedIntValue = [*(*(&v34 + 1) + 8 * v13) unsignedIntValue];
        if ([configs count] <= unsignedIntValue)
        {
          break;
        }

        [config addCodec:unsignedIntValue];
        if (v11 == ++v13)
        {
          v11 = [codecs countByEnumeratingWithState:&v34 objects:v33 count:16];
          LOBYTE(v15) = 1;
          if (v11)
          {
            goto LABEL_6;
          }

          return v15;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_38;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v15)
      {
        [VCMediaNegotiationBlobV2StreamGroupStream(Utils) updatePayloadSpecsForConfig:v19 defaultConfig:? payloadConfigs:?];
        goto LABEL_38;
      }

      return v15;
    }

LABEL_34:
    LOBYTE(v15) = 1;
    return v15;
  }

  v31 = 0uLL;
  v32 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  codecs2 = [config codecs];
  v21 = [codecs2 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = v21;
  v23 = *v30;
LABEL_27:
  v24 = 0;
  while (1)
  {
    if (*v30 != v23)
    {
      objc_enumerationMutation(codecs2);
    }

    unsignedIntValue2 = [*(*(&v29 + 1) + 8 * v24) unsignedIntValue];
    if ([configs count] <= unsignedIntValue2)
    {
      break;
    }

    if (v22 == ++v24)
    {
      v22 = [codecs2 countByEnumeratingWithState:&v29 objects:v28 count:16];
      LOBYTE(v15) = 1;
      if (v22)
      {
        goto LABEL_27;
      }

      return v15;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_38;
  }

  v26 = VRTraceErrorLogLevelToCSTR();
  v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v15)
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) updatePayloadSpecsForConfig:v26 defaultConfig:? payloadConfigs:?];
    goto LABEL_38;
  }

  return v15;
}

+ (void)appendMetadata:(unsigned int)metadata toString:(id)string
{
  [string appendFormat:@" metadata=["];
  if ((metadata & 0xF) != 0)
  {
    v6 = @"%@";
    v7 = 1;
    while ((v7 & metadata) == 0)
    {
LABEL_16:
      metadata &= ~v7;
      v7 = (2 * v7);
      if ((metadata & 0xF) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v7 <= 3)
    {
      v8 = @"SubStream";
      if (v7 == 1)
      {
        goto LABEL_15;
      }

      if (v7 == 2)
      {
        v8 = @"TemporalStream";
        goto LABEL_15;
      }
    }

    else
    {
      switch(v7)
      {
        case 4:
          v8 = @"onDemand";
          goto LABEL_15;
        case 8:
          v8 = @"UsePayloadSpec";
          goto LABEL_15;
        case 0xF:
          v8 = @"SupportedMask";
LABEL_15:
          [string appendFormat:v6, v8];
          v6 = @",%@";
          goto LABEL_16;
      }
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
    goto LABEL_15;
  }

LABEL_17:

  [string appendString:@"]"];
}

+ (void)appendPayloadsToString:(id)string streamConfig:(id)config
{
  v19 = *MEMORY[0x1E69E9840];
  [string appendFormat:@" payloads=["];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  payloads = [config payloads];
  v7 = [payloads countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = @"%@";
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(payloads);
        }

        v12 = +[VCMediaNegotiationBlobV2StreamGroupStream payloadFlagWithPayload:](VCMediaNegotiationBlobV2StreamGroupStream, "payloadFlagWithPayload:", [*(*(&v15 + 1) + 8 * v11) unsignedIntValue]);
        if (v12 <= 31)
        {
          if (v12 > 3)
          {
            switch(v12)
            {
              case 4:
                v13 = @"Data";
                goto LABEL_37;
              case 8:
                v13 = @"OPUS";
                goto LABEL_37;
              case 0x10:
                v13 = @"AACELD_24000";
                goto LABEL_37;
            }
          }

          else
          {
            switch(v12)
            {
              case 0:
                v13 = @"Invalid";
                goto LABEL_37;
              case 1:
                v13 = @"H264";
                goto LABEL_37;
              case 2:
                v13 = @"HEVC";
                goto LABEL_37;
            }
          }
        }

        else if (v12 <= 255)
        {
          switch(v12)
          {
            case 0x20:
              v13 = @"EVS_32000";
              goto LABEL_37;
            case 0x40:
              v13 = @"AACELD_48000";
              goto LABEL_37;
            case 0x80:
              v13 = @"RED";
              goto LABEL_37;
          }
        }

        else if (v12 > 2047)
        {
          if (v12 == 2048)
          {
            v13 = @"ACC24";
            goto LABEL_37;
          }

          if (v12 == 4095)
          {
            v13 = @"SupportedMask";
            goto LABEL_37;
          }
        }

        else
        {
          if (v12 == 256)
          {
            v13 = @"CN";
            goto LABEL_37;
          }

          if (v12 == 512)
          {
            v13 = @"MOCAP";
            goto LABEL_37;
          }
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
LABEL_37:
        [string appendFormat:v9, v13];
        ++v11;
        v9 = @",%@";
      }

      while (v8 != v11);
      v8 = [payloads countByEnumeratingWithState:&v15 objects:v14 count:16];
      v9 = @",%@";
    }

    while (v8);
  }

  [string appendString:@"]"];
}

+ (void)appendPayloadsSpecsToString:(id)string streamConfig:(id)config
{
  v17 = *MEMORY[0x1E69E9840];
  [string appendFormat:@" payloadSpecs=["];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  codecs = [config codecs];
  v7 = [codecs countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    v10 = &stru_1F570E008;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(codecs);
        }

        [string appendFormat:@"%@%@", v10, *(*(&v13 + 1) + 8 * v11++)];
        v10 = @",";
      }

      while (v8 != v11);
      v8 = [codecs countByEnumeratingWithState:&v13 objects:v12 count:16];
      v10 = @",";
    }

    while (v8);
  }

  [string appendString:@"]"];
}

- (id)dataRequiredPacketPayload
{
  v9 = *MEMORY[0x1E69E9840];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    streamIndex = self->_streamIndex;
  }

  else
  {
    LOBYTE(streamIndex) = -1;
  }

  v6 = streamIndex;
  rtpSSRC = self->_rtpSSRC;
  v7 = bswap32(rtpSSRC);
  if ((has & 0x800) != 0)
  {
    rtpSSRC = self->_streamID;
  }

  v8 = bswap32(rtpSSRC) >> 16;
  return [MEMORY[0x1E695DEF0] dataWithBytes:&v6 length:7];
}

- (BOOL)readRequiredPacketPayloadWithStreamConfig:(id)config
{
  v8 = *MEMORY[0x1E69E9840];
  *&v7[3] = 0;
  *v7 = 0;
  v5 = [(NSData *)self->_requiredPackedPayload length];
  if (v5 >= 7)
  {
    [(NSData *)self->_requiredPackedPayload getBytes:v7 length:7];
    [config setSsrc:bswap32(*&v7[1])];
    [config setStreamID:bswap32(*&v7[5]) >> 16];
    [config setStreamIndex:v7[0]];
  }

  return v5 > 6;
}

- (id)optionalPackedPayloaWithDefaultConfig:(id)config
{
  v13 = *MEMORY[0x1E69E9840];
  if (config)
  {
    metadata = [VCMediaNegotiationBlobV2StreamGroupStream metadataWithStreamConfig:config];
  }

  else
  {
    metadata = 0;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    metadata = self->_metadata;
  }

  if (metadata >= 0x10000)
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) optionalPackedPayloaWithDefaultConfig:];
    return v12;
  }

  v10[0] = bswap32(metadata) >> 16;
  if ((has & 4) != 0)
  {
    maxNetworkBitrate = self->_maxNetworkBitrate;
  }

  else
  {
    maxNetworkBitrate = [config maxNetworkBitrate];
  }

  if (maxNetworkBitrate >> 19 >= 0x7D)
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) optionalPackedPayloaWithDefaultConfig:];
    return v12;
  }

  v10[1] = bswap32(maxNetworkBitrate / 0x3E8) >> 16;
  if (*&self->_has)
  {
    audioChannelCount = self->_audioChannelCount;
  }

  else
  {
    audioChannelCount = [config audioChannelCount];
  }

  if (audioChannelCount >= 0x100)
  {
    [VCMediaNegotiationBlobV2StreamGroupStream(Utils) optionalPackedPayloaWithDefaultConfig:];
    return v12;
  }

  v11 = audioChannelCount;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:5];
}

- (BOOL)readOptionalPacketPayload:(tagStreamGroupStreamOptionalPackedPayload *)payload
{
  if (!payload)
  {
    return 0;
  }

  if ([(NSData *)self->_optionalPackedPayload length]< 5)
  {
    return 0;
  }

  [(NSData *)self->_optionalPackedPayload getBytes:payload length:5];
  payload->var0 = bswap32(payload->var0) >> 16;
  payload->var1 = 1000 * (bswap32(payload->var1) >> 16);
  return 1;
}

- (id)compressWithConfig:(id)config
{
  selfCopy = [(VCMediaNegotiationBlobV2StreamGroupStream *)self requiredPayloadCompressWithConfig:?];
  v6 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  result = [(VCMediaNegotiationBlobV2StreamGroupStream *)selfCopy optionalPayloadCompressWithConfig:config];
  if (!result)
  {
    return v6;
  }

  return result;
}

- (unsigned)mediaStreamGroupCoordinateSystem
{
  if ([(VCMediaNegotiationBlobV2StreamGroupStream *)self coordinateSystem]> 3 || ![(VCMediaNegotiationBlobV2StreamGroupStream *)self coordinateSystem])
  {
    return 0;
  }

  return [(VCMediaNegotiationBlobV2StreamGroupStream *)self coordinateSystem];
}

- (BOOL)setNegotiatedCoordinateSystemFromCoordinateSystem:(unsigned int)system
{
  if (system <= 3)
  {
    [(VCMediaNegotiationBlobV2StreamGroupStream *)self setCoordinateSystem:*&system];
  }

  return system < 4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2StreamGroupStream *)self setRequiredPackedPayload:0];
  [(VCMediaNegotiationBlobV2StreamGroupStream *)self setOptionalPackedPayload:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2StreamGroupStream;
  [(VCMediaNegotiationBlobV2StreamGroupStream *)&v3 dealloc];
}

- (void)setHasMetadata:(BOOL)metadata
{
  if (metadata)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasPayloadSpecOrPayloads:(BOOL)payloads
{
  if (payloads)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasQualityIndex:(BOOL)index
{
  if (index)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRtpSSRC:(BOOL)c
{
  if (c)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasStreamID:(BOOL)d
{
  if (d)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasMaxNetworkBitrate:(BOOL)bitrate
{
  if (bitrate)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRepairedMaxNetworkBitrate:(BOOL)bitrate
{
  if (bitrate)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (unsigned)audioChannelCount
{
  if (*&self->_has)
  {
    return self->_audioChannelCount;
  }

  else
  {
    return 1;
  }
}

- (void)setHasStreamIndex:(BOOL)index
{
  if (index)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasCoordinateSystem:(BOOL)system
{
  if (system)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasPayloadsVersion:(BOOL)version
{
  if (version)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMaxNetworkBitrateV2:(BOOL)v2
{
  if (v2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRepairedMaxNetworkBitrateV2:(BOOL)v2
{
  if (v2)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2StreamGroupStream;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2StreamGroupStream description](&v3, sel_description), -[VCMediaNegotiationBlobV2StreamGroupStream dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_metadata), @"metadata"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_payloadSpecOrPayloads), @"payloadSpecOrPayloads"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_qualityIndex), @"qualityIndex"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpSSRC), @"rtpSSRC"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_streamID), @"streamID"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxNetworkBitrate), @"maxNetworkBitrate"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedMaxNetworkBitrate), @"repairedMaxNetworkBitrate"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_audioChannelCount), @"audioChannelCount"}];
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_10:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_streamIndex), @"streamIndex"}];
  }

LABEL_11:
  requiredPackedPayload = self->_requiredPackedPayload;
  if (requiredPackedPayload)
  {
    [dictionary setObject:requiredPackedPayload forKey:@"requiredPackedPayload"];
  }

  optionalPackedPayload = self->_optionalPackedPayload;
  if (optionalPackedPayload)
  {
    [dictionary setObject:optionalPackedPayload forKey:@"optionalPackedPayload"];
  }

  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_coordinateSystem), @"coordinateSystem"}];
    v7 = self->_has;
    if ((v7 & 0x40) == 0)
    {
LABEL_17:
      if ((v7 & 8) == 0)
      {
        goto LABEL_18;
      }

LABEL_32:
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxNetworkBitrateV2), @"maxNetworkBitrateV2"}];
      if ((*&self->_has & 0x200) == 0)
      {
        return dictionary;
      }

      goto LABEL_19;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_payloadsVersion), @"payloadsVersion"}];
  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  if ((v7 & 0x200) != 0)
  {
LABEL_19:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedMaxNetworkBitrateV2), @"repairedMaxNetworkBitrateV2"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_10:
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
  if (self->_requiredPackedPayload)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_optionalPackedPayload)
  {
    PBDataWriterWriteDataField();
  }

  v5 = self->_has;
  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v5 = self->_has;
    if ((v5 & 0x40) == 0)
    {
LABEL_17:
      if ((v5 & 8) == 0)
      {
        goto LABEL_18;
      }

LABEL_31:
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 0x200) == 0)
      {
        return;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((v5 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ((v5 & 0x200) == 0)
  {
    return;
  }

LABEL_32:

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 6) = self->_metadata;
    *(to + 42) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(to + 10) = self->_payloadSpecOrPayloads;
  *(to + 42) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 12) = self->_qualityIndex;
  *(to + 42) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 18) = self->_rtpSSRC;
  *(to + 42) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 19) = self->_streamID;
  *(to + 42) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 4) = self->_maxNetworkBitrate;
  *(to + 42) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 13) = self->_repairedMaxNetworkBitrate;
  *(to + 42) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_28:
  *(to + 2) = self->_audioChannelCount;
  *(to + 42) |= 1u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_10:
    *(to + 20) = self->_streamIndex;
    *(to + 42) |= 0x1000u;
  }

LABEL_11:
  if (self->_requiredPackedPayload)
  {
    [to setRequiredPackedPayload:?];
  }

  if (self->_optionalPackedPayload)
  {
    [to setOptionalPackedPayload:?];
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(to + 3) = self->_coordinateSystem;
    *(to + 42) |= 2u;
    v6 = self->_has;
    if ((v6 & 0x40) == 0)
    {
LABEL_17:
      if ((v6 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  *(to + 11) = self->_payloadsVersion;
  *(to + 42) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_18:
    if ((v6 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_32:
  *(to + 5) = self->_maxNetworkBitrateV2;
  *(to + 42) |= 8u;
  if ((*&self->_has & 0x200) == 0)
  {
    return;
  }

LABEL_19:
  *(to + 14) = self->_repairedMaxNetworkBitrateV2;
  *(to + 42) |= 0x200u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 24) = self->_metadata;
    *(v5 + 84) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_payloadSpecOrPayloads;
  *(v5 + 84) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 48) = self->_qualityIndex;
  *(v5 + 84) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 72) = self->_rtpSSRC;
  *(v5 + 84) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 76) = self->_streamID;
  *(v5 + 84) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 16) = self->_maxNetworkBitrate;
  *(v5 + 84) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 52) = self->_repairedMaxNetworkBitrate;
  *(v5 + 84) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_24:
  *(v5 + 8) = self->_audioChannelCount;
  *(v5 + 84) |= 1u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_10:
    *(v5 + 80) = self->_streamIndex;
    *(v5 + 84) |= 0x1000u;
  }

LABEL_11:

  *(v6 + 64) = [(NSData *)self->_requiredPackedPayload copyWithZone:zone];
  *(v6 + 32) = [(NSData *)self->_optionalPackedPayload copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    *(v6 + 12) = self->_coordinateSystem;
    *(v6 + 84) |= 2u;
    v8 = self->_has;
    if ((v8 & 0x40) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_14;
      }

LABEL_28:
      *(v6 + 20) = self->_maxNetworkBitrateV2;
      *(v6 + 84) |= 8u;
      if ((*&self->_has & 0x200) == 0)
      {
        return v6;
      }

      goto LABEL_15;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_13;
  }

  *(v6 + 44) = self->_payloadsVersion;
  *(v6 + 84) |= 0x40u;
  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v8 & 0x200) != 0)
  {
LABEL_15:
    *(v6 + 56) = self->_repairedMaxNetworkBitrateV2;
    *(v6 + 84) |= 0x200u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 42);
    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_metadata != *(equal + 6))
      {
        goto LABEL_70;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
LABEL_70:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_payloadSpecOrPayloads != *(equal + 10))
      {
        goto LABEL_70;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_70;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_qualityIndex != *(equal + 12))
      {
        goto LABEL_70;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_70;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 42) & 0x400) == 0 || self->_rtpSSRC != *(equal + 18))
      {
        goto LABEL_70;
      }
    }

    else if ((*(equal + 42) & 0x400) != 0)
    {
      goto LABEL_70;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 42) & 0x800) == 0 || self->_streamID != *(equal + 19))
      {
        goto LABEL_70;
      }
    }

    else if ((*(equal + 42) & 0x800) != 0)
    {
      goto LABEL_70;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_maxNetworkBitrate != *(equal + 4))
      {
        goto LABEL_70;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_70;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 42) & 0x100) == 0 || self->_repairedMaxNetworkBitrate != *(equal + 13))
      {
        goto LABEL_70;
      }
    }

    else if ((*(equal + 42) & 0x100) != 0)
    {
      goto LABEL_70;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_audioChannelCount != *(equal + 2))
      {
        goto LABEL_70;
      }
    }

    else if (v7)
    {
      goto LABEL_70;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(equal + 42) & 0x1000) == 0 || self->_streamIndex != *(equal + 20))
      {
        goto LABEL_70;
      }
    }

    else if ((*(equal + 42) & 0x1000) != 0)
    {
      goto LABEL_70;
    }

    requiredPackedPayload = self->_requiredPackedPayload;
    if (!(requiredPackedPayload | *(equal + 8)) || (v5 = [(NSData *)requiredPackedPayload isEqual:?]) != 0)
    {
      optionalPackedPayload = self->_optionalPackedPayload;
      if (!(optionalPackedPayload | *(equal + 4)) || (v5 = [(NSData *)optionalPackedPayload isEqual:?]) != 0)
      {
        v10 = self->_has;
        v11 = *(equal + 42);
        if ((v10 & 2) != 0)
        {
          if ((v11 & 2) == 0 || self->_coordinateSystem != *(equal + 3))
          {
            goto LABEL_70;
          }
        }

        else if ((v11 & 2) != 0)
        {
          goto LABEL_70;
        }

        if ((v10 & 0x40) != 0)
        {
          if ((v11 & 0x40) == 0 || self->_payloadsVersion != *(equal + 11))
          {
            goto LABEL_70;
          }
        }

        else if ((v11 & 0x40) != 0)
        {
          goto LABEL_70;
        }

        if ((v10 & 8) != 0)
        {
          if ((v11 & 8) == 0 || self->_maxNetworkBitrateV2 != *(equal + 5))
          {
            goto LABEL_70;
          }
        }

        else if ((v11 & 8) != 0)
        {
          goto LABEL_70;
        }

        LOBYTE(v5) = (v11 & 0x200) == 0;
        if ((*&self->_has & 0x200) != 0)
        {
          if ((*(equal + 42) & 0x200) == 0 || self->_repairedMaxNetworkBitrateV2 != *(equal + 14))
          {
            goto LABEL_70;
          }

          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v20 = 2654435761 * self->_metadata;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v19 = 2654435761 * self->_payloadSpecOrPayloads;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v20 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v18 = 2654435761 * self->_qualityIndex;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v18 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_rtpSSRC;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_streamID;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_maxNetworkBitrate;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v7 = 2654435761 * self->_repairedMaxNetworkBitrate;
    if (has)
    {
      goto LABEL_9;
    }

LABEL_18:
    v8 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  v7 = 0;
  if ((has & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v8 = 2654435761 * self->_audioChannelCount;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_10:
    v9 = 2654435761 * self->_streamIndex;
    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
LABEL_20:
  v10 = [(NSData *)self->_requiredPackedPayload hash];
  v11 = [(NSData *)self->_optionalPackedPayload hash];
  v12 = self->_has;
  if ((v12 & 2) != 0)
  {
    v13 = 2654435761 * self->_coordinateSystem;
    if ((v12 & 0x40) != 0)
    {
LABEL_22:
      v14 = 2654435761 * self->_payloadsVersion;
      if ((v12 & 8) != 0)
      {
        goto LABEL_23;
      }

LABEL_27:
      v15 = 0;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v16 = 0;
      return v19 ^ v20 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 0x40) != 0)
    {
      goto LABEL_22;
    }
  }

  v14 = 0;
  if ((v12 & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v15 = 2654435761 * self->_maxNetworkBitrateV2;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = 2654435761 * self->_repairedMaxNetworkBitrateV2;
  return v19 ^ v20 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 42);
  if ((v5 & 0x10) != 0)
  {
    self->_metadata = *(from + 6);
    *&self->_has |= 0x10u;
    v5 = *(from + 42);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_payloadSpecOrPayloads = *(from + 10);
  *&self->_has |= 0x20u;
  v5 = *(from + 42);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_qualityIndex = *(from + 12);
  *&self->_has |= 0x80u;
  v5 = *(from + 42);
  if ((v5 & 0x400) == 0)
  {
LABEL_5:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_rtpSSRC = *(from + 18);
  *&self->_has |= 0x400u;
  v5 = *(from + 42);
  if ((v5 & 0x800) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_streamID = *(from + 19);
  *&self->_has |= 0x800u;
  v5 = *(from + 42);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_maxNetworkBitrate = *(from + 4);
  *&self->_has |= 4u;
  v5 = *(from + 42);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_repairedMaxNetworkBitrate = *(from + 13);
  *&self->_has |= 0x100u;
  v5 = *(from + 42);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_28:
  self->_audioChannelCount = *(from + 2);
  *&self->_has |= 1u;
  if ((*(from + 42) & 0x1000) != 0)
  {
LABEL_10:
    self->_streamIndex = *(from + 20);
    *&self->_has |= 0x1000u;
  }

LABEL_11:
  if (*(from + 8))
  {
    [(VCMediaNegotiationBlobV2StreamGroupStream *)self setRequiredPackedPayload:?];
  }

  if (*(from + 4))
  {
    [(VCMediaNegotiationBlobV2StreamGroupStream *)self setOptionalPackedPayload:?];
  }

  v6 = *(from + 42);
  if ((v6 & 2) != 0)
  {
    self->_coordinateSystem = *(from + 3);
    *&self->_has |= 2u;
    v6 = *(from + 42);
    if ((v6 & 0x40) == 0)
    {
LABEL_17:
      if ((v6 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  self->_payloadsVersion = *(from + 11);
  *&self->_has |= 0x40u;
  v6 = *(from + 42);
  if ((v6 & 8) == 0)
  {
LABEL_18:
    if ((v6 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_32:
  self->_maxNetworkBitrateV2 = *(from + 5);
  *&self->_has |= 8u;
  if ((*(from + 42) & 0x200) == 0)
  {
    return;
  }

LABEL_19:
  self->_repairedMaxNetworkBitrateV2 = *(from + 14);
  *&self->_has |= 0x200u;
}

- (id)requiredPayloadCompressWithConfig:(id)config
{
  dataRequiredPacketPayload = [(VCMediaNegotiationBlobV2StreamGroupStream *)self dataRequiredPacketPayload];
  v5 = [-[VCMediaNegotiationBlobV2StreamGroupStream data](self "data")];
  if (!dataRequiredPacketPayload)
  {
    return 0;
  }

  v6 = v5;
  v7 = [(VCMediaNegotiationBlobV2StreamGroupStream *)self copy];
  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v10, v11, " [%s] %s:%d Failed to copy the stream config for required fields compression", v12, v13, v14, v15, v16);
      }
    }

    return 0;
  }

  v8 = v7;
  [v7 setRequiredPackedPayload:dataRequiredPacketPayload];
  [OUTLINED_FUNCTION_13_7() setHasStreamIndex:?];
  [OUTLINED_FUNCTION_13_7() setHasRtpSSRC:?];
  [OUTLINED_FUNCTION_13_7() setHasStreamID:?];
  if (v6 <= [objc_msgSend(v8 "data")])
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

- (id)optionalPayloadCompressWithConfig:(id)config
{
  v4 = [(VCMediaNegotiationBlobV2StreamGroupStream *)self optionalPackedPayloaWithDefaultConfig:config];
  v5 = [-[VCMediaNegotiationBlobV2StreamGroupStream data](self "data")];
  if (!v4)
  {
    return 0;
  }

  v6 = v5;
  v7 = [(VCMediaNegotiationBlobV2StreamGroupStream *)self copy];
  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v10, v11, " [%s] %s:%d Failed to copy the stream config for optional fields compression", v12, v13, v14, v15, v16);
      }
    }

    return 0;
  }

  v8 = v7;
  [v7 setOptionalPackedPayload:v4];
  [OUTLINED_FUNCTION_13_7() setHasMetadata:?];
  [OUTLINED_FUNCTION_13_7() setHasMaxNetworkBitrate:?];
  [OUTLINED_FUNCTION_13_7() setHasAudioChannelCount:?];
  if (v6 <= [objc_msgSend(v8 "data")])
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

@end