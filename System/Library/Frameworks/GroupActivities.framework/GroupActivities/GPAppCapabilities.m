@interface GPAppCapabilities
- (BOOL)supportsSharePlay;
- (BOOL)supportsStartFromApp;
- (GPAppCapabilities)init;
@end

@implementation GPAppCapabilities

- (BOOL)supportsSharePlay
{
  v2 = self;
  v3 = AppCapabilities.supportsSharePlay.getter();

  return v3 & 1;
}

- (BOOL)supportsStartFromApp
{
  v2 = self;
  v3 = AppCapabilities.supportsStartFromApp.getter();

  return v3 & 1;
}

- (GPAppCapabilities)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end