@interface CTXPCTransferRemotePlanFromDeviceRequest
+ (id)allowedClassesForArguments;
- (CTXPCTransferRemotePlanFromDeviceRequest)initWithPlanID:(id)d fromDevice:(id)device;
- (id)deviceIdentifier;
- (id)planID;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCTransferRemotePlanFromDeviceRequest

- (CTXPCTransferRemotePlanFromDeviceRequest)initWithPlanID:(id)d fromDevice:(id)device
{
  dCopy = d;
  deviceCopy = device;
  v8 = objc_opt_new();
  [v8 setObject:dCopy forKeyedSubscript:@"planID"];
  [v8 setObject:deviceCopy forKeyedSubscript:@"deviceID"];
  v11.receiver = self;
  v11.super_class = CTXPCTransferRemotePlanFromDeviceRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  planID = [(CTXPCTransferRemotePlanFromDeviceRequest *)self planID];
  deviceIdentifier = [(CTXPCTransferRemotePlanFromDeviceRequest *)self deviceIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__CTXPCTransferRemotePlanFromDeviceRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A460B8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy transferRemotePlan:planID fromDevice:deviceIdentifier completion:v11];
}

void __88__CTXPCTransferRemotePlanFromDeviceRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
  v7.super_class = &OBJC_METACLASS___CTXPCTransferRemotePlanFromDeviceRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)planID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"planID"];
  v4 = CTThrowingCastIfClass<CTRemotePlanIdentifier>(v3);

  return v4;
}

- (id)deviceIdentifier
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"deviceID"];
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