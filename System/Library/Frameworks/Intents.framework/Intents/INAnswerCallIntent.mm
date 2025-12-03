@interface INAnswerCallIntent
- (INAnswerCallIntent)initWithAudioRoute:(INCallAudioRoute)audioRoute callIdentifier:(NSString *)callIdentifier;
- (INCallAudioRoute)audioRoute;
- (NSString)callIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAudioRoute:(int64_t)route;
- (void)setCallIdentifier:(id)identifier;
@end

@implementation INAnswerCallIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INAnswerCallIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"audioRoute";
  audioRoute = [(INAnswerCallIntent *)self audioRoute];
  v4 = @"speakerphoneAudioRoute";
  v5 = @"heySiriAudioRoute";
  v6 = @"unknown";
  if (audioRoute == INCallAudioRouteBluetoothAudioRoute)
  {
    v6 = @"bluetoothAudioRoute";
  }

  if (audioRoute != 1000)
  {
    v5 = v6;
  }

  if (audioRoute != INCallAudioRouteSpeakerphoneAudioRoute)
  {
    v4 = v5;
  }

  v7 = v4;
  v13[1] = @"callIdentifier";
  v14[0] = v7;
  callIdentifier = [(INAnswerCallIntent *)self callIdentifier];
  null = callIdentifier;
  if (!callIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  if (!callIdentifier)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setCallIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INAnswerCallIntent *)self _typedBackingStore];
  [_typedBackingStore setCallIdentifier:identifierCopy];
}

- (NSString)callIdentifier
{
  _typedBackingStore = [(INAnswerCallIntent *)self _typedBackingStore];
  callIdentifier = [_typedBackingStore callIdentifier];
  v4 = [callIdentifier copy];

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
      _typedBackingStore = [(INAnswerCallIntent *)self _typedBackingStore];
      [_typedBackingStore setAudioRoute:v3];
      goto LABEL_9;
  }

  _typedBackingStore = [(INAnswerCallIntent *)self _typedBackingStore];
  [_typedBackingStore setHasAudioRoute:0];
LABEL_9:
}

- (INCallAudioRoute)audioRoute
{
  _typedBackingStore = [(INAnswerCallIntent *)self _typedBackingStore];
  hasAudioRoute = [_typedBackingStore hasAudioRoute];
  _typedBackingStore2 = [(INAnswerCallIntent *)self _typedBackingStore];
  audioRoute = [_typedBackingStore2 audioRoute];
  if (hasAudioRoute && (audioRoute - 2) <= 2)
  {
    v7 = qword_18EE5EFD0[audioRoute - 2];
  }

  else
  {
    v7 = INCallAudioRouteUnknown;
  }

  return v7;
}

- (INAnswerCallIntent)initWithAudioRoute:(INCallAudioRoute)audioRoute callIdentifier:(NSString *)callIdentifier
{
  v6 = callIdentifier;
  v10.receiver = self;
  v10.super_class = INAnswerCallIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INAnswerCallIntent *)v7 setAudioRoute:audioRoute];
    [(INAnswerCallIntent *)v8 setCallIdentifier:v6];
  }

  return v8;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INAnswerCallIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INAnswerCallIntent *)self _typedBackingStore];
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