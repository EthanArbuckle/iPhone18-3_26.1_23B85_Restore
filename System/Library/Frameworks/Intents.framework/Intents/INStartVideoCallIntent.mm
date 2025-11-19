@interface INStartVideoCallIntent
- (INStartCallRequestMetadata)callRequestMetadata;
- (INStartVideoCallIntent)initWithContacts:(NSArray *)contacts;
- (NSArray)contacts;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_typedBackingStore;
- (int64_t)audioRoute;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAudioRoute:(int64_t)a3;
- (void)setCallRequestMetadata:(id)a3;
- (void)setContacts:(id)a3;
@end

@implementation INStartVideoCallIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INStartVideoCallIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 contacts];
  v10 = INIntentSlotValueRedactedDialingContactsFromDialingContacts(v9, a3, v11);

  [v8 setContacts:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"contacts";
  v2 = [(INStartVideoCallIntent *)self contacts];
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setCallRequestMetadata:(id)a3
{
  v4 = a3;
  v6 = [(INStartVideoCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStartCallRequestMetadata(v4);

  [v6 setCallRequestMetadata:v5];
}

- (INStartCallRequestMetadata)callRequestMetadata
{
  v2 = [(INStartVideoCallIntent *)self _typedBackingStore];
  v3 = [v2 callRequestMetadata];
  v4 = INIntentSlotValueTransformFromStartCallRequestMetadata(v3);

  return v4;
}

- (void)setContacts:(id)a3
{
  v4 = a3;
  v6 = [(INStartVideoCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDialingContacts(v4);

  [v6 setContacts:v5];
}

- (NSArray)contacts
{
  v2 = [(INStartVideoCallIntent *)self _typedBackingStore];
  v3 = [v2 contacts];
  v4 = INIntentSlotValueTransformFromDialingContacts(v3);

  return v4;
}

- (void)setAudioRoute:(int64_t)a3
{
  switch(a3)
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
      v4 = [(INStartVideoCallIntent *)self _typedBackingStore];
      [v4 setAudioRoute:v3];
      goto LABEL_9;
  }

  v4 = [(INStartVideoCallIntent *)self _typedBackingStore];
  [v4 setHasAudioRoute:0];
LABEL_9:
}

- (int64_t)audioRoute
{
  v3 = [(INStartVideoCallIntent *)self _typedBackingStore];
  v4 = [v3 hasAudioRoute];
  v5 = [(INStartVideoCallIntent *)self _typedBackingStore];
  v6 = [v5 audioRoute];
  if (v4 && (v6 - 2) <= 2)
  {
    v7 = qword_18EE5EFD0[v6 - 2];
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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INStartVideoCallIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INStartVideoCallIntent *)self _typedBackingStore];
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

- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INIntent *)self _intents_bundleIdForDisplay];
  v9 = [v8 isEqualToString:@"com.apple.facetime"];

  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = INLocalizedStringWithLocalizer(@"FaceTime %@", @"FaceTime %@", v6);
    v12 = [(INStartVideoCallIntent *)self contacts];
    v13 = [v12 _intents_readableTitleWithLocalizer:v6];
    v14 = [v10 stringWithFormat:v11, v13];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = INStartVideoCallIntent;
    v14 = [(INIntent *)&v16 _titleWithLocalizer:v6 fromBundleURL:v7];
  }

  return v14;
}

@end