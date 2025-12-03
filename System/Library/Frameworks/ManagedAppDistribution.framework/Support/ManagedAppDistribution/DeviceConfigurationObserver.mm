@interface DeviceConfigurationObserver
- (_TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver)init;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation DeviceConfigurationObserver

- (_TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  selfCopy = self;
  sub_1003D4A14(sub_1003D52DC, v5);
}

@end