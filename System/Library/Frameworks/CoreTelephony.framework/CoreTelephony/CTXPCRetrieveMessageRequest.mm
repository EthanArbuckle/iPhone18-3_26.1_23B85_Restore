@interface CTXPCRetrieveMessageRequest
+ (id)allowedClassesForArguments;
- (CTLazuliMessageID)messageID;
- (CTXPCRetrieveMessageRequest)initWithContext:(id)context messageID:(id)d;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCRetrieveMessageRequest

- (CTXPCRetrieveMessageRequest)initWithContext:(id)context messageID:(id)d
{
  v14[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  v13 = @"messageID";
  v14[0] = dCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCRetrieveMessageRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:contextCopy namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (CTLazuliMessageID)messageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  messageID = [(CTXPCRetrieveMessageRequest *)self messageID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CTXPCRetrieveMessageRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A461D0;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy retrieveMessage:context withMessageID:messageID completion:v11];
}

void __75__CTXPCRetrieveMessageRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [[CTXPCRetrieveMessageResponse alloc] initWithMessageEnvelope:v7];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCRetrieveMessageRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end