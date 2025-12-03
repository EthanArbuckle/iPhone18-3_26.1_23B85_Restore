@interface CTXPCGetBandInfoRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetBandInfoRequest)initWithContext:(id)context type:(unint64_t)type;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetBandInfoRequest

- (CTXPCGetBandInfoRequest)initWithContext:(id)context type:(unint64_t)type
{
  v14[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v13 = @"type";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CTXPCGetBandInfoRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v12 initWithContext:contextCopy namedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"type"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  unsignedIntValue = [v10 unsignedIntValue];

  if (unsignedIntValue == 1)
  {
    context = [(CTXPCSubscriptionContextRequest *)self context];
    v13 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__CTXPCGetBandInfoRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v14[3] = &unk_1E6A488A0;
    v14[4] = completionHandlerCopy;
    [handlerCopy getBandInfo:context completion:v14];
    goto LABEL_5;
  }

  if (!unsignedIntValue)
  {
    context = [(CTXPCSubscriptionContextRequest *)self context];
    v13 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__CTXPCGetBandInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
    v15[3] = &unk_1E6A45FC8;
    v15[4] = completionHandlerCopy;
    [handlerCopy copyBandInfo:context completion:v15];
LABEL_5:
  }
}

void __71__CTXPCGetBandInfoRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = 0;
  if (v7 && !v5)
  {
    v6 = [[CTXPCGetBandInfoResponse alloc] initWithBandMasks:v7];
  }

  (*(*(a1 + 32) + 16))();
}

void __71__CTXPCGetBandInfoRequest_performRequestWithHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = 0;
  if (v7 && !v5)
  {
    v6 = [[CTXPCGetBandInfoResponse alloc] initWithBandInfo:v7];
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetBandInfoRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end