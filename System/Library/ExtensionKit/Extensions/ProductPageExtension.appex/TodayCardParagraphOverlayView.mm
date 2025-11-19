@interface TodayCardParagraphOverlayView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (_TtC20ProductPageExtension29TodayCardParagraphOverlayView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation TodayCardParagraphOverlayView

- (_TtC20ProductPageExtension29TodayCardParagraphOverlayView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_isExpanded) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_sizeCategory) = 7;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_10063229C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10063258C();
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label);
  v3 = self;
  v4 = [v2 accessibilityLabel];
  if (v4)
  {
    v5 = v4;
    sub_10076FF9C();

    v6 = sub_10076FF6C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setAccessibilityLabel:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_10076FF9C();
    v6 = self;
    a3 = sub_10076FF6C();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TodayCardParagraphOverlayView *)&v8 setAccessibilityLabel:a3];
}

@end