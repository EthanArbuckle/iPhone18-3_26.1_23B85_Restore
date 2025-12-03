@interface AirQualityConditionsDataProvider
- (void)dealloc;
- (void)setEnabled:(BOOL)enabled;
- (void)weatherLocationDataProvider:(id)provider didChangeLocation:(id)location;
@end

@implementation AirQualityConditionsDataProvider

- (void)weatherLocationDataProvider:(id)provider didChangeLocation:(id)location
{
  providerCopy = provider;
  locationCopy = location;
  selfCopy = self;
  sub_10004EB04(location);
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer;
  if (*(&self->super.isa + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer))
  {
    swift_getObjectType();
    selfCopy = self;
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(&self->super.isa + v3) = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for AirQualityConditionsDataProvider();
  [(AirQualityConditionsDataProvider *)&v6 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_enabled);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_enabled) = enabled;
  selfCopy = self;
  sub_1000DF310(v3);
}

@end