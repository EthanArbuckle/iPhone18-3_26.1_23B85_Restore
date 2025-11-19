@interface VCMediaNegotiatorMultiwayMediaStream
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VCMediaNegotiatorMultiwayMediaStream

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setSsrc:self->_ssrc];
    [v5 setMaxNetworkBitrate:self->_maxNetworkBitrate];
    [v5 setMaxMediaBitrate:self->_maxMediaBitrate];
    [v5 setMaxPacketsPerSecond:self->_maxPacketsPerSecond];
    [v5 setStreamID:self->_streamID];
    [v5 setIsSubstream:self->_isSubstream];
    [v5 setQualityIndex:self->_qualityIndex];
    [v5 setHasRepairedStreamID:self->_hasRepairedStreamID];
    [v5 setRepairedStreamID:self->_repairedStreamID];
    [v5 setRepairedMaxNetworkBitrate:self->_repairedMaxNetworkBitrate];
    [v5 setV2StreamID:self->_v2StreamID];
    [v5 setHasV2StreamID:self->_hasV2StreamID];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [a3 ssrc] != self->_ssrc || objc_msgSend(a3, "maxNetworkBitrate") != self->_maxNetworkBitrate || objc_msgSend(a3, "maxMediaBitrate") != self->_maxMediaBitrate || objc_msgSend(a3, "maxPacketsPerSecond") != self->_maxPacketsPerSecond || objc_msgSend(a3, "streamID") != self->_streamID || self->_isSubstream != objc_msgSend(a3, "isSubstream") || objc_msgSend(a3, "qualityIndex") != self->_qualityIndex || objc_msgSend(a3, "v2StreamID") != self->_v2StreamID || self->_hasV2StreamID != objc_msgSend(a3, "hasV2StreamID") || self->_hasRepairedStreamID != objc_msgSend(a3, "hasRepairedStreamID"))
  {
    return 0;
  }

  if (self->_hasV2StreamID)
  {
    if ([a3 v2StreamID] != self->_v2StreamID)
    {
      return 0;
    }

    if (!self->_hasRepairedStreamID)
    {
      return 1;
    }
  }

  else if (!self->_hasRepairedStreamID)
  {
    return 1;
  }

  return [a3 repairedStreamID] == self->_repairedStreamID && objc_msgSend(a3, "repairedMaxNetworkBitrate") == self->_repairedMaxNetworkBitrate;
}

@end