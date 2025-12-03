@interface CTXPCSelectNetworkRequest
+ (id)allowedClassesForArguments;
- (CTXPCSelectNetworkRequest)initWithContext:(id)context network:(id)network;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSelectNetworkRequest

- (CTXPCSelectNetworkRequest)initWithContext:(id)context network:(id)network
{
  contextCopy = context;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{network, @"network", 0}];
  v10.receiver = self;
  v10.super_class = CTXPCSelectNetworkRequest;
  v8 = [(CTXPCSubscriptionContextRequest *)&v10 initWithContext:contextCopy namedArguments:v7];

  return v8;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"network"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  context = [(CTXPCSubscriptionContextRequest *)self context];
  if (v10)
  {
    v12 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__CTXPCSelectNetworkRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v13[3] = &unk_1E6A43CC8;
    v13[4] = completionHandlerCopy;
    [handlerCopy selectNetwork:context network:v10 completion:v13];
  }

  else
  {
    v12 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__CTXPCSelectNetworkRequest_performRequestWithHandler_completionHandler___block_invoke;
    v14[3] = &unk_1E6A43CC8;
    v14[4] = completionHandlerCopy;
    [handlerCopy automaticallySelectNetwork:context completion:v14];
  }
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSelectNetworkRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end