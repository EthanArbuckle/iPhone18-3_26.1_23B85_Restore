@interface _HKElectrocardiogramComparisonFilter
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)_acceptsECGWithAverageHeartRate:(id)rate;
- (BOOL)_acceptsECGWithPrivateClassification:(unint64_t)classification;
- (BOOL)_acceptsECGWithPublicClassification:(int64_t)classification;
- (BOOL)_acceptsECGWithSymptomsStatus:(int64_t)status;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKElectrocardiogramComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"ecg_average_heart_rate"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"ecg_public_classification") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"ecg_private_classification"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"ecg_symptoms_status"];
  }

  return v4;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"ecg_average_heart_rate"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_7:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_8;
  }

  if (([pathCopy isEqualToString:@"ecg_public_classification"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"ecg_private_classification") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"ecg_symptoms_status"))
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKElectrocardiogramComparisonFilter.m" lineNumber:77 description:@"Unreachable code has been executed"];

  v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
LABEL_8:
  v8 = v7;

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"ecg_public_classification"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"ecg_private_classification") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"ecg_symptoms_status"))
  {
    v6 = (type & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    v6 = [_HKComparisonFilter isAllowedPredicateOperatorType:type forKeyPath:pathCopy];
  }

  return v6;
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  typesCopy = types;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS____HKElectrocardiogramComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, typesCopy, path, error))
  {
    v9 = [typesCopy hk_allObjectsPassTestWithError:error test:&__block_literal_global_43];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = &OBJC_METACLASS____HKElectrocardiogramComparisonFilter;
  if (!objc_msgSendSuper2(&v24, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    goto LABEL_15;
  }

  v14 = valueCopy;
  v15 = pathCopy;
  if (![v15 isEqualToString:@"ecg_average_heart_rate"])
  {
    if ([v15 isEqualToString:@"ecg_public_classification"])
    {
      IsValid = _HKECGCPublicClassificationIsValid([v14 integerValue]);
    }

    else if ([v15 isEqualToString:@"ecg_private_classification"])
    {
      IsValid = _HKECGCPrivateClassificationIsValid([v14 integerValue]);
    }

    else
    {
      if (([v15 isEqualToString:@"ecg_symptoms_status"] & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _IsValidValue(id  _Nullable __strong, NSString * _Nonnull __strong)"}];
        [currentHandler handleFailureInFunction:v22 file:@"_HKElectrocardiogramComparisonFilter.m" lineNumber:47 description:@"Unreachable code has been executed"];

        goto LABEL_14;
      }

      IsValid = _HKECGSymptomsStatusIsValid([v14 integerValue]);
    }

    v19 = IsValid;

    if (v19)
    {
      goto LABEL_12;
    }

LABEL_14:
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid value '%@' for %@", v14, v15}];
LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  v16 = +[HKUnit _countPerMinuteUnit];
  v17 = [v14 isCompatibleWithUnit:v16];

  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v20 = 1;
LABEL_16:

  return v20;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"ecg_average_heart_rate"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"ecg_public_classification"])
  {
    v6 = 1;
  }

  else if ([pathCopy isEqualToString:@"ecg_private_classification"])
  {
    v6 = 2;
  }

  else if ([pathCopy isEqualToString:@"ecg_symptoms_status"])
  {
    v6 = 3;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKElectrocardiogramComparisonFilter.m" lineNumber:139 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKElectrocardiogramComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, pathCopy);
  }

  return v6;
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
    keyPathIntegerValue = [(_HKComparisonFilter *)self keyPathIntegerValue];
    if (keyPathIntegerValue > 1)
    {
      if (keyPathIntegerValue == 2)
      {
        v8 = -[_HKElectrocardiogramComparisonFilter _acceptsECGWithPrivateClassification:](self, "_acceptsECGWithPrivateClassification:", [v6 privateClassification]);
        goto LABEL_13;
      }

      if (keyPathIntegerValue == 3)
      {
        v8 = -[_HKElectrocardiogramComparisonFilter _acceptsECGWithSymptomsStatus:](self, "_acceptsECGWithSymptomsStatus:", [v6 symptomsStatus]);
        goto LABEL_13;
      }
    }

    else
    {
      if (!keyPathIntegerValue)
      {
        averageHeartRate = [v6 averageHeartRate];
        v9 = [(_HKElectrocardiogramComparisonFilter *)self _acceptsECGWithAverageHeartRate:averageHeartRate];

        goto LABEL_14;
      }

      if (keyPathIntegerValue == 1)
      {
        v8 = -[_HKElectrocardiogramComparisonFilter _acceptsECGWithPublicClassification:](self, "_acceptsECGWithPublicClassification:", [v6 classification]);
LABEL_13:
        v9 = v8;
        goto LABEL_14;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKElectrocardiogramComparisonFilter.m" lineNumber:161 description:@"Unreachable code has been executed"];

    v9 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (BOOL)_acceptsECGWithPublicClassification:(int64_t)classification
{
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(classification, [value integerValue]);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

- (BOOL)_acceptsECGWithAverageHeartRate:(id)rate
{
  if (!rate)
  {
    return 0;
  }

  rateCopy = rate;
  value = [(_HKComparisonFilter *)self value];
  v6 = [rateCopy compare:value];

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

- (BOOL)_acceptsECGWithPrivateClassification:(unint64_t)classification
{
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(classification, [value integerValue]);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

- (BOOL)_acceptsECGWithSymptomsStatus:(int64_t)status
{
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(status, [value integerValue]);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

@end