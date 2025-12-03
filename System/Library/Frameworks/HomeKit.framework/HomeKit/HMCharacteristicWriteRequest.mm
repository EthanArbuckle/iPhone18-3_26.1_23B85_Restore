@interface HMCharacteristicWriteRequest
+ (id)writeRequestWithCharacteristic:(id)characteristic value:(id)value;
- (BOOL)isEqual:(id)equal;
- (HMCharacteristicWriteRequest)initWithCharacteristic:(id)characteristic value:(id)value;
- (unint64_t)hash;
@end

@implementation HMCharacteristicWriteRequest

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

- (HMCharacteristicWriteRequest)initWithCharacteristic:(id)characteristic value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = HMCharacteristicWriteRequest;
  v8 = [(HMCharacteristicRequest *)&v11 initWithCharacteristic:characteristic];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
  }

  return v9;
}

+ (id)writeRequestWithCharacteristic:(id)characteristic value:(id)value
{
  valueCopy = value;
  characteristicCopy = characteristic;
  v7 = [[HMCharacteristicWriteRequest alloc] initWithCharacteristic:characteristicCopy value:valueCopy];

  return v7;
}

@end