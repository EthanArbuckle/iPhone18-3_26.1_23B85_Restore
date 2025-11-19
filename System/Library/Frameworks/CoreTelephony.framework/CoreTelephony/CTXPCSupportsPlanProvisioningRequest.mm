@interface CTXPCSupportsPlanProvisioningRequest
+ (id)allowedClassesForArguments;
- (CTXPCSupportsPlanProvisioningRequest)initWithCarrierDescriptors:(id)a3 smdpUrl:(id)a4 iccidPrefix:(id)a5 bundleId:(id)a6;
- (id)bundleId;
- (id)carrierDescriptors;
- (id)iccidPrefix;
- (id)smdpUrl;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCSupportsPlanProvisioningRequest

- (CTXPCSupportsPlanProvisioningRequest)initWithCarrierDescriptors:(id)a3 smdpUrl:(id)a4 iccidPrefix:(id)a5 bundleId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_new();
  [v14 setObject:v10 forKeyedSubscript:@"carrierDescriptors"];
  [v14 setObject:v11 forKeyedSubscript:@"smdpUrl"];
  [v14 setObject:v12 forKeyedSubscript:@"iccidPrefix"];
  [v14 setObject:v13 forKeyedSubscript:@"bundleID"];
  v17.receiver = self;
  v17.super_class = CTXPCSupportsPlanProvisioningRequest;
  v15 = [(CTXPCMessage *)&v17 initWithNamedArguments:v14];

  return v15;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCSupportsPlanProvisioningRequest *)self carrierDescriptors];
  v9 = [(CTXPCSupportsPlanProvisioningRequest *)self smdpUrl];
  v10 = [(CTXPCSupportsPlanProvisioningRequest *)self iccidPrefix];
  v11 = [(CTXPCSupportsPlanProvisioningRequest *)self bundleId];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__CTXPCSupportsPlanProvisioningRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A45E38;
  v12 = v7;
  v14 = v12;
  [v6 supportsPlanProvisioning:0 carrierDescriptors:v8 smdpUrl:v9 iccidPrefix:v10 bundleId:v11 completionHandler:v13];
}

void __84__CTXPCSupportsPlanProvisioningRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v2 + 16))(v2);
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCSupportsPlanProvisioningRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)carrierDescriptors
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"carrierDescriptors"];
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
  v3 = [v2 objectForKey:@"smdpUrl"];
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
  v3 = [v2 objectForKey:@"iccidPrefix"];
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

- (id)bundleId
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"bundleID"];
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