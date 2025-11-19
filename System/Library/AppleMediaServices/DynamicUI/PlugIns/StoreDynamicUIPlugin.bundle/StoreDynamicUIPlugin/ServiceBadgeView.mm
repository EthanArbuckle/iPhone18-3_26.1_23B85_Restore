@interface ServiceBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation ServiceBadgeView

- (void)layoutSubviews
{
  v2 = self;
  sub_E6984();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_E6BB4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end