@interface MTRCommissionableBrowserResultInterfaces
- (Optional<chip::Dnssd::CommonResolutionData>)resolutionData;
@end

@implementation MTRCommissionableBrowserResultInterfaces

- (Optional<chip::Dnssd::CommonResolutionData>)resolutionData
{
  mHasValue = self->_resolutionData.mValueHolder.mHasValue;
  *v2 = mHasValue;
  if (mHasValue)
  {
    *(v2 + 8) = self[1].super.isa;
    v4 = *&self[8]._resolutionData.mValueHolder.mHasValue;
    *(v2 + 112) = *(self + 120);
    *(v2 + 128) = v4;
    *(v2 + 144) = *(self + 152);
    *(v2 + 155) = *(self + 163);
    v5 = *&self[4]._resolutionData.mValueHolder.mHasValue;
    *(v2 + 48) = *(self + 56);
    *(v2 + 64) = v5;
    v6 = *&self[6]._resolutionData.mValueHolder.mHasValue;
    *(v2 + 80) = *(self + 88);
    *(v2 + 96) = v6;
    v7 = *&self[2]._resolutionData.mValueHolder.mHasValue;
    *(v2 + 16) = *(self + 24);
    *(v2 + 32) = v7;
  }

  return self;
}

@end