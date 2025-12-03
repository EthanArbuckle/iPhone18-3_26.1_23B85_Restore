@interface INResumeTimerIntent
- (INResumeTimerIntent)initWithTargetTimer:(id)timer resumeMultiple:(id)multiple;
- (INTimer)targetTimer;
- (NSNumber)resumeMultiple;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setResumeMultiple:(id)multiple;
- (void)setTargetTimer:(id)timer;
@end

@implementation INResumeTimerIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INResumeTimerIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"targetTimer";
  targetTimer = [(INResumeTimerIntent *)self targetTimer];
  null = targetTimer;
  if (!targetTimer)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"resumeMultiple";
  v11[0] = null;
  resumeMultiple = [(INResumeTimerIntent *)self resumeMultiple];
  null2 = resumeMultiple;
  if (!resumeMultiple)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!resumeMultiple)
  {
  }

  if (!targetTimer)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setResumeMultiple:(id)multiple
{
  multipleCopy = multiple;
  _typedBackingStore = [(INResumeTimerIntent *)self _typedBackingStore];
  if (multipleCopy)
  {
    [_typedBackingStore setResumeMultiple:{objc_msgSend(multipleCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasResumeMultiple:0];
  }
}

- (NSNumber)resumeMultiple
{
  _typedBackingStore = [(INResumeTimerIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasResumeMultiple])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INResumeTimerIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "resumeMultiple")}];
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
  _typedBackingStore = [(INResumeTimerIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTimer(timerCopy);

  [_typedBackingStore setTargetTimer:v5];
}

- (INTimer)targetTimer
{
  _typedBackingStore = [(INResumeTimerIntent *)self _typedBackingStore];
  targetTimer = [_typedBackingStore targetTimer];
  v4 = INIntentSlotValueTransformFromTimer(targetTimer);

  return v4;
}

- (INResumeTimerIntent)initWithTargetTimer:(id)timer resumeMultiple:(id)multiple
{
  timerCopy = timer;
  multipleCopy = multiple;
  v11.receiver = self;
  v11.super_class = INResumeTimerIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INResumeTimerIntent *)v8 setTargetTimer:timerCopy];
    [(INResumeTimerIntent *)v9 setResumeMultiple:multipleCopy];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INResumeTimerIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INResumeTimerIntent *)self _typedBackingStore];
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