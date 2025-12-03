@interface CTXPCGetProvisioningServerURLResponse
- (CTXPCGetProvisioningServerURLResponse)initWithURL:(id)l;
- (NSString)url;
@end

@implementation CTXPCGetProvisioningServerURLResponse

- (CTXPCGetProvisioningServerURLResponse)initWithURL:(id)l
{
  v11[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v10 = @"url";
  v11[0] = lCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetProvisioningServerURLResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)url
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"url"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end