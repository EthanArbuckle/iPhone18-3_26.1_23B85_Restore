@interface AMSUICommonImageView
- (AMSUICommonImageView)initWithCoder:(id)coder;
- (AMSUICommonImageView)initWithFrame:(CGRect)frame;
@end

@implementation AMSUICommonImageView

- (AMSUICommonImageView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AMSUICommonImageView;
  v3 = [(AMSUICommonImageView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonImageView *)v3 _setup];
  }

  return v4;
}

- (AMSUICommonImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AMSUICommonImageView;
  v3 = [(AMSUICommonImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonImageView *)v3 _setup];
  }

  return v4;
}

@end