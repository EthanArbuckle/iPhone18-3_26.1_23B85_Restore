@interface QLCustomItemViewControllerHostProxy
- (QLCustomItemViewControllerHost)delegate;
- (void)dismissQuickLook;
- (void)forwardMessageToHostOfCustomViewController:(id)controller completionHandler:(id)handler;
- (void)presentShareSheetWithPopoverTracker:(id)tracker customSharedURL:(id)l dismissCompletion:(id)completion;
@end

@implementation QLCustomItemViewControllerHostProxy

- (void)presentShareSheetWithPopoverTracker:(id)tracker customSharedURL:(id)l dismissCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  trackerCopy = tracker;
  delegate = [(QLCustomItemViewControllerHostProxy *)self delegate];
  [delegate presentShareSheetWithPopoverTracker:trackerCopy customSharedURL:lCopy dismissCompletion:completionCopy];
}

- (void)dismissQuickLook
{
  delegate = [(QLCustomItemViewControllerHostProxy *)self delegate];
  [delegate dismissQuickLook];
}

- (void)forwardMessageToHostOfCustomViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  delegate = [(QLCustomItemViewControllerHostProxy *)self delegate];
  [delegate forwardMessageToHostOfCustomViewController:controllerCopy completionHandler:handlerCopy];
}

- (QLCustomItemViewControllerHost)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end