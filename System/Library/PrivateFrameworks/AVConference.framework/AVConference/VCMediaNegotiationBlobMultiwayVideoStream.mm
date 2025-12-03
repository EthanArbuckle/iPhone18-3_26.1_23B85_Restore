@interface VCMediaNegotiationBlobMultiwayVideoStream
+ (BOOL)convertVideoFormat:(int)format width:(int *)width height:(int *)height;
+ (int)payloadForVideoPayload:(int)payload;
+ (int)videoFormatForWidth:(int)width height:(int)height;
+ (int)videoPayloadForPayload:(int)payload;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSubStream;
- (VCMediaNegotiationBlobMultiwayVideoStream)initWithStreamConfig:(id)config;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)newMultiwayVideoStream;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file;
- (void)setHasMaxNetworkBitrate:(BOOL)bitrate;
- (void)setHasMaxPacketsPerSecond:(BOOL)second;
- (void)setHasMetadata:(BOOL)metadata;
- (void)setHasRepairedMaxNetworkBitrate:(BOOL)bitrate;
- (void)setHasRepairedStreamID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobMultiwayVideoStream

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

- (void)setHasMetadata:(BOOL)metadata
{
  if (metadata)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasRepairedMaxNetworkBitrate:(BOOL)bitrate
{
  if (bitrate)
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_ssrc), @"ssrc"}];
  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxNetworkBitrate), @"maxNetworkBitrate"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_payload), @"payload"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_streamID), @"streamID"}];
  if ((*&self->_has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_metadata), @"metadata"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_qualityIndex), @"qualityIndex"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedVideoFormats), @"supportedVideoFormats"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_frameRate), @"frameRate"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_keyFrameInterval), @"keyFrameInterval"}];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxMediaBitrate), @"maxMediaBitrate"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedStreamID), @"repairedStreamID"}];
      if ((*&self->_has & 0x10) == 0)
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

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxPacketsPerSecond), @"maxPacketsPerSecond"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((has & 0x10) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_repairedMaxNetworkBitrate), @"repairedMaxNetworkBitrate"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  *(to + 12) = self->_ssrc;
  if ((*&self->_has & 2) != 0)
  {
    *(to + 5) = self->_maxNetworkBitrate;
    *(to + 60) |= 2u;
  }

  *(to + 8) = self->_payload;
  *(to + 13) = self->_streamID;
  if ((*&self->_has & 8) != 0)
  {
    *(to + 7) = self->_metadata;
    *(to + 60) |= 8u;
  }

  *(to + 9) = self->_qualityIndex;
  *(to + 14) = self->_supportedVideoFormats;
  *(to + 2) = self->_frameRate;
  *(to + 3) = self->_keyFrameInterval;
  has = self->_has;
  if (has)
  {
    *(to + 4) = self->_maxMediaBitrate;
    *(to + 60) |= 1u;
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

  *(to + 6) = self->_maxPacketsPerSecond;
  *(to + 60) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    *(to + 10) = self->_repairedMaxNetworkBitrate;
    *(to + 60) |= 0x10u;
    return;
  }

LABEL_12:
  *(to + 11) = self->_repairedStreamID;
  *(to + 60) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_ssrc != *(equal + 12))
    {
LABEL_38:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 60) & 2) == 0 || self->_maxNetworkBitrate != *(equal + 5))
      {
        goto LABEL_38;
      }
    }

    else if ((*(equal + 60) & 2) != 0)
    {
      goto LABEL_38;
    }

    if (self->_payload != *(equal + 8) || self->_streamID != *(equal + 13))
    {
      goto LABEL_38;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 60) & 8) == 0 || self->_metadata != *(equal + 7))
      {
        goto LABEL_38;
      }
    }

    else if ((*(equal + 60) & 8) != 0)
    {
      goto LABEL_38;
    }

    if (self->_qualityIndex != *(equal + 9) || self->_supportedVideoFormats != *(equal + 14) || self->_frameRate != *(equal + 2) || self->_keyFrameInterval != *(equal + 3))
    {
      goto LABEL_38;
    }

    if (*&self->_has)
    {
      if ((*(equal + 60) & 1) == 0 || self->_maxMediaBitrate != *(equal + 4))
      {
        goto LABEL_38;
      }
    }

    else if (*(equal + 60))
    {
      goto LABEL_38;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 60) & 4) == 0 || self->_maxPacketsPerSecond != *(equal + 6))
      {
        goto LABEL_38;
      }
    }

    else if ((*(equal + 60) & 4) != 0)
    {
      goto LABEL_38;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 60) & 0x20) == 0 || self->_repairedStreamID != *(equal + 11))
      {
        goto LABEL_38;
      }
    }

    else if ((*(equal + 60) & 0x20) != 0)
    {
      goto LABEL_38;
    }

    LOBYTE(v5) = (*(equal + 60) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 60) & 0x10) == 0 || self->_repairedMaxNetworkBitrate != *(equal + 10))
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

- (void)mergeFrom:(id)from
{
  self->_ssrc = *(from + 12);
  if ((*(from + 60) & 2) != 0)
  {
    self->_maxNetworkBitrate = *(from + 5);
    *&self->_has |= 2u;
  }

  self->_payload = *(from + 8);
  self->_streamID = *(from + 13);
  if ((*(from + 60) & 8) != 0)
  {
    self->_metadata = *(from + 7);
    *&self->_has |= 8u;
  }

  self->_qualityIndex = *(from + 9);
  self->_supportedVideoFormats = *(from + 14);
  self->_frameRate = *(from + 2);
  self->_keyFrameInterval = *(from + 3);
  v3 = *(from + 60);
  if (v3)
  {
    self->_maxMediaBitrate = *(from + 4);
    *&self->_has |= 1u;
    v3 = *(from + 60);
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

  else if ((*(from + 60) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_maxPacketsPerSecond = *(from + 6);
  *&self->_has |= 4u;
  v3 = *(from + 60);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    self->_repairedMaxNetworkBitrate = *(from + 10);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_12:
  self->_repairedStreamID = *(from + 11);
  *&self->_has |= 0x20u;
  if ((*(from + 60) & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

- (VCMediaNegotiationBlobMultiwayVideoStream)initWithStreamConfig:(id)config
{
  v4 = [(VCMediaNegotiationBlobMultiwayVideoStream *)self init];
  if (v4)
  {
    v4->_ssrc = [config ssrc];
    v4->_maxNetworkBitrate = [config maxNetworkBitrate];
    *&v4->_has = *&v4->_has & 0xF8 | 2;
    if ([config isSubstream])
    {
      v4->_metadata |= 1u;
    }

    *&v4->_has |= 8u;
    v4->_streamID = [config streamID];
    v4->_qualityIndex = [config qualityIndex];
    [config size];
    v6 = v5;
    [config size];
    v4->_supportedVideoFormats = [VCMediaNegotiationBlobMultiwayVideoStream videoFormatForWidth:v6 height:v7];
    v4->_frameRate = [config frameRate];
    v4->_keyFrameInterval = [config keyFrameInterval];
    if ([config hasRepairedStreamID])
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    *&v4->_has = *&v4->_has & 0xDF | v8;
    v4->_repairedStreamID = [config repairedStreamID];
    v4->_repairedMaxNetworkBitrate = [config repairedMaxNetworkBitrate];
    *&v4->_has = (*&v4->_has >> 1) & 0x10 | *&v4->_has & 0xEF;
    v4->_payload = +[VCMediaNegotiationBlobMultiwayVideoStream videoPayloadForPayload:](VCMediaNegotiationBlobMultiwayVideoStream, "videoPayloadForPayload:", [config payload]);
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

- (void)printWithLogFile:(void *)file
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multiway Video Stream Settings: SSRC=%x maxNetworkBitrate=%d maxMediaBitrate=%d maxPacketsPerSecond=%d payload=%d streamID=%d qualityIndex=%d supportedvideoFormats=%d frameRate=%d keyFrameInterval=%u metadata=%u hasRepaired:%u repairedMaxNetworkBitrate=%d repairedStreamID=%d", self->_ssrc, self->_maxNetworkBitrate, self->_maxMediaBitrate, self->_maxPacketsPerSecond, self->_payload, self->_streamID, self->_qualityIndex, self->_supportedVideoFormats, self->_frameRate, self->_keyFrameInterval, self->_metadata, -[VCMediaNegotiationBlobMultiwayVideoStream hasRepairedStreamID](self, "hasRepairedStreamID"), self->_repairedMaxNetworkBitrate, self->_repairedStreamID];
  uTF8String = [v3 UTF8String];
  VRLogfilePrintWithTimestamp(file, "Media Blob -     %s\n", v5, v6, v7, v8, v9, v10, uTF8String);
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
      uTF8String2 = [v3 UTF8String];
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s\n", buf, 0x26u);
    }
  }
}

+ (int)videoFormatForWidth:(int)width height:(int)height
{
  if (width == 192 && height == 112)
  {
    return 256;
  }

  if (width == 320 && height == 176)
  {
    return 1;
  }

  if (width == 320 && height == 240)
  {
    return 2;
  }

  if (width == 480 && height == 272)
  {
    return 4;
  }

  if (width == 480 && height == 368)
  {
    return 8;
  }

  if (width == 640 && height == 368)
  {
    return 16;
  }

  if (width == 640 && height == 480)
  {
    return 32;
  }

  if (width == 1024 && height == 768)
  {
    return 64;
  }

  if (width == 1280 && height == 720)
  {
    return 128;
  }

  if (width == 192 && height == 192)
  {
    return 512;
  }

  if (width == 240 && height == 240)
  {
    return 1024;
  }

  if (width == 320 && height == 320)
  {
    return 2048;
  }

  if (width == 480 && height == 480)
  {
    return 4096;
  }

  if (width == 640 && height == 640)
  {
    return 0x2000;
  }

  if (height == 720 && width == 720)
  {
    return 0x8000;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)convertVideoFormat:(int)format width:(int *)width height:(int *)height
{
  result = 0;
  if (format <= 127)
  {
    if (format > 7)
    {
      if (format > 31)
      {
        if (format != 32)
        {
          if (format != 64)
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

      if (format != 8)
      {
        if (format != 16)
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

    switch(format)
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

  if (format > 2047)
  {
    if (format >= 0x2000)
    {
      if (format == 0x2000)
      {
        v7 = 640;
        v6 = 640;
      }

      else
      {
        if (format != 0x8000)
        {
          return result;
        }

        v7 = 720;
        v6 = 720;
      }
    }

    else if (format == 2048)
    {
      v7 = 320;
      v6 = 320;
    }

    else
    {
      if (format != 4096)
      {
        return result;
      }

      v7 = 480;
      v6 = 480;
    }
  }

  else if (format > 511)
  {
    if (format == 512)
    {
      v7 = 192;
      v6 = 192;
    }

    else
    {
      if (format != 1024)
      {
        return result;
      }

      v7 = 240;
      v6 = 240;
    }
  }

  else if (format == 128)
  {
    v6 = 720;
    v7 = 1280;
  }

  else
  {
    if (format != 256)
    {
      return result;
    }

    v6 = 112;
    v7 = 192;
  }

LABEL_40:
  *width = v7;
  *height = v6;
  return 1;
}

+ (int)videoPayloadForPayload:(int)payload
{
  if (payload == 123)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (payload == 100)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

+ (int)payloadForVideoPayload:(int)payload
{
  if (payload == 1)
  {
    v3 = 123;
  }

  else
  {
    v3 = 128;
  }

  if (payload == 2)
  {
    return 100;
  }

  else
  {
    return v3;
  }
}

@end