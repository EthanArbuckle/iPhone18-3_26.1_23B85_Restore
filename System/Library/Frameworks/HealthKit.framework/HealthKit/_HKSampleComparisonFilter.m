@interface _HKSampleComparisonFilter
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
- (void)configureInMemoryFilter;
@end

@implementation _HKSampleComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"startDate"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"offsetFromStartDate"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"endDate"];
  }

  return v4;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  return [v3 setWithObjects:{v4, objc_opt_class(), 0}];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:@"offsetFromStartDate"])
  {
    v6 = a3 == 3;
  }

  else
  {
    v6 = [_HKComparisonFilter isAllowedPredicateOperatorType:a3 forKeyPath:v5];
  }

  return v6;
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS____HKSampleComparisonFilter;
  if (!objc_msgSendSuper2(&v12, sel_areValidTypes_forKeyPath_error_, v8, v9, a5))
  {
    goto LABEL_6;
  }

  if ([v9 isEqualToString:@"offsetFromStartDate"] && objc_msgSend(v8, "count") != 1)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"expected 1 sample type but got %ld %@", objc_msgSend(v8, "count"), v8}];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"startDate"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"offsetFromStartDate"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"endDate"])
  {
    v6 = 2;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKSampleComparisonFilter.m" lineNumber:151 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKSampleComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, v5);
  }

  return v6;
}

- (void)configureInMemoryFilter
{
  v8.receiver = self;
  v8.super_class = _HKSampleComparisonFilter;
  [(_HKComparisonFilter *)&v8 configureInMemoryFilter];
  v3 = [(_HKComparisonFilter *)self value];
  [v3 timeIntervalSinceReferenceDate];
  self->_comparisonTime = v4;

  v5 = [(_HKComparisonFilter *)self dataTypes];
  v6 = [v5 anyObject];
  anySampleType = self->_anySampleType;
  self->_anySampleType = v6;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_HKComparisonFilter *)self keyPathIntegerValue];
    [v5 _startTimestamp];
    v8 = v7;
    [v5 _endTimestamp];
    v10 = v9;

    v11 = _AcceptsDataObject(v6, self->_anySampleType, [(_HKComparisonFilter *)self operatorType], v8, v10, self->_comparisonTime);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end