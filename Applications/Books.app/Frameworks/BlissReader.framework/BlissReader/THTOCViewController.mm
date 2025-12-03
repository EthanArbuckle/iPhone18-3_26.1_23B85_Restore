@interface THTOCViewController
- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex inLayer:(id)layer;
- (THTOCViewController)initWithBookPropertiesDelegate:(id)delegate delegate:(id)a4;
- (THTOCViewController)initWithNibName:(id)name bundle:(id)bundle bookPropertiesDelegate:(id)delegate delegate:(id)a6;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (void)dealloc;
- (void)didTransitionFromCanvas;
- (void)introMediaControllerMoviePlayerWillHideControls;
- (void)introMediaControllerMoviePlayerWillShowControls;
- (void)introMediaControllerShouldAdvancePast:(id)past;
- (void)relinquishIntroMediaViewController;
- (void)setIntroMediaViewController:(id)controller showIt:(BOOL)it;
- (void)setShrouded:(BOOL)shrouded animated:(BOOL)animated duration:(double)duration;
- (void)setShroudedFraction:(double)fraction;
- (void)setShroudedFraction:(double)fraction animated:(BOOL)animated duration:(double)duration;
- (void)takeIntroMediaViewController:(id)controller;
- (void)willTransitionFromChapterIndex:(unint64_t)index;
@end

@implementation THTOCViewController

- (THTOCViewController)initWithBookPropertiesDelegate:(id)delegate delegate:(id)a4
{
  v7 = THBundle();

  return [(THTOCViewController *)self initWithNibName:0 bundle:v7 bookPropertiesDelegate:delegate delegate:a4];
}

- (THTOCViewController)initWithNibName:(id)name bundle:(id)bundle bookPropertiesDelegate:(id)delegate delegate:(id)a6
{
  result = [(THTOCViewController *)self initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_bookPropertiesDelegate = delegate;
    result->mDelegate = a6;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THTOCViewController;
  [(THTOCViewController *)&v3 dealloc];
}

- (void)relinquishIntroMediaViewController
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[THTOCViewController relinquishIntroMediaViewController]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THTOCViewController.m"];

  [v2 handleFailureInFunction:v3 file:v4 lineNumber:50 description:@"Abstract method"];
}

- (void)takeIntroMediaViewController:(id)controller
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THTOCViewController takeIntroMediaViewController:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THTOCViewController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:54 description:@"Abstract method"];
}

- (void)setIntroMediaViewController:(id)controller showIt:(BOOL)it
{
  v4 = [TSUAssertionHandler currentHandler:controller];
  v5 = [NSString stringWithUTF8String:"[THTOCViewController setIntroMediaViewController:showIt:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THTOCViewController.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:58 description:@"Abstract method"];
}

- (void)willTransitionFromChapterIndex:(unint64_t)index
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THTOCViewController willTransitionFromChapterIndex:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THTOCViewController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:67 description:@"Abstract method"];
}

- (void)didTransitionFromCanvas
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[THTOCViewController didTransitionFromCanvas]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THTOCViewController.m"];

  [v2 handleFailureInFunction:v3 file:v4 lineNumber:71 description:@"Abstract method"];
}

- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex inLayer:(id)layer
{
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)introMediaControllerMoviePlayerWillShowControls
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[THTOCViewController introMediaControllerMoviePlayerWillShowControls]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THTOCViewController.m"];

  [v2 handleFailureInFunction:v3 file:v4 lineNumber:80 description:@"Abstract method"];
}

- (void)introMediaControllerMoviePlayerWillHideControls
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[THTOCViewController introMediaControllerMoviePlayerWillHideControls]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THTOCViewController.m"];

  [v2 handleFailureInFunction:v3 file:v4 lineNumber:84 description:@"Abstract method"];
}

- (void)setShroudedFraction:(double)fraction animated:(BOOL)animated duration:(double)duration
{
  if (self->mShroudedFraction != fraction)
  {
    animatedCopy = animated;
    self->mShroudedFraction = fraction;
    memset(&v22, 0, sizeof(v22));
    CATransform3DMakeScale(&v22, fraction * 0.300000012 + 1.0, fraction * 0.300000012 + 1.0, 1.0);
    if (!self->mShroudOverlayView)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      v9 = [TSWPassThroughView alloc];
      [-[THTOCViewController view](self "view")];
      self->mShroudOverlayView = [(TSWPassThroughView *)v9 initWithFrame:?];
      [(TSWPassThroughView *)self->mShroudOverlayView setBackgroundColor:[UIColor bc_darkSystemBackgroundForTraitCollection:[(THTOCViewController *)self traitCollection]]];
      [(TSWPassThroughView *)self->mShroudOverlayView setAutoresizingMask:18];
      [-[TSWPassThroughView layer](self->mShroudOverlayView "layer")];
      [-[THTOCViewController view](self "view")];
      +[CATransaction commit];
    }

    memset(&v21, 0, sizeof(v21));
    layer = [(UIView *)[(THTOCViewController *)self viewToShroud] layer];
    if (layer)
    {
      [(CALayer *)layer transform];
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    [-[TSWPassThroughView layer](self->mShroudOverlayView "layer")];
    v12 = v11;
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    fractionCopy = fraction;
    layer2 = [(TSWPassThroughView *)self->mShroudOverlayView layer];
    *&v15 = fractionCopy;
    [layer2 setOpacity:v15];
    if ([(THTOCViewController *)self shouldZoomShroudedView])
    {
      v20[1] = v22;
      v20[0] = v22;
      [(CALayer *)[(UIView *)[(THTOCViewController *)self viewToShroud] layer] setTransform:v20];
    }

    +[CATransaction commit];
    if (animatedCopy)
    {
      +[CATransaction begin];
      [CATransaction setAnimationDuration:duration];
      v16 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      LODWORD(v17) = v12;
      [(CABasicAnimation *)v16 setFromValue:[NSNumber numberWithFloat:v17]];
      *&v18 = fractionCopy;
      [(CABasicAnimation *)v16 setToValue:[NSNumber numberWithFloat:v18]];
      [(CABasicAnimation *)v16 setRemovedOnCompletion:1];
      [-[TSWPassThroughView layer](self->mShroudOverlayView "layer")];
      if ([(THTOCViewController *)self shouldZoomShroudedView])
      {
        v19 = [CABasicAnimation animationWithKeyPath:@"transform"];
        v20[0] = v21;
        [(CABasicAnimation *)v19 setFromValue:[NSValue valueWithCATransform3D:v20]];
        v20[0] = v22;
        [(CABasicAnimation *)v19 setToValue:[NSValue valueWithCATransform3D:v20]];
        [(CABasicAnimation *)v19 setRemovedOnCompletion:1];
        [(CALayer *)[(UIView *)[(THTOCViewController *)self viewToShroud] layer] addAnimation:v19 forKey:@"shadeAnimation"];
      }

      +[CATransaction commit];
    }
  }
}

- (void)setShrouded:(BOOL)shrouded animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  shroudedCopy = shrouded;
  if ([(THTOCViewControllerDelegate *)[(THTOCViewController *)self delegate] tocViewControllerMayBeShrouded:self])
  {
    v9 = 0.0;
    if (shroudedCopy)
    {
      v9 = 1.0;
    }

    [(THTOCViewController *)self setShroudedFraction:animatedCopy animated:v9 duration:duration];
  }
}

- (void)setShroudedFraction:(double)fraction
{
  v5 = [(THTOCViewControllerDelegate *)[(THTOCViewController *)self delegate] tocViewControllerMayBeShrouded:self];
  fractionCopy = 0.0;
  if (v5)
  {
    fractionCopy = fraction;
  }

  [(THTOCViewController *)self setShroudedFraction:0 animated:fractionCopy duration:0.0];
}

- (void)introMediaControllerShouldAdvancePast:(id)past
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THTOCViewController introMediaControllerShouldAdvancePast:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THTOCViewController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:213 description:@"Abstract method"];
}

- (id)childViewControllerForStatusBarHidden
{
  if (![(THTOCViewController *)self introMediaControllerIsActive]|| [(THTOCViewController *)self forceStatusBarVisible])
  {
    return 0;
  }

  return [(THTOCViewController *)self introMediaViewController];
}

- (id)childViewControllerForStatusBarStyle
{
  if (![(THTOCViewController *)self introMediaControllerIsActive]|| [(THTOCViewController *)self forceStatusBarVisible])
  {
    return 0;
  }

  return [(THTOCViewController *)self introMediaViewController];
}

@end