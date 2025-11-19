@interface SKRemoteDismissingTransition
- (SKRemoteDismissingTransition)initWithViewController:(id)a3;
- (SKRemoteDismissingViewController)viewController;
- (void)dismissRemoteViewController:(id)a3;
@end

@implementation SKRemoteDismissingTransition

- (SKRemoteDismissingTransition)initWithViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKRemoteDismissingTransition;
  v5 = [(SKRemoteDismissingTransition *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKRemoteDismissingTransition *)v5 setViewController:v4];
  }

  return v6;
}

- (void)dismissRemoteViewController:(id)a3
{
  v4 = a3;
  v5 = [(SKRemoteDismissingTransition *)self viewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SKRemoteDismissingTransition_dismissRemoteViewController___block_invoke;
  v7[3] = &unk_1E7B27980;
  v6 = v4;
  v8 = v6;
  LOBYTE(v4) = [v5 dismissRemoteViewControllerWithCompletion:v7];

  if ((v4 & 1) == 0)
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