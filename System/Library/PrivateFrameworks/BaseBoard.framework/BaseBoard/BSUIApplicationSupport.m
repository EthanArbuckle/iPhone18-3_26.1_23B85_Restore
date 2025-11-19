@interface BSUIApplicationSupport
+ (id)GSEventPortNameForBundleID:(id)a3;
+ (id)defaultEnvironment;
+ (id)resolveServiceName:(id)a3;
@end

@implementation BSUIApplicationSupport

+ (id)GSEventPortNameForBundleID:(id)a3
{
  v3 = [a3 stringByAppendingString:@".gsEvents"];

  return v3;
}

+ (id)resolveServiceName:(id)a3
{
  v3 = a3;
  v4 = +[BSMachServiceAliases environmentAliases];
  v5 = [v4 resolveMachService:v3];

  return v5;
}

+ (id)defaultEnvironment
{
  v2 = +[BSMachServiceAliases environmentAliases];
  v3 = [v2 environmentRepresentation];

  return v3;
}

@end