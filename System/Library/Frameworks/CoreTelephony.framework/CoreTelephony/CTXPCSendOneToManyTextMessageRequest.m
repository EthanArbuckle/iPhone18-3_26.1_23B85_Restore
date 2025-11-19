@interface CTXPCSendOneToManyTextMessageRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestinationList)destinationList;
- (CTLazuliMessageID)messageID;
- (CTLazuliMessageText)message;
- (CTXPCSendOneToManyTextMessageRequest)initWithContext:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSendOneToManyTextMessageRequest

- (CTXPCSendOneToManyTextMessageRequest)initWithContext:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6
{
  v20[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19[0] = @"destinationList";
  v19[1] = @"messageID";
  v20[0] = v11;
  v20[1] = v12;
  v19[2] = @"message";
  v20[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v18.receiver = self;
  v18.super_class = CTXPCSendOneToManyTextMessageRequest;
  v15 = [(CTXPCSubscriptionContextRequest *)&v18 initWithContext:v10 namedArguments:v14];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CTLazuliMessageID)messageID
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (CTLazuliMessageText)message
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"message"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageText>(v3);

  return v4;
}

- (CTLazuliDestinationList)destinationList
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"destinationList"];
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
  v9 = [(CTXPCSendOneToManyTextMessageRequest *)self messageID];
  v10 = [(CTXPCSendOneToManyTextMessageRequest *)self message];
  v11 = [(CTXPCSendOneToManyTextMessageRequest *)self destinationList];
  if (v11)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__CTXPCSendOneToManyTextMessageRequest_performRequestWithHandler_completionHandler___block_invoke;
    v13[3] = &unk_1E6A43CC8;
    v14 = v7;
    [v6 sendOneToManyTextMessage:v8 to:v11 withMessageID:v9 withMessage:v10 completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
  }
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCSendOneToManyTextMessageRequest;
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