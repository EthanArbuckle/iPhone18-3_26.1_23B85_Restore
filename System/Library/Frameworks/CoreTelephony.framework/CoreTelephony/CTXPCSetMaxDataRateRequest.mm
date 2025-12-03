@interface CTXPCSetMaxDataRateRequest
+ (id)allowedClassesForArguments;
- (CTXPCSetMaxDataRateRequest)initWithContext:(id)context rate:(int64_t)rate;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSetMaxDataRateRequest

- (CTXPCSetMaxDataRateRequest)initWithContext:(id)context rate:(int64_t)rate
{
  v14[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v13 = @"maxDataRate";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:rate];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCSetMaxDataRateRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:contextCopy namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"maxDataRate"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  integerValue = [v10 integerValue];

  context = [(CTXPCSubscriptionContextRequest *)self context];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CTXPCSetMaxDataRateRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v13 = completionHandlerCopy;
  v15 = v13;
  [handlerCopy setMaxDataRate:context rate:integerValue completion:v14];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSetMaxDataRateRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end