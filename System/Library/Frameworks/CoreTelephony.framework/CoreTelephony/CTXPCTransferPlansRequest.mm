@interface CTXPCTransferPlansRequest
+ (id)allowedClassesForArguments;
- (CTXPCTransferPlansRequest)initWithPlans:(id)plans fromDevice:(id)device;
- (id)deviceIdentifier;
- (id)plans;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCTransferPlansRequest

- (CTXPCTransferPlansRequest)initWithPlans:(id)plans fromDevice:(id)device
{
  v14[2] = *MEMORY[0x1E69E9840];
  plansCopy = plans;
  deviceCopy = device;
  v13[0] = @"plans";
  v13[1] = @"deviceID";
  v14[0] = plansCopy;
  v14[1] = deviceCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCTransferPlansRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plans = [(CTXPCTransferPlansRequest *)self plans];
  deviceIdentifier = [(CTXPCTransferPlansRequest *)self deviceIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__CTXPCTransferPlansRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A45F00;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy transferCellularPlans:plans fromDevice:deviceIdentifier completionHandler:v11];
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCTransferPlansRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)plans
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"plans"];
  v4 = CTThrowingCastIfClass<CTPlanList>(v3);

  return v4;
}

- (id)deviceIdentifier
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"deviceID"];
  v4 = CTThrowingCastIfClass<CTDeviceIdentifier>(v3);

  return v4;
}

@end