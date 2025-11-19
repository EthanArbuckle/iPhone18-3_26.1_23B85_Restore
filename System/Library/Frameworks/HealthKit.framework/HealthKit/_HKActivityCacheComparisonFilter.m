@interface _HKActivityCacheComparisonFilter
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (id)filterWithOperatorType:(unint64_t)a3 cacheIndex:(int64_t)a4;
- (BOOL)acceptsDataObject:(id)a3;
- (void)configureInMemoryFilter;
@end

@implementation _HKActivityCacheComparisonFilter

+ (id)filterWithOperatorType:(unint64_t)a3 cacheIndex:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v7 = MEMORY[0x1E695DFD8];
  v8 = +[(HKObjectType *)HKSampleType];
  v9 = [v7 setWithObject:v8];
  v10 = [a1 filterForKeyPath:@"cacheIndex" operatorType:a3 value:v6 dataTypes:v9];

  return v10;
}

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"dateComponents"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"cacheIndex"];
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
  if ([v5 isEqualToString:@"dateComponents"])
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_5:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"cacheIndex"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:a1 file:@"_HKActivityCacheComparisonFilter.m" lineNumber:53 description:@"Unreachable code has been executed"];

  v7 = [MEMORY[0x1E695DFD8] set];
LABEL_7:
  v9 = v7;

  return v9;
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS____HKActivityCacheComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, v8, a4, a5))
  {
    v9 = [v8 hk_allObjectsPassTestWithError:a5 test:&__block_literal_global_67];
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
  v13 = a4;
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS____HKActivityCacheComparisonFilter;
  if (objc_msgSendSuper2(&v18, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v12, v13, a5, a6, a7))
  {
    if ([v13 isEqualToString:@"dateComponents"])
    {
      v17 = 0;
      v14 = [HKActivitySummary _validateActivitySummaryDateComponents:v12 errorMessage:&v17];
      v15 = v17;
      if (!v14)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a7 code:3 description:v15];
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
  v3 = [(_HKComparisonFilter *)self keyPath];
  v4 = [v3 isEqualToString:@"dateComponents"];

  if (v4)
  {
    v5 = [(_HKComparisonFilter *)self value];
    v6 = _HKCacheIndexFromDateComponents(v5);
  }

  else
  {
    v7 = [(_HKComparisonFilter *)self keyPath];
    v8 = [v7 isEqualToString:@"cacheIndex"];

    if (!v8)
    {
      return;
    }

    v5 = [(_HKComparisonFilter *)self value];
    v6 = [v5 integerValue];
  }

  self->_cacheIndex = v6;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = HKCompareIntegers([v4 cacheIndex], self->_cacheIndex);
    v6 = HKComparisonResultMatchesPredicateOperator(v5, [(_HKComparisonFilter *)self operatorType]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end