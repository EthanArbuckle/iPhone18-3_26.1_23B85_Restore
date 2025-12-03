@interface INGetVisualCodeIntent
- (INGetVisualCodeIntent)initWithVisualCodeType:(INVisualCodeType)visualCodeType;
- (INVisualCodeType)visualCodeType;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setVisualCodeType:(int64_t)type;
@end

@implementation INGetVisualCodeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INGetVisualCodeIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"visualCodeType";
  visualCodeType = [(INGetVisualCodeIntent *)self visualCodeType];
  if ((visualCodeType - 1) > 5)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = off_1E72822F0[visualCodeType - 1];
  }

  v4 = v3;
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setVisualCodeType:(int64_t)type
{
  _typedBackingStore = [(INGetVisualCodeIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (type > 6)
  {
    [_typedBackingStore setHasVisualCodeType:0];
  }

  else
  {
    [_typedBackingStore setVisualCodeType:type];
  }
}

- (INVisualCodeType)visualCodeType
{
  _typedBackingStore = [(INGetVisualCodeIntent *)self _typedBackingStore];
  hasVisualCodeType = [_typedBackingStore hasVisualCodeType];
  _typedBackingStore2 = [(INGetVisualCodeIntent *)self _typedBackingStore];
  visualCodeType = [_typedBackingStore2 visualCodeType];
  if (((visualCodeType - 1 < 6) & hasVisualCodeType) != 0)
  {
    v7 = visualCodeType;
  }

  else
  {
    v7 = INVisualCodeTypeUnknown;
  }

  return v7;
}

- (INGetVisualCodeIntent)initWithVisualCodeType:(INVisualCodeType)visualCodeType
{
  v7.receiver = self;
  v7.super_class = INGetVisualCodeIntent;
  v4 = [(INIntent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(INGetVisualCodeIntent *)v4 setVisualCodeType:visualCodeType];
  }

  return v5;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INGetVisualCodeIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INGetVisualCodeIntent *)self _typedBackingStore];
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