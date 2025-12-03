@interface _HKUserAnnotatedMedicationComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
@end

@implementation _HKUserAnnotatedMedicationComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"isArchived"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"hasSchedule"];
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
  v12[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (([pathCopy isEqualToString:@"isArchived"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"hasSchedule"))
  {
    v6 = MEMORY[0x1E695DFD8];
    v12[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [v6 setWithArray:v7];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKUserAnnotatedMedicationComparisonFilter.m" lineNumber:46 description:@"Unreachable code has been executed"];

    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"isArchived"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"hasSchedule"))
  {
    v8 = type == 4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKUserAnnotatedMedicationComparisonFilter.m" lineNumber:58 description:@"Unreachable code has been executed"];

    v8 = 0;
  }

  return v8;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS____HKUserAnnotatedMedicationComparisonFilter;
  if (!objc_msgSendSuper2(&v18, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    goto LABEL_6;
  }

  if (([pathCopy isEqualToString:@"isArchived"] & 1) == 0 && !objc_msgSend(pathCopy, "isEqualToString:", @"hasSchedule"))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKUserAnnotatedMedicationComparisonFilter.m" lineNumber:76 description:@"Unreachable code has been executed"];

LABEL_6:
    isKindOfClass = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
LABEL_7:

  return isKindOfClass & 1;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"isArchived"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"hasSchedule"])
  {
    v6 = 1;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKUserAnnotatedMedicationComparisonFilter.m" lineNumber:89 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKUserAnnotatedMedicationComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, pathCopy);
  }

  return v6;
}

@end