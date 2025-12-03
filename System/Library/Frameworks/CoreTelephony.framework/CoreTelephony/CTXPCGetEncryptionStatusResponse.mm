@interface CTXPCGetEncryptionStatusResponse
+ (id)allowedClassesForArguments;
- (CTEncryptionStatusInfo)info;
- (CTXPCGetEncryptionStatusResponse)initWithEncryptionStatusInfo:(id)info;
@end

@implementation CTXPCGetEncryptionStatusResponse

- (CTXPCGetEncryptionStatusResponse)initWithEncryptionStatusInfo:(id)info
{
  v11[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v10 = @"info";
  v11[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetEncryptionStatusResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTEncryptionStatusInfo)info
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"info"];
  v4 = CTThrowingCastIfClass<CTEncryptionStatusInfo>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetEncryptionStatusResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end