@interface _HKUserAnnotatedMedicationComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
@end

@implementation _HKUserAnnotatedMedicationComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"isArchived"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"hasSchedule"];
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
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([v5 isEqualToString:@"isArchived"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"hasSchedule"))
  {
    v6 = MEMORY[0x1E695DFD8];
    v12[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [v6 setWithArray:v7];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"_HKUserAnnotatedMedicationComparisonFilter.m" lineNumber:46 description:@"Unreachable code has been executed"];

    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v7 = a4;
  if (([v7 isEqualToString:@"isArchived"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"hasSchedule"))
  {
    v8 = a3 == 4;
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"_HKUserAnnotatedMedicationComparisonFilter.m" lineNumber:58 description:@"Unreachable code has been executed"];

    v8 = 0;
  }

  return v8;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS____HKUserAnnotatedMedicationComparisonFilter;
  if (!objc_msgSendSuper2(&v18, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v13, v14, a5, a6, a7))
  {
    goto LABEL_6;
  }

  if (([v14 isEqualToString:@"isArchived"] & 1) == 0 && !objc_msgSend(v14, "isEqualToString:", @"hasSchedule"))
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"_HKUserAnnotatedMedicationComparisonFilter.m" lineNumber:76 description:@"Unreachable code has been executed"];

LABEL_6:
    isKindOfClass = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
LABEL_7:

  return isKindOfClass & 1;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"isArchived"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"hasSchedule"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKUserAnnotatedMedicationComparisonFilter.m" lineNumber:89 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKUserAnnotatedMedicationComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, v5);
  }

  return v6;
}

@end