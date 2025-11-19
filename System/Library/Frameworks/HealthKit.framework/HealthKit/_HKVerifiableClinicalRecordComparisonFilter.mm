@interface _HKVerifiableClinicalRecordComparisonFilter
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)_acceptsSampleWithDate:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKVerifiableClinicalRecordComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  if ([a3 isEqualToString:@"relevantDate"])
  {
    [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"_HKVerifiableClinicalRecordComparisonFilter.m" lineNumber:37 description:@"Unreachable code has been executed"];

    [MEMORY[0x1E695DFD8] set];
  }
  v5 = ;

  return v5;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"relevantDate"])
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKVerifiableClinicalRecordComparisonFilter.m" lineNumber:52 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKVerifiableClinicalRecordComparisonFilter;
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
    if ([(_HKComparisonFilter *)self keyPathIntegerValue])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"_HKVerifiableClinicalRecordComparisonFilter.m" lineNumber:66 description:@"Unreachable code has been executed"];
      v8 = 0;
    }

    else
    {
      v7 = [v6 relevantDate];
      v8 = [(_HKVerifiableClinicalRecordComparisonFilter *)self _acceptsSampleWithDate:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_acceptsSampleWithDate:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self value];
  v6 = [v4 compare:v5];

  LOBYTE(self) = HKComparisonResultMatchesPredicateOperator(v6, [(_HKComparisonFilter *)self operatorType]);
  return self;
}

@end