@interface MPModalPresentationWindow
- (MPModalPresentationWindow)init;
- (id)_presentationViewController;
- (void)presentAlertController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation MPModalPresentationWindow

- (id)_presentationViewController
{
  rootViewController = [(MPModalPresentationWindow *)self rootViewController];

  if (!rootViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC670]);
    [v4 setSizesWindowToScene:1];
    [(MPModalPresentationWindow *)self setRootViewController:v4];
  }

  return [(MPModalPresentationWindow *)self rootViewController];
}

- (void)presentAlertController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _presentationViewController = [(MPModalPresentationWindow *)self _presentationViewController];
  presentedViewController = [_presentationViewController presentedViewController];
  if (presentedViewController)
  {

    if (presentedViewController != controllerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPModalPresentationWindow.m" lineNumber:52 description:{@"Multiple alert controllers assigned to the same window: %@", self}];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, presentedViewController == controllerCopy);
    }
  }

  else
  {
    [(MPModalPresentationWindow *)self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _presentationViewController = [(MPModalPresentationWindow *)self _presentationViewController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__MPModalPresentationWindow_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_1E7682370;
  v13 = completionCopy;
  v11 = completionCopy;
  [_presentationViewController presentViewController:controllerCopy animated:animatedCopy completion:v12];
}

uint64_t __71__MPModalPresentationWindow_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (MPModalPresentationWindow)init
{
  v6.receiver = self;
  v6.super_class = MPModalPresentationWindow;
  v2 = [(UIApplicationRotationFollowingWindow *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MPModalPresentationWindow *)v2 setOpaque:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MPModalPresentationWindow *)v3 setBackgroundColor:clearColor];

    [(MPModalPresentationWindow *)v3 setWindowLevel:*MEMORY[0x1E69DE7D8]];
    [(MPModalPresentationWindow *)v3 setHidden:1];
  }

  return v3;
}

@end