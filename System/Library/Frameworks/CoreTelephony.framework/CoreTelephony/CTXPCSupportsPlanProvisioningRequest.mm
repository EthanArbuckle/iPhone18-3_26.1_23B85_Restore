@interface CTXPCSupportsPlanProvisioningRequest
+ (id)allowedClassesForArguments;
- (CTXPCSupportsPlanProvisioningRequest)initWithCarrierDescriptors:(id)descriptors smdpUrl:(id)url iccidPrefix:(id)prefix bundleId:(id)id;
- (id)bundleId;
- (id)carrierDescriptors;
- (id)iccidPrefix;
- (id)smdpUrl;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSupportsPlanProvisioningRequest

- (CTXPCSupportsPlanProvisioningRequest)initWithCarrierDescriptors:(id)descriptors smdpUrl:(id)url iccidPrefix:(id)prefix bundleId:(id)id
{
  descriptorsCopy = descriptors;
  urlCopy = url;
  prefixCopy = prefix;
  idCopy = id;
  v14 = objc_opt_new();
  [v14 setObject:descriptorsCopy forKeyedSubscript:@"carrierDescriptors"];
  [v14 setObject:urlCopy forKeyedSubscript:@"smdpUrl"];
  [v14 setObject:prefixCopy forKeyedSubscript:@"iccidPrefix"];
  [v14 setObject:idCopy forKeyedSubscript:@"bundleID"];
  v17.receiver = self;
  v17.super_class = CTXPCSupportsPlanProvisioningRequest;
  v15 = [(CTXPCMessage *)&v17 initWithNamedArguments:v14];

  return v15;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  carrierDescriptors = [(CTXPCSupportsPlanProvisioningRequest *)self carrierDescriptors];
  smdpUrl = [(CTXPCSupportsPlanProvisioningRequest *)self smdpUrl];
  iccidPrefix = [(CTXPCSupportsPlanProvisioningRequest *)self iccidPrefix];
  bundleId = [(CTXPCSupportsPlanProvisioningRequest *)self bundleId];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__CTXPCSupportsPlanProvisioningRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A45E38;
  v12 = completionHandlerCopy;
  v14 = v12;
  [handlerCopy supportsPlanProvisioning:0 carrierDescriptors:carrierDescriptors smdpUrl:smdpUrl iccidPrefix:iccidPrefix bundleId:bundleId completionHandler:v13];
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
  v7.receiver = self;
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
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"carrierDescriptors"];
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
  v3 = [namedArguments objectForKey:@"smdpUrl"];
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
  v3 = [namedArguments objectForKey:@"iccidPrefix"];
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
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"bundleID"];
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