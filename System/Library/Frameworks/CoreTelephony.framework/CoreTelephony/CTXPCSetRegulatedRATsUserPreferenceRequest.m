@interface CTXPCSetRegulatedRATsUserPreferenceRequest
+ (id)allowedClassesForArguments;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSetRegulatedRATsUserPreferenceRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCMessage *)self namedArguments];
  v9 = [v8 objectForKey:@"enable"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  v11 = [v10 BOOLValue];

  v12 = [(CTXPCSubscriptionContextRequest *)self context];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__CTXPCSetRegulatedRATsUserPreferenceRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v13 = v7;
  v15 = v13;
  [v6 setRegulatedRatsUserPreference:v12 enable:v11 completion:v14];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCSetRegulatedRATsUserPreferenceRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end