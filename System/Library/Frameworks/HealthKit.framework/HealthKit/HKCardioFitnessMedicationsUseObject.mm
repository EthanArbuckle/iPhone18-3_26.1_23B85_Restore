@interface HKCardioFitnessMedicationsUseObject
- (BOOL)isEqual:(id)a3;
- (HKCardioFitnessMedicationsUseObject)initWithCoder:(id)a3;
- (id)_initWithCardioFitnessMedicationsUseOptions:(unint64_t)a3;
@end

@implementation HKCardioFitnessMedicationsUseObject

- (id)_initWithCardioFitnessMedicationsUseOptions:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = HKCardioFitnessMedicationsUseObject;
  v4 = [(HKCardioFitnessMedicationsUseObject *)&v10 init];
  if (v4)
  {
    v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse"];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = [v5 _validateCharacteristic:v6 error:0];

    if (v7)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }

    v4->_options = v8;
  }

  return v4;
}

- (HKCardioFitnessMedicationsUseObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKCardioFitnessMedicationsUseObject;
  v5 = [(HKCardioFitnessMedicationsUseObject *)&v12 init];
  if (v5)
  {
    v6 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse"];
    v7 = [v4 decodeIntegerForKey:@"cardioFitnessMedicationsUse"];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [v6 _validateCharacteristic:v8 error:0];

    if (!v9)
    {

      v10 = 0;
      goto LABEL_6;
    }

    v5->_options = v7;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_options == v4[1];

  return v5;
}

@end