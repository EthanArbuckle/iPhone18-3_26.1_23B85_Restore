@interface CTXPCSendDispositionNotificationMessageRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliGroupChatUri)groupChatURI;
- (CTLazuliMessageID)messageID;
- (CTLazuliMessageID)notificationMessageID;
- (CTXPCSendDispositionNotificationMessageRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d notificationType:(int64_t)type notificationMessageID:(id)iD security:(id)security;
- (CTXPCSendDispositionNotificationMessageRequest)initWithContext:(id)context groupChatURI:(id)i destination:(id)destination messageID:(id)d notificationType:(int64_t)type notificationMessageID:(id)iD security:(id)security;
- (id)security;
- (int64_t)notificationType;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendDispositionNotificationMessageRequest

- (CTXPCSendDispositionNotificationMessageRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d notificationType:(int64_t)type notificationMessageID:(id)iD security:(id)security
{
  v28[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  dCopy = d;
  iDCopy = iD;
  securityCopy = security;
  v27[0] = @"destination";
  v27[1] = @"messageID";
  v28[0] = destinationCopy;
  v28[1] = dCopy;
  v27[2] = @"notificationType";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v27[3] = @"notificationMessageID";
  v28[2] = v19;
  v28[3] = iDCopy;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v22 = objc_claimAutoreleasedReturnValue();
  v26.receiver = self;
  v26.super_class = CTXPCSendDispositionNotificationMessageRequest;
  v23 = [(CTXPCSubscriptionContextRequest *)&v26 initWithContext:contextCopy namedArguments:v22];

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (CTXPCSendDispositionNotificationMessageRequest)initWithContext:(id)context groupChatURI:(id)i destination:(id)destination messageID:(id)d notificationType:(int64_t)type notificationMessageID:(id)iD security:(id)security
{
  v30[5] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  iCopy = i;
  destinationCopy = destination;
  dCopy = d;
  iDCopy = iD;
  securityCopy = security;
  v29[0] = @"groupChatURI";
  v29[1] = @"destination";
  v30[0] = iCopy;
  v30[1] = destinationCopy;
  v30[2] = dCopy;
  v29[2] = @"messageID";
  v29[3] = @"notificationType";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v29[4] = @"notificationMessageID";
  v30[3] = v21;
  v30[4] = iDCopy;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:5];
  v24 = objc_claimAutoreleasedReturnValue();
  v28.receiver = self;
  v28.super_class = CTXPCSendDispositionNotificationMessageRequest;
  v25 = [(CTXPCSubscriptionContextRequest *)&v28 initWithContext:contextCopy namedArguments:v24];

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (CTLazuliDestination)destination
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (CTLazuliGroupChatUri)groupChatURI
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"groupChatURI"];
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
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (int64_t)notificationType
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"notificationType"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);

  integerValue = [v4 integerValue];
  return integerValue;
}

- (CTLazuliMessageID)notificationMessageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"notificationMessageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

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
  messageID = [(CTXPCSendDispositionNotificationMessageRequest *)self messageID];
  notificationType = [(CTXPCSendDispositionNotificationMessageRequest *)self notificationType];
  notificationMessageID = [(CTXPCSendDispositionNotificationMessageRequest *)self notificationMessageID];
  destination = [(CTXPCSendDispositionNotificationMessageRequest *)self destination];
  groupChatURI = [(CTXPCSendDispositionNotificationMessageRequest *)self groupChatURI];
  security = [(CTXPCSendDispositionNotificationMessageRequest *)self security];
  if (groupChatURI)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __94__CTXPCSendDispositionNotificationMessageRequest_performRequestWithHandler_completionHandler___block_invoke;
    v18[3] = &unk_1E6A43CC8;
    v14 = &v19;
    v19 = completionHandlerCopy;
    [handlerCopy sendGroupDispositionNotificationMessage:context toGroup:groupChatURI to:destination withMessageID:messageID withDisposition:notificationType forMessageID:notificationMessageID withSecurity:security completion:v18];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __94__CTXPCSendDispositionNotificationMessageRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v16[3] = &unk_1E6A43CC8;
    v14 = &v17;
    v17 = completionHandlerCopy;
    [handlerCopy sendDispositionNotificationMessage:context to:destination withMessageID:messageID withDisposition:notificationType forMessageID:notificationMessageID withSecurity:security completion:v16];
  }
}

+ (id)allowedClassesForArguments
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
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