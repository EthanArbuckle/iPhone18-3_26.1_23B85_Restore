@interface CTXPCHandleUserEnteredOtpRequest
+ (id)allowedClassesForArguments;
- (CTXPCHandleUserEnteredOtpRequest)initWithSourceIccid:(id)a3 otp:(id)a4;
- (id)otp;
- (id)sourceIccid;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCHandleUserEnteredOtpRequest

- (CTXPCHandleUserEnteredOtpRequest)initWithSourceIccid:(id)a3 otp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setObject:v6 forKeyedSubscript:@"sourceIccid"];
  [v8 setObject:v7 forKeyedSubscript:@"otp"];
  v11.receiver = self;
  v11.super_class = CTXPCHandleUserEnteredOtpRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCHandleUserEnteredOtpRequest *)self sourceIccid];
  v9 = [(CTXPCHandleUserEnteredOtpRequest *)self otp];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__CTXPCHandleUserEnteredOtpRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = v7;
  v12 = v10;
  [v6 handleUserEnteredOtp:v8 otp:v9 completion:v11];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCHandleUserEnteredOtpRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)sourceIccid
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"sourceIccid"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)otp
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"otp"];
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

@end