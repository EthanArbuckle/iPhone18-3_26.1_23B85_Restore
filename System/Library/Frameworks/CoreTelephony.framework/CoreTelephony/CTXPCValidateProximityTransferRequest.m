@interface CTXPCValidateProximityTransferRequest
+ (id)allowedClassesForArguments;
- (CTXPCValidateProximityTransferRequest)initWithEndpoint:(unint64_t)a3 pin:(id)a4;
- (id)pin;
- (unint64_t)endpoint;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCValidateProximityTransferRequest

- (CTXPCValidateProximityTransferRequest)initWithEndpoint:(unint64_t)a3 pin:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13[0] = @"endpoint";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v13[1] = @"pin";
  v14[0] = v7;
  v14[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCValidateProximityTransferRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCValidateProximityTransferRequest *)self endpoint];
  v9 = [(CTXPCValidateProximityTransferRequest *)self pin];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__CTXPCValidateProximityTransferRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = v7;
  v12 = v10;
  [v6 validateProximityTransfer:v8 pin:v9 completion:v11];
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCValidateProximityTransferRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (unint64_t)endpoint
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"endpoint"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (id)pin
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"pin"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end