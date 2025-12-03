@interface ProductTitleView.IconTitleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation ProductTitleView.IconTitleView

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1004F81B4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004F91C8();
}

@end