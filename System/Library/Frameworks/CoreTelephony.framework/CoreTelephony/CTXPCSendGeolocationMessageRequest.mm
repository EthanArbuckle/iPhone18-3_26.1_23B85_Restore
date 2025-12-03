@interface CTXPCSendGeolocationMessageRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliGroupChatUri)groupChatURI;
- (CTLazuliMessageGeoLocationPush)geoLocationPush;
- (CTLazuliMessageID)messageID;
- (CTXPCSendGeolocationMessageRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d geoLocationPush:(id)push security:(id)security;
- (CTXPCSendGeolocationMessageRequest)initWithContext:(id)context groupChatURI:(id)i messageID:(id)d geoLocationPush:(id)push security:(id)security;
- (id)security;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendGeolocationMessageRequest

- (CTXPCSendGeolocationMessageRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d geoLocationPush:(id)push security:(id)security
{
  v25[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  dCopy = d;
  pushCopy = push;
  securityCopy = security;
  v24[0] = @"destination";
  v24[1] = @"messageID";
  v25[0] = destinationCopy;
  v25[1] = dCopy;
  v24[2] = @"geoLocationPush";
  v25[2] = pushCopy;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v19 = objc_claimAutoreleasedReturnValue();
  v23.receiver = self;
  v23.super_class = CTXPCSendGeolocationMessageRequest;
  v20 = [(CTXPCSubscriptionContextRequest *)&v23 initWithContext:contextCopy namedArguments:v19];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (CTXPCSendGeolocationMessageRequest)initWithContext:(id)context groupChatURI:(id)i messageID:(id)d geoLocationPush:(id)push security:(id)security
{
  v25[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  iCopy = i;
  dCopy = d;
  pushCopy = push;
  securityCopy = security;
  v24[0] = @"groupChatURI";
  v24[1] = @"messageID";
  v25[0] = iCopy;
  v25[1] = dCopy;
  v24[2] = @"geoLocationPush";
  v25[2] = pushCopy;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v19 = objc_claimAutoreleasedReturnValue();
  v23.receiver = self;
  v23.super_class = CTXPCSendGeolocationMessageRequest;
  v20 = [(CTXPCSubscriptionContextRequest *)&v23 initWithContext:contextCopy namedArguments:v19];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (CTLazuliMessageID)messageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (CTLazuliMessageGeoLocationPush)geoLocationPush
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"geoLocationPush"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageGeoLocationPush>(v3);

  return v4;
}

- (CTLazuliDestination)destination
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destination"];
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
  messageID = [(CTXPCSendGeolocationMessageRequest *)self messageID];
  geoLocationPush = [(CTXPCSendGeolocationMessageRequest *)self geoLocationPush];
  security = [(CTXPCSendGeolocationMessageRequest *)self security];
  destination = [(CTXPCSendGeolocationMessageRequest *)self destination];
  if (destination)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__CTXPCSendGeolocationMessageRequest_performRequestWithHandler_completionHandler___block_invoke;
    v17[3] = &unk_1E6A43CC8;
    v18 = completionHandlerCopy;
    [handlerCopy sendGeolocationMessage:context to:destination withMessageID:messageID withGeoPush:geoLocationPush withSecurity:security completion:v17];
    groupChatURI = v18;
  }

  else
  {
    groupChatURI = [(CTXPCSendGeolocationMessageRequest *)self groupChatURI];
    if (groupChatURI)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __82__CTXPCSendGeolocationMessageRequest_performRequestWithHandler_completionHandler___block_invoke_2;
      v15[3] = &unk_1E6A43CC8;
      v16 = completionHandlerCopy;
      [handlerCopy sendGeolocationMessage:context toGroupDestination:groupChatURI withMessageID:messageID withGeoPush:geoLocationPush withSecurity:security completion:v15];
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, v14);
    }
  }
}

+ (id)allowedClassesForArguments
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCSendGeolocationMessageRequest;
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