@interface CTXPCGetWirelessTechnologyResponse
- (CTXPCGetWirelessTechnologyResponse)initWithTechnology:(id)a3;
- (NSString)technology;
@end

@implementation CTXPCGetWirelessTechnologyResponse

- (CTXPCGetWirelessTechnologyResponse)initWithTechnology:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"technology";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetWirelessTechnologyResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)technology
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"technology"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end