@interface SKStoreRemoteViewController
- (SKStoreRemoteViewControllerDelegate)delegate;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentRequestedViewControllerWithIdentifier:(id)a3;
- (void)setNeedsTabSelection;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SKStoreRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v7 = a3;
  v4 = [(SKStoreRemoteViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SKStoreRemoteViewController *)self delegate];
    [v6 storeRemoteViewControllerTerminatedWithError:v7];
  }
}

- (void)setNeedsTabSelection
{
  v3 = [(SKStoreRemoteViewController *)self delegate];
  [v3 storeRemoteViewControllerNeedsTabSelection:self];
}

- (void)presentRequestedViewControllerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SKStoreRemoteViewController *)self delegate];
  [v5 storeRemoteViewController:self presentRequestedViewControllerWithIdentifier:v4];
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__SKStoreRemoteViewController_dismissViewControllerAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E7B27B30;
  aBlock[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9.receiver = self;
  v9.super_class = SKStoreRemoteViewController;
  [(SKStoreRemoteViewController *)&v9 dismissViewControllerAnimated:v4 completion:v8];
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