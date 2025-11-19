@interface CTXPCFetchRenderInformationRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliOperationID)operationID;
- (CTXPCFetchRenderInformationRequest)initWithContext:(id)a3 destination:(id)a4;
- (CTXPCFetchRenderInformationRequest)initWithContext:(id)a3 destination:(id)a4 operationID:(id)a5;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCFetchRenderInformationRequest

- (CTXPCFetchRenderInformationRequest)initWithContext:(id)a3 destination:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = @"destination";
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCFetchRenderInformationRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:v6 namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (CTXPCFetchRenderInformationRequest)initWithContext:(id)a3 destination:(id)a4 operationID:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = @"destination";
  v16[1] = @"operationID";
  v17[0] = v9;
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15.receiver = self;
  v15.super_class = CTXPCFetchRenderInformationRequest;
  v12 = [(CTXPCSubscriptionContextRequest *)&v15 initWithContext:v8 namedArguments:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (CTLazuliDestination)destination
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (CTLazuliOperationID)operationID
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"operationID"];
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
  v9 = [(CTXPCFetchRenderInformationRequest *)self destination];
  v10 = [(CTXPCFetchRenderInformationRequest *)self operationID];
  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__CTXPCFetchRenderInformationRequest_performRequestWithHandler_completionHandler___block_invoke;
    v14[3] = &unk_1E6A43CC8;
    v11 = &v15;
    v15 = v7;
    [v6 fetchRenderInformation:v8 forChatBot:v9 withOperationID:v10 completion:v14];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__CTXPCFetchRenderInformationRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v12[3] = &unk_1E6A43CC8;
    v11 = &v13;
    v13 = v7;
    [v6 fetchChatBotRenderInformation:v8 forDestination:v9 completion:v12];
  }
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCFetchRenderInformationRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end