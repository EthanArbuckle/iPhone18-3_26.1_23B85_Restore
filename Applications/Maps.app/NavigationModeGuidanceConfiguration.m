@interface NavigationModeGuidanceConfiguration
- (NSString)description;
- (_TtC4Maps35NavigationModeGuidanceConfiguration)init;
- (_TtC4Maps35NavigationModeGuidanceConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NavigationModeGuidanceConfiguration

- (NSString)description
{
  v2 = self;
  sub_1001784EC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC4Maps35NavigationModeGuidanceConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  sub_10017A4E0(v3);
  v5 = v4;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10017881C(v4);
}

- (_TtC4Maps35NavigationModeGuidanceConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end