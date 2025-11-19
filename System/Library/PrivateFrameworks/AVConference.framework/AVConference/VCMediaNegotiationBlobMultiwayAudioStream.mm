@interface VCMediaNegotiationBlobMultiwayAudioStream
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiationBlobMultiwayAudioStream)initWithStreamConfig:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)newMultiwayAudioStream;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)printWithLogFile:(void *)a3;
- (void)setHasMaxNetworkBitrate:(BOOL)a3;
- (void)setHasMaxPacketsPerSecond:(BOOL)a3;
- (void)setHasRepairedMaxNetworkBitrate:(BOOL)a3;
- (void)setHasRepairedStreamID:(BOOL)a3;
- (void)setHasSupportedPayloads:(BOOL)a3;
- (void)setPayloadFlagsWithPayloads:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobMultiwayAudioStream

- (void)setHasMaxNetworkBitrate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSupportedPayloads:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMaxPacketsPerSecond:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRepairedStreamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasRepairedMaxNetworkBitrate:(BOOL)a3
{
  if (a3)
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_ssrc), @"ssrc"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxNetworkBitrate), @"maxNetworkBitrate"}];
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedPayloads), @"supportedPayloads"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_streamID), @"streamID"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_qualityIndex), @"qualityIndex"}];
  v6 = self->_has;
  if (v6)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxMediaBitrate), @"maxMediaBitrate"}];
    v6 = self->_has;
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedStreamID), @"repairedStreamID"}];
      if ((*&self->_has & 8) == 0)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *&v5 = self->_maxPacketsPerSecond;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v5), @"maxPacketsPerSecond"}];
  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v6 & 8) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedMaxNetworkBitrate), @"repairedMaxNetworkBitrate"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  *(a3 + 8) = self->_ssrc;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 3) = self->_maxNetworkBitrate;
    *(a3 + 44) |= 2u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(a3 + 10) = self->_supportedPayloads;
    *(a3 + 44) |= 0x20u;
  }

  *(a3 + 9) = self->_streamID;
  *(a3 + 5) = self->_qualityIndex;
  v4 = self->_has;
  if (v4)
  {
    *(a3 + 2) = self->_maxMediaBitrate;
    *(a3 + 44) |= 1u;
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

  *(a3 + 4) = LODWORD(self->_maxPacketsPerSecond);
  *(a3 + 44) |= 4u;
  v4 = self->_has;
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      return;
    }

LABEL_13:
    *(a3 + 6) = self->_repairedMaxNetworkBitrate;
    *(a3 + 44) |= 8u;
    return;
  }

LABEL_12:
  *(a3 + 7) = self->_repairedStreamID;
  *(a3 + 44) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_ssrc != *(a3 + 8))
    {
LABEL_34:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 44) & 2) == 0 || self->_maxNetworkBitrate != *(a3 + 3))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 44) & 2) != 0)
    {
      goto LABEL_34;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 44) & 0x20) == 0 || self->_supportedPayloads != *(a3 + 10))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 44) & 0x20) != 0)
    {
      goto LABEL_34;
    }

    if (self->_streamID != *(a3 + 9) || self->_qualityIndex != *(a3 + 5))
    {
      goto LABEL_34;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 44) & 1) == 0 || self->_maxMediaBitrate != *(a3 + 2))
      {
        goto LABEL_34;
      }
    }

    else if (*(a3 + 44))
    {
      goto LABEL_34;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 44) & 4) == 0 || self->_maxPacketsPerSecond != *(a3 + 4))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 44) & 4) != 0)
    {
      goto LABEL_34;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 44) & 0x10) == 0 || self->_repairedStreamID != *(a3 + 7))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 44) & 0x10) != 0)
    {
      goto LABEL_34;
    }

    LOBYTE(v5) = (*(a3 + 44) & 8) == 0;
    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 44) & 8) == 0 || self->_repairedMaxNetworkBitrate != *(a3 + 6))
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

- (void)mergeFrom:(id)a3
{
  self->_ssrc = *(a3 + 8);
  v3 = *(a3 + 44);
  if ((v3 & 2) != 0)
  {
    self->_maxNetworkBitrate = *(a3 + 3);
    *&self->_has |= 2u;
    v3 = *(a3 + 44);
  }

  if ((v3 & 0x20) != 0)
  {
    self->_supportedPayloads = *(a3 + 10);
    *&self->_has |= 0x20u;
  }

  self->_streamID = *(a3 + 9);
  self->_qualityIndex = *(a3 + 5);
  v4 = *(a3 + 44);
  if (v4)
  {
    self->_maxMediaBitrate = *(a3 + 2);
    *&self->_has |= 1u;
    v4 = *(a3 + 44);
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

  else if ((*(a3 + 44) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_maxPacketsPerSecond = *(a3 + 4);
  *&self->_has |= 4u;
  v4 = *(a3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      return;
    }

LABEL_13:
    self->_repairedMaxNetworkBitrate = *(a3 + 6);
    *&self->_has |= 8u;
    return;
  }

LABEL_12:
  self->_repairedStreamID = *(a3 + 7);
  *&self->_has |= 0x10u;
  if ((*(a3 + 44) & 8) != 0)
  {
    goto LABEL_13;
  }
}

- (VCMediaNegotiationBlobMultiwayAudioStream)initWithStreamConfig:(id)a3
{
  if ([a3 isSubstream])
  {

    return 0;
  }

  else
  {
    v5 = [(VCMediaNegotiationBlobMultiwayAudioStream *)self init];
    if (v5)
    {
      v5->_ssrc = [a3 ssrc];
      v5->_maxNetworkBitrate = [a3 maxNetworkBitrate];
      *&v5->_has |= 2u;
      v5->_maxMediaBitrate = [a3 maxMediaBitrate];
      *&v5->_has |= 1u;
      v5->_maxPacketsPerSecond = [a3 maxPacketsPerSecond];
      *&v5->_has |= 4u;
      v5->_streamID = [a3 streamID];
      v5->_qualityIndex = [a3 qualityIndex];
      if ([a3 hasRepairedStreamID])
      {
        v6 = 16;
      }

      else
      {
        v6 = 0;
      }

      *&v5->_has = *&v5->_has & 0xEF | v6;
      v5->_repairedStreamID = [a3 repairedStreamID];
      v5->_repairedMaxNetworkBitrate = [a3 repairedMaxNetworkBitrate];
      *&v5->_has = (*&v5->_has >> 1) & 8 | *&v5->_has & 0xF7;
      -[VCMediaNegotiationBlobMultiwayAudioStream setPayloadFlagsWithPayloads:](v5, "setPayloadFlagsWithPayloads:", [a3 supportedAudioPayloads]);
    }
  }

  return v5;
}

- (void)setPayloadFlagsWithPayloads:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  *&self->_has |= 0x20u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = +[VCMediaNegotiationBlobAudioSettings negotiationPayloadFromPayload:](VCMediaNegotiationBlobAudioSettings, "negotiationPayloadFromPayload:", [*(*(&v11 + 1) + 8 * i) unsignedIntValue]);
        if (v9 != -1)
        {
          self->_supportedPayloads |= v9;
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
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

- (void)printWithLogFile:(void *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"Multiway Audio Stream Settings: SSRC=%x maxNetworkBitrate=%d maxMediaBitrate=%d maxPacketsPerSecond=%f supportedPayloads=0x%08x streamID=%d qualityIndex=%d hasRepaired:%u repairedMaxNetworkBitrate=%d repairedStreamID=%d", self->_ssrc, self->_maxNetworkBitrate, self->_maxMediaBitrate, self->_maxPacketsPerSecond, self->_supportedPayloads, self->_streamID, self->_qualityIndex, -[VCMediaNegotiationBlobMultiwayAudioStream hasRepairedStreamID](self, "hasRepairedStreamID"), self->_repairedMaxNetworkBitrate, self->_repairedStreamID];
  v5 = [v4 UTF8String];
  VRLogfilePrintWithTimestamp(a3, "Media Blob -     %s\n", v6, v7, v8, v9, v10, v11, v5);
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
      v21 = [v4 UTF8String];
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s\n", buf, 0x26u);
    }
  }
}

@end