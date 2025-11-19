@interface CTXPCSetMaxDataRateRequest
+ (id)allowedClassesForArguments;
- (CTXPCSetMaxDataRateRequest)initWithContext:(id)a3 rate:(int64_t)a4;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSetMaxDataRateRequest

- (CTXPCSetMaxDataRateRequest)initWithContext:(id)a3 rate:(int64_t)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = @"maxDataRate";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCSetMaxDataRateRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:v6 namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCMessage *)self namedArguments];
  v9 = [v8 objectForKey:@"maxDataRate"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  v11 = [v10 integerValue];

  v12 = [(CTXPCSubscriptionContextRequest *)self context];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CTXPCSetMaxDataRateRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v13 = v7;
  v15 = v13;
  [v6 setMaxDataRate:v12 rate:v11 completion:v14];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCSetMaxDataRateRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end