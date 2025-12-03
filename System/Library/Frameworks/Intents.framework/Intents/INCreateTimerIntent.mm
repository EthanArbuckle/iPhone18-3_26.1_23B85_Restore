@interface INCreateTimerIntent
- (INCreateTimerIntent)initWithLabel:(id)label duration:(double)duration type:(int64_t)type;
- (INSpeakableString)label;
- (double)duration;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)type;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setDuration:(double)duration;
- (void)setLabel:(id)label;
- (void)setType:(int64_t)type;
@end

@implementation INCreateTimerIntent

- (id)_metadata
{
  _typedBackingStore = [(INCreateTimerIntent *)self _typedBackingStore];
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

- (INSpeakableString)label
{
  _typedBackingStore = [(INCreateTimerIntent *)self _typedBackingStore];
  label = [_typedBackingStore label];
  v4 = INIntentSlotValueTransformFromDataString(label);

  return v4;
}

- (int64_t)type
{
  _typedBackingStore = [(INCreateTimerIntent *)self _typedBackingStore];
  hasType = [_typedBackingStore hasType];
  _typedBackingStore2 = [(INCreateTimerIntent *)self _typedBackingStore];
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

- (double)duration
{
  _typedBackingStore = [(INCreateTimerIntent *)self _typedBackingStore];
  v4 = 0.0;
  if ([_typedBackingStore hasDuration])
  {
    _typedBackingStore2 = [(INCreateTimerIntent *)self _typedBackingStore];
    [_typedBackingStore2 duration];
    v4 = v6;
  }

  return v4;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INCreateTimerIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"label";
  label = [(INCreateTimerIntent *)self label];
  null = label;
  if (!label)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"duration";
  v5 = MEMORY[0x1E696AD98];
  [(INCreateTimerIntent *)self duration];
  v6 = [v5 numberWithDouble:?];
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"type";
  type = [(INCreateTimerIntent *)self type];
  v9 = @"unknown";
  if (type == 2)
  {
    v9 = @"sleepTimer";
  }

  if (type == 1)
  {
    v9 = @"defaultType";
  }

  v10 = v9;
  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  if (!v6)
  {
  }

  if (!label)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setType:(int64_t)type
{
  _typedBackingStore = [(INCreateTimerIntent *)self _typedBackingStore];
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

- (void)setDuration:(double)duration
{
  _typedBackingStore = [(INCreateTimerIntent *)self _typedBackingStore];
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

- (void)setLabel:(id)label
{
  labelCopy = label;
  _typedBackingStore = [(INCreateTimerIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(labelCopy);

  [_typedBackingStore setLabel:v5];
}

- (INCreateTimerIntent)initWithLabel:(id)label duration:(double)duration type:(int64_t)type
{
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = INCreateTimerIntent;
  v9 = [(INIntent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(INCreateTimerIntent *)v9 setLabel:labelCopy];
    [(INCreateTimerIntent *)v10 setDuration:duration];
    [(INCreateTimerIntent *)v10 setType:type];
  }

  return v10;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INCreateTimerIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

@end