@interface CTXPCGetIMSRegistrationStatusResponse
+ (id)allowedClassesForArguments;
- (CTIMSRegistrationStatus)status;
- (CTXPCGetIMSRegistrationStatusResponse)initWithIMSRegistrationStatus:(id)status;
@end

@implementation CTXPCGetIMSRegistrationStatusResponse

- (CTXPCGetIMSRegistrationStatusResponse)initWithIMSRegistrationStatus:(id)status
{
  v11[1] = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v10 = @"status";
  v11[0] = statusCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetIMSRegistrationStatusResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTIMSRegistrationStatus)status
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"status"];
  v4 = CTThrowingCastIfClass<CTIMSRegistrationStatus>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetIMSRegistrationStatusResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end