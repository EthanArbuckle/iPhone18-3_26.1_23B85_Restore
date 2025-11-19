@interface CTXPCCheckPreFlightEligibilityRequest
+ (id)allowedClassesForArguments;
- (CTXPCCheckPreFlightEligibilityRequest)initWithIccid:(id)a3 mccs:(id)a4 mncs:(id)a5 gid1s:(id)a6 gid2s:(id)a7 smdpUrl:(id)a8 iccidPrefix:(id)a9;
- (id)gid1s;
- (id)gid2s;
- (id)iccidPrefix;
- (id)iccids;
- (id)mccs;
- (id)mncs;
- (id)smdpUrl;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCCheckPreFlightEligibilityRequest

- (CTXPCCheckPreFlightEligibilityRequest)initWithIccid:(id)a3 mccs:(id)a4 mncs:(id)a5 gid1s:(id)a6 gid2s:(id)a7 smdpUrl:(id)a8 iccidPrefix:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = objc_opt_new();
  [v22 setObject:v15 forKeyedSubscript:@"iccids"];
  [v22 setObject:v16 forKeyedSubscript:@"mccs"];
  [v22 setObject:v17 forKeyedSubscript:@"mncs"];
  [v22 setObject:v18 forKeyedSubscript:@"gid1s"];
  [v22 setObject:v19 forKeyedSubscript:@"gid2s"];
  [v22 setObject:v20 forKeyedSubscript:@"urlString"];
  [v22 setObject:v21 forKeyedSubscript:@"iccidPrefix"];
  v25.receiver = self;
  v25.super_class = CTXPCCheckPreFlightEligibilityRequest;
  v23 = [(CTXPCMessage *)&v25 initWithNamedArguments:v22];

  return v23;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(CTXPCCheckPreFlightEligibilityRequest *)self iccids];
  v8 = [(CTXPCCheckPreFlightEligibilityRequest *)self mccs];
  v9 = [(CTXPCCheckPreFlightEligibilityRequest *)self mncs];
  v10 = [(CTXPCCheckPreFlightEligibilityRequest *)self gid1s];
  v11 = [(CTXPCCheckPreFlightEligibilityRequest *)self gid2s];
  v12 = [(CTXPCCheckPreFlightEligibilityRequest *)self smdpUrl];
  v13 = [(CTXPCCheckPreFlightEligibilityRequest *)self iccidPrefix];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__CTXPCCheckPreFlightEligibilityRequest_performRequestWithHandler_completionHandler___block_invoke;
  v16[3] = &unk_1E6A460B8;
  v14 = v6;
  v17 = v14;
  [v15 checkPreFlightEligibility:v7 mccs:v8 mncs:v9 gid1s:v10 gid2s:v11 smdpUrl:v12 iccidPrefix:v13 completion:v16];
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
  v7.receiver = a1;
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"iccids"];
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"mccs"];
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"mncs"];
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"gid1s"];
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"gid2s"];
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"urlString"];
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"iccidPrefix"];
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