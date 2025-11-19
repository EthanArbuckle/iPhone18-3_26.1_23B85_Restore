@interface CTXPCTransferRemotePlanFromDeviceRequest
+ (id)allowedClassesForArguments;
- (CTXPCTransferRemotePlanFromDeviceRequest)initWithPlanID:(id)a3 fromDevice:(id)a4;
- (id)deviceIdentifier;
- (id)planID;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCTransferRemotePlanFromDeviceRequest

- (CTXPCTransferRemotePlanFromDeviceRequest)initWithPlanID:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setObject:v6 forKeyedSubscript:@"planID"];
  [v8 setObject:v7 forKeyedSubscript:@"deviceID"];
  v11.receiver = self;
  v11.super_class = CTXPCTransferRemotePlanFromDeviceRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCTransferRemotePlanFromDeviceRequest *)self planID];
  v9 = [(CTXPCTransferRemotePlanFromDeviceRequest *)self deviceIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__CTXPCTransferRemotePlanFromDeviceRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A460B8;
  v10 = v7;
  v12 = v10;
  [v6 transferRemotePlan:v8 fromDevice:v9 completion:v11];
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
  v7.receiver = a1;
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"planID"];
  v4 = CTThrowingCastIfClass<CTRemotePlanIdentifier>(v3);

  return v4;
}

- (id)deviceIdentifier
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"deviceID"];
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