@interface CTXPCGetRemoteDeviceForTransferResponse
+ (id)allowedClassesForArguments;
- (CTRemoteDevice)device;
- (CTXPCGetRemoteDeviceForTransferResponse)initWithDevice:(id)device;
@end

@implementation CTXPCGetRemoteDeviceForTransferResponse

- (CTXPCGetRemoteDeviceForTransferResponse)initWithDevice:(id)device
{
  v11[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v10 = @"device";
  v11[0] = deviceCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetRemoteDeviceForTransferResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTRemoteDevice)device
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"device"];
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
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetRemoteDeviceForTransferResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end