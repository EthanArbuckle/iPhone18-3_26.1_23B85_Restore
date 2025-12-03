@interface CTXPCGenerateTokenForContextRequest
+ (id)allowedClassesForArguments;
- (CTXPCGenerateTokenForContextRequest)initWithContext:(id)context bundleID:(id)d;
- (id)bundleID;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGenerateTokenForContextRequest

- (CTXPCGenerateTokenForContextRequest)initWithContext:(id)context bundleID:(id)d
{
  v14[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  v13 = @"bundleID";
  v14[0] = dCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCGenerateTokenForContextRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:contextCopy namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  bundleID = [(CTXPCGenerateTokenForContextRequest *)self bundleID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__CTXPCGenerateTokenForContextRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy generateTokenForContext:context bundleID:bundleID completion:v11];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGenerateTokenForContextRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)bundleID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"bundleID"];
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