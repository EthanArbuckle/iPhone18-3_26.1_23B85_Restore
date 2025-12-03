@interface CTXPCGetTokenRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetTokenRequest)initWithBundleID:(id)d;
- (id)bundleID;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetTokenRequest

- (CTXPCGetTokenRequest)initWithBundleID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v10 = @"bundleID";
  v11[0] = dCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetTokenRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  bundleID = [(CTXPCGetTokenRequest *)self bundleID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CTXPCGetTokenRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A45F28;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy getTokenForBundleID:bundleID completion:v10];
}

void __68__CTXPCGetTokenRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[CTXPCGetTokenResponse alloc] initWithToken:v7];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetTokenRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)bundleID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"bundleID"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end