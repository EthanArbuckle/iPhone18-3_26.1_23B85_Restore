@interface _HKMedicalRecordComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)_acceptsRecordWithDate:(id)a3;
- (BOOL)_acceptsRecordWithManuallyEnteredIdentifier:(unint64_t)a3;
- (BOOL)_acceptsRecordWithState:(unint64_t)a3;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKMedicalRecordComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"modifiedDate"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"medicalRecordOriginType") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"sortDate") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"state") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"userDomainConcept"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"signedClinicalDataOriginIdentifier"];
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
  if ([v5 isEqualToString:@"modifiedDate"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_5:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"medicalRecordOriginType"])
  {
LABEL_4:
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"sortDate"])
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v7 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  }

  else
  {
    if ([v5 isEqualToString:@"state"])
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:@"userDomainConcept"])
    {
      v6 = MEMORY[0x1E695DFD8];
      goto LABEL_5;
    }

    if ([v5 isEqualToString:@"signedClinicalDataOriginIdentifier"])
    {
      v6 = MEMORY[0x1E695DFD8];
      goto LABEL_5;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"_HKMedicalRecordComparisonFilter.m" lineNumber:71 description:@"Unreachable code has been executed"];

    v7 = [MEMORY[0x1E695DFD8] set];
  }

LABEL_6:
  v8 = v7;

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v5 = a4;
  if (([v5 isEqualToString:@"medicalRecordOriginType"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"state"))
  {
    v6 = (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else if ([v5 isEqualToString:@"userDomainConcept"])
  {
    v6 = a3 == 99;
  }

  else
  {
    if (![v5 isEqualToString:@"signedClinicalDataOriginIdentifier"])
    {
      v7 = [_HKComparisonFilter isAllowedPredicateOperatorType:a3 forKeyPath:v5];
      goto LABEL_7;
    }

    v6 = a3 == 4;
  }

  v7 = v6;
LABEL_7:

  return v7;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"modifiedDate"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"medicalRecordOriginType"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"sortDate"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"state"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"userDomainConcept"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"signedClinicalDataOriginIdentifier"])
  {
    v6 = 5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKMedicalRecordComparisonFilter.m" lineNumber:113 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKMedicalRecordComparisonFilter;
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
    if (v7 > 2)
    {
      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v11 = MEMORY[0x1E695DF30];
          v12 = *MEMORY[0x1E695D940];
          v13 = @"_KeyPathEnumValueUserDomainConcept does not support in-memory filtering";
        }

        else
        {
          if (v7 != 5)
          {
LABEL_15:
            v15 = [MEMORY[0x1E696AAA8] currentHandler];
            [v15 handleFailureInMethod:a2 object:self file:@"_HKMedicalRecordComparisonFilter.m" lineNumber:141 description:@"Unreachable code has been executed"];

LABEL_20:
            v10 = 0;
            goto LABEL_21;
          }

          v11 = MEMORY[0x1E695DF30];
          v12 = *MEMORY[0x1E695D940];
          v13 = @"_KeyPathEnumValueSignedClinicalDataOriginIdentifier does not support in-memory filtering";
        }

        [v11 raise:v12 format:v13];
        goto LABEL_20;
      }

      v14 = -[_HKMedicalRecordComparisonFilter _acceptsRecordWithState:](self, "_acceptsRecordWithState:", [v6 state]);
    }

    else
    {
      if (!v7)
      {
        v8 = [v6 modifiedDate];
        v10 = [(_HKMedicalRecordComparisonFilter *)self _acceptsRecordWithDate:v8];
        goto LABEL_13;
      }

      if (v7 != 1)
      {
        if (v7 == 2)
        {
          v8 = [v6 sortDate];
          v9 = [v8 date];
          v10 = [(_HKMedicalRecordComparisonFilter *)self _acceptsRecordWithDate:v9];

LABEL_13:
LABEL_21:

          goto LABEL_22;
        }

        goto LABEL_15;
      }

      v14 = -[_HKMedicalRecordComparisonFilter _acceptsRecordWithManuallyEnteredIdentifier:](self, "_acceptsRecordWithManuallyEnteredIdentifier:", [v6 medicalRecordOriginType]);
    }

    v10 = v14;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (BOOL)_acceptsRecordWithDate:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [(_HKComparisonFilter *)self value];
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = [v7 date];

    v8 = v9;
  }

  v10 = [v4 compare:v8];
  v11 = HKComparisonResultMatchesPredicateOperator(v10, [(_HKComparisonFilter *)self operatorType]);

  return v11;
}

- (BOOL)_acceptsRecordWithManuallyEnteredIdentifier:(unint64_t)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(a3, [v5 integerValue]);

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

- (BOOL)_acceptsRecordWithState:(unint64_t)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(a3, [v5 integerValue]);

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

@end