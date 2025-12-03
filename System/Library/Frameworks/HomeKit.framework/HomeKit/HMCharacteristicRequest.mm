@interface HMCharacteristicRequest
- (HMCharacteristicRequest)initWithCharacteristic:(id)characteristic;
@end

@implementation HMCharacteristicRequest

- (HMCharacteristicRequest)initWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if (characteristicCopy)
  {
    v10.receiver = self;
    v10.super_class = HMCharacteristicRequest;
    _init = [(HMRequestBase *)&v10 _init];
    v7 = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, characteristic);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end