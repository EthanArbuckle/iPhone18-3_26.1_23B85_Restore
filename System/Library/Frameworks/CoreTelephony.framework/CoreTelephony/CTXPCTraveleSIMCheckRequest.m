@interface CTXPCTraveleSIMCheckRequest
+ (id)allowedClassesForArguments;
- (CTXPCTraveleSIMCheckRequest)initWithIccid:(id)a3;
- (id)iccid;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCTraveleSIMCheckRequest

- (CTXPCTraveleSIMCheckRequest)initWithIccid:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"iccid";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCTraveleSIMCheckRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCTraveleSIMCheckRequest *)self iccid];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CTXPCTraveleSIMCheckRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A46068;
  v9 = v7;
  v11 = v9;
  [v6 isTraveleSIM:v8 completion:v10];
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
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCTraveleSIMCheckRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)iccid
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"iccid"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end