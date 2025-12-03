@interface AMSUICommonControl
- (AMSUICommonControl)initWithCoder:(id)coder;
- (AMSUICommonControl)initWithFrame:(CGRect)frame;
- (id)tintColor;
@end

@implementation AMSUICommonControl

- (AMSUICommonControl)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AMSUICommonControl;
  v3 = [(AMSUICommonControl *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonControl *)v3 _setup];
  }

  return v4;
}

- (AMSUICommonControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AMSUICommonControl;
  v3 = [(AMSUICommonControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonControl *)v3 _setup];
  }

  return v4;
}

- (id)tintColor
{
  v7.receiver = self;
  v7.super_class = AMSUICommonControl;
  tintColor = [(AMSUICommonControl *)&v7 tintColor];
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

@end