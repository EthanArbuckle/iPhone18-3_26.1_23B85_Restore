@interface SeparatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23ShelfKitCollectionViews13SeparatorView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation SeparatorView

- (_TtC23ShelfKitCollectionViews13SeparatorView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13SeparatorView_lineColor;
  *(&self->super.super.super.isa + v3) = [objc_opt_self() separatorColor];
  result = sub_30D648();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(SeparatorView *)selfCopy traitCollection];
  sub_3043A8();
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  traitCollection = [(SeparatorView *)selfCopy traitCollection];
  sub_3043A8();
  v5 = v4;

  v6 = UIViewNoIntrinsicMetric;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19EAC4();
}

@end