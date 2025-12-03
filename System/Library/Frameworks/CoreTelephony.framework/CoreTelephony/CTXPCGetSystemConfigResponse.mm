@interface CTXPCGetSystemConfigResponse
+ (id)allowedClassesForArguments;
- (CTLazuliSystemConfiguration)config;
- (CTXPCGetSystemConfigResponse)initWithSystemConfiguration:(id)configuration;
@end

@implementation CTXPCGetSystemConfigResponse

- (CTXPCGetSystemConfigResponse)initWithSystemConfiguration:(id)configuration
{
  v11[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v10 = @"config";
  v11[0] = configurationCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetSystemConfigResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTLazuliSystemConfiguration)config
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"config"];
  v4 = CTThrowingCastIfClass<CTLazuliSystemConfiguration>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetSystemConfigResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end