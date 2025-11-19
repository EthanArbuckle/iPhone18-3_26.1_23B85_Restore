@interface VCMediaNegotiatorStreamGroupCodecConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation VCMediaNegotiatorStreamGroupCodecConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"codecType=%ld, rtpPayload=%d, cipherSuite=%d", self->_codecType, self->_rtpPayload, self->_cipherSuite];
  v4 = v3;
  if (self->_pTime)
  {
    [v3 appendFormat:@", pTime=%ld", self->_pTime];
  }

  if (self->_useInBandFEC)
  {
    [v4 appendFormat:@", useInBandFEC"];
  }

  v5 = [MEMORY[0x1E695DF70] array];
  v6 = v5;
  if (self->_rtcpSREnabled)
  {
    [v5 addObject:@"SR"];
  }

  if (self->_rtcpPSFB_PLIEnabled)
  {
    [v6 addObject:@"PLI"];
  }

  if (self->_rtcpPSFB_FIREnabled)
  {
    [v6 addObject:@"FIR"];
  }

  if (self->_rtcpRTPFB_GNACKEnabled)
  {
    [v6 addObject:@"GNACK"];
  }

  if ([v6 count])
  {
    [v4 appendFormat:@", rtcp=[%@]", objc_msgSend(v6, "componentsJoinedByString:", @", ")];
  }

  if (self->_encoderUsage)
  {
    [v4 appendFormat:@", encoderUsage=%u", self->_encoderUsage];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setCodecType:self->_codecType];
    [v5 setRtpPayload:self->_rtpPayload];
    [v5 setPTime:self->_pTime];
    [v5 setRtcpRTPFB_GNACKEnabled:self->_rtcpRTPFB_GNACKEnabled];
    [v5 setRtcpPSFB_PLIEnabled:self->_rtcpPSFB_PLIEnabled];
    [v5 setRtcpPSFB_FIREnabled:self->_rtcpPSFB_FIREnabled];
    [v5 setRtcpSREnabled:self->_rtcpSREnabled];
    [v5 setH264LevelAsymmetryAllowed:self->_H264LevelAsymmetryAllowed];
    [v5 setH264PacketizationMode:self->_H264PacketizationMode];
    [v5 setUseInBandFEC:self->_useInBandFEC];
    [v5 setProfileLevelId:self->_profileLevelId];
    [v5 setSerializedSize:self->_serializedSize];
    [v5 setCipherSuite:self->_cipherSuite];
    [v5 setEncoderUsage:self->_encoderUsage];
  }

  return v5;
}

@end