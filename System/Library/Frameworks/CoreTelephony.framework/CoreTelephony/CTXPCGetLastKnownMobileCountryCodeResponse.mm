@interface CTXPCGetLastKnownMobileCountryCodeResponse
- (CTXPCGetLastKnownMobileCountryCodeResponse)initWithLastMcc:(id)mcc;
- (NSString)mcc;
@end

@implementation CTXPCGetLastKnownMobileCountryCodeResponse

- (CTXPCGetLastKnownMobileCountryCodeResponse)initWithLastMcc:(id)mcc
{
  v11[1] = *MEMORY[0x1E69E9840];
  mccCopy = mcc;
  v10 = @"mcc";
  v11[0] = mccCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetLastKnownMobileCountryCodeResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)mcc
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"mcc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end