@interface VCMediaNegotiationBlobMultiwayAudioStream
- (BOOL)isEqual:(id)equal;
- (VCMediaNegotiationBlobMultiwayAudioStream)initWithStreamConfig:(id)config;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)newMultiwayAudioStream;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file;
- (void)setHasMaxNetworkBitrate:(BOOL)bitrate;
- (void)setHasMaxPacketsPerSecond:(BOOL)second;
- (void)setHasRepairedMaxNetworkBitrate:(BOOL)bitrate;
- (void)setHasRepairedStreamID:(BOOL)d;
- (void)setHasSupportedPayloads:(BOOL)payloads;
- (void)setPayloadFlagsWithPayloads:(id)payloads;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobMultiwayAudioStream

- (void)setHasMaxNetworkBitrate:(BOOL)bitrate
{
  if (bitrate)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSupportedPayloads:(BOOL)payloads
{
  if (payloads)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMaxPacketsPerSecond:(BOOL)second
{
  if (second)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRepairedStreamID:(BOOL)d
{
  if (d)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasRepairedMaxNetworkBitrate:(BOOL)bitrate
{
  if (bitrate)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobMultiwayAudioStream;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobMultiwayAudioStream description](&v3, sel_description), -[VCMediaNegotiationBlobMultiwayAudioStream dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_ssrc), @"ssrc"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxNetworkBitrate), @"maxNetworkBitrate"}];
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedPayloads), @"supportedPayloads"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_streamID), @"streamID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_qualityIndex), @"qualityIndex"}];
  v6 = self->_has;
  if (v6)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxMediaBitrate), @"maxMediaBitrate"}];
    v6 = self->_has;
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedStreamID), @"repairedStreamID"}];
      if ((*&self->_has & 8) == 0)
      {
        return dictionary;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *&v5 = self->_maxPacketsPerSecond;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v5), @"maxPacketsPerSecond"}];
  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v6 & 8) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedMaxNetworkBitrate), @"repairedMaxNetworkBitrate"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if (v5)
  {
    PBDataWriterWriteUint32Field();
    v5 = self->_has;
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 8) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteFloatField();
  v5 = self->_has;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v5 & 8) == 0)
  {
    return;
  }

LABEL_13:

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  *(to + 8) = self->_ssrc;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 3) = self->_maxNetworkBitrate;
    *(to + 44) |= 2u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(to + 10) = self->_supportedPayloads;
    *(to + 44) |= 0x20u;
  }

  *(to + 9) = self->_streamID;
  *(to + 5) = self->_qualityIndex;
  v4 = self->_has;
  if (v4)
  {
    *(to + 2) = self->_maxMediaBitrate;
    *(to + 44) |= 1u;
    v4 = self->_has;
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(to + 4) = LODWORD(self->_maxPacketsPerSecond);
  *(to + 44) |= 4u;
  v4 = self->_has;
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      return;
    }

LABEL_13:
    *(to + 6) = self->_repairedMaxNetworkBitrate;
    *(to + 44) |= 8u;
    return;
  }

LABEL_12:
  *(to + 7) = self->_repairedStreamID;
  *(to + 44) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = self->_ssrc;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_maxNetworkBitrate;
    *(result + 44) |= 2u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(result + 10) = self->_supportedPayloads;
    *(result + 44) |= 0x20u;
  }

  *(result + 9) = self->_streamID;
  *(result + 5) = self->_qualityIndex;
  v6 = self->_has;
  if (v6)
  {
    *(result + 2) = self->_maxMediaBitrate;
    *(result + 44) |= 1u;
    v6 = self->_has;
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(result + 4) = LODWORD(self->_maxPacketsPerSecond);
  *(result + 44) |= 4u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_13:
  *(result + 7) = self->_repairedStreamID;
  *(result + 44) |= 0x10u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 6) = self->_repairedMaxNetworkBitrate;
  *(result + 44) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_ssrc != *(equal + 8))
    {
LABEL_34:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 44) & 2) == 0 || self->_maxNetworkBitrate != *(equal + 3))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 44) & 2) != 0)
    {
      goto LABEL_34;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 44) & 0x20) == 0 || self->_supportedPayloads != *(equal + 10))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 44) & 0x20) != 0)
    {
      goto LABEL_34;
    }

    if (self->_streamID != *(equal + 9) || self->_qualityIndex != *(equal + 5))
    {
      goto LABEL_34;
    }

    if (*&self->_has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_maxMediaBitrate != *(equal + 2))
      {
        goto LABEL_34;
      }
    }

    else if (*(equal + 44))
    {
      goto LABEL_34;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 44) & 4) == 0 || self->_maxPacketsPerSecond != *(equal + 4))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 44) & 4) != 0)
    {
      goto LABEL_34;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 44) & 0x10) == 0 || self->_repairedStreamID != *(equal + 7))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 44) & 0x10) != 0)
    {
      goto LABEL_34;
    }

    LOBYTE(v5) = (*(equal + 44) & 8) == 0;
    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 44) & 8) == 0 || self->_repairedMaxNetworkBitrate != *(equal + 6))
      {
        goto LABEL_34;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_maxNetworkBitrate;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_supportedPayloads;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_maxMediaBitrate;
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    maxPacketsPerSecond = self->_maxPacketsPerSecond;
    if (maxPacketsPerSecond < 0.0)
    {
      maxPacketsPerSecond = -maxPacketsPerSecond;
    }

    *v2.i32 = floorf(maxPacketsPerSecond + 0.5);
    v9 = (maxPacketsPerSecond - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v7 = 2654435761u * *vbslq_s8(v10, v3, v2).i32;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabsf(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_repairedStreamID;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v5 ^ (2654435761 * self->_ssrc) ^ (2654435761 * self->_streamID) ^ (2654435761 * self->_qualityIndex) ^ v6 ^ v7 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v12 = 2654435761 * self->_repairedMaxNetworkBitrate;
  return v4 ^ v5 ^ (2654435761 * self->_ssrc) ^ (2654435761 * self->_streamID) ^ (2654435761 * self->_qualityIndex) ^ v6 ^ v7 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  self->_ssrc = *(from + 8);
  v3 = *(from + 44);
  if ((v3 & 2) != 0)
  {
    self->_maxNetworkBitrate = *(from + 3);
    *&self->_has |= 2u;
    v3 = *(from + 44);
  }

  if ((v3 & 0x20) != 0)
  {
    self->_supportedPayloads = *(from + 10);
    *&self->_has |= 0x20u;
  }

  self->_streamID = *(from + 9);
  self->_qualityIndex = *(from + 5);
  v4 = *(from + 44);
  if (v4)
  {
    self->_maxMediaBitrate = *(from + 2);
    *&self->_has |= 1u;
    v4 = *(from + 44);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if ((*(from + 44) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_maxPacketsPerSecond = *(from + 4);
  *&self->_has |= 4u;
  v4 = *(from + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      return;
    }

LABEL_13:
    self->_repairedMaxNetworkBitrate = *(from + 6);
    *&self->_has |= 8u;
    return;
  }

LABEL_12:
  self->_repairedStreamID = *(from + 7);
  *&self->_has |= 0x10u;
  if ((*(from + 44) & 8) != 0)
  {
    goto LABEL_13;
  }
}

- (VCMediaNegotiationBlobMultiwayAudioStream)initWithStreamConfig:(id)config
{
  if ([config isSubstream])
  {

    return 0;
  }

  else
  {
    v5 = [(VCMediaNegotiationBlobMultiwayAudioStream *)self init];
    if (v5)
    {
      v5->_ssrc = [config ssrc];
      v5->_maxNetworkBitrate = [config maxNetworkBitrate];
      *&v5->_has |= 2u;
      v5->_maxMediaBitrate = [config maxMediaBitrate];
      *&v5->_has |= 1u;
      v5->_maxPacketsPerSecond = [config maxPacketsPerSecond];
      *&v5->_has |= 4u;
      v5->_streamID = [config streamID];
      v5->_qualityIndex = [config qualityIndex];
      if ([config hasRepairedStreamID])
      {
        v6 = 16;
      }

      else
      {
        v6 = 0;
      }

      *&v5->_has = *&v5->_has & 0xEF | v6;
      v5->_repairedStreamID = [config repairedStreamID];
      v5->_repairedMaxNetworkBitrate = [config repairedMaxNetworkBitrate];
      *&v5->_has = (*&v5->_has >> 1) & 8 | *&v5->_has & 0xF7;
      -[VCMediaNegotiationBlobMultiwayAudioStream setPayloadFlagsWithPayloads:](v5, "setPayloadFlagsWithPayloads:", [config supportedAudioPayloads]);
    }
  }

  return v5;
}

- (void)setPayloadFlagsWithPayloads:(id)payloads
{
  v15 = *MEMORY[0x1E69E9840];
  *&self->_has |= 0x20u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [payloads countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(payloads);
        }

        v9 = +[VCMediaNegotiationBlobAudioSettings negotiationPayloadFromPayload:](VCMediaNegotiationBlobAudioSettings, "negotiationPayloadFromPayload:", [*(*(&v11 + 1) + 8 * i) unsignedIntValue]);
        if (v9 != -1)
        {
          self->_supportedPayloads |= v9;
        }
      }

      v6 = [payloads countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (id)newMultiwayAudioStream
{
  v3 = objc_alloc_init(VCMediaNegotiatorMultiwayAudioStream);
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setStreamID:LOWORD(self->_streamID)];
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setSsrc:self->_ssrc];
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setMaxMediaBitrate:self->_maxMediaBitrate];
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setMaxNetworkBitrate:self->_maxNetworkBitrate];
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setMaxPacketsPerSecond:self->_maxPacketsPerSecond];
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setQualityIndex:self->_qualityIndex];
  if ((*&self->_has & 0x10) != 0)
  {
    [(VCMediaNegotiatorMultiwayMediaStream *)v3 setHasRepairedStreamID:1];
    [(VCMediaNegotiatorMultiwayMediaStream *)v3 setRepairedStreamID:LOWORD(self->_repairedStreamID)];
    [(VCMediaNegotiatorMultiwayMediaStream *)v3 setRepairedMaxNetworkBitrate:self->_repairedMaxNetworkBitrate];
  }

  supportedPayloads = self->_supportedPayloads;
  if (supportedPayloads)
  {
    v5 = 1;
    do
    {
      if ((supportedPayloads & v5) != 0)
      {
        supportedPayloads &= ~v5;
        [(VCMediaNegotiatorMultiwayAudioStream *)v3 addPayload:[VCMediaNegotiationBlobAudioSettings payloadFromNegotiationPayload:v5]];
      }

      v5 = (2 * v5);
    }

    while (supportedPayloads);
  }

  return v3;
}

- (void)printWithLogFile:(void *)file
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"Multiway Audio Stream Settings: SSRC=%x maxNetworkBitrate=%d maxMediaBitrate=%d maxPacketsPerSecond=%f supportedPayloads=0x%08x streamID=%d qualityIndex=%d hasRepaired:%u repairedMaxNetworkBitrate=%d repairedStreamID=%d", self->_ssrc, self->_maxNetworkBitrate, self->_maxMediaBitrate, self->_maxPacketsPerSecond, self->_supportedPayloads, self->_streamID, self->_qualityIndex, -[VCMediaNegotiationBlobMultiwayAudioStream hasRepairedStreamID](self, "hasRepairedStreamID"), self->_repairedMaxNetworkBitrate, self->_repairedStreamID];
  uTF8String = [v4 UTF8String];
  VRLogfilePrintWithTimestamp(file, "Media Blob -     %s\n", v6, v7, v8, v9, v10, v11, uTF8String);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v12;
      v16 = 2080;
      v17 = "[VCMediaNegotiationBlobMultiwayAudioStream(MultiwayAudioStream) printWithLogFile:]";
      v18 = 1024;
      v19 = 1350;
      v20 = 2080;
      uTF8String2 = [v4 UTF8String];
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s\n", buf, 0x26u);
    }
  }
}

@end