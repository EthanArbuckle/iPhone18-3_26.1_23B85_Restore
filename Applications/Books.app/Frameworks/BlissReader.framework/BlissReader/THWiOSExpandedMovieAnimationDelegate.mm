@interface THWiOSExpandedMovieAnimationDelegate
- (CGAffineTransform)freeTransform;
- (THWiOSExpandedMovieAnimationDelegate)initWithMovieViewController:(id)controller;
- (id)animationLayer;
- (id)targetLayer;
- (void)dealloc;
- (void)reparentTargetLayerIfBackedByView:(id)view;
@end

@implementation THWiOSExpandedMovieAnimationDelegate

- (THWiOSExpandedMovieAnimationDelegate)initWithMovieViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = THWiOSExpandedMovieAnimationDelegate;
  result = [(THWiOSExpandedMovieAnimationDelegate *)&v5 init];
  if (result)
  {
    result->_movieViewController = controller;
  }

  return result;
}

- (void)dealloc
{
  self->_movieViewController = 0;
  v2.receiver = self;
  v2.super_class = THWiOSExpandedMovieAnimationDelegate;
  [(THWiOSExpandedMovieAnimationDelegate *)&v2 dealloc];
}

- (id)animationLayer
{
  if (![(THWFreeTransformController *)[(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] freeTransformController] isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] freeTransformController] freeTransformLayer]) == 0)
  {
    view = [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] moviePlayerViewController] view];

    return [view layer];
  }

  return result;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(THWFreeTransformController *)[(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] freeTransformController] isFreeTransformInProgress];
  if (result)
  {
    result = [(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] freeTransformController];
    if (result)
    {
      result = [(CGAffineTransform *)result currentTransform];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    v7 = v9;
    *&retstr->a = v8;
    *&retstr->c = v7;
    *&retstr->tx = v10;
  }

  return result;
}

- (id)targetLayer
{
  view = [(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] view];

  return [view layer];
}

- (void)reparentTargetLayerIfBackedByView:(id)view
{
  [-[THWiOSExpandedMovieViewController view](-[THWiOSExpandedMovieAnimationDelegate movieViewController](self movieViewController];
  rootSuperview = [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] delegate] rootSuperview];
  view = [(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] view];

  [rootSuperview addSubview:view];
}

@end