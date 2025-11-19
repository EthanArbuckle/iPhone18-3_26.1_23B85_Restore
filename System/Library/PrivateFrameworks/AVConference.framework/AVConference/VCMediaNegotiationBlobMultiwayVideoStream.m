@interface VCMediaNegotiationBlobMultiwayVideoStream
+ (BOOL)convertVideoFormat:(int)a3 width:(int *)a4 height:(int *)a5;
+ (int)payloadForVideoPayload:(int)a3;
+ (int)videoFormatForWidth:(int)a3 height:(int)a4;
+ (int)videoPayloadForPayload:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSubStream;
- (VCMediaNegotiationBlobMultiwayVideoStream)initWithStreamConfig:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)newMultiwayVideoStream;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)printWithLogFile:(void *)a3;
- (void)setHasMaxNetworkBitrate:(BOOL)a3;
- (void)setHasMaxPacketsPerSecond:(BOOL)a3;
- (void)setHasMetadata:(BOOL)a3;
- (void)setHasRepairedMaxNetworkBitrate:(BOOL)a3;
- (void)setHasRepairedStreamID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobMultiwayVideoStream

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

- (void)setHasMetadata:(BOOL)a3
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
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasRepairedMaxNetworkBitrate:(BOOL)a3
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

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobMultiwayVideoStream;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobMultiwayVideoStream description](&v3, sel_description), -[VCMediaNegotiationBlobMultiwayVideoStream dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_ssrc), @"ssrc"}];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxNetworkBitrate), @"maxNetworkBitrate"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_payload), @"payload"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_streamID), @"streamID"}];
  if ((*&self->_has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_metadata), @"metadata"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_qualityIndex), @"qualityIndex"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedVideoFormats), @"supportedVideoFormats"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_frameRate), @"frameRate"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_keyFrameInterval), @"keyFrameInterval"}];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxMediaBitrate), @"maxMediaBitrate"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedStreamID), @"repairedStreamID"}];
      if ((*&self->_has & 0x10) == 0)
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

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxPacketsPerSecond), @"maxPacketsPerSecond"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((has & 0x10) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedMaxNetworkBitrate), @"repairedMaxNetworkBitrate"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 0x10) == 0)
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

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_13:

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  *(a3 + 12) = self->_ssrc;
  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 5) = self->_maxNetworkBitrate;
    *(a3 + 60) |= 2u;
  }

  *(a3 + 8) = self->_payload;
  *(a3 + 13) = self->_streamID;
  if ((*&self->_has & 8) != 0)
  {
    *(a3 + 7) = self->_metadata;
    *(a3 + 60) |= 8u;
  }

  *(a3 + 9) = self->_qualityIndex;
  *(a3 + 14) = self->_supportedVideoFormats;
  *(a3 + 2) = self->_frameRate;
  *(a3 + 3) = self->_keyFrameInterval;
  has = self->_has;
  if (has)
  {
    *(a3 + 4) = self->_maxMediaBitrate;
    *(a3 + 60) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
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

  *(a3 + 6) = self->_maxPacketsPerSecond;
  *(a3 + 60) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    *(a3 + 10) = self->_repairedMaxNetworkBitrate;
    *(a3 + 60) |= 0x10u;
    return;
  }

LABEL_12:
  *(a3 + 11) = self->_repairedStreamID;
  *(a3 + 60) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 12) = self->_ssrc;
  if ((*&self->_has & 2) != 0)
  {
    *(result + 5) = self->_maxNetworkBitrate;
    *(result + 60) |= 2u;
  }

  *(result + 8) = self->_payload;
  *(result + 13) = self->_streamID;
  if ((*&self->_has & 8) != 0)
  {
    *(result + 7) = self->_metadata;
    *(result + 60) |= 8u;
  }

  *(result + 9) = self->_qualityIndex;
  *(result + 14) = self->_supportedVideoFormats;
  *(result + 2) = self->_frameRate;
  *(result + 3) = self->_keyFrameInterval;
  has = self->_has;
  if (has)
  {
    *(result + 4) = self->_maxMediaBitrate;
    *(result + 60) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
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

  *(result + 6) = self->_maxPacketsPerSecond;
  *(result + 60) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_13:
  *(result + 11) = self->_repairedStreamID;
  *(result + 60) |= 0x20u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 10) = self->_repairedMaxNetworkBitrate;
  *(result + 60) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_ssrc != *(a3 + 12))
    {
LABEL_38:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 60) & 2) == 0 || self->_maxNetworkBitrate != *(a3 + 5))
      {
        goto LABEL_38;
      }
    }

    else if ((*(a3 + 60) & 2) != 0)
    {
      goto LABEL_38;
    }

    if (self->_payload != *(a3 + 8) || self->_streamID != *(a3 + 13))
    {
      goto LABEL_38;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 60) & 8) == 0 || self->_metadata != *(a3 + 7))
      {
        goto LABEL_38;
      }
    }

    else if ((*(a3 + 60) & 8) != 0)
    {
      goto LABEL_38;
    }

    if (self->_qualityIndex != *(a3 + 9) || self->_supportedVideoFormats != *(a3 + 14) || self->_frameRate != *(a3 + 2) || self->_keyFrameInterval != *(a3 + 3))
    {
      goto LABEL_38;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 60) & 1) == 0 || self->_maxMediaBitrate != *(a3 + 4))
      {
        goto LABEL_38;
      }
    }

    else if (*(a3 + 60))
    {
      goto LABEL_38;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 60) & 4) == 0 || self->_maxPacketsPerSecond != *(a3 + 6))
      {
        goto LABEL_38;
      }
    }

    else if ((*(a3 + 60) & 4) != 0)
    {
      goto LABEL_38;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 60) & 0x20) == 0 || self->_repairedStreamID != *(a3 + 11))
      {
        goto LABEL_38;
      }
    }

    else if ((*(a3 + 60) & 0x20) != 0)
    {
      goto LABEL_38;
    }

    LOBYTE(v5) = (*(a3 + 60) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 60) & 0x10) == 0 || self->_repairedMaxNetworkBitrate != *(a3 + 10))
      {
        goto LABEL_38;
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
    v2 = 2654435761 * self->_maxNetworkBitrate;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_metadata;
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_maxMediaBitrate;
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_maxPacketsPerSecond;
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v6 = 2654435761 * self->_repairedStreamID;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    v7 = 0;
    return v2 ^ (2654435761 * self->_ssrc) ^ (2654435761 * self->_payload) ^ (2654435761 * self->_streamID) ^ v3 ^ (2654435761 * self->_qualityIndex) ^ (2654435761 * self->_supportedVideoFormats) ^ (2654435761 * self->_frameRate) ^ (2654435761 * self->_keyFrameInterval) ^ v4 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v7 = 2654435761 * self->_repairedMaxNetworkBitrate;
  return v2 ^ (2654435761 * self->_ssrc) ^ (2654435761 * self->_payload) ^ (2654435761 * self->_streamID) ^ v3 ^ (2654435761 * self->_qualityIndex) ^ (2654435761 * self->_supportedVideoFormats) ^ (2654435761 * self->_frameRate) ^ (2654435761 * self->_keyFrameInterval) ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  self->_ssrc = *(a3 + 12);
  if ((*(a3 + 60) & 2) != 0)
  {
    self->_maxNetworkBitrate = *(a3 + 5);
    *&self->_has |= 2u;
  }

  self->_payload = *(a3 + 8);
  self->_streamID = *(a3 + 13);
  if ((*(a3 + 60) & 8) != 0)
  {
    self->_metadata = *(a3 + 7);
    *&self->_has |= 8u;
  }

  self->_qualityIndex = *(a3 + 9);
  self->_supportedVideoFormats = *(a3 + 14);
  self->_frameRate = *(a3 + 2);
  self->_keyFrameInterval = *(a3 + 3);
  v3 = *(a3 + 60);
  if (v3)
  {
    self->_maxMediaBitrate = *(a3 + 4);
    *&self->_has |= 1u;
    v3 = *(a3 + 60);
    if ((v3 & 4) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a3 + 60) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_maxPacketsPerSecond = *(a3 + 6);
  *&self->_has |= 4u;
  v3 = *(a3 + 60);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    self->_repairedMaxNetworkBitrate = *(a3 + 10);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_12:
  self->_repairedStreamID = *(a3 + 11);
  *&self->_has |= 0x20u;
  if ((*(a3 + 60) & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

- (VCMediaNegotiationBlobMultiwayVideoStream)initWithStreamConfig:(id)a3
{
  v4 = [(VCMediaNegotiationBlobMultiwayVideoStream *)self init];
  if (v4)
  {
    v4->_ssrc = [a3 ssrc];
    v4->_maxNetworkBitrate = [a3 maxNetworkBitrate];
    *&v4->_has = *&v4->_has & 0xF8 | 2;
    if ([a3 isSubstream])
    {
      v4->_metadata |= 1u;
    }

    *&v4->_has |= 8u;
    v4->_streamID = [a3 streamID];
    v4->_qualityIndex = [a3 qualityIndex];
    [a3 size];
    v6 = v5;
    [a3 size];
    v4->_supportedVideoFormats = [VCMediaNegotiationBlobMultiwayVideoStream videoFormatForWidth:v6 height:v7];
    v4->_frameRate = [a3 frameRate];
    v4->_keyFrameInterval = [a3 keyFrameInterval];
    if ([a3 hasRepairedStreamID])
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    *&v4->_has = *&v4->_has & 0xDF | v8;
    v4->_repairedStreamID = [a3 repairedStreamID];
    v4->_repairedMaxNetworkBitrate = [a3 repairedMaxNetworkBitrate];
    *&v4->_has = (*&v4->_has >> 1) & 0x10 | *&v4->_has & 0xEF;
    v4->_payload = +[VCMediaNegotiationBlobMultiwayVideoStream videoPayloadForPayload:](VCMediaNegotiationBlobMultiwayVideoStream, "videoPayloadForPayload:", [a3 payload]);
  }

  return v4;
}

- (id)newMultiwayVideoStream
{
  v3 = objc_alloc_init(VCMediaNegotiatorMultiwayVideoStream);
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setSsrc:self->_ssrc];
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setMaxMediaBitrate:self->_maxMediaBitrate];
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setMaxNetworkBitrate:self->_maxNetworkBitrate];
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setMaxPacketsPerSecond:self->_maxPacketsPerSecond];
  if ((*&self->_has & 8) != 0)
  {
    [(VCMediaNegotiatorMultiwayMediaStream *)v3 setIsSubstream:self->_metadata & 1];
  }

  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setStreamID:LOWORD(self->_streamID)];
  [(VCMediaNegotiatorMultiwayMediaStream *)v3 setQualityIndex:self->_qualityIndex];
  supportedVideoFormats = self->_supportedVideoFormats;
  if (supportedVideoFormats)
  {
    v5 = 1;
    do
    {
      v6 = v5;
      v5 *= 2;
    }

    while ((supportedVideoFormats & v6) == 0);
    [VCMediaNegotiationBlobMultiwayVideoStream convertVideoFormat:"convertVideoFormat:width:height:" width:? height:?];
    [(VCMediaNegotiatorMultiwayVideoStream *)v3 setSize:-1431655766, -1431655766];
  }

  [(VCMediaNegotiatorMultiwayVideoStream *)v3 setPayload:[VCMediaNegotiationBlobMultiwayVideoStream payloadForVideoPayload:self->_payload]];
  [(VCMediaNegotiatorMultiwayVideoStream *)v3 setFrameRate:self->_frameRate];
  [(VCMediaNegotiatorMultiwayVideoStream *)v3 setKeyFrameInterval:self->_keyFrameInterval];
  if ((*&self->_has & 0x20) != 0)
  {
    [(VCMediaNegotiatorMultiwayMediaStream *)v3 setHasRepairedStreamID:1];
    [(VCMediaNegotiatorMultiwayMediaStream *)v3 setRepairedStreamID:LOWORD(self->_repairedStreamID)];
    [(VCMediaNegotiatorMultiwayMediaStream *)v3 setRepairedMaxNetworkBitrate:self->_repairedMaxNetworkBitrate];
  }

  return v3;
}

- (BOOL)isSubStream
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_metadata & 1;
  }

  else
  {
    return 0;
  }
}

- (void)printWithLogFile:(void *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multiway Video Stream Settings: SSRC=%x maxNetworkBitrate=%d maxMediaBitrate=%d maxPacketsPerSecond=%d payload=%d streamID=%d qualityIndex=%d supportedvideoFormats=%d frameRate=%d keyFrameInterval=%u metadata=%u hasRepaired:%u repairedMaxNetworkBitrate=%d repairedStreamID=%d", self->_ssrc, self->_maxNetworkBitrate, self->_maxMediaBitrate, self->_maxPacketsPerSecond, self->_payload, self->_streamID, self->_qualityIndex, self->_supportedVideoFormats, self->_frameRate, self->_keyFrameInterval, self->_metadata, -[VCMediaNegotiationBlobMultiwayVideoStream hasRepairedStreamID](self, "hasRepairedStreamID"), self->_repairedMaxNetworkBitrate, self->_repairedStreamID];
  v4 = [v3 UTF8String];
  VRLogfilePrintWithTimestamp(a3, "Media Blob -     %s\n", v5, v6, v7, v8, v9, v10, v4);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v11;
      v16 = 2080;
      v17 = "[VCMediaNegotiationBlobMultiwayVideoStream(MultiwayVideoStream) printWithLogFile:]";
      v18 = 1024;
      v19 = 1436;
      v20 = 2080;
      v21 = [v3 UTF8String];
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s\n", buf, 0x26u);
    }
  }
}

+ (int)videoFormatForWidth:(int)a3 height:(int)a4
{
  if (a3 == 192 && a4 == 112)
  {
    return 256;
  }

  if (a3 == 320 && a4 == 176)
  {
    return 1;
  }

  if (a3 == 320 && a4 == 240)
  {
    return 2;
  }

  if (a3 == 480 && a4 == 272)
  {
    return 4;
  }

  if (a3 == 480 && a4 == 368)
  {
    return 8;
  }

  if (a3 == 640 && a4 == 368)
  {
    return 16;
  }

  if (a3 == 640 && a4 == 480)
  {
    return 32;
  }

  if (a3 == 1024 && a4 == 768)
  {
    return 64;
  }

  if (a3 == 1280 && a4 == 720)
  {
    return 128;
  }

  if (a3 == 192 && a4 == 192)
  {
    return 512;
  }

  if (a3 == 240 && a4 == 240)
  {
    return 1024;
  }

  if (a3 == 320 && a4 == 320)
  {
    return 2048;
  }

  if (a3 == 480 && a4 == 480)
  {
    return 4096;
  }

  if (a3 == 640 && a4 == 640)
  {
    return 0x2000;
  }

  if (a4 == 720 && a3 == 720)
  {
    return 0x8000;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)convertVideoFormat:(int)a3 width:(int *)a4 height:(int *)a5
{
  result = 0;
  if (a3 <= 127)
  {
    if (a3 > 7)
    {
      if (a3 > 31)
      {
        if (a3 != 32)
        {
          if (a3 != 64)
          {
            return result;
          }

          v6 = 768;
          v7 = 1024;
          goto LABEL_40;
        }

        v6 = 480;
        goto LABEL_32;
      }

      if (a3 != 8)
      {
        if (a3 != 16)
        {
          return result;
        }

        v6 = 368;
LABEL_32:
        v7 = 640;
        goto LABEL_40;
      }

      v6 = 368;
LABEL_30:
      v7 = 480;
      goto LABEL_40;
    }

    switch(a3)
    {
      case 1:
        v6 = 176;
        break;
      case 2:
        v6 = 240;
        break;
      case 4:
        v6 = 272;
        goto LABEL_30;
      default:
        return result;
    }

    v7 = 320;
    goto LABEL_40;
  }

  if (a3 > 2047)
  {
    if (a3 >= 0x2000)
    {
      if (a3 == 0x2000)
      {
        v7 = 640;
        v6 = 640;
      }

      else
      {
        if (a3 != 0x8000)
        {
          return result;
        }

        v7 = 720;
        v6 = 720;
      }
    }

    else if (a3 == 2048)
    {
      v7 = 320;
      v6 = 320;
    }

    else
    {
      if (a3 != 4096)
      {
        return result;
      }

      v7 = 480;
      v6 = 480;
    }
  }

  else if (a3 > 511)
  {
    if (a3 == 512)
    {
      v7 = 192;
      v6 = 192;
    }

    else
    {
      if (a3 != 1024)
      {
        return result;
      }

      v7 = 240;
      v6 = 240;
    }
  }

  else if (a3 == 128)
  {
    v6 = 720;
    v7 = 1280;
  }

  else
  {
    if (a3 != 256)
    {
      return result;
    }

    v6 = 112;
    v7 = 192;
  }

LABEL_40:
  *a4 = v7;
  *a5 = v6;
  return 1;
}

+ (int)videoPayloadForPayload:(int)a3
{
  if (a3 == 123)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (a3 == 100)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

+ (int)payloadForVideoPayload:(int)a3
{
  if (a3 == 1)
  {
    v3 = 123;
  }

  else
  {
    v3 = 128;
  }

  if (a3 == 2)
  {
    return 100;
  }

  else
  {
    return v3;
  }
}

@end