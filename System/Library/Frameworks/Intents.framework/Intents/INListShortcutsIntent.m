@interface INListShortcutsIntent
- (INListShortcutsIntent)initWithOriginDevice:(int64_t)a3 appTitles:(id)a4;
- (NSArray)appTitles;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)originDevice;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAppTitles:(id)a3;
- (void)setOriginDevice:(int64_t)a3;
@end

@implementation INListShortcutsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INListShortcutsIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"originDevice";
  v3 = [(INListShortcutsIntent *)self originDevice];
  if ((v3 - 1) > 6)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E7286518[v3 - 1];
  }

  v5 = v4;
  v11[1] = @"appTitles";
  v12[0] = v5;
  v6 = [(INListShortcutsIntent *)self appTitles];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!v6)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setAppTitles:(id)a3
{
  v4 = a3;
  v6 = [(INListShortcutsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAppIdentifiers(v4);

  [v6 setAppTitles:v5];
}

- (NSArray)appTitles
{
  v2 = [(INListShortcutsIntent *)self _typedBackingStore];
  v3 = [v2 appTitles];
  v4 = INIntentSlotValueTransformFromAppIdentifiers(v3);

  return v4;
}

- (void)setOriginDevice:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INListShortcutsIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 6)
  {
    [v4 setHasOriginDevice:0];
  }

  else
  {
    [v4 setOriginDevice:?];
  }
}

- (int64_t)originDevice
{
  v3 = [(INListShortcutsIntent *)self _typedBackingStore];
  v4 = [v3 hasOriginDevice];
  v5 = [(INListShortcutsIntent *)self _typedBackingStore];
  v6 = [v5 originDevice];
  if (((v6 - 1 < 7) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INListShortcutsIntent)initWithOriginDevice:(int64_t)a3 appTitles:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = INListShortcutsIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INListShortcutsIntent *)v7 setOriginDevice:a3];
    [(INListShortcutsIntent *)v8 setAppTitles:v6];
  }

  return v8;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INListShortcutsIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INListShortcutsIntent *)self _typedBackingStore];
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