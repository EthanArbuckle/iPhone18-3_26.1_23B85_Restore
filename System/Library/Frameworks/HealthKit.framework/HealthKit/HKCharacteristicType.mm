@interface HKCharacteristicType
- (BOOL)_validateCharacteristic:(id)a3 error:(id *)a4;
- (HKCharacteristicType)initWithIdentifier:(id)a3;
- (id)_canoncialUnit;
- (id)_relatedCategoryType;
- (id)_relatedQuantityType;
- (id)_relatedSampleForInsertionWithCharacteristicValue:(id)a3;
- (id)_relatedSampleForInsertionWithCharacteristicValue:(id)a3 date:(id)a4;
@end

@implementation HKCharacteristicType

- (id)_canoncialUnit
{
  v2 = [(HKObjectType *)self code];
  if ((v2 - 84) < 2)
  {
    v3 = @"kg";
    goto LABEL_7;
  }

  if ((v2 - 175) < 2)
  {
    v3 = @"d";
LABEL_7:
    v4 = [HKUnit unitFromString:v3];
    goto LABEL_8;
  }

  if (v2 == 86)
  {
    v3 = @"m";
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (HKCharacteristicType)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [HKObjectType characteristicTypeForIdentifier:v4];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), v4}];
  }

  return v5;
}

- (BOOL)_validateCharacteristic:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = [(HKObjectType *)self code];
    if (v8 > 174)
    {
      if ((v8 - 175) < 2)
      {
        v10 = @"d";
        goto LABEL_15;
      }

      if (v8 == 218)
      {
        v12 = v7;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Invalid cardio fitness medications use type %@, expected parameter of class %@", v12, objc_opt_class()}];
          goto LABEL_16;
        }

        v31 = [(HKCharacteristicType *)v12 unsignedIntegerValue];
        if (v31 < 4)
        {
          v11 = 1;
          goto LABEL_34;
        }

        [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Invalid %@: %d", @"_HKDataTypeCardioFitnessMedicationsUse", v31}];
LABEL_47:
        v11 = 0;
        goto LABEL_34;
      }

      if (v8 != 177)
      {
LABEL_36:
        v29 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"self" class:objc_opt_class() selector:a2 format:{@"Unhandled data type code %ld", -[HKObjectType code](self, "code")}];
        v12 = v29;
        if (v29)
        {
          if (a4)
          {
            v30 = v29;
            *a4 = v12;
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
      v9 = v8 - 66;
      if ((v8 - 66) <= 0x25)
      {
        if (((1 << v9) & 0x2000400001) != 0)
        {
          goto LABEL_22;
        }

        if (((1 << v9) & 0xC0000) != 0)
        {
          v10 = @"kg";
LABEL_15:
          v12 = [HKUnit unitFromString:v10];
          v13 = _HDValidatePositiveQuantityValue(self, v7, v12, a4);
LABEL_16:
          v11 = v13;
LABEL_34:

          goto LABEL_35;
        }

        if (v8 == 86)
        {
          v10 = @"m";
          goto LABEL_15;
        }
      }

      if (v8 != 64)
      {
        if (v8 == 65)
        {
          v12 = self;
          v14 = v7;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 calendar];
            v16 = [v15 calendarIdentifier];
            v17 = [v16 isEqualToString:*MEMORY[0x1E695D850]];

            if ((v17 & 1) == 0)
            {
              v18 = MEMORY[0x1E696ABC0];
              v19 = objc_opt_class();
              v20 = [(HKObjectType *)v12 identifier];
              v21 = v20;
              v22 = @"Invalid value %@ for %@: date components must specify a Gregorian calendar";
LABEL_27:
              [v18 hk_errorForInvalidArgument:@"value" class:v19 selector:sel__validateCharacteristic_error_ format:{v22, v14, v20, v32}];
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
    v12 = self;
    v14 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!HKCharacteristicTypeAcceptsValue(-[HKObjectType code](v12, "code"), [v14 integerValue]))
      {
        v18 = MEMORY[0x1E696ABC0];
        v19 = objc_opt_class();
        v20 = [(HKObjectType *)v12 identifier];
        v21 = v20;
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
    v21 = [(HKObjectType *)v12 identifier];
    [v23 hk_errorForInvalidArgument:@"value" class:v24 selector:sel__validateCharacteristic_error_ format:{@"Invalid value %@ for %@: expected parameter of class %@", v14, v21, objc_opt_class()}];
    v25 = LABEL_28:;
    v26 = v25;
    if (v25)
    {
      if (a4)
      {
        v27 = v25;
        *a4 = v26;
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
  v2 = [(HKObjectType *)self code];
  if ((v2 - 84) > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [HKObjectType quantityTypeForIdentifier:*off_1E7384360[v2 - 84]];
  }

  return v3;
}

- (id)_relatedCategoryType
{
  v2 = [(HKObjectType *)self code];
  v3 = 0;
  if (v2 <= 87)
  {
    if (v2 == 64)
    {
      v4 = 327;
    }

    else
    {
      if (v2 != 66)
      {
        goto LABEL_13;
      }

      v4 = 325;
    }
  }

  else
  {
    switch(v2)
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

- (id)_relatedSampleForInsertionWithCharacteristicValue:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(HKCharacteristicType *)self _relatedSampleForInsertionWithCharacteristicValue:v5 date:v6];

  return v7;
}

- (id)_relatedSampleForInsertionWithCharacteristicValue:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [(HKCharacteristicType *)self _relatedQuantityType];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [HKCharacteristicType(HKAdditions) _relatedSampleForInsertionWithCharacteristicValue:a2 date:self];
      }

      v10 = [HKQuantitySample quantitySampleWithType:v9 quantity:v7 startDate:v8 endDate:v8];
    }

    else
    {
      v11 = [(HKCharacteristicType *)self _relatedCategoryType];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [HKCharacteristicType(HKAdditions) _relatedSampleForInsertionWithCharacteristicValue:a2 date:self];
        }

        v10 = +[HKCategorySample categorySampleWithType:value:startDate:endDate:](HKCategorySample, "categorySampleWithType:value:startDate:endDate:", v11, [v7 longValue], v8, v8);
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