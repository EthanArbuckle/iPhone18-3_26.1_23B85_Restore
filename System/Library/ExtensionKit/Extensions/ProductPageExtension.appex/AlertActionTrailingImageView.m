@interface AlertActionTrailingImageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension28AlertActionTrailingImageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AlertActionTrailingImageView

- (void)layoutSubviews
{
  v2 = self;
  sub_1005E3A6C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for AlertActionTrailingImageView();
  v4 = v8.receiver;
  v5 = a3;
  [(AlertActionTrailingImageView *)&v8 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = [v6 layoutDirection];

  if (!v5 || v7 != [v5 layoutDirection])
  {
    [v4 setNeedsLayout];
  }
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AlertActionTrailingImageView();
  v2 = v5.receiver;
  [(AlertActionTrailingImageView *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label];
  v4 = [v2 tintColor];
  [v3 setTextColor:v4];
}

- (CGSize)intrinsicContentSize
{
  [(AlertActionTrailingImageView *)self sizeThatFits:UIViewNoIntrinsicMetric, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1005E3FF8(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC20ProductPageExtension28AlertActionTrailingImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end