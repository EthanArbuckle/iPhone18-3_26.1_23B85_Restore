@interface CTXPCGetMobileNetworkCodeResponse
- (CTXPCGetMobileNetworkCodeResponse)initWithMnc:(id)mnc;
- (NSString)mnc;
@end

@implementation CTXPCGetMobileNetworkCodeResponse

- (NSString)mnc
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"mnc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (CTXPCGetMobileNetworkCodeResponse)initWithMnc:(id)mnc
{
  v11[1] = *MEMORY[0x1E69E9840];
  mncCopy = mnc;
  v10 = @"mnc";
  v11[0] = mncCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetMobileNetworkCodeResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end