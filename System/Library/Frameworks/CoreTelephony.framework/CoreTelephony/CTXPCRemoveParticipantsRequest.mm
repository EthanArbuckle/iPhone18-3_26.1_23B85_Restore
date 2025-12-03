@interface CTXPCRemoveParticipantsRequest
+ (id)allowedClassesForArguments;
- (CTLazuliGroupChatParticipantList)participants;
- (CTLazuliGroupChatUri)groupChatURI;
- (CTLazuliOperationID)operationID;
- (CTXPCRemoveParticipantsRequest)initWithContext:(id)context groupChatURI:(id)i participants:(id)participants operationID:(id)d security:(id)security;
- (id)security;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCRemoveParticipantsRequest

- (CTXPCRemoveParticipantsRequest)initWithContext:(id)context groupChatURI:(id)i participants:(id)participants operationID:(id)d security:(id)security
{
  v25[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  iCopy = i;
  participantsCopy = participants;
  dCopy = d;
  securityCopy = security;
  v24[0] = @"groupChatURI";
  v24[1] = @"participants";
  v25[0] = iCopy;
  v25[1] = participantsCopy;
  v24[2] = @"operationID";
  v25[2] = dCopy;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v19 = objc_claimAutoreleasedReturnValue();
  v23.receiver = self;
  v23.super_class = CTXPCRemoveParticipantsRequest;
  v20 = [(CTXPCSubscriptionContextRequest *)&v23 initWithContext:contextCopy namedArguments:v19];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (CTLazuliGroupChatUri)groupChatURI
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"groupChatURI"];
  v4 = CTThrowingCastIfClass<CTLazuliGroupChatUri>(v3);

  return v4;
}

- (CTLazuliGroupChatParticipantList)participants
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"participants"];
  v4 = CTThrowingCastIfClass<CTLazuliGroupChatParticipantList>(v3);

  return v4;
}

- (CTLazuliOperationID)operationID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"operationID"];
  v4 = CTThrowingCastIfClass<CTLazuliOperationID>(v3);

  return v4;
}

- (id)security
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"security"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  groupChatURI = [(CTXPCRemoveParticipantsRequest *)self groupChatURI];
  participants = [(CTXPCRemoveParticipantsRequest *)self participants];
  operationID = [(CTXPCRemoveParticipantsRequest *)self operationID];
  security = [(CTXPCRemoveParticipantsRequest *)self security];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__CTXPCRemoveParticipantsRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v13 = completionHandlerCopy;
  v15 = v13;
  [handlerCopy removeParticipants:context fromGroupChat:groupChatURI withParticipantsToRemove:participants withOperationID:operationID withSecurity:security completion:v14];
}

+ (id)allowedClassesForArguments
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCRemoveParticipantsRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end