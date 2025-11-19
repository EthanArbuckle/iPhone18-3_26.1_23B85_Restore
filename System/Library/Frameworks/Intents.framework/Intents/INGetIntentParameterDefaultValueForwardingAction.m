@interface INGetIntentParameterDefaultValueForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4;
- (INGetIntentParameterDefaultValueForwardingAction)initWithCoder:(id)a3;
- (INGetIntentParameterDefaultValueForwardingAction)initWithIntent:(id)a3 parameterName:(id)a4;
- (id)_completionHandlerWithActionCompletionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4;
@end

@implementation INGetIntentParameterDefaultValueForwardingAction

- (id)_completionHandlerWithActionCompletionHandler:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__INGetIntentParameterDefaultValueForwardingAction__completionHandlerWithActionCompletionHandler___block_invoke;
  v7[3] = &unk_1E7287288;
  v8 = v3;
  v4 = v3;
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

- (INGetIntentParameterDefaultValueForwardingAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];

  v7 = [(INGetIntentParameterDefaultValueForwardingAction *)self initWithIntent:v5 parameterName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INGetIntentParameterDefaultValueForwardingAction;
  v4 = a3;
  [(INIntentForwardingAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parameterName forKey:{@"parameterName", v5.receiver, v5.super_class}];
}

- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4
{
  parameterName = self->_parameterName;
  v7 = a4;
  v8 = a3;
  v10 = [(INIntentForwardingAction *)self intent];
  v9 = [(INGetIntentParameterDefaultValueForwardingAction *)self _completionHandlerWithActionCompletionHandler:v7];

  [v8 getIntentParameterDefaultValue:parameterName forIntent:v10 completionBlock:v9];
}

- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = INGetIntentParameterDefaultValueForwardingAction;
  if (![(INIntentForwardingAction *)&v13 executeRemotelyWithVendorRemote:v6 completionHandler:v7])
  {
    v8 = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(v8);

    parameterName = self->_parameterName;
    v11 = [(INGetIntentParameterDefaultValueForwardingAction *)self _completionHandlerWithActionCompletionHandler:v7];
    [v6 getIntentParameterDefaultValue:parameterName forIntent:v9 completionBlock:v11];
  }

  return 1;
}

- (INGetIntentParameterDefaultValueForwardingAction)initWithIntent:(id)a3 parameterName:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = INGetIntentParameterDefaultValueForwardingAction;
  v7 = [(INIntentForwardingAction *)&v11 initWithIntent:a3];
  if (v7)
  {
    v8 = [v6 copy];
    parameterName = v7->_parameterName;
    v7->_parameterName = v8;
  }

  return v7;
}

@end