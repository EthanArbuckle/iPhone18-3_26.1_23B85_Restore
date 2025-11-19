@interface HKBiologicalSexObject
- (BOOL)isEqual:(id)a3;
- (HKBiologicalSexObject)initWithCoder:(id)a3;
- (id)_initWithBiologicalSex:(int64_t)a3;
@end

@implementation HKBiologicalSexObject

- (id)_initWithBiologicalSex:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = HKBiologicalSexObject;
  v4 = [(HKBiologicalSexObject *)&v10 init];
  if (v4)
  {
    v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
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

    v4->_biologicalSex = v8;
  }

  return v4;
}

- (HKBiologicalSexObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKBiologicalSexObject;
  v5 = [(HKBiologicalSexObject *)&v12 init];
  if (v5)
  {
    v6 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
    v7 = [v4 decodeIntegerForKey:@"biologicalSex"];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [v6 _validateCharacteristic:v8 error:0];

    if (!v9)
    {

      v10 = 0;
      goto LABEL_6;
    }

    v5->_biologicalSex = v7;
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
    biologicalSex = self->_biologicalSex;
    v6 = biologicalSex == [v4 biologicalSex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end