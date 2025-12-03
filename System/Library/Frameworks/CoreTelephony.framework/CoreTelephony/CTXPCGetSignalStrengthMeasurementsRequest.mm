@interface CTXPCGetSignalStrengthMeasurementsRequest
+ (id)allowedClassesForArguments;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetSignalStrengthMeasurementsRequest

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetSignalStrengthMeasurementsRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"synchronous"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  bOOLValue = [v10 BOOLValue];

  descriptor = [(CTXPCSubscriptionContextRequest *)self descriptor];
  if (bOOLValue)
  {
    v13 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __89__CTXPCGetSignalStrengthMeasurementsRequest_performRequestWithHandler_completionHandler___block_invoke;
    v15[3] = &unk_1E6A488F0;
    v15[4] = completionHandlerCopy;
    [handlerCopy getSignalStrengthMeasurements:descriptor completion:v15];
  }

  else
  {
    v13 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__CTXPCGetSignalStrengthMeasurementsRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v14[3] = &unk_1E6A488F0;
    v14[4] = completionHandlerCopy;
    [handlerCopy getSignalStrengthMeasurementsAsync:descriptor completion:v14];
  }
}

void __89__CTXPCGetSignalStrengthMeasurementsRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = 0;
  if (v7 && !v5)
  {
    v6 = [[CTXPCGetSignalStrengthMeasurementsResponse alloc] initWithSignalStrengthMeasurements:v7];
  }

  (*(*(a1 + 32) + 16))();
}

void __89__CTXPCGetSignalStrengthMeasurementsRequest_performRequestWithHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = 0;
  if (v7 && !v5)
  {
    v6 = [[CTXPCGetSignalStrengthMeasurementsResponse alloc] initWithSignalStrengthMeasurements:v7];
  }

  (*(*(a1 + 32) + 16))();
}

@end