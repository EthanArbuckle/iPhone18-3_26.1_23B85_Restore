@interface _HKListUserDomainConceptComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedValueClassesForKeyPath:(id)a3;
@end

@implementation _HKListUserDomainConceptComparisonFilter

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  if ([a3 isEqualToString:@"listType"])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFD8]);
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v5 initWithObjects:{v6, v7, objc_opt_class(), 0}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"_HKListUserDomainConceptComparisonFilter.m" lineNumber:41 description:@"Unreachable code has been executed"];

    v8 = [MEMORY[0x1E695DFD8] set];
  }

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  if ([a4 isEqualToString:@"listType"])
  {
    return a3 == 10 || (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:a1 file:@"_HKListUserDomainConceptComparisonFilter.m" lineNumber:55 description:@"Unreachable code has been executed"];

  return 0;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS____HKListUserDomainConceptComparisonFilter;
  if (!objc_msgSendSuper2(&v19, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v13, v14, a5, a6, a7))
  {
    goto LABEL_5;
  }

  if (![v14 isEqualToString:@"listType"])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"_HKListUserDomainConceptComparisonFilter.m" lineNumber:73 description:@"Unreachable code has been executed"];

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = objc_opt_class();
  v16 = HKIsValueOrContainerValidForOperatorType(a5, v13, v15, a7);
LABEL_6:

  return v16;
}

@end