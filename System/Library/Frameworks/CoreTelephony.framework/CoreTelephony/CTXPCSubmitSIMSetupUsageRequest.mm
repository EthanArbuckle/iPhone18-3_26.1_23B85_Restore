@interface CTXPCSubmitSIMSetupUsageRequest
+ (id)allowedClassesForArguments;
- (CTXPCSubmitSIMSetupUsageRequest)initWithUsage:(id)usage;
- (id)usage;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSubmitSIMSetupUsageRequest

- (CTXPCSubmitSIMSetupUsageRequest)initWithUsage:(id)usage
{
  v11[1] = *MEMORY[0x1E69E9840];
  usageCopy = usage;
  v10 = @"usage";
  v11[0] = usageCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCSubmitSIMSetupUsageRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  usage = [(CTXPCSubmitSIMSetupUsageRequest *)self usage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__CTXPCSubmitSIMSetupUsageRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy submitSimSetupUsage:usage completion:v10];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSubmitSIMSetupUsageRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)usage
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"usage"];
  v4 = CTThrowingCastIfClass<CTSimSetupUsage>(v3);

  return v4;
}

@end