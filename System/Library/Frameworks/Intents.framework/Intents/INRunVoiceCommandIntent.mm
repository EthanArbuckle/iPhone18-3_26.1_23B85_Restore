@interface INRunVoiceCommandIntent
- (INIntentExecutionResult)executionResult;
- (INRunVoiceCommandIntent)initWithVoiceCommand:(id)command originDevice:(id)device executionResult:(id)result previousIntentIdentifier:(id)identifier;
- (INSpeakableString)voiceCommand;
- (INVoiceCommandDeviceInformation)originDevice;
- (NSString)previousIntentIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setExecutionResult:(id)result;
- (void)setOriginDevice:(id)device;
- (void)setPreviousIntentIdentifier:(id)identifier;
- (void)setVoiceCommand:(id)command;
@end

@implementation INRunVoiceCommandIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INRunVoiceCommandIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"voiceCommand";
  voiceCommand = [(INRunVoiceCommandIntent *)self voiceCommand];
  null = voiceCommand;
  if (!voiceCommand)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"originDevice";
  originDevice = [(INRunVoiceCommandIntent *)self originDevice];
  null2 = originDevice;
  if (!originDevice)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"executionResult";
  executionResult = [(INRunVoiceCommandIntent *)self executionResult];
  null3 = executionResult;
  if (!executionResult)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"previousIntentIdentifier";
  previousIntentIdentifier = [(INRunVoiceCommandIntent *)self previousIntentIdentifier];
  null4 = previousIntentIdentifier;
  if (!previousIntentIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (!previousIntentIdentifier)
  {
  }

  if (!executionResult)
  {
  }

  if (!originDevice)
  {
  }

  if (!voiceCommand)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setPreviousIntentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  [_typedBackingStore setPreviousIntentIdentifier:identifierCopy];
}

- (NSString)previousIntentIdentifier
{
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  previousIntentIdentifier = [_typedBackingStore previousIntentIdentifier];
  v4 = [previousIntentIdentifier copy];

  return v4;
}

- (void)setExecutionResult:(id)result
{
  resultCopy = result;
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToIntentExecutionResult(resultCopy);

  [_typedBackingStore setExecutionResult:v5];
}

- (INIntentExecutionResult)executionResult
{
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  executionResult = [_typedBackingStore executionResult];
  v4 = INIntentSlotValueTransformFromIntentExecutionResult(executionResult);

  return v4;
}

- (void)setOriginDevice:(id)device
{
  deviceCopy = device;
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToVoiceCommandDeviceInformation(deviceCopy);

  [_typedBackingStore setOriginDevice:v5];
}

- (INVoiceCommandDeviceInformation)originDevice
{
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  originDevice = [_typedBackingStore originDevice];
  v4 = INIntentSlotValueTransformFromVoiceCommandDeviceInformation(originDevice);

  return v4;
}

- (void)setVoiceCommand:(id)command
{
  commandCopy = command;
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(commandCopy);

  [_typedBackingStore setVoiceCommand:v5];
}

- (INSpeakableString)voiceCommand
{
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  voiceCommand = [_typedBackingStore voiceCommand];
  v4 = INIntentSlotValueTransformFromDataString(voiceCommand);

  return v4;
}

- (INRunVoiceCommandIntent)initWithVoiceCommand:(id)command originDevice:(id)device executionResult:(id)result previousIntentIdentifier:(id)identifier
{
  commandCopy = command;
  deviceCopy = device;
  resultCopy = result;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = INRunVoiceCommandIntent;
  v14 = [(INIntent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(INRunVoiceCommandIntent *)v14 setVoiceCommand:commandCopy];
    [(INRunVoiceCommandIntent *)v15 setOriginDevice:deviceCopy];
    [(INRunVoiceCommandIntent *)v15 setExecutionResult:resultCopy];
    [(INRunVoiceCommandIntent *)v15 setPreviousIntentIdentifier:identifierCopy];
  }

  return v15;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INRunVoiceCommandIntent *)self _typedBackingStore];
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