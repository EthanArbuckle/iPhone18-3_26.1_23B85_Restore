@interface _HKWorkoutComparisonFilter
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)_quantityTypeFromKeyPath:(id)path prefix:(id)prefix;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)_acceptsWorkoutWithActivities:(id)activities;
- (BOOL)_acceptsWorkoutWithActivityType:(unint64_t)type;
- (BOOL)_acceptsWorkoutWithDuration:(double)duration;
- (BOOL)_acceptsWorkoutWithGoalType:(unint64_t)type;
- (BOOL)_acceptsWorkoutWithQuantity:(id)quantity;
- (BOOL)acceptsDataObject:(id)object;
- (void)configureInMemoryFilter;
@end

@implementation _HKWorkoutComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  v20[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy isEqualToString:@"duration"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"totalDistance") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"totalEnergyBurned") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"totalFlightsClimbed") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"totalSwimmingStrokeCount") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"workoutType") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"goal") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"goalType") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"workoutActivity"))
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
          if ([pathCopy hasPrefix:{v13, v15}])
          {
            v14 = [self _quantityTypeFromKeyPath:pathCopy prefix:v13];
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

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"duration"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"workoutType") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"goalType"))
  {
    v4 = MEMORY[0x1E695DFD8];
LABEL_5:
    v5 = [v4 setWithObject:objc_opt_class()];
    goto LABEL_6;
  }

  if ([pathCopy isEqualToString:@"goal"])
  {
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v5 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
  }

  else
  {
    v10 = [pathCopy isEqualToString:@"workoutActivity"];
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

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"workoutType"])
  {
    v6 = type == 4;
  }

  else if ([pathCopy isEqualToString:@"goalType"])
  {
    v6 = (type & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    if (![pathCopy isEqualToString:@"workoutActivity"])
    {
      v7 = [_HKComparisonFilter isAllowedPredicateOperatorType:type forKeyPath:pathCopy];
      goto LABEL_10;
    }

    v6 = type == 99;
  }

  v7 = v6;
LABEL_10:

  return v7;
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  typesCopy = types;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS____HKWorkoutComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, typesCopy, path, error))
  {
    v9 = [typesCopy hk_allObjectsPassTestWithError:error test:&__block_literal_global_138];
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
  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS____HKWorkoutComparisonFilter;
  if (!objc_msgSendSuper2(&v21, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    goto LABEL_14;
  }

  v14 = valueCopy;
  v15 = pathCopy;
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
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid value '%@' for %@", v14, v15}];
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v19 = 1;
LABEL_15:

  return v19;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"duration"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"totalDistance"])
  {
    v6 = 1;
  }

  else if ([pathCopy isEqualToString:@"totalEnergyBurned"])
  {
    v6 = 2;
  }

  else if ([pathCopy isEqualToString:@"totalFlightsClimbed"])
  {
    v6 = 3;
  }

  else if ([pathCopy isEqualToString:@"totalSwimmingStrokeCount"])
  {
    v6 = 4;
  }

  else if ([pathCopy isEqualToString:@"workoutType"])
  {
    v6 = 5;
  }

  else if ([pathCopy isEqualToString:@"goal"])
  {
    v6 = 6;
  }

  else if ([pathCopy isEqualToString:@"goalType"])
  {
    v6 = 7;
  }

  else if ([pathCopy hasPrefix:@"sumQuantity."])
  {
    v6 = 8;
  }

  else if ([pathCopy hasPrefix:@"minimumQuantity."])
  {
    v6 = 9;
  }

  else if ([pathCopy hasPrefix:@"maximumQuantity."])
  {
    v6 = 10;
  }

  else if ([pathCopy hasPrefix:@"averageQuantity."])
  {
    v6 = 11;
  }

  else if ([pathCopy isEqualToString:@"workoutActivity"])
  {
    v6 = 12;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKWorkoutComparisonFilter.m" lineNumber:237 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKWorkoutComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, pathCopy);
  }

  return v6;
}

- (void)configureInMemoryFilter
{
  v21.receiver = self;
  v21.super_class = _HKWorkoutComparisonFilter;
  [(_HKComparisonFilter *)&v21 configureInMemoryFilter];
  keyPath = [(_HKComparisonFilter *)self keyPath];
  v4 = [keyPath hasPrefix:@"sumQuantity."];

  if (v4)
  {
    v5 = objc_opt_class();
    keyPath2 = [(_HKComparisonFilter *)self keyPath];
    v7 = @"sumQuantity.";
LABEL_9:
    dataTypes = [v5 _quantityTypeFromKeyPath:keyPath2 prefix:v7];
    v15 = [dataTypes copy];
    v16 = &OBJC_IVAR____HKWorkoutComparisonFilter__quantityType;
LABEL_10:
    v17 = *v16;
    v18 = *(&self->super.super.super.isa + v17);
    *(&self->super.super.super.isa + v17) = v15;

    return;
  }

  keyPath3 = [(_HKComparisonFilter *)self keyPath];
  v9 = [keyPath3 hasPrefix:@"minimumQuantity."];

  if (v9)
  {
    v5 = objc_opt_class();
    keyPath2 = [(_HKComparisonFilter *)self keyPath];
    v7 = @"minimumQuantity.";
    goto LABEL_9;
  }

  keyPath4 = [(_HKComparisonFilter *)self keyPath];
  v11 = [keyPath4 hasPrefix:@"maximumQuantity."];

  if (v11)
  {
    v5 = objc_opt_class();
    keyPath2 = [(_HKComparisonFilter *)self keyPath];
    v7 = @"maximumQuantity.";
    goto LABEL_9;
  }

  keyPath5 = [(_HKComparisonFilter *)self keyPath];
  v13 = [keyPath5 hasPrefix:@"averageQuantity."];

  if (v13)
  {
    v5 = objc_opt_class();
    keyPath2 = [(_HKComparisonFilter *)self keyPath];
    v7 = @"averageQuantity.";
    goto LABEL_9;
  }

  keyPath6 = [(_HKComparisonFilter *)self keyPath];
  v20 = [keyPath6 isEqualToString:@"workoutActivity"];

  if (v20)
  {
    keyPath2 = [(_HKComparisonFilter *)self value];
    dataTypes = [(_HKComparisonFilter *)self dataTypes];
    v15 = [keyPath2 hk_filterRepresentationForDataTypes:dataTypes isSubpredicate:1];
    v16 = &OBJC_IVAR____HKWorkoutComparisonFilter__subFilter;
    goto LABEL_10;
  }
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
    switch([(_HKComparisonFilter *)self keyPathIntegerValue])
    {
      case 0:
        [v6 duration];
        v7 = [(_HKWorkoutComparisonFilter *)self _acceptsWorkoutWithDuration:?];
        goto LABEL_14;
      case 1:
        totalDistance = [v6 totalDistance];
        goto LABEL_17;
      case 2:
        totalDistance = [v6 totalEnergyBurned];
        goto LABEL_17;
      case 3:
        totalDistance = [v6 totalFlightsClimbed];
        goto LABEL_17;
      case 4:
        totalDistance = [v6 totalSwimmingStrokeCount];
        goto LABEL_17;
      case 5:
        v7 = -[_HKWorkoutComparisonFilter _acceptsWorkoutWithActivityType:](self, "_acceptsWorkoutWithActivityType:", [v6 workoutActivityType]);
        goto LABEL_14;
      case 6:
        totalDistance = [v6 _goal];
LABEL_17:
        _subActivities = totalDistance;
        v12 = [(_HKWorkoutComparisonFilter *)self _acceptsWorkoutWithQuantity:totalDistance];
        goto LABEL_18;
      case 7:
        v7 = -[_HKWorkoutComparisonFilter _acceptsWorkoutWithGoalType:](self, "_acceptsWorkoutWithGoalType:", [v6 _goalType]);
LABEL_14:
        v8 = v7;
        break;
      case 8:
        _subActivities = [v6 statisticsForType:self->_quantityType];
        sumQuantity = [_subActivities sumQuantity];
        goto LABEL_21;
      case 9:
        _subActivities = [v6 statisticsForType:self->_quantityType];
        sumQuantity = [_subActivities minimumQuantity];
        goto LABEL_21;
      case 10:
        _subActivities = [v6 statisticsForType:self->_quantityType];
        sumQuantity = [_subActivities maximumQuantity];
        goto LABEL_21;
      case 11:
        _subActivities = [v6 statisticsForType:self->_quantityType];
        sumQuantity = [_subActivities averageQuantity];
LABEL_21:
        v14 = sumQuantity;
        v8 = [(_HKWorkoutComparisonFilter *)self _acceptsWorkoutWithQuantity:sumQuantity];

        goto LABEL_22;
      case 12:
        _subActivities = [v6 _subActivities];
        v12 = [(_HKWorkoutComparisonFilter *)self _acceptsWorkoutWithActivities:_subActivities];
LABEL_18:
        v8 = v12;
LABEL_22:

        break;
      default:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_HKWorkoutComparisonFilter.m" lineNumber:305 description:@"Unreachable code has been executed"];

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

- (BOOL)_acceptsWorkoutWithDuration:(double)duration
{
  value = [(_HKComparisonFilter *)self value];
  [value doubleValue];
  v7 = HKCompareDoubles(duration, v6);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v7, operatorType);
}

- (BOOL)_acceptsWorkoutWithActivityType:(unint64_t)type
{
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(type, [value integerValue]);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

- (BOOL)_acceptsWorkoutWithGoalType:(unint64_t)type
{
  value = [(_HKComparisonFilter *)self value];
  v6 = HKCompareIntegers(type, [value integerValue]);

  operatorType = [(_HKComparisonFilter *)self operatorType];

  return HKComparisonResultMatchesPredicateOperator(v6, operatorType);
}

- (BOOL)_acceptsWorkoutWithQuantity:(id)quantity
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

- (BOOL)_acceptsWorkoutWithActivities:(id)activities
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activitiesCopy = activities;
  v5 = [activitiesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(activitiesCopy);
        }

        if ([(_HKFilter *)self->_subFilter acceptsWorkoutActivity:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [activitiesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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