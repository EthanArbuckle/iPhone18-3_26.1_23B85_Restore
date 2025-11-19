@interface _HKElectrocardiogramComparisonFilter
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)_acceptsECGWithAverageHeartRate:(id)a3;
- (BOOL)_acceptsECGWithPrivateClassification:(unint64_t)a3;
- (BOOL)_acceptsECGWithPublicClassification:(int64_t)a3;
- (BOOL)_acceptsECGWithSymptomsStatus:(int64_t)a3;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKElectrocardiogramComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ecg_average_heart_rate"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ecg_public_classification") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ecg_private_classification"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ecg_symptoms_status"];
  }

  return v4;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"ecg_average_heart_rate"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_7:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_8;
  }

  if (([v5 isEqualToString:@"ecg_public_classification"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"ecg_private_classification") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"ecg_symptoms_status"))
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:a1 file:@"_HKElectrocardiogramComparisonFilter.m" lineNumber:77 description:@"Unreachable code has been executed"];

  v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
LABEL_8:
  v8 = v7;

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v5 = a4;
  if (([v5 isEqualToString:@"ecg_public_classification"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"ecg_private_classification") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"ecg_symptoms_status"))
  {
    v6 = (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    v6 = [_HKComparisonFilter isAllowedPredicateOperatorType:a3 forKeyPath:v5];
  }

  return v6;
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS____HKElectrocardiogramComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, v8, a4, a5))
  {
    v9 = [v8 hk_allObjectsPassTestWithError:a5 test:&__block_literal_global_43];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v24.receiver = a1;
  v24.super_class = &OBJC_METACLASS____HKElectrocardiogramComparisonFilter;
  if (!objc_msgSendSuper2(&v24, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v12, v13, a5, a6, a7))
  {
    goto LABEL_15;
  }

  v14 = v12;
  v15 = v13;
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
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _IsValidValue(id  _Nullable __strong, NSString * _Nonnull __strong)"}];
        [v21 handleFailureInFunction:v22 file:@"_HKElectrocardiogramComparisonFilter.m" lineNumber:47 description:@"Unreachable code has been executed"];

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
    [MEMORY[0x1E696ABC0] hk_assignError:a7 code:3 format:{@"Invalid value '%@' for %@", v14, v15}];
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

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"ecg_average_heart_rate"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"ecg_public_classification"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"ecg_private_classification"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"ecg_symptoms_status"])
  {
    v6 = 3;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKElectrocardiogramComparisonFilter.m" lineNumber:139 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKElectrocardiogramComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, v5);
  }

  return v6;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(_HKComparisonFilter *)self keyPathIntegerValue];
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = -[_HKElectrocardiogramComparisonFilter _acceptsECGWithPrivateClassification:](self, "_acceptsECGWithPrivateClassification:", [v6 privateClassification]);
        goto LABEL_13;
      }

      if (v7 == 3)
      {
        v8 = -[_HKElectrocardiogramComparisonFilter _acceptsECGWithSymptomsStatus:](self, "_acceptsECGWithSymptomsStatus:", [v6 symptomsStatus]);
        goto LABEL_13;
      }
    }

    else
    {
      if (!v7)
      {
        v11 = [v6 averageHeartRate];
        v9 = [(_HKElectrocardiogramComparisonFilter *)self _acceptsECGWithAverageHeartRate:v11];

        goto LABEL_14;
      }

      if (v7 == 1)
      {
        v8 = -[_HKElectrocardiogramComparisonFilter _acceptsECGWithPublicClassification:](self, "_acceptsECGWithPublicClassification:", [v6 classification]);
LABEL_13:
        v9 = v8;
        goto LABEL_14;
      }
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_HKElectrocardiogramComparisonFilter.m" lineNumber:161 description:@"Unreachable code has been executed"];

    v9 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (BOOL)_acceptsECGWithPublicClassification:(int64_t)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(a3, [v5 integerValue]);

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

- (BOOL)_acceptsECGWithAverageHeartRate:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(_HKComparisonFilter *)self value];
  v6 = [v4 compare:v5];

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

- (BOOL)_acceptsECGWithPrivateClassification:(unint64_t)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(a3, [v5 integerValue]);

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

- (BOOL)_acceptsECGWithSymptomsStatus:(int64_t)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(a3, [v5 integerValue]);

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

@end