@interface CTXPCTriggerPendingPlanInstallFlowResponse
+ (id)allowedClassesForArguments;
- (CTXPCTriggerPendingPlanInstallFlowResponse)initWithResult:(unint64_t)result;
- (unint64_t)result;
@end

@implementation CTXPCTriggerPendingPlanInstallFlowResponse

- (CTXPCTriggerPendingPlanInstallFlowResponse)initWithResult:(unint64_t)result
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"result";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:result];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCTriggerPendingPlanInstallFlowResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)result
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"result"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCTriggerPendingPlanInstallFlowResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end