@interface StackView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23ShelfKitCollectionViews9StackView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews9StackView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation StackView

- (_TtC23ShelfKitCollectionViews9StackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_distribution;
  *v7 = 0;
  v7[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_axis) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_alignment) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_spacing) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for StackView();
  return [(StackView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews9StackView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_distribution;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_axis) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_alignment) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_spacing) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StackView();
  v2 = v3.receiver;
  [(StackView *)&v3 layoutSubviews];
  sub_2D30F0();
  sub_2D326C();
  sub_2D3888();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_2D3BB0(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end