@interface PDFPasswordViewController
- (PDFPasswordViewController)initWithDelegate:(id)delegate;
- (void)clearPasswordField;
- (void)focusOnPasswordField;
- (void)presentInvalidPasswordAlertWithParentViewController:(id)controller;
- (void)userDidEnterPassword:(id)password forPasswordView:(id)view;
- (void)viewDidLoad;
@end

@implementation PDFPasswordViewController

- (PDFPasswordViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = PDFKitBundle();
  v8.receiver = self;
  v8.super_class = PDFPasswordViewController;
  v6 = [(PDFPasswordViewController *)&v8 initWithNibName:@"NewPasswordView" bundle:v5];

  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegateCopy);
  }

  return v6;
}

- (void)clearPasswordField
{
  passwordField = [(UIDocumentPasswordView *)self->_uiDocPasswordView passwordField];
  [passwordField setText:&stru_1F416DF70];
}

- (void)focusOnPasswordField
{
  passwordField = [(UIDocumentPasswordView *)self->_uiDocPasswordView passwordField];
  [passwordField becomeFirstResponder];
}

- (void)presentInvalidPasswordAlertWithParentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = MEMORY[0x1E69DC650];
  v6 = PDFKitLocalizedString(@"Invalid Password");
  v7 = PDFKitLocalizedString(@"Please enter the password again.");
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69DC648];
  v10 = PDFKitLocalizedString(@"OK");
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __81__PDFPasswordViewController_presentInvalidPasswordAlertWithParentViewController___block_invoke;
  v15 = &unk_1E8152160;
  objc_copyWeak(&v16, &location);
  v11 = [v9 actionWithTitle:v10 style:0 handler:&v12];

  [v8 addAction:{v11, v12, v13, v14, v15}];
  [controllerCopy presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __81__PDFPasswordViewController_presentInvalidPasswordAlertWithParentViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained focusOnPasswordField];
}

- (void)userDidEnterPassword:(id)password forPasswordView:(id)view
{
  passwordCopy = password;
  viewCopy = view;
  if (passwordCopy && [passwordCopy length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained userDidEnterPassword:passwordCopy forPasswordViewController:self];

    if (v8)
    {
      [viewCopy resignFirstResponder];
    }

    [(PDFPasswordViewController *)self clearPasswordField];
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PDFPasswordViewController;
  [(PDFPasswordViewController *)&v10 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC960]) initWithDocumentName:0];
  uiDocPasswordView = self->_uiDocPasswordView;
  self->_uiDocPasswordView = v3;

  [(UIDocumentPasswordView *)self->_uiDocPasswordView setPasswordDelegate:self];
  v5 = self->_uiDocPasswordView;
  view = [(PDFPasswordViewController *)self view];
  [view bounds];
  [(UIDocumentPasswordView *)v5 setFrame:?];

  [(UIDocumentPasswordView *)self->_uiDocPasswordView setAutoresizingMask:18];
  view2 = [(PDFPasswordViewController *)self view];
  [view2 addSubview:self->_uiDocPasswordView];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view3 = [(PDFPasswordViewController *)self view];
  [view3 setBackgroundColor:clearColor];
}

@end