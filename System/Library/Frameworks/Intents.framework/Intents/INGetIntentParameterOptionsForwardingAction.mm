@interface INGetIntentParameterOptionsForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4;
- (INGetIntentParameterOptionsForwardingAction)initWithCoder:(id)a3;
- (INGetIntentParameterOptionsForwardingAction)initWithIntent:(id)a3 parameterName:(id)a4 searchTerm:(id)a5;
- (id)_completionHandlerWithActionCompletionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4;
@end

@implementation INGetIntentParameterOptionsForwardingAction

- (id)_completionHandlerWithActionCompletionHandler:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__INGetIntentParameterOptionsForwardingAction__completionHandlerWithActionCompletionHandler___block_invoke;
  v7[3] = &unk_1E7287288;
  v8 = v3;
  v4 = v3;
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

- (INGetIntentParameterOptionsForwardingAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchTerm"];

  v8 = [(INGetIntentParameterOptionsForwardingAction *)self initWithIntent:v5 parameterName:v6 searchTerm:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INGetIntentParameterOptionsForwardingAction;
  v4 = a3;
  [(INIntentForwardingAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parameterName forKey:{@"parameterName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_searchTerm forKey:@"searchTerm"];
}

- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4
{
  parameterName = self->_parameterName;
  v7 = a4;
  v8 = a3;
  v11 = [(INIntentForwardingAction *)self intent];
  v9 = [(INGetIntentParameterOptionsForwardingAction *)self searchTerm];
  v10 = [(INGetIntentParameterOptionsForwardingAction *)self _completionHandlerWithActionCompletionHandler:v7];

  [v8 getIntentParameterOptions:parameterName forIntent:v11 searchTerm:v9 completionBlock:v10];
}

- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = INGetIntentParameterOptionsForwardingAction;
  if (![(INIntentForwardingAction *)&v15 executeRemotelyWithVendorRemote:v6 completionHandler:v7])
  {
    v8 = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(v8);

    v10 = objc_opt_respondsToSelector();
    parameterName = self->_parameterName;
    if (v10)
    {
      v12 = [(INGetIntentParameterOptionsForwardingAction *)self searchTerm];
      v13 = [(INGetIntentParameterOptionsForwardingAction *)self _completionHandlerWithActionCompletionHandler:v7];
      [v6 getIntentParameterOptions:parameterName forIntent:v9 searchTerm:v12 completionBlock:v13];
    }

    else
    {
      v12 = [(INGetIntentParameterOptionsForwardingAction *)self _completionHandlerWithActionCompletionHandler:v7];
      [v6 getIntentParameterOptions:parameterName forIntent:v9 completionBlock:v12];
    }
  }

  return 1;
}

- (INGetIntentParameterOptionsForwardingAction)initWithIntent:(id)a3 parameterName:(id)a4 searchTerm:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = INGetIntentParameterOptionsForwardingAction;
  v10 = [(INIntentForwardingAction *)&v16 initWithIntent:a3];
  if (v10)
  {
    v11 = [v8 copy];
    parameterName = v10->_parameterName;
    v10->_parameterName = v11;

    v13 = [v9 copy];
    searchTerm = v10->_searchTerm;
    v10->_searchTerm = v13;
  }

  return v10;
}

@end