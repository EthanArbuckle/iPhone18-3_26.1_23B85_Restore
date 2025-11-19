@interface INEndWorkoutIntent
- (INEndWorkoutIntent)initWithWorkoutName:(INSpeakableString *)workoutName;
- (INSpeakableString)workoutName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (id)localizeValueOfSlotDescription:(id)a3 withLocalizer:(id)a4;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setWorkoutName:(id)a3;
@end

@implementation INEndWorkoutIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INEndWorkoutIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"workoutName";
  v2 = [(INEndWorkoutIntent *)self workoutName];
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setWorkoutName:(id)a3
{
  v4 = a3;
  v6 = [(INEndWorkoutIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setWorkoutName:v5];
}

- (INSpeakableString)workoutName
{
  v2 = [(INEndWorkoutIntent *)self _typedBackingStore];
  v3 = [v2 workoutName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (INEndWorkoutIntent)initWithWorkoutName:(INSpeakableString *)workoutName
{
  v4 = workoutName;
  v8.receiver = self;
  v8.super_class = INEndWorkoutIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INEndWorkoutIntent *)v5 setWorkoutName:v4];
  }

  return v6;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INEndWorkoutIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INEndWorkoutIntent *)self _typedBackingStore];
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

- (id)localizeValueOfSlotDescription:(id)a3 withLocalizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 facadePropertyName];
  v9 = [v8 isEqualToString:@"workoutName"];

  if (v9)
  {
    v10 = [(INEndWorkoutIntent *)self workoutName];
    v11 = [v10 spokenPhrase];

    if ([v11 hasPrefix:@"com.apple.intents.WorkoutNameIdentifier."])
    {
      v12 = [v11 substringFromIndex:{objc_msgSend(@"com.apple.intents.WorkoutNameIdentifier.", "length")}];
      v13 = INLocalizedStringWithLocalizer(v11, v12, v7);

      goto LABEL_6;
    }
  }

  v15.receiver = self;
  v15.super_class = INEndWorkoutIntent;
  v13 = [(INIntent *)&v15 localizeValueOfSlotDescription:v6 withLocalizer:v7];
LABEL_6:

  return v13;
}

@end