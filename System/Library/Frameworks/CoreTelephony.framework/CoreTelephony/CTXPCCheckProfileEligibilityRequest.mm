@interface CTXPCCheckProfileEligibilityRequest
+ (id)allowedClassesForArguments;
- (CTXPCCheckProfileEligibilityRequest)initWithSmdpURL:(id)l metadata:(id)metadata;
- (id)metadata;
- (id)smdpUrl;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCCheckProfileEligibilityRequest

- (CTXPCCheckProfileEligibilityRequest)initWithSmdpURL:(id)l metadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  v8 = objc_opt_new();
  [v8 setObject:lCopy forKeyedSubscript:@"urlString"];
  [v8 setObject:metadataCopy forKeyedSubscript:@"metadata"];
  v11.receiver = self;
  v11.super_class = CTXPCCheckProfileEligibilityRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  smdpUrl = [(CTXPCCheckProfileEligibilityRequest *)self smdpUrl];
  metadata = [(CTXPCCheckProfileEligibilityRequest *)self metadata];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__CTXPCCheckProfileEligibilityRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A460B8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy checkProfileEligibility:smdpUrl metadata:metadata completion:v11];
}

void __83__CTXPCCheckProfileEligibilityRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v5 + 16))(v5, v6, v7);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCCheckProfileEligibilityRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)smdpUrl
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"urlString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)metadata
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end