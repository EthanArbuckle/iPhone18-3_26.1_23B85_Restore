@interface RCPlatform
+ (BOOL)isIPad;
- (RCPlatform)init;
@end

@implementation RCPlatform

+ (BOOL)isIPad
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == 1;
}

- (RCPlatform)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Platform();
  return [(RCPlatform *)&v3 init];
}

@end