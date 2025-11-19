@interface InAppPurchaseShowcaseLockupView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation InAppPurchaseShowcaseLockupView

- (void)layoutSubviews
{
  v2 = self;
  sub_1006AC354();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_1006AC6BC();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end