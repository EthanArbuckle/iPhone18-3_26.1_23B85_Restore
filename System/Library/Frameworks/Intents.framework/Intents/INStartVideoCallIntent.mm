@interface INStartVideoCallIntent
- (INStartCallRequestMetadata)callRequestMetadata;
- (INStartVideoCallIntent)initWithContacts:(NSArray *)contacts;
- (NSArray)contacts;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l;
- (id)_typedBackingStore;
- (int64_t)audioRoute;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAudioRoute:(int64_t)route;
- (void)setCallRequestMetadata:(id)metadata;
- (void)setContacts:(id)contacts;
@end

@implementation INStartVideoCallIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  contacts = [_typedBackingStore contacts];
  v10 = INIntentSlotValueRedactedDialingContactsFromDialingContacts(contacts, options, v11);

  [v8 setContacts:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"contacts";
  contacts = [(INStartVideoCallIntent *)self contacts];
  null = contacts;
  if (!contacts)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!contacts)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setCallRequestMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStartCallRequestMetadata(metadataCopy);

  [_typedBackingStore setCallRequestMetadata:v5];
}

- (INStartCallRequestMetadata)callRequestMetadata
{
  _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
  callRequestMetadata = [_typedBackingStore callRequestMetadata];
  v4 = INIntentSlotValueTransformFromStartCallRequestMetadata(callRequestMetadata);

  return v4;
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDialingContacts(contactsCopy);

  [_typedBackingStore setContacts:v5];
}

- (NSArray)contacts
{
  _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
  contacts = [_typedBackingStore contacts];
  v4 = INIntentSlotValueTransformFromDialingContacts(contacts);

  return v4;
}

- (void)setAudioRoute:(int64_t)route
{
  switch(route)
  {
    case 1:
      v3 = 2;
      goto LABEL_7;
    case 1000:
      v3 = 4;
      goto LABEL_7;
    case 2:
      v3 = 3;
LABEL_7:
      _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
      [_typedBackingStore setAudioRoute:v3];
      goto LABEL_9;
  }

  _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
  [_typedBackingStore setHasAudioRoute:0];
LABEL_9:
}

- (int64_t)audioRoute
{
  _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
  hasAudioRoute = [_typedBackingStore hasAudioRoute];
  _typedBackingStore2 = [(INStartVideoCallIntent *)self _typedBackingStore];
  audioRoute = [_typedBackingStore2 audioRoute];
  if (hasAudioRoute && (audioRoute - 2) <= 2)
  {
    v7 = qword_18EE5EFD0[audioRoute - 2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INStartVideoCallIntent)initWithContacts:(NSArray *)contacts
{
  v4 = contacts;
  v8.receiver = self;
  v8.super_class = INStartVideoCallIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INStartVideoCallIntent *)v5 setContacts:v4];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INStartVideoCallIntent *)self _typedBackingStore];
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

- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l
{
  localizerCopy = localizer;
  lCopy = l;
  _intents_bundleIdForDisplay = [(INIntent *)self _intents_bundleIdForDisplay];
  v9 = [_intents_bundleIdForDisplay isEqualToString:@"com.apple.facetime"];

  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = INLocalizedStringWithLocalizer(@"FaceTime %@", @"FaceTime %@", localizerCopy);
    contacts = [(INStartVideoCallIntent *)self contacts];
    v13 = [contacts _intents_readableTitleWithLocalizer:localizerCopy];
    v14 = [v10 stringWithFormat:v11, v13];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = INStartVideoCallIntent;
    v14 = [(INIntent *)&v16 _titleWithLocalizer:localizerCopy fromBundleURL:lCopy];
  }

  return v14;
}

@end