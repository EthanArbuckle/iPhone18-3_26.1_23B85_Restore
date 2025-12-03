@interface PUSRemotePasscodeInstructionViewController
- (PUSRemotePasscodeInstructionViewController)initWithAction:(int64_t)action;
- (PUSRemotePasscodeViewControllerDelegate)delegate;
- (void)_cancel;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PUSRemotePasscodeInstructionViewController

- (PUSRemotePasscodeInstructionViewController)initWithAction:(int64_t)action
{
  v9.receiver = self;
  v9.super_class = PUSRemotePasscodeInstructionViewController;
  v4 = [(PUSRemotePasscodeInstructionViewController *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_action = action;
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v4 action:"_cancel"];
    navigationItem = [(PUSRemotePasscodeInstructionViewController *)v5 navigationItem];
    [navigationItem setLeftBarButtonItem:v6];
  }

  return v5;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PUSRemotePasscodeInstructionViewController;
  [(PUSRemotePasscodeInstructionViewController *)&v17 viewDidLoad];
  v3 = self->_action - 1;
  if (v3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_10650 + v3);
  }

  v5 = [NSString stringWithFormat:@"REMOTE_PASSCODE_%@_TITLE", v4];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v5 value:&stru_10840 table:@"PasscodeSettings"];
  [(PUSRemotePasscodeInstructionViewController *)self setTitle:v7];

  view = [(PUSRemotePasscodeInstructionViewController *)self view];
  v9 = BPSBackgroundColor();
  [view setBackgroundColor:v9];

  v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  instructionLabel = self->_instructionLabel;
  self->_instructionLabel = v10;

  v12 = [NSString stringWithFormat:@"REMOTE_PASSCODE_%@_TEXT", v4];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v12 value:&stru_10840 table:@"PasscodeSettings"];
  [(UILabel *)self->_instructionLabel setText:v14];

  v15 = BPSTextColor();
  [(UILabel *)self->_instructionLabel setTextColor:v15];

  v16 = [UIFont systemFontOfSize:15.0];
  [(UILabel *)self->_instructionLabel setFont:v16];

  [(UILabel *)self->_instructionLabel setNumberOfLines:0];
  [(UILabel *)self->_instructionLabel setTextAlignment:1];
  [view addSubview:self->_instructionLabel];
  [(PUSRemotePasscodeInstructionViewController *)self setModalInPresentation:1];
}

- (void)viewWillLayoutSubviews
{
  view = [(PUSRemotePasscodeInstructionViewController *)self view];
  [view bounds];
  [(UILabel *)self->_instructionLabel sizeThatFits:v3 + -80.0, v4 + -80.0];
  navigationController = [(PUSRemotePasscodeInstructionViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar bounds];
  CGRectGetHeight(v10);
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  UIRectIntegralWithScale();
  [(UILabel *)self->_instructionLabel setFrame:?];
}

- (void)_cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remotePasscodeViewControllerDidCancel:self];
}

- (PUSRemotePasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end