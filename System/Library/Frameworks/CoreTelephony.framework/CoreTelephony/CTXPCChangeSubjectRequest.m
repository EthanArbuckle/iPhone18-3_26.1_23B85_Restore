@interface CTXPCChangeSubjectRequest
+ (id)allowedClassesForArguments;
- (CTLazuliGroupChatSubject)subject;
- (CTLazuliGroupChatUri)groupChatURI;
- (CTLazuliOperationID)operationID;
- (CTXPCChangeSubjectRequest)initWithContext:(id)a3 groupChatURI:(id)a4 subject:(id)a5 operationID:(id)a6 security:(id)a7;
- (id)security;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCChangeSubjectRequest

- (CTXPCChangeSubjectRequest)initWithContext:(id)a3 groupChatURI:(id)a4 subject:(id)a5 operationID:(id)a6 security:(id)a7
{
  v25[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24[0] = @"groupChatURI";
  v24[1] = @"operationID";
  v25[0] = v13;
  v25[1] = v15;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v18 = [v17 mutableCopy];

  [v18 setObject:v14 forKeyedSubscript:@"subject"];
  [v18 setObject:v16 forKeyedSubscript:@"security"];
  v19 = [v18 copy];
  v23.receiver = self;
  v23.super_class = CTXPCChangeSubjectRequest;
  v20 = [(CTXPCSubscriptionContextRequest *)&v23 initWithContext:v12 namedArguments:v19];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (CTLazuliGroupChatUri)groupChatURI
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"groupChatURI"];
  v4 = CTThrowingCastIfClass<CTLazuliGroupChatUri>(v3);

  return v4;
}

- (CTLazuliGroupChatSubject)subject
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"subject"];
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"operationID"];
  v4 = CTThrowingCastIfClass<CTLazuliOperationID>(v3);

  return v4;
}

- (id)security
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"security"];
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

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCSubscriptionContextRequest *)self context];
  v9 = [(CTXPCChangeSubjectRequest *)self groupChatURI];
  v10 = [(CTXPCChangeSubjectRequest *)self subject];
  v11 = [(CTXPCChangeSubjectRequest *)self operationID];
  v12 = [(CTXPCChangeSubjectRequest *)self security];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__CTXPCChangeSubjectRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v13 = v7;
  v15 = v13;
  [v6 changeSubject:v8 forGroupChat:v9 withNewSubject:v10 withOperationID:v11 withSecurity:v12 completion:v14];
}

+ (id)allowedClassesForArguments
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
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