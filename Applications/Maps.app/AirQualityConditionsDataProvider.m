@interface AirQualityConditionsDataProvider
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
- (void)weatherLocationDataProvider:(id)a3 didChangeLocation:(id)a4;
@end

@implementation AirQualityConditionsDataProvider

- (void)weatherLocationDataProvider:(id)a3 didChangeLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10004EB04(a4);
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer;
  if (*(&self->super.isa + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer))
  {
    swift_getObjectType();
    v4 = self;
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(&self->super.isa + v3) = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for AirQualityConditionsDataProvider();
  [(AirQualityConditionsDataProvider *)&v6 dealloc];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_enabled);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_enabled) = a3;
  v4 = self;
  sub_1000DF310(v3);
}

@end