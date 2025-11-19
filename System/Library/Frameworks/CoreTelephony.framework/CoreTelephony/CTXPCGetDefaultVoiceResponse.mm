@interface CTXPCGetDefaultVoiceResponse
+ (id)allowedClassesForArguments;
- (CTXPCServiceSubscriptionContext)context;
@end

@implementation CTXPCGetDefaultVoiceResponse

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetDefaultVoiceResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (CTXPCServiceSubscriptionContext)context
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"context"];
  v4 = CTThrowingCastIfClass<CTXPCServiceSubscriptionContext>(v3);

  return v4;
}

@end