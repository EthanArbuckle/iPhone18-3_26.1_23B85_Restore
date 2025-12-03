@interface BradycardiaAdvertisableFeatureSource
- (_TtC5Heart36BradycardiaAdvertisableFeatureSource)init;
- (void)dealloc;
- (void)heartRhythmAvailabilityDidUpdate;
@end

@implementation BradycardiaAdvertisableFeatureSource

- (void)dealloc
{
  v3 = *(*sub_29D693E2C((&self->super.isa + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider), *&self->heartSettingsUtilityProvider[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider]) + 16);
  selfCopy = self;
  [v3 removeHeartRhythmAvailabilityObserver_];
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for BradycardiaAdvertisableFeatureSource();
  [(BradycardiaAdvertisableFeatureSource *)&v5 dealloc];
}

- (_TtC5Heart36BradycardiaAdvertisableFeatureSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)heartRhythmAvailabilityDidUpdate
{
  selfCopy = self;
  sub_29D750870();
}

@end