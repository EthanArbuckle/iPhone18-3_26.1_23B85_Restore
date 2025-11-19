@interface QLCustomItemViewControllerHostProxy
- (QLCustomItemViewControllerHost)delegate;
- (void)dismissQuickLook;
- (void)forwardMessageToHostOfCustomViewController:(id)a3 completionHandler:(id)a4;
- (void)presentShareSheetWithPopoverTracker:(id)a3 customSharedURL:(id)a4 dismissCompletion:(id)a5;
@end

@implementation QLCustomItemViewControllerHostProxy

- (void)presentShareSheetWithPopoverTracker:(id)a3 customSharedURL:(id)a4 dismissCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(QLCustomItemViewControllerHostProxy *)self delegate];
  [v11 presentShareSheetWithPopoverTracker:v10 customSharedURL:v9 dismissCompletion:v8];
}

- (void)dismissQuickLook
{
  v2 = [(QLCustomItemViewControllerHostProxy *)self delegate];
  [v2 dismissQuickLook];
}

- (void)forwardMessageToHostOfCustomViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(QLCustomItemViewControllerHostProxy *)self delegate];
  [v8 forwardMessageToHostOfCustomViewController:v7 completionHandler:v6];
}

- (QLCustomItemViewControllerHost)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end