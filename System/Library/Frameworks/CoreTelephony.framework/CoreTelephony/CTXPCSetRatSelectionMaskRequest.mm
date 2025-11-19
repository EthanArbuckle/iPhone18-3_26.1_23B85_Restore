@interface CTXPCSetRatSelectionMaskRequest
+ (id)allowedClassesForArguments;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSetRatSelectionMaskRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCMessage *)self namedArguments];
  v9 = [v8 objectForKey:@"selection"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  v11 = [v10 unsignedIntValue];

  v12 = [(CTXPCMessage *)self namedArguments];
  v13 = [v12 objectForKey:@"preferred"];
  v14 = CTThrowingCastIfClass<NSNumber>(v13);
  LOBYTE(v9) = [v14 unsignedIntValue];

  v15 = [(CTXPCSubscriptionContextRequest *)self descriptor];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__CTXPCSetRatSelectionMaskRequest_performRequestWithHandler_completionHandler___block_invoke;
  v17[3] = &unk_1E6A43CC8;
  v16 = v7;
  v18 = v16;
  [v6 setRatSelectionMask:v15 selection:v11 preferred:v9 completion:v17];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCSetRatSelectionMaskRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end