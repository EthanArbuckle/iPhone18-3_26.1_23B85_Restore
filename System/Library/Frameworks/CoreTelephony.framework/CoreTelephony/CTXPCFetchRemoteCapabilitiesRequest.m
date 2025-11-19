@interface CTXPCFetchRemoteCapabilitiesRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliFetchRemoteCapabilitiesOptions)options;
- (CTLazuliOperationID)operationID;
- (CTXPCFetchRemoteCapabilitiesRequest)initWithContext:(id)a3 destination:(id)a4 options:(id)a5 operationID:(id)a6;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCFetchRemoteCapabilitiesRequest

- (CTXPCFetchRemoteCapabilitiesRequest)initWithContext:(id)a3 destination:(id)a4 options:(id)a5 operationID:(id)a6
{
  v20[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19[0] = @"destination";
  v19[1] = @"options";
  v20[0] = v11;
  v20[1] = v12;
  v19[2] = @"operationID";
  v20[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v18.receiver = self;
  v18.super_class = CTXPCFetchRemoteCapabilitiesRequest;
  v15 = [(CTXPCSubscriptionContextRequest *)&v18 initWithContext:v10 namedArguments:v14];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CTLazuliDestination)destination
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (CTLazuliFetchRemoteCapabilitiesOptions)options
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"options"];
  v4 = CTThrowingCastIfClass<CTLazuliFetchRemoteCapabilitiesOptions>(v3);

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
  v9 = [(CTXPCFetchRemoteCapabilitiesRequest *)self destination];
  v10 = [(CTXPCFetchRemoteCapabilitiesRequest *)self options];
  v11 = [(CTXPCFetchRemoteCapabilitiesRequest *)self operationID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__CTXPCFetchRemoteCapabilitiesRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v12 = v7;
  v14 = v12;
  [v6 fetchRemoteCapabilities:v8 forDestination:v9 withOptions:v10 withOperationID:v11 completion:v13];
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCFetchRemoteCapabilitiesRequest;
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