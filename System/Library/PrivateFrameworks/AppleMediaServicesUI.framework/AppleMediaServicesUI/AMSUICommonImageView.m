@interface AMSUICommonImageView
- (AMSUICommonImageView)initWithCoder:(id)a3;
- (AMSUICommonImageView)initWithFrame:(CGRect)a3;
@end

@implementation AMSUICommonImageView

- (AMSUICommonImageView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AMSUICommonImageView;
  v3 = [(AMSUICommonImageView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonImageView *)v3 _setup];
  }

  return v4;
}

- (AMSUICommonImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AMSUICommonImageView;
  v3 = [(AMSUICommonImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonImageView *)v3 _setup];
  }

  return v4;
}

@end