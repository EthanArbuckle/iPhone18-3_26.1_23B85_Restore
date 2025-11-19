@interface CTXPCActivateProximityTransferRequest
+ (id)allowedClassesForArguments;
- (CTXPCActivateProximityTransferRequest)initWithEndpoint:(unint64_t)a3;
- (unint64_t)endpoint;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCActivateProximityTransferRequest

- (CTXPCActivateProximityTransferRequest)initWithEndpoint:(unint64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"endpoint";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCActivateProximityTransferRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCActivateProximityTransferRequest *)self endpoint];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CTXPCActivateProximityTransferRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = v7;
  v11 = v9;
  [v6 activateProximityTransfer:v8 completion:v10];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCActivateProximityTransferRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (unint64_t)endpoint
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"endpoint"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

@end