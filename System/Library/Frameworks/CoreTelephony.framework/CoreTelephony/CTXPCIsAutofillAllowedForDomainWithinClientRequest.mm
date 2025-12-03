@interface CTXPCIsAutofillAllowedForDomainWithinClientRequest
+ (id)allowedClassesForArguments;
- (CTXPCIsAutofillAllowedForDomainWithinClientRequest)initWithDomain:(id)domain clientBundleIdentifier:(id)identifier;
- (id)clientBundleIdentifier;
- (id)domain;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCIsAutofillAllowedForDomainWithinClientRequest

- (CTXPCIsAutofillAllowedForDomainWithinClientRequest)initWithDomain:(id)domain clientBundleIdentifier:(id)identifier
{
  v14[2] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  identifierCopy = identifier;
  v13[0] = @"domain";
  v13[1] = @"bundleID";
  v14[0] = domainCopy;
  v14[1] = identifierCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCIsAutofillAllowedForDomainWithinClientRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  domain = [(CTXPCIsAutofillAllowedForDomainWithinClientRequest *)self domain];
  clientBundleIdentifier = [(CTXPCIsAutofillAllowedForDomainWithinClientRequest *)self clientBundleIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__CTXPCIsAutofillAllowedForDomainWithinClientRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A460B8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy isAutofilleSIMIdAllowedForDomain:domain clientBundleIdentifier:clientBundleIdentifier completion:v11];
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
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCIsAutofillAllowedForDomainWithinClientRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)domain
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"domain"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)clientBundleIdentifier
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"bundleID"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end