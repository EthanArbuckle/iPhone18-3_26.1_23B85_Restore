@interface CTXPCGetLocalDeviceIdentifierRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetLocalDeviceIdentifierRequest)initWithType:(unint64_t)a3 clientBundleIdentifier:(id)a4;
- (id)clientBundleIdentifier;
- (unint64_t)type;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetLocalDeviceIdentifierRequest

- (CTXPCGetLocalDeviceIdentifierRequest)initWithType:(unint64_t)a3 clientBundleIdentifier:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13[0] = @"type";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v13[1] = @"bundleID";
  v14[0] = v7;
  v14[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCGetLocalDeviceIdentifierRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCGetLocalDeviceIdentifierRequest *)self type];
  v9 = [(CTXPCGetLocalDeviceIdentifierRequest *)self clientBundleIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__CTXPCGetLocalDeviceIdentifierRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A46158;
  v10 = v7;
  v12 = v10;
  [v6 getLocalDeviceIdentifier:v8 clientBundleIdentifier:v9 completion:v11];
}

void __84__CTXPCGetLocalDeviceIdentifierRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [[CTXPCDeviceIdentifierMessage alloc] initWithDeviceID:v8];
  (*(v6 + 16))(v6, v7, v5);
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCGetLocalDeviceIdentifierRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (unint64_t)type
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"type"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (id)clientBundleIdentifier
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"bundleID"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end