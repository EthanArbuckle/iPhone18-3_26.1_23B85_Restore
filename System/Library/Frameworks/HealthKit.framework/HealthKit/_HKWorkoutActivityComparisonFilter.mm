@interface _HKWorkoutActivityComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)_quantityTypeFromKeyPath:(id)a3 prefix:(id)a4;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)_acceptsActivityWithActivityType:(unint64_t)a3;
- (BOOL)_acceptsActivityWithDate:(id)a3;
- (BOOL)_acceptsActivityWithDuration:(double)a3;
- (BOOL)_acceptsActivityWithQuantity:(id)a3;
- (BOOL)acceptsWorkoutActivity:(id)a3;
- (void)configureInMemoryFilter;
@end

@implementation _HKWorkoutActivityComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:@"activityDuration"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"activityType") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"activityStartDate") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"activityEndDate"))
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
          if ([v4 hasPrefix:{v13, v15}])
          {
            v14 = [a1 _quantityTypeFromKeyPath:v4 prefix:v13];
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

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"activityDuration"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"activityType"))
  {
    v4 = 0x1E696AD98;
  }

  else
  {
    v4 = 0x1E695DF00;
    if (([v3 isEqualToString:@"activityStartDate"] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", @"activityEndDate"))
    {
      v4 = off_1E7375378;
    }
  }

  v5 = *v4;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  return v6;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v6 = a4;
  if ([v6 isEqualToString:@"activityType"])
  {
    v7 = a3 == 4;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKWorkoutActivityComparisonFilter;
    v7 = objc_msgSendSuper2(&v9, sel_isAllowedPredicateOperatorType_forKeyPath_, a3, v6);
  }

  return v7;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS____HKWorkoutActivityComparisonFilter;
  if (objc_msgSendSuper2(&v16, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v12, v13, a5, a6, a7))
  {
    if ([v13 isEqualToString:@"activityType"])
    {
      IsValid = _HKWorkoutActivityTypeIsValid([v12 integerValue]);
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

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"activityDuration"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"activityType"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"activityStartDate"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"activityEndDate"])
  {
    v6 = 3;
  }

  else if ([v5 hasPrefix:@"activitySumQuantity."])
  {
    v6 = 4;
  }

  else if ([v5 hasPrefix:@"activityMinimumQuantity."])
  {
    v6 = 5;
  }

  else if ([v5 hasPrefix:@"activityMaximumQuantity."])
  {
    v6 = 6;
  }

  else if ([v5 hasPrefix:@"activityAverageQuantity."])
  {
    v6 = 7;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKWorkoutActivityComparisonFilter.m" lineNumber:158 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKWorkoutActivityComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, v5);
  }

  return v6;
}

- (void)configureInMemoryFilter
{
  v17.receiver = self;
  v17.super_class = _HKWorkoutActivityComparisonFilter;
  [(_HKComparisonFilter *)&v17 configureInMemoryFilter];
  v3 = [(_HKComparisonFilter *)self keyPath];
  v4 = @"activitySumQuantity.";
  v5 = [v3 hasPrefix:@"activitySumQuantity."];

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = [(_HKComparisonFilter *)self keyPath];
  v4 = @"activityMinimumQuantity.";
  v7 = [v6 hasPrefix:@"activityMinimumQuantity."];

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = [(_HKComparisonFilter *)self keyPath];
  v4 = @"activityMaximumQuantity.";
  v9 = [v8 hasPrefix:@"activityMaximumQuantity."];

  if ((v9 & 1) != 0 || (-[_HKComparisonFilter keyPath](self, "keyPath"), v10 = objc_claimAutoreleasedReturnValue(), v4 = @"activityAverageQuantity.", v11 = [v10 hasPrefix:@"activityAverageQuantity."], v10, v11))
  {
LABEL_5:
    v12 = objc_opt_class();
    v13 = [(_HKComparisonFilter *)self keyPath];
    v14 = [v12 _quantityTypeFromKeyPath:v13 prefix:v4];
    v15 = [v14 copy];
    quantityType = self->_quantityType;
    self->_quantityType = v15;
  }
}

- (BOOL)acceptsWorkoutActivity:(id)a3
{
  v5 = a3;
  v6 = [(_HKComparisonFilter *)self keyPathIntegerValue];
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 6)
      {
        v7 = [v5 statisticsForType:self->_quantityType];
        v9 = [v7 maximumQuantity];
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_24;
        }

        v7 = [v5 statisticsForType:self->_quantityType];
        v9 = [v7 averageQuantity];
      }
    }

    else
    {
      if (v6 == 4)
      {
        v7 = [v5 statisticsForType:self->_quantityType];
        [v7 sumQuantity];
      }

      else
      {
        v7 = [v5 statisticsForType:self->_quantityType];
        [v7 minimumQuantity];
      }
      v9 = ;
    }

    v11 = v9;
    v10 = [(_HKWorkoutActivityComparisonFilter *)self _acceptsActivityWithQuantity:v9];

    goto LABEL_22;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      [v5 startDate];
    }

    else
    {
      [v5 endDate];
    }
    v7 = ;
    v8 = [(_HKWorkoutActivityComparisonFilter *)self _acceptsActivityWithDate:v7];
    goto LABEL_19;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = [v5 workoutConfiguration];
      v8 = -[_HKWorkoutActivityComparisonFilter _acceptsActivityWithActivityType:](self, "_acceptsActivityWithActivityType:", [v7 activityType]);
LABEL_19:
      v10 = v8;
LABEL_22:

      goto LABEL_23;
    }

LABEL_24:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_HKWorkoutActivityComparisonFilter.m" lineNumber:210 description:@"Unreachable code has been executed"];

    v10 = 0;
    goto LABEL_23;
  }

  [v5 duration];
  v10 = [(_HKWorkoutActivityComparisonFilter *)self _acceptsActivityWithDuration:?];
LABEL_23:

  return v10;
}

- (BOOL)_acceptsActivityWithDuration:(double)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  [v5 doubleValue];
  v7 = HKCompareDoubles(a3, v6);

  v8 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v7, v8);
}

- (BOOL)_acceptsActivityWithActivityType:(unint64_t)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(a3, [v5 integerValue]);

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

- (BOOL)_acceptsActivityWithDate:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self value];
  v6 = [v4 compare:v5];

  LOBYTE(self) = HKComparisonResultMatchesPredicateOperator(v6, [(_HKComparisonFilter *)self operatorType]);
  return self;
}

- (BOOL)_acceptsActivityWithQuantity:(id)a3
{
  v4 = a3;
  v5 = [(_HKComparisonFilter *)self value];
  v6 = [v5 _unit];
  v7 = [v4 isCompatibleWithUnit:v6];

  if (v7)
  {
    v8 = HKComparisonResultMatchesPredicateOperator([v4 compare:v5], -[_HKComparisonFilter operatorType](self, "operatorType"));
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_quantityTypeFromKeyPath:(id)a3 prefix:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasPrefix:v6])
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(v6, "length")}];
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