@interface CTXPCSubscriptionContextRequest
+ (id)allowedClassesForArguments;
- (CTServiceDescriptor)descriptor;
- (CTXPCServiceSubscriptionContext)context;
@end

@implementation CTXPCSubscriptionContextRequest

- (CTServiceDescriptor)descriptor
{
  v2 = [(CTXPCSubscriptionContextRequest *)self context];
  if (v2)
  {
    v3 = [CTServiceDescriptor descriptorWithSubscriptionContext:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CTXPCServiceSubscriptionContext)context
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"context"];
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
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCSubscriptionContextRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end