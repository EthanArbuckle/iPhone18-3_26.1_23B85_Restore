@interface AMSUICommonView
- (AMSUICommonView)initWithCoder:(id)a3;
- (AMSUICommonView)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (id)tintColor;
@end

@implementation AMSUICommonView

- (AMSUICommonView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AMSUICommonView;
  v3 = [(AMSUICommonView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonView *)v3 _setup];
  }

  return v4;
}

- (AMSUICommonView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AMSUICommonView;
  v3 = [(AMSUICommonView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_edgesPropagatingSafeAreaInsetsToSubviews = 15;
    [(AMSUICommonView *)v3 _setup];
  }

  return v4;
}

- (id)tintColor
{
  v7.receiver = self;
  v7.super_class = AMSUICommonView;
  v2 = [(AMSUICommonView *)&v7 tintColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] ams_appTint];
  }

  v5 = v4;

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(AMSUICommonView *)self accessibilityElementLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AMSUICommonView;
    v5 = [(AMSUICommonView *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

@end