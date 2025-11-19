@interface CTXPCAddPlanWithOnDeviceActivationRequest
+ (id)allowedClassesForArguments;
- (CTXPCAddPlanWithOnDeviceActivationRequest)initWithRequest:(id)a3;
- (id)request;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCAddPlanWithOnDeviceActivationRequest

- (CTXPCAddPlanWithOnDeviceActivationRequest)initWithRequest:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"request";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCAddPlanWithOnDeviceActivationRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCAddPlanWithOnDeviceActivationRequest *)self request];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__CTXPCAddPlanWithOnDeviceActivationRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A45E60;
  v9 = v7;
  v11 = v9;
  [v6 addPlanWith:v8 completionHandler:v10];
}

void __89__CTXPCAddPlanWithOnDeviceActivationRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [[CTXPCAddPlanWithOnDeviceActivationResponse alloc] initWithResult:a2];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCAddPlanWithOnDeviceActivationRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)request
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"request"];
  v4 = CTThrowingCastIfClass<CTCellularPlanProvisioningOnDeviceActivationRequest>(v3);

  return v4;
}

@end