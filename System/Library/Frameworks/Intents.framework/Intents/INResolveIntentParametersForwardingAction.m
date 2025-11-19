@interface INResolveIntentParametersForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4;
- (INResolveIntentParametersForwardingAction)initWithCoder:(id)a3;
- (INResolveIntentParametersForwardingAction)initWithIntent:(id)a3 parameterName:(id)a4;
- (INResolveIntentParametersForwardingAction)initWithIntent:(id)a3 parameterNames:(id)a4;
- (id)_completionHandlerForMultipleParametersWithActionCompletionHandler:(id)a3;
- (id)_completionHandlerForSingleParameterNamed:(id)a3 withActionCompletionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4;
@end

@implementation INResolveIntentParametersForwardingAction

- (id)_completionHandlerForSingleParameterNamed:(id)a3 withActionCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115__INResolveIntentParametersForwardingAction__completionHandlerForSingleParameterNamed_withActionCompletionHandler___block_invoke;
  v11[3] = &unk_1E727E310;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = MEMORY[0x193AD7780](v11);

  return v9;
}

void __115__INResolveIntentParametersForwardingAction__completionHandlerForSingleParameterNamed_withActionCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[INExtensionContextSlotResolutionResult alloc] initWithResult:-1 data:v3];

  v5 = [INResolveIntentParametersForwardingActionResponse alloc];
  v9 = *(a1 + 32);
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [(INResolveIntentParametersForwardingActionResponse *)v5 initWithSuccess:1 updatedIntent:0 parameterResolutionResults:v6 error:0];

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (id)_completionHandlerForMultipleParametersWithActionCompletionHandler:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __112__INResolveIntentParametersForwardingAction__completionHandlerForMultipleParametersWithActionCompletionHandler___block_invoke;
  v7[3] = &unk_1E727E2E8;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x193AD7780](v7);

  return v5;
}

void __112__INResolveIntentParametersForwardingAction__completionHandlerForMultipleParametersWithActionCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[INResolveIntentParametersForwardingActionResponse alloc] initWithSuccess:a2 updatedIntent:v8 parameterResolutionResults:v7 error:0];

  (*(*(a1 + 32) + 16))();
}

- (INResolveIntentParametersForwardingAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"parameterNames"];

  v10 = [(INResolveIntentParametersForwardingAction *)self initWithIntent:v5 parameterNames:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INResolveIntentParametersForwardingAction;
  v4 = a3;
  [(INIntentForwardingAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parameterNames forKey:{@"parameterNames", v5.receiver, v5.super_class}];
}

- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4
{
  resolvesAllParameters = self->_resolvesAllParameters;
  parameterNames = self->_parameterNames;
  v8 = a4;
  v9 = a3;
  if (resolvesAllParameters)
  {
    v12 = [(INIntentForwardingAction *)self intent];
    v10 = [(INResolveIntentParametersForwardingAction *)self _completionHandlerForMultipleParametersWithActionCompletionHandler:v8];

    [v9 resolveIntentParameters:parameterNames forIntent:v12 completionBlock:v10];
  }

  else
  {
    v12 = [(NSArray *)parameterNames firstObject];
    v10 = [(INIntentForwardingAction *)self intent];
    v11 = [(INResolveIntentParametersForwardingAction *)self _completionHandlerForSingleParameterNamed:v12 withActionCompletionHandler:v8];

    [v9 resolveIntentParameter:v12 forIntent:v10 completionBlock:v11];
    v9 = v11;
  }
}

- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INResolveIntentParametersForwardingAction;
  if (![(INIntentForwardingAction *)&v14 executeRemotelyWithVendorRemote:v6 completionHandler:v7])
  {
    v8 = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(v8);

    parameterNames = self->_parameterNames;
    if (self->_resolvesAllParameters)
    {
      v11 = [(INResolveIntentParametersForwardingAction *)self _completionHandlerForMultipleParametersWithActionCompletionHandler:v7];
      [v6 resolveIntentSlots:parameterNames forIntent:v9 completionBlock:v11];
    }

    else
    {
      v11 = [(NSArray *)self->_parameterNames firstObject];
      v12 = [(INResolveIntentParametersForwardingAction *)self _completionHandlerForSingleParameterNamed:v11 withActionCompletionHandler:v7];
      [v6 resolveIntentSlot:v11 forIntent:v9 completionBlock:v12];
    }
  }

  return 1;
}

- (INResolveIntentParametersForwardingAction)initWithIntent:(id)a3 parameterName:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v12.receiver = self;
  v12.super_class = INResolveIntentParametersForwardingAction;
  v7 = [(INIntentForwardingAction *)&v12 initWithIntent:a3];
  if (v7)
  {
    v13[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    parameterNames = v7->_parameterNames;
    v7->_parameterNames = v8;

    v7->_resolvesAllParameters = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (INResolveIntentParametersForwardingAction)initWithIntent:(id)a3 parameterNames:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = INResolveIntentParametersForwardingAction;
  v8 = [(INIntentForwardingAction *)&v11 initWithIntent:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parameterNames, a4);
    v9->_resolvesAllParameters = 1;
  }

  return v9;
}

@end