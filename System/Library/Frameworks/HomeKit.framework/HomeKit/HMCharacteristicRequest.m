@interface HMCharacteristicRequest
- (HMCharacteristicRequest)initWithCharacteristic:(id)a3;
@end

@implementation HMCharacteristicRequest

- (HMCharacteristicRequest)initWithCharacteristic:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = HMCharacteristicRequest;
    v6 = [(HMRequestBase *)&v10 _init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 1, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end