@interface SKStoreRemoteViewController
- (SKStoreRemoteViewControllerDelegate)delegate;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)presentRequestedViewControllerWithIdentifier:(id)identifier;
- (void)setNeedsTabSelection;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SKStoreRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(SKStoreRemoteViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SKStoreRemoteViewController *)self delegate];
    [delegate2 storeRemoteViewControllerTerminatedWithError:errorCopy];
  }
}

- (void)setNeedsTabSelection
{
  delegate = [(SKStoreRemoteViewController *)self delegate];
  [delegate storeRemoteViewControllerNeedsTabSelection:self];
}

- (void)presentRequestedViewControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SKStoreRemoteViewController *)self delegate];
  [delegate storeRemoteViewController:self presentRequestedViewControllerWithIdentifier:identifierCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__SKStoreRemoteViewController_dismissViewControllerAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E7B27B30;
  aBlock[4] = self;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = _Block_copy(aBlock);
  v9.receiver = self;
  v9.super_class = SKStoreRemoteViewController;
  [(SKStoreRemoteViewController *)&v9 dismissViewControllerAnimated:animatedCopy completion:v8];
}

void __72__SKStoreRemoteViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 storeRemoteViewControllerDidDismiss];
  }
}

- (SKStoreRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end