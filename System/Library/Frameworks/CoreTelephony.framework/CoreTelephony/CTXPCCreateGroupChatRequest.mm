@interface CTXPCCreateGroupChatRequest
+ (id)allowedClassesForArguments;
- (CTLazuliGroupChatInformation)groupChatInfo;
- (CTLazuliOperationID)operationID;
- (CTXPCCreateGroupChatRequest)initWithContext:(id)context groupChatInfo:(id)info operationID:(id)d;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCCreateGroupChatRequest

- (CTXPCCreateGroupChatRequest)initWithContext:(id)context groupChatInfo:(id)info operationID:(id)d
{
  v17[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  infoCopy = info;
  dCopy = d;
  v16[0] = @"groupChatInfo";
  v16[1] = @"operationID";
  v17[0] = infoCopy;
  v17[1] = dCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15.receiver = self;
  v15.super_class = CTXPCCreateGroupChatRequest;
  v12 = [(CTXPCSubscriptionContextRequest *)&v15 initWithContext:contextCopy namedArguments:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (CTLazuliGroupChatInformation)groupChatInfo
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"groupChatInfo"];
  v4 = CTThrowingCastIfClass<CTLazuliGroupChatInformation>(v3);

  return v4;
}

- (CTLazuliOperationID)operationID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"operationID"];
  v4 = CTThrowingCastIfClass<CTLazuliOperationID>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  groupChatInfo = [(CTXPCCreateGroupChatRequest *)self groupChatInfo];
  operationID = [(CTXPCCreateGroupChatRequest *)self operationID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__CTXPCCreateGroupChatRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v11 = completionHandlerCopy;
  v13 = v11;
  [handlerCopy create:context groupChat:groupChatInfo withOperationID:operationID completion:v12];
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCCreateGroupChatRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end