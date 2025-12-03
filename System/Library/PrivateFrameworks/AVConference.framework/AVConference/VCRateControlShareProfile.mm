@interface VCRateControlShareProfile
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VCRateControlShareProfile

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VCRateControlShareProfile allocWithZone:zone];
  [(VCRateControlShareProfile *)v4 setReservedBitrate:self->_reservedBitrate];
  [(VCRateControlShareProfile *)v4 setRateSharingCount:self->_rateSharingCount];
  return v4;
}

@end