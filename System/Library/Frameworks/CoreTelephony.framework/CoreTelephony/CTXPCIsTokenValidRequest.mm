@interface CTXPCIsTokenValidRequest
+ (id)allowedClassesForArguments;
- (CTXPCIsTokenValidRequest)initWithToken:(id)token bundleID:(id)d;
- (id)bundleID;
- (id)token;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCIsTokenValidRequest

- (CTXPCIsTokenValidRequest)initWithToken:(id)token bundleID:(id)d
{
  v14[2] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  dCopy = d;
  v13[0] = @"token";
  v13[1] = @"bundleID";
  v14[0] = tokenCopy;
  v14[1] = dCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCIsTokenValidRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  token = [(CTXPCIsTokenValidRequest *)self token];
  bundleID = [(CTXPCIsTokenValidRequest *)self bundleID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__CTXPCIsTokenValidRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A460B8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy isTokenValid:token forBundleId:bundleID completion:v11];
}

void __72__CTXPCIsTokenValidRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCIsTokenValidRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)token
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"token"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)bundleID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"bundleID"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end