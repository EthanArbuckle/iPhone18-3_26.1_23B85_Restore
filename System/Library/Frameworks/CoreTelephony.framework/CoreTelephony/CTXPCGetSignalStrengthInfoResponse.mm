@interface CTXPCGetSignalStrengthInfoResponse
+ (id)allowedClassesForArguments;
- (CTSignalStrengthInfo)signalInfo;
- (CTXPCGetSignalStrengthInfoResponse)initWithSignalStrengthInfo:(id)info;
@end

@implementation CTXPCGetSignalStrengthInfoResponse

- (CTXPCGetSignalStrengthInfoResponse)initWithSignalStrengthInfo:(id)info
{
  v11[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v10 = @"signalInfo";
  v11[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetSignalStrengthInfoResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTSignalStrengthInfo)signalInfo
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"signalInfo"];
  v4 = CTThrowingCastIfClass<CTSignalStrengthInfo>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetSignalStrengthInfoResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end