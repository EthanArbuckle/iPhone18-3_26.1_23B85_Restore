@interface HKWheelchairUseObject
- (BOOL)isEqual:(id)a3;
- (HKWheelchairUseObject)initWithCoder:(id)a3;
- (id)_initWithWheelchairUse:(int64_t)a3;
@end

@implementation HKWheelchairUseObject

- (id)_initWithWheelchairUse:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = HKWheelchairUseObject;
  v4 = [(HKWheelchairUseObject *)&v10 init];
  if (v4)
  {
    v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = [v5 _validateCharacteristic:v6 error:0];

    if (v7)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }

    v4->_wheelchairUse = v8;
  }

  return v4;
}

- (HKWheelchairUseObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKWheelchairUseObject;
  v5 = [(HKWheelchairUseObject *)&v12 init];
  if (v5)
  {
    v6 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
    v7 = [v4 decodeIntegerForKey:@"wheelchairUse"];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [v6 _validateCharacteristic:v8 error:0];

    if (!v9)
    {

      v10 = 0;
      goto LABEL_6;
    }

    v5->_wheelchairUse = v7;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wheelchairUse = self->_wheelchairUse;
    v6 = wheelchairUse == [v4 wheelchairUse];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end