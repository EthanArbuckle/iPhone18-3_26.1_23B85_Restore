@interface INResumeWorkoutIntent
- (INResumeWorkoutIntent)initWithWorkoutName:(INSpeakableString *)workoutName;
- (INSpeakableString)workoutName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (id)localizeValueOfSlotDescription:(id)description withLocalizer:(id)localizer;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setWorkoutName:(id)name;
@end

@implementation INResumeWorkoutIntent

- (id)localizeValueOfSlotDescription:(id)description withLocalizer:(id)localizer
{
  descriptionCopy = description;
  localizerCopy = localizer;
  facadePropertyName = [descriptionCopy facadePropertyName];
  v9 = [facadePropertyName isEqualToString:@"workoutName"];

  if (v9)
  {
    workoutName = [(INResumeWorkoutIntent *)self workoutName];
    spokenPhrase = [workoutName spokenPhrase];

    if ([spokenPhrase hasPrefix:@"com.apple.intents.WorkoutNameIdentifier."])
    {
      v12 = [spokenPhrase substringFromIndex:{objc_msgSend(@"com.apple.intents.WorkoutNameIdentifier.", "length")}];
      v13 = INLocalizedStringWithLocalizer(spokenPhrase, v12, localizerCopy);

      goto LABEL_6;
    }
  }

  v15.receiver = self;
  v15.super_class = INResumeWorkoutIntent;
  v13 = [(INIntent *)&v15 localizeValueOfSlotDescription:descriptionCopy withLocalizer:localizerCopy];
LABEL_6:

  return v13;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INResumeWorkoutIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"workoutName";
  workoutName = [(INResumeWorkoutIntent *)self workoutName];
  null = workoutName;
  if (!workoutName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!workoutName)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setWorkoutName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INResumeWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setWorkoutName:v5];
}

- (INSpeakableString)workoutName
{
  _typedBackingStore = [(INResumeWorkoutIntent *)self _typedBackingStore];
  workoutName = [_typedBackingStore workoutName];
  v4 = INIntentSlotValueTransformFromDataString(workoutName);

  return v4;
}

- (INResumeWorkoutIntent)initWithWorkoutName:(INSpeakableString *)workoutName
{
  v4 = workoutName;
  v8.receiver = self;
  v8.super_class = INResumeWorkoutIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INResumeWorkoutIntent *)v5 setWorkoutName:v4];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INResumeWorkoutIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INResumeWorkoutIntent *)self _typedBackingStore];
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