@interface CTXPCSetRatSelectionMaskRequest
+ (id)allowedClassesForArguments;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSetRatSelectionMaskRequest

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"selection"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  unsignedIntValue = [v10 unsignedIntValue];

  namedArguments2 = [(CTXPCMessage *)self namedArguments];
  v13 = [namedArguments2 objectForKey:@"preferred"];
  v14 = CTThrowingCastIfClass<NSNumber>(v13);
  LOBYTE(v9) = [v14 unsignedIntValue];

  descriptor = [(CTXPCSubscriptionContextRequest *)self descriptor];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__CTXPCSetRatSelectionMaskRequest_performRequestWithHandler_completionHandler___block_invoke;
  v17[3] = &unk_1E6A43CC8;
  v16 = completionHandlerCopy;
  v18 = v16;
  [handlerCopy setRatSelectionMask:descriptor selection:unsignedIntValue preferred:v9 completion:v17];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSetRatSelectionMaskRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end