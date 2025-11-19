@interface CTXPCGetTransferTypeResponse
+ (id)allowedClassesForArguments;
- (CTXPCGetTransferTypeResponse)initWithCapability:(unint64_t)a3;
- (unint64_t)capability;
@end

@implementation CTXPCGetTransferTypeResponse

- (CTXPCGetTransferTypeResponse)initWithCapability:(unint64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"capability";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetTransferTypeResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)capability
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"capability"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);

  v5 = [v4 unsignedIntegerValue];
  return v5;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetTransferTypeResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end