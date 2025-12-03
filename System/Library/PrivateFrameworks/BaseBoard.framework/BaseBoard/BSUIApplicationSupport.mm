@interface BSUIApplicationSupport
+ (id)GSEventPortNameForBundleID:(id)d;
+ (id)defaultEnvironment;
+ (id)resolveServiceName:(id)name;
@end

@implementation BSUIApplicationSupport

+ (id)GSEventPortNameForBundleID:(id)d
{
  v3 = [d stringByAppendingString:@".gsEvents"];

  return v3;
}

+ (id)resolveServiceName:(id)name
{
  nameCopy = name;
  v4 = +[BSMachServiceAliases environmentAliases];
  v5 = [v4 resolveMachService:nameCopy];

  return v5;
}

+ (id)defaultEnvironment
{
  v2 = +[BSMachServiceAliases environmentAliases];
  environmentRepresentation = [v2 environmentRepresentation];

  return environmentRepresentation;
}

@end