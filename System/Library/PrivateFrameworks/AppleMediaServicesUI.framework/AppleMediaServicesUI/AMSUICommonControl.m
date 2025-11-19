@interface AMSUICommonControl
- (AMSUICommonControl)initWithCoder:(id)a3;
- (AMSUICommonControl)initWithFrame:(CGRect)a3;
- (id)tintColor;
@end

@implementation AMSUICommonControl

- (AMSUICommonControl)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AMSUICommonControl;
  v3 = [(AMSUICommonControl *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonControl *)v3 _setup];
  }

  return v4;
}

- (AMSUICommonControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AMSUICommonControl;
  v3 = [(AMSUICommonControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v2 = [(AMSUICommonControl *)&v7 tintColor];
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

@end