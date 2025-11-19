@interface _HKCategorySampleComparisonFilter
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKCategorySampleComparisonFilter

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
  v11.super_class = &OBJC_METACLASS____HKCategorySampleComparisonFilter;
  if (!objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, v8, a4, a5))
  {
    goto LABEL_5;
  }

  if ([v8 count] != 1)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"expected 1 category type but got %ld %@", objc_msgSend(v8, "count"), v8}];
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 value];
    v6 = [(_HKComparisonFilter *)self value];
    v7 = HKCompareIntegers(v5, [v6 integerValue]);

    v8 = HKComparisonResultMatchesPredicateOperator(v7, [(_HKComparisonFilter *)self operatorType]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end