@interface ILClassificationExtensionShellViewController
- (ILClassificationExtensionShellViewControllerDelegate)delegate;
- (void)displayExtensionViewController:(id)a3 forExtension:(id)a4;
- (void)userDidCancel;
- (void)userDidFinish;
- (void)viewDidLoad;
@end

@implementation ILClassificationExtensionShellViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = ILClassificationExtensionShellViewController;
  [(ILClassificationExtensionShellViewController *)&v9 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_userDidFinish];
  [(ILClassificationExtensionShellViewController *)self setDoneButton:v3];

  v4 = [(ILClassificationExtensionShellViewController *)self doneButton];
  [v4 setEnabled:0];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userDidCancel];
  v6 = [(ILClassificationExtensionShellViewController *)self doneButton];
  v7 = [(ILClassificationExtensionShellViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  v8 = [(ILClassificationExtensionShellViewController *)self navigationItem];
  [v8 setLeftBarButtonItem:v5];
}

- (void)displayExtensionViewController:(id)a3 forExtension:(id)a4
{
  v6 = a4;
  v22 = a3;
  [(ILClassificationExtensionShellViewController *)self setExtensionViewController:v22];
  v7 = [v6 _plugIn];

  v8 = [v7 localizedContainingName];
  v9 = [(ILClassificationExtensionShellViewController *)self navigationItem];
  [v9 setTitle:v8];

  [(ILClassificationExtensionShellViewController *)self addChildViewController:v22];
  v10 = [(ILClassificationExtensionShellViewController *)self view];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v22 view];
  [v19 setFrame:{v12, v14, v16, v18}];

  v20 = [(ILClassificationExtensionShellViewController *)self view];
  v21 = [v22 view];
  [v20 addSubview:v21];

  [v22 didMoveToParentViewController:self];
}

- (void)userDidFinish
{
  v3 = [(ILClassificationExtensionShellViewController *)self delegate];
  [v3 userDidFinishForExtensionShellViewController:self];
}

- (void)userDidCancel
{
  v3 = [(ILClassificationExtensionShellViewController *)self delegate];
  [v3 userDidCancelForExtensionShellViewController:self];
}

- (ILClassificationExtensionShellViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end