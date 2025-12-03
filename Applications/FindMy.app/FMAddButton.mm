@interface FMAddButton
- (NSString)accessibilityLabel;
- (_TtC6FindMy11FMAddButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMAddButton

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel);
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

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  sub_10022D884();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10022DB0C();
}

- (_TtC6FindMy11FMAddButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end