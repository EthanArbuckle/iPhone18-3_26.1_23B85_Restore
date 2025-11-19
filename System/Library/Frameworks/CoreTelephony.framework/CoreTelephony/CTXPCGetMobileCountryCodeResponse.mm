@interface CTXPCGetMobileCountryCodeResponse
- (CTXPCGetMobileCountryCodeResponse)initWithMcc:(id)a3;
- (NSString)mcc;
@end

@implementation CTXPCGetMobileCountryCodeResponse

- (NSString)mcc
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"mcc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (CTXPCGetMobileCountryCodeResponse)initWithMcc:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"mcc";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetMobileCountryCodeResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end