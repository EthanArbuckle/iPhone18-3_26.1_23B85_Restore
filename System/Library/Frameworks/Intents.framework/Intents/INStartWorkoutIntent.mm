@interface INStartWorkoutIntent
- (INSpeakableString)workoutName;
- (INStartWorkoutIntent)initWithWorkoutName:(INSpeakableString *)workoutName goalValue:(NSNumber *)goalValue workoutGoalUnitType:(INWorkoutGoalUnitType)workoutGoalUnitType workoutLocationType:(INWorkoutLocationType)workoutLocationType isOpenEnded:(NSNumber *)isOpenEnded;
- (INWorkoutCustomization)customization;
- (INWorkoutGoalUnitType)workoutGoalUnitType;
- (INWorkoutLocationType)workoutLocationType;
- (NSArray)associatedItems;
- (NSNumber)goalValue;
- (NSNumber)isBuiltInWorkoutType;
- (NSNumber)isOpenEnded;
- (NSNumber)isVoiceOnly;
- (id)_dictionaryRepresentation;
- (id)_goalValueIntentSlotDescription;
- (id)_intents_backgroundHandlingAssertionForBundleIdentifier:(id)a3 context:(unint64_t)a4 error:(id *)a5;
- (id)_metadata;
- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_typedBackingStore;
- (id)localizeValueOfSlotDescription:(id)a3 withLocalizer:(id)a4;
- (int64_t)sequenceLabel;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAssociatedItems:(id)a3;
- (void)setCustomization:(id)a3;
- (void)setGoalValue:(id)a3;
- (void)setIsBuiltInWorkoutType:(id)a3;
- (void)setIsOpenEnded:(id)a3;
- (void)setIsVoiceOnly:(id)a3;
- (void)setSequenceLabel:(int64_t)a3;
- (void)setWorkoutGoalUnitType:(int64_t)a3;
- (void)setWorkoutLocationType:(int64_t)a3;
- (void)setWorkoutName:(id)a3;
@end

@implementation INStartWorkoutIntent

- (id)_intents_backgroundHandlingAssertionForBundleIdentifier:(id)a3 context:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  if (!a4)
  {
    v8 = [getAVSystemControllerClass() sharedAVSystemController];
    v9 = getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute();
    v15 = 0;
    v10 = [v8 setAttribute:v7 forKey:v9 error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      v12 = v11;
      *a5 = v11;
    }
  }

  v13 = [MEMORY[0x1E695FBE0] newAssertionForBundleIdentifier:v7 withReason:@"SiriKit Background Workout" level:1];

  return v13;
}

- (id)localizeValueOfSlotDescription:(id)a3 withLocalizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 facadePropertyName];
  v9 = [v8 isEqualToString:@"goalValue"];

  if (v9)
  {
    v10 = [(INStartWorkoutIntent *)self goalValue];
    [v10 doubleValue];
    v12 = v11;

    v13 = [(INStartWorkoutIntent *)self workoutGoalUnitType];
    if (v13 > INWorkoutGoalUnitTypeYard)
    {
      if (v13 <= INWorkoutGoalUnitTypeMinute)
      {
        if (v13 == INWorkoutGoalUnitTypeSecond)
        {
          v14 = objc_alloc(MEMORY[0x1E696AD28]);
          [MEMORY[0x1E696B008] seconds];
        }

        else
        {
          v14 = objc_alloc(MEMORY[0x1E696AD28]);
          [MEMORY[0x1E696B008] minutes];
        }

        goto LABEL_7;
      }

      switch(v13)
      {
        case INWorkoutGoalUnitTypeHour:
          v14 = objc_alloc(MEMORY[0x1E696AD28]);
          v15 = [MEMORY[0x1E696B008] hours];
          goto LABEL_32;
        case INWorkoutGoalUnitTypeJoule:
          v14 = objc_alloc(MEMORY[0x1E696AD28]);
          v15 = [MEMORY[0x1E696B030] joules];
          goto LABEL_32;
        case INWorkoutGoalUnitTypeKiloCalorie:
          v14 = objc_alloc(MEMORY[0x1E696AD28]);
          v15 = [MEMORY[0x1E696B030] kilocalories];
          goto LABEL_32;
      }
    }

    else
    {
      if (v13 > INWorkoutGoalUnitTypeMeter)
      {
        if (v13 != INWorkoutGoalUnitTypeFoot)
        {
          if (v13 == INWorkoutGoalUnitTypeMile)
          {
            v14 = objc_alloc(MEMORY[0x1E696AD28]);
            [MEMORY[0x1E696B058] miles];
          }

          else
          {
            v14 = objc_alloc(MEMORY[0x1E696AD28]);
            [MEMORY[0x1E696B058] yards];
          }

          v15 = LABEL_7:;
          goto LABEL_32;
        }

        v14 = objc_alloc(MEMORY[0x1E696AD28]);
        v15 = [MEMORY[0x1E696B058] feet];
LABEL_32:
        v26 = v15;
        v27 = [v14 initWithDoubleValue:v15 unit:v12];

        if (v27)
        {
          v28 = objc_alloc_init(MEMORY[0x1E696AD30]);
          [v28 setUnitOptions:3];
          v29 = [v7 locale];
          [v28 setLocale:v29];

          [v28 setUnitStyle:3];
          v21 = [v28 stringFromMeasurement:v27];

          goto LABEL_36;
        }

        goto LABEL_34;
      }

      if (v13 == INWorkoutGoalUnitTypeInch)
      {
        v14 = objc_alloc(MEMORY[0x1E696AD28]);
        v15 = [MEMORY[0x1E696B058] inches];
        goto LABEL_32;
      }

      if (v13 == INWorkoutGoalUnitTypeMeter)
      {
        v14 = objc_alloc(MEMORY[0x1E696AD28]);
        v15 = [MEMORY[0x1E696B058] meters];
        goto LABEL_32;
      }
    }

LABEL_34:
    v31.receiver = self;
    v31.super_class = INStartWorkoutIntent;
    v25 = [(INIntent *)&v31 localizeValueOfSlotDescription:v6 withLocalizer:v7];
    goto LABEL_35;
  }

  v16 = [v6 facadePropertyName];
  v17 = [v16 isEqualToString:@"workoutName"];

  if (v17)
  {
    v18 = [(INStartWorkoutIntent *)self workoutName];
    v19 = [v18 spokenPhrase];

    if ([v19 hasPrefix:@"com.apple.intents.WorkoutNameIdentifier."])
    {
      v20 = [v19 substringFromIndex:{objc_msgSend(@"com.apple.intents.WorkoutNameIdentifier.", "length")}];
      v21 = INLocalizedStringWithLocalizer(v19, v20, v7);

      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v19 = [v6 facadePropertyName];
  if (![v19 isEqualToString:@"isOpenEnded"])
  {
LABEL_20:

    goto LABEL_34;
  }

  v22 = [(INStartWorkoutIntent *)self isOpenEnded];

  if (!v22)
  {
    goto LABEL_34;
  }

  v23 = [(INStartWorkoutIntent *)self isOpenEnded];
  v24 = [v23 BOOLValue];

  if (v24)
  {
    v25 = INLocalizedStringWithLocalizer(@"com.apple.intents.WorkoutIsOpenEnded", @"com.apple.intents.WorkoutIsOpenEnded", v7);
LABEL_35:
    v21 = v25;
    goto LABEL_36;
  }

  v21 = &stru_1F01E0850;
LABEL_36:

  return v21;
}

- (id)_goalValueIntentSlotDescription
{
  v2 = [(INIntent *)self intentSlotDescriptions];
  v3 = [v2 if_firstObjectPassingTest:&__block_literal_global_29079];

  return v3;
}

uint64_t __64__INStartWorkoutIntent_Summary___goalValueIntentSlotDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 facadePropertyName];
  v3 = [v2 isEqualToString:@"goalValue"];

  return v3;
}

- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INStartWorkoutIntent *)self isOpenEnded];
  v9 = [v8 isEqual:&unk_1F02D7F30];

  if (v9)
  {
    v26.receiver = self;
    v26.super_class = INStartWorkoutIntent;
    v10 = [(INIntent *)&v26 _titleWithLocalizer:v6 fromBundleURL:v7];
  }

  else
  {
    v11 = [(INStartWorkoutIntent *)self workoutName];
    v12 = [v11 spokenPhrase];

    v13 = __tolower([v12 characterAtIndex:0]);
    v14 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"aeiou"];
    if ([v14 characterIsMember:v13] && -[INStartWorkoutIntent workoutLocationType](self, "workoutLocationType") == INWorkoutLocationTypeUnknown)
    {
      v16 = [v12 isEqualToString:@"Other"];
      v17 = @"Start an %1$@ workout for %2$@";
      if (v16)
      {
        v17 = @"Start %1$@ workout for %2$@";
      }

      v18 = v17;
      v19 = [(INStartWorkoutIntent *)self workoutName];
      v20 = [v19 _intents_readableTitleWithLocalizer:v6];

      v21 = [(INStartWorkoutIntent *)self _goalValueIntentSlotDescription];
      v22 = [(INStartWorkoutIntent *)self localizeValueOfSlotDescription:v21 withLocalizer:v6];

      v23 = MEMORY[0x1E696AEC0];
      v24 = INLocalizedStringWithLocalizer(v18, v18, v6);

      v10 = [v23 localizedStringWithFormat:v24, v20, v22];
    }

    else
    {
      v25.receiver = self;
      v25.super_class = INStartWorkoutIntent;
      v10 = [(INIntent *)&v25 _titleWithLocalizer:v6 fromBundleURL:v7];
    }
  }

  return v10;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 goalValue];
  v10 = INIntentSlotValueRedactedDoubleFromDouble(v9, a3);

  [v8 setGoalValue:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"workoutName";
  v3 = [(INStartWorkoutIntent *)self workoutName];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v4;
  v18[1] = @"goalValue";
  v5 = [(INStartWorkoutIntent *)self goalValue];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v6;
  v18[2] = @"workoutGoalUnitType";
  v7 = [(INStartWorkoutIntent *)self workoutGoalUnitType];
  if ((v7 - 1) > 9)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7280360[v7 - 1];
  }

  v9 = v8;
  v19[2] = v9;
  v18[3] = @"workoutLocationType";
  v10 = [(INStartWorkoutIntent *)self workoutLocationType];
  v11 = @"unknown";
  if (v10 == INWorkoutLocationTypeIndoor)
  {
    v11 = @"indoor";
  }

  if (v10 == INWorkoutLocationTypeOutdoor)
  {
    v11 = @"outdoor";
  }

  v12 = v11;
  v19[3] = v12;
  v18[4] = @"isOpenEnded";
  v13 = [(INStartWorkoutIntent *)self isOpenEnded];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!v13)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setCustomization:(id)a3
{
  v4 = a3;
  v6 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWorkoutCustomization(v4);

  [v6 setCustomization:v5];
}

- (INWorkoutCustomization)customization
{
  v2 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v3 = [v2 customization];
  v4 = INIntentSlotValueTransformFromWorkoutCustomization(v3);

  return v4;
}

- (void)setSequenceLabel:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasSequenceLabel:0];
  }

  else
  {
    [v5 setSequenceLabel:v4];
  }
}

- (int64_t)sequenceLabel
{
  v3 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v4 = [v3 hasSequenceLabel];
  v5 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v6 = [v5 sequenceLabel];
  v7 = 2 * (v6 == 1);
  if (!v6)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setIsVoiceOnly:(id)a3
{
  v5 = a3;
  v4 = [(INStartWorkoutIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setIsVoiceOnly:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasIsVoiceOnly:0];
  }
}

- (NSNumber)isVoiceOnly
{
  v3 = [(INStartWorkoutIntent *)self _typedBackingStore];
  if ([v3 hasIsVoiceOnly])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INStartWorkoutIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "isVoiceOnly")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIsBuiltInWorkoutType:(id)a3
{
  v5 = a3;
  v4 = [(INStartWorkoutIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setIsBuiltInWorkoutType:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasIsBuiltInWorkoutType:0];
  }
}

- (NSNumber)isBuiltInWorkoutType
{
  v3 = [(INStartWorkoutIntent *)self _typedBackingStore];
  if ([v3 hasIsBuiltInWorkoutType])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INStartWorkoutIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "isBuiltInWorkoutType")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAssociatedItems:(id)a3
{
  v4 = a3;
  v6 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWorkoutAssociatedItems(v4);

  [v6 setAssociatedItems:v5];
}

- (NSArray)associatedItems
{
  v2 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v3 = [v2 associatedItems];
  v4 = INIntentSlotValueTransformFromWorkoutAssociatedItems(v3);

  return v4;
}

- (void)setIsOpenEnded:(id)a3
{
  v5 = a3;
  v4 = [(INStartWorkoutIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setIsOpenEnded:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasIsOpenEnded:0];
  }
}

- (NSNumber)isOpenEnded
{
  v3 = [(INStartWorkoutIntent *)self _typedBackingStore];
  if ([v3 hasIsOpenEnded])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INStartWorkoutIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "isOpenEnded")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setWorkoutLocationType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasWorkoutLocationType:0];
  }

  else
  {
    [v5 setWorkoutLocationType:v4];
  }
}

- (INWorkoutLocationType)workoutLocationType
{
  v3 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v4 = [v3 hasWorkoutLocationType];
  v5 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v6 = [v5 workoutLocationType];
  v7 = 2 * (v6 == 1);
  if (!v6)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INWorkoutLocationTypeUnknown;
  }

  return v8;
}

- (void)setWorkoutGoalUnitType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 9)
  {
    [v4 setHasWorkoutGoalUnitType:0];
  }

  else
  {
    [v4 setWorkoutGoalUnitType:v3];
  }
}

- (INWorkoutGoalUnitType)workoutGoalUnitType
{
  v3 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v4 = [v3 hasWorkoutGoalUnitType];
  v5 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v6 = [v5 workoutGoalUnitType];
  if (((v6 < 0xA) & v4) != 0)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = INWorkoutGoalUnitTypeUnknown;
  }

  return v7;
}

- (void)setGoalValue:(id)a3
{
  v4 = a3;
  v6 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDouble(v4);

  [v6 setGoalValue:v5];
}

- (NSNumber)goalValue
{
  v2 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v3 = [v2 goalValue];
  v4 = INIntentSlotValueTransformFromDouble(v3);

  return v4;
}

- (void)setWorkoutName:(id)a3
{
  v4 = a3;
  v6 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setWorkoutName:v5];
}

- (INSpeakableString)workoutName
{
  v2 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v3 = [v2 workoutName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (INStartWorkoutIntent)initWithWorkoutName:(INSpeakableString *)workoutName goalValue:(NSNumber *)goalValue workoutGoalUnitType:(INWorkoutGoalUnitType)workoutGoalUnitType workoutLocationType:(INWorkoutLocationType)workoutLocationType isOpenEnded:(NSNumber *)isOpenEnded
{
  v12 = workoutName;
  v13 = goalValue;
  v14 = isOpenEnded;
  v18.receiver = self;
  v18.super_class = INStartWorkoutIntent;
  v15 = [(INIntent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(INStartWorkoutIntent *)v15 setWorkoutName:v12];
    [(INStartWorkoutIntent *)v16 setGoalValue:v13];
    [(INStartWorkoutIntent *)v16 setWorkoutGoalUnitType:workoutGoalUnitType];
    [(INStartWorkoutIntent *)v16 setWorkoutLocationType:workoutLocationType];
    [(INStartWorkoutIntent *)v16 setIsOpenEnded:v14];
  }

  return v16;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INStartWorkoutIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INStartWorkoutIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end