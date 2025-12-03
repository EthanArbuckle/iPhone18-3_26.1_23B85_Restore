@interface CTXPCSendResponseForSuggestedReplyRequest
+ (id)allowedClassesForArguments;
- (CTLazuliChatBotResponseForSuggestedReply)response;
- (CTLazuliDestination)destination;
- (CTLazuliMessageID)messageID;
- (CTXPCSendResponseForSuggestedReplyRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d response:(id)response;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendResponseForSuggestedReplyRequest

- (CTXPCSendResponseForSuggestedReplyRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d response:(id)response
{
  v20[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  dCopy = d;
  responseCopy = response;
  v19[0] = @"destination";
  v19[1] = @"messageID";
  v20[0] = destinationCopy;
  v20[1] = dCopy;
  v19[2] = @"response";
  v20[2] = responseCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v18.receiver = self;
  v18.super_class = CTXPCSendResponseForSuggestedReplyRequest;
  v15 = [(CTXPCSubscriptionContextRequest *)&v18 initWithContext:contextCopy namedArguments:v14];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CTLazuliDestination)destination
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (CTLazuliMessageID)messageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (CTLazuliChatBotResponseForSuggestedReply)response
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"response"];
  v4 = CTThrowingCastIfClass<CTLazuliChatBotResponseForSuggestedReply>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  destination = [(CTXPCSendResponseForSuggestedReplyRequest *)self destination];
  messageID = [(CTXPCSendResponseForSuggestedReplyRequest *)self messageID];
  response = [(CTXPCSendResponseForSuggestedReplyRequest *)self response];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__CTXPCSendResponseForSuggestedReplyRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v12 = completionHandlerCopy;
  v14 = v12;
  [handlerCopy sendResponseForSuggestedReply:context to:destination withMessageID:messageID response:response completion:v13];
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCSendResponseForSuggestedReplyRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end