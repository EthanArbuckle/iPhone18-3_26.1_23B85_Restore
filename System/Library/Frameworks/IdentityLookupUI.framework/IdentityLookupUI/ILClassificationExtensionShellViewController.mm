@interface ILClassificationExtensionShellViewController
- (ILClassificationExtensionShellViewControllerDelegate)delegate;
- (void)displayExtensionViewController:(id)controller forExtension:(id)extension;
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

  doneButton = [(ILClassificationExtensionShellViewController *)self doneButton];
  [doneButton setEnabled:0];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userDidCancel];
  doneButton2 = [(ILClassificationExtensionShellViewController *)self doneButton];
  navigationItem = [(ILClassificationExtensionShellViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:doneButton2];

  navigationItem2 = [(ILClassificationExtensionShellViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v5];
}

- (void)displayExtensionViewController:(id)controller forExtension:(id)extension
{
  extensionCopy = extension;
  controllerCopy = controller;
  [(ILClassificationExtensionShellViewController *)self setExtensionViewController:controllerCopy];
  _plugIn = [extensionCopy _plugIn];

  localizedContainingName = [_plugIn localizedContainingName];
  navigationItem = [(ILClassificationExtensionShellViewController *)self navigationItem];
  [navigationItem setTitle:localizedContainingName];

  [(ILClassificationExtensionShellViewController *)self addChildViewController:controllerCopy];
  view = [(ILClassificationExtensionShellViewController *)self view];
  [view frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view2 = [controllerCopy view];
  [view2 setFrame:{v12, v14, v16, v18}];

  view3 = [(ILClassificationExtensionShellViewController *)self view];
  view4 = [controllerCopy view];
  [view3 addSubview:view4];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)userDidFinish
{
  delegate = [(ILClassificationExtensionShellViewController *)self delegate];
  [delegate userDidFinishForExtensionShellViewController:self];
}

- (void)userDidCancel
{
  delegate = [(ILClassificationExtensionShellViewController *)self delegate];
  [delegate userDidCancelForExtensionShellViewController:self];
}

- (ILClassificationExtensionShellViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end