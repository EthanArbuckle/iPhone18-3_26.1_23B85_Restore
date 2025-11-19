@interface AppShowcaseLockupView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation AppShowcaseLockupView

- (void)layoutSubviews
{
  v2 = self;
  sub_1002A8738();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_1002A8BD4();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end