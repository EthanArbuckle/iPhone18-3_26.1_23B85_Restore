@interface CTXPCtransferPlanWithCardDataRequest
+ (id)allowedClassesForArguments;
- (CTXPCtransferPlanWithCardDataRequest)initWithCardData:(id)a3 flowType:(unint64_t)a4;
- (id)cardData;
- (unint64_t)flowType;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCtransferPlanWithCardDataRequest

- (CTXPCtransferPlanWithCardDataRequest)initWithCardData:(id)a3 flowType:(unint64_t)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13[0] = @"cardData";
  v13[1] = @"flowType";
  v14[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = CTXPCtransferPlanWithCardDataRequest;
  v9 = [(CTXPCMessage *)&v12 initWithNamedArguments:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCtransferPlanWithCardDataRequest *)self cardData];
  v9 = [(CTXPCtransferPlanWithCardDataRequest *)self flowType];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__CTXPCtransferPlanWithCardDataRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = v7;
  v12 = v10;
  [v6 transferPlanWithCardData:v8 flowType:v9 completion:v11];
}

void __84__CTXPCtransferPlanWithCardDataRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(CTXPCResponseMessage);
  (*(v3 + 16))(v3, v4, v5);
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCtransferPlanWithCardDataRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)cardData
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"cardData"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (unint64_t)flowType
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"flowType"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

@end