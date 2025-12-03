@interface CTXPCAcknowledgeIncomingMessagesRequest
+ (id)allowedClassesForArguments;
- (CTLazuliMessageIDList)messageIDList;
- (CTXPCAcknowledgeIncomingMessagesRequest)initWithContext:(id)context messageIDList:(id)list;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCAcknowledgeIncomingMessagesRequest

- (CTXPCAcknowledgeIncomingMessagesRequest)initWithContext:(id)context messageIDList:(id)list
{
  v14[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  listCopy = list;
  v13 = @"messageIDList";
  v14[0] = listCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCAcknowledgeIncomingMessagesRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:contextCopy namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (CTLazuliMessageIDList)messageIDList
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageIDList"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageIDList>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  messageIDList = [(CTXPCAcknowledgeIncomingMessagesRequest *)self messageIDList];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__CTXPCAcknowledgeIncomingMessagesRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy acknowledgeIncomingMessages:context withMessageIDList:messageIDList completion:v11];
}

+ (id)allowedClassesForArguments
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCAcknowledgeIncomingMessagesRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end