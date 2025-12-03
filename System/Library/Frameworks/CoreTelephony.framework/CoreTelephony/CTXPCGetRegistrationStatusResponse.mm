@interface CTXPCGetRegistrationStatusResponse
- (CTXPCGetRegistrationStatusResponse)initWithStatus:(id)status;
- (NSString)status;
@end

@implementation CTXPCGetRegistrationStatusResponse

- (NSString)status
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"status"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (CTXPCGetRegistrationStatusResponse)initWithStatus:(id)status
{
  v11[1] = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v10 = @"status";
  v11[0] = statusCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetRegistrationStatusResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end