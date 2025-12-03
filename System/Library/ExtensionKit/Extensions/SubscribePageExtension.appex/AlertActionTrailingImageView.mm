@interface AlertActionTrailingImageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension28AlertActionTrailingImageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AlertActionTrailingImageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100508088();
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for AlertActionTrailingImageView();
  v4 = v8.receiver;
  changeCopy = change;
  [(AlertActionTrailingImageView *)&v8 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (!changeCopy || layoutDirection != [changeCopy layoutDirection])
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
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label];
  tintColor = [v2 tintColor];
  [v3 setTextColor:tintColor];
}

- (CGSize)intrinsicContentSize
{
  [(AlertActionTrailingImageView *)self sizeThatFits:UIViewNoIntrinsicMetric, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_100508614(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC22SubscribePageExtension28AlertActionTrailingImageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end