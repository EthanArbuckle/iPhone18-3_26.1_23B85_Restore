@interface HKBiologicalSexObject
- (BOOL)isEqual:(id)equal;
- (HKBiologicalSexObject)initWithCoder:(id)coder;
- (id)_initWithBiologicalSex:(int64_t)sex;
@end

@implementation HKBiologicalSexObject

- (id)_initWithBiologicalSex:(int64_t)sex
{
  v10.receiver = self;
  v10.super_class = HKBiologicalSexObject;
  v4 = [(HKBiologicalSexObject *)&v10 init];
  if (v4)
  {
    v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:sex];
    v7 = [v5 _validateCharacteristic:v6 error:0];

    if (v7)
    {
      sexCopy = sex;
    }

    else
    {
      sexCopy = 0;
    }

    v4->_biologicalSex = sexCopy;
  }

  return v4;
}

- (HKBiologicalSexObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKBiologicalSexObject;
  v5 = [(HKBiologicalSexObject *)&v12 init];
  if (v5)
  {
    v6 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
    v7 = [coderCopy decodeIntegerForKey:@"biologicalSex"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    biologicalSex = self->_biologicalSex;
    v6 = biologicalSex == [equalCopy biologicalSex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end