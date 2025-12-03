@interface _HKActivityCacheComparisonFilter
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (id)filterWithOperatorType:(unint64_t)type cacheIndex:(int64_t)index;
- (BOOL)acceptsDataObject:(id)object;
- (void)configureInMemoryFilter;
@end

@implementation _HKActivityCacheComparisonFilter

+ (id)filterWithOperatorType:(unint64_t)type cacheIndex:(int64_t)index
{
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:index];
  v7 = MEMORY[0x1E695DFD8];
  v8 = +[(HKObjectType *)HKSampleType];
  v9 = [v7 setWithObject:v8];
  v10 = [self filterForKeyPath:@"cacheIndex" operatorType:type value:v6 dataTypes:v9];

  return v10;
}

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"dateComponents"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"cacheIndex"];
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
  if ([pathCopy isEqualToString:@"dateComponents"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_5:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_7;
  }

  if ([pathCopy isEqualToString:@"cacheIndex"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKActivityCacheComparisonFilter.m" lineNumber:53 description:@"Unreachable code has been executed"];

  v7 = [MEMORY[0x1E695DFD8] set];
LABEL_7:
  v9 = v7;

  return v9;
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  typesCopy = types;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS____HKActivityCacheComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, typesCopy, path, error))
  {
    v9 = [typesCopy hk_allObjectsPassTestWithError:error test:&__block_literal_global_67];
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
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS____HKActivityCacheComparisonFilter;
  if (objc_msgSendSuper2(&v18, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    if ([pathCopy isEqualToString:@"dateComponents"])
    {
      v17 = 0;
      v14 = [HKActivitySummary _validateActivitySummaryDateComponents:valueCopy errorMessage:&v17];
      v15 = v17;
      if (!v14)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:error code:3 description:v15];
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)configureInMemoryFilter
{
  v9.receiver = self;
  v9.super_class = _HKActivityCacheComparisonFilter;
  [(_HKComparisonFilter *)&v9 configureInMemoryFilter];
  keyPath = [(_HKComparisonFilter *)self keyPath];
  v4 = [keyPath isEqualToString:@"dateComponents"];

  if (v4)
  {
    value = [(_HKComparisonFilter *)self value];
    integerValue = _HKCacheIndexFromDateComponents(value);
  }

  else
  {
    keyPath2 = [(_HKComparisonFilter *)self keyPath];
    v8 = [keyPath2 isEqualToString:@"cacheIndex"];

    if (!v8)
    {
      return;
    }

    value = [(_HKComparisonFilter *)self value];
    integerValue = [value integerValue];
  }

  self->_cacheIndex = integerValue;
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = HKCompareIntegers([objectCopy cacheIndex], self->_cacheIndex);
    v6 = HKComparisonResultMatchesPredicateOperator(v5, [(_HKComparisonFilter *)self operatorType]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end