@interface CTXPCDeleteTransferPlansRequest
+ (id)allowedClassesForArguments;
- (CTXPCDeleteTransferPlansRequest)initWithImei:(id)imei;
- (id)imei;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCDeleteTransferPlansRequest

- (CTXPCDeleteTransferPlansRequest)initWithImei:(id)imei
{
  v11[1] = *MEMORY[0x1E69E9840];
  imeiCopy = imei;
  v10 = @"imei";
  v11[0] = imeiCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCDeleteTransferPlansRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  imei = [(CTXPCDeleteTransferPlansRequest *)self imei];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__CTXPCDeleteTransferPlansRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A45E38;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy deleteTransferPlansForImei:imei completion:v10];
}

void __79__CTXPCDeleteTransferPlansRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v2 + 16))(v2);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCDeleteTransferPlansRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)imei
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"imei"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end