@interface FMAddButton
- (NSString)accessibilityLabel;
- (_TtC6FindMy11FMAddButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMAddButton

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel);
  v3 = self;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v3 = self;
  sub_10022D884();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10022DB0C();
}

- (_TtC6FindMy11FMAddButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end