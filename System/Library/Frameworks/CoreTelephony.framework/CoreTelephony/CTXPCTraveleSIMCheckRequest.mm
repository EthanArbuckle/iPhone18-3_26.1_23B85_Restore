@interface CTXPCTraveleSIMCheckRequest
+ (id)allowedClassesForArguments;
- (CTXPCTraveleSIMCheckRequest)initWithIccid:(id)iccid;
- (id)iccid;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCTraveleSIMCheckRequest

- (CTXPCTraveleSIMCheckRequest)initWithIccid:(id)iccid
{
  v11[1] = *MEMORY[0x1E69E9840];
  iccidCopy = iccid;
  v10 = @"iccid";
  v11[0] = iccidCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCTraveleSIMCheckRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  iccid = [(CTXPCTraveleSIMCheckRequest *)self iccid];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CTXPCTraveleSIMCheckRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A46068;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy isTraveleSIM:iccid completion:v10];
}

void __75__CTXPCTraveleSIMCheckRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v7 = *(a1 + 32);
  v8 = [[CTXPCTraveleSIMCheckResponse alloc] initWithResults:a2 travelStatus:a3];
  (*(v7 + 16))(v7, v8, v9);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCTraveleSIMCheckRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)iccid
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"iccid"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end