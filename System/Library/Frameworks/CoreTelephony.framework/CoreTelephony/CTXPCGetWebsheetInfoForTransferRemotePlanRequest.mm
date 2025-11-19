@interface CTXPCGetWebsheetInfoForTransferRemotePlanRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetWebsheetInfoForTransferRemotePlanRequest)initWithPlan:(id)a3;
- (id)plan;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetWebsheetInfoForTransferRemotePlanRequest

- (CTXPCGetWebsheetInfoForTransferRemotePlanRequest)initWithPlan:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"plan";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetWebsheetInfoForTransferRemotePlanRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCGetWebsheetInfoForTransferRemotePlanRequest *)self plan];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__CTXPCGetWebsheetInfoForTransferRemotePlanRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A46108;
  v9 = v7;
  v11 = v9;
  [v6 transferRemotePlan:v8 completion:v10];
}

void __96__CTXPCGetWebsheetInfoForTransferRemotePlanRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = [[CTXPCWebsheetInfoResponse alloc] initWithURLString:v11 postdata:v7];
  (*(v9 + 16))(v9, v10, v8);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetWebsheetInfoForTransferRemotePlanRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)plan
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"plan"];
  v4 = CTThrowingCastIfClass<CTPlan>(v3);

  return v4;
}

@end