@interface BundleChildView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation BundleChildView

- (void)layoutSubviews
{
  v2 = self;
  sub_10004BDF0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_10004C814();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end