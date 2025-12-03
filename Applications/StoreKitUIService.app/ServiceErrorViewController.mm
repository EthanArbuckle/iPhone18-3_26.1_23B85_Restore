@interface ServiceErrorViewController
- (NSString)buttonTitle;
- (NSString)message;
- (NSString)title;
- (ServiceErrorViewController)initWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle actionBlock:(id)block;
- (void)loadView;
- (void)setButtonTitle:(id)title;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
- (void)viewWillLayoutSubviews;
@end

@implementation ServiceErrorViewController

- (ServiceErrorViewController)initWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle actionBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  blockCopy = block;
  v27.receiver = self;
  v27.super_class = ServiceErrorViewController;
  v14 = [(ServiceErrorViewController *)&v27 initWithNibName:0 bundle:0];
  if (v14)
  {
    v15 = objc_retainBlock(blockCopy);
    actionBlock = v14->_actionBlock;
    v14->_actionBlock = v15;

    v17 = [[_UIContentUnavailableView alloc] initWithFrame:&stru_100052318 title:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    errorView = v14->_errorView;
    v14->_errorView = v17;

    if (titleCopy)
    {
      [(_UIContentUnavailableView *)v14->_errorView setTitle:titleCopy];
    }

    else
    {
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"CANNOT_CONNECT_TO_ITUNES_STORE" value:&stru_100052318 table:0];
      [(_UIContentUnavailableView *)v14->_errorView setTitle:v20];
    }

    [(_UIContentUnavailableView *)v14->_errorView setMessage:messageCopy];
    if (blockCopy)
    {
      if (buttonTitleCopy)
      {
        [(_UIContentUnavailableView *)v14->_errorView setButtonTitle:buttonTitleCopy];
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
      v26 = blockCopy;
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
  view = [(ServiceErrorViewController *)self view];
  errorView = [(ServiceErrorViewController *)self errorView];
  [view addSubview:errorView];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = ServiceErrorViewController;
  [(ServiceErrorViewController *)&v13 viewWillLayoutSubviews];
  view = [(ServiceErrorViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  errorView = [(ServiceErrorViewController *)self errorView];
  [errorView setFrame:{v5, v7, v9, v11}];
}

- (NSString)buttonTitle
{
  errorView = [(ServiceErrorViewController *)self errorView];
  buttonTitle = [errorView buttonTitle];

  return buttonTitle;
}

- (NSString)message
{
  errorView = [(ServiceErrorViewController *)self errorView];
  message = [errorView message];

  return message;
}

- (NSString)title
{
  errorView = [(ServiceErrorViewController *)self errorView];
  title = [errorView title];

  return title;
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  errorView = [(ServiceErrorViewController *)self errorView];
  [errorView setButtonTitle:titleCopy];
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  errorView = [(ServiceErrorViewController *)self errorView];
  [errorView setMessage:messageCopy];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  errorView = [(ServiceErrorViewController *)self errorView];
  [errorView setTitle:titleCopy];
}

@end