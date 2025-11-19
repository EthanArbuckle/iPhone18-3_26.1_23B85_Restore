@interface VCRateControlShareProfile
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VCRateControlShareProfile

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VCRateControlShareProfile allocWithZone:a3];
  [(VCRateControlShareProfile *)v4 setReservedBitrate:self->_reservedBitrate];
  [(VCRateControlShareProfile *)v4 setRateSharingCount:self->_rateSharingCount];
  return v4;
}

@end