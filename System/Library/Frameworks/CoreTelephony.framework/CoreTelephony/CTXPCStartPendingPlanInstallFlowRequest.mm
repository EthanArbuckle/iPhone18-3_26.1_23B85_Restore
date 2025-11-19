@interface CTXPCStartPendingPlanInstallFlowRequest
+ (id)allowedClassesForArguments;
- (CTXPCStartPendingPlanInstallFlowRequest)initWithPlan:(id)a3 carrierName:(id)a4;
- (id)carrierName;
- (id)plan;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCStartPendingPlanInstallFlowRequest

- (CTXPCStartPendingPlanInstallFlowRequest)initWithPlan:(id)a3 carrierName:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13[0] = @"plan";
  v13[1] = @"carrier";
  v14[0] = v6;
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCStartPendingPlanInstallFlowRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCStartPendingPlanInstallFlowRequest *)self plan];
  v9 = [(CTXPCStartPendingPlanInstallFlowRequest *)self carrierName];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__CTXPCStartPendingPlanInstallFlowRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A45E60;
  v10 = v7;
  v12 = v10;
  [v6 startPendingPlanInstallationForPlan:v8 carrierName:v9 completionHandler:v11];
}

void __87__CTXPCStartPendingPlanInstallFlowRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [[CTXPCTriggerPendingPlanInstallFlowResponse alloc] initWithResult:a2];
  (*(v5 + 16))(v5, v6, v7);
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCStartPendingPlanInstallFlowRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)plan
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"plan"];
  v4 = CTThrowingCastIfClass<CTPlan>(v3);

  return v4;
}

- (id)carrierName
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"carrier"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end