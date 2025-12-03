@interface CNPRUISPosterEditingViewController
- (CNPRUISPosterEditingViewController)initWithExistingConfiguration:(id)configuration context:(id)context;
- (CNPRUISPosterEditingViewController)initWithExtensionIdentifier:(id)identifier configuration:(id)configuration context:(id)context;
- (CNPRUISPosterEditingViewControllerDelegate)delegate;
- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration;
- (void)editingViewControllerDidFinishShowingContent:(id)content;
- (void)presentationDidFinishAnimated:(BOOL)animated;
@end

@implementation CNPRUISPosterEditingViewController

- (CNPRUISPosterEditingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)editingViewControllerDidFinishShowingContent:(id)content
{
  delegate = [(CNPRUISPosterEditingViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNPRUISPosterEditingViewController *)self delegate];
    [delegate2 editingViewControllerDidFinishShowingContent:self];
  }
}

- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    delegate2 = [[CNPRSPosterConfiguration alloc] initWithPosterConfiguration:configurationCopy];
    delegate = [(CNPRUISPosterEditingViewController *)self delegate];
    [delegate editingViewController:self didFinishWithConfiguration:delegate2];
  }

  else
  {
    delegate2 = [(CNPRUISPosterEditingViewController *)self delegate];
    [(CNPRSPosterConfiguration *)delegate2 editingViewController:self didFinishWithConfiguration:0];
  }
}

- (void)presentationDidFinishAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (objc_opt_respondsToSelector())
  {
    wrappedPosterEditingViewController = self->_wrappedPosterEditingViewController;

    [(PRUISPosterEditingViewController *)wrappedPosterEditingViewController presentationDidFinishAnimated:animatedCopy];
  }
}

- (CNPRUISPosterEditingViewController)initWithExistingConfiguration:(id)configuration context:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CNPRUISPosterEditingViewController;
  v8 = [(CNPRUISPosterEditingViewController *)&v17 init];
  if (v8)
  {
    v9 = objc_alloc(getPRUISPosterEditingViewControllerClass());
    wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];
    wrappedIncomingCallPosterContext = [contextCopy wrappedIncomingCallPosterContext];
    v12 = [v9 initWithExistingConfiguration:wrappedPosterConfiguration context:wrappedIncomingCallPosterContext];
    wrappedPosterEditingViewController = v8->_wrappedPosterEditingViewController;
    v8->_wrappedPosterEditingViewController = v12;

    [(PRUISPosterEditingViewController *)v8->_wrappedPosterEditingViewController setDelegate:v8];
    [(CNPRUISPosterEditingViewController *)v8 addChildViewController:v8->_wrappedPosterEditingViewController];
    view = [(CNPRUISPosterEditingViewController *)v8 view];
    view2 = [(PRUISPosterEditingViewController *)v8->_wrappedPosterEditingViewController view];
    [view addSubview:view2];

    [(PRUISPosterEditingViewController *)v8->_wrappedPosterEditingViewController didMoveToParentViewController:v8];
  }

  return v8;
}

- (CNPRUISPosterEditingViewController)initWithExtensionIdentifier:(id)identifier configuration:(id)configuration context:(id)context
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = CNPRUISPosterEditingViewController;
  v11 = [(CNPRUISPosterEditingViewController *)&v20 init];
  if (v11)
  {
    v12 = objc_alloc(getPRUISPosterEditingViewControllerClass());
    wrappedMutablePosterConfiguration = [configurationCopy wrappedMutablePosterConfiguration];
    wrappedIncomingCallPosterContext = [contextCopy wrappedIncomingCallPosterContext];
    v15 = [v12 initWithExtensionIdentifier:identifierCopy configuration:wrappedMutablePosterConfiguration context:wrappedIncomingCallPosterContext];
    wrappedPosterEditingViewController = v11->_wrappedPosterEditingViewController;
    v11->_wrappedPosterEditingViewController = v15;

    [(PRUISPosterEditingViewController *)v11->_wrappedPosterEditingViewController setDelegate:v11];
    [(CNPRUISPosterEditingViewController *)v11 addChildViewController:v11->_wrappedPosterEditingViewController];
    view = [(CNPRUISPosterEditingViewController *)v11 view];
    view2 = [(PRUISPosterEditingViewController *)v11->_wrappedPosterEditingViewController view];
    [view addSubview:view2];

    [(PRUISPosterEditingViewController *)v11->_wrappedPosterEditingViewController didMoveToParentViewController:v11];
  }

  return v11;
}

@end