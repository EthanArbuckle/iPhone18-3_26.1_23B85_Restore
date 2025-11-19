@interface WeatherConditionsDataProvider
- (UITraitEnvironment)traitEnvironment;
- (_TtC4Maps29WeatherConditionsDataProvider)init;
- (void)setEnabled:(BOOL)a3;
- (void)setTraitEnvironment:(id)a3;
- (void)weatherLocationDataProvider:(id)a3 didChangeLocation:(id)a4;
@end

@implementation WeatherConditionsDataProvider

- (void)weatherLocationDataProvider:(id)a3 didChangeLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10004ED24(a4);
}

- (UITraitEnvironment)traitEnvironment
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTraitEnvironment:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_traitEnvironment) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setEnabled:(BOOL)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_enabled);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_enabled) = a3;
  v4 = self;
  sub_10038FBA0(v3);
}

- (_TtC4Maps29WeatherConditionsDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end