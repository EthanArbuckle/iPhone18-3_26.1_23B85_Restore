@interface INShareFocusStatusIntent
- (INFocusStatus)focusStatus;
- (INShareFocusStatusIntent)initWithFocusStatus:(INFocusStatus *)focusStatus;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setFocusStatus:(id)status;
@end

@implementation INShareFocusStatusIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INShareFocusStatusIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"focusStatus";
  focusStatus = [(INShareFocusStatusIntent *)self focusStatus];
  null = focusStatus;
  if (!focusStatus)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!focusStatus)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setFocusStatus:(id)status
{
  statusCopy = status;
  _typedBackingStore = [(INShareFocusStatusIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToFocusStatus(statusCopy);

  [_typedBackingStore setFocusStatus:v5];
}

- (INFocusStatus)focusStatus
{
  _typedBackingStore = [(INShareFocusStatusIntent *)self _typedBackingStore];
  focusStatus = [_typedBackingStore focusStatus];
  v4 = INIntentSlotValueTransformFromFocusStatus(focusStatus);

  return v4;
}

- (INShareFocusStatusIntent)initWithFocusStatus:(INFocusStatus *)focusStatus
{
  v4 = focusStatus;
  v8.receiver = self;
  v8.super_class = INShareFocusStatusIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INShareFocusStatusIntent *)v5 setFocusStatus:v4];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INShareFocusStatusIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INShareFocusStatusIntent *)self _typedBackingStore];
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