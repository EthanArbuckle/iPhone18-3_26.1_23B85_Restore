@interface SKStoreReviewPresentationWindow
- (id)_presentationViewController;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation SKStoreReviewPresentationWindow

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _presentationViewController = [(SKStoreReviewPresentationWindow *)self _presentationViewController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__SKStoreReviewPresentationWindow_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_1E7B27900;
  v13 = completionCopy;
  v11 = completionCopy;
  [_presentationViewController presentViewController:controllerCopy animated:animatedCopy completion:v12];
}

uint64_t __77__SKStoreReviewPresentationWindow_presentViewController_animated_completion___block_invoke(uint64_t a1)
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
  rootViewController = [(SKStoreReviewPresentationWindow *)self rootViewController];

  if (!rootViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC670]);
    [v4 setSizesWindowToScene:1];
    [(SKStoreReviewPresentationWindow *)self setRootViewController:v4];
  }

  return [(SKStoreReviewPresentationWindow *)self rootViewController];
}

@end