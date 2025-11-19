@interface CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest
+ (id)allowedClassesForArguments;
- (CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest)initWithCapability:(unint64_t)a3;
- (unint64_t)capability;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest

- (CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest)initWithCapability:(unint64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"capability";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest *)self capability];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __111__CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A460B8;
  v9 = v7;
  v11 = v9;
  [v6 isAnyPlanOfTransferCapability:v8 availableForThisDeviceWithCompletion:v10];
}

void __111__CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v5 + 16))(v5, v6, v7);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (unint64_t)capability
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"capability"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

@end