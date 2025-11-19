@interface INSearchForTimersIntent
- (INSearchForTimersIntent)initWithLabel:(id)a3 duration:(double)a4 state:(int64_t)a5 type:(int64_t)a6;
- (INSpeakableString)label;
- (double)duration;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)state;
- (int64_t)type;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setDuration:(double)a3;
- (void)setLabel:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setType:(int64_t)a3;
@end

@implementation INSearchForTimersIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSearchForTimersIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"label";
  v3 = [(INSearchForTimersIntent *)self label];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v4;
  v17[1] = @"duration";
  v5 = MEMORY[0x1E696AD98];
  [(INSearchForTimersIntent *)self duration];
  v6 = [v5 numberWithDouble:?];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v7;
  v17[2] = @"state";
  v8 = [(INSearchForTimersIntent *)self state];
  v9 = @"unknown";
  if (v8 == 2)
  {
    v9 = @"timerPaused";
  }

  if (v8 == 1)
  {
    v9 = @"timerRunning";
  }

  v10 = v9;
  v18[2] = v10;
  v17[3] = @"type";
  v11 = [(INSearchForTimersIntent *)self type];
  v12 = @"unknown";
  if (v11 == 2)
  {
    v12 = @"sleepTimer";
  }

  if (v11 == 1)
  {
    v12 = @"defaultType";
  }

  v13 = v12;
  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  if (!v6)
  {
  }

  if (!v3)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setType:(int64_t)a3
{
  v4 = [(INSearchForTimersIntent *)self _typedBackingStore];
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

- (int64_t)type
{
  v3 = [(INSearchForTimersIntent *)self _typedBackingStore];
  v4 = [v3 hasType];
  v5 = [(INSearchForTimersIntent *)self _typedBackingStore];
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

- (void)setState:(int64_t)a3
{
  v4 = [(INSearchForTimersIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 2)
  {
    [v4 setHasState:0];
  }

  else
  {
    [v4 setState:a3];
  }
}

- (int64_t)state
{
  v3 = [(INSearchForTimersIntent *)self _typedBackingStore];
  v4 = [v3 hasState];
  v5 = [(INSearchForTimersIntent *)self _typedBackingStore];
  v6 = [v5 state];
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

- (void)setDuration:(double)a3
{
  v4 = [(INSearchForTimersIntent *)self _typedBackingStore];
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

- (double)duration
{
  v3 = [(INSearchForTimersIntent *)self _typedBackingStore];
  v4 = 0.0;
  if ([v3 hasDuration])
  {
    v5 = [(INSearchForTimersIntent *)self _typedBackingStore];
    [v5 duration];
    v4 = v6;
  }

  return v4;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForTimersIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setLabel:v5];
}

- (INSpeakableString)label
{
  v2 = [(INSearchForTimersIntent *)self _typedBackingStore];
  v3 = [v2 label];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (INSearchForTimersIntent)initWithLabel:(id)a3 duration:(double)a4 state:(int64_t)a5 type:(int64_t)a6
{
  v10 = a3;
  v14.receiver = self;
  v14.super_class = INSearchForTimersIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INSearchForTimersIntent *)v11 setLabel:v10];
    [(INSearchForTimersIntent *)v12 setDuration:a4];
    [(INSearchForTimersIntent *)v12 setState:a5];
    [(INSearchForTimersIntent *)v12 setType:a6];
  }

  return v12;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSearchForTimersIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSearchForTimersIntent *)self _typedBackingStore];
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