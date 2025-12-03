@interface CTXPCSendDeviceSettingsRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliMessageID)messageID;
- (CTLazuliSuggestedActionSettings)settings;
- (CTXPCSendDeviceSettingsRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d settings:(id)settings;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendDeviceSettingsRequest

- (CTXPCSendDeviceSettingsRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d settings:(id)settings
{
  v20[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  dCopy = d;
  settingsCopy = settings;
  v19[0] = @"destination";
  v19[1] = @"messageID";
  v20[0] = destinationCopy;
  v20[1] = dCopy;
  v19[2] = @"settings";
  v20[2] = settingsCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v18.receiver = self;
  v18.super_class = CTXPCSendDeviceSettingsRequest;
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

- (CTLazuliMessageID)messageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (CTLazuliSuggestedActionSettings)settings
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"settings"];
  v4 = CTThrowingCastIfClass<CTLazuliSuggestedActionSettings>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  destination = [(CTXPCSendDeviceSettingsRequest *)self destination];
  messageID = [(CTXPCSendDeviceSettingsRequest *)self messageID];
  settings = [(CTXPCSendDeviceSettingsRequest *)self settings];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__CTXPCSendDeviceSettingsRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v12 = completionHandlerCopy;
  v14 = v12;
  [handlerCopy sendDeviceSettings:context to:destination withMessageID:messageID withSetting:settings completion:v13];
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCSendDeviceSettingsRequest;
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