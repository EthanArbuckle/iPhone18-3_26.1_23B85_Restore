@interface NPKBridgeInstructionViewController
- (NPKBridgeInstructionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIActivityIndicatorView)activityIndicatorView;
- (UIBarButtonItem)spinnerItem;
- (void)_cancel;
- (void)handleErrorWithTitle:(id)a3 message:(id)a4 acknowledgeButtonTitle:(id)a5;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NPKBridgeInstructionViewController

- (NPKBridgeInstructionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = NPKBridgeInstructionViewController;
  v4 = [(NPKBridgeInstructionViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v4 action:"_cancel"];
    v6 = [(NPKBridgeInstructionViewController *)v4 navigationItem];
    [v6 setLeftBarButtonItem:v5];
  }

  return v4;
}

- (UIActivityIndicatorView)activityIndicatorView
{
  activityIndicatorView = self->_activityIndicatorView;
  if (!activityIndicatorView)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v5 = self->_activityIndicatorView;
    self->_activityIndicatorView = v4;

    activityIndicatorView = self->_activityIndicatorView;
  }

  return activityIndicatorView;
}

- (UIBarButtonItem)spinnerItem
{
  spinnerItem = self->_spinnerItem;
  if (!spinnerItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = [(NPKBridgeInstructionViewController *)self activityIndicatorView];
    v6 = [v4 initWithCustomView:v5];
    v7 = self->_spinnerItem;
    self->_spinnerItem = v6;

    spinnerItem = self->_spinnerItem;
  }

  return spinnerItem;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = NPKBridgeInstructionViewController;
  [(NPKBridgeInstructionViewController *)&v13 viewDidLoad];
  v3 = [(NPKBridgeInstructionViewController *)self _instructionTitle];
  [(NPKBridgeInstructionViewController *)self setTitle:v3];

  v4 = [(NPKBridgeInstructionViewController *)self _instructionMessage];
  v5 = [(NPKBridgeInstructionViewController *)self instructionLabel];
  [v5 setText:v4];

  v6 = objc_alloc_init(UILabel);
  v7 = [(NPKBridgeInstructionViewController *)self _instructionMessage];
  [v6 setText:v7];

  v8 = [(NPKBridgeInstructionViewController *)self instructionLabelTextColor];
  if (v8)
  {
    [v6 setTextColor:v8];
  }

  else
  {
    v9 = BPSTextColor();
    [v6 setTextColor:v9];
  }

  v10 = [UIFont systemFontOfSize:15.0];
  [v6 setFont:v10];

  [v6 setNumberOfLines:0];
  [v6 setTextAlignment:1];
  [(NPKBridgeInstructionViewController *)self setInstructionLabel:v6];
  v11 = [(NPKBridgeInstructionViewController *)self view];
  [v11 addSubview:v6];
  v12 = BPSSetupBackgroundColor();
  [v11 setBackgroundColor:v12];
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = NPKBridgeInstructionViewController;
  [(NPKBridgeInstructionViewController *)&v12 viewWillLayoutSubviews];
  v3 = [(NPKBridgeInstructionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(NPKBridgeInstructionViewController *)self instructionLabel];
  [v8 sizeThatFits:{v5 + -80.0, v7 + -80.0}];

  v9 = [(NPKBridgeInstructionViewController *)self navigationController];
  v10 = [v9 navigationBar];
  [v10 bounds];
  CGRectGetHeight(v13);
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  UIRectIntegralWithScale();
  [(UILabel *)self->_instructionLabel setFrame:?];
}

- (void)handleErrorWithTitle:(id)a3 message:(id)a4 acknowledgeButtonTitle:(id)a5
{
  v8 = a5;
  v9 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_19B4;
  v11[3] = &unk_2C698;
  v11[4] = self;
  v10 = [UIAlertAction actionWithTitle:v8 style:1 handler:v11];

  [v9 addAction:v10];
  [(NPKBridgeInstructionViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_cancel
{
  v4 = [(NPKBridgeInstructionViewController *)self cancellationHandler];
  [(NPKBridgeInstructionViewController *)self setCancellationHandler:0];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

@end