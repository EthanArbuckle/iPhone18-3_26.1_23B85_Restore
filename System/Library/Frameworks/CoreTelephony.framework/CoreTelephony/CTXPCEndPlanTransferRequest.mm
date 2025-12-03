@interface CTXPCEndPlanTransferRequest
+ (id)allowedClassesForArguments;
- (CTXPCEndPlanTransferRequest)initWithEndpoint:(unint64_t)endpoint;
- (unint64_t)endpoint;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCEndPlanTransferRequest

- (CTXPCEndPlanTransferRequest)initWithEndpoint:(unint64_t)endpoint
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"endpoint";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:endpoint];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCEndPlanTransferRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  endpoint = [(CTXPCEndPlanTransferRequest *)self endpoint];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CTXPCEndPlanTransferRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy endPlanTransferForEndPoint:endpoint completion:v10];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCEndPlanTransferRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (unint64_t)endpoint
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"endpoint"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end