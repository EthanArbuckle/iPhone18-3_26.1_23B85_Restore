@interface CTXPCValidateProximityTransferRequest
+ (id)allowedClassesForArguments;
- (CTXPCValidateProximityTransferRequest)initWithEndpoint:(unint64_t)endpoint pin:(id)pin;
- (id)pin;
- (unint64_t)endpoint;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCValidateProximityTransferRequest

- (CTXPCValidateProximityTransferRequest)initWithEndpoint:(unint64_t)endpoint pin:(id)pin
{
  v14[2] = *MEMORY[0x1E69E9840];
  pinCopy = pin;
  v13[0] = @"endpoint";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:endpoint];
  v13[1] = @"pin";
  v14[0] = v7;
  v14[1] = pinCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCValidateProximityTransferRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  endpoint = [(CTXPCValidateProximityTransferRequest *)self endpoint];
  v9 = [(CTXPCValidateProximityTransferRequest *)self pin];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__CTXPCValidateProximityTransferRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy validateProximityTransfer:endpoint pin:v9 completion:v11];
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
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
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"endpoint"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)pin
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"pin"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end