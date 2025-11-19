@interface CTXPCGetDCTCodeResponse
+ (id)allowedClassesForArguments;
- (CTXPCGetDCTCodeResponse)initWithCode:(id)a3;
- (NSString)code;
@end

@implementation CTXPCGetDCTCodeResponse

- (CTXPCGetDCTCodeResponse)initWithCode:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"code";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetDCTCodeResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)code
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"code"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetDCTCodeResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end