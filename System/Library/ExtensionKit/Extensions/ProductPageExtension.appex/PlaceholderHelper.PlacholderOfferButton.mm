@interface PlaceholderHelper.PlacholderOfferButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCV20ProductPageExtension17PlaceholderHelperP33_1824C6005CF15D4BC8A78ADADD15571721PlacholderOfferButton)initWithCoder:(id)coder;
- (_TtCV20ProductPageExtension17PlaceholderHelperP33_1824C6005CF15D4BC8A78ADADD15571721PlacholderOfferButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PlaceholderHelper.PlacholderOfferButton

- (_TtCV20ProductPageExtension17PlaceholderHelperP33_1824C6005CF15D4BC8A78ADADD15571721PlacholderOfferButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtCV20ProductPageExtension17PlaceholderHelperP33_1824C6005CF15D4BC8A78ADADD15571721PlacholderOfferButton_button;
  v9 = [objc_allocWithZone(UIView) init];
  secondarySystemBackgroundColor = [objc_opt_self() secondarySystemBackgroundColor];
  [v9 setBackgroundColor:secondarySystemBackgroundColor];

  *(&self->super.super.super.isa + v8) = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  height = [(PlaceholderHelper.PlacholderOfferButton *)&v13 initWithFrame:x, y, width, height];
  [(PlaceholderHelper.PlacholderOfferButton *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtCV20ProductPageExtension17PlaceholderHelperP33_1824C6005CF15D4BC8A78ADADD15571721PlacholderOfferButton_button)];
  return height;
}

- (_TtCV20ProductPageExtension17PlaceholderHelperP33_1824C6005CF15D4BC8A78ADADD15571721PlacholderOfferButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtCV20ProductPageExtension17PlaceholderHelperP33_1824C6005CF15D4BC8A78ADADD15571721PlacholderOfferButton_button;
  v5 = [objc_allocWithZone(UIView) init];
  secondarySystemBackgroundColor = [objc_opt_self() secondarySystemBackgroundColor];
  [v5 setBackgroundColor:secondarySystemBackgroundColor];

  *(&self->super.super.super.isa + v4) = v5;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_1004B9924();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004B901C();
}

@end