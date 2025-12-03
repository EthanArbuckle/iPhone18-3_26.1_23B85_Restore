@interface AVPresentationContext
- (AVFullScreenViewController)avFullScreenViewController;
- (AVFullScreenViewController)rotatableWindowViewController;
- (AVPresentationContainerView)presentedPresentationContainerView;
- (AVPresentationContext)initWithPresentationController:(id)controller configuration:(id)configuration;
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
- (void)setTransitionContext:(id)context;
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
  transitionContext = [(AVPresentationContext *)self transitionContext];
  v3 = [transitionContext viewForKey:*MEMORY[0x1E69DE780]];

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
    presentingTransition = [(AVPresentationContext *)self presentingTransition];
LABEL_5:
    v5 = presentingTransition;
    wasInitiallyInteractive = [presentingTransition wasInitiallyInteractive];

    LOBYTE(isDismissing) = wasInitiallyInteractive;
    return isDismissing;
  }

  isDismissing = [(AVPresentationContext *)self isDismissing];
  if (isDismissing)
  {
    presentingTransition = [(AVPresentationContext *)self dismissingTransition];
    goto LABEL_5;
  }

  return isDismissing;
}

- (void)setTransitionContext:(id)context
{
  obj = context;
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
  rotatableSecondWindow = [(AVPresentationContext *)self rotatableSecondWindow];
  rootViewController = [rotatableSecondWindow rootViewController];

  return rootViewController;
}

- (UIWindow)presentationWindow
{
  presentationController = [(AVPresentationContext *)self presentationController];
  containerView = [presentationController containerView];
  window = [containerView window];

  if (!window)
  {
    presentationController2 = [(AVPresentationContext *)self presentationController];
    presentingViewController = [presentationController2 presentingViewController];
    view = [presentingViewController view];
    window2 = [view window];
    v10 = window2;
    if (window2)
    {
      window = window2;
    }

    else
    {
      presentationController3 = [(AVPresentationContext *)self presentationController];
      presentedViewController = [presentationController3 presentedViewController];
      view2 = [presentedViewController view];
      window = [view2 window];
    }
  }

  return window;
}

- (id)presentingView
{
  if ([(AVPresentationContext *)self isPresenting])
  {
    fromView = [(AVPresentationContext *)self fromView];
  }

  else if ([(AVPresentationContext *)self isDismissing])
  {
    fromView = [(AVPresentationContext *)self toView];
  }

  else
  {
    fromView = 0;
  }

  return fromView;
}

- (UIViewController)presentedViewController
{
  presentationController = [(AVPresentationContext *)self presentationController];
  presentedViewController = [presentationController presentedViewController];

  return presentedViewController;
}

- (AVPresentationContainerView)presentedPresentationContainerView
{
  presentedView = [(AVPresentationContext *)self presentedView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  presentedView2 = [(AVPresentationContext *)self presentedView];
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

    presentationController = [(AVPresentationContext *)self presentationController];
    presentedView2 = [presentationController presentedPresentationContainerView];
  }

  return presentedView2;
}

- (UIView)presentedView
{
  presentedViewController = [(AVPresentationContext *)self presentedViewController];
  view = [presentedViewController view];

  return view;
}

- (BOOL)isPresenting
{
  presentationController = [(AVPresentationContext *)self presentationController];
  presenting = [presentationController presenting];

  return presenting;
}

- (BOOL)isDismissing
{
  presentationController = [(AVPresentationContext *)self presentationController];
  dismissing = [presentationController dismissing];

  return dismissing;
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
  transitionContext = [(AVPresentationContext *)self transitionContext];
  v3 = [transitionContext viewForKey:*MEMORY[0x1E69DE770]];

  return v3;
}

- (AVPresentationContextTransition)currentTransition
{
  if ([(AVPresentationContext *)self isPresenting])
  {
    presentingTransition = [(AVPresentationContext *)self presentingTransition];
  }

  else if ([(AVPresentationContext *)self isDismissing])
  {
    presentingTransition = [(AVPresentationContext *)self dismissingTransition];
  }

  else
  {
    presentingTransition = 0;
  }

  return presentingTransition;
}

- (UIView)containerView
{
  presentationController = [(AVPresentationContext *)self presentationController];
  containerView = [presentationController containerView];
  v5 = containerView;
  if (containerView)
  {
    containerView2 = containerView;
  }

  else
  {
    transitionContext = [(AVPresentationContext *)self transitionContext];
    containerView2 = [transitionContext containerView];
  }

  return containerView2;
}

- (BOOL)canBeInteractivelyDismissed
{
  v3 = 1;
  if (!+[AVPresentationContext supportsInteractiveCounterRotationDismissals])
  {
    presentationController = [(AVPresentationContext *)self presentationController];
    containerView = [presentationController containerView];
    window = [containerView window];

    v7 = [*MEMORY[0x1E69DDA98] _supportedInterfaceOrientationsForWindow:window];
    presentationController2 = [(AVPresentationContext *)self presentationController];
    presentingViewController = [presentationController2 presentingViewController];
    supportedInterfaceOrientations = [presentingViewController supportedInterfaceOrientations];

    v3 = ((1 << [window _windowInterfaceOrientation]) & ~(supportedInterfaceOrientations & v7)) == 0;
  }

  return v3;
}

- (AVPresentationContext)initWithPresentationController:(id)controller configuration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = AVPresentationContext;
  v8 = [(AVPresentationContext *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentationController, controllerCopy);
    presentedViewController = [controllerCopy presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      presentedViewController2 = [controllerCopy presentedViewController];
      objc_storeWeak(&v9->_avFullScreenViewController, presentedViewController2);
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

    objc_storeStrong(&v9->_configuration, configuration);
  }

  return v9;
}

@end