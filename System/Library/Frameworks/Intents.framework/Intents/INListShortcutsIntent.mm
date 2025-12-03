@interface INListShortcutsIntent
- (INListShortcutsIntent)initWithOriginDevice:(int64_t)device appTitles:(id)titles;
- (NSArray)appTitles;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)originDevice;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAppTitles:(id)titles;
- (void)setOriginDevice:(int64_t)device;
@end

@implementation INListShortcutsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INListShortcutsIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"originDevice";
  originDevice = [(INListShortcutsIntent *)self originDevice];
  if ((originDevice - 1) > 6)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E7286518[originDevice - 1];
  }

  v5 = v4;
  v11[1] = @"appTitles";
  v12[0] = v5;
  appTitles = [(INListShortcutsIntent *)self appTitles];
  null = appTitles;
  if (!appTitles)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!appTitles)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setAppTitles:(id)titles
{
  titlesCopy = titles;
  _typedBackingStore = [(INListShortcutsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAppIdentifiers(titlesCopy);

  [_typedBackingStore setAppTitles:v5];
}

- (NSArray)appTitles
{
  _typedBackingStore = [(INListShortcutsIntent *)self _typedBackingStore];
  appTitles = [_typedBackingStore appTitles];
  v4 = INIntentSlotValueTransformFromAppIdentifiers(appTitles);

  return v4;
}

- (void)setOriginDevice:(int64_t)device
{
  v3 = device - 1;
  _typedBackingStore = [(INListShortcutsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 6)
  {
    [_typedBackingStore setHasOriginDevice:0];
  }

  else
  {
    [_typedBackingStore setOriginDevice:?];
  }
}

- (int64_t)originDevice
{
  _typedBackingStore = [(INListShortcutsIntent *)self _typedBackingStore];
  hasOriginDevice = [_typedBackingStore hasOriginDevice];
  _typedBackingStore2 = [(INListShortcutsIntent *)self _typedBackingStore];
  originDevice = [_typedBackingStore2 originDevice];
  if (((originDevice - 1 < 7) & hasOriginDevice) != 0)
  {
    v7 = originDevice;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INListShortcutsIntent)initWithOriginDevice:(int64_t)device appTitles:(id)titles
{
  titlesCopy = titles;
  v10.receiver = self;
  v10.super_class = INListShortcutsIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INListShortcutsIntent *)v7 setOriginDevice:device];
    [(INListShortcutsIntent *)v8 setAppTitles:titlesCopy];
  }

  return v8;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INListShortcutsIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INListShortcutsIntent *)self _typedBackingStore];
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