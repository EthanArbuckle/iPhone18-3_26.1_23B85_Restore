@interface CTXPCSendDispositionNotificationMessageRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliGroupChatUri)groupChatURI;
- (CTLazuliMessageID)messageID;
- (CTLazuliMessageID)notificationMessageID;
- (CTXPCSendDispositionNotificationMessageRequest)initWithContext:(id)a3 destination:(id)a4 messageID:(id)a5 notificationType:(int64_t)a6 notificationMessageID:(id)a7 security:(id)a8;
- (CTXPCSendDispositionNotificationMessageRequest)initWithContext:(id)a3 groupChatURI:(id)a4 destination:(id)a5 messageID:(id)a6 notificationType:(int64_t)a7 notificationMessageID:(id)a8 security:(id)a9;
- (id)security;
- (int64_t)notificationType;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSendDispositionNotificationMessageRequest

- (CTXPCSendDispositionNotificationMessageRequest)initWithContext:(id)a3 destination:(id)a4 messageID:(id)a5 notificationType:(int64_t)a6 notificationMessageID:(id)a7 security:(id)a8
{
  v28[4] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v27[0] = @"destination";
  v27[1] = @"messageID";
  v28[0] = v15;
  v28[1] = v16;
  v27[2] = @"notificationType";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  v27[3] = @"notificationMessageID";
  v28[2] = v19;
  v28[3] = v17;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v22 = objc_claimAutoreleasedReturnValue();
  v26.receiver = self;
  v26.super_class = CTXPCSendDispositionNotificationMessageRequest;
  v23 = [(CTXPCSubscriptionContextRequest *)&v26 initWithContext:v14 namedArguments:v22];

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (CTXPCSendDispositionNotificationMessageRequest)initWithContext:(id)a3 groupChatURI:(id)a4 destination:(id)a5 messageID:(id)a6 notificationType:(int64_t)a7 notificationMessageID:(id)a8 security:(id)a9
{
  v30[5] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v29[0] = @"groupChatURI";
  v29[1] = @"destination";
  v30[0] = v16;
  v30[1] = v17;
  v30[2] = v18;
  v29[2] = @"messageID";
  v29[3] = @"notificationType";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  v29[4] = @"notificationMessageID";
  v30[3] = v21;
  v30[4] = v19;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:5];
  v24 = objc_claimAutoreleasedReturnValue();
  v28.receiver = self;
  v28.super_class = CTXPCSendDispositionNotificationMessageRequest;
  v25 = [(CTXPCSubscriptionContextRequest *)&v28 initWithContext:v15 namedArguments:v24];

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (CTLazuliDestination)destination
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (CTLazuliGroupChatUri)groupChatURI
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"groupChatURI"];
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

- (CTLazuliMessageID)messageID
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (int64_t)notificationType
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"notificationType"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);

  v5 = [v4 integerValue];
  return v5;
}

- (CTLazuliMessageID)notificationMessageID
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"notificationMessageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

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
  v15 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)self context];
  v8 = [(CTXPCSendDispositionNotificationMessageRequest *)self messageID];
  v9 = [(CTXPCSendDispositionNotificationMessageRequest *)self notificationType];
  v10 = [(CTXPCSendDispositionNotificationMessageRequest *)self notificationMessageID];
  v11 = [(CTXPCSendDispositionNotificationMessageRequest *)self destination];
  v12 = [(CTXPCSendDispositionNotificationMessageRequest *)self groupChatURI];
  v13 = [(CTXPCSendDispositionNotificationMessageRequest *)self security];
  if (v12)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __94__CTXPCSendDispositionNotificationMessageRequest_performRequestWithHandler_completionHandler___block_invoke;
    v18[3] = &unk_1E6A43CC8;
    v14 = &v19;
    v19 = v15;
    [v6 sendGroupDispositionNotificationMessage:v7 toGroup:v12 to:v11 withMessageID:v8 withDisposition:v9 forMessageID:v10 withSecurity:v13 completion:v18];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __94__CTXPCSendDispositionNotificationMessageRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v16[3] = &unk_1E6A43CC8;
    v14 = &v17;
    v17 = v15;
    [v6 sendDispositionNotificationMessage:v7 to:v11 withMessageID:v8 withDisposition:v9 forMessageID:v10 withSecurity:v13 completion:v16];
  }
}

+ (id)allowedClassesForArguments
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCSendDispositionNotificationMessageRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end