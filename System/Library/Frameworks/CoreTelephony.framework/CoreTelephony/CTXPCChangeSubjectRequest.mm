@interface CTXPCChangeSubjectRequest
+ (id)allowedClassesForArguments;
- (CTLazuliGroupChatSubject)subject;
- (CTLazuliGroupChatUri)groupChatURI;
- (CTLazuliOperationID)operationID;
- (CTXPCChangeSubjectRequest)initWithContext:(id)context groupChatURI:(id)i subject:(id)subject operationID:(id)d security:(id)security;
- (id)security;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCChangeSubjectRequest

- (CTXPCChangeSubjectRequest)initWithContext:(id)context groupChatURI:(id)i subject:(id)subject operationID:(id)d security:(id)security
{
  v25[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  iCopy = i;
  subjectCopy = subject;
  dCopy = d;
  securityCopy = security;
  v24[0] = @"groupChatURI";
  v24[1] = @"operationID";
  v25[0] = iCopy;
  v25[1] = dCopy;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v18 = [v17 mutableCopy];

  [v18 setObject:subjectCopy forKeyedSubscript:@"subject"];
  [v18 setObject:securityCopy forKeyedSubscript:@"security"];
  v19 = [v18 copy];
  v23.receiver = self;
  v23.super_class = CTXPCChangeSubjectRequest;
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

- (CTLazuliGroupChatSubject)subject
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"subject"];
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
  groupChatURI = [(CTXPCChangeSubjectRequest *)self groupChatURI];
  subject = [(CTXPCChangeSubjectRequest *)self subject];
  operationID = [(CTXPCChangeSubjectRequest *)self operationID];
  security = [(CTXPCChangeSubjectRequest *)self security];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__CTXPCChangeSubjectRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v13 = completionHandlerCopy;
  v15 = v13;
  [handlerCopy changeSubject:context forGroupChat:groupChatURI withNewSubject:subject withOperationID:operationID withSecurity:security completion:v14];
}

+ (id)allowedClassesForArguments
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCChangeSubjectRequest;
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