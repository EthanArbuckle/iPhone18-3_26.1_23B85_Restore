@interface _HKWorkoutActivityComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)_quantityTypeFromKeyPath:(id)path prefix:(id)prefix;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)_acceptsActivityWithActivityType:(unint64_t)type;
- (BOOL)_acceptsActivityWithDate:(id)date;
- (BOOL)_acceptsActivityWithDuration:(double)duration;
- (BOOL)_acceptsActivityWithQuantity:(id)quantity;
- (BOOL)acceptsWorkoutActivity:(id)activity;
- (void)configureInMemoryFilter;
@end

@implementation _HKWorkoutActivityComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  v20[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy isEqualToString:@"activityDuration"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"activityType") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"activityStartDate") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"activityEndDate"))
  {
    v5 = 1;
  }

  else
  {
    v20[0] = @"activitySumQuantity.";
    v20[1] = @"activityMinimumQuantity.";
    v20[2] = @"activityMaximumQuantity.";
    v20[3] = @"activityAverageQuantity.";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([pathCopy hasPrefix:{v13, v15}])
          {
            v14 = [self _quantityTypeFromKeyPath:pathCopy prefix:v13];
            v5 = v14 != 0;

            goto LABEL_17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_17:
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
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
  if ([pathCopy isEqualToString:@"activityDuration"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"activityType"))
  {
    v4 = 0x1E696AD98;
  }

  else
  {
    v4 = 0x1E695DF00;
    if (([pathCopy isEqualToString:@"activityStartDate"] & 1) == 0 && !objc_msgSend(pathCopy, "isEqualToString:", @"activityEndDate"))
    {
      v4 = off_1E7375378;
    }
  }

  v5 = *v4;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  return v6;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"activityType"])
  {
    v7 = type == 4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKWorkoutActivityComparisonFilter;
    v7 = objc_msgSendSuper2(&v9, sel_isAllowedPredicateOperatorType_forKeyPath_, type, pathCopy);
  }

  return v7;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS____HKWorkoutActivityComparisonFilter;
  if (objc_msgSendSuper2(&v16, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    if ([pathCopy isEqualToString:@"activityType"])
    {
      IsValid = _HKWorkoutActivityTypeIsValid([valueCopy integerValue]);
    }

    else
    {
      IsValid = 1;
    }
  }

  else
  {
    IsValid = 0;
  }

  return IsValid;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"activityDuration"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"activityType"])
  {
    v6 = 1;
  }

  else if ([pathCopy isEqualToString:@"activityStartDate"])
  {
    v6 = 2;
  }

  else if ([pathCopy isEqualToString:@"activityEndDate"])
  {
    v6 = 3;
  }

  else if ([pathCopy hasPrefix:@"activitySumQuantity."])
  {
    v6 = 4;
  }

  else if ([pathCopy hasPrefix:@"activityMinimumQuantity."])
  {
    v6 = 5;
  }

  else if ([pathCopy hasPrefix:@"activityMaximumQuantity."])
  {
    v6 = 6;
  }

  else if ([pathCopy hasPrefix:@"activityAverageQuantity."])
  {
    v6 = 7;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKWorkoutActivityComparisonFilter.m" lineNumber:158 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKWorkoutActivityComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, pathCopy);
  }

  return v6;
}

- (void)configureInMemoryFilter
{
  v17.receiver = self;
  v17.super_class = _HKWorkoutActivityComparisonFilter;
  [(_HKComparisonFilter *)&v17 configureInMemoryFilter];
  keyPath = [(_HKComparisonFilter *)self keyPath];
  v4 = @"activitySumQuantity.";
  v5 = [keyPath hasPrefix:@"activitySumQuantity."];

  if (v5)
  {
    goto LABEL_5;
  }

  keyPath2 = [(_HKComparisonFilter *)self keyPath];
  v4 = @"activityMinimumQuantity.";
  v7 = [keyPath2 hasPrefix:@"activityMinimumQuantity."];

  if (v7)
  {
    goto LABEL_5;
  }

  keyPath3 = [(_HKComparisonFilter *)self keyPath];
  v4 = @"activityMaximumQuantity.";
  v9 = [keyPath3 hasPrefix:@"activityMaximumQuantity."];

  if ((v9 & 1) != 0 || (-[_HKComparisonFilter keyPath](self, "keyPath"), v10 = objc_claimAutoreleasedReturnValue(), v4 = @"activityAverageQuantity.", v11 = [v10 hasPrefix:@"activityAverageQuantity."], v10, v11))
  {
LABEL_5:
    v12 = objc_opt_class();
    keyPath4 = [(_HKComparisonFilter *)self keyPath];
    v14 = [v12 _quantityTypeFromKeyPath:keyPath4 prefix:v4];
    v15 = [v14 copy];
    quantityType = self->_quantityType;
    self->_quantityType = v15;
  }
}

- (BOOL)acceptsWorkoutActivity:(id)activity
{
  activityCopy = activity;
  keyPathIntegerValue = [(_HKComparisonFilter *)self keyPathIntegerValue];
  if (keyPathIntegerValue > 3)
  {
    if (keyPathIntegerValue > 5)
    {
      if (keyPathIntegerValue == 6)
      {
        workoutConfiguration = [activityCopy statisticsForType:self->_quantityType];
        maximumQuantity = [workoutConfiguration maximumQuantity];
      }

      else
      {
        if (keyPathIntegerValue != 7)
        {
          goto LABEL_24;
        }

        workoutConfiguration = [activityCopy statisticsForType:self->_quantityType];
        maximumQuantity = [workoutConfiguration averageQuantity];
      }
    }

    else
    {
      if (keyPathIntegerValue == 4)
      {
        workoutConfiguration = [activityCopy statisticsForType:self->_quantityType];
        [workoutConfiguration sumQuantity];
      }

      else
      {
        workoutConfiguration = [activityCopy statisticsForType:self->_quantityType];
        [workoutConfiguration minimumQuantity];
      }
      maximumQuantity = ;
    }

    v11 = maximumQuantity;
    v10 = [(_HKWorkoutActivityComparisonFilter *)self _acceptsActivityWithQuantity:maximumQuantity];

    goto LABEL_22;
  }

  if (keyPathIntegerValue > 1)
  {
    if (keyPathIntegerValue == 2)
    {
      [activityCopy startDate];
    }

    else
    {
      [activityCopy endDate];
    }
    workoutConfiguration = ;
    v8 = [(_HKWorkoutActivityComparisonFilter *)self _acceptsActivityWithDate:workoutConfiguration];
    goto LABEL_19;
  }

  if (keyPathIntegerValue)
  {
    if (keyPathIntegerValue == 1)
    {
      workoutConfiguration = [activityCopy workoutConfiguration];
      v8 = -[_HKWorkoutActivityComparisonFilter _acceptsActivityWithActivityType:](self, "_acceptsActivityWithActivityType:", [workoutConfiguration activityType]);
LABEL_19:
      v10 = v8;
LABEL_22:

      goto LABEL_23;
    }

LABEL_24:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKWorkoutActivityComparisonFilter.m" lineNumber:210 description:@"Unreachable code has been executed"];

    v10 = 0;
    goto LABEL_23;
  }

  [activityCopy duration];
  v10 = [(_HKWorkoutActivityComparisonFilter *)self _acceptsActivityWithDuration:?];
LABEL_23:

  return v10;
}

- (BOOL)_acceptsActivityWithDuration:(double)duration
{
  value = [(_HKComparisonFilter *)self value];
  [value doubleValue];
  v7 = HKCompareDoubles(duration, v6);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v7, operatorType);
}

- (BOOL)_acceptsActivityWithActivityType:(unint64_t)type
{
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(type, [value integerValue]);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

- (BOOL)_acceptsActivityWithDate:(id)date
{
  dateCopy = date;
  value = [(_HKComparisonFilter *)self value];
  v6 = [dateCopy compare:value];

  LOBYTE(self) = HKComparisonResultMatchesPredicateOperator(v6, [(_HKComparisonFilter *)self operatorType]);
  return self;
}

- (BOOL)_acceptsActivityWithQuantity:(id)quantity
{
  quantityCopy = quantity;
  value = [(_HKComparisonFilter *)self value];
  _unit = [value _unit];
  v7 = [quantityCopy isCompatibleWithUnit:_unit];

  if (v7)
  {
    v8 = HKComparisonResultMatchesPredicateOperator([quantityCopy compare:value], -[_HKComparisonFilter operatorType](self, "operatorType"));
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_quantityTypeFromKeyPath:(id)path prefix:(id)prefix
{
  pathCopy = path;
  prefixCopy = prefix;
  if ([pathCopy hasPrefix:prefixCopy])
  {
    v7 = [pathCopy substringFromIndex:{objc_msgSend(prefixCopy, "length")}];
    v8 = v7;
    if (v7)
    {
      v9 = +[HKQuantityType _quantityTypeWithCode:](HKQuantityType, "_quantityTypeWithCode:", [v7 integerValue]);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end