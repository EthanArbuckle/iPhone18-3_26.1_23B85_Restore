@interface _HKMedicalUserDomainConceptComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedValueClassesForKeyPath:(id)path;
@end

@implementation _HKMedicalUserDomainConceptComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"categoryTypes"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"medicalRecordUUID"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"unresolvedConceptResolutionDefinition"];
  }

  return v4;
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"categoryTypes"] || objc_msgSend(pathCopy, "isEqualToString:", @"medicalRecordUUID"))
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  }

  else if ([pathCopy isEqualToString:@"unresolvedConceptResolutionDefinition"])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, v13, v14}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicalUserDomainConceptComparisonFilter.m" lineNumber:55 description:@"Unreachable code has been executed"];

    v9 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = v9;

  return v10;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"categoryTypes"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"medicalRecordUUID"))
  {
    v8 = type == 10 || (type & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    if (![pathCopy isEqualToString:@"unresolvedConceptResolutionDefinition"])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicalUserDomainConceptComparisonFilter.m" lineNumber:74 description:@"Unreachable code has been executed"];

      v9 = 0;
      goto LABEL_9;
    }

    v8 = type == 4;
  }

  v9 = v8;
LABEL_9:

  return v9;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = &OBJC_METACLASS____HKMedicalUserDomainConceptComparisonFilter;
  if (!objc_msgSendSuper2(&v20, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    goto LABEL_9;
  }

  if (![pathCopy isEqualToString:@"categoryTypes"] && !objc_msgSend(pathCopy, "isEqualToString:", @"medicalRecordUUID"))
  {
    if ([pathCopy isEqualToString:@"unresolvedConceptResolutionDefinition"])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_5;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicalUserDomainConceptComparisonFilter.m" lineNumber:99 description:@"Unreachable code has been executed"];

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v15 = objc_opt_class();
  isKindOfClass = HKIsValueOrContainerValidForOperatorType(type, valueCopy, v15, error);
LABEL_5:
  v17 = isKindOfClass;
LABEL_10:

  return v17 & 1;
}

@end