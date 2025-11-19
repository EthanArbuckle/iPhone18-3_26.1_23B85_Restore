@interface CTXPCSetRatSelectionRequest
- (CTXPCSetRatSelectionRequest)initWithContext:(id)a3 selection:(id)a4 preferred:(id)a5;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSetRatSelectionRequest

- (CTXPCSetRatSelectionRequest)initWithContext:(id)a3 selection:(id)a4 preferred:(id)a5
{
  v8 = a3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a4, @"selection", a5, @"preferred", 0}];
  v12.receiver = self;
  v12.super_class = CTXPCSetRatSelectionRequest;
  v10 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:v8 namedArguments:v9];

  return v10;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCMessage *)self namedArguments];
  v9 = [v8 objectForKey:@"selection"];
  v10 = CTThrowingCastIfClass<NSString>(v9);

  v11 = [(CTXPCMessage *)self namedArguments];
  v12 = [v11 objectForKey:@"preferred"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(CTXPCSubscriptionContextRequest *)self context];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__CTXPCSetRatSelectionRequest_performRequestWithHandler_completionHandler___block_invoke;
  v16[3] = &unk_1E6A43CC8;
  v15 = v7;
  v17 = v15;
  [v6 setRatSelection:v14 selection:v10 preferred:v13 completion:v16];
}

@end