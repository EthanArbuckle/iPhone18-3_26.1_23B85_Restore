@interface VCMediaNegotiatorMultiwayMediaStream
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VCMediaNegotiatorMultiwayMediaStream

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [equal ssrc] != self->_ssrc || objc_msgSend(equal, "maxNetworkBitrate") != self->_maxNetworkBitrate || objc_msgSend(equal, "maxMediaBitrate") != self->_maxMediaBitrate || objc_msgSend(equal, "maxPacketsPerSecond") != self->_maxPacketsPerSecond || objc_msgSend(equal, "streamID") != self->_streamID || self->_isSubstream != objc_msgSend(equal, "isSubstream") || objc_msgSend(equal, "qualityIndex") != self->_qualityIndex || objc_msgSend(equal, "v2StreamID") != self->_v2StreamID || self->_hasV2StreamID != objc_msgSend(equal, "hasV2StreamID") || self->_hasRepairedStreamID != objc_msgSend(equal, "hasRepairedStreamID"))
  {
    return 0;
  }

  if (self->_hasV2StreamID)
  {
    if ([equal v2StreamID] != self->_v2StreamID)
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

  return [equal repairedStreamID] == self->_repairedStreamID && objc_msgSend(equal, "repairedMaxNetworkBitrate") == self->_repairedMaxNetworkBitrate;
}

@end