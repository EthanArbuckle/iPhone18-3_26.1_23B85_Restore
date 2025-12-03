@interface CTXPCDeleteZoneRequest
+ (id)allowedClassesForArguments;
- (CTXPCDeleteZoneRequest)initWithZone:(id)zone;
- (id)zoneID;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCDeleteZoneRequest

- (CTXPCDeleteZoneRequest)initWithZone:(id)zone
{
  v11[1] = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  v10 = @"zone";
  v11[0] = zoneCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCDeleteZoneRequest;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  zoneID = [(CTXPCDeleteZoneRequest *)self zoneID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CTXPCDeleteZoneRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A45E38;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy deleteZone:zoneID completion:v10];
}

void __70__CTXPCDeleteZoneRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v2 + 16))(v2);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCDeleteZoneRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)zoneID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"zone"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end