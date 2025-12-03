@interface _HKMedicationDoseEventComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)_acceptsMedicationDoseEventWithHashedMedicationIdentifier:(id)identifier;
- (BOOL)_acceptsMedicationDoseEventWithLogOrigin:(int64_t)origin;
- (BOOL)_acceptsMedicationDoseEventWithMedicationConceptIdentifier:(id)identifier;
- (BOOL)_acceptsMedicationDoseEventWithMedicationIdentifier:(id)identifier;
- (BOOL)_acceptsMedicationDoseEventWithMedicationUUID:(id)d;
- (BOOL)_acceptsMedicationDoseEventWithScheduleItemIdentifier:(id)identifier;
- (BOOL)_acceptsMedicationDoseEventWithScheduledDate:(id)date;
- (BOOL)_acceptsMedicationDoseEventWithStatus:(int64_t)status;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKMedicationDoseEventComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"status"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"medicationIdentifier") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"hashedMedicationIdentifier") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"scheduleItemIdentifier") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"logOrigin") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"medicationUUID") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"scheduledDate"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"medicationConceptIdentifier"];
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
  v19[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (([pathCopy isEqualToString:@"status"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"logOrigin"))
  {
    v6 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v19;
LABEL_4:
    v9 = [v7 arrayWithObjects:v8 count:3];
    v10 = [v6 setWithArray:v9];

    goto LABEL_5;
  }

  if (([pathCopy isEqualToString:@"medicationIdentifier"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"scheduleItemIdentifier"))
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v18;
    goto LABEL_4;
  }

  if ([pathCopy isEqualToString:@"hashedMedicationIdentifier"])
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v17;
    goto LABEL_4;
  }

  if ([pathCopy isEqualToString:@"medicationUUID"])
  {
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v16;
    goto LABEL_4;
  }

  if ([pathCopy isEqualToString:@"scheduledDate"])
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v15;
    goto LABEL_4;
  }

  if ([pathCopy isEqualToString:@"medicationConceptIdentifier"])
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v14;
    goto LABEL_4;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:94 description:@"Unreachable code has been executed"];

  v10 = [MEMORY[0x1E695DFD8] set];
LABEL_5:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"status"] & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"medicationIdentifier") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"hashedMedicationIdentifier") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"scheduleItemIdentifier") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"logOrigin") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"medicationUUID") & 1) == 0 && !objc_msgSend(pathCopy, "isEqualToString:", @"medicationConceptIdentifier"))
  {
    if ([pathCopy isEqualToString:@"scheduledDate"])
    {
      if (type < 0xB)
      {
        v9 = 0x43Fu >> type;
        goto LABEL_14;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:124 description:@"Unreachable code has been executed"];
    }

    LOBYTE(v9) = 0;
    goto LABEL_14;
  }

  LOBYTE(v9) = type == 10 || (type & 0xFFFFFFFFFFFFFFFELL) == 4;
LABEL_14:

  return v9 & 1;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS____HKMedicationDoseEventComparisonFilter;
  if (!objc_msgSendSuper2(&v19, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    goto LABEL_13;
  }

  if (([pathCopy isEqualToString:@"status"] & 1) == 0 && !objc_msgSend(pathCopy, "isEqualToString:", @"logOrigin") && (objc_msgSend(pathCopy, "isEqualToString:", @"medicationIdentifier") & 1) == 0 && !objc_msgSend(pathCopy, "isEqualToString:", @"scheduleItemIdentifier") && !objc_msgSend(pathCopy, "isEqualToString:", @"hashedMedicationIdentifier") && !objc_msgSend(pathCopy, "isEqualToString:", @"medicationUUID") && !objc_msgSend(pathCopy, "isEqualToString:", @"scheduledDate") && !objc_msgSend(pathCopy, "isEqualToString:", @"medicationConceptIdentifier"))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:164 description:@"Unreachable code has been executed"];

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v15 = objc_opt_class();
  v16 = HKIsValueOrContainerValidForOperatorType(type, valueCopy, v15, error);
LABEL_14:

  return v16;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"status"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"medicationIdentifier"])
  {
    v6 = 1;
  }

  else if ([pathCopy isEqualToString:@"hashedMedicationIdentifier"])
  {
    v6 = 2;
  }

  else if ([pathCopy isEqualToString:@"scheduleItemIdentifier"])
  {
    v6 = 3;
  }

  else if ([pathCopy isEqualToString:@"logOrigin"])
  {
    v6 = 4;
  }

  else if ([pathCopy isEqualToString:@"medicationUUID"])
  {
    v6 = 5;
  }

  else if ([pathCopy isEqualToString:@"scheduledDate"])
  {
    v6 = 6;
  }

  else if ([pathCopy isEqualToString:@"medicationConceptIdentifier"])
  {
    v6 = 7;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:203 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKMedicationDoseEventComparisonFilter;
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
    if (keyPathIntegerValue > 3)
    {
      if (keyPathIntegerValue > 5)
      {
        if (keyPathIntegerValue == 6)
        {
          scheduledDate = [v6 scheduledDate];
          v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithScheduledDate:scheduledDate];
          goto LABEL_21;
        }

        if (keyPathIntegerValue == 7)
        {
          scheduledDate = [v6 medicationConceptIdentifier];
          v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithMedicationConceptIdentifier:scheduledDate];
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (keyPathIntegerValue != 4)
      {
        scheduledDate = [v6 medicationUUID];
        v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithMedicationUUID:scheduledDate];
        goto LABEL_21;
      }

      v11 = -[_HKMedicationDoseEventComparisonFilter _acceptsMedicationDoseEventWithLogOrigin:](self, "_acceptsMedicationDoseEventWithLogOrigin:", [v6 logOrigin]);
    }

    else
    {
      if (keyPathIntegerValue > 1)
      {
        if (keyPathIntegerValue != 2)
        {
          scheduledDate = [v6 scheduleItemIdentifier];
          v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithScheduleItemIdentifier:scheduledDate];
          goto LABEL_21;
        }

        v12 = [HKMedicationIdentifier alloc];
        medicationIdentifier = [v6 medicationIdentifier];
        v14 = [(HKMedicationIdentifier *)v12 initWithSemanticIdentifierString:medicationIdentifier];
        v10 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithHashedMedicationIdentifier:v14];

LABEL_22:
        goto LABEL_23;
      }

      if (keyPathIntegerValue)
      {
        if (keyPathIntegerValue == 1)
        {
          scheduledDate = [v6 medicationIdentifier];
          v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithMedicationIdentifier:scheduledDate];
LABEL_21:
          v10 = v9;

          goto LABEL_22;
        }

LABEL_24:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:231 description:@"Unreachable code has been executed"];

        v10 = 0;
        goto LABEL_22;
      }

      v11 = -[_HKMedicationDoseEventComparisonFilter _acceptsMedicationDoseEventWithStatus:](self, "_acceptsMedicationDoseEventWithStatus:", [v6 logStatus]);
    }

    v10 = v11;
    goto LABEL_22;
  }

  v10 = 0;
LABEL_23:

  return v10;
}

- (BOOL)_acceptsMedicationDoseEventWithStatus:(int64_t)status
{
  operatorType = [(_HKComparisonFilter *)self operatorType];
  value = [(_HKComparisonFilter *)self value];
  v7 = value;
  if (operatorType == 10)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:status];
    v9 = [v7 containsObject:v8];

    return v9;
  }

  else
  {
    v11 = HKCompareIntegers(status, [value integerValue]);

    operatorType2 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v11, operatorType2);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithMedicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  operatorType = [(_HKComparisonFilter *)self operatorType];
  value = [(_HKComparisonFilter *)self value];
  v7 = value;
  if (operatorType == 10)
  {
    v8 = [value containsObject:identifierCopy];

    return v8;
  }

  else
  {
    v10 = [value compare:identifierCopy];

    operatorType2 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v10, operatorType2);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithHashedMedicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  operatorType = [(_HKComparisonFilter *)self operatorType];
  value = [(_HKComparisonFilter *)self value];
  v7 = value;
  if (operatorType == 10)
  {
    v8 = [value containsObject:identifierCopy];
  }

  else
  {
    v9 = [value compare:identifierCopy];

    v8 = HKComparisonResultMatchesPredicateOperator(v9, [(_HKComparisonFilter *)self operatorType]);
  }

  return v8;
}

- (BOOL)_acceptsMedicationDoseEventWithMedicationConceptIdentifier:(id)identifier
{
  identifierCopy = identifier;
  operatorType = [(_HKComparisonFilter *)self operatorType];
  value = [(_HKComparisonFilter *)self value];
  v7 = value;
  if (operatorType == 10)
  {
    v8 = [value containsObject:identifierCopy];
  }

  else
  {
    v9 = [value compare:identifierCopy];

    v8 = HKComparisonResultMatchesPredicateOperator(v9, [(_HKComparisonFilter *)self operatorType]);
  }

  return v8;
}

- (BOOL)_acceptsMedicationDoseEventWithScheduleItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  operatorType = [(_HKComparisonFilter *)self operatorType];
  value = [(_HKComparisonFilter *)self value];
  v7 = value;
  if (operatorType == 10)
  {
    v8 = [value containsObject:identifierCopy];

    return v8;
  }

  else
  {
    v10 = [value compare:identifierCopy];

    operatorType2 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v10, operatorType2);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithLogOrigin:(int64_t)origin
{
  operatorType = [(_HKComparisonFilter *)self operatorType];
  value = [(_HKComparisonFilter *)self value];
  v7 = value;
  if (operatorType == 10)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:origin];
    v9 = [v7 containsObject:v8];

    return v9;
  }

  else
  {
    v11 = HKCompareIntegers(origin, [value integerValue]);

    operatorType2 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v11, operatorType2);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithMedicationUUID:(id)d
{
  dCopy = d;
  operatorType = [(_HKComparisonFilter *)self operatorType];
  value = [(_HKComparisonFilter *)self value];
  v7 = value;
  if (operatorType == 10)
  {
    v8 = [value containsObject:dCopy];

    return v8;
  }

  else
  {
    v10 = [value compare:dCopy];

    operatorType2 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v10, operatorType2);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithScheduledDate:(id)date
{
  dateCopy = date;
  operatorType = [(_HKComparisonFilter *)self operatorType];
  value = [(_HKComparisonFilter *)self value];
  v7 = value;
  if (operatorType == 10)
  {
    v8 = [value containsObject:dateCopy];

    return v8;
  }

  else
  {
    v10 = [value compare:dateCopy];

    operatorType2 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v10, operatorType2);
  }
}

@end