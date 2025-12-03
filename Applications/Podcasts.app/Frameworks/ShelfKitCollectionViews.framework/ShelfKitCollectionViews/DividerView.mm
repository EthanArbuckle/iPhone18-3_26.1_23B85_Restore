@interface DividerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23ShelfKitCollectionViews11DividerView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation DividerView

- (_TtC23ShelfKitCollectionViews11DividerView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_separatorInset);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_style) = 2;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_style);
  selfCopy = self;
  v6 = sub_2349EC(v4, selfCopy);

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_233CF4();
}

@end