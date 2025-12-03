@interface StolenDeviceProtectionExpressSettingDeferredHandler
- (_TtC5Setup51StolenDeviceProtectionExpressSettingDeferredHandler)init;
- (void)executeHandler:(id)handler;
@end

@implementation StolenDeviceProtectionExpressSettingDeferredHandler

- (void)executeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100046C74(sub_10004794C, v5);
}

- (_TtC5Setup51StolenDeviceProtectionExpressSettingDeferredHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end