@interface SleepOnboardingChangeDetector
- (_TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector)init;
- (void)featureAvailabilityProvidingDidUpdatePairedDeviceCapability:(id)capability;
- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change;
- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change;
@end

@implementation SleepOnboardingChangeDetector

- (_TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_29E61FF38(changeCopy, "[%{public}s]: Sleep event record did change: %{public}s", &OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord);
}

- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_29E61FF38(changeCopy, "[%{public}s]: Sleep settings did change: %{public}s", &OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings);
}

- (void)featureAvailabilityProvidingDidUpdatePairedDeviceCapability:(id)capability
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_29E61EE28(capability);
  sub_29E751758();
}

@end