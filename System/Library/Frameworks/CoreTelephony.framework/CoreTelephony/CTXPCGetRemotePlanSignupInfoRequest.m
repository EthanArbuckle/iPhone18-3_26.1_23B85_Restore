@interface CTXPCGetRemotePlanSignupInfoRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetRemotePlanSignupInfoRequest)initWithContext:(id)a3 userConsent:(int64_t)a4;
- (int64_t)userConsent;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetRemotePlanSignupInfoRequest

- (CTXPCGetRemotePlanSignupInfoRequest)initWithContext:(id)a3 userConsent:(int64_t)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = @"userConsent";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCGetRemotePlanSignupInfoRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:v6 namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCSubscriptionContextRequest *)self context];
  v9 = [(CTXPCGetRemotePlanSignupInfoRequest *)self userConsent];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__CTXPCGetRemotePlanSignupInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A46130;
  v10 = v7;
  v12 = v10;
  [v6 remotePlanSignupInfoFor:v8 userConsent:v9 completion:v11];
}

void __83__CTXPCGetRemotePlanSignupInfoRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = [[CTXPCWebsheetInfoResponse alloc] initWithURL:v11 postdata:v7];
  (*(v9 + 16))(v9, v10, v8);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetRemotePlanSignupInfoRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (int64_t)userConsent
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"userConsent"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 integerValue];

  return v5;
}

@end