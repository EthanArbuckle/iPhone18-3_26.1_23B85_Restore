@interface CTXPCAddQRCodePlanRequest
+ (id)allowedClassesForArguments;
- (CTXPCAddQRCodePlanRequest)initWithRequest:(id)a3 appName:(id)a4 appType:(unint64_t)a5;
- (id)appName;
- (id)request;
- (unint64_t)appType;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCAddQRCodePlanRequest

- (CTXPCAddQRCodePlanRequest)initWithRequest:(id)a3 appName:(id)a4 appType:(unint64_t)a5
{
  v17[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v16[0] = @"request";
  v16[1] = @"appName";
  v17[0] = v8;
  v17[1] = v9;
  v16[2] = @"appType";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v17[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v15.receiver = self;
  v15.super_class = CTXPCAddQRCodePlanRequest;
  v12 = [(CTXPCMessage *)&v15 initWithNamedArguments:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCAddQRCodePlanRequest *)self request];
  v9 = [(CTXPCAddQRCodePlanRequest *)self appName];
  v10 = [(CTXPCAddQRCodePlanRequest *)self appType];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CTXPCAddQRCodePlanRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A45E60;
  v11 = v7;
  v13 = v11;
  [v6 addQRCodePlanWith:v8 appName:v9 appType:v10 completionHandler:v12];
}

void __73__CTXPCAddQRCodePlanRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [[CTXPCAddQRCodePlanResponse alloc] initWithResult:a2];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCAddQRCodePlanRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
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

@end