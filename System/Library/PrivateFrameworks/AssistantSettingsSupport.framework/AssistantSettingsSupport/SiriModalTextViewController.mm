@interface SiriModalTextViewController
- (SiriModalTextViewController)initWithTitleText:(id)text andBodyText:(id)bodyText;
- (void)donePressed;
- (void)presentFromParentViewController:(id)controller;
@end

@implementation SiriModalTextViewController

- (SiriModalTextViewController)initWithTitleText:(id)text andBodyText:(id)bodyText
{
  textCopy = text;
  bodyTextCopy = bodyText;
  v16.receiver = self;
  v16.super_class = SiriModalTextViewController;
  v8 = [(SiriModalTextViewController *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(SiriModalTextViewController *)v8 setTitle:textCopy];
    v10 = objc_alloc(MEMORY[0x277D75C40]);
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v11 setText:bodyTextCopy];
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v11 setFont:v12];

    [v11 setEditable:0];
    [v11 setTextContainerInset:{8.0, 10.0, 8.0, 10.0}];
    [v11 setContentOffset:{0.0, -8.0}];
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_donePressed];
    navigationItem = [(SiriModalTextViewController *)v9 navigationItem];
    [navigationItem setRightBarButtonItem:v13];

    [(SiriModalTextViewController *)v9 setView:v11];
  }

  return v9;
}

- (void)presentFromParentViewController:(id)controller
{
  v4 = MEMORY[0x277D757A0];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:self];
  [v6 setModalPresentationStyle:2];
  [controllerCopy presentViewController:v6 animated:1 completion:0];
}

- (void)donePressed
{
  parentViewController = [(SiriModalTextViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

@end