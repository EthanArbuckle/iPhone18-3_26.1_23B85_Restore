@interface INSetTimerAttributeIntent
- (INSetTimerAttributeIntent)initWithTargetTimer:(id)a3 toDuration:(double)a4 toLabel:(id)a5;
- (INSpeakableString)toLabel;
- (INTimer)targetTimer;
- (double)toDuration;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setTargetTimer:(id)a3;
- (void)setToDuration:(double)a3;
- (void)setToLabel:(id)a3;
@end

@implementation INSetTimerAttributeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetTimerAttributeIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"targetTimer";
  v3 = [(INSetTimerAttributeIntent *)self targetTimer];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"toDuration";
  v5 = MEMORY[0x1E696AD98];
  [(INSetTimerAttributeIntent *)self toDuration];
  v6 = [v5 numberWithDouble:?];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v7;
  v13[2] = @"toLabel";
  v8 = [(INSetTimerAttributeIntent *)self toLabel];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v3)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setToLabel:(id)a3
{
  v4 = a3;
  v6 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setToLabel:v5];
}

- (INSpeakableString)toLabel
{
  v2 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v3 = [v2 toLabel];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setToDuration:(double)a3
{
  v4 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 == 0.0)
  {
    [v4 setHasToDuration:0];
  }

  else
  {
    [v4 setToDuration:a3];
  }
}

- (double)toDuration
{
  v3 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v4 = 0.0;
  if ([v3 hasToDuration])
  {
    v5 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
    [v5 toDuration];
    v4 = v6;
  }

  return v4;
}

- (void)setTargetTimer:(id)a3
{
  v4 = a3;
  v6 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTimer(v4);

  [v6 setTargetTimer:v5];
}

- (INTimer)targetTimer
{
  v2 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v3 = [v2 targetTimer];
  v4 = INIntentSlotValueTransformFromTimer(v3);

  return v4;
}

- (INSetTimerAttributeIntent)initWithTargetTimer:(id)a3 toDuration:(double)a4 toLabel:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = INSetTimerAttributeIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INSetTimerAttributeIntent *)v10 setTargetTimer:v8];
    [(INSetTimerAttributeIntent *)v11 setToDuration:a4];
    [(INSetTimerAttributeIntent *)v11 setToLabel:v9];
  }

  return v11;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
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