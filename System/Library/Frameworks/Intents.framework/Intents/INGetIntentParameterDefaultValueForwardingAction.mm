@interface INGetIntentParameterDefaultValueForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler;
- (INGetIntentParameterDefaultValueForwardingAction)initWithCoder:(id)coder;
- (INGetIntentParameterDefaultValueForwardingAction)initWithIntent:(id)intent parameterName:(id)name;
- (id)_completionHandlerWithActionCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler;
@end

@implementation INGetIntentParameterDefaultValueForwardingAction

- (id)_completionHandlerWithActionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__INGetIntentParameterDefaultValueForwardingAction__completionHandlerWithActionCompletionHandler___block_invoke;
  v7[3] = &unk_1E7287288;
  v8 = handlerCopy;
  v4 = handlerCopy;
  v5 = MEMORY[0x193AD7780](v7);

  return v5;
}

void __98__INGetIntentParameterDefaultValueForwardingAction__completionHandlerWithActionCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[INGetIntentParameterDefaultValueForwardingActionResponse alloc] initWithArchivedDefaultValue:v6 error:v5];

  (*(*(a1 + 32) + 16))();
}

- (INGetIntentParameterDefaultValueForwardingAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];

  v7 = [(INGetIntentParameterDefaultValueForwardingAction *)self initWithIntent:v5 parameterName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetIntentParameterDefaultValueForwardingAction;
  coderCopy = coder;
  [(INIntentForwardingAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_parameterName forKey:{@"parameterName", v5.receiver, v5.super_class}];
}

- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler
{
  parameterName = self->_parameterName;
  handlerCopy = handler;
  delivererCopy = deliverer;
  intent = [(INIntentForwardingAction *)self intent];
  v9 = [(INGetIntentParameterDefaultValueForwardingAction *)self _completionHandlerWithActionCompletionHandler:handlerCopy];

  [delivererCopy getIntentParameterDefaultValue:parameterName forIntent:intent completionBlock:v9];
}

- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler
{
  remoteCopy = remote;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = INGetIntentParameterDefaultValueForwardingAction;
  if (![(INIntentForwardingAction *)&v13 executeRemotelyWithVendorRemote:remoteCopy completionHandler:handlerCopy])
  {
    intent = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(intent);

    parameterName = self->_parameterName;
    v11 = [(INGetIntentParameterDefaultValueForwardingAction *)self _completionHandlerWithActionCompletionHandler:handlerCopy];
    [remoteCopy getIntentParameterDefaultValue:parameterName forIntent:v9 completionBlock:v11];
  }

  return 1;
}

- (INGetIntentParameterDefaultValueForwardingAction)initWithIntent:(id)intent parameterName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = INGetIntentParameterDefaultValueForwardingAction;
  v7 = [(INIntentForwardingAction *)&v11 initWithIntent:intent];
  if (v7)
  {
    v8 = [nameCopy copy];
    parameterName = v7->_parameterName;
    v7->_parameterName = v8;
  }

  return v7;
}

@end