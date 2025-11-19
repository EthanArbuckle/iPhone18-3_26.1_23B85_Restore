@interface LoadingIndicatorViewController
- (LoadingIndicatorViewController)init;
- (LoadingIndicatorViewController)initWithTitle:(id)a3 message:(id)a4;
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

- (LoadingIndicatorViewController)initWithTitle:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(LoadingIndicatorViewController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_titleText, a3);
    objc_storeStrong(&v10->_messageText, a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = LoadingIndicatorViewController;
  [(LoadingIndicatorViewController *)&v7 viewDidLoad];
  titleText = self->_titleText;
  v4 = [(LoadingIndicatorViewController *)self titleLabel];
  [v4 setText:titleText];

  messageText = self->_messageText;
  v6 = [(LoadingIndicatorViewController *)self messageLabel];
  [v6 setText:messageText];
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