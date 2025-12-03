@interface _HKDiagnosticTestResultComparisonFilter
+ (BOOL)isSupportedKeyPath:(id)path;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)_acceptsDiagnosticTestResultWithCategory:(id)category;
- (BOOL)_acceptsDiagnosticTestResultWithReferenceRangeStatus:(int64_t)status;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKDiagnosticTestResultComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"category"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"referenceRangeStatus"];
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
  pathCopy = path;
  if ([pathCopy isEqualToString:@"category"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_5:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_7;
  }

  if ([pathCopy isEqualToString:@"referenceRangeStatus"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKDiagnosticTestResultComparisonFilter.m" lineNumber:50 description:@"Unreachable code has been executed"];

  v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
LABEL_7:
  v9 = v7;

  return v9;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"category"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"referenceRangeStatus"])
  {
    v6 = 1;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKDiagnosticTestResultComparisonFilter.m" lineNumber:61 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKDiagnosticTestResultComparisonFilter;
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
    if (keyPathIntegerValue == 1)
    {
      v9 = -[_HKDiagnosticTestResultComparisonFilter _acceptsDiagnosticTestResultWithReferenceRangeStatus:](self, "_acceptsDiagnosticTestResultWithReferenceRangeStatus:", [v6 referenceRangeStatus]);
    }

    else if (keyPathIntegerValue)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKDiagnosticTestResultComparisonFilter.m" lineNumber:77 description:@"Unreachable code has been executed"];

      v9 = 0;
    }

    else
    {
      category = [v6 category];
      v9 = [(_HKDiagnosticTestResultComparisonFilter *)self _acceptsDiagnosticTestResultWithCategory:category];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_acceptsDiagnosticTestResultWithCategory:(id)category
{
  categoryCopy = category;
  value = [(_HKComparisonFilter *)self value];
  v6 = [categoryCopy compare:value];

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

- (BOOL)_acceptsDiagnosticTestResultWithReferenceRangeStatus:(int64_t)status
{
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(status, [value integerValue]);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

@end