@interface PDFPasswordViewController
- (PDFPasswordViewController)initWithDelegate:(id)a3;
- (void)clearPasswordField;
- (void)focusOnPasswordField;
- (void)presentInvalidPasswordAlertWithParentViewController:(id)a3;
- (void)userDidEnterPassword:(id)a3 forPasswordView:(id)a4;
- (void)viewDidLoad;
@end

@implementation PDFPasswordViewController

- (PDFPasswordViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = PDFKitBundle();
  v8.receiver = self;
  v8.super_class = PDFPasswordViewController;
  v6 = [(PDFPasswordViewController *)&v8 initWithNibName:@"NewPasswordView" bundle:v5];

  if (v6)
  {
    objc_storeWeak(&v6->_delegate, v4);
  }

  return v6;
}

- (void)clearPasswordField
{
  v2 = [(UIDocumentPasswordView *)self->_uiDocPasswordView passwordField];
  [v2 setText:&stru_1F416DF70];
}

- (void)focusOnPasswordField
{
  v2 = [(UIDocumentPasswordView *)self->_uiDocPasswordView passwordField];
  [v2 becomeFirstResponder];
}

- (void)presentInvalidPasswordAlertWithParentViewController:(id)a3
{
  v4 = a3;
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
  [v4 presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __81__PDFPasswordViewController_presentInvalidPasswordAlertWithParentViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained focusOnPasswordField];
}

- (void)userDidEnterPassword:(id)a3 forPasswordView:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9 && [v9 length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained userDidEnterPassword:v9 forPasswordViewController:self];

    if (v8)
    {
      [v6 resignFirstResponder];
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
  v6 = [(PDFPasswordViewController *)self view];
  [v6 bounds];
  [(UIDocumentPasswordView *)v5 setFrame:?];

  [(UIDocumentPasswordView *)self->_uiDocPasswordView setAutoresizingMask:18];
  v7 = [(PDFPasswordViewController *)self view];
  [v7 addSubview:self->_uiDocPasswordView];

  v8 = [MEMORY[0x1E69DC888] clearColor];
  v9 = [(PDFPasswordViewController *)self view];
  [v9 setBackgroundColor:v8];
}

@end