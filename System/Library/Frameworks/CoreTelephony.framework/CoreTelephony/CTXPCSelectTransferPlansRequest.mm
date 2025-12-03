@interface CTXPCSelectTransferPlansRequest
+ (id)allowedClassesForArguments;
- (CTXPCSelectTransferPlansRequest)initWithPlans:(id)plans;
- (id)plans;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSelectTransferPlansRequest

- (CTXPCSelectTransferPlansRequest)initWithPlans:(id)plans
{
  plansCopy = plans;
  v5 = objc_opt_new();
  [v5 setObject:plansCopy forKeyedSubscript:@"plans"];
  v8.receiver = self;
  v8.super_class = CTXPCSelectTransferPlansRequest;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plans = [(CTXPCSelectTransferPlansRequest *)self plans];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__CTXPCSelectTransferPlansRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy selectTransferPlans:plans completion:v10];
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCSelectTransferPlansRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)plans
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"plans"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end