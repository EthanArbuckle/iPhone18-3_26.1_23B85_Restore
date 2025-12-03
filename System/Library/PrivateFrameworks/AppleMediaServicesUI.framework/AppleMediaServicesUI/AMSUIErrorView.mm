@interface AMSUIErrorView
+ (id)_sanitizeTitle:(id)title;
- (AMSUIErrorView)initWithFrame:(CGRect)frame title:(id)title;
- (NSString)buttonTitle;
- (NSString)message;
- (NSString)title;
- (void)_handleButtonTap;
- (void)layoutSubviews;
- (void)setButtonAction:(id)action;
- (void)setButtonTitle:(id)title;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
@end

@implementation AMSUIErrorView

- (AMSUIErrorView)initWithFrame:(CGRect)frame title:(id)title
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = AMSUIErrorView;
  height = [(AMSUICommonView *)&v16 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [AMSUIErrorView _sanitizeTitle:titleCopy];
    emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    [emptyConfiguration setText:v11];
    v13 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:emptyConfiguration];
    backingView = height->_backingView;
    height->_backingView = v13;

    [(AMSUIErrorView *)height addSubview:height->_backingView];
  }

  return height;
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
  backingView = [(AMSUIErrorView *)self backingView];
  [backingView setFrame:{v4, v6, v8, v10}];
}

- (NSString)buttonTitle
{
  backingView = [(AMSUIErrorView *)self backingView];
  configuration = [backingView configuration];
  button = [configuration button];
  title = [button title];

  return title;
}

- (NSString)message
{
  backingView = [(AMSUIErrorView *)self backingView];
  configuration = [backingView configuration];
  secondaryText = [configuration secondaryText];

  return secondaryText;
}

- (NSString)title
{
  backingView = [(AMSUIErrorView *)self backingView];
  configuration = [backingView configuration];
  button = [configuration button];
  title = [button title];

  return title;
}

- (void)setButtonAction:(id)action
{
  actionCopy = action;
  backingView = [(AMSUIErrorView *)self backingView];
  configuration = [backingView configuration];
  v7 = [configuration copy];

  v8 = MEMORY[0x1E69DC628];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__AMSUIErrorView_setButtonAction___block_invoke;
  v13[3] = &unk_1E7F24D78;
  v14 = actionCopy;
  v9 = actionCopy;
  v10 = [v8 actionWithHandler:v13];
  buttonProperties = [v7 buttonProperties];
  [buttonProperties setPrimaryAction:v10];

  backingView2 = [(AMSUIErrorView *)self backingView];
  [backingView2 setConfiguration:v7];
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  backingView = [(AMSUIErrorView *)self backingView];
  configuration = [backingView configuration];
  v9 = [configuration copy];

  button = [v9 button];
  [button setTitle:titleCopy];

  backingView2 = [(AMSUIErrorView *)self backingView];
  [backingView2 setConfiguration:v9];
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  backingView = [(AMSUIErrorView *)self backingView];
  configuration = [backingView configuration];
  v8 = [configuration copy];

  [v8 setSecondaryText:messageCopy];
  backingView2 = [(AMSUIErrorView *)self backingView];
  [backingView2 setConfiguration:v8];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v9 = [objc_opt_class() _sanitizeTitle:titleCopy];

  backingView = [(AMSUIErrorView *)self backingView];
  configuration = [backingView configuration];
  v7 = [configuration copy];

  [v7 setText:v9];
  backingView2 = [(AMSUIErrorView *)self backingView];
  [backingView2 setConfiguration:v7];
}

- (void)_handleButtonTap
{
  buttonAction = [(AMSUIErrorView *)self buttonAction];

  if (buttonAction)
  {
    buttonAction2 = [(AMSUIErrorView *)self buttonAction];
    buttonAction2[2]();
  }
}

+ (id)_sanitizeTitle:(id)title
{
  if (title)
  {
    return title;
  }

  else
  {
    return @" ";
  }
}

@end