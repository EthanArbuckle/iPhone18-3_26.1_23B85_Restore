@interface _HKCategorySampleComparisonFilter
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKCategorySampleComparisonFilter

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
  v11.super_class = &OBJC_METACLASS____HKCategorySampleComparisonFilter;
  if (!objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, typesCopy, path, error))
  {
    goto LABEL_5;
  }

  if ([typesCopy count] != 1)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"expected 1 category type but got %ld %@", objc_msgSend(typesCopy, "count"), typesCopy}];
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [objectCopy value];
    value2 = [(_HKComparisonFilter *)self value];
    v7 = HKCompareIntegers(value, [value2 integerValue]);

    v8 = HKComparisonResultMatchesPredicateOperator(v7, [(_HKComparisonFilter *)self operatorType]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end