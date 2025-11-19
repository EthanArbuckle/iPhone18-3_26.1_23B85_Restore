@interface _HKDiscreteQuantitySampleComparisonFilter
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKDiscreteQuantitySampleComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if (_IsQuantityKeyPath(v3) & 1) != 0 || (_IsDateKeyPath(v3))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"most_recent_duration"];
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
  if (_IsQuantityKeyPath(v5))
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_7:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_8;
  }

  if (_IsDateKeyPath(v5))
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"most_recent_duration"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:a1 file:@"_HKDiscreteQuantitySampleComparisonFilter.m" lineNumber:158 description:@"Unreachable code has been executed"];

  v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
LABEL_8:
  v8 = v7;

  return v8;
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS____HKDiscreteQuantitySampleComparisonFilter;
  if (objc_msgSendSuper2(&v14, sel_areValidTypes_forKeyPath_error_, v8, v9, a5))
  {
    if (_IsQuantityKeyPath(v9))
    {
      v10 = v8;
      if ([v10 count] == 1)
      {
        v11 = [v10 anyObject];
        HasValidAggregationStyle = _HasValidAggregationStyle(v11, a5);
      }

      else
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"expected 1 sample type but got %ld %@", objc_msgSend(v10, "count"), v10}];
        HasValidAggregationStyle = 0;
      }
    }

    else
    {
      HasValidAggregationStyle = [v8 hk_allObjectsPassTestWithError:a5 test:&__block_literal_global_26];
    }
  }

  else
  {
    HasValidAggregationStyle = 0;
  }

  return HasValidAggregationStyle;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS____HKDiscreteQuantitySampleComparisonFilter;
  if (objc_msgSendSuper2(&v19, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v12, v13, a5, v14, a7))
  {
    if (_IsQuantityKeyPath(v13))
    {
      v15 = [v14 anyObject];
      v16 = [v12 _unit];
      v17 = [v15 isCompatibleWithUnit:v16];

      if ((v17 & 1) == 0)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a7 code:3 format:{@"Invalid quantity %@ for data type %@", v12, v15}];
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"max"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"min"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"most_recent"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"most_recent_duration"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"most_recent_end_date"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"most_recent_start_date"])
  {
    v6 = 3;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKDiscreteQuantitySampleComparisonFilter.m" lineNumber:217 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKDiscreteQuantitySampleComparisonFilter;
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
    v7 = [(_HKComparisonFilter *)self keyPathIntegerValue];
    v8 = v7;
    if (v7 < 3)
    {
      v15 = [(_HKComparisonFilter *)self value];
      v16 = [(_HKComparisonFilter *)self operatorType];
      v11 = v15;
      v17 = v6;
      v18 = [v17 quantityType];
      v19 = [v11 _unit];
      v20 = [v18 isCompatibleWithUnit:v19];

      if (v20)
      {
        v21 = v17;
        v22 = v21;
        if (v8)
        {
          if (v8 == 1)
          {
            [v21 minimumQuantity];
          }

          else
          {
            [v21 mostRecentQuantity];
          }
          v23 = ;
        }

        else
        {
          v23 = [v21 maximumQuantity];
        }

        v29 = v23;

        v14 = HKComparisonResultMatchesPredicateOperator([v29 compare:v11], v16);
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_23;
    }

    if (v7 - 3 >= 2)
    {
      if (v7 != 5)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"_HKDiscreteQuantitySampleComparisonFilter.m" lineNumber:248 description:@"Unreachable code has been executed"];
        v14 = 0;
        goto LABEL_23;
      }

      v11 = [(_HKComparisonFilter *)self value];
      [v11 doubleValue];
      v25 = v24;
      v10 = [(_HKComparisonFilter *)self operatorType];
      v26 = [v6 mostRecentQuantityDateInterval];
      [v26 duration];
      v28 = HKCompareDoubles(v27, v25);
    }

    else
    {
      v9 = [(_HKComparisonFilter *)self value];
      v10 = [(_HKComparisonFilter *)self operatorType];
      v11 = v9;
      v12 = [v6 mostRecentQuantityDateInterval];
      v13 = v12;
      if (v8 == 4)
      {
        [v12 endDate];
      }

      else
      {
        [v12 startDate];
      }
      v26 = ;

      v28 = [v26 compare:v11];
    }

    v14 = HKComparisonResultMatchesPredicateOperator(v28, v10);
LABEL_23:

    goto LABEL_24;
  }

  v14 = 0;
LABEL_24:

  return v14;
}

@end