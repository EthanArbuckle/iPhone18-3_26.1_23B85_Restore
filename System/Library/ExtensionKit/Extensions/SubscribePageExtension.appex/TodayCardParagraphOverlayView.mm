@interface TodayCardParagraphOverlayView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (_TtC22SubscribePageExtension29TodayCardParagraphOverlayView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation TodayCardParagraphOverlayView

- (_TtC22SubscribePageExtension29TodayCardParagraphOverlayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_isExpanded) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_sizeCategory) = 7;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_100046820(width);
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
  sub_100046B10();
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_label);
  selfCopy = self;
  accessibilityLabel = [v2 accessibilityLabel];
  if (accessibilityLabel)
  {
    v5 = accessibilityLabel;
    sub_100753094();

    v6 = sub_100753064();
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
    sub_100753094();
    selfCopy = self;
    label = sub_100753064();
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