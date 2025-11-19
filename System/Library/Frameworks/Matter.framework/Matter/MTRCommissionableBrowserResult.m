@interface MTRCommissionableBrowserResult
- (Optional<chip::Controller::SetUpCodePairerParameters>)params;
@end

@implementation MTRCommissionableBrowserResult

- (Optional<chip::Controller::SetUpCodePairerParameters>)params
{
  mHasValue = self->_params.mValueHolder.mHasValue;
  *v2 = mHasValue;
  if (mHasValue)
  {
    *(v2 + 8) = *&self[1].super.isa;
    instanceName_high = HIDWORD(self[1]._instanceName);
    *(v2 + 24) = self[1]._instanceName;
    *(v2 + 28) = instanceName_high;
    *(v2 + 32) = self[1]._vendorID;
    *(v2 + 88) = *&self[2]._commissioningMode;
    *(v2 + 104) = *&self[2]._vendorID;
    *(v2 + 120) = *&self[2]._discriminator;
    *(v2 + 132) = *(&self[2]._peripheral + 4);
    *(v2 + 40) = *&self[1]._productID;
    *(v2 + 56) = *&self[1]._peripheral;
    *(v2 + 72) = *&self[1]._params.mValueHolder.mHasValue;
    v5 = *(&self[2]._params + 4);
    *(v2 + 148) = v5;
    if (v5 == 1)
    {
      *(v2 + 152) = self[3].super.isa;
      *(v2 + 160) = *&self[3]._commissioningMode;
    }

    *(v2 + 168) = *&self[3]._instanceName;
    *(v2 + 184) = self[3]._productID;
    v6 = *&self[3]._interfaces;
    *(v2 + 192) = *&self[3]._discriminator;
    *(v2 + 208) = v6;
    *(v2 + 217) = *&self[3]._params.mValueHolder.mValue.mData;
    *(v2 + 236) = *(&self[4]._commissioningMode + 4);
  }

  return self;
}

@end