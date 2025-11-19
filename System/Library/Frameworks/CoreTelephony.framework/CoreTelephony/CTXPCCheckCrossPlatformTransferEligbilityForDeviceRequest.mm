@interface CTXPCCheckCrossPlatformTransferEligbilityForDeviceRequest
+ (id)allowedClassesForArguments;
- (CTXPCCheckCrossPlatformTransferEligbilityForDeviceRequest)init;
- (id)code;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCCheckCrossPlatformTransferEligbilityForDeviceRequest

- (CTXPCCheckCrossPlatformTransferEligbilityForDeviceRequest)init
{
  v3.receiver = self;
  v3.super_class = CTXPCCheckCrossPlatformTransferEligbilityForDeviceRequest;
  return [(CTXPCRequestMessage *)&v3 init];
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __105__CTXPCCheckCrossPlatformTransferEligbilityForDeviceRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A45E38;
  v8 = v5;
  v6 = v5;
  [a3 checkCrossPlatformTransferEligbilityForDevice:v7];
}

void __105__CTXPCCheckCrossPlatformTransferEligbilityForDeviceRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v2 + 16))(v2);
}

+ (id)allowedClassesForArguments
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CTXPCCheckCrossPlatformTransferEligbilityForDeviceRequest;
  v2 = objc_msgSendSuper2(&v4, sel_allowedClassesForArguments);

  return v2;
}

- (id)code
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"IsEligible"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end