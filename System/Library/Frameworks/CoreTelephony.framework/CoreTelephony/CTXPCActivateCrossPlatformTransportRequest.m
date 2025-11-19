@interface CTXPCActivateCrossPlatformTransportRequest
+ (id)allowedClassesForArguments;
- (int)pid;
- (unint64_t)endpoint;
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCActivateCrossPlatformTransportRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCActivateCrossPlatformTransportRequest *)self endpoint];
  v9 = [(CTXPCActivateCrossPlatformTransportRequest *)self pid];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__CTXPCActivateCrossPlatformTransportRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = v7;
  v12 = v10;
  [v6 activateCrossPlatformTransport:v8 from:v9 completion:v11];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCActivateCrossPlatformTransportRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (unint64_t)endpoint
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"endpoint"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (int)pid
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"pid"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

@end