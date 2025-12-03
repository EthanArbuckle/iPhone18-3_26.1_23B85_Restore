@interface CTXPCSendTravelBuddyCAEventWithDetailsRequest
+ (id)allowedClassesForArguments;
- (CTXPCSendTravelBuddyCAEventWithDetailsRequest)initWithActions:(id)actions;
- (id)actions;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendTravelBuddyCAEventWithDetailsRequest

- (CTXPCSendTravelBuddyCAEventWithDetailsRequest)initWithActions:(id)actions
{
  v11[1] = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v10 = @"actions";
  v11[0] = actionsCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCSendTravelBuddyCAEventWithDetailsRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  actions = [(CTXPCSendTravelBuddyCAEventWithDetailsRequest *)self actions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__CTXPCSendTravelBuddyCAEventWithDetailsRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy sendTravelBuddyCAEventDetailsWithCompletion:actions completion:v10];
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCSendTravelBuddyCAEventWithDetailsRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)actions
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"actions"];
  v4 = CTThrowingCastIfClass<NSDictionary>(v3);

  return v4;
}

@end