@interface CTXPCSet2GUserPreferenceRequest
+ (id)allowedClassesForArguments;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSet2GUserPreferenceRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCMessage *)self namedArguments];
  v9 = [v8 objectForKey:@"enable"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  v11 = [v10 BOOLValue];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__CTXPCSet2GUserPreferenceRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v12 = v7;
  v14 = v12;
  [v6 set2GUserPreference:v11 completion:v13];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCSet2GUserPreferenceRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end