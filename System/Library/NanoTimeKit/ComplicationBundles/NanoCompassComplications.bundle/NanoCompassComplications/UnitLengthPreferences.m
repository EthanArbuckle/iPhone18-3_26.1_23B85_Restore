@interface UnitLengthPreferences
+ (_TtC24NanoCompassComplications21UnitLengthPreferences)shared;
- (BOOL)usesMetric;
- (_TtC24NanoCompassComplications21UnitLengthPreferences)init;
@end

@implementation UnitLengthPreferences

+ (_TtC24NanoCompassComplications21UnitLengthPreferences)shared
{
  if (qword_27E1C4A30 != -1)
  {
    swift_once();
  }

  v3 = static UnitLengthPreferences.shared;

  return v3;
}

- (_TtC24NanoCompassComplications21UnitLengthPreferences)init
{
  *(&self->super.isa + OBJC_IVAR____TtC24NanoCompassComplications21UnitLengthPreferences_overrideToMetric) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for UnitLengthPreferences();
  return [(UnitLengthPreferences *)&v3 init];
}

- (BOOL)usesMetric
{
  v2 = self;
  v3 = UnitLengthPreferences.usesMetric()();

  return v3;
}

@end