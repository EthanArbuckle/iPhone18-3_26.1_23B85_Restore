@interface CTXPCReportChatBotSpamRequest
+ (id)allowedClassesForArguments;
- (CTLazuliChatBotSpamReportInformation)spamReportInfo;
- (CTLazuliDestination)destination;
- (CTLazuliOperationID)operationID;
- (CTXPCReportChatBotSpamRequest)initWithContext:(id)context destination:(id)destination spamReportInfo:(id)info operationID:(id)d;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCReportChatBotSpamRequest

- (CTXPCReportChatBotSpamRequest)initWithContext:(id)context destination:(id)destination spamReportInfo:(id)info operationID:(id)d
{
  v20[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  infoCopy = info;
  dCopy = d;
  v19[0] = @"destination";
  v19[1] = @"spamReportInfo";
  v20[0] = destinationCopy;
  v20[1] = infoCopy;
  v19[2] = @"operationID";
  v20[2] = dCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v18.receiver = self;
  v18.super_class = CTXPCReportChatBotSpamRequest;
  v15 = [(CTXPCSubscriptionContextRequest *)&v18 initWithContext:contextCopy namedArguments:v14];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CTLazuliDestination)destination
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (CTLazuliChatBotSpamReportInformation)spamReportInfo
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"spamReportInfo"];
  v4 = CTThrowingCastIfClass<CTLazuliChatBotSpamReportInformation>(v3);

  return v4;
}

- (CTLazuliOperationID)operationID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"operationID"];
  v4 = CTThrowingCastIfClass<CTLazuliOperationID>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  destination = [(CTXPCReportChatBotSpamRequest *)self destination];
  spamReportInfo = [(CTXPCReportChatBotSpamRequest *)self spamReportInfo];
  operationID = [(CTXPCReportChatBotSpamRequest *)self operationID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CTXPCReportChatBotSpamRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v12 = completionHandlerCopy;
  v14 = v12;
  [handlerCopy reportChatbotSpam:context forChatbot:destination withSpamReportInfo:spamReportInfo andOperationID:operationID completion:v13];
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCReportChatBotSpamRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end