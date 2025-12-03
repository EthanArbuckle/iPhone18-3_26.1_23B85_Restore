@interface FMSettingSwitchView
- (BOOL)accessibilityActivate;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC6FindMy19FMSettingSwitchView)initWithFrame:(CGRect)frame;
- (void)subtitleLabelSelected;
- (void)switchChanged;
@end

@implementation FMSettingSwitchView

- (NSString)accessibilityValue
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = sub_10014B978();

  return v3 & 1;
}

- (void)switchChanged
{
  selfCopy = self;
  sub_10014C838();
}

- (void)subtitleLabelSelected
{
  v3 = self + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(self, ObjectType, v4);

    swift_unknownObjectRelease();
  }
}

- (_TtC6FindMy19FMSettingSwitchView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end