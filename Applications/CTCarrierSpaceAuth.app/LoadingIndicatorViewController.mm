@interface LoadingIndicatorViewController
- (LoadingIndicatorViewController)init;
- (LoadingIndicatorViewController)initWithTitle:(id)title message:(id)message;
- (UIActivityIndicatorView)spinnerView;
- (UILabel)messageLabel;
- (UILabel)titleLabel;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation LoadingIndicatorViewController

- (LoadingIndicatorViewController)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v8.receiver = self;
  v8.super_class = LoadingIndicatorViewController;
  v6 = [(LoadingIndicatorViewController *)&v8 initWithNibName:v4 bundle:v5];

  return v6;
}

- (LoadingIndicatorViewController)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v9 = [(LoadingIndicatorViewController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_titleText, title);
    objc_storeStrong(&v10->_messageText, message);
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = LoadingIndicatorViewController;
  [(LoadingIndicatorViewController *)&v7 viewDidLoad];
  titleText = self->_titleText;
  titleLabel = [(LoadingIndicatorViewController *)self titleLabel];
  [titleLabel setText:titleText];

  messageText = self->_messageText;
  messageLabel = [(LoadingIndicatorViewController *)self messageLabel];
  [messageLabel setText:messageText];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_spinnerView);
  [WeakRetained stopAnimating];

  v4.receiver = self;
  v4.super_class = LoadingIndicatorViewController;
  [(LoadingIndicatorViewController *)&v4 dealloc];
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)messageLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLabel);

  return WeakRetained;
}

- (UIActivityIndicatorView)spinnerView
{
  WeakRetained = objc_loadWeakRetained(&self->_spinnerView);

  return WeakRetained;
}

@end