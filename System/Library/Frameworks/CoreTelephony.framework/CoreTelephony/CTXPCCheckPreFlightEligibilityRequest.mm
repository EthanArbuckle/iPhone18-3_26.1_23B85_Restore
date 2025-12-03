@interface CTXPCCheckPreFlightEligibilityRequest
+ (id)allowedClassesForArguments;
- (CTXPCCheckPreFlightEligibilityRequest)initWithIccid:(id)iccid mccs:(id)mccs mncs:(id)mncs gid1s:(id)gid1s gid2s:(id)gid2s smdpUrl:(id)url iccidPrefix:(id)prefix;
- (id)gid1s;
- (id)gid2s;
- (id)iccidPrefix;
- (id)iccids;
- (id)mccs;
- (id)mncs;
- (id)smdpUrl;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCCheckPreFlightEligibilityRequest

- (CTXPCCheckPreFlightEligibilityRequest)initWithIccid:(id)iccid mccs:(id)mccs mncs:(id)mncs gid1s:(id)gid1s gid2s:(id)gid2s smdpUrl:(id)url iccidPrefix:(id)prefix
{
  iccidCopy = iccid;
  mccsCopy = mccs;
  mncsCopy = mncs;
  gid1sCopy = gid1s;
  gid2sCopy = gid2s;
  urlCopy = url;
  prefixCopy = prefix;
  v22 = objc_opt_new();
  [v22 setObject:iccidCopy forKeyedSubscript:@"iccids"];
  [v22 setObject:mccsCopy forKeyedSubscript:@"mccs"];
  [v22 setObject:mncsCopy forKeyedSubscript:@"mncs"];
  [v22 setObject:gid1sCopy forKeyedSubscript:@"gid1s"];
  [v22 setObject:gid2sCopy forKeyedSubscript:@"gid2s"];
  [v22 setObject:urlCopy forKeyedSubscript:@"urlString"];
  [v22 setObject:prefixCopy forKeyedSubscript:@"iccidPrefix"];
  v25.receiver = self;
  v25.super_class = CTXPCCheckPreFlightEligibilityRequest;
  v23 = [(CTXPCMessage *)&v25 initWithNamedArguments:v22];

  return v23;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  iccids = [(CTXPCCheckPreFlightEligibilityRequest *)self iccids];
  mccs = [(CTXPCCheckPreFlightEligibilityRequest *)self mccs];
  mncs = [(CTXPCCheckPreFlightEligibilityRequest *)self mncs];
  gid1s = [(CTXPCCheckPreFlightEligibilityRequest *)self gid1s];
  gid2s = [(CTXPCCheckPreFlightEligibilityRequest *)self gid2s];
  smdpUrl = [(CTXPCCheckPreFlightEligibilityRequest *)self smdpUrl];
  iccidPrefix = [(CTXPCCheckPreFlightEligibilityRequest *)self iccidPrefix];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__CTXPCCheckPreFlightEligibilityRequest_performRequestWithHandler_completionHandler___block_invoke;
  v16[3] = &unk_1E6A460B8;
  v14 = completionHandlerCopy;
  v17 = v14;
  [handlerCopy checkPreFlightEligibility:iccids mccs:mccs mncs:mncs gid1s:gid1s gid2s:gid2s smdpUrl:smdpUrl iccidPrefix:iccidPrefix completion:v16];
}

void __85__CTXPCCheckPreFlightEligibilityRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v5 + 16))(v5, v6, v7);
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCCheckPreFlightEligibilityRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)iccids
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"iccids"];
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

- (id)mccs
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"mccs"];
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

- (id)mncs
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"mncs"];
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

- (id)gid1s
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"gid1s"];
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

- (id)gid2s
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"gid2s"];
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

- (id)iccidPrefix
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"iccidPrefix"];
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