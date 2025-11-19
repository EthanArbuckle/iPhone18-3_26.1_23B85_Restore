@interface AUAPlugin
+ (id)sharedNonremotePlugin;
+ (id)sharedRemotePlugin;
- (AUAPlugin)init;
@end

@implementation AUAPlugin

+ (id)sharedRemotePlugin
{
  v2 = sub_10009BF28(a1, a2);

  return v2;
}

+ (id)sharedNonremotePlugin
{
  v2 = sub_10009C1A4(a1, a2);

  return v2;
}

- (AUAPlugin)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end