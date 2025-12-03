@interface INSetTimerAttributeIntent
- (INSetTimerAttributeIntent)initWithTargetTimer:(id)timer toDuration:(double)duration toLabel:(id)label;
- (INSpeakableString)toLabel;
- (INTimer)targetTimer;
- (double)toDuration;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setTargetTimer:(id)timer;
- (void)setToDuration:(double)duration;
- (void)setToLabel:(id)label;
@end

@implementation INSetTimerAttributeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetTimerAttributeIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"targetTimer";
  targetTimer = [(INSetTimerAttributeIntent *)self targetTimer];
  null = targetTimer;
  if (!targetTimer)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"toDuration";
  v5 = MEMORY[0x1E696AD98];
  [(INSetTimerAttributeIntent *)self toDuration];
  v6 = [v5 numberWithDouble:?];
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"toLabel";
  toLabel = [(INSetTimerAttributeIntent *)self toLabel];
  null3 = toLabel;
  if (!toLabel)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!toLabel)
  {
  }

  if (!v6)
  {
  }

  if (!targetTimer)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setToLabel:(id)label
{
  labelCopy = label;
  _typedBackingStore = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(labelCopy);

  [_typedBackingStore setToLabel:v5];
}

- (INSpeakableString)toLabel
{
  _typedBackingStore = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  toLabel = [_typedBackingStore toLabel];
  v4 = INIntentSlotValueTransformFromDataString(toLabel);

  return v4;
}

- (void)setToDuration:(double)duration
{
  _typedBackingStore = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (duration == 0.0)
  {
    [_typedBackingStore setHasToDuration:0];
  }

  else
  {
    [_typedBackingStore setToDuration:duration];
  }
}

- (double)toDuration
{
  _typedBackingStore = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v4 = 0.0;
  if ([_typedBackingStore hasToDuration])
  {
    _typedBackingStore2 = [(INSetTimerAttributeIntent *)self _typedBackingStore];
    [_typedBackingStore2 toDuration];
    v4 = v6;
  }

  return v4;
}

- (void)setTargetTimer:(id)timer
{
  timerCopy = timer;
  _typedBackingStore = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTimer(timerCopy);

  [_typedBackingStore setTargetTimer:v5];
}

- (INTimer)targetTimer
{
  _typedBackingStore = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  targetTimer = [_typedBackingStore targetTimer];
  v4 = INIntentSlotValueTransformFromTimer(targetTimer);

  return v4;
}

- (INSetTimerAttributeIntent)initWithTargetTimer:(id)timer toDuration:(double)duration toLabel:(id)label
{
  timerCopy = timer;
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = INSetTimerAttributeIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INSetTimerAttributeIntent *)v10 setTargetTimer:timerCopy];
    [(INSetTimerAttributeIntent *)v11 setToDuration:duration];
    [(INSetTimerAttributeIntent *)v11 setToLabel:labelCopy];
  }

  return v11;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetTimerAttributeIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetTimerAttributeIntent *)self _typedBackingStore];
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