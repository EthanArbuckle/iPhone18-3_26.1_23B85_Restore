@interface SleepOnboardingChangeDetector
- (_TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector)init;
- (void)featureAvailabilityProvidingDidUpdatePairedDeviceCapability:(id)a3;
- (void)sleepStore:(id)a3 sleepEventRecordDidChange:(id)a4;
- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4;
@end

@implementation SleepOnboardingChangeDetector

- (_TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sleepStore:(id)a3 sleepEventRecordDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E61FF38(v7, "[%{public}s]: Sleep event record did change: %{public}s", &OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord);
}

- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E61FF38(v7, "[%{public}s]: Sleep settings did change: %{public}s", &OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings);
}

- (void)featureAvailabilityProvidingDidUpdatePairedDeviceCapability:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_29E61EE28(a3);
  sub_29E751758();
}

@end