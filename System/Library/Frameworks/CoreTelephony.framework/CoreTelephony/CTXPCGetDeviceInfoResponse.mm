@interface CTXPCGetDeviceInfoResponse
+ (id)allowedClassesForArguments;
- (CTXPCGetDeviceInfoResponse)initWithInfo:(id)info;
- (NSDictionary)deviceInfo;
@end

@implementation CTXPCGetDeviceInfoResponse

- (CTXPCGetDeviceInfoResponse)initWithInfo:(id)info
{
  v11[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v10 = @"info";
  v11[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetDeviceInfoResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSDictionary)deviceInfo
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"info"];
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

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCGetDeviceInfoResponse;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end