@interface RCPlatform
+ (BOOL)isIPad;
- (RCPlatform)init;
@end

@implementation RCPlatform

+ (BOOL)isIPad
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 1;
}

- (RCPlatform)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Platform();
  return [(RCPlatform *)&v3 init];
}

@end