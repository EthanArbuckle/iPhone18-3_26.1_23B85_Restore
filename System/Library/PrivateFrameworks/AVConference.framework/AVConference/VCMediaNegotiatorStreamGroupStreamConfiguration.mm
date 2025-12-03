@interface VCMediaNegotiatorStreamGroupStreamConfiguration
+ (id)configWithQualityIndex:(unsigned int)index nwBitrate:(unsigned int)bitrate mediaBitrate:(unsigned int)mediaBitrate maxPacketsPerSecond:(unsigned int)second repairedNwBitrate:(unsigned int)nwBitrate keyFrameInterval:(unsigned int)interval framerate:(unsigned int)framerate rtpSampleRate:(unsigned int)self0 isTemporal:(BOOL)self1 isSubStream:(BOOL)self2 metadata:(unsigned int)self3 payloads:(id)self4 codecs:(id)self5 width:(unsigned int)self6 height:(unsigned int)self7 audioChannelCount:(unsigned int)self8 streamIndex:(unsigned __int8)self9 coordinateSystem:(unsigned int)system;
- (BOOL)applyCipherSuiteOnMediaStreamConfig:(id)config codecConfigs:(id)configs;
- (BOOL)areCodecsEqualTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualPayloads:(id)payloads;
- (CGSize)resolution;
- (VCMediaNegotiatorStreamGroupStreamConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addCodec:(unsigned int)codec;
- (void)addPayload:(int)payload;
- (void)dealloc;
- (void)removeCodec:(unsigned int)codec;
@end

@implementation VCMediaNegotiatorStreamGroupStreamConfiguration

- (VCMediaNegotiatorStreamGroupStreamConfiguration)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaNegotiatorStreamGroupStreamConfiguration;
  v2 = [(VCMediaNegotiatorStreamGroupStreamConfiguration *)&v4 init];
  if (v2)
  {
    v2->_payloads = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_codecs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_coordinateSystem = 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorStreamGroupStreamConfiguration;
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)&v3 dealloc];
}

- (void)addPayload:(int)payload
{
  payloads = self->_payloads;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];

  [(NSMutableSet *)payloads addObject:v4];
}

- (void)addCodec:(unsigned int)codec
{
  codecs = self->_codecs;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&codec];

  [(NSMutableArray *)codecs addObject:v4];
}

- (void)removeCodec:(unsigned int)codec
{
  codecs = self->_codecs;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&codec];

  [(NSMutableArray *)codecs removeObject:v4];
}

- (BOOL)areCodecsEqualTo:(id)to
{
  v4 = [MEMORY[0x1E696AB50] setWithArray:self->_codecs];
  v5 = [MEMORY[0x1E696AB50] setWithArray:to];

  return [v4 isEqualToSet:v5];
}

- (BOOL)applyCipherSuiteOnMediaStreamConfig:(id)config codecConfigs:(id)configs
{
  if (![(NSMutableArray *)self->_codecs count])
  {
    goto LABEL_8;
  }

  v7 = [configs objectAtIndex:{objc_msgSend(-[NSMutableArray firstObject](self->_codecs, "firstObject"), "intValue")}];
  cipherSuite = [v7 cipherSuite];
  if (cipherSuite > 1)
  {
    if (cipherSuite == 2)
    {
      configCopy2 = config;
      v11 = 2;
LABEL_16:
      [configCopy2 setSframeCipherSuite:v11];
      return 1;
    }

    if (cipherSuite != 3)
    {
      goto LABEL_11;
    }

LABEL_8:
    [config setSRTPCipherSuite:3];
    [config setSRTCPCipherSuite:3];
    return 1;
  }

  if (!cipherSuite)
  {
    if (![+[VCDefaults forceDisableMediaEncryption] sharedInstance]
    {
      goto LABEL_11;
    }

    [config setSRTPCipherSuite:0];
    [config setSRTCPCipherSuite:0];
    configCopy2 = config;
    v11 = 0;
    goto LABEL_16;
  }

  if (cipherSuite == 1)
  {
    v9 = 1;
    [config setSframeCipherSuite:1];
    return v9;
  }

LABEL_11:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v12 applyCipherSuiteOnMediaStreamConfig:v7 codecConfigs:v13];
    }
  }

  return 0;
}

- (BOOL)isEqualPayloads:(id)payloads
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [payloads count];
  if (v5 == [(NSMutableSet *)self->_payloads count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [payloads countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(payloads);
        }

        v10 = [(NSMutableSet *)self->_payloads containsObject:*(*(&v13 + 1) + 8 * v9)];
        if (!v10)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [payloads countByEnumeratingWithState:&v13 objects:v12 count:16];
          LOBYTE(v10) = 1;
          if (v7)
          {
            goto LABEL_4;
          }

          return v10;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([equal streamIndex] != self->_streamIndex)
  {
    return 0;
  }

  if ([equal ssrc] != self->_ssrc)
  {
    return 0;
  }

  if ([equal streamID] != self->_streamID)
  {
    return 0;
  }

  if ([equal metadata] != self->_metadata)
  {
    return 0;
  }

  if ([equal qualityIndex] != self->_qualityIndex)
  {
    return 0;
  }

  if ([equal maxNetworkBitrate] != self->_maxNetworkBitrate)
  {
    return 0;
  }

  if ([equal maxMediaBitrate] != self->_maxMediaBitrate)
  {
    return 0;
  }

  if ([equal maxPacketsPerSecond] != self->_maxPacketsPerSecond)
  {
    return 0;
  }

  if ([equal repairedStreamID] != self->_repairedStreamID)
  {
    return 0;
  }

  if ([equal repairedMaxNetworkBitrate] != self->_repairedMaxNetworkBitrate)
  {
    return 0;
  }

  [equal resolution];
  if (v5 != self->_resolution.width)
  {
    return 0;
  }

  [equal resolution];
  if (v6 != self->_resolution.height || [equal framerate] != self->_framerate || objc_msgSend(equal, "keyFrameInterval") != self->_keyFrameInterval || objc_msgSend(equal, "rtpTimestampRate") != self->_rtpTimestampRate || objc_msgSend(equal, "parentStreamID") != self->_parentStreamID || objc_msgSend(equal, "audioChannelCount") != self->_audioChannelCount || objc_msgSend(equal, "coordinateSystem") != self->_coordinateSystem || objc_msgSend(equal, "v2StreamID") != self->_v2StreamID || !-[VCMediaNegotiatorStreamGroupStreamConfiguration areCodecsEqualTo:](self, "areCodecsEqualTo:", objc_msgSend(equal, "codecs")))
  {
    return 0;
  }

  payloads = [equal payloads];

  return [(VCMediaNegotiatorStreamGroupStreamConfiguration *)self isEqualPayloads:payloads];
}

+ (id)configWithQualityIndex:(unsigned int)index nwBitrate:(unsigned int)bitrate mediaBitrate:(unsigned int)mediaBitrate maxPacketsPerSecond:(unsigned int)second repairedNwBitrate:(unsigned int)nwBitrate keyFrameInterval:(unsigned int)interval framerate:(unsigned int)framerate rtpSampleRate:(unsigned int)self0 isTemporal:(BOOL)self1 isSubStream:(BOOL)self2 metadata:(unsigned int)self3 payloads:(id)self4 codecs:(id)self5 width:(unsigned int)self6 height:(unsigned int)self7 audioChannelCount:(unsigned int)self8 streamIndex:(unsigned __int8)self9 coordinateSystem:(unsigned int)system
{
  v20 = *&nwBitrate;
  v21 = *&second;
  v22 = *&mediaBitrate;
  v23 = *&bitrate;
  v24 = *&index;
  v48 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(VCMediaNegotiatorStreamGroupStreamConfiguration);
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setStreamIndex:streamIndex];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setQualityIndex:v24];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setMaxNetworkBitrate:v23];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setMaxMediaBitrate:v22];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setMaxPacketsPerSecond:v21];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setRepairedMaxNetworkBitrate:v20];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setKeyFrameInterval:interval];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setFramerate:framerate];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setRtpTimestampRate:rate];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setIsTemporalStream:temporal];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setIsSubStream:stream];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setMetadata:metadata];
  LODWORD(v26) = width;
  LODWORD(v27) = height;
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setResolution:v26, v27];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setAudioChannelCount:count];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setCoordinateSystem:system];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v28 = [payloads countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v45;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(payloads);
        }

        -[VCMediaNegotiatorStreamGroupStreamConfiguration addPayload:](v25, "addPayload:", [*(*(&v44 + 1) + 8 * i) unsignedIntValue]);
      }

      v29 = [payloads countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v29);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = [codecs countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(codecs);
        }

        -[VCMediaNegotiatorStreamGroupStreamConfiguration addCodec:](v25, "addCodec:", [*(*(&v39 + 1) + 8 * j) unsignedIntValue]);
      }

      v33 = [codecs countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v33);
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setSsrc:self->_ssrc];
    [v5 setStreamID:self->_streamID];
    [v5 setIsTemporalStream:self->_isTemporalStream];
    [v5 setIsSubStream:self->_isSubStream];
    [v5 setQualityIndex:self->_qualityIndex];
    [v5 setMaxNetworkBitrate:self->_maxNetworkBitrate];
    [v5 setMaxMediaBitrate:self->_maxMediaBitrate];
    [v5 setMaxPacketsPerSecond:self->_maxPacketsPerSecond];
    [v5 setRepairedStreamID:self->_repairedStreamID];
    [v5 setRepairedMaxNetworkBitrate:self->_repairedMaxNetworkBitrate];
    [v5 setResolution:{self->_resolution.width, self->_resolution.height}];
    [v5 setFramerate:self->_framerate];
    [v5 setKeyFrameInterval:self->_keyFrameInterval];
    [v5 setRtpTimestampRate:self->_rtpTimestampRate];
    [v5 setParentStreamID:self->_parentStreamID];
    [v5 setAudioChannelCount:self->_audioChannelCount];
    [v5 setCoordinateSystem:self->_coordinateSystem];
    [v5 setV2StreamID:self->_v2StreamID];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    payloads = self->_payloads;
    v7 = [(NSMutableSet *)payloads countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(payloads);
          }

          [v5 addPayload:{objc_msgSend(*(*(&v23 + 1) + 8 * i), "unsignedIntValue")}];
        }

        v8 = [(NSMutableSet *)payloads countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v8);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    codecs = self->_codecs;
    v12 = [(NSMutableArray *)codecs countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(codecs);
          }

          [v5 addCodec:{objc_msgSend(*(*(&v18 + 1) + 8 * j), "unsignedIntValue")}];
        }

        v13 = [(NSMutableArray *)codecs countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v13);
    }
  }

  return v5;
}

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)applyCipherSuiteOnMediaStreamConfig:(NSObject *)a3 codecConfigs:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCMediaNegotiatorStreamGroupStreamConfiguration applyCipherSuiteOnMediaStreamConfig:codecConfigs:]";
  v8 = 1024;
  v9 = 127;
  v10 = 2048;
  v11 = [a2 cipherSuite];
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to convert negotiatorStreamGroupConfig cipherSuite(%ld) to mediaStreamConfig cipherSuite", &v4, 0x26u);
}

@end