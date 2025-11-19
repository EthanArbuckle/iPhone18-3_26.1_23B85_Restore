@interface INCreateTimerIntent
- (INCreateTimerIntent)initWithLabel:(id)a3 duration:(double)a4 type:(int64_t)a5;
- (INSpeakableString)label;
- (double)duration;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)type;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setDuration:(double)a3;
- (void)setLabel:(id)a3;
- (void)setType:(int64_t)a3;
@end

@implementation INCreateTimerIntent

- (id)_metadata
{
  v2 = [(INCreateTimerIntent *)self _typedBackingStore];
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

- (INSpeakableString)label
{
  v2 = [(INCreateTimerIntent *)self _typedBackingStore];
  v3 = [v2 label];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (int64_t)type
{
  v3 = [(INCreateTimerIntent *)self _typedBackingStore];
  v4 = [v3 hasType];
  v5 = [(INCreateTimerIntent *)self _typedBackingStore];
  v6 = [v5 type];
  v7 = v6 == 1;
  if (v6 == 2)
  {
    v7 = 2;
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

- (double)duration
{
  v3 = [(INCreateTimerIntent *)self _typedBackingStore];
  v4 = 0.0;
  if ([v3 hasDuration])
  {
    v5 = [(INCreateTimerIntent *)self _typedBackingStore];
    [v5 duration];
    v4 = v6;
  }

  return v4;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INCreateTimerIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"label";
  v3 = [(INCreateTimerIntent *)self label];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"duration";
  v5 = MEMORY[0x1E696AD98];
  [(INCreateTimerIntent *)self duration];
  v6 = [v5 numberWithDouble:?];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v7;
  v14[2] = @"type";
  v8 = [(INCreateTimerIntent *)self type];
  v9 = @"unknown";
  if (v8 == 2)
  {
    v9 = @"sleepTimer";
  }

  if (v8 == 1)
  {
    v9 = @"defaultType";
  }

  v10 = v9;
  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  if (!v6)
  {
  }

  if (!v3)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setType:(int64_t)a3
{
  v4 = [(INCreateTimerIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 2)
  {
    [v4 setHasType:0];
  }

  else
  {
    [v4 setType:a3];
  }
}

- (void)setDuration:(double)a3
{
  v4 = [(INCreateTimerIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 == 0.0)
  {
    [v4 setHasDuration:0];
  }

  else
  {
    [v4 setDuration:a3];
  }
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v6 = [(INCreateTimerIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setLabel:v5];
}

- (INCreateTimerIntent)initWithLabel:(id)a3 duration:(double)a4 type:(int64_t)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = INCreateTimerIntent;
  v9 = [(INIntent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(INCreateTimerIntent *)v9 setLabel:v8];
    [(INCreateTimerIntent *)v10 setDuration:a4];
    [(INCreateTimerIntent *)v10 setType:a5];
  }

  return v10;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INCreateTimerIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

@end