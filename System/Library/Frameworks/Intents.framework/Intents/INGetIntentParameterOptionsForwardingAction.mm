@interface INGetIntentParameterOptionsForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler;
- (INGetIntentParameterOptionsForwardingAction)initWithCoder:(id)coder;
- (INGetIntentParameterOptionsForwardingAction)initWithIntent:(id)intent parameterName:(id)name searchTerm:(id)term;
- (id)_completionHandlerWithActionCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler;
@end

@implementation INGetIntentParameterOptionsForwardingAction

- (id)_completionHandlerWithActionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__INGetIntentParameterOptionsForwardingAction__completionHandlerWithActionCompletionHandler___block_invoke;
  v7[3] = &unk_1E7287288;
  v8 = handlerCopy;
  v4 = handlerCopy;
  v5 = MEMORY[0x193AD7780](v7);

  return v5;
}

void __93__INGetIntentParameterOptionsForwardingAction__completionHandlerWithActionCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[INGetIntentParameterOptionsForwardingActionResponse alloc] initWithArchivedObjectCollection:v6 error:v5];

  (*(*(a1 + 32) + 16))();
}

- (INGetIntentParameterOptionsForwardingAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchTerm"];

  v8 = [(INGetIntentParameterOptionsForwardingAction *)self initWithIntent:v5 parameterName:v6 searchTerm:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetIntentParameterOptionsForwardingAction;
  coderCopy = coder;
  [(INIntentForwardingAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_parameterName forKey:{@"parameterName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_searchTerm forKey:@"searchTerm"];
}

- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler
{
  parameterName = self->_parameterName;
  handlerCopy = handler;
  delivererCopy = deliverer;
  intent = [(INIntentForwardingAction *)self intent];
  searchTerm = [(INGetIntentParameterOptionsForwardingAction *)self searchTerm];
  v10 = [(INGetIntentParameterOptionsForwardingAction *)self _completionHandlerWithActionCompletionHandler:handlerCopy];

  [delivererCopy getIntentParameterOptions:parameterName forIntent:intent searchTerm:searchTerm completionBlock:v10];
}

- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler
{
  remoteCopy = remote;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = INGetIntentParameterOptionsForwardingAction;
  if (![(INIntentForwardingAction *)&v15 executeRemotelyWithVendorRemote:remoteCopy completionHandler:handlerCopy])
  {
    intent = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(intent);

    v10 = objc_opt_respondsToSelector();
    parameterName = self->_parameterName;
    if (v10)
    {
      searchTerm = [(INGetIntentParameterOptionsForwardingAction *)self searchTerm];
      v13 = [(INGetIntentParameterOptionsForwardingAction *)self _completionHandlerWithActionCompletionHandler:handlerCopy];
      [remoteCopy getIntentParameterOptions:parameterName forIntent:v9 searchTerm:searchTerm completionBlock:v13];
    }

    else
    {
      searchTerm = [(INGetIntentParameterOptionsForwardingAction *)self _completionHandlerWithActionCompletionHandler:handlerCopy];
      [remoteCopy getIntentParameterOptions:parameterName forIntent:v9 completionBlock:searchTerm];
    }
  }

  return 1;
}

- (INGetIntentParameterOptionsForwardingAction)initWithIntent:(id)intent parameterName:(id)name searchTerm:(id)term
{
  nameCopy = name;
  termCopy = term;
  v16.receiver = self;
  v16.super_class = INGetIntentParameterOptionsForwardingAction;
  v10 = [(INIntentForwardingAction *)&v16 initWithIntent:intent];
  if (v10)
  {
    v11 = [nameCopy copy];
    parameterName = v10->_parameterName;
    v10->_parameterName = v11;

    v13 = [termCopy copy];
    searchTerm = v10->_searchTerm;
    v10->_searchTerm = v13;
  }

  return v10;
}

@end