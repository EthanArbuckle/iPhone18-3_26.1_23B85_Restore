@interface ACCBLEPairingAccessory
- (ACCBLEPairingAccessory)init;
- (void)dealloc;
@end

@implementation ACCBLEPairingAccessory

- (ACCBLEPairingAccessory)init
{
  v8.receiver = self;
  v8.super_class = ACCBLEPairingAccessory;
  v2 = [(ACCBLEPairingAccessory *)&v8 init];
  v3 = v2;
  if (v2)
  {
    iap2ShimAccessory = v2->_iap2ShimAccessory;
    v2->_iap2ShimAccessory = 0;

    blePairingUUID = v3->_blePairingUUID;
    v3->_blePairingUUID = 0;

    supportedPairTypes = v3->_supportedPairTypes;
    v3->_supportedPairTypes = 0;

    v3->_selectedPairType = 2;
  }

  return v3;
}

- (void)dealloc
{
  iap2ShimAccessory = self->_iap2ShimAccessory;
  self->_iap2ShimAccessory = 0;

  blePairingUUID = self->_blePairingUUID;
  self->_blePairingUUID = 0;

  supportedPairTypes = self->_supportedPairTypes;
  self->_supportedPairTypes = 0;

  self->_selectedPairType = 2;
  v6.receiver = self;
  v6.super_class = ACCBLEPairingAccessory;
  [(ACCBLEPairingAccessory *)&v6 dealloc];
}

@end