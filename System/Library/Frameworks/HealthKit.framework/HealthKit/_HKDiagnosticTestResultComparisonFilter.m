@interface _HKDiagnosticTestResultComparisonFilter
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)_acceptsDiagnosticTestResultWithCategory:(id)a3;
- (BOOL)_acceptsDiagnosticTestResultWithReferenceRangeStatus:(int64_t)a3;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKDiagnosticTestResultComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"category"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"referenceRangeStatus"];
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
  v5 = a3;
  if ([v5 isEqualToString:@"category"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_5:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"referenceRangeStatus"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:a1 file:@"_HKDiagnosticTestResultComparisonFilter.m" lineNumber:50 description:@"Unreachable code has been executed"];

  v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
LABEL_7:
  v9 = v7;

  return v9;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"category"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"referenceRangeStatus"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKDiagnosticTestResultComparisonFilter.m" lineNumber:61 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKDiagnosticTestResultComparisonFilter;
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
    if (v7 == 1)
    {
      v9 = -[_HKDiagnosticTestResultComparisonFilter _acceptsDiagnosticTestResultWithReferenceRangeStatus:](self, "_acceptsDiagnosticTestResultWithReferenceRangeStatus:", [v6 referenceRangeStatus]);
    }

    else if (v7)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"_HKDiagnosticTestResultComparisonFilter.m" lineNumber:77 description:@"Unreachable code has been executed"];

      v9 = 0;
    }

    else
    {
      v8 = [v6 category];
      v9 = [(_HKDiagnosticTestResultComparisonFilter *)self _acceptsDiagnosticTestResultWithCategory:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_acceptsDiagnosticTestResultWithCategory:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self value];
  v6 = [v4 compare:v5];

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

- (BOOL)_acceptsDiagnosticTestResultWithReferenceRangeStatus:(int64_t)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(a3, [v5 integerValue]);

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

@end