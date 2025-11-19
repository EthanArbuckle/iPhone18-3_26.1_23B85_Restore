@interface CTXPCLoadSimSetupInfoResponse
+ (id)allowedClassesForArguments;
- (CTXPCLoadSimSetupInfoResponse)initWithInfo:(id)a3;
- (NSObject)info;
@end

@implementation CTXPCLoadSimSetupInfoResponse

- (CTXPCLoadSimSetupInfoResponse)initWithInfo:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = @"info";
    v13[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11.receiver = self;
    v11.super_class = CTXPCLoadSimSetupInfoResponse;
    v7 = [(CTXPCMessage *)&v11 initWithNamedArguments:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CTXPCLoadSimSetupInfoResponse;
    v7 = [(CTXPCMessage *)&v10 initWithNamedArguments:MEMORY[0x1E695E0F8]];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)allowedClassesForArguments
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCLoadSimSetupInfoResponse;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSObject)info
{
  v3 = [(CTXPCMessage *)self namedArguments];
  v4 = [v3 objectForKeyedSubscript:@"info"];

  if (v4)
  {
    v5 = [(CTXPCMessage *)self namedArguments];
    v6 = [v5 objectForKeyedSubscript:@"info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end