@interface INRunVoiceCommandIntent
- (INIntentExecutionResult)executionResult;
- (INRunVoiceCommandIntent)initWithVoiceCommand:(id)a3 originDevice:(id)a4 executionResult:(id)a5 previousIntentIdentifier:(id)a6;
- (INSpeakableString)voiceCommand;
- (INVoiceCommandDeviceInformation)originDevice;
- (NSString)previousIntentIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setExecutionResult:(id)a3;
- (void)setOriginDevice:(id)a3;
- (void)setPreviousIntentIdentifier:(id)a3;
- (void)setVoiceCommand:(id)a3;
@end

@implementation INRunVoiceCommandIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INRunVoiceCommandIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"voiceCommand";
  v3 = [(INRunVoiceCommandIntent *)self voiceCommand];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"originDevice";
  v5 = [(INRunVoiceCommandIntent *)self originDevice];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"executionResult";
  v7 = [(INRunVoiceCommandIntent *)self executionResult];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v8;
  v14[3] = @"previousIntentIdentifier";
  v9 = [(INRunVoiceCommandIntent *)self previousIntentIdentifier];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setPreviousIntentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  [v5 setPreviousIntentIdentifier:v4];
}

- (NSString)previousIntentIdentifier
{
  v2 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v3 = [v2 previousIntentIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (void)setExecutionResult:(id)a3
{
  v4 = a3;
  v6 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToIntentExecutionResult(v4);

  [v6 setExecutionResult:v5];
}

- (INIntentExecutionResult)executionResult
{
  v2 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v3 = [v2 executionResult];
  v4 = INIntentSlotValueTransformFromIntentExecutionResult(v3);

  return v4;
}

- (void)setOriginDevice:(id)a3
{
  v4 = a3;
  v6 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToVoiceCommandDeviceInformation(v4);

  [v6 setOriginDevice:v5];
}

- (INVoiceCommandDeviceInformation)originDevice
{
  v2 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v3 = [v2 originDevice];
  v4 = INIntentSlotValueTransformFromVoiceCommandDeviceInformation(v3);

  return v4;
}

- (void)setVoiceCommand:(id)a3
{
  v4 = a3;
  v6 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setVoiceCommand:v5];
}

- (INSpeakableString)voiceCommand
{
  v2 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v3 = [v2 voiceCommand];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (INRunVoiceCommandIntent)initWithVoiceCommand:(id)a3 originDevice:(id)a4 executionResult:(id)a5 previousIntentIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = INRunVoiceCommandIntent;
  v14 = [(INIntent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(INRunVoiceCommandIntent *)v14 setVoiceCommand:v10];
    [(INRunVoiceCommandIntent *)v15 setOriginDevice:v11];
    [(INRunVoiceCommandIntent *)v15 setExecutionResult:v12];
    [(INRunVoiceCommandIntent *)v15 setPreviousIntentIdentifier:v13];
  }

  return v15;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INRunVoiceCommandIntent *)self _typedBackingStore];
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