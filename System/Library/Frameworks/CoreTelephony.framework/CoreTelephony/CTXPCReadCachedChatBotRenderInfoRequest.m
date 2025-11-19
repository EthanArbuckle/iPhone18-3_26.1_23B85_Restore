@interface CTXPCReadCachedChatBotRenderInfoRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTXPCReadCachedChatBotRenderInfoRequest)initWithContext:(id)a3 destination:(id)a4;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCReadCachedChatBotRenderInfoRequest

- (CTXPCReadCachedChatBotRenderInfoRequest)initWithContext:(id)a3 destination:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = @"destination";
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCReadCachedChatBotRenderInfoRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:v6 namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (CTLazuliDestination)destination
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCSubscriptionContextRequest *)self context];
  v9 = [(CTXPCReadCachedChatBotRenderInfoRequest *)self destination];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__CTXPCReadCachedChatBotRenderInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A46248;
  v10 = v7;
  v12 = v10;
  [v6 readCachedChatBotRenderInformation:v8 forChatBot:v9 completion:v11];
}

void __87__CTXPCReadCachedChatBotRenderInfoRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [[CTXPCReadCachedChatBotRenderInfoResponse alloc] initWithInfo:v7];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCReadCachedChatBotRenderInfoRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end