@interface CTXPCQueryStartSessionRequest
+ (id)allowedClassesForArguments;
- (CTXPCQueryStartSessionRequest)init;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCQueryStartSessionRequest

- (CTXPCQueryStartSessionRequest)init
{
  v3.receiver = self;
  v3.super_class = CTXPCQueryStartSessionRequest;
  return [(CTXPCRequestMessage *)&v3 init];
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__CTXPCQueryStartSessionRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v8 = v5;
  v6 = v5;
  [a3 queryStartSessionRequest:v7];
}

+ (id)allowedClassesForArguments
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CTXPCQueryStartSessionRequest;
  v2 = objc_msgSendSuper2(&v4, sel_allowedClassesForArguments);

  return v2;
}

@end