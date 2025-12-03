@interface INResolveIntentParametersForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler;
- (INResolveIntentParametersForwardingAction)initWithCoder:(id)coder;
- (INResolveIntentParametersForwardingAction)initWithIntent:(id)intent parameterName:(id)name;
- (INResolveIntentParametersForwardingAction)initWithIntent:(id)intent parameterNames:(id)names;
- (id)_completionHandlerForMultipleParametersWithActionCompletionHandler:(id)handler;
- (id)_completionHandlerForSingleParameterNamed:(id)named withActionCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler;
@end

@implementation INResolveIntentParametersForwardingAction

- (id)_completionHandlerForSingleParameterNamed:(id)named withActionCompletionHandler:(id)handler
{
  namedCopy = named;
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115__INResolveIntentParametersForwardingAction__completionHandlerForSingleParameterNamed_withActionCompletionHandler___block_invoke;
  v11[3] = &unk_1E727E310;
  v12 = namedCopy;
  v13 = handlerCopy;
  v7 = handlerCopy;
  v8 = namedCopy;
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

- (id)_completionHandlerForMultipleParametersWithActionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __112__INResolveIntentParametersForwardingAction__completionHandlerForMultipleParametersWithActionCompletionHandler___block_invoke;
  v7[3] = &unk_1E727E2E8;
  v8 = handlerCopy;
  v4 = handlerCopy;
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

- (INResolveIntentParametersForwardingAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parameterNames"];

  v10 = [(INResolveIntentParametersForwardingAction *)self initWithIntent:v5 parameterNames:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INResolveIntentParametersForwardingAction;
  coderCopy = coder;
  [(INIntentForwardingAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_parameterNames forKey:{@"parameterNames", v5.receiver, v5.super_class}];
}

- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler
{
  resolvesAllParameters = self->_resolvesAllParameters;
  parameterNames = self->_parameterNames;
  handlerCopy = handler;
  delivererCopy = deliverer;
  if (resolvesAllParameters)
  {
    intent = [(INIntentForwardingAction *)self intent];
    intent2 = [(INResolveIntentParametersForwardingAction *)self _completionHandlerForMultipleParametersWithActionCompletionHandler:handlerCopy];

    [delivererCopy resolveIntentParameters:parameterNames forIntent:intent completionBlock:intent2];
  }

  else
  {
    intent = [(NSArray *)parameterNames firstObject];
    intent2 = [(INIntentForwardingAction *)self intent];
    v11 = [(INResolveIntentParametersForwardingAction *)self _completionHandlerForSingleParameterNamed:intent withActionCompletionHandler:handlerCopy];

    [delivererCopy resolveIntentParameter:intent forIntent:intent2 completionBlock:v11];
    delivererCopy = v11;
  }
}

- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler
{
  remoteCopy = remote;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = INResolveIntentParametersForwardingAction;
  if (![(INIntentForwardingAction *)&v14 executeRemotelyWithVendorRemote:remoteCopy completionHandler:handlerCopy])
  {
    intent = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(intent);

    parameterNames = self->_parameterNames;
    if (self->_resolvesAllParameters)
    {
      firstObject = [(INResolveIntentParametersForwardingAction *)self _completionHandlerForMultipleParametersWithActionCompletionHandler:handlerCopy];
      [remoteCopy resolveIntentSlots:parameterNames forIntent:v9 completionBlock:firstObject];
    }

    else
    {
      firstObject = [(NSArray *)self->_parameterNames firstObject];
      v12 = [(INResolveIntentParametersForwardingAction *)self _completionHandlerForSingleParameterNamed:firstObject withActionCompletionHandler:handlerCopy];
      [remoteCopy resolveIntentSlot:firstObject forIntent:v9 completionBlock:v12];
    }
  }

  return 1;
}

- (INResolveIntentParametersForwardingAction)initWithIntent:(id)intent parameterName:(id)name
{
  v13[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = INResolveIntentParametersForwardingAction;
  v7 = [(INIntentForwardingAction *)&v12 initWithIntent:intent];
  if (v7)
  {
    v13[0] = nameCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    parameterNames = v7->_parameterNames;
    v7->_parameterNames = v8;

    v7->_resolvesAllParameters = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (INResolveIntentParametersForwardingAction)initWithIntent:(id)intent parameterNames:(id)names
{
  namesCopy = names;
  v11.receiver = self;
  v11.super_class = INResolveIntentParametersForwardingAction;
  v8 = [(INIntentForwardingAction *)&v11 initWithIntent:intent];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parameterNames, names);
    v9->_resolvesAllParameters = 1;
  }

  return v9;
}

@end