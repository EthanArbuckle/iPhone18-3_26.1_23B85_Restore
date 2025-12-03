@interface CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest
+ (id)allowedClassesForArguments;
- (CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest)initWithFlowType:(unint64_t)type;
- (unint64_t)flowType;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest

- (CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest)initWithFlowType:(unint64_t)type
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"flowType";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  flowType = [(CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest *)self flowType];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A460B8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy isAnyPlanTransferableFromThisDeviceForFlow:flowType completion:v10];
}

void __102__CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v5 + 16))(v5, v6, v7);
}

+ (id)allowedClassesForArguments
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (unint64_t)flowType
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"flowType"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end