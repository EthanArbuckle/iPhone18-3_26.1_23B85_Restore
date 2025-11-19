@interface CTXPCEncryptDataRequest
+ (id)allowedClassesForArguments;
- (CTXPCEncryptDataRequest)initWithMcc:(id)a3 mnc:(id)a4 gid1:(id)a5 gid2:(id)a6 plainText:(id)a7;
- (id)gid1;
- (id)gid2;
- (id)mcc;
- (id)mnc;
- (id)plainText;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCEncryptDataRequest

- (CTXPCEncryptDataRequest)initWithMcc:(id)a3 mnc:(id)a4 gid1:(id)a5 gid2:(id)a6 plainText:(id)a7
{
  v24[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23[0] = @"mcc";
  v23[1] = @"mnc";
  v24[0] = v12;
  v24[1] = v13;
  v23[2] = @"plainText";
  v24[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v18 = [v17 mutableCopy];

  [v18 setObject:v14 forKeyedSubscript:@"gid1"];
  [v18 setObject:v15 forKeyedSubscript:@"gid2"];
  v22.receiver = self;
  v22.super_class = CTXPCEncryptDataRequest;
  v19 = [(CTXPCMessage *)&v22 initWithNamedArguments:v18];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCEncryptDataRequest *)self mcc];
  v9 = [(CTXPCEncryptDataRequest *)self mnc];
  v10 = [(CTXPCEncryptDataRequest *)self gid1];
  v11 = [(CTXPCEncryptDataRequest *)self gid2];
  v12 = [(CTXPCEncryptDataRequest *)self plainText];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__CTXPCEncryptDataRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A45F28;
  v13 = v7;
  v15 = v13;
  [v6 encryptDataWithCarrierIdentifiers:v8 mnc:v9 gid1:v10 gid2:v11 data:v12 completion:v14];
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
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCEncryptDataRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)mcc
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"mcc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)mnc
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"mnc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)gid1
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"gid1"];
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"gid2"];
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
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"plainText"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end