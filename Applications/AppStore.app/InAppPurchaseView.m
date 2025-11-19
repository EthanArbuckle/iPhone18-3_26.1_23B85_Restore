@interface InAppPurchaseView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore17InAppPurchaseView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation InAppPurchaseView

- (void)layoutSubviews
{
  v2 = self;
  sub_1002EC1D0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC8AppStore17InAppPurchaseView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end