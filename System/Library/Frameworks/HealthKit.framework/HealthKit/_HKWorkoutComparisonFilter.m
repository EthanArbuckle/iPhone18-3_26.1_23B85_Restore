@interface _HKWorkoutComparisonFilter
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)_quantityTypeFromKeyPath:(id)a3 prefix:(id)a4;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)_acceptsWorkoutWithActivities:(id)a3;
- (BOOL)_acceptsWorkoutWithActivityType:(unint64_t)a3;
- (BOOL)_acceptsWorkoutWithDuration:(double)a3;
- (BOOL)_acceptsWorkoutWithGoalType:(unint64_t)a3;
- (BOOL)_acceptsWorkoutWithQuantity:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
- (void)configureInMemoryFilter;
@end

@implementation _HKWorkoutComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:@"duration"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"totalDistance") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"totalEnergyBurned") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"totalFlightsClimbed") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"totalSwimmingStrokeCount") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"workoutType") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"goal") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"goalType") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"workoutActivity"))
  {
    v5 = 1;
  }

  else
  {
    v20[0] = @"sumQuantity.";
    v20[1] = @"minimumQuantity.";
    v20[2] = @"maximumQuantity.";
    v20[3] = @"averageQuantity.";
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

            goto LABEL_22;
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
LABEL_22:
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
  if (([v3 isEqualToString:@"duration"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"workoutType") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"goalType"))
  {
    v4 = MEMORY[0x1E695DFD8];
LABEL_5:
    v5 = [v4 setWithObject:objc_opt_class()];
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"goal"])
  {
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v5 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
  }

  else
  {
    v10 = [v3 isEqualToString:@"workoutActivity"];
    v4 = MEMORY[0x1E695DFD8];
    if (!v10)
    {
      goto LABEL_5;
    }

    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v5 = [v4 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
  }

LABEL_6:
  v6 = v5;

  return v6;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:@"workoutType"])
  {
    v6 = a3 == 4;
  }

  else if ([v5 isEqualToString:@"goalType"])
  {
    v6 = (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    if (![v5 isEqualToString:@"workoutActivity"])
    {
      v7 = [_HKComparisonFilter isAllowedPredicateOperatorType:a3 forKeyPath:v5];
      goto LABEL_10;
    }

    v6 = a3 == 99;
  }

  v7 = v6;
LABEL_10:

  return v7;
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS____HKWorkoutComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, v8, a4, a5))
  {
    v9 = [v8 hk_allObjectsPassTestWithError:a5 test:&__block_literal_global_138];
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
  v21.receiver = a1;
  v21.super_class = &OBJC_METACLASS____HKWorkoutComparisonFilter;
  if (!objc_msgSendSuper2(&v21, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v12, v13, a5, a6, a7))
  {
    goto LABEL_14;
  }

  v14 = v12;
  v15 = v13;
  if ([v15 isEqualToString:@"totalDistance"])
  {
    v16 = &HKQuantityTypeIdentifierDistanceWalkingRunning;
LABEL_10:
    IsValidQuantityForTypeWithIdentifier = _IsValidQuantityForTypeWithIdentifier(*v16, v14);
    goto LABEL_11;
  }

  if ([v15 isEqualToString:@"totalEnergyBurned"])
  {
    v16 = &HKQuantityTypeIdentifierActiveEnergyBurned;
    goto LABEL_10;
  }

  if ([v15 isEqualToString:@"totalFlightsClimbed"])
  {
    v16 = &HKQuantityTypeIdentifierFlightsClimbed;
    goto LABEL_10;
  }

  if ([v15 isEqualToString:@"totalSwimmingStrokeCount"])
  {
    v16 = &HKQuantityTypeIdentifierSwimmingStrokeCount;
    goto LABEL_10;
  }

  if ([v15 isEqualToString:@"workoutType"])
  {
    IsValidQuantityForTypeWithIdentifier = _HKWorkoutActivityTypeIsValid([v14 integerValue]);
  }

  else if ([v15 isEqualToString:@"goal"])
  {
    IsValidQuantityForTypeWithIdentifier = _HKWorkoutValidGoalQuantity(v14);
  }

  else
  {
    if (([v15 isEqualToString:@"goalType"] & 1) == 0)
    {

      goto LABEL_12;
    }

    IsValidQuantityForTypeWithIdentifier = _HKWorkoutGoalTypeIsValid([v14 integerValue]);
  }

LABEL_11:
  v18 = IsValidQuantityForTypeWithIdentifier;

  if ((v18 & 1) == 0)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a7 code:3 format:{@"Invalid value '%@' for %@", v14, v15}];
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v19 = 1;
LABEL_15:

  return v19;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"duration"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"totalDistance"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"totalEnergyBurned"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"totalFlightsClimbed"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"totalSwimmingStrokeCount"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"workoutType"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"goal"])
  {
    v6 = 6;
  }

  else if ([v5 isEqualToString:@"goalType"])
  {
    v6 = 7;
  }

  else if ([v5 hasPrefix:@"sumQuantity."])
  {
    v6 = 8;
  }

  else if ([v5 hasPrefix:@"minimumQuantity."])
  {
    v6 = 9;
  }

  else if ([v5 hasPrefix:@"maximumQuantity."])
  {
    v6 = 10;
  }

  else if ([v5 hasPrefix:@"averageQuantity."])
  {
    v6 = 11;
  }

  else if ([v5 isEqualToString:@"workoutActivity"])
  {
    v6 = 12;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKWorkoutComparisonFilter.m" lineNumber:237 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKWorkoutComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, v5);
  }

  return v6;
}

- (void)configureInMemoryFilter
{
  v21.receiver = self;
  v21.super_class = _HKWorkoutComparisonFilter;
  [(_HKComparisonFilter *)&v21 configureInMemoryFilter];
  v3 = [(_HKComparisonFilter *)self keyPath];
  v4 = [v3 hasPrefix:@"sumQuantity."];

  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [(_HKComparisonFilter *)self keyPath];
    v7 = @"sumQuantity.";
LABEL_9:
    v14 = [v5 _quantityTypeFromKeyPath:v6 prefix:v7];
    v15 = [v14 copy];
    v16 = &OBJC_IVAR____HKWorkoutComparisonFilter__quantityType;
LABEL_10:
    v17 = *v16;
    v18 = *(&self->super.super.super.isa + v17);
    *(&self->super.super.super.isa + v17) = v15;

    return;
  }

  v8 = [(_HKComparisonFilter *)self keyPath];
  v9 = [v8 hasPrefix:@"minimumQuantity."];

  if (v9)
  {
    v5 = objc_opt_class();
    v6 = [(_HKComparisonFilter *)self keyPath];
    v7 = @"minimumQuantity.";
    goto LABEL_9;
  }

  v10 = [(_HKComparisonFilter *)self keyPath];
  v11 = [v10 hasPrefix:@"maximumQuantity."];

  if (v11)
  {
    v5 = objc_opt_class();
    v6 = [(_HKComparisonFilter *)self keyPath];
    v7 = @"maximumQuantity.";
    goto LABEL_9;
  }

  v12 = [(_HKComparisonFilter *)self keyPath];
  v13 = [v12 hasPrefix:@"averageQuantity."];

  if (v13)
  {
    v5 = objc_opt_class();
    v6 = [(_HKComparisonFilter *)self keyPath];
    v7 = @"averageQuantity.";
    goto LABEL_9;
  }

  v19 = [(_HKComparisonFilter *)self keyPath];
  v20 = [v19 isEqualToString:@"workoutActivity"];

  if (v20)
  {
    v6 = [(_HKComparisonFilter *)self value];
    v14 = [(_HKComparisonFilter *)self dataTypes];
    v15 = [v6 hk_filterRepresentationForDataTypes:v14 isSubpredicate:1];
    v16 = &OBJC_IVAR____HKWorkoutComparisonFilter__subFilter;
    goto LABEL_10;
  }
}

- (BOOL)acceptsDataObject:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    switch([(_HKComparisonFilter *)self keyPathIntegerValue])
    {
      case 0:
        [v6 duration];
        v7 = [(_HKWorkoutComparisonFilter *)self _acceptsWorkoutWithDuration:?];
        goto LABEL_14;
      case 1:
        v11 = [v6 totalDistance];
        goto LABEL_17;
      case 2:
        v11 = [v6 totalEnergyBurned];
        goto LABEL_17;
      case 3:
        v11 = [v6 totalFlightsClimbed];
        goto LABEL_17;
      case 4:
        v11 = [v6 totalSwimmingStrokeCount];
        goto LABEL_17;
      case 5:
        v7 = -[_HKWorkoutComparisonFilter _acceptsWorkoutWithActivityType:](self, "_acceptsWorkoutWithActivityType:", [v6 workoutActivityType]);
        goto LABEL_14;
      case 6:
        v11 = [v6 _goal];
LABEL_17:
        v9 = v11;
        v12 = [(_HKWorkoutComparisonFilter *)self _acceptsWorkoutWithQuantity:v11];
        goto LABEL_18;
      case 7:
        v7 = -[_HKWorkoutComparisonFilter _acceptsWorkoutWithGoalType:](self, "_acceptsWorkoutWithGoalType:", [v6 _goalType]);
LABEL_14:
        v8 = v7;
        break;
      case 8:
        v9 = [v6 statisticsForType:self->_quantityType];
        v10 = [v9 sumQuantity];
        goto LABEL_21;
      case 9:
        v9 = [v6 statisticsForType:self->_quantityType];
        v10 = [v9 minimumQuantity];
        goto LABEL_21;
      case 10:
        v9 = [v6 statisticsForType:self->_quantityType];
        v10 = [v9 maximumQuantity];
        goto LABEL_21;
      case 11:
        v9 = [v6 statisticsForType:self->_quantityType];
        v10 = [v9 averageQuantity];
LABEL_21:
        v14 = v10;
        v8 = [(_HKWorkoutComparisonFilter *)self _acceptsWorkoutWithQuantity:v10];

        goto LABEL_22;
      case 12:
        v9 = [v6 _subActivities];
        v12 = [(_HKWorkoutComparisonFilter *)self _acceptsWorkoutWithActivities:v9];
LABEL_18:
        v8 = v12;
LABEL_22:

        break;
      default:
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"_HKWorkoutComparisonFilter.m" lineNumber:305 description:@"Unreachable code has been executed"];

        v8 = 0;
        break;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_acceptsWorkoutWithDuration:(double)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  [v5 doubleValue];
  v7 = HKCompareDoubles(a3, v6);

  v8 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v7, v8);
}

- (BOOL)_acceptsWorkoutWithActivityType:(unint64_t)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(a3, [v5 integerValue]);

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

- (BOOL)_acceptsWorkoutWithGoalType:(unint64_t)a3
{
  v5 = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(a3, [v5 integerValue]);

  v7 = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, v7);
}

- (BOOL)_acceptsWorkoutWithQuantity:(id)a3
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

- (BOOL)_acceptsWorkoutWithActivities:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(_HKFilter *)self->_subFilter acceptsWorkoutActivity:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
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