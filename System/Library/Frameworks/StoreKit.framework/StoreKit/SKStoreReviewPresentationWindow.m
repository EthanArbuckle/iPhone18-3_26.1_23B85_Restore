@interface SKStoreReviewPresentationWindow
- (id)_presentationViewController;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation SKStoreReviewPresentationWindow

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(SKStoreReviewPresentationWindow *)self _presentationViewController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__SKStoreReviewPresentationWindow_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_1E7B27900;
  v13 = v8;
  v11 = v8;
  [v10 presentViewController:v9 animated:v5 completion:v12];
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
  v3 = [(SKStoreReviewPresentationWindow *)self rootViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC670]);
    [v4 setSizesWindowToScene:1];
    [(SKStoreReviewPresentationWindow *)self setRootViewController:v4];
  }

  return [(SKStoreReviewPresentationWindow *)self rootViewController];
}

@end