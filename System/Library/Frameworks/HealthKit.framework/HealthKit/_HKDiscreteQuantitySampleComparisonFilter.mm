@interface _HKDiscreteQuantitySampleComparisonFilter
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKDiscreteQuantitySampleComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if (_IsQuantityKeyPath(pathCopy) & 1) != 0 || (_IsDateKeyPath(pathCopy))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"most_recent_duration"];
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
  if (_IsQuantityKeyPath(pathCopy))
  {
    v6 = MEMORY[0x1E695DFD8];
LABEL_7:
    v7 = [v6 setWithObject:objc_opt_class()];
    goto LABEL_8;
  }

  if (_IsDateKeyPath(pathCopy))
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_7;
  }

  if ([pathCopy isEqualToString:@"most_recent_duration"])
  {
    v6 = MEMORY[0x1E695DFD8];
    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKDiscreteQuantitySampleComparisonFilter.m" lineNumber:158 description:@"Unreachable code has been executed"];

  v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
LABEL_8:
  v8 = v7;

  return v8;
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  typesCopy = types;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS____HKDiscreteQuantitySampleComparisonFilter;
  if (objc_msgSendSuper2(&v14, sel_areValidTypes_forKeyPath_error_, typesCopy, pathCopy, error))
  {
    if (_IsQuantityKeyPath(pathCopy))
    {
      v10 = typesCopy;
      if ([v10 count] == 1)
      {
        anyObject = [v10 anyObject];
        HasValidAggregationStyle = _HasValidAggregationStyle(anyObject, error);
      }

      else
      {
        [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"expected 1 sample type but got %ld %@", objc_msgSend(v10, "count"), v10}];
        HasValidAggregationStyle = 0;
      }
    }

    else
    {
      HasValidAggregationStyle = [typesCopy hk_allObjectsPassTestWithError:error test:&__block_literal_global_26];
    }
  }

  else
  {
    HasValidAggregationStyle = 0;
  }

  return HasValidAggregationStyle;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  typesCopy = types;
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS____HKDiscreteQuantitySampleComparisonFilter;
  if (objc_msgSendSuper2(&v19, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, typesCopy, error))
  {
    if (_IsQuantityKeyPath(pathCopy))
    {
      anyObject = [typesCopy anyObject];
      _unit = [valueCopy _unit];
      v17 = [anyObject isCompatibleWithUnit:_unit];

      if ((v17 & 1) == 0)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid quantity %@ for data type %@", valueCopy, anyObject}];
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

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"max"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"min"])
  {
    v6 = 1;
  }

  else if ([pathCopy isEqualToString:@"most_recent"])
  {
    v6 = 2;
  }

  else if ([pathCopy isEqualToString:@"most_recent_duration"])
  {
    v6 = 5;
  }

  else if ([pathCopy isEqualToString:@"most_recent_end_date"])
  {
    v6 = 4;
  }

  else if ([pathCopy isEqualToString:@"most_recent_start_date"])
  {
    v6 = 3;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKDiscreteQuantitySampleComparisonFilter.m" lineNumber:217 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKDiscreteQuantitySampleComparisonFilter;
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
    keyPathIntegerValue = [(_HKComparisonFilter *)self keyPathIntegerValue];
    v8 = keyPathIntegerValue;
    if (keyPathIntegerValue < 3)
    {
      value = [(_HKComparisonFilter *)self value];
      operatorType = [(_HKComparisonFilter *)self operatorType];
      currentHandler = value;
      v17 = v6;
      quantityType = [v17 quantityType];
      _unit = [currentHandler _unit];
      v20 = [quantityType isCompatibleWithUnit:_unit];

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
          maximumQuantity = ;
        }

        else
        {
          maximumQuantity = [v21 maximumQuantity];
        }

        v29 = maximumQuantity;

        v14 = HKComparisonResultMatchesPredicateOperator([v29 compare:currentHandler], operatorType);
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_23;
    }

    if (keyPathIntegerValue - 3 >= 2)
    {
      if (keyPathIntegerValue != 5)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_HKDiscreteQuantitySampleComparisonFilter.m" lineNumber:248 description:@"Unreachable code has been executed"];
        v14 = 0;
        goto LABEL_23;
      }

      currentHandler = [(_HKComparisonFilter *)self value];
      [currentHandler doubleValue];
      v25 = v24;
      operatorType2 = [(_HKComparisonFilter *)self operatorType];
      mostRecentQuantityDateInterval = [v6 mostRecentQuantityDateInterval];
      [mostRecentQuantityDateInterval duration];
      v28 = HKCompareDoubles(v27, v25);
    }

    else
    {
      value2 = [(_HKComparisonFilter *)self value];
      operatorType2 = [(_HKComparisonFilter *)self operatorType];
      currentHandler = value2;
      mostRecentQuantityDateInterval2 = [v6 mostRecentQuantityDateInterval];
      v13 = mostRecentQuantityDateInterval2;
      if (v8 == 4)
      {
        [mostRecentQuantityDateInterval2 endDate];
      }

      else
      {
        [mostRecentQuantityDateInterval2 startDate];
      }
      mostRecentQuantityDateInterval = ;

      v28 = [mostRecentQuantityDateInterval compare:currentHandler];
    }

    v14 = HKComparisonResultMatchesPredicateOperator(v28, operatorType2);
LABEL_23:

    goto LABEL_24;
  }

  v14 = 0;
LABEL_24:

  return v14;
}

@end