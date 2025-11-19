@interface ServiceErrorViewController
- (NSString)buttonTitle;
- (NSString)message;
- (NSString)title;
- (ServiceErrorViewController)initWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 actionBlock:(id)a6;
- (void)loadView;
- (void)setButtonTitle:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ServiceErrorViewController

- (ServiceErrorViewController)initWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 actionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = ServiceErrorViewController;
  v14 = [(ServiceErrorViewController *)&v27 initWithNibName:0 bundle:0];
  if (v14)
  {
    v15 = objc_retainBlock(v13);
    actionBlock = v14->_actionBlock;
    v14->_actionBlock = v15;

    v17 = [[_UIContentUnavailableView alloc] initWithFrame:&stru_100052318 title:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    errorView = v14->_errorView;
    v14->_errorView = v17;

    if (v10)
    {
      [(_UIContentUnavailableView *)v14->_errorView setTitle:v10];
    }

    else
    {
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"CANNOT_CONNECT_TO_ITUNES_STORE" value:&stru_100052318 table:0];
      [(_UIContentUnavailableView *)v14->_errorView setTitle:v20];
    }

    [(_UIContentUnavailableView *)v14->_errorView setMessage:v11];
    if (v13)
    {
      if (v12)
      {
        [(_UIContentUnavailableView *)v14->_errorView setButtonTitle:v12];
      }

      else
      {
        v21 = [NSBundle bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"NETWORK_ERROR_BUTTON_RETRY" value:&stru_100052318 table:0];
        [(_UIContentUnavailableView *)v14->_errorView setButtonTitle:v22];
      }

      v23 = v14->_errorView;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100005B74;
      v25[3] = &unk_100051088;
      v26 = v13;
      [(_UIContentUnavailableView *)v23 setButtonAction:v25];
    }
  }

  return v14;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = ServiceErrorViewController;
  [(ServiceErrorViewController *)&v5 loadView];
  v3 = [(ServiceErrorViewController *)self view];
  v4 = [(ServiceErrorViewController *)self errorView];
  [v3 addSubview:v4];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = ServiceErrorViewController;
  [(ServiceErrorViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(ServiceErrorViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ServiceErrorViewController *)self errorView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (NSString)buttonTitle
{
  v2 = [(ServiceErrorViewController *)self errorView];
  v3 = [v2 buttonTitle];

  return v3;
}

- (NSString)message
{
  v2 = [(ServiceErrorViewController *)self errorView];
  v3 = [v2 message];

  return v3;
}

- (NSString)title
{
  v2 = [(ServiceErrorViewController *)self errorView];
  v3 = [v2 title];

  return v3;
}

- (void)setButtonTitle:(id)a3
{
  v4 = a3;
  v5 = [(ServiceErrorViewController *)self errorView];
  [v5 setButtonTitle:v4];
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  v5 = [(ServiceErrorViewController *)self errorView];
  [v5 setMessage:v4];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(ServiceErrorViewController *)self errorView];
  [v5 setTitle:v4];
}

@end