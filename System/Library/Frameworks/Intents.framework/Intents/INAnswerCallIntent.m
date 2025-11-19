@interface INAnswerCallIntent
- (INAnswerCallIntent)initWithAudioRoute:(INCallAudioRoute)audioRoute callIdentifier:(NSString *)callIdentifier;
- (INCallAudioRoute)audioRoute;
- (NSString)callIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAudioRoute:(int64_t)a3;
- (void)setCallIdentifier:(id)a3;
@end

@implementation INAnswerCallIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INAnswerCallIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"audioRoute";
  v3 = [(INAnswerCallIntent *)self audioRoute];
  v4 = @"speakerphoneAudioRoute";
  v5 = @"heySiriAudioRoute";
  v6 = @"unknown";
  if (v3 == INCallAudioRouteBluetoothAudioRoute)
  {
    v6 = @"bluetoothAudioRoute";
  }

  if (v3 != 1000)
  {
    v5 = v6;
  }

  if (v3 != INCallAudioRouteSpeakerphoneAudioRoute)
  {
    v4 = v5;
  }

  v7 = v4;
  v13[1] = @"callIdentifier";
  v14[0] = v7;
  v8 = [(INAnswerCallIntent *)self callIdentifier];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  if (!v8)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setCallIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INAnswerCallIntent *)self _typedBackingStore];
  [v5 setCallIdentifier:v4];
}

- (NSString)callIdentifier
{
  v2 = [(INAnswerCallIntent *)self _typedBackingStore];
  v3 = [v2 callIdentifier];
  v4 = [v3 copy];

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
      v4 = [(INAnswerCallIntent *)self _typedBackingStore];
      [v4 setAudioRoute:v3];
      goto LABEL_9;
  }

  v4 = [(INAnswerCallIntent *)self _typedBackingStore];
  [v4 setHasAudioRoute:0];
LABEL_9:
}

- (INCallAudioRoute)audioRoute
{
  v3 = [(INAnswerCallIntent *)self _typedBackingStore];
  v4 = [v3 hasAudioRoute];
  v5 = [(INAnswerCallIntent *)self _typedBackingStore];
  v6 = [v5 audioRoute];
  if (v4 && (v6 - 2) <= 2)
  {
    v7 = qword_18EE5EFD0[v6 - 2];
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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INAnswerCallIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INAnswerCallIntent *)self _typedBackingStore];
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