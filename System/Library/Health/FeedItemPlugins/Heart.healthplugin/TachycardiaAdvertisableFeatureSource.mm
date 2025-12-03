@interface TachycardiaAdvertisableFeatureSource
- (_TtC5Heart36TachycardiaAdvertisableFeatureSource)init;
- (void)dealloc;
- (void)heartRhythmAvailabilityDidUpdate;
@end

@implementation TachycardiaAdvertisableFeatureSource

- (void)dealloc
{
  v3 = *(*sub_29D693E2C((&self->super.isa + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider), *&self->heartSettingsUtilityProvider[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider]) + 16);
  selfCopy = self;
  [v3 removeHeartRhythmAvailabilityObserver_];
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for TachycardiaAdvertisableFeatureSource();
  [(TachycardiaAdvertisableFeatureSource *)&v5 dealloc];
}

- (_TtC5Heart36TachycardiaAdvertisableFeatureSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)heartRhythmAvailabilityDidUpdate
{
  selfCopy = self;
  sub_29D7752A8();
}

@end