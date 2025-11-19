@interface CTXPCGetTransferPlansResponse
+ (id)allowedClassesForArguments;
- (BOOL)isFlexPolicyOn;
- (CTRemoteDeviceList)devices;
@end

@implementation CTXPCGetTransferPlansResponse

- (CTRemoteDeviceList)devices
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"devices"];
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

- (BOOL)isFlexPolicyOn
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"isFlexPolicyOn"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 BOOLValue];

  return v5;
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCGetTransferPlansResponse;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end