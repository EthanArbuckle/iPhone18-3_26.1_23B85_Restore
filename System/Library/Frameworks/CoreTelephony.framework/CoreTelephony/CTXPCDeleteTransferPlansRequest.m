@interface CTXPCDeleteTransferPlansRequest
+ (id)allowedClassesForArguments;
- (CTXPCDeleteTransferPlansRequest)initWithImei:(id)a3;
- (id)imei;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCDeleteTransferPlansRequest

- (CTXPCDeleteTransferPlansRequest)initWithImei:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"imei";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCDeleteTransferPlansRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCDeleteTransferPlansRequest *)self imei];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__CTXPCDeleteTransferPlansRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A45E38;
  v9 = v7;
  v11 = v9;
  [v6 deleteTransferPlansForImei:v8 completion:v10];
}

void __79__CTXPCDeleteTransferPlansRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v2 + 16))(v2);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCDeleteTransferPlansRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)imei
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"imei"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end