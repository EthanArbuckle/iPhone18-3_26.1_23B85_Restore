@interface CTXPCUpdateCellularPlanPropertiesRequest
+ (id)allowedClassesForArguments;
- (CTXPCUpdateCellularPlanPropertiesRequest)initWithProperties:(id)properties appName:(id)name appType:(unint64_t)type;
- (id)appName;
- (id)properties;
- (unint64_t)appType;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCUpdateCellularPlanPropertiesRequest

- (CTXPCUpdateCellularPlanPropertiesRequest)initWithProperties:(id)properties appName:(id)name appType:(unint64_t)type
{
  v17[3] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  nameCopy = name;
  v16[0] = @"properties";
  v16[1] = @"appName";
  v17[0] = propertiesCopy;
  v17[1] = nameCopy;
  v16[2] = @"appType";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v17[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v15.receiver = self;
  v15.super_class = CTXPCUpdateCellularPlanPropertiesRequest;
  v12 = [(CTXPCMessage *)&v15 initWithNamedArguments:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  properties = [(CTXPCUpdateCellularPlanPropertiesRequest *)self properties];
  appName = [(CTXPCUpdateCellularPlanPropertiesRequest *)self appName];
  appType = [(CTXPCUpdateCellularPlanPropertiesRequest *)self appType];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__CTXPCUpdateCellularPlanPropertiesRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v11 = completionHandlerCopy;
  v13 = v11;
  [handlerCopy updateCellularPlanProperties:properties appName:appName appType:appType completionHandler:v12];
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCUpdateCellularPlanPropertiesRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)properties
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"properties"];
  v4 = CTThrowingCastIfClass<CTCellularPlanProperties>(v3);

  return v4;
}

- (id)appName
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"appName"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (unint64_t)appType
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"appType"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end