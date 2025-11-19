@interface SeparatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC23ShelfKitCollectionViews13SeparatorView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation SeparatorView

- (_TtC23ShelfKitCollectionViews13SeparatorView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13SeparatorView_lineColor;
  *(&self->super.super.super.isa + v3) = [objc_opt_self() separatorColor];
  result = sub_30D648();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = [(SeparatorView *)v4 traitCollection];
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
  v2 = self;
  v3 = [(SeparatorView *)v2 traitCollection];
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
  v2 = self;
  sub_19EAC4();
}

@end