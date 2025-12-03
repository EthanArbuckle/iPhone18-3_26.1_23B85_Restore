@interface CTXPCSubscriptionInfoMessage
+ (id)allowedClassesForArguments;
- (CTXPCServiceSubscriptionInfo)info;
- (CTXPCSubscriptionInfoMessage)initWithInfo:(id)info;
@end

@implementation CTXPCSubscriptionInfoMessage

- (CTXPCSubscriptionInfoMessage)initWithInfo:(id)info
{
  v13[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v12 = @"info";
    v13[0] = infoCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10.receiver = self;
    v10.super_class = CTXPCSubscriptionInfoMessage;
    v7 = [(CTXPCMessage *)&v10 initWithNamedArguments:v6];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CTXPCSubscriptionInfoMessage;
    v7 = [(CTXPCMessage *)&v11 init];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CTXPCServiceSubscriptionInfo)info
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"info"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSubscriptionInfoMessage;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end