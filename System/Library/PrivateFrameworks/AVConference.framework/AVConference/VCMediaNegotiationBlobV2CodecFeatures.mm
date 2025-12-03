@interface VCMediaNegotiationBlobV2CodecFeatures
- (BOOL)isEqual:(id)equal;
- (VCMediaNegotiationBlobV2CodecFeatures)initWithAllowAudioRecording:(BOOL)recording videoFeatures:(id)features;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)audioFeatures;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file prefix:(id)prefix;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_audioFeatures), @"audioFeatures"}];
  }

  videoFeatures = self->_videoFeatures;
  if (videoFeatures)
  {
    [dictionary setObject:videoFeatures forKey:@"videoFeatures"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_audioFeatures;
    *(to + 24) |= 1u;
  }

  videoFeatures = self->_videoFeatures;
  if (videoFeatures)
  {
    [to setVideoFeatures:videoFeatures];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_audioFeatures;
    *(v5 + 24) |= 1u;
  }

  v6[2] = [(NSData *)self->_videoFeatures copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_audioFeatures != *(equal + 2))
      {
        goto LABEL_9;
      }
    }

    else if (*(equal + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    videoFeatures = self->_videoFeatures;
    if (videoFeatures | *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 24))
  {
    self->_audioFeatures = *(from + 2);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(VCMediaNegotiationBlobV2CodecFeatures *)self setVideoFeatures:?];
  }
}

- (VCMediaNegotiationBlobV2CodecFeatures)initWithAllowAudioRecording:(BOOL)recording videoFeatures:(id)features
{
  recordingCopy = recording;
  v6 = [(VCMediaNegotiationBlobV2CodecFeatures *)self init];
  v7 = v6;
  if (v6)
  {
    if ([(VCMediaNegotiationBlobV2CodecFeatures *)v6 audioFeatures]!= recordingCopy)
    {
      [(VCMediaNegotiationBlobV2CodecFeatures *)v7 setAudioFeatures:recordingCopy];
    }

    if (!-[VCMediaNegotiationBlobV2CodecFeatures videoFeatures](v7, "videoFeatures") || ([features isEqualToData:{-[VCMediaNegotiationBlobV2CodecFeatures videoFeatures](v7, "videoFeatures")}] & 1) == 0)
    {
      [(VCMediaNegotiationBlobV2CodecFeatures *)v7 setVideoFeatures:features];
    }
  }

  return v7;
}

- (void)printWithLogFile:(void *)file prefix:(id)prefix
{
  v24 = *MEMORY[0x1E69E9840];
  prefix = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2CodecFeatures data](self, "data"), "length"), prefix];
  [prefix appendFormat:@"Codec Featues: allowAudioRecording=%d videoFeatures=%@", -[VCMediaNegotiationBlobV2CodecFeatures allowAudioRecording](self, "allowAudioRecording"), -[VCMediaNegotiationBlobV2CodecFeatures videoFeatures](self, "videoFeatures")];
  uTF8String = [prefix UTF8String];
  VRLogfilePrintWithTimestamp(file, "%s\n", v8, v9, v10, v11, v12, v13, uTF8String);
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
      v23 = prefix;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

@end