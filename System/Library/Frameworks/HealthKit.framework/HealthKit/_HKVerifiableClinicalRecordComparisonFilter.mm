@interface _HKVerifiableClinicalRecordComparisonFilter
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)_acceptsSampleWithDate:(id)date;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKVerifiableClinicalRecordComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  if ([path isEqualToString:@"relevantDate"])
  {
    [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKVerifiableClinicalRecordComparisonFilter.m" lineNumber:37 description:@"Unreachable code has been executed"];

    [MEMORY[0x1E695DFD8] set];
  }
  v5 = ;

  return v5;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"relevantDate"])
  {
    v6 = 0;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKVerifiableClinicalRecordComparisonFilter.m" lineNumber:52 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKVerifiableClinicalRecordComparisonFilter;
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
    if ([(_HKComparisonFilter *)self keyPathIntegerValue])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKVerifiableClinicalRecordComparisonFilter.m" lineNumber:66 description:@"Unreachable code has been executed"];
      v8 = 0;
    }

    else
    {
      currentHandler = [v6 relevantDate];
      v8 = [(_HKVerifiableClinicalRecordComparisonFilter *)self _acceptsSampleWithDate:currentHandler];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_acceptsSampleWithDate:(id)date
{
  dateCopy = date;
  value = [(_HKComparisonFilter *)self value];
  v6 = [dateCopy compare:value];

  LOBYTE(self) = HKComparisonResultMatchesPredicateOperator(v6, [(_HKComparisonFilter *)self operatorType]);
  return self;
}

@end