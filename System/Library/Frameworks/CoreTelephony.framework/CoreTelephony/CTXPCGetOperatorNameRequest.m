@interface CTXPCGetOperatorNameRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetOperatorNameRequest)initWithContext:(id)a3 type:(unint64_t)a4;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetOperatorNameRequest

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetOperatorNameRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (CTXPCGetOperatorNameRequest)initWithContext:(id)a3 type:(unint64_t)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = @"type";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCGetOperatorNameRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:v6 namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCMessage *)self namedArguments];
  v9 = [v8 objectForKey:@"type"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  v11 = [v10 unsignedIntValue];

  switch(v11)
  {
    case 2:
      v12 = [(CTXPCSubscriptionContextRequest *)self context];
      v13 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __75__CTXPCGetOperatorNameRequest_performRequestWithHandler_completionHandler___block_invoke_3;
      v14[3] = &unk_1E6A45F28;
      v14[4] = v7;
      [v6 copyAbbreviatedOperatorName:v12 completion:v14];
      goto LABEL_7;
    case 1:
      v12 = [(CTXPCSubscriptionContextRequest *)self context];
      v13 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __75__CTXPCGetOperatorNameRequest_performRequestWithHandler_completionHandler___block_invoke_2;
      v15[3] = &unk_1E6A45F28;
      v15[4] = v7;
      [v6 copyLocalizedOperatorName:v12 completion:v15];
      goto LABEL_7;
    case 0:
      v12 = [(CTXPCSubscriptionContextRequest *)self context];
      v13 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __75__CTXPCGetOperatorNameRequest_performRequestWithHandler_completionHandler___block_invoke;
      v16[3] = &unk_1E6A45F28;
      v16[4] = v7;
      [v6 copyOperatorName:v12 completion:v16];
LABEL_7:

      break;
  }
}

void __75__CTXPCGetOperatorNameRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [[CTXPCGetOperatorNameResponse alloc] initWithOperatorName:v7];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __75__CTXPCGetOperatorNameRequest_performRequestWithHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [[CTXPCGetOperatorNameResponse alloc] initWithOperatorName:v7];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __75__CTXPCGetOperatorNameRequest_performRequestWithHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [[CTXPCGetOperatorNameResponse alloc] initWithOperatorName:v7];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end