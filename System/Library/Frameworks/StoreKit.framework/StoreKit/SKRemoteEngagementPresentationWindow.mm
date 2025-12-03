@interface SKRemoteEngagementPresentationWindow
- (SKRemoteEngagementPresentationWindow)init;
- (id)_presentationViewController;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation SKRemoteEngagementPresentationWindow

- (SKRemoteEngagementPresentationWindow)init
{
  v6.receiver = self;
  v6.super_class = SKRemoteEngagementPresentationWindow;
  v2 = [(UIApplicationRotationFollowingWindow *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SKRemoteEngagementPresentationWindow *)v2 setOpaque:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SKRemoteEngagementPresentationWindow *)v3 setBackgroundColor:clearColor];

    [(SKRemoteEngagementPresentationWindow *)v3 setWindowLevel:*MEMORY[0x1E69DE7E8] + -1.0];
  }

  return v3;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _presentationViewController = [(SKRemoteEngagementPresentationWindow *)self _presentationViewController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__SKRemoteEngagementPresentationWindow_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_1E7B27900;
  v13 = completionCopy;
  v11 = completionCopy;
  [_presentationViewController presentViewController:controllerCopy animated:animatedCopy completion:v12];
}

uint64_t __82__SKRemoteEngagementPresentationWindow_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (id)_presentationViewController
{
  rootViewController = [(SKRemoteEngagementPresentationWindow *)self rootViewController];

  if (!rootViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC670]);
    [v4 setSizesWindowToScene:1];
    [(SKRemoteEngagementPresentationWindow *)self setRootViewController:v4];
  }

  return [(SKRemoteEngagementPresentationWindow *)self rootViewController];
}

@end