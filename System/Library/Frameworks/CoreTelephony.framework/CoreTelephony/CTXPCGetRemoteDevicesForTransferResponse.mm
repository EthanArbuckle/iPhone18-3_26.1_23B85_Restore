@interface CTXPCGetRemoteDevicesForTransferResponse
+ (id)allowedClassesForArguments;
- (CTRemoteDeviceList)devices;
- (CTXPCGetRemoteDevicesForTransferResponse)initWithDevices:(id)devices;
@end

@implementation CTXPCGetRemoteDevicesForTransferResponse

- (CTXPCGetRemoteDevicesForTransferResponse)initWithDevices:(id)devices
{
  v13[1] = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v5 = devicesCopy;
  if (devicesCopy)
  {
    v12 = @"devices";
    v13[0] = devicesCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10.receiver = self;
    v10.super_class = CTXPCGetRemoteDevicesForTransferResponse;
    v7 = [(CTXPCMessage *)&v10 initWithNamedArguments:v6];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CTXPCGetRemoteDevicesForTransferResponse;
    v7 = [(CTXPCMessage *)&v11 init];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CTRemoteDeviceList)devices
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"devices"];
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
  v5.super_class = &OBJC_METACLASS___CTXPCGetRemoteDevicesForTransferResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end