@interface CTXPCSetBusinessMessagingStateRequest
+ (id)allowedClassesForArguments;
- (BOOL)shouldEnable;
- (int)requiredEntitlement;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSetBusinessMessagingStateRequest

- (BOOL)shouldEnable
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"shouldEnable"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);

  LOBYTE(namedArguments) = [v4 BOOLValue];
  return namedArguments;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if ([(CTXPCSetBusinessMessagingStateRequest *)self shouldEnable])
  {
    context = [(CTXPCSubscriptionContextRequest *)self context];
    v9 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__CTXPCSetBusinessMessagingStateRequest_performRequestWithHandler_completionHandler___block_invoke;
    v11[3] = &unk_1E6A43CC8;
    v11[4] = completionHandlerCopy;
    [handlerCopy enableBusinessMessaging:context completion:v11];
  }

  else
  {
    context = [(CTXPCSubscriptionContextRequest *)self context];
    v9 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__CTXPCSetBusinessMessagingStateRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v10[3] = &unk_1E6A43CC8;
    v10[4] = completionHandlerCopy;
    [handlerCopy disableBusinessMessaging:context completion:v10];
  }
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSetBusinessMessagingStateRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (int)requiredEntitlement
{
  if ([(CTXPCSetBusinessMessagingStateRequest *)self shouldEnable])
  {
    return 18;
  }

  else
  {
    return 19;
  }
}

@end