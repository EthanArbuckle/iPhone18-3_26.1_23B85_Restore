@interface _HKListUserDomainConceptComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedValueClassesForKeyPath:(id)path;
@end

@implementation _HKListUserDomainConceptComparisonFilter

+ (id)allowedValueClassesForKeyPath:(id)path
{
  if ([path isEqualToString:@"listType"])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFD8]);
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v5 initWithObjects:{v6, v7, objc_opt_class(), 0}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKListUserDomainConceptComparisonFilter.m" lineNumber:41 description:@"Unreachable code has been executed"];

    v8 = [MEMORY[0x1E695DFD8] set];
  }

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  if ([path isEqualToString:@"listType"])
  {
    return type == 10 || (type & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKListUserDomainConceptComparisonFilter.m" lineNumber:55 description:@"Unreachable code has been executed"];

  return 0;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS____HKListUserDomainConceptComparisonFilter;
  if (!objc_msgSendSuper2(&v19, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    goto LABEL_5;
  }

  if (![pathCopy isEqualToString:@"listType"])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKListUserDomainConceptComparisonFilter.m" lineNumber:73 description:@"Unreachable code has been executed"];

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = objc_opt_class();
  v16 = HKIsValueOrContainerValidForOperatorType(type, valueCopy, v15, error);
LABEL_6:

  return v16;
}

@end