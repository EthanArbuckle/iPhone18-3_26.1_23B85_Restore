@interface _HKActivitySummaryComparisonFilter
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
- (int64_t)acceptsActivitySummary:(id)a3;
@end

@implementation _HKActivitySummaryComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS____HKActivitySummaryComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, v8, a4, a5))
  {
    v9 = [v8 hk_allObjectsPassTestWithError:a5 test:&__block_literal_global_98];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v12 = a3;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS____HKActivitySummaryComparisonFilter;
  if (!objc_msgSendSuper2(&v15, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v12, a4, a5, a6, a7))
  {
    goto LABEL_5;
  }

  if (!_HKActivityMoveModeIsValid([v12 integerValue]))
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a7 code:3 format:{@"Value '%@' is not a valid activity move mode", v12}];
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = 1;
LABEL_6:

  return v13;
}

- (int64_t)acceptsActivitySummary:(id)a3
{
  v4 = [a3 activityMoveMode];
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(v4, [v5 integerValue]);

  return HKComparisonResultMatchesPredicateOperator(v6, [(_HKComparisonFilter *)self operatorType]);
}

@end