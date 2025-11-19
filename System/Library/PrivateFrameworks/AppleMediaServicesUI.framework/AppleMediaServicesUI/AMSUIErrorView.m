@interface AMSUIErrorView
+ (id)_sanitizeTitle:(id)a3;
- (AMSUIErrorView)initWithFrame:(CGRect)a3 title:(id)a4;
- (NSString)buttonTitle;
- (NSString)message;
- (NSString)title;
- (void)_handleButtonTap;
- (void)layoutSubviews;
- (void)setButtonAction:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation AMSUIErrorView

- (AMSUIErrorView)initWithFrame:(CGRect)a3 title:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = AMSUIErrorView;
  v10 = [(AMSUICommonView *)&v16 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [AMSUIErrorView _sanitizeTitle:v9];
    v12 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    [v12 setText:v11];
    v13 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:v12];
    backingView = v10->_backingView;
    v10->_backingView = v13;

    [(AMSUIErrorView *)v10 addSubview:v10->_backingView];
  }

  return v10;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = AMSUIErrorView;
  [(AMSUIErrorView *)&v12 layoutSubviews];
  [(AMSUIErrorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AMSUIErrorView *)self backingView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (NSString)buttonTitle
{
  v2 = [(AMSUIErrorView *)self backingView];
  v3 = [v2 configuration];
  v4 = [v3 button];
  v5 = [v4 title];

  return v5;
}

- (NSString)message
{
  v2 = [(AMSUIErrorView *)self backingView];
  v3 = [v2 configuration];
  v4 = [v3 secondaryText];

  return v4;
}

- (NSString)title
{
  v2 = [(AMSUIErrorView *)self backingView];
  v3 = [v2 configuration];
  v4 = [v3 button];
  v5 = [v4 title];

  return v5;
}

- (void)setButtonAction:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIErrorView *)self backingView];
  v6 = [v5 configuration];
  v7 = [v6 copy];

  v8 = MEMORY[0x1E69DC628];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__AMSUIErrorView_setButtonAction___block_invoke;
  v13[3] = &unk_1E7F24D78;
  v14 = v4;
  v9 = v4;
  v10 = [v8 actionWithHandler:v13];
  v11 = [v7 buttonProperties];
  [v11 setPrimaryAction:v10];

  v12 = [(AMSUIErrorView *)self backingView];
  [v12 setConfiguration:v7];
}

- (void)setButtonTitle:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIErrorView *)self backingView];
  v6 = [v5 configuration];
  v9 = [v6 copy];

  v7 = [v9 button];
  [v7 setTitle:v4];

  v8 = [(AMSUIErrorView *)self backingView];
  [v8 setConfiguration:v9];
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIErrorView *)self backingView];
  v6 = [v5 configuration];
  v8 = [v6 copy];

  [v8 setSecondaryText:v4];
  v7 = [(AMSUIErrorView *)self backingView];
  [v7 setConfiguration:v8];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v9 = [objc_opt_class() _sanitizeTitle:v4];

  v5 = [(AMSUIErrorView *)self backingView];
  v6 = [v5 configuration];
  v7 = [v6 copy];

  [v7 setText:v9];
  v8 = [(AMSUIErrorView *)self backingView];
  [v8 setConfiguration:v7];
}

- (void)_handleButtonTap
{
  v3 = [(AMSUIErrorView *)self buttonAction];

  if (v3)
  {
    v4 = [(AMSUIErrorView *)self buttonAction];
    v4[2]();
  }
}

+ (id)_sanitizeTitle:(id)a3
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return @" ";
  }
}

@end