@interface AMSUICommonView
- (AMSUICommonView)initWithCoder:(id)coder;
- (AMSUICommonView)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)tintColor;
@end

@implementation AMSUICommonView

- (AMSUICommonView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AMSUICommonView;
  v3 = [(AMSUICommonView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonView *)v3 _setup];
  }

  return v4;
}

- (AMSUICommonView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AMSUICommonView;
  v3 = [(AMSUICommonView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  tintColor = [(AMSUICommonView *)&v7 tintColor];
  v3 = tintColor;
  if (tintColor)
  {
    ams_appTint = tintColor;
  }

  else
  {
    ams_appTint = [MEMORY[0x1E69DC888] ams_appTint];
  }

  v5 = ams_appTint;

  return v5;
}

- (id)accessibilityLabel
{
  accessibilityElementLabel = [(AMSUICommonView *)self accessibilityElementLabel];
  v4 = accessibilityElementLabel;
  if (accessibilityElementLabel)
  {
    accessibilityLabel = accessibilityElementLabel;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AMSUICommonView;
    accessibilityLabel = [(AMSUICommonView *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel;

  return v6;
}

@end