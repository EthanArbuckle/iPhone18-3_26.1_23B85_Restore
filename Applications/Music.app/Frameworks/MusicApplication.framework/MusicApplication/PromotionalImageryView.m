@interface PromotionalImageryView
- (_TtC16MusicApplication22PromotionalImageryView)initWithCoder:(id)a3;
- (_TtC16MusicApplication22PromotionalImageryView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PromotionalImageryView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PromotionalImageryView *)&v3 layoutSubviews];
  sub_EC654(0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(PromotionalImageryView *)&v6 traitCollectionDidChange:v4];
  [v5 setNeedsLayout];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_ECC34(a4, x, y);

  return v10;
}

- (_TtC16MusicApplication22PromotionalImageryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_upsellBannerView) = 0;
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_normalizedContentOffset);
  *v9 = 0;
  v9[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_contentInsetAdditions) = UIOffsetZero;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(PromotionalImageryView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication22PromotionalImageryView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_ECFF8(v3);

  return v4;
}

@end