@interface CTXPCStartPendingPlanInstallFlowRequest
+ (id)allowedClassesForArguments;
- (CTXPCStartPendingPlanInstallFlowRequest)initWithPlan:(id)plan carrierName:(id)name;
- (id)carrierName;
- (id)plan;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCStartPendingPlanInstallFlowRequest

- (CTXPCStartPendingPlanInstallFlowRequest)initWithPlan:(id)plan carrierName:(id)name
{
  v14[2] = *MEMORY[0x1E69E9840];
  planCopy = plan;
  nameCopy = name;
  v13[0] = @"plan";
  v13[1] = @"carrier";
  v14[0] = planCopy;
  v14[1] = nameCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCStartPendingPlanInstallFlowRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plan = [(CTXPCStartPendingPlanInstallFlowRequest *)self plan];
  carrierName = [(CTXPCStartPendingPlanInstallFlowRequest *)self carrierName];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__CTXPCStartPendingPlanInstallFlowRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A45E60;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy startPendingPlanInstallationForPlan:plan carrierName:carrierName completionHandler:v11];
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
  v7.receiver = self;
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
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"plan"];
  v4 = CTThrowingCastIfClass<CTPlan>(v3);

  return v4;
}

- (id)carrierName
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"carrier"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end