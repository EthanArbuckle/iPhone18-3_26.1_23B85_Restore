@interface HKCardioFitnessMedicationsUseObject
- (BOOL)isEqual:(id)equal;
- (HKCardioFitnessMedicationsUseObject)initWithCoder:(id)coder;
- (id)_initWithCardioFitnessMedicationsUseOptions:(unint64_t)options;
@end

@implementation HKCardioFitnessMedicationsUseObject

- (id)_initWithCardioFitnessMedicationsUseOptions:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = HKCardioFitnessMedicationsUseObject;
  v4 = [(HKCardioFitnessMedicationsUseObject *)&v10 init];
  if (v4)
  {
    v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse"];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    v7 = [v5 _validateCharacteristic:v6 error:0];

    if (v7)
    {
      optionsCopy = options;
    }

    else
    {
      optionsCopy = 0;
    }

    v4->_options = optionsCopy;
  }

  return v4;
}

- (HKCardioFitnessMedicationsUseObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKCardioFitnessMedicationsUseObject;
  v5 = [(HKCardioFitnessMedicationsUseObject *)&v12 init];
  if (v5)
  {
    v6 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse"];
    v7 = [coderCopy decodeIntegerForKey:@"cardioFitnessMedicationsUse"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_options == equalCopy[1];

  return v5;
}

@end