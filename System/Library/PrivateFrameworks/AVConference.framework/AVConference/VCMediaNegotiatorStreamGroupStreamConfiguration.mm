@interface VCMediaNegotiatorStreamGroupStreamConfiguration
+ (id)configWithQualityIndex:(unsigned int)a3 nwBitrate:(unsigned int)a4 mediaBitrate:(unsigned int)a5 maxPacketsPerSecond:(unsigned int)a6 repairedNwBitrate:(unsigned int)a7 keyFrameInterval:(unsigned int)a8 framerate:(unsigned int)a9 rtpSampleRate:(unsigned int)a10 isTemporal:(BOOL)a11 isSubStream:(BOOL)a12 metadata:(unsigned int)a13 payloads:(id)a14 codecs:(id)a15 width:(unsigned int)a16 height:(unsigned int)a17 audioChannelCount:(unsigned int)a18 streamIndex:(unsigned __int8)a19 coordinateSystem:(unsigned int)a20;
- (BOOL)applyCipherSuiteOnMediaStreamConfig:(id)a3 codecConfigs:(id)a4;
- (BOOL)areCodecsEqualTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualPayloads:(id)a3;
- (CGSize)resolution;
- (VCMediaNegotiatorStreamGroupStreamConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addCodec:(unsigned int)a3;
- (void)addPayload:(int)a3;
- (void)dealloc;
- (void)removeCodec:(unsigned int)a3;
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

- (void)addPayload:(int)a3
{
  payloads = self->_payloads;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];

  [(NSMutableSet *)payloads addObject:v4];
}

- (void)addCodec:(unsigned int)a3
{
  codecs = self->_codecs;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];

  [(NSMutableArray *)codecs addObject:v4];
}

- (void)removeCodec:(unsigned int)a3
{
  codecs = self->_codecs;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];

  [(NSMutableArray *)codecs removeObject:v4];
}

- (BOOL)areCodecsEqualTo:(id)a3
{
  v4 = [MEMORY[0x1E696AB50] setWithArray:self->_codecs];
  v5 = [MEMORY[0x1E696AB50] setWithArray:a3];

  return [v4 isEqualToSet:v5];
}

- (BOOL)applyCipherSuiteOnMediaStreamConfig:(id)a3 codecConfigs:(id)a4
{
  if (![(NSMutableArray *)self->_codecs count])
  {
    goto LABEL_8;
  }

  v7 = [a4 objectAtIndex:{objc_msgSend(-[NSMutableArray firstObject](self->_codecs, "firstObject"), "intValue")}];
  v8 = [v7 cipherSuite];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = a3;
      v11 = 2;
LABEL_16:
      [v10 setSframeCipherSuite:v11];
      return 1;
    }

    if (v8 != 3)
    {
      goto LABEL_11;
    }

LABEL_8:
    [a3 setSRTPCipherSuite:3];
    [a3 setSRTCPCipherSuite:3];
    return 1;
  }

  if (!v8)
  {
    if (![+[VCDefaults forceDisableMediaEncryption] sharedInstance]
    {
      goto LABEL_11;
    }

    [a3 setSRTPCipherSuite:0];
    [a3 setSRTCPCipherSuite:0];
    v10 = a3;
    v11 = 0;
    goto LABEL_16;
  }

  if (v8 == 1)
  {
    v9 = 1;
    [a3 setSframeCipherSuite:1];
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

- (BOOL)isEqualPayloads:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a3 count];
  if (v5 == [(NSMutableSet *)self->_payloads count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
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
          objc_enumerationMutation(a3);
        }

        v10 = [(NSMutableSet *)self->_payloads containsObject:*(*(&v13 + 1) + 8 * v9)];
        if (!v10)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([a3 streamIndex] != self->_streamIndex)
  {
    return 0;
  }

  if ([a3 ssrc] != self->_ssrc)
  {
    return 0;
  }

  if ([a3 streamID] != self->_streamID)
  {
    return 0;
  }

  if ([a3 metadata] != self->_metadata)
  {
    return 0;
  }

  if ([a3 qualityIndex] != self->_qualityIndex)
  {
    return 0;
  }

  if ([a3 maxNetworkBitrate] != self->_maxNetworkBitrate)
  {
    return 0;
  }

  if ([a3 maxMediaBitrate] != self->_maxMediaBitrate)
  {
    return 0;
  }

  if ([a3 maxPacketsPerSecond] != self->_maxPacketsPerSecond)
  {
    return 0;
  }

  if ([a3 repairedStreamID] != self->_repairedStreamID)
  {
    return 0;
  }

  if ([a3 repairedMaxNetworkBitrate] != self->_repairedMaxNetworkBitrate)
  {
    return 0;
  }

  [a3 resolution];
  if (v5 != self->_resolution.width)
  {
    return 0;
  }

  [a3 resolution];
  if (v6 != self->_resolution.height || [a3 framerate] != self->_framerate || objc_msgSend(a3, "keyFrameInterval") != self->_keyFrameInterval || objc_msgSend(a3, "rtpTimestampRate") != self->_rtpTimestampRate || objc_msgSend(a3, "parentStreamID") != self->_parentStreamID || objc_msgSend(a3, "audioChannelCount") != self->_audioChannelCount || objc_msgSend(a3, "coordinateSystem") != self->_coordinateSystem || objc_msgSend(a3, "v2StreamID") != self->_v2StreamID || !-[VCMediaNegotiatorStreamGroupStreamConfiguration areCodecsEqualTo:](self, "areCodecsEqualTo:", objc_msgSend(a3, "codecs")))
  {
    return 0;
  }

  v7 = [a3 payloads];

  return [(VCMediaNegotiatorStreamGroupStreamConfiguration *)self isEqualPayloads:v7];
}

+ (id)configWithQualityIndex:(unsigned int)a3 nwBitrate:(unsigned int)a4 mediaBitrate:(unsigned int)a5 maxPacketsPerSecond:(unsigned int)a6 repairedNwBitrate:(unsigned int)a7 keyFrameInterval:(unsigned int)a8 framerate:(unsigned int)a9 rtpSampleRate:(unsigned int)a10 isTemporal:(BOOL)a11 isSubStream:(BOOL)a12 metadata:(unsigned int)a13 payloads:(id)a14 codecs:(id)a15 width:(unsigned int)a16 height:(unsigned int)a17 audioChannelCount:(unsigned int)a18 streamIndex:(unsigned __int8)a19 coordinateSystem:(unsigned int)a20
{
  v20 = *&a7;
  v21 = *&a6;
  v22 = *&a5;
  v23 = *&a4;
  v24 = *&a3;
  v48 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(VCMediaNegotiatorStreamGroupStreamConfiguration);
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setStreamIndex:a19];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setQualityIndex:v24];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setMaxNetworkBitrate:v23];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setMaxMediaBitrate:v22];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setMaxPacketsPerSecond:v21];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setRepairedMaxNetworkBitrate:v20];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setKeyFrameInterval:a8];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setFramerate:a9];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setRtpTimestampRate:a10];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setIsTemporalStream:a11];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setIsSubStream:a12];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setMetadata:a13];
  LODWORD(v26) = a16;
  LODWORD(v27) = a17;
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setResolution:v26, v27];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setAudioChannelCount:a18];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v25 setCoordinateSystem:a20];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v28 = [a14 countByEnumeratingWithState:&v44 objects:v43 count:16];
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
          objc_enumerationMutation(a14);
        }

        -[VCMediaNegotiatorStreamGroupStreamConfiguration addPayload:](v25, "addPayload:", [*(*(&v44 + 1) + 8 * i) unsignedIntValue]);
      }

      v29 = [a14 countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v29);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = [a15 countByEnumeratingWithState:&v39 objects:v38 count:16];
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
          objc_enumerationMutation(a15);
        }

        -[VCMediaNegotiatorStreamGroupStreamConfiguration addCodec:](v25, "addCodec:", [*(*(&v39 + 1) + 8 * j) unsignedIntValue]);
      }

      v33 = [a15 countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v33);
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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