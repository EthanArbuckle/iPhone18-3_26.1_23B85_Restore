@interface TodayCardParagraphOverlayView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (_TtC8AppStore29TodayCardParagraphOverlayView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation TodayCardParagraphOverlayView

- (_TtC8AppStore29TodayCardParagraphOverlayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_isExpanded) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_sizeCategory) = 7;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_10011B1D8(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10011B4C8();
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label);
  selfCopy = self;
  accessibilityLabel = [v2 accessibilityLabel];
  if (accessibilityLabel)
  {
    v5 = accessibilityLabel;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setAccessibilityLabel:(id)label
{
  ObjectType = swift_getObjectType();
  if (label)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    label = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TodayCardParagraphOverlayView *)&v8 setAccessibilityLabel:label];
}

@end