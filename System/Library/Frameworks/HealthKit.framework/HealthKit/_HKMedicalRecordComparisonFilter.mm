@interface _HKMedicalRecordComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)_acceptsRecordWithDate:(id)date;
- (BOOL)_acceptsRecordWithManuallyEnteredIdentifier:(unint64_t)identifier;
- (BOOL)_acceptsRecordWithState:(unint64_t)state;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKMedicalRecordComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"modifiedDate"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"medicalRecordOriginType") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"sortDate") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"state") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"userDomainConcept"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"signedClinicalDataOriginIdentifier"];
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
  if ([pathCopy isEqualToString:@"modifiedDate"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_5:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_6;
  }

  if ([pathCopy isEqualToString:@"medicalRecordOriginType"])
  {
LABEL_4:
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_5;
  }

  if ([pathCopy isEqualToString:@"sortDate"])
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v7 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  }

  else
  {
    if ([pathCopy isEqualToString:@"state"])
    {
      goto LABEL_4;
    }

    if ([pathCopy isEqualToString:@"userDomainConcept"])
    {
      v6 = MEMORY[0x1E695DFD8];
      goto LABEL_5;
    }

    if ([pathCopy isEqualToString:@"signedClinicalDataOriginIdentifier"])
    {
      v6 = MEMORY[0x1E695DFD8];
      goto LABEL_5;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicalRecordComparisonFilter.m" lineNumber:71 description:@"Unreachable code has been executed"];

    v7 = [MEMORY[0x1E695DFD8] set];
  }

LABEL_6:
  v8 = v7;

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"medicalRecordOriginType"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"state"))
  {
    v6 = (type & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else if ([pathCopy isEqualToString:@"userDomainConcept"])
  {
    v6 = type == 99;
  }

  else
  {
    if (![pathCopy isEqualToString:@"signedClinicalDataOriginIdentifier"])
    {
      v7 = [_HKComparisonFilter isAllowedPredicateOperatorType:type forKeyPath:pathCopy];
      goto LABEL_7;
    }

    v6 = type == 4;
  }

  v7 = v6;
LABEL_7:

  return v7;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"modifiedDate"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"medicalRecordOriginType"])
  {
    v6 = 1;
  }

  else if ([pathCopy isEqualToString:@"sortDate"])
  {
    v6 = 2;
  }

  else if ([pathCopy isEqualToString:@"state"])
  {
    v6 = 3;
  }

  else if ([pathCopy isEqualToString:@"userDomainConcept"])
  {
    v6 = 4;
  }

  else if ([pathCopy isEqualToString:@"signedClinicalDataOriginIdentifier"])
  {
    v6 = 5;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicalRecordComparisonFilter.m" lineNumber:113 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKMedicalRecordComparisonFilter;
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
    if (keyPathIntegerValue > 2)
    {
      if (keyPathIntegerValue != 3)
      {
        if (keyPathIntegerValue == 4)
        {
          v11 = MEMORY[0x1E695DF30];
          v12 = *MEMORY[0x1E695D940];
          v13 = @"_KeyPathEnumValueUserDomainConcept does not support in-memory filtering";
        }

        else
        {
          if (keyPathIntegerValue != 5)
          {
LABEL_15:
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicalRecordComparisonFilter.m" lineNumber:141 description:@"Unreachable code has been executed"];

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
      if (!keyPathIntegerValue)
      {
        modifiedDate = [v6 modifiedDate];
        v10 = [(_HKMedicalRecordComparisonFilter *)self _acceptsRecordWithDate:modifiedDate];
        goto LABEL_13;
      }

      if (keyPathIntegerValue != 1)
      {
        if (keyPathIntegerValue == 2)
        {
          modifiedDate = [v6 sortDate];
          date = [modifiedDate date];
          v10 = [(_HKMedicalRecordComparisonFilter *)self _acceptsRecordWithDate:date];

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

- (BOOL)_acceptsRecordWithDate:(id)date
{
  dateCopy = date;
  value = [(_HKComparisonFilter *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  value2 = [(_HKComparisonFilter *)self value];
  v8 = value2;
  if (isKindOfClass)
  {
    date = [value2 date];

    v8 = date;
  }

  v10 = [dateCopy compare:v8];
  v11 = HKComparisonResultMatchesPredicateOperator(v10, [(_HKComparisonFilter *)self operatorType]);

  return v11;
}

- (BOOL)_acceptsRecordWithManuallyEnteredIdentifier:(unint64_t)identifier
{
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(identifier, [value integerValue]);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

- (BOOL)_acceptsRecordWithState:(unint64_t)state
{
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(state, [value integerValue]);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

@end