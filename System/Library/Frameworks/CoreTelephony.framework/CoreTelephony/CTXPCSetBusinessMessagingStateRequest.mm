@interface CTXPCSetBusinessMessagingStateRequest
+ (id)allowedClassesForArguments;
- (BOOL)shouldEnable;
- (int)requiredEntitlement;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSetBusinessMessagingStateRequest

- (BOOL)shouldEnable
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"shouldEnable"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);

  LOBYTE(v2) = [v4 BOOLValue];
  return v2;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CTXPCSetBusinessMessagingStateRequest *)self shouldEnable])
  {
    v8 = [(CTXPCSubscriptionContextRequest *)self context];
    v9 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__CTXPCSetBusinessMessagingStateRequest_performRequestWithHandler_completionHandler___block_invoke;
    v11[3] = &unk_1E6A43CC8;
    v11[4] = v7;
    [v6 enableBusinessMessaging:v8 completion:v11];
  }

  else
  {
    v8 = [(CTXPCSubscriptionContextRequest *)self context];
    v9 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__CTXPCSetBusinessMessagingStateRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v10[3] = &unk_1E6A43CC8;
    v10[4] = v7;
    [v6 disableBusinessMessaging:v8 completion:v10];
  }
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
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