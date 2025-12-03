@interface NavigationModeGuidanceConfiguration
- (NSString)description;
- (_TtC4Maps35NavigationModeGuidanceConfiguration)init;
- (_TtC4Maps35NavigationModeGuidanceConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NavigationModeGuidanceConfiguration

- (NSString)description
{
  selfCopy = self;
  sub_1001784EC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC4Maps35NavigationModeGuidanceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_10017A4E0(coderCopy);
  v5 = v4;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_10017881C(coderCopy);
}

- (_TtC4Maps35NavigationModeGuidanceConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end