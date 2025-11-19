@interface THWiOSExpandedMovieAnimationDelegate
- (CGAffineTransform)freeTransform;
- (THWiOSExpandedMovieAnimationDelegate)initWithMovieViewController:(id)a3;
- (id)animationLayer;
- (id)targetLayer;
- (void)dealloc;
- (void)reparentTargetLayerIfBackedByView:(id)a3;
@end

@implementation THWiOSExpandedMovieAnimationDelegate

- (THWiOSExpandedMovieAnimationDelegate)initWithMovieViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = THWiOSExpandedMovieAnimationDelegate;
  result = [(THWiOSExpandedMovieAnimationDelegate *)&v5 init];
  if (result)
  {
    result->_movieViewController = a3;
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
    v4 = [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] moviePlayerViewController] view];

    return [v4 layer];
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
  v2 = [(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] view];

  return [v2 layer];
}

- (void)reparentTargetLayerIfBackedByView:(id)a3
{
  [-[THWiOSExpandedMovieViewController view](-[THWiOSExpandedMovieAnimationDelegate movieViewController](self movieViewController];
  v4 = [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] delegate] rootSuperview];
  v5 = [(THWiOSExpandedMovieViewController *)[(THWiOSExpandedMovieAnimationDelegate *)self movieViewController] view];

  [v4 addSubview:v5];
}

@end