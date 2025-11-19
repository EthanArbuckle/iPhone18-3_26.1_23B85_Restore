@interface CTXPCIsAutofillAllowedForDomainWithinClientRequest
+ (id)allowedClassesForArguments;
- (CTXPCIsAutofillAllowedForDomainWithinClientRequest)initWithDomain:(id)a3 clientBundleIdentifier:(id)a4;
- (id)clientBundleIdentifier;
- (id)domain;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCIsAutofillAllowedForDomainWithinClientRequest

- (CTXPCIsAutofillAllowedForDomainWithinClientRequest)initWithDomain:(id)a3 clientBundleIdentifier:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13[0] = @"domain";
  v13[1] = @"bundleID";
  v14[0] = v6;
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCIsAutofillAllowedForDomainWithinClientRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCIsAutofillAllowedForDomainWithinClientRequest *)self domain];
  v9 = [(CTXPCIsAutofillAllowedForDomainWithinClientRequest *)self clientBundleIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__CTXPCIsAutofillAllowedForDomainWithinClientRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A460B8;
  v10 = v7;
  v12 = v10;
  [v6 isAutofilleSIMIdAllowedForDomain:v8 clientBundleIdentifier:v9 completion:v11];
}

void __98__CTXPCIsAutofillAllowedForDomainWithinClientRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v5 + 16))(v5, v6, v7);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCIsAutofillAllowedForDomainWithinClientRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)domain
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"domain"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)clientBundleIdentifier
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"bundleID"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end