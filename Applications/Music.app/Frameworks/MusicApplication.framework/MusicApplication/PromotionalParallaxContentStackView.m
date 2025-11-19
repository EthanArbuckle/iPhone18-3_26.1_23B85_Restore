@interface PromotionalParallaxContentStackView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicApplication35PromotionalParallaxContentStackView)initWithCoder:(id)a3;
- (_TtC16MusicApplication35PromotionalParallaxContentStackView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PromotionalParallaxContentStackView

- (_TtC16MusicApplication35PromotionalParallaxContentStackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_interitemSpacing) = 0x4034000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_lastKnownHeight) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PromotionalParallaxContentStackView();
  return [(PromotionalParallaxContentStackView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication35PromotionalParallaxContentStackView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_interitemSpacing) = 0x4034000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_lastKnownHeight) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_34AF78();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_34B68C(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_34B68C(0.0);
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PromotionalParallaxContentStackView();
  v4 = a3;
  v5 = v6.receiver;
  [(PromotionalParallaxContentStackView *)&v6 traitCollectionDidChange:v4];
  sub_34AEA0(0);
}

@end