@interface INPauseTimerIntent
- (INPauseTimerIntent)initWithTargetTimer:(id)timer pauseMultiple:(id)multiple;
- (INTimer)targetTimer;
- (NSNumber)pauseMultiple;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setPauseMultiple:(id)multiple;
- (void)setTargetTimer:(id)timer;
@end

@implementation INPauseTimerIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INPauseTimerIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"targetTimer";
  targetTimer = [(INPauseTimerIntent *)self targetTimer];
  null = targetTimer;
  if (!targetTimer)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"pauseMultiple";
  v11[0] = null;
  pauseMultiple = [(INPauseTimerIntent *)self pauseMultiple];
  null2 = pauseMultiple;
  if (!pauseMultiple)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!pauseMultiple)
  {
  }

  if (!targetTimer)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setPauseMultiple:(id)multiple
{
  multipleCopy = multiple;
  _typedBackingStore = [(INPauseTimerIntent *)self _typedBackingStore];
  if (multipleCopy)
  {
    [_typedBackingStore setPauseMultiple:{objc_msgSend(multipleCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasPauseMultiple:0];
  }
}

- (NSNumber)pauseMultiple
{
  _typedBackingStore = [(INPauseTimerIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasPauseMultiple])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INPauseTimerIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "pauseMultiple")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTargetTimer:(id)timer
{
  timerCopy = timer;
  _typedBackingStore = [(INPauseTimerIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTimer(timerCopy);

  [_typedBackingStore setTargetTimer:v5];
}

- (INTimer)targetTimer
{
  _typedBackingStore = [(INPauseTimerIntent *)self _typedBackingStore];
  targetTimer = [_typedBackingStore targetTimer];
  v4 = INIntentSlotValueTransformFromTimer(targetTimer);

  return v4;
}

- (INPauseTimerIntent)initWithTargetTimer:(id)timer pauseMultiple:(id)multiple
{
  timerCopy = timer;
  multipleCopy = multiple;
  v11.receiver = self;
  v11.super_class = INPauseTimerIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INPauseTimerIntent *)v8 setTargetTimer:timerCopy];
    [(INPauseTimerIntent *)v9 setPauseMultiple:multipleCopy];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INPauseTimerIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INPauseTimerIntent *)self _typedBackingStore];
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