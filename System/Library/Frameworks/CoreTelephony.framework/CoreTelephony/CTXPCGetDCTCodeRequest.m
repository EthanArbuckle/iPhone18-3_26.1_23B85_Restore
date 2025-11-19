@interface CTXPCGetDCTCodeRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetDCTCodeRequest)init;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetDCTCodeRequest

- (CTXPCGetDCTCodeRequest)init
{
  v3.receiver = self;
  v3.super_class = CTXPCGetDCTCodeRequest;
  return [(CTXPCRequestMessage *)&v3 init];
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__CTXPCGetDCTCodeRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A45F28;
  v8 = v5;
  v6 = v5;
  [a3 getDCTCode:v7];
}

void __70__CTXPCGetDCTCodeRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[CTXPCGetDCTCodeResponse alloc] initWithCode:v7];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetDCTCodeRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end