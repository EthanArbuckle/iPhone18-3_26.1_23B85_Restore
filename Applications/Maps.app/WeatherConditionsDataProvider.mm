@interface WeatherConditionsDataProvider
- (UITraitEnvironment)traitEnvironment;
- (_TtC4Maps29WeatherConditionsDataProvider)init;
- (void)setEnabled:(BOOL)enabled;
- (void)setTraitEnvironment:(id)environment;
- (void)weatherLocationDataProvider:(id)provider didChangeLocation:(id)location;
@end

@implementation WeatherConditionsDataProvider

- (void)weatherLocationDataProvider:(id)provider didChangeLocation:(id)location
{
  providerCopy = provider;
  locationCopy = location;
  selfCopy = self;
  sub_10004ED24(location);
}

- (UITraitEnvironment)traitEnvironment
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTraitEnvironment:(id)environment
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_traitEnvironment) = environment;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setEnabled:(BOOL)enabled
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_enabled);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_enabled) = enabled;
  selfCopy = self;
  sub_10038FBA0(v3);
}

- (_TtC4Maps29WeatherConditionsDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end