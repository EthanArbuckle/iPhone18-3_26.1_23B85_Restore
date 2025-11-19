@interface CTXPCGetSignalStrengthInfoRequest
+ (id)allowedClassesForArguments;
- (int)requiredEntitlement;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetSignalStrengthInfoRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCMessage *)self namedArguments];
  v9 = [v8 objectForKey:@"public"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [(CTXPCSubscriptionContextRequest *)self descriptor];
    v13 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__CTXPCGetSignalStrengthInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
    v15[3] = &unk_1E6A488C8;
    v15[4] = v7;
    [v6 getPublicSignalStrength:v12 completion:v15];
  }

  else
  {
    v12 = [(CTXPCSubscriptionContextRequest *)self context];
    v13 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__CTXPCGetSignalStrengthInfoRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v14[3] = &unk_1E6A488C8;
    v14[4] = v7;
    [v6 getSignalStrengthInfo:v12 completion:v14];
  }
}

void __81__CTXPCGetSignalStrengthInfoRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = 0;
  if (v7 && !v5)
  {
    v6 = [[CTXPCGetSignalStrengthInfoResponse alloc] initWithSignalStrengthInfo:v7];
  }

  (*(*(a1 + 32) + 16))();
}

void __81__CTXPCGetSignalStrengthInfoRequest_performRequestWithHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = 0;
  if (v7 && !v5)
  {
    v6 = [[CTXPCGetSignalStrengthInfoResponse alloc] initWithSignalStrengthInfo:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (int)requiredEntitlement
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"public"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 BOOLValue];

  if (v5)
  {
    return 8;
  }

  else
  {
    return 3;
  }
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetSignalStrengthInfoRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end