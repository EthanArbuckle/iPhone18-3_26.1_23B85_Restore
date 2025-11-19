@interface MPModalPresentationWindow
- (MPModalPresentationWindow)init;
- (id)_presentationViewController;
- (void)presentAlertController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation MPModalPresentationWindow

- (id)_presentationViewController
{
  v3 = [(MPModalPresentationWindow *)self rootViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC670]);
    [v4 setSizesWindowToScene:1];
    [(MPModalPresentationWindow *)self setRootViewController:v4];
  }

  return [(MPModalPresentationWindow *)self rootViewController];
}

- (void)presentAlertController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v13 = a5;
  v9 = a3;
  v10 = [(MPModalPresentationWindow *)self _presentationViewController];
  v11 = [v10 presentedViewController];
  if (v11)
  {

    if (v11 != v9)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"MPModalPresentationWindow.m" lineNumber:52 description:{@"Multiple alert controllers assigned to the same window: %@", self}];
    }

    if (v13)
    {
      v13[2](v13, v11 == v9);
    }
  }

  else
  {
    [(MPModalPresentationWindow *)self presentViewController:v9 animated:v5 completion:v13];
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(MPModalPresentationWindow *)self _presentationViewController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__MPModalPresentationWindow_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_1E7682370;
  v13 = v8;
  v11 = v8;
  [v10 presentViewController:v9 animated:v5 completion:v12];
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
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(MPModalPresentationWindow *)v3 setBackgroundColor:v4];

    [(MPModalPresentationWindow *)v3 setWindowLevel:*MEMORY[0x1E69DE7D8]];
    [(MPModalPresentationWindow *)v3 setHidden:1];
  }

  return v3;
}

@end