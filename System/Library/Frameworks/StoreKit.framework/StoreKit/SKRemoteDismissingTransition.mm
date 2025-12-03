@interface SKRemoteDismissingTransition
- (SKRemoteDismissingTransition)initWithViewController:(id)controller;
- (SKRemoteDismissingViewController)viewController;
- (void)dismissRemoteViewController:(id)controller;
@end

@implementation SKRemoteDismissingTransition

- (SKRemoteDismissingTransition)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SKRemoteDismissingTransition;
  v5 = [(SKRemoteDismissingTransition *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKRemoteDismissingTransition *)v5 setViewController:controllerCopy];
  }

  return v6;
}

- (void)dismissRemoteViewController:(id)controller
{
  controllerCopy = controller;
  viewController = [(SKRemoteDismissingTransition *)self viewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SKRemoteDismissingTransition_dismissRemoteViewController___block_invoke;
  v7[3] = &unk_1E7B27980;
  v6 = controllerCopy;
  v8 = v6;
  LOBYTE(controllerCopy) = [viewController dismissRemoteViewControllerWithCompletion:v7];

  if ((controllerCopy & 1) == 0)
  {
    [v6 completeTransition:1];
  }
}

- (SKRemoteDismissingViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end