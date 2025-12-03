@interface CTXPCGetWirelessTechnologyResponse
- (CTXPCGetWirelessTechnologyResponse)initWithTechnology:(id)technology;
- (NSString)technology;
@end

@implementation CTXPCGetWirelessTechnologyResponse

- (CTXPCGetWirelessTechnologyResponse)initWithTechnology:(id)technology
{
  v11[1] = *MEMORY[0x1E69E9840];
  technologyCopy = technology;
  v10 = @"technology";
  v11[0] = technologyCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetWirelessTechnologyResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)technology
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"technology"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end