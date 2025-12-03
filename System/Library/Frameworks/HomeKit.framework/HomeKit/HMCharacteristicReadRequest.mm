@interface HMCharacteristicReadRequest
+ (id)readRequestWithCharacteristic:(id)characteristic;
- (BOOL)isEqual:(id)equal;
- (HMCharacteristicReadRequest)initWithCharacteristic:(id)characteristic;
- (unint64_t)hash;
@end

@implementation HMCharacteristicReadRequest

- (unint64_t)hash
{
  characteristic = [(HMCharacteristicRequest *)self characteristic];
  v3 = [characteristic hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      characteristic = [(HMCharacteristicRequest *)self characteristic];
      characteristic2 = [(HMCharacteristicRequest *)v6 characteristic];
      v9 = [characteristic isEqual:characteristic2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMCharacteristicReadRequest)initWithCharacteristic:(id)characteristic
{
  v4.receiver = self;
  v4.super_class = HMCharacteristicReadRequest;
  return [(HMCharacteristicRequest *)&v4 initWithCharacteristic:characteristic];
}

+ (id)readRequestWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v4 = [[HMCharacteristicReadRequest alloc] initWithCharacteristic:characteristicCopy];

  return v4;
}

@end