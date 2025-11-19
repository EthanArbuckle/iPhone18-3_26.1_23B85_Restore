@interface AVPresentationContext
- (AVFullScreenViewController)avFullScreenViewController;
- (AVFullScreenViewController)rotatableWindowViewController;
- (AVPresentationContainerView)presentedPresentationContainerView;
- (AVPresentationContext)initWithPresentationController:(id)a3 configuration:(id)a4;
- (AVPresentationContextTransition)currentTransition;
- (AVPresentationController)presentationController;
- (BOOL)canBeInteractivelyDismissed;
- (BOOL)hasActiveTransition;
- (BOOL)isDismissing;
- (BOOL)isPresenting;
- (BOOL)wasInitiallyInteractive;
- (UIView)containerView;
- (UIView)presentedView;
- (UIView)sourceView;
- (UIViewController)presentedViewController;
- (UIViewControllerContextTransitioning)transitionContext;
- (UIWindow)presentationWindow;
- (id)fromView;
- (id)presentingView;
- (id)toView;
- (int64_t)transitionType;
- (void)setTransitionContext:(id)a3;
@end

@implementation AVPresentationContext

- (AVPresentationController)presentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);

  return WeakRetained;
}

- (AVFullScreenViewController)avFullScreenViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_avFullScreenViewController);

  return WeakRetained;
}

- (UIViewControllerContextTransitioning)transitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);

  return WeakRetained;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (id)toView
{
  v2 = [(AVPresentationContext *)self transitionContext];
  v3 = [v2 viewForKey:*MEMORY[0x1E69DE780]];

  return v3;
}

- (int64_t)transitionType
{
  if ([(AVPresentationContext *)self isPresenting])
  {
    return 1;
  }

  if ([(AVPresentationContext *)self isDismissing])
  {
    return 2;
  }

  return 0;
}

- (BOOL)wasInitiallyInteractive
{
  if ([(AVPresentationContext *)self isPresenting])
  {
    v3 = [(AVPresentationContext *)self presentingTransition];
LABEL_5:
    v5 = v3;
    v6 = [v3 wasInitiallyInteractive];

    LOBYTE(v4) = v6;
    return v4;
  }

  v4 = [(AVPresentationContext *)self isDismissing];
  if (v4)
  {
    v3 = [(AVPresentationContext *)self dismissingTransition];
    goto LABEL_5;
  }

  return v4;
}

- (void)setTransitionContext:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_transitionContext, obj);
    v5 = obj;
  }
}

- (AVFullScreenViewController)rotatableWindowViewController
{
  v2 = [(AVPresentationContext *)self rotatableSecondWindow];
  v3 = [v2 rootViewController];

  return v3;
}

- (UIWindow)presentationWindow
{
  v3 = [(AVPresentationContext *)self presentationController];
  v4 = [v3 containerView];
  v5 = [v4 window];

  if (!v5)
  {
    v6 = [(AVPresentationContext *)self presentationController];
    v7 = [v6 presentingViewController];
    v8 = [v7 view];
    v9 = [v8 window];
    v10 = v9;
    if (v9)
    {
      v5 = v9;
    }

    else
    {
      v11 = [(AVPresentationContext *)self presentationController];
      v12 = [v11 presentedViewController];
      v13 = [v12 view];
      v5 = [v13 window];
    }
  }

  return v5;
}

- (id)presentingView
{
  if ([(AVPresentationContext *)self isPresenting])
  {
    v3 = [(AVPresentationContext *)self fromView];
  }

  else if ([(AVPresentationContext *)self isDismissing])
  {
    v3 = [(AVPresentationContext *)self toView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIViewController)presentedViewController
{
  v2 = [(AVPresentationContext *)self presentationController];
  v3 = [v2 presentedViewController];

  return v3;
}

- (AVPresentationContainerView)presentedPresentationContainerView
{
  v3 = [(AVPresentationContext *)self presentedView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(AVPresentationContext *)self presentedView];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Presented view is not of type AVPresentationContainerView. Falling back to out-of-band presented view.", v10, 2u);
      }
    }

    v8 = [(AVPresentationContext *)self presentationController];
    v5 = [v8 presentedPresentationContainerView];
  }

  return v5;
}

- (UIView)presentedView
{
  v2 = [(AVPresentationContext *)self presentedViewController];
  v3 = [v2 view];

  return v3;
}

- (BOOL)isPresenting
{
  v2 = [(AVPresentationContext *)self presentationController];
  v3 = [v2 presenting];

  return v3;
}

- (BOOL)isDismissing
{
  v2 = [(AVPresentationContext *)self presentationController];
  v3 = [v2 dismissing];

  return v3;
}

- (BOOL)hasActiveTransition
{
  if ([(AVPresentationContext *)self isPresenting])
  {
    return 1;
  }

  return [(AVPresentationContext *)self isDismissing];
}

- (id)fromView
{
  v2 = [(AVPresentationContext *)self transitionContext];
  v3 = [v2 viewForKey:*MEMORY[0x1E69DE770]];

  return v3;
}

- (AVPresentationContextTransition)currentTransition
{
  if ([(AVPresentationContext *)self isPresenting])
  {
    v3 = [(AVPresentationContext *)self presentingTransition];
  }

  else if ([(AVPresentationContext *)self isDismissing])
  {
    v3 = [(AVPresentationContext *)self dismissingTransition];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIView)containerView
{
  v3 = [(AVPresentationContext *)self presentationController];
  v4 = [v3 containerView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AVPresentationContext *)self transitionContext];
    v6 = [v7 containerView];
  }

  return v6;
}

- (BOOL)canBeInteractivelyDismissed
{
  v3 = 1;
  if (!+[AVPresentationContext supportsInteractiveCounterRotationDismissals])
  {
    v4 = [(AVPresentationContext *)self presentationController];
    v5 = [v4 containerView];
    v6 = [v5 window];

    v7 = [*MEMORY[0x1E69DDA98] _supportedInterfaceOrientationsForWindow:v6];
    v8 = [(AVPresentationContext *)self presentationController];
    v9 = [v8 presentingViewController];
    v10 = [v9 supportedInterfaceOrientations];

    v3 = ((1 << [v6 _windowInterfaceOrientation]) & ~(v10 & v7)) == 0;
  }

  return v3;
}

- (AVPresentationContext)initWithPresentationController:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = AVPresentationContext;
  v8 = [(AVPresentationContext *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentationController, v6);
    v10 = [v6 presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v6 presentedViewController];
      objc_storeWeak(&v9->_avFullScreenViewController, v11);
    }

    else
    {
      objc_storeWeak(&v9->_avFullScreenViewController, 0);
    }

    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v12;

    [(UIView *)v9->_backgroundView setUserInteractionEnabled:0];
    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    touchBlockingView = v9->_touchBlockingView;
    v9->_touchBlockingView = v14;

    objc_storeStrong(&v9->_configuration, a4);
  }

  return v9;
}

@end