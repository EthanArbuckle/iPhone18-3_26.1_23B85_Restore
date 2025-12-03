@interface CTXPCTravelInfoRequest
+ (id)allowedClassesForArguments;
- (CTXPCTravelInfoRequest)initWithIccid:(id)iccid;
- (id)iccid;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCTravelInfoRequest

- (CTXPCTravelInfoRequest)initWithIccid:(id)iccid
{
  v11[1] = *MEMORY[0x1E69E9840];
  iccidCopy = iccid;
  v10 = @"iccid";
  v11[0] = iccidCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCTravelInfoRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  iccid = [(CTXPCTravelInfoRequest *)self iccid];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CTXPCTravelInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A46090;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy getTravelInfoForIccid:iccid completion:v10];
}

void __70__CTXPCTravelInfoRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [[CTXPCTravelInfoResponse alloc] initWithDetails:v8];
  (*(v6 + 16))(v6, v7, v5);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCTravelInfoRequest;
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