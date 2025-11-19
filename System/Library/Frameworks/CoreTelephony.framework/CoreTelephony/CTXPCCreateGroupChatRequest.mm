@interface CTXPCCreateGroupChatRequest
+ (id)allowedClassesForArguments;
- (CTLazuliGroupChatInformation)groupChatInfo;
- (CTLazuliOperationID)operationID;
- (CTXPCCreateGroupChatRequest)initWithContext:(id)a3 groupChatInfo:(id)a4 operationID:(id)a5;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCCreateGroupChatRequest

- (CTXPCCreateGroupChatRequest)initWithContext:(id)a3 groupChatInfo:(id)a4 operationID:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = @"groupChatInfo";
  v16[1] = @"operationID";
  v17[0] = v9;
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15.receiver = self;
  v15.super_class = CTXPCCreateGroupChatRequest;
  v12 = [(CTXPCSubscriptionContextRequest *)&v15 initWithContext:v8 namedArguments:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (CTLazuliGroupChatInformation)groupChatInfo
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"groupChatInfo"];
  v4 = CTThrowingCastIfClass<CTLazuliGroupChatInformation>(v3);

  return v4;
}

- (CTLazuliOperationID)operationID
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"operationID"];
  v4 = CTThrowingCastIfClass<CTLazuliOperationID>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCSubscriptionContextRequest *)self context];
  v9 = [(CTXPCCreateGroupChatRequest *)self groupChatInfo];
  v10 = [(CTXPCCreateGroupChatRequest *)self operationID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__CTXPCCreateGroupChatRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v11 = v7;
  v13 = v11;
  [v6 create:v8 groupChat:v9 withOperationID:v10 completion:v12];
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
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