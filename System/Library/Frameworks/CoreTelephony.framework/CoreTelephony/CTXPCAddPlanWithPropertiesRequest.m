@interface CTXPCAddPlanWithPropertiesRequest
+ (id)allowedClassesForArguments;
- (CTXPCAddPlanWithPropertiesRequest)initWithRequest:(id)a3 appName:(id)a4 appType:(unint64_t)a5 properties:(id)a6;
- (id)appName;
- (id)properties;
- (id)request;
- (unint64_t)appType;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCAddPlanWithPropertiesRequest

- (CTXPCAddPlanWithPropertiesRequest)initWithRequest:(id)a3 appName:(id)a4 appType:(unint64_t)a5 properties:(id)a6
{
  v20[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19[0] = @"request";
  v19[1] = @"appName";
  v20[0] = v10;
  v20[1] = v11;
  v19[2] = @"appType";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v19[3] = @"properties";
  v20[2] = v13;
  v20[3] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v18.receiver = self;
  v18.super_class = CTXPCAddPlanWithPropertiesRequest;
  v15 = [(CTXPCMessage *)&v18 initWithNamedArguments:v14];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCAddPlanWithPropertiesRequest *)self request];
  v9 = [(CTXPCAddPlanWithPropertiesRequest *)self appName];
  v10 = [(CTXPCAddPlanWithPropertiesRequest *)self appType];
  v11 = [(CTXPCAddPlanWithPropertiesRequest *)self properties];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CTXPCAddPlanWithPropertiesRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A45E60;
  v12 = v7;
  v14 = v12;
  [v6 addPlanWith:v8 appName:v9 appType:v10 properties:v11 completionHandler:v13];
}

void __81__CTXPCAddPlanWithPropertiesRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [[CTXPCAddPlanWithProvisioningResponse alloc] initWithResult:a2];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCAddPlanWithPropertiesRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)request
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"request"];
  v4 = CTThrowingCastIfClass<CTCellularPlanProvisioningRequest>(v3);

  return v4;
}

- (id)appName
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"appName"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (unint64_t)appType
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"appType"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (id)properties
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"properties"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end