@interface HKCharacteristicType
- (BOOL)_validateCharacteristic:(id)characteristic error:(id *)error;
- (HKCharacteristicType)initWithIdentifier:(id)identifier;
- (id)_canoncialUnit;
- (id)_relatedCategoryType;
- (id)_relatedQuantityType;
- (id)_relatedSampleForInsertionWithCharacteristicValue:(id)value;
- (id)_relatedSampleForInsertionWithCharacteristicValue:(id)value date:(id)date;
@end

@implementation HKCharacteristicType

- (id)_canoncialUnit
{
  code = [(HKObjectType *)self code];
  if ((code - 84) < 2)
  {
    v3 = @"kg";
    goto LABEL_7;
  }

  if ((code - 175) < 2)
  {
    v3 = @"d";
LABEL_7:
    v4 = [HKUnit unitFromString:v3];
    goto LABEL_8;
  }

  if (code == 86)
  {
    v3 = @"m";
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (HKCharacteristicType)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [HKObjectType characteristicTypeForIdentifier:identifierCopy];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), identifierCopy}];
  }

  return v5;
}

- (BOOL)_validateCharacteristic:(id)characteristic error:(id *)error
{
  characteristicCopy = characteristic;
  if (characteristicCopy)
  {
    code = [(HKObjectType *)self code];
    if (code > 174)
    {
      if ((code - 175) < 2)
      {
        v10 = @"d";
        goto LABEL_15;
      }

      if (code == 218)
      {
        selfCopy2 = characteristicCopy;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid cardio fitness medications use type %@, expected parameter of class %@", selfCopy2, objc_opt_class()}];
          goto LABEL_16;
        }

        unsignedIntegerValue = [(HKCharacteristicType *)selfCopy2 unsignedIntegerValue];
        if (unsignedIntegerValue < 4)
        {
          v11 = 1;
          goto LABEL_34;
        }

        [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid %@: %d", @"_HKDataTypeCardioFitnessMedicationsUse", unsignedIntegerValue}];
LABEL_47:
        v11 = 0;
        goto LABEL_34;
      }

      if (code != 177)
      {
LABEL_36:
        v29 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"self" class:objc_opt_class() selector:a2 format:{@"Unhandled data type code %ld", -[HKObjectType code](self, "code")}];
        selfCopy2 = v29;
        if (v29)
        {
          if (error)
          {
            v30 = v29;
            *error = selfCopy2;
          }

          else
          {
            _HKLogDroppedError(v29);
          }
        }

        goto LABEL_47;
      }
    }

    else
    {
      v9 = code - 66;
      if ((code - 66) <= 0x25)
      {
        if (((1 << v9) & 0x2000400001) != 0)
        {
          goto LABEL_22;
        }

        if (((1 << v9) & 0xC0000) != 0)
        {
          v10 = @"kg";
LABEL_15:
          selfCopy2 = [HKUnit unitFromString:v10];
          v13 = _HDValidatePositiveQuantityValue(self, characteristicCopy, selfCopy2, error);
LABEL_16:
          v11 = v13;
LABEL_34:

          goto LABEL_35;
        }

        if (code == 86)
        {
          v10 = @"m";
          goto LABEL_15;
        }
      }

      if (code != 64)
      {
        if (code == 65)
        {
          selfCopy2 = self;
          v14 = characteristicCopy;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            calendar = [v14 calendar];
            calendarIdentifier = [calendar calendarIdentifier];
            v17 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

            if ((v17 & 1) == 0)
            {
              v18 = MEMORY[0x1E696ABC0];
              v19 = objc_opt_class();
              identifier = [(HKObjectType *)selfCopy2 identifier];
              identifier2 = identifier;
              v22 = @"Invalid value %@ for %@: date components must specify a Gregorian calendar";
LABEL_27:
              [v18 hk_errorForInvalidArgument:@"value" class:v19 selector:sel__validateCharacteristic_error_ format:{v22, v14, identifier, v32}];
              goto LABEL_28;
            }

            goto LABEL_24;
          }

          goto LABEL_25;
        }

        goto LABEL_36;
      }
    }

LABEL_22:
    selfCopy2 = self;
    v14 = characteristicCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!HKCharacteristicTypeAcceptsValue(-[HKObjectType code](selfCopy2, "code"), [v14 integerValue]))
      {
        v18 = MEMORY[0x1E696ABC0];
        v19 = objc_opt_class();
        identifier = [(HKObjectType *)selfCopy2 identifier];
        identifier2 = identifier;
        v22 = @"Invalid value %@ for %@";
        goto LABEL_27;
      }

LABEL_24:
      v11 = 1;
LABEL_33:

      goto LABEL_34;
    }

LABEL_25:
    v23 = MEMORY[0x1E696ABC0];
    v24 = objc_opt_class();
    identifier2 = [(HKObjectType *)selfCopy2 identifier];
    [v23 hk_errorForInvalidArgument:@"value" class:v24 selector:sel__validateCharacteristic_error_ format:{@"Invalid value %@ for %@: expected parameter of class %@", v14, identifier2, objc_opt_class()}];
    v25 = LABEL_28:;
    v26 = v25;
    if (v25)
    {
      if (error)
      {
        v27 = v25;
        *error = v26;
      }

      else
      {
        _HKLogDroppedError(v25);
      }
    }

    v11 = 0;
    goto LABEL_33;
  }

  v11 = 1;
LABEL_35:

  return v11;
}

- (id)_relatedQuantityType
{
  code = [(HKObjectType *)self code];
  if ((code - 84) > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [HKObjectType quantityTypeForIdentifier:*off_1E7384360[code - 84]];
  }

  return v3;
}

- (id)_relatedCategoryType
{
  code = [(HKObjectType *)self code];
  v3 = 0;
  if (code <= 87)
  {
    if (code == 64)
    {
      v4 = 327;
    }

    else
    {
      if (code != 66)
      {
        goto LABEL_13;
      }

      v4 = 325;
    }
  }

  else
  {
    switch(code)
    {
      case 88:
        v4 = 326;
        break;
      case 103:
        v4 = 112;
        break;
      case 177:
        v4 = 190;
        break;
      default:
        goto LABEL_13;
    }
  }

  v3 = [HKObjectType dataTypeWithCode:v4];
LABEL_13:

  return v3;
}

- (id)_relatedSampleForInsertionWithCharacteristicValue:(id)value
{
  v4 = MEMORY[0x1E695DF00];
  valueCopy = value;
  date = [v4 date];
  v7 = [(HKCharacteristicType *)self _relatedSampleForInsertionWithCharacteristicValue:valueCopy date:date];

  return v7;
}

- (id)_relatedSampleForInsertionWithCharacteristicValue:(id)value date:(id)date
{
  valueCopy = value;
  dateCopy = date;
  if (valueCopy)
  {
    _relatedQuantityType = [(HKCharacteristicType *)self _relatedQuantityType];
    if (_relatedQuantityType)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [HKCharacteristicType(HKAdditions) _relatedSampleForInsertionWithCharacteristicValue:a2 date:self];
      }

      v10 = [HKQuantitySample quantitySampleWithType:_relatedQuantityType quantity:valueCopy startDate:dateCopy endDate:dateCopy];
    }

    else
    {
      _relatedCategoryType = [(HKCharacteristicType *)self _relatedCategoryType];
      if (_relatedCategoryType)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [HKCharacteristicType(HKAdditions) _relatedSampleForInsertionWithCharacteristicValue:a2 date:self];
        }

        v10 = +[HKCategorySample categorySampleWithType:value:startDate:endDate:](HKCategorySample, "categorySampleWithType:value:startDate:endDate:", _relatedCategoryType, [valueCopy longValue], dateCopy, dateCopy);
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end