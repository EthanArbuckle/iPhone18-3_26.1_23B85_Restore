@interface CTXPCSetRatSelectionRequest
- (CTXPCSetRatSelectionRequest)initWithContext:(id)context selection:(id)selection preferred:(id)preferred;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSetRatSelectionRequest

- (CTXPCSetRatSelectionRequest)initWithContext:(id)context selection:(id)selection preferred:(id)preferred
{
  contextCopy = context;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{selection, @"selection", preferred, @"preferred", 0}];
  v12.receiver = self;
  v12.super_class = CTXPCSetRatSelectionRequest;
  v10 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:contextCopy namedArguments:v9];

  return v10;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"selection"];
  v10 = CTThrowingCastIfClass<NSString>(v9);

  namedArguments2 = [(CTXPCMessage *)self namedArguments];
  v12 = [namedArguments2 objectForKey:@"preferred"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  context = [(CTXPCSubscriptionContextRequest *)self context];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__CTXPCSetRatSelectionRequest_performRequestWithHandler_completionHandler___block_invoke;
  v16[3] = &unk_1E6A43CC8;
  v15 = completionHandlerCopy;
  v17 = v15;
  [handlerCopy setRatSelection:context selection:v10 preferred:v13 completion:v16];
}

@end