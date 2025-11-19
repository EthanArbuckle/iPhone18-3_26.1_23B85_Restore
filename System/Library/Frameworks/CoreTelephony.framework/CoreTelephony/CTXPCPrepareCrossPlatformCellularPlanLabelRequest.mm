@interface CTXPCPrepareCrossPlatformCellularPlanLabelRequest
+ (id)allowedClassesForArguments;
- (CTXPCPrepareCrossPlatformCellularPlanLabelRequest)initWithPlanLabels:(id)a3;
- (id)planLabels;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCPrepareCrossPlatformCellularPlanLabelRequest

- (CTXPCPrepareCrossPlatformCellularPlanLabelRequest)initWithPlanLabels:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"planLabels";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCPrepareCrossPlatformCellularPlanLabelRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCPrepareCrossPlatformCellularPlanLabelRequest *)self planLabels];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__CTXPCPrepareCrossPlatformCellularPlanLabelRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A46180;
  v9 = v7;
  v11 = v9;
  [v6 prepareCrossPlatformCellularPlanLabel:v8 completion:v10];
}

void __97__CTXPCPrepareCrossPlatformCellularPlanLabelRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [[CTXPCSubscriptionInfoMessage alloc] initWithInfo:v8];
  (*(v6 + 16))(v6, v7, v5);
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCPrepareCrossPlatformCellularPlanLabelRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)planLabels
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"planLabels"];
  v4 = CTThrowingCastIfClass<NSArray<CTCellularPlanCrossPlatformLabel *>>(v3);

  return v4;
}

@end