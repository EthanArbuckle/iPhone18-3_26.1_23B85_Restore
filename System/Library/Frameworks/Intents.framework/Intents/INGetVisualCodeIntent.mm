@interface INGetVisualCodeIntent
- (INGetVisualCodeIntent)initWithVisualCodeType:(INVisualCodeType)visualCodeType;
- (INVisualCodeType)visualCodeType;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setVisualCodeType:(int64_t)a3;
@end

@implementation INGetVisualCodeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INGetVisualCodeIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"visualCodeType";
  v2 = [(INGetVisualCodeIntent *)self visualCodeType];
  if ((v2 - 1) > 5)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = off_1E72822F0[v2 - 1];
  }

  v4 = v3;
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setVisualCodeType:(int64_t)a3
{
  v4 = [(INGetVisualCodeIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 6)
  {
    [v4 setHasVisualCodeType:0];
  }

  else
  {
    [v4 setVisualCodeType:a3];
  }
}

- (INVisualCodeType)visualCodeType
{
  v3 = [(INGetVisualCodeIntent *)self _typedBackingStore];
  v4 = [v3 hasVisualCodeType];
  v5 = [(INGetVisualCodeIntent *)self _typedBackingStore];
  v6 = [v5 visualCodeType];
  if (((v6 - 1 < 6) & v4) != 0)
  {
    v7 = v6;
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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INGetVisualCodeIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INGetVisualCodeIntent *)self _typedBackingStore];
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