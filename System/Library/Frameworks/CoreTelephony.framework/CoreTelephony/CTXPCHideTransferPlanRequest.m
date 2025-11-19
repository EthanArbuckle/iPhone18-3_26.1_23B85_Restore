@interface CTXPCHideTransferPlanRequest
+ (id)allowedClassesForArguments;
- (CTXPCHideTransferPlanRequest)initWithPlan:(id)a3 fromDevice:(id)a4;
- (id)deviceIdentifier;
- (id)plan;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCHideTransferPlanRequest

- (CTXPCHideTransferPlanRequest)initWithPlan:(id)a3 fromDevice:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13[0] = @"plan";
  v13[1] = @"deviceID";
  v14[0] = v6;
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCHideTransferPlanRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCHideTransferPlanRequest *)self plan];
  v9 = [(CTXPCHideTransferPlanRequest *)self deviceIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CTXPCHideTransferPlanRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A460B8;
  v10 = v7;
  v12 = v10;
  [v6 hideTransferCellularPlan:v8 fromDevice:v9 completion:v11];
}

void __76__CTXPCHideTransferPlanRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v5 + 16))(v5, v6, v7);
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCHideTransferPlanRequest;
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
  v3 = [v2 objectForKey:@"plan"];
  v4 = CTThrowingCastIfClass<CTPlan>(v3);

  return v4;
}

- (id)deviceIdentifier
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"deviceID"];
  v4 = CTThrowingCastIfClass<CTDeviceIdentifier>(v3);

  return v4;
}

@end