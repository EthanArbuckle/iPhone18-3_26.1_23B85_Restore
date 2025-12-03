@interface HKBloodTypeObject
- (BOOL)isEqual:(id)equal;
- (HKBloodTypeObject)initWithCoder:(id)coder;
- (id)_initWithBloodType:(int64_t)type;
@end

@implementation HKBloodTypeObject

- (id)_initWithBloodType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = HKBloodTypeObject;
  v4 = [(HKBloodTypeObject *)&v10 init];
  if (v4)
  {
    v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v7 = [v5 _validateCharacteristic:v6 error:0];

    if (v7)
    {
      typeCopy = type;
    }

    else
    {
      typeCopy = 0;
    }

    v4->_bloodType = typeCopy;
  }

  return v4;
}

- (HKBloodTypeObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKBloodTypeObject;
  v5 = [(HKBloodTypeObject *)&v12 init];
  if (v5)
  {
    v6 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
    v7 = [coderCopy decodeIntegerForKey:@"bloodType"];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [v6 _validateCharacteristic:v8 error:0];

    if (!v9)
    {

      v10 = 0;
      goto LABEL_6;
    }

    v5->_bloodType = v7;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bloodType = self->_bloodType;
    v6 = bloodType == [equalCopy bloodType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end