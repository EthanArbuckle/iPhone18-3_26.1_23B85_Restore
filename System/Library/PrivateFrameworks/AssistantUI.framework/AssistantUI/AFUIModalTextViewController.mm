@interface AFUIModalTextViewController
- (AFUIModalTextViewController)initWithTitleText:(id)text andBodyText:(id)bodyText;
- (void)donePressed;
- (void)loadView;
- (void)presentFromParentViewController:(id)controller;
@end

@implementation AFUIModalTextViewController

- (AFUIModalTextViewController)initWithTitleText:(id)text andBodyText:(id)bodyText
{
  textCopy = text;
  bodyTextCopy = bodyText;
  v13.receiver = self;
  v13.super_class = AFUIModalTextViewController;
  v8 = [(AFUIModalTextViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(AFUIModalTextViewController *)v8 setTitle:textCopy];
    objc_storeStrong(&v9->_bodyText, bodyText);
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_donePressed];
    navigationItem = [(AFUIModalTextViewController *)v9 navigationItem];
    [navigationItem setRightBarButtonItem:v10];
  }

  return v9;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75C40]);
  v5 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setText:self->_bodyText];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 setFont:v4];

  [v5 setEditable:0];
  [v5 setTextContainerInset:{8.0, 10.0, 8.0, 10.0}];
  [v5 setContentOffset:{0.0, -8.0}];
  [(AFUIModalTextViewController *)self setView:v5];
}

- (void)presentFromParentViewController:(id)controller
{
  v4 = MEMORY[0x277D757A0];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:self];
  [v6 setModalPresentationStyle:6];
  [controllerCopy presentViewController:v6 animated:1 completion:0];
}

- (void)donePressed
{
  parentViewController = [(AFUIModalTextViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

@end