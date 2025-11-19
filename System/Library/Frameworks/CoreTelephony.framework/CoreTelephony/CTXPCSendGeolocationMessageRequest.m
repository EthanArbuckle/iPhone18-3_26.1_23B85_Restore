@interface CTXPCSendGeolocationMessageRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliGroupChatUri)groupChatURI;
- (CTLazuliMessageGeoLocationPush)geoLocationPush;
- (CTLazuliMessageID)messageID;
- (CTXPCSendGeolocationMessageRequest)initWithContext:(id)a3 destination:(id)a4 messageID:(id)a5 geoLocationPush:(id)a6 security:(id)a7;
- (CTXPCSendGeolocationMessageRequest)initWithContext:(id)a3 groupChatURI:(id)a4 messageID:(id)a5 geoLocationPush:(id)a6 security:(id)a7;
- (id)security;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSendGeolocationMessageRequest

- (CTXPCSendGeolocationMessageRequest)initWithContext:(id)a3 destination:(id)a4 messageID:(id)a5 geoLocationPush:(id)a6 security:(id)a7
{
  v25[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24[0] = @"destination";
  v24[1] = @"messageID";
  v25[0] = v13;
  v25[1] = v14;
  v24[2] = @"geoLocationPush";
  v25[2] = v15;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v19 = objc_claimAutoreleasedReturnValue();
  v23.receiver = self;
  v23.super_class = CTXPCSendGeolocationMessageRequest;
  v20 = [(CTXPCSubscriptionContextRequest *)&v23 initWithContext:v12 namedArguments:v19];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (CTXPCSendGeolocationMessageRequest)initWithContext:(id)a3 groupChatURI:(id)a4 messageID:(id)a5 geoLocationPush:(id)a6 security:(id)a7
{
  v25[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24[0] = @"groupChatURI";
  v24[1] = @"messageID";
  v25[0] = v13;
  v25[1] = v14;
  v24[2] = @"geoLocationPush";
  v25[2] = v15;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v19 = objc_claimAutoreleasedReturnValue();
  v23.receiver = self;
  v23.super_class = CTXPCSendGeolocationMessageRequest;
  v20 = [(CTXPCSubscriptionContextRequest *)&v23 initWithContext:v12 namedArguments:v19];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (CTLazuliMessageID)messageID
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (CTLazuliMessageGeoLocationPush)geoLocationPush
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"geoLocationPush"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageGeoLocationPush>(v3);

  return v4;
}

- (CTLazuliDestination)destination
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"destination"];
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
  v9 = [(CTXPCSendGeolocationMessageRequest *)self messageID];
  v10 = [(CTXPCSendGeolocationMessageRequest *)self geoLocationPush];
  v11 = [(CTXPCSendGeolocationMessageRequest *)self security];
  v12 = [(CTXPCSendGeolocationMessageRequest *)self destination];
  if (v12)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__CTXPCSendGeolocationMessageRequest_performRequestWithHandler_completionHandler___block_invoke;
    v17[3] = &unk_1E6A43CC8;
    v18 = v7;
    [v6 sendGeolocationMessage:v8 to:v12 withMessageID:v9 withGeoPush:v10 withSecurity:v11 completion:v17];
    v13 = v18;
  }

  else
  {
    v13 = [(CTXPCSendGeolocationMessageRequest *)self groupChatURI];
    if (v13)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __82__CTXPCSendGeolocationMessageRequest_performRequestWithHandler_completionHandler___block_invoke_2;
      v15[3] = &unk_1E6A43CC8;
      v16 = v7;
      [v6 sendGeolocationMessage:v8 toGroupDestination:v13 withMessageID:v9 withGeoPush:v10 withSecurity:v11 completion:v15];
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      (*(v7 + 2))(v7, 0, v14);
    }
  }
}

+ (id)allowedClassesForArguments
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
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