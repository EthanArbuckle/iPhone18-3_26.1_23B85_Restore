@interface CTXPCEncryptDataRequest
+ (id)allowedClassesForArguments;
- (CTXPCEncryptDataRequest)initWithMcc:(id)mcc mnc:(id)mnc gid1:(id)gid1 gid2:(id)gid2 plainText:(id)text;
- (id)gid1;
- (id)gid2;
- (id)mcc;
- (id)mnc;
- (id)plainText;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCEncryptDataRequest

- (CTXPCEncryptDataRequest)initWithMcc:(id)mcc mnc:(id)mnc gid1:(id)gid1 gid2:(id)gid2 plainText:(id)text
{
  v24[3] = *MEMORY[0x1E69E9840];
  mccCopy = mcc;
  mncCopy = mnc;
  gid1Copy = gid1;
  gid2Copy = gid2;
  textCopy = text;
  v23[0] = @"mcc";
  v23[1] = @"mnc";
  v24[0] = mccCopy;
  v24[1] = mncCopy;
  v23[2] = @"plainText";
  v24[2] = textCopy;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v18 = [v17 mutableCopy];

  [v18 setObject:gid1Copy forKeyedSubscript:@"gid1"];
  [v18 setObject:gid2Copy forKeyedSubscript:@"gid2"];
  v22.receiver = self;
  v22.super_class = CTXPCEncryptDataRequest;
  v19 = [(CTXPCMessage *)&v22 initWithNamedArguments:v18];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v8 = [(CTXPCEncryptDataRequest *)self mcc];
  v9 = [(CTXPCEncryptDataRequest *)self mnc];
  gid1 = [(CTXPCEncryptDataRequest *)self gid1];
  gid2 = [(CTXPCEncryptDataRequest *)self gid2];
  plainText = [(CTXPCEncryptDataRequest *)self plainText];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__CTXPCEncryptDataRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A45F28;
  v13 = completionHandlerCopy;
  v15 = v13;
  [handlerCopy encryptDataWithCarrierIdentifiers:v8 mnc:v9 gid1:gid1 gid2:gid2 data:plainText completion:v14];
}

void __71__CTXPCEncryptDataRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [[CTXPCEncryptDataResponse alloc] initWithCipherText:v8];
  (*(v6 + 16))(v6, v7, v5);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCEncryptDataRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)mcc
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"mcc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)mnc
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"mnc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)gid1
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"gid1"];
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

- (id)gid2
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"gid2"];
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

- (id)plainText
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"plainText"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end