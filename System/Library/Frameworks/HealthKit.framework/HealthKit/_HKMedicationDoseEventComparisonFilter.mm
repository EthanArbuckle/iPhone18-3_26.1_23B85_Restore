@interface _HKMedicationDoseEventComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)_acceptsMedicationDoseEventWithHashedMedicationIdentifier:(id)a3;
- (BOOL)_acceptsMedicationDoseEventWithLogOrigin:(int64_t)a3;
- (BOOL)_acceptsMedicationDoseEventWithMedicationConceptIdentifier:(id)a3;
- (BOOL)_acceptsMedicationDoseEventWithMedicationIdentifier:(id)a3;
- (BOOL)_acceptsMedicationDoseEventWithMedicationUUID:(id)a3;
- (BOOL)_acceptsMedicationDoseEventWithScheduleItemIdentifier:(id)a3;
- (BOOL)_acceptsMedicationDoseEventWithScheduledDate:(id)a3;
- (BOOL)_acceptsMedicationDoseEventWithStatus:(int64_t)a3;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKMedicationDoseEventComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"status"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"medicationIdentifier") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"hashedMedicationIdentifier") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"scheduleItemIdentifier") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"logOrigin") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"medicationUUID") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"scheduledDate"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"medicationConceptIdentifier"];
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
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([v5 isEqualToString:@"status"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"logOrigin"))
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

  if (([v5 isEqualToString:@"medicationIdentifier"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"scheduleItemIdentifier"))
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v18;
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"hashedMedicationIdentifier"])
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v17;
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"medicationUUID"])
  {
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v16;
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"scheduledDate"])
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v15;
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"medicationConceptIdentifier"])
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v14;
    goto LABEL_4;
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:a1 file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:94 description:@"Unreachable code has been executed"];

  v10 = [MEMORY[0x1E695DFD8] set];
LABEL_5:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v7 = a4;
  if (([v7 isEqualToString:@"status"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"medicationIdentifier") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"hashedMedicationIdentifier") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"scheduleItemIdentifier") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"logOrigin") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"medicationUUID") & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", @"medicationConceptIdentifier"))
  {
    if ([v7 isEqualToString:@"scheduledDate"])
    {
      if (a3 < 0xB)
      {
        v9 = 0x43Fu >> a3;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:124 description:@"Unreachable code has been executed"];
    }

    LOBYTE(v9) = 0;
    goto LABEL_14;
  }

  LOBYTE(v9) = a3 == 10 || (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
LABEL_14:

  return v9 & 1;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS____HKMedicationDoseEventComparisonFilter;
  if (!objc_msgSendSuper2(&v19, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v13, v14, a5, a6, a7))
  {
    goto LABEL_13;
  }

  if (([v14 isEqualToString:@"status"] & 1) == 0 && !objc_msgSend(v14, "isEqualToString:", @"logOrigin") && (objc_msgSend(v14, "isEqualToString:", @"medicationIdentifier") & 1) == 0 && !objc_msgSend(v14, "isEqualToString:", @"scheduleItemIdentifier") && !objc_msgSend(v14, "isEqualToString:", @"hashedMedicationIdentifier") && !objc_msgSend(v14, "isEqualToString:", @"medicationUUID") && !objc_msgSend(v14, "isEqualToString:", @"scheduledDate") && !objc_msgSend(v14, "isEqualToString:", @"medicationConceptIdentifier"))
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:164 description:@"Unreachable code has been executed"];

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v15 = objc_opt_class();
  v16 = HKIsValueOrContainerValidForOperatorType(a5, v13, v15, a7);
LABEL_14:

  return v16;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"status"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"medicationIdentifier"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"hashedMedicationIdentifier"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"scheduleItemIdentifier"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"logOrigin"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"medicationUUID"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"scheduledDate"])
  {
    v6 = 6;
  }

  else if ([v5 isEqualToString:@"medicationConceptIdentifier"])
  {
    v6 = 7;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:203 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKMedicationDoseEventComparisonFilter;
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
    if (v7 > 3)
    {
      if (v7 > 5)
      {
        if (v7 == 6)
        {
          v8 = [v6 scheduledDate];
          v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithScheduledDate:v8];
          goto LABEL_21;
        }

        if (v7 == 7)
        {
          v8 = [v6 medicationConceptIdentifier];
          v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithMedicationConceptIdentifier:v8];
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v7 != 4)
      {
        v8 = [v6 medicationUUID];
        v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithMedicationUUID:v8];
        goto LABEL_21;
      }

      v11 = -[_HKMedicationDoseEventComparisonFilter _acceptsMedicationDoseEventWithLogOrigin:](self, "_acceptsMedicationDoseEventWithLogOrigin:", [v6 logOrigin]);
    }

    else
    {
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          v8 = [v6 scheduleItemIdentifier];
          v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithScheduleItemIdentifier:v8];
          goto LABEL_21;
        }

        v12 = [HKMedicationIdentifier alloc];
        v13 = [v6 medicationIdentifier];
        v14 = [(HKMedicationIdentifier *)v12 initWithSemanticIdentifierString:v13];
        v10 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithHashedMedicationIdentifier:v14];

LABEL_22:
        goto LABEL_23;
      }

      if (v7)
      {
        if (v7 == 1)
        {
          v8 = [v6 medicationIdentifier];
          v9 = [(_HKMedicationDoseEventComparisonFilter *)self _acceptsMedicationDoseEventWithMedicationIdentifier:v8];
LABEL_21:
          v10 = v9;

          goto LABEL_22;
        }

LABEL_24:
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        [v16 handleFailureInMethod:a2 object:self file:@"_HKMedicationDoseEventComparisonFilter.m" lineNumber:231 description:@"Unreachable code has been executed"];

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

- (BOOL)_acceptsMedicationDoseEventWithStatus:(int64_t)a3
{
  v5 = [(_HKComparisonFilter *)self operatorType];
  v6 = [(_HKComparisonFilter *)self value];
  v7 = v6;
  if (v5 == 10)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [v7 containsObject:v8];

    return v9;
  }

  else
  {
    v11 = HKCompareIntegers(a3, [v6 integerValue]);

    v12 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v11, v12);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithMedicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self operatorType];
  v6 = [(_HKComparisonFilter *)self value];
  v7 = v6;
  if (v5 == 10)
  {
    v8 = [v6 containsObject:v4];

    return v8;
  }

  else
  {
    v10 = [v6 compare:v4];

    v11 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v10, v11);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithHashedMedicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self operatorType];
  v6 = [(_HKComparisonFilter *)self value];
  v7 = v6;
  if (v5 == 10)
  {
    v8 = [v6 containsObject:v4];
  }

  else
  {
    v9 = [v6 compare:v4];

    v8 = HKComparisonResultMatchesPredicateOperator(v9, [(_HKComparisonFilter *)self operatorType]);
  }

  return v8;
}

- (BOOL)_acceptsMedicationDoseEventWithMedicationConceptIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self operatorType];
  v6 = [(_HKComparisonFilter *)self value];
  v7 = v6;
  if (v5 == 10)
  {
    v8 = [v6 containsObject:v4];
  }

  else
  {
    v9 = [v6 compare:v4];

    v8 = HKComparisonResultMatchesPredicateOperator(v9, [(_HKComparisonFilter *)self operatorType]);
  }

  return v8;
}

- (BOOL)_acceptsMedicationDoseEventWithScheduleItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self operatorType];
  v6 = [(_HKComparisonFilter *)self value];
  v7 = v6;
  if (v5 == 10)
  {
    v8 = [v6 containsObject:v4];

    return v8;
  }

  else
  {
    v10 = [v6 compare:v4];

    v11 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v10, v11);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithLogOrigin:(int64_t)a3
{
  v5 = [(_HKComparisonFilter *)self operatorType];
  v6 = [(_HKComparisonFilter *)self value];
  v7 = v6;
  if (v5 == 10)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [v7 containsObject:v8];

    return v9;
  }

  else
  {
    v11 = HKCompareIntegers(a3, [v6 integerValue]);

    v12 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v11, v12);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithMedicationUUID:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self operatorType];
  v6 = [(_HKComparisonFilter *)self value];
  v7 = v6;
  if (v5 == 10)
  {
    v8 = [v6 containsObject:v4];

    return v8;
  }

  else
  {
    v10 = [v6 compare:v4];

    v11 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v10, v11);
  }
}

- (BOOL)_acceptsMedicationDoseEventWithScheduledDate:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self operatorType];
  v6 = [(_HKComparisonFilter *)self value];
  v7 = v6;
  if (v5 == 10)
  {
    v8 = [v6 containsObject:v4];

    return v8;
  }

  else
  {
    v10 = [v6 compare:v4];

    v11 = [(_HKComparisonFilter *)self operatorType];

    return HKComparisonResultMatchesPredicateOperator(v10, v11);
  }
}

@end