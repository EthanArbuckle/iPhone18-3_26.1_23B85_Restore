@interface INSearchForTimersIntent
- (INSearchForTimersIntent)initWithLabel:(id)label duration:(double)duration state:(int64_t)state type:(int64_t)type;
- (INSpeakableString)label;
- (double)duration;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)state;
- (int64_t)type;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setDuration:(double)duration;
- (void)setLabel:(id)label;
- (void)setState:(int64_t)state;
- (void)setType:(int64_t)type;
@end

@implementation INSearchForTimersIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSearchForTimersIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"label";
  label = [(INSearchForTimersIntent *)self label];
  null = label;
  if (!label)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"duration";
  v5 = MEMORY[0x1E696AD98];
  [(INSearchForTimersIntent *)self duration];
  v6 = [v5 numberWithDouble:?];
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"state";
  state = [(INSearchForTimersIntent *)self state];
  v9 = @"unknown";
  if (state == 2)
  {
    v9 = @"timerPaused";
  }

  if (state == 1)
  {
    v9 = @"timerRunning";
  }

  v10 = v9;
  v18[2] = v10;
  v17[3] = @"type";
  type = [(INSearchForTimersIntent *)self type];
  v12 = @"unknown";
  if (type == 2)
  {
    v12 = @"sleepTimer";
  }

  if (type == 1)
  {
    v12 = @"defaultType";
  }

  v13 = v12;
  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  if (!v6)
  {
  }

  if (!label)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setType:(int64_t)type
{
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (type > 2)
  {
    [_typedBackingStore setHasType:0];
  }

  else
  {
    [_typedBackingStore setType:type];
  }
}

- (int64_t)type
{
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
  hasType = [_typedBackingStore hasType];
  _typedBackingStore2 = [(INSearchForTimersIntent *)self _typedBackingStore];
  type = [_typedBackingStore2 type];
  v7 = type == 1;
  if (type == 2)
  {
    v7 = 2;
  }

  if (hasType)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setState:(int64_t)state
{
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (state > 2)
  {
    [_typedBackingStore setHasState:0];
  }

  else
  {
    [_typedBackingStore setState:state];
  }
}

- (int64_t)state
{
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
  hasState = [_typedBackingStore hasState];
  _typedBackingStore2 = [(INSearchForTimersIntent *)self _typedBackingStore];
  state = [_typedBackingStore2 state];
  v7 = state == 1;
  if (state == 2)
  {
    v7 = 2;
  }

  if (hasState)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setDuration:(double)duration
{
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (duration == 0.0)
  {
    [_typedBackingStore setHasDuration:0];
  }

  else
  {
    [_typedBackingStore setDuration:duration];
  }
}

- (double)duration
{
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
  v4 = 0.0;
  if ([_typedBackingStore hasDuration])
  {
    _typedBackingStore2 = [(INSearchForTimersIntent *)self _typedBackingStore];
    [_typedBackingStore2 duration];
    v4 = v6;
  }

  return v4;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(labelCopy);

  [_typedBackingStore setLabel:v5];
}

- (INSpeakableString)label
{
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
  label = [_typedBackingStore label];
  v4 = INIntentSlotValueTransformFromDataString(label);

  return v4;
}

- (INSearchForTimersIntent)initWithLabel:(id)label duration:(double)duration state:(int64_t)state type:(int64_t)type
{
  labelCopy = label;
  v14.receiver = self;
  v14.super_class = INSearchForTimersIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INSearchForTimersIntent *)v11 setLabel:labelCopy];
    [(INSearchForTimersIntent *)v12 setDuration:duration];
    [(INSearchForTimersIntent *)v12 setState:state];
    [(INSearchForTimersIntent *)v12 setType:type];
  }

  return v12;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSearchForTimersIntent *)self _typedBackingStore];
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