@interface THWViewportRep
- (BOOL)allowSelectionPopover;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)centeredInScrollViewForScrollableCanvasController:(id)controller;
- (BOOL)deferViewCreationForScrollableCanvasController:(id)controller;
- (BOOL)expandedShouldDismissOnChangeFromSizeClassPairWithController:(id)controller flowMode:(BOOL)mode;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)isRelatedCanvasScrollingForscrollableCanvasController:(id)controller;
- (BOOL)scrollableCanvasController:(id)controller allowsEditMenuForRep:(id)rep;
- (BOOL)scrollableCanvasController:(id)controller allowsHyperlinkWithGesture:(id)gesture forRep:(id)rep;
- (BOOL)scrollableCanvasController:(id)controller shouldBeginEditingTHWPRep:(id)rep withGesture:(id)gesture;
- (BOOL)shouldAnimateToFit;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (CGRect)ftcTargetFrame;
- (CGRect)rectForCompletion;
- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)controller;
- (THAnimationController)animationController;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (THWViewportRep)initWithLayout:(id)layout canvas:(id)canvas;
- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)controller;
- (double)contentsScaleForScrollableCanvasController:(id)controller;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (double)scrollableCanvasController:(id)controller maxViewScaleForFrameSize:(CGSize)size;
- (double)scrollableCanvasController:(id)controller viewScaleForFrameSize:(CGSize)size withScale:(double)scale;
- (id)animationLayer;
- (id)bookNavigatorForScrollableCanvasController:(id)controller;
- (id)documentNavigatorForScrollableCanvasController:(id)controller;
- (id)expandedBackgroundColor;
- (id)maskLayerForScrollableCanvasController:(id)controller;
- (id)p_innerMaskLayerWithBounds:(CGRect)bounds path:(CGPath *)path fadeSizes:(UIEdgeInsets)sizes maskGroupVerticalInset:(double)inset;
- (id)p_outerMaskLayerWithFrame:(CGRect)frame path:(CGPath *)path;
- (id)scrollableCanvasController:(id)controller actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture;
- (id)scrollableCanvasController:(id)controller infosToDisplayForViewport:(CGRect)viewport;
- (id)scrollableCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (id)scrollableCanvasHost;
- (id)shadowAnimationLayer;
- (id)strokeLayerForScrollableCanvasController:(id)controller;
- (id)targetLayer;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)expandedDidTransitionToSize:(CGSize)size;
- (void)expandedViewControllerWillPresent:(id)present;
- (void)expandedWillAnimateRotationFromSize:(CGSize)size toSize:(CGSize)toSize duration:(double)duration;
- (void)expandedWillTransitionFromSize:(CGSize)size toSize:(CGSize)toSize;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)scrollableCanvasController:(id)controller customizeLayerHost:(id)host;
- (void)updateChildrenFromLayout;
- (void)willBeginHandlingGesture:(id)gesture;
@end

@implementation THWViewportRep

- (THWViewportRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v7.receiver = self;
  v7.super_class = THWViewportRep;
  v4 = [(THWViewportRep *)&v7 initWithLayout:layout canvas:canvas];
  v5 = v4;
  if (v4 && [-[THWViewportRep layout](v4 "layout")])
  {
    v5->_freeTransformableHandler = -[THWFreeTransformableRepGestureTargetHandler initWithFreeTransformableRep:handler:]([THWFreeTransformableRepGestureTargetHandler alloc], "initWithFreeTransformableRep:handler:", v5, [objc_msgSend(-[THWViewportRep hostICC](v5 "hostICC")]);
  }

  return v5;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  childReps = [(THWViewportRep *)self childReps];
  v4 = [(NSArray *)childReps countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(childReps);
        }

        [*(*(&v9 + 1) + 8 * v7) setParentRep:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)childReps countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(THWViewportRep *)self setChildReps:0];
  [(THWViewportRep *)self setScrollableCanvasController:0];

  self->_pressableHandler = 0;
  self->_freeTransformableHandler = 0;

  self->_animationController = 0;
  v8.receiver = self;
  v8.super_class = THWViewportRep;
  [(THWViewportRep *)&v8 dealloc];
}

- (THWPressableRepGestureTargetHandler)pressableHandler
{
  if (!self->_pressableHandler)
  {
    objc_opt_class();
    [(THWViewportRep *)self interactiveCanvasController];
    pressHandlerForPressableReps = [TSUDynamicCast() pressHandlerForPressableReps];
    if (pressHandlerForPressableReps)
    {
      v4 = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:self pressHandler:pressHandlerForPressableReps];
      self->_pressableHandler = v4;
      [(THWPressableRepGestureTargetHandler *)v4 setEnabledOnlyIfWidgetInteractionDisabledOnPage:1];
    }
  }

  return self->_pressableHandler;
}

- (void)expandedViewControllerWillPresent:(id)present
{
  interactiveCanvasController = [(THWScrollableCanvasController *)[(THWViewportRep *)self scrollableCanvasController] interactiveCanvasController];

  [(THInteractiveCanvasController *)interactiveCanvasController endEditing];
}

- (void)updateChildrenFromLayout
{
  v3 = [TSDContainerRep childrenFromLayoutInContainerRep:self];

  [(THWViewportRep *)self setChildReps:v3];
}

- (void)control:(id)control repWasAdded:(id)added
{
  self->_scrollableCanvasController = 0;
  objc_opt_class();
  scrollableCanvasController = [TSUDynamicCast() scrollableCanvasController];
  self->_scrollableCanvasController = scrollableCanvasController;
  [(THWScrollableCanvasController *)scrollableCanvasController setDelegate:self];
  scrollableCanvasController = self->_scrollableCanvasController;

  [(THWScrollableCanvasController *)scrollableCanvasController setUpdateCanvasSizeOnLayout:1];
}

- (void)control:(id)control repWillBeRemoved:(id)removed
{
  [(THWScrollableCanvasController *)self->_scrollableCanvasController setDelegate:0, removed];

  self->_scrollableCanvasController = 0;
}

- (CALayer)pressableAnimationLayer
{
  scrollView = [(THWScrollableCanvasController *)[(THWViewportRep *)self scrollableCanvasController] scrollView];

  return [(TSKScrollView *)scrollView layer];
}

- (BOOL)wantsPressAnimation
{
  pressableHandler = [(THWViewportRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionDisabledOnPage];
}

- (BOOL)wantsPressAction
{
  if ([(THWViewportRep *)self meetsStageDimensionRequirementForExpanded]|| (v3 = [(THWPressableRepGestureTargetHandler *)[(THWViewportRep *)self pressableHandler] widgetInteractionDisabledOnPage]))
  {
    LOBYTE(v3) = [(THWViewportRep *)self pressableAction]!= 0;
  }

  return v3;
}

- (BOOL)canHandleGesture:(id)gesture
{
  if ([(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] canHandleGesture:gesture])
  {
    return 1;
  }

  pressableHandler = [(THWViewportRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler canHandleGesture:gesture];
}

- (BOOL)handleGesture:(id)gesture
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWViewportRep *)self pressableHandler] canHandleGesture:gesture]&& [(THWPressableRepGestureTargetHandler *)[(THWViewportRep *)self pressableHandler] handleGesture:gesture])
  {
    return 1;
  }

  freeTransformableHandler = [(THWViewportRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler handleGesture:gesture];
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDFreeTransform)
  {
    freeTransformableHandler = [(THWViewportRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler willBeginHandlingGesture:gesture];
  }
}

- (BOOL)isExpanded
{
  layout = [(THWViewportRep *)self layout];

  return [layout isExpanded];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)freeTransformWillBegin
{
  [(CALayer *)[(THWViewportRep *)self pressableAnimationLayer] removeAllAnimations];
  [-[TSKScrollView layer](-[THWScrollableCanvasController scrollView](-[THWViewportRep scrollableCanvasController](self "scrollableCanvasController")];
  scrollView = [(THWScrollableCanvasController *)[(THWViewportRep *)self scrollableCanvasController] scrollView];

  [(TSKScrollView *)scrollView setClipsToBounds:1];
}

- (void)freeTransformDidEnd
{
  [-[TSKScrollView layer](-[THWScrollableCanvasController scrollView](-[THWViewportRep scrollableCanvasController](self "scrollableCanvasController")];
  scrollView = [(THWScrollableCanvasController *)[(THWViewportRep *)self scrollableCanvasController] scrollView];

  [(TSKScrollView *)scrollView setClipsToBounds:0];
}

- (CGRect)rectForCompletion
{
  layout = [(THWViewportRep *)self layout];

  [layout frameInParent];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)shadowAnimationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    return 0;
  }

  v3 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v3 shadowLayer];
}

- (id)animationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {
    scrollView = [(THWScrollableCanvasController *)[(THWViewportRep *)self scrollableCanvasController] scrollView];

    return [(TSKScrollView *)scrollView layer];
  }

  return result;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress];
  if (result)
  {
    result = [(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc];
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
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]&& ![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc] passedThreshold])
  {
    return 0;
  }

  return [(THWViewportRep *)self animationLayer];
}

- (CGRect)ftcTargetFrame
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWViewportRep *)self freeTransformableHandler] ftc] completionTargetRect];
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)shouldAnimateToFit
{
  layout = [(THWViewportRep *)self layout];

  return [layout isExpanded];
}

- (THAnimationController)animationController
{
  result = self->_animationController;
  if (!result)
  {
    v4 = objc_alloc_init(THAnimationController);
    self->_animationController = v4;
    [(THAnimationController *)v4 addObserver:self];
    [(THAnimationController *)self->_animationController setSource:self];
    return self->_animationController;
  }

  return result;
}

- (id)expandedBackgroundColor
{
  v3 = [objc_msgSend(-[THWViewportRep interactiveCanvasController](self "interactiveCanvasController")];
  if (v3 && [v3 forceThemeColors])
  {
    v4 = [objc_msgSend(objc_msgSend(-[THWViewportRep interactiveCanvasController](self "interactiveCanvasController")];

    return [TSUColor colorWithCGColor:v4];
  }

  else
  {
    objc_opt_class();
    [objc_msgSend(objc_msgSend(-[THWViewportRep info](self "info")];
    v6 = TSUDynamicCast();
    if (!v6)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    return [v6 color];
  }
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  width = toSize.width;
  [objc_msgSend(-[THWViewportRep layout](self layout];
  v7 = v6;
  [-[THWViewportRep info](self "info")];
  v9 = v8;
  [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)[(THWViewportRep *)self scrollableCanvasController] interactiveCanvasController] viewScale];
  v11 = v7 * v10;
  v12 = width + v9 * -2.0;
  if (v12 >= v7)
  {
    v12 = v7;
  }

  return v12 / v11;
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillAnimateRotationFromSize:(CGSize)size toSize:(CGSize)toSize duration:(double)duration
{
  [-[THWViewportRep layout](self layout];
  [-[THWViewportRep layout](self "layout")];
  interactiveCanvasController = [(THWViewportRep *)self interactiveCanvasController];

  [interactiveCanvasController layoutIfNeeded];
}

- (void)expandedWillTransitionFromSize:(CGSize)size toSize:(CGSize)toSize
{
  v4 = [(THWViewportRep *)self interactiveCanvasController:size.width];

  [v4 setViewScale:1.0];
}

- (void)expandedDidTransitionToSize:(CGSize)size
{
  [-[THWViewportRep layout](self layout];
  layout = [(THWViewportRep *)self layout];

  [layout invalidateChildren];
}

- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)controller
{
  layout = [-[THWViewportRep layout](self layout];

  [layout canvasSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)scrollableCanvasController:(id)controller infosToDisplayForViewport:(CGRect)viewport
{
  v4 = [(THWViewportRep *)self info:controller];

  return [v4 canvasInfos];
}

- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)controller
{
  [-[THWViewportRep info](self info];
  v5 = v4;
  [-[THWViewportRep canvas](self "canvas")];
  v7 = v5 * v6;
  isExpanded = [(THWViewportRep *)self isExpanded];
  v9 = fmax(v7, 20.0);
  if (isExpanded)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = v7;
  v12 = v7;
  v13 = v10;
  result.right = v13;
  result.bottom = v12;
  result.left = v10;
  result.top = v11;
  return result;
}

- (id)scrollableCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  [-[THWViewportRep interactiveCanvasController](self interactiveCanvasController];
  v6 = TSUProtocolCast();
  [-[THWViewportRep interactiveCanvasController](self "interactiveCanvasController")];
  v7 = TSUProtocolCast();
  if (([v6 canHandleGesture:gesture] & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_5;
    }

    v6 = [v7 interactiveCanvasController:-[THWViewportRep interactiveCanvasController](self primaryTargetForGesture:{"interactiveCanvasController"), gesture}];
  }

  if (v6)
  {
    return v6;
  }

LABEL_5:
  if (![(THWPressableRepGestureTargetHandler *)[(THWViewportRep *)self pressableHandler] canHandleGesture:gesture])
  {
    return 0;
  }

  return [(THWViewportRep *)self pressableHandler];
}

- (id)scrollableCanvasHost
{
  interactiveCanvasController = [(THWViewportRep *)self interactiveCanvasController];

  return [interactiveCanvasController scrollableCanvasHost];
}

- (id)strokeLayerForScrollableCanvasController:(id)controller
{
  info = [-[THWViewportRep info](self info];
  if (![info shouldRender] || (objc_msgSend(-[THWViewportRep layout](self, "layout"), "isExpanded") & 1) != 0)
  {
    return 0;
  }

  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(-[THWViewportRep layout](self "layout")];
  [-[THWViewportRep canvas](self "canvas")];
  v8 = v7;
  [-[THWViewportRep canvas](self "canvas")];
  v9 = *&CGAffineTransformIdentity.c;
  *&v21.a = *&CGAffineTransformIdentity.a;
  *&v21.c = v9;
  *&v21.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformScale(&v22, &v21, v8, v10);
  [v6 transformUsingAffineTransform:&v22];
  [-[THWViewportRep canvas](self "canvas")];
  *&v8 = v11;
  [objc_msgSend(objc_msgSend(-[THWViewportRep layout](self "layout")];
  *&v13 = v12;
  LODWORD(v12) = LODWORD(v8);
  v14 = [v6 aliasedPathWithViewScale:v12 effectiveStrokeWidth:v13];
  v5 = objc_alloc_init(CAShapeLayer);
  [v5 setPath:{objc_msgSend(v14, "CGPath")}];
  [v5 setFillColor:0];
  [v5 setDelegate:{+[THNoAnimationLayerDelegate sharedInstance](THNoAnimationLayerDelegate, "sharedInstance")}];
  v15 = [objc_msgSend(-[THWViewportRep layout](self "layout")];
  if (v15)
  {
    [v15 transformBasedOnPoint:CGPointZero.x centeredAtPoint:{CGPointZero.y, CGPointZero.x, CGPointZero.y}];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  v22 = v20;
  [v5 setAffineTransform:{&v22, *&v20.a, *&v20.c, *&v20.tx}];
  canvas = [(THWViewportRep *)self canvas];
  [objc_msgSend(-[THWViewportRep layout](self "layout")];
  TSDRectWithSize();
  [canvas convertUnscaledToBoundsRect:?];
  TSDRoundedRectForMainScreen();
  [v5 setBounds:?];
  canvas2 = [(THWViewportRep *)self canvas];
  [objc_msgSend(-[THWViewportRep layout](self "layout")];
  TSDRectWithSize();
  TSDCenterOfRect();
  [canvas2 convertUnscaledToBoundsPoint:?];
  [v5 setPosition:?];
  if (([info canApplyToShapeRenderable] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v18 = [TSDRenderable renderableFromLayer:v5];
  [-[THWViewportRep canvas](self "canvas")];
  [info applyToRepRenderable:v18 withScale:?];

  return v5;
}

- (id)maskLayerForScrollableCanvasController:(id)controller
{
  if ([-[THWViewportRep layout](self layout])
  {
    return 0;
  }

  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(-[THWViewportRep info](self "info")];
  [-[THWViewportRep canvas](self "canvas")];
  v7 = v6;
  [-[THWViewportRep canvas](self "canvas")];
  v8 = *&CGAffineTransformIdentity.c;
  *&v17.a = *&CGAffineTransformIdentity.a;
  *&v17.c = v8;
  *&v17.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformScale(&v18, &v17, v7, v9);
  [v5 transformUsingAffineTransform:&v18];
  cGPath = [v5 CGPath];
  [-[THWViewportRep canvas](self "canvas")];
  canvas = [(THWViewportRep *)self canvas];
  [objc_msgSend(-[THWViewportRep layout](self "layout")];
  [canvas convertUnscaledToBoundsSize:?];
  TSDRectWithSize();
  [-[THWViewportRep info](self "info")];
  v13 = v12;
  [-[THWViewportRep canvas](self "canvas")];
  v15 = v13 * v14;
  TSDRoundedRectForMainScreen();
  v4 = [(THWViewportRep *)self p_innerMaskLayerWithBounds:cGPath path:fmax(v15 fadeSizes:0.0) maskGroupVerticalInset:?];

  return v4;
}

- (BOOL)scrollableCanvasController:(id)controller allowsEditMenuForRep:(id)rep
{
  [-[THWViewportRep interactiveCanvasController](self interactiveCanvasController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v5 = [-[THWViewportRep interactiveCanvasController](self "interactiveCanvasController")];
  interactiveCanvasController = [(THWViewportRep *)self interactiveCanvasController];

  return [v5 interactiveCanvasController:interactiveCanvasController allowsEditMenuForRep:self];
}

- (BOOL)scrollableCanvasController:(id)controller shouldBeginEditingTHWPRep:(id)rep withGesture:(id)gesture
{
  [-[THWViewportRep interactiveCanvasController](self interactiveCanvasController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  [-[THWViewportRep interactiveCanvasController](self "interactiveCanvasController")];
  v8 = TSUProtocolCast();
  interactiveCanvasController = [(THWViewportRep *)self interactiveCanvasController];

  return [v8 interactiveCanvasController:interactiveCanvasController shouldBeginEditingTHWPRep:rep withGesture:gesture];
}

- (BOOL)scrollableCanvasController:(id)controller allowsHyperlinkWithGesture:(id)gesture forRep:(id)rep
{
  gestureKind = [gesture gestureKind];
  [-[THWViewportRep interactiveCanvasController](self "interactiveCanvasController")];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return gestureKind == TSWPImmediateSingleTap;
  }

  v9 = [-[THWViewportRep interactiveCanvasController](self "interactiveCanvasController")];
  interactiveCanvasController = [(THWViewportRep *)self interactiveCanvasController];

  return [v9 interactiveCanvasController:interactiveCanvasController allowsHyperlinkWithGesture:gesture forRep:rep];
}

- (BOOL)allowSelectionPopover
{
  [-[THWViewportRep interactiveCanvasController](self "interactiveCanvasController")];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v3 = [-[THWViewportRep interactiveCanvasController](self "interactiveCanvasController")];
  interactiveCanvasController = [(THWViewportRep *)self interactiveCanvasController];

  return [v3 allowSelectionPopoverForInteractiveCanvasController:interactiveCanvasController];
}

- (id)scrollableCanvasController:(id)controller actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture
{
  [-[THWViewportRep interactiveCanvasController](self interactiveCanvasController];
  v9 = TSUProtocolCast();

  return [v9 actionForHyperlink:hyperlink inRep:rep gesture:gesture];
}

- (id)bookNavigatorForScrollableCanvasController:(id)controller
{
  objc_opt_class();
  [(THWViewportRep *)self interactiveCanvasController];
  v4 = TSUDynamicCast();

  return [v4 bookNavigator];
}

- (id)documentNavigatorForScrollableCanvasController:(id)controller
{
  objc_opt_class();
  [(THWViewportRep *)self interactiveCanvasController];
  v4 = TSUDynamicCast();

  return [v4 documentNavigator];
}

- (BOOL)isRelatedCanvasScrollingForscrollableCanvasController:(id)controller
{
  interactiveCanvasController = [(THWViewportRep *)self interactiveCanvasController];

  return [interactiveCanvasController currentlyScrolling];
}

- (void)scrollableCanvasController:(id)controller customizeLayerHost:(id)host
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_19D2FC;
  v7 = &unk_45AE58;
  controllerCopy = controller;
  selfCopy = self;
  if ([NSThread isMainThread:controller])
  {
    v6(v5);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_19D354;
    block[3] = &unk_45B8B0;
    block[4] = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (BOOL)deferViewCreationForScrollableCanvasController:(id)controller
{
  interactiveCanvasController = [(THWViewportRep *)self interactiveCanvasController];

  return [interactiveCanvasController currentlyScrolling];
}

- (double)contentsScaleForScrollableCanvasController:(id)controller
{
  interactiveCanvasController = [-[THWViewportRep interactiveCanvasController](self interactiveCanvasController];

  [interactiveCanvasController contentsScale];
  return result;
}

- (BOOL)centeredInScrollViewForScrollableCanvasController:(id)controller
{
  layout = [(THWViewportRep *)self layout];

  return [layout isExpanded];
}

- (double)scrollableCanvasController:(id)controller viewScaleForFrameSize:(CGSize)size withScale:(double)scale
{
  width = size.width;
  if ([-[THWViewportRep layout](self layout])
  {
    [objc_msgSend(-[THWViewportRep layout](self "layout")];
    if (width != 0.0 && v8 != 0.0)
    {
      v9 = width / v8;
      if (v9 <= 1.0)
      {
        return v9;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return scale;
}

- (double)scrollableCanvasController:(id)controller maxViewScaleForFrameSize:(CGSize)size
{
  layout = [-[THWViewportRep layout](self layout];
  result = 1.0;
  if (layout)
  {
    return 2.0;
  }

  return result;
}

- (BOOL)expandedShouldDismissOnChangeFromSizeClassPairWithController:(id)controller flowMode:(BOOL)mode
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_msgSend(v4 "traitCollection")];
    v7 = [objc_msgSend(v5 "traitCollection")];
    LOBYTE(v4) = v6 != &dword_0 + 1 && v7 != &dword_0 + 1;
  }

  return v4;
}

- (id)p_innerMaskLayerWithBounds:(CGRect)bounds path:(CGPath *)path fadeSizes:(UIEdgeInsets)sizes maskGroupVerticalInset:(double)inset
{
  rect_8 = sizes.bottom;
  rect_16 = bounds.size.width;
  top = sizes.top;
  rect_24 = bounds.size.height;
  x = bounds.origin.x;
  y = bounds.origin.y;
  CGPathGetBoundingBox(path);
  TSDRoundedRectForMainScreen();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = TSUCreateRGBABitmapContext();
  v17 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.0], [[TSUColor colorWithWhite:0 alpha:?];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v19 = CGGradientCreateWithColors(DeviceRGB, v17, 0);
  CGContextAddPath(v16, path);
  CGContextClip(v16);
  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  MinY = CGRectGetMinY(v38);
  v39.origin.x = v9;
  v39.origin.y = v11;
  v39.size.width = v13;
  v39.size.height = v15;
  v36.y = top + CGRectGetMinY(v39);
  v34.x = 0.0;
  v36.x = 0.0;
  v34.y = MinY;
  CGContextDrawLinearGradient(v16, v19, v34, v36, 0);
  v40.origin.x = v9;
  v40.origin.y = v11;
  v40.size.width = v13;
  v40.size.height = v15;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = v9;
  v41.origin.y = v11;
  v41.size.width = v13;
  v41.size.height = v15;
  v37.y = CGRectGetMaxY(v41) - rect_8;
  v35.x = 0.0;
  v37.x = 0.0;
  v35.y = MaxY;
  CGContextDrawLinearGradient(v16, v19, v35, v37, 0);
  CGContextSetRGBFillColor(v16, 0.0, 0.0, 0.0, 1.0);
  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  rect = CGRectGetMinX(v42);
  v43.origin.x = v9;
  v43.origin.y = v11;
  v43.size.width = v13;
  v43.size.height = v15;
  v22 = top + CGRectGetMinY(v43);
  v44.origin.x = v9;
  v44.origin.y = v11;
  v44.size.width = v13;
  v44.size.height = v15;
  Width = CGRectGetWidth(v44);
  v45.origin.x = v9;
  v45.origin.y = v11;
  v45.size.width = v13;
  v45.size.height = v15;
  v46.size.height = CGRectGetHeight(v45) - top - rect_8;
  v46.origin.x = rect;
  v46.origin.y = v22;
  v46.size.width = Width;
  CGContextFillRect(v16, v46);
  CGGradientRelease(v19);
  CGColorSpaceRelease(DeviceRGB);
  Image = CGBitmapContextCreateImage(v16);
  CGContextRelease(v16);
  v25 = objc_alloc_init(CALayer);
  [v25 setFrame:{x, y, rect_16, rect_24}];
  [v25 setContents:Image];
  CGImageRelease(Image);

  return v25;
}

- (id)p_outerMaskLayerWithFrame:(CGRect)frame path:(CGPath *)path
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = objc_alloc_init(CAShapeLayer);
  [v9 setFrame:{x, y, width, height}];
  [v9 setPath:path];

  return v9;
}

@end