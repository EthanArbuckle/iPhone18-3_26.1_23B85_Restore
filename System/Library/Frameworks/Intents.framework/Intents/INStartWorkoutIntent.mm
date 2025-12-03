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
- (id)_intents_backgroundHandlingAssertionForBundleIdentifier:(id)identifier context:(unint64_t)context error:(id *)error;
- (id)_metadata;
- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l;
- (id)_typedBackingStore;
- (id)localizeValueOfSlotDescription:(id)description withLocalizer:(id)localizer;
- (int64_t)sequenceLabel;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAssociatedItems:(id)items;
- (void)setCustomization:(id)customization;
- (void)setGoalValue:(id)value;
- (void)setIsBuiltInWorkoutType:(id)type;
- (void)setIsOpenEnded:(id)ended;
- (void)setIsVoiceOnly:(id)only;
- (void)setSequenceLabel:(int64_t)label;
- (void)setWorkoutGoalUnitType:(int64_t)type;
- (void)setWorkoutLocationType:(int64_t)type;
- (void)setWorkoutName:(id)name;
@end

@implementation INStartWorkoutIntent

- (id)_intents_backgroundHandlingAssertionForBundleIdentifier:(id)identifier context:(unint64_t)context error:(id *)error
{
  identifierCopy = identifier;
  if (!context)
  {
    sharedAVSystemController = [getAVSystemControllerClass() sharedAVSystemController];
    v9 = getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute();
    v15 = 0;
    v10 = [sharedAVSystemController setAttribute:identifierCopy forKey:v9 error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      v12 = v11;
      *error = v11;
    }
  }

  v13 = [MEMORY[0x1E695FBE0] newAssertionForBundleIdentifier:identifierCopy withReason:@"SiriKit Background Workout" level:1];

  return v13;
}

- (id)localizeValueOfSlotDescription:(id)description withLocalizer:(id)localizer
{
  descriptionCopy = description;
  localizerCopy = localizer;
  facadePropertyName = [descriptionCopy facadePropertyName];
  v9 = [facadePropertyName isEqualToString:@"goalValue"];

  if (v9)
  {
    goalValue = [(INStartWorkoutIntent *)self goalValue];
    [goalValue doubleValue];
    v12 = v11;

    workoutGoalUnitType = [(INStartWorkoutIntent *)self workoutGoalUnitType];
    if (workoutGoalUnitType > INWorkoutGoalUnitTypeYard)
    {
      if (workoutGoalUnitType <= INWorkoutGoalUnitTypeMinute)
      {
        if (workoutGoalUnitType == INWorkoutGoalUnitTypeSecond)
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

      switch(workoutGoalUnitType)
      {
        case INWorkoutGoalUnitTypeHour:
          v14 = objc_alloc(MEMORY[0x1E696AD28]);
          hours = [MEMORY[0x1E696B008] hours];
          goto LABEL_32;
        case INWorkoutGoalUnitTypeJoule:
          v14 = objc_alloc(MEMORY[0x1E696AD28]);
          hours = [MEMORY[0x1E696B030] joules];
          goto LABEL_32;
        case INWorkoutGoalUnitTypeKiloCalorie:
          v14 = objc_alloc(MEMORY[0x1E696AD28]);
          hours = [MEMORY[0x1E696B030] kilocalories];
          goto LABEL_32;
      }
    }

    else
    {
      if (workoutGoalUnitType > INWorkoutGoalUnitTypeMeter)
      {
        if (workoutGoalUnitType != INWorkoutGoalUnitTypeFoot)
        {
          if (workoutGoalUnitType == INWorkoutGoalUnitTypeMile)
          {
            v14 = objc_alloc(MEMORY[0x1E696AD28]);
            [MEMORY[0x1E696B058] miles];
          }

          else
          {
            v14 = objc_alloc(MEMORY[0x1E696AD28]);
            [MEMORY[0x1E696B058] yards];
          }

          hours = LABEL_7:;
          goto LABEL_32;
        }

        v14 = objc_alloc(MEMORY[0x1E696AD28]);
        hours = [MEMORY[0x1E696B058] feet];
LABEL_32:
        v26 = hours;
        v27 = [v14 initWithDoubleValue:hours unit:v12];

        if (v27)
        {
          v28 = objc_alloc_init(MEMORY[0x1E696AD30]);
          [v28 setUnitOptions:3];
          locale = [localizerCopy locale];
          [v28 setLocale:locale];

          [v28 setUnitStyle:3];
          v21 = [v28 stringFromMeasurement:v27];

          goto LABEL_36;
        }

        goto LABEL_34;
      }

      if (workoutGoalUnitType == INWorkoutGoalUnitTypeInch)
      {
        v14 = objc_alloc(MEMORY[0x1E696AD28]);
        hours = [MEMORY[0x1E696B058] inches];
        goto LABEL_32;
      }

      if (workoutGoalUnitType == INWorkoutGoalUnitTypeMeter)
      {
        v14 = objc_alloc(MEMORY[0x1E696AD28]);
        hours = [MEMORY[0x1E696B058] meters];
        goto LABEL_32;
      }
    }

LABEL_34:
    v31.receiver = self;
    v31.super_class = INStartWorkoutIntent;
    v25 = [(INIntent *)&v31 localizeValueOfSlotDescription:descriptionCopy withLocalizer:localizerCopy];
    goto LABEL_35;
  }

  facadePropertyName2 = [descriptionCopy facadePropertyName];
  v17 = [facadePropertyName2 isEqualToString:@"workoutName"];

  if (v17)
  {
    workoutName = [(INStartWorkoutIntent *)self workoutName];
    spokenPhrase = [workoutName spokenPhrase];

    if ([spokenPhrase hasPrefix:@"com.apple.intents.WorkoutNameIdentifier."])
    {
      v20 = [spokenPhrase substringFromIndex:{objc_msgSend(@"com.apple.intents.WorkoutNameIdentifier.", "length")}];
      v21 = INLocalizedStringWithLocalizer(spokenPhrase, v20, localizerCopy);

      goto LABEL_36;
    }

    goto LABEL_20;
  }

  spokenPhrase = [descriptionCopy facadePropertyName];
  if (![spokenPhrase isEqualToString:@"isOpenEnded"])
  {
LABEL_20:

    goto LABEL_34;
  }

  isOpenEnded = [(INStartWorkoutIntent *)self isOpenEnded];

  if (!isOpenEnded)
  {
    goto LABEL_34;
  }

  isOpenEnded2 = [(INStartWorkoutIntent *)self isOpenEnded];
  bOOLValue = [isOpenEnded2 BOOLValue];

  if (bOOLValue)
  {
    v25 = INLocalizedStringWithLocalizer(@"com.apple.intents.WorkoutIsOpenEnded", @"com.apple.intents.WorkoutIsOpenEnded", localizerCopy);
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
  intentSlotDescriptions = [(INIntent *)self intentSlotDescriptions];
  v3 = [intentSlotDescriptions if_firstObjectPassingTest:&__block_literal_global_29079];

  return v3;
}

uint64_t __64__INStartWorkoutIntent_Summary___goalValueIntentSlotDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 facadePropertyName];
  v3 = [v2 isEqualToString:@"goalValue"];

  return v3;
}

- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l
{
  localizerCopy = localizer;
  lCopy = l;
  isOpenEnded = [(INStartWorkoutIntent *)self isOpenEnded];
  v9 = [isOpenEnded isEqual:&unk_1F02D7F30];

  if (v9)
  {
    v26.receiver = self;
    v26.super_class = INStartWorkoutIntent;
    v10 = [(INIntent *)&v26 _titleWithLocalizer:localizerCopy fromBundleURL:lCopy];
  }

  else
  {
    workoutName = [(INStartWorkoutIntent *)self workoutName];
    spokenPhrase = [workoutName spokenPhrase];

    v13 = __tolower([spokenPhrase characterAtIndex:0]);
    v14 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"aeiou"];
    if ([v14 characterIsMember:v13] && -[INStartWorkoutIntent workoutLocationType](self, "workoutLocationType") == INWorkoutLocationTypeUnknown)
    {
      v16 = [spokenPhrase isEqualToString:@"Other"];
      v17 = @"Start an %1$@ workout for %2$@";
      if (v16)
      {
        v17 = @"Start %1$@ workout for %2$@";
      }

      v18 = v17;
      workoutName2 = [(INStartWorkoutIntent *)self workoutName];
      v20 = [workoutName2 _intents_readableTitleWithLocalizer:localizerCopy];

      _goalValueIntentSlotDescription = [(INStartWorkoutIntent *)self _goalValueIntentSlotDescription];
      v22 = [(INStartWorkoutIntent *)self localizeValueOfSlotDescription:_goalValueIntentSlotDescription withLocalizer:localizerCopy];

      v23 = MEMORY[0x1E696AEC0];
      v24 = INLocalizedStringWithLocalizer(v18, v18, localizerCopy);

      v10 = [v23 localizedStringWithFormat:v24, v20, v22];
    }

    else
    {
      v25.receiver = self;
      v25.super_class = INStartWorkoutIntent;
      v10 = [(INIntent *)&v25 _titleWithLocalizer:localizerCopy fromBundleURL:lCopy];
    }
  }

  return v10;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  goalValue = [_typedBackingStore goalValue];
  v10 = INIntentSlotValueRedactedDoubleFromDouble(goalValue, options);

  [v8 setGoalValue:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"workoutName";
  workoutName = [(INStartWorkoutIntent *)self workoutName];
  null = workoutName;
  if (!workoutName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"goalValue";
  goalValue = [(INStartWorkoutIntent *)self goalValue];
  null2 = goalValue;
  if (!goalValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"workoutGoalUnitType";
  workoutGoalUnitType = [(INStartWorkoutIntent *)self workoutGoalUnitType];
  if ((workoutGoalUnitType - 1) > 9)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7280360[workoutGoalUnitType - 1];
  }

  v9 = v8;
  v19[2] = v9;
  v18[3] = @"workoutLocationType";
  workoutLocationType = [(INStartWorkoutIntent *)self workoutLocationType];
  v11 = @"unknown";
  if (workoutLocationType == INWorkoutLocationTypeIndoor)
  {
    v11 = @"indoor";
  }

  if (workoutLocationType == INWorkoutLocationTypeOutdoor)
  {
    v11 = @"outdoor";
  }

  v12 = v11;
  v19[3] = v12;
  v18[4] = @"isOpenEnded";
  isOpenEnded = [(INStartWorkoutIntent *)self isOpenEnded];
  null3 = isOpenEnded;
  if (!isOpenEnded)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = null3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!isOpenEnded)
  {
  }

  if (!goalValue)
  {
  }

  if (!workoutName)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setCustomization:(id)customization
{
  customizationCopy = customization;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWorkoutCustomization(customizationCopy);

  [_typedBackingStore setCustomization:v5];
}

- (INWorkoutCustomization)customization
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  customization = [_typedBackingStore customization];
  v4 = INIntentSlotValueTransformFromWorkoutCustomization(customization);

  return v4;
}

- (void)setSequenceLabel:(int64_t)label
{
  if (label == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (label == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasSequenceLabel:0];
  }

  else
  {
    [_typedBackingStore setSequenceLabel:v4];
  }
}

- (int64_t)sequenceLabel
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  hasSequenceLabel = [_typedBackingStore hasSequenceLabel];
  _typedBackingStore2 = [(INStartWorkoutIntent *)self _typedBackingStore];
  sequenceLabel = [_typedBackingStore2 sequenceLabel];
  v7 = 2 * (sequenceLabel == 1);
  if (!sequenceLabel)
  {
    v7 = 1;
  }

  if (hasSequenceLabel)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setIsVoiceOnly:(id)only
{
  onlyCopy = only;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  if (onlyCopy)
  {
    [_typedBackingStore setIsVoiceOnly:{objc_msgSend(onlyCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasIsVoiceOnly:0];
  }
}

- (NSNumber)isVoiceOnly
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasIsVoiceOnly])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INStartWorkoutIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "isVoiceOnly")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIsBuiltInWorkoutType:(id)type
{
  typeCopy = type;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  if (typeCopy)
  {
    [_typedBackingStore setIsBuiltInWorkoutType:{objc_msgSend(typeCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasIsBuiltInWorkoutType:0];
  }
}

- (NSNumber)isBuiltInWorkoutType
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasIsBuiltInWorkoutType])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INStartWorkoutIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "isBuiltInWorkoutType")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAssociatedItems:(id)items
{
  itemsCopy = items;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWorkoutAssociatedItems(itemsCopy);

  [_typedBackingStore setAssociatedItems:v5];
}

- (NSArray)associatedItems
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  associatedItems = [_typedBackingStore associatedItems];
  v4 = INIntentSlotValueTransformFromWorkoutAssociatedItems(associatedItems);

  return v4;
}

- (void)setIsOpenEnded:(id)ended
{
  endedCopy = ended;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  if (endedCopy)
  {
    [_typedBackingStore setIsOpenEnded:{objc_msgSend(endedCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasIsOpenEnded:0];
  }
}

- (NSNumber)isOpenEnded
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasIsOpenEnded])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INStartWorkoutIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "isOpenEnded")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setWorkoutLocationType:(int64_t)type
{
  if (type == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (type == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasWorkoutLocationType:0];
  }

  else
  {
    [_typedBackingStore setWorkoutLocationType:v4];
  }
}

- (INWorkoutLocationType)workoutLocationType
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  hasWorkoutLocationType = [_typedBackingStore hasWorkoutLocationType];
  _typedBackingStore2 = [(INStartWorkoutIntent *)self _typedBackingStore];
  workoutLocationType = [_typedBackingStore2 workoutLocationType];
  v7 = 2 * (workoutLocationType == 1);
  if (!workoutLocationType)
  {
    v7 = 1;
  }

  if (hasWorkoutLocationType)
  {
    v8 = v7;
  }

  else
  {
    v8 = INWorkoutLocationTypeUnknown;
  }

  return v8;
}

- (void)setWorkoutGoalUnitType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 9)
  {
    [_typedBackingStore setHasWorkoutGoalUnitType:0];
  }

  else
  {
    [_typedBackingStore setWorkoutGoalUnitType:v3];
  }
}

- (INWorkoutGoalUnitType)workoutGoalUnitType
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  hasWorkoutGoalUnitType = [_typedBackingStore hasWorkoutGoalUnitType];
  _typedBackingStore2 = [(INStartWorkoutIntent *)self _typedBackingStore];
  workoutGoalUnitType = [_typedBackingStore2 workoutGoalUnitType];
  if (((workoutGoalUnitType < 0xA) & hasWorkoutGoalUnitType) != 0)
  {
    v7 = workoutGoalUnitType + 1;
  }

  else
  {
    v7 = INWorkoutGoalUnitTypeUnknown;
  }

  return v7;
}

- (void)setGoalValue:(id)value
{
  valueCopy = value;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDouble(valueCopy);

  [_typedBackingStore setGoalValue:v5];
}

- (NSNumber)goalValue
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  goalValue = [_typedBackingStore goalValue];
  v4 = INIntentSlotValueTransformFromDouble(goalValue);

  return v4;
}

- (void)setWorkoutName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setWorkoutName:v5];
}

- (INSpeakableString)workoutName
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  workoutName = [_typedBackingStore workoutName];
  v4 = INIntentSlotValueTransformFromDataString(workoutName);

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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INStartWorkoutIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end