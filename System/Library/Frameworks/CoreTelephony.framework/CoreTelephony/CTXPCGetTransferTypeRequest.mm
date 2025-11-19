@interface CTXPCGetTransferTypeRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetTransferTypeRequest)initWithPlan:(id)a3 remoteEid:(id)a4;
- (id)plan;
- (id)remoteEid;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetTransferTypeRequest

- (CTXPCGetTransferTypeRequest)initWithPlan:(id)a3 remoteEid:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13[0] = @"plan";
  v13[1] = @"remoteEID";
  v14[0] = v6;
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCGetTransferTypeRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCGetTransferTypeRequest *)self plan];
  v9 = [(CTXPCGetTransferTypeRequest *)self remoteEid];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CTXPCGetTransferTypeRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A45F50;
  v10 = v7;
  v12 = v10;
  [v6 getTransferType:v8 remoteEid:v9 completion:v11];
}

void __75__CTXPCGetTransferTypeRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[CTXPCGetTransferTypeResponse alloc] initWithCapability:a2];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCGetTransferTypeRequest;
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

- (id)remoteEid
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"remoteEID"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end