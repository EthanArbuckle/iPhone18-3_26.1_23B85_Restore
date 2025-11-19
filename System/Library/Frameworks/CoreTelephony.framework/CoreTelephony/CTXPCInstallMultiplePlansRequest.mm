@interface CTXPCInstallMultiplePlansRequest
+ (id)allowedClassesForArguments;
- (CTXPCInstallMultiplePlansRequest)initWithPlans:(id)a3;
- (id)plans;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCInstallMultiplePlansRequest

- (CTXPCInstallMultiplePlansRequest)initWithPlans:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"plans";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCInstallMultiplePlansRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCInstallMultiplePlansRequest *)self plans];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__CTXPCInstallMultiplePlansRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = v7;
  v11 = v9;
  [v6 installMultiplePlans:v8 completionHandler:v10];
}

+ (id)allowedClassesForArguments
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCInstallMultiplePlansRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)plans
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"plans"];
  v4 = CTThrowingCastIfClass<CTPlanList>(v3);

  return v4;
}

@end