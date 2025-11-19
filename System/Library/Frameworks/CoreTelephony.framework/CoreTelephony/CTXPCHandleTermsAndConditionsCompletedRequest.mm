@interface CTXPCHandleTermsAndConditionsCompletedRequest
+ (id)allowedClassesForArguments;
- (BOOL)consented;
- (id)sourceIccid;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCHandleTermsAndConditionsCompletedRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCHandleTermsAndConditionsCompletedRequest *)self sourceIccid];
  v9 = [(CTXPCHandleTermsAndConditionsCompletedRequest *)self consented];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__CTXPCHandleTermsAndConditionsCompletedRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = v7;
  v12 = v10;
  [v6 handleTermsAndConditionsCompleted:v8 consented:v9 completion:v11];
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCHandleTermsAndConditionsCompletedRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)sourceIccid
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"sourceIccid"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (BOOL)consented
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"consented"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 BOOLValue];

  return v5;
}

@end