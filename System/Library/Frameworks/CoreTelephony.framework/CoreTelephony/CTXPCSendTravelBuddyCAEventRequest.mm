@interface CTXPCSendTravelBuddyCAEventRequest
+ (id)allowedClassesForArguments;
- (CTXPCSendTravelBuddyCAEventRequest)initWithAction:(id)a3 carrierName:(id)a4;
- (id)action;
- (id)carrierName;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSendTravelBuddyCAEventRequest

- (CTXPCSendTravelBuddyCAEventRequest)initWithAction:(id)a3 carrierName:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13[0] = @"action";
  v13[1] = @"carrier";
  v14[0] = v6;
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCSendTravelBuddyCAEventRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCSendTravelBuddyCAEventRequest *)self action];
  v9 = [(CTXPCSendTravelBuddyCAEventRequest *)self carrierName];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__CTXPCSendTravelBuddyCAEventRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = v7;
  v12 = v10;
  [v6 sendTravelBuddyCAEventWithCompletion:v8 carrierName:v9 completion:v11];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCSendTravelBuddyCAEventRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)action
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"action"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)carrierName
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"carrier"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end