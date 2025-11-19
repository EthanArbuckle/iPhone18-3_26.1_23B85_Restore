@interface VCMediaNegotiationBlobV2CodecFeatures
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiationBlobV2CodecFeatures)initWithAllowAudioRecording:(BOOL)a3 videoFeatures:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)audioFeatures;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)printWithLogFile:(void *)a3 prefix:(id)a4;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobV2CodecFeatures

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2CodecFeatures *)self setVideoFeatures:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2CodecFeatures;
  [(VCMediaNegotiationBlobV2CodecFeatures *)&v3 dealloc];
}

- (unsigned)audioFeatures
{
  if (*&self->_has)
  {
    return self->_audioFeatures;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2CodecFeatures;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2CodecFeatures description](&v3, sel_description), -[VCMediaNegotiationBlobV2CodecFeatures dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_audioFeatures), @"audioFeatures"}];
  }

  videoFeatures = self->_videoFeatures;
  if (videoFeatures)
  {
    [v3 setObject:videoFeatures forKey:@"videoFeatures"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_videoFeatures)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_audioFeatures;
    *(a3 + 24) |= 1u;
  }

  videoFeatures = self->_videoFeatures;
  if (videoFeatures)
  {
    [a3 setVideoFeatures:videoFeatures];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_audioFeatures;
    *(v5 + 24) |= 1u;
  }

  v6[2] = [(NSData *)self->_videoFeatures copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_audioFeatures != *(a3 + 2))
      {
        goto LABEL_9;
      }
    }

    else if (*(a3 + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    videoFeatures = self->_videoFeatures;
    if (videoFeatures | *(a3 + 2))
    {

      LOBYTE(v5) = [(NSData *)videoFeatures isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_audioFeatures;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_videoFeatures hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 24))
  {
    self->_audioFeatures = *(a3 + 2);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(VCMediaNegotiationBlobV2CodecFeatures *)self setVideoFeatures:?];
  }
}

- (VCMediaNegotiationBlobV2CodecFeatures)initWithAllowAudioRecording:(BOOL)a3 videoFeatures:(id)a4
{
  v5 = a3;
  v6 = [(VCMediaNegotiationBlobV2CodecFeatures *)self init];
  v7 = v6;
  if (v6)
  {
    if ([(VCMediaNegotiationBlobV2CodecFeatures *)v6 audioFeatures]!= v5)
    {
      [(VCMediaNegotiationBlobV2CodecFeatures *)v7 setAudioFeatures:v5];
    }

    if (!-[VCMediaNegotiationBlobV2CodecFeatures videoFeatures](v7, "videoFeatures") || ([a4 isEqualToData:{-[VCMediaNegotiationBlobV2CodecFeatures videoFeatures](v7, "videoFeatures")}] & 1) == 0)
    {
      [(VCMediaNegotiationBlobV2CodecFeatures *)v7 setVideoFeatures:a4];
    }
  }

  return v7;
}

- (void)printWithLogFile:(void *)a3 prefix:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2CodecFeatures data](self, "data"), "length"), a4];
  [v6 appendFormat:@"Codec Featues: allowAudioRecording=%d videoFeatures=%@", -[VCMediaNegotiationBlobV2CodecFeatures allowAudioRecording](self, "allowAudioRecording"), -[VCMediaNegotiationBlobV2CodecFeatures videoFeatures](self, "videoFeatures")];
  v7 = [v6 UTF8String];
  VRLogfilePrintWithTimestamp(a3, "%s\n", v8, v9, v10, v11, v12, v13, v7);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v14;
      v18 = 2080;
      v19 = "[VCMediaNegotiationBlobV2CodecFeatures(Utils) printWithLogFile:prefix:]";
      v20 = 1024;
      v21 = 36;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

@end