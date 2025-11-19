@interface _HKMedicalUserDomainConceptComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedValueClassesForKeyPath:(id)a3;
@end

@implementation _HKMedicalUserDomainConceptComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"categoryTypes"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"medicalRecordUUID"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"unresolvedConceptResolutionDefinition"];
  }

  return v4;
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"categoryTypes"] || objc_msgSend(v5, "isEqualToString:", @"medicalRecordUUID"))
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  }

  else if ([v5 isEqualToString:@"unresolvedConceptResolutionDefinition"])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, v13, v14}];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"_HKMedicalUserDomainConceptComparisonFilter.m" lineNumber:55 description:@"Unreachable code has been executed"];

    v9 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = v9;

  return v10;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v7 = a4;
  if (([v7 isEqualToString:@"categoryTypes"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"medicalRecordUUID"))
  {
    v8 = a3 == 10 || (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    if (![v7 isEqualToString:@"unresolvedConceptResolutionDefinition"])
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_HKMedicalUserDomainConceptComparisonFilter.m" lineNumber:74 description:@"Unreachable code has been executed"];

      v9 = 0;
      goto LABEL_9;
    }

    v8 = a3 == 4;
  }

  v9 = v8;
LABEL_9:

  return v9;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v20.receiver = a1;
  v20.super_class = &OBJC_METACLASS____HKMedicalUserDomainConceptComparisonFilter;
  if (!objc_msgSendSuper2(&v20, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v13, v14, a5, a6, a7))
  {
    goto LABEL_9;
  }

  if (![v14 isEqualToString:@"categoryTypes"] && !objc_msgSend(v14, "isEqualToString:", @"medicalRecordUUID"))
  {
    if ([v14 isEqualToString:@"unresolvedConceptResolutionDefinition"])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_5;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"_HKMedicalUserDomainConceptComparisonFilter.m" lineNumber:99 description:@"Unreachable code has been executed"];

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v15 = objc_opt_class();
  isKindOfClass = HKIsValueOrContainerValidForOperatorType(a5, v13, v15, a7);
LABEL_5:
  v17 = isKindOfClass;
LABEL_10:

  return v17 & 1;
}

@end