@interface _HKUserDomainConceptComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedValueClassesForKeyPath:(id)path;
@end

@implementation _HKUserDomainConceptComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"semanticIdentifier"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"udcTypeIdentifier"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"udcUUID"];
  }

  return v4;
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"semanticIdentifier"])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, v13, v14}];
  }

  else if ([pathCopy isEqualToString:@"udcTypeIdentifier"] || objc_msgSend(pathCopy, "isEqualToString:", @"udcUUID"))
  {
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v6 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKUserDomainConceptComparisonFilter.m" lineNumber:52 description:@"Unreachable code has been executed"];

    v6 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = v6;

  return v10;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"semanticIdentifier"])
  {
    v8 = type == 4;
  }

  else
  {
    if (([pathCopy isEqualToString:@"udcTypeIdentifier"] & 1) == 0 && !objc_msgSend(pathCopy, "isEqualToString:", @"udcUUID"))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKUserDomainConceptComparisonFilter.m" lineNumber:67 description:@"Unreachable code has been executed"];

      v9 = 0;
      goto LABEL_11;
    }

    v8 = type == 4 || type == 10;
  }

  v9 = v8;
LABEL_11:

  return v9;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = &OBJC_METACLASS____HKUserDomainConceptComparisonFilter;
  if (!objc_msgSendSuper2(&v20, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    goto LABEL_9;
  }

  if (![pathCopy isEqualToString:@"semanticIdentifier"])
  {
    if ([pathCopy isEqualToString:@"udcTypeIdentifier"] || objc_msgSend(pathCopy, "isEqualToString:", @"udcUUID"))
    {
      v16 = objc_opt_class();
      isKindOfClass = HKIsValueOrContainerValidForOperatorType(type, valueCopy, v16, error);
      goto LABEL_7;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKUserDomainConceptComparisonFilter.m" lineNumber:87 description:@"Unreachable code has been executed"];

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
LABEL_7:
  v17 = isKindOfClass;
LABEL_10:

  return v17 & 1;
}

@end