@interface INRunWorkflowIntent
- (INRunWorkflowIntent)initWithWorkflow:(id)workflow;
- (INSpeakableString)workflow;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setWorkflow:(id)workflow;
@end

@implementation INRunWorkflowIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INRunWorkflowIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"workflow";
  workflow = [(INRunWorkflowIntent *)self workflow];
  null = workflow;
  if (!workflow)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!workflow)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setWorkflow:(id)workflow
{
  workflowCopy = workflow;
  _typedBackingStore = [(INRunWorkflowIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(workflowCopy);

  [_typedBackingStore setWorkflow:v5];
}

- (INSpeakableString)workflow
{
  _typedBackingStore = [(INRunWorkflowIntent *)self _typedBackingStore];
  workflow = [_typedBackingStore workflow];
  v4 = INIntentSlotValueTransformFromDataString(workflow);

  return v4;
}

- (INRunWorkflowIntent)initWithWorkflow:(id)workflow
{
  workflowCopy = workflow;
  v8.receiver = self;
  v8.super_class = INRunWorkflowIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INRunWorkflowIntent *)v5 setWorkflow:workflowCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INRunWorkflowIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INRunWorkflowIntent *)self _typedBackingStore];
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