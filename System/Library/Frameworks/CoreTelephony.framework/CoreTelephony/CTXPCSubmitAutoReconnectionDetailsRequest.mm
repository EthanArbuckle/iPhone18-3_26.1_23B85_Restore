@interface CTXPCSubmitAutoReconnectionDetailsRequest
+ (id)allowedClassesForArguments;
- (CTXPCSubmitAutoReconnectionDetailsRequest)initWithDetails:(id)details;
- (id)details;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSubmitAutoReconnectionDetailsRequest

- (CTXPCSubmitAutoReconnectionDetailsRequest)initWithDetails:(id)details
{
  v11[1] = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  v10 = @"details";
  v11[0] = detailsCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCSubmitAutoReconnectionDetailsRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  details = [(CTXPCSubmitAutoReconnectionDetailsRequest *)self details];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__CTXPCSubmitAutoReconnectionDetailsRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy submitAutoReconnectionDetails:details completion:v10];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSubmitAutoReconnectionDetailsRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)details
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"details"];
  v4 = CTThrowingCastIfClass<CTAutoReconnectionDetails>(v3);

  return v4;
}

@end