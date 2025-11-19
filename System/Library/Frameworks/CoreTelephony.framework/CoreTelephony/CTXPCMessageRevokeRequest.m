@interface CTXPCMessageRevokeRequest
+ (id)allowedClassesForArguments;
- (CTLazuliMessageID)messageID;
- (CTLazuliMessageRevokeData)revokeData;
- (CTXPCMessageRevokeRequest)initWithContext:(id)a3 revokeData:(id)a4 messageID:(id)a5;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCMessageRevokeRequest

- (CTXPCMessageRevokeRequest)initWithContext:(id)a3 revokeData:(id)a4 messageID:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = @"revokeData";
  v16[1] = @"messageID";
  v17[0] = v9;
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15.receiver = self;
  v15.super_class = CTXPCMessageRevokeRequest;
  v12 = [(CTXPCSubscriptionContextRequest *)&v15 initWithContext:v8 namedArguments:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (CTLazuliMessageRevokeData)revokeData
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"revokeData"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageRevokeData>(v3);

  return v4;
}

- (CTLazuliMessageID)messageID
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCSubscriptionContextRequest *)self context];
  v9 = [(CTXPCMessageRevokeRequest *)self revokeData];
  v10 = [(CTXPCMessageRevokeRequest *)self messageID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CTXPCMessageRevokeRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v11 = v7;
  v13 = v11;
  [v6 revokeMessage:v8 withRevokeData:v9 withMessageID:v10 completion:v12];
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCMessageRevokeRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end