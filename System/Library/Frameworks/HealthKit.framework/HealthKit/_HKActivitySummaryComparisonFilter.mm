@interface _HKActivitySummaryComparisonFilter
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
- (int64_t)acceptsActivitySummary:(id)summary;
@end

@implementation _HKActivitySummaryComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  typesCopy = types;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS____HKActivitySummaryComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, typesCopy, path, error))
  {
    v9 = [typesCopy hk_allObjectsPassTestWithError:error test:&__block_literal_global_98];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS____HKActivitySummaryComparisonFilter;
  if (!objc_msgSendSuper2(&v15, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, path, type, types, error))
  {
    goto LABEL_5;
  }

  if (!_HKActivityMoveModeIsValid([valueCopy integerValue]))
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Value '%@' is not a valid activity move mode", valueCopy}];
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = 1;
LABEL_6:

  return v13;
}

- (int64_t)acceptsActivitySummary:(id)summary
{
  activityMoveMode = [summary activityMoveMode];
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(activityMoveMode, [value integerValue]);

  return HKComparisonResultMatchesPredicateOperator(v6, [(_HKComparisonFilter *)self operatorType]);
}

@end