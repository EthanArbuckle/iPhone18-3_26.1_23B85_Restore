@interface JSMultiChoiceViewController.FooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation JSMultiChoiceViewController.FooterView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_49ACDC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  [(JSMultiChoiceViewController.FooterView *)selfCopy music_inheritedLayoutInsets];
  UIEdgeInsetsInsetRect(0.0, 0.0, width, height, v6, v7);
  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label) sizeThatFits:{v8, v9}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end