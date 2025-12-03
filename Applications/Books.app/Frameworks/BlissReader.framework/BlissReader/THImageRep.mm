@interface THImageRep
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)expandedAspectFillOnPresentIfClose;
- (BOOL)expandedHasContentForPanel:(int)panel;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)p_imageIsMostlyBlack;
- (BOOL)p_isInBodyRep;
- (BOOL)p_shouldHitTest;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (CGRect)ftcTargetFrame;
- (CGRect)rectForCompletion;
- (THAnimationController)animationController;
- (THImageRep)initWithLayout:(id)layout canvas:(id)canvas;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (id)animationLayer;
- (id)expandedChildInfosForPanel:(int)panel;
- (id)expandedContentDrawableToPresent;
- (id)expandedPanel:(int)panel primaryTargetForGesture:(id)gesture;
- (id)hitRep:(CGPoint)rep;
- (id)p_hyperlink;
- (id)p_setupContainerLayer;
- (id)shadowAnimationLayer;
- (id)targetLayer;
- (int)pressableAction;
- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default;
- (void)dealloc;
- (void)didPresentExpanded;
- (void)didUpdateLayer:(id)layer;
- (void)expandedDidRotateTransitionToSize:(CGSize)size;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame;
- (void)expandedWillRotateTransitionFromSize:(CGSize)size toSize:(CGSize)toSize;
- (void)expandedWillTransitionFromSize:(CGSize)size toSize:(CGSize)toSize;
- (void)freeTransformWillBegin;
- (void)p_togglePanelDescriptionExpanded;
- (void)willBeginHandlingGesture:(id)gesture;
@end

@implementation THImageRep

- (THImageRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v6.receiver = self;
  v6.super_class = THImageRep;
  v4 = [(THImageRep *)&v6 initWithLayout:layout canvas:canvas];
  if (v4)
  {
    v4->_freeTransformableHandler = -[THWFreeTransformableRepGestureTargetHandler initWithFreeTransformableRep:handler:]([THWFreeTransformableRepGestureTargetHandler alloc], "initWithFreeTransformableRep:handler:", v4, [objc_msgSend(-[THImageRep hostICC](v4 "hostICC")]);
  }

  return v4;
}

- (void)dealloc
{
  self->_pressableHandler = 0;

  self->_freeTransformableHandler = 0;
  self->_animationController = 0;
  v3.receiver = self;
  v3.super_class = THImageRep;
  [(THImageRep *)&v3 dealloc];
}

- (void)didUpdateLayer:(id)layer
{
  v6.receiver = self;
  v6.super_class = THImageRep;
  [(THImageRep *)&v6 didUpdateLayer:?];
  if ([-[THImageRep layout](self "layout")] && (objc_opt_class(), objc_msgSend(-[THImageRep canvas](self, "canvas"), "documentRoot"), objc_msgSend(objc_msgSend(TSUDynamicCast(), "themeProvider"), "shouldInvertContent")))
  {
    v5 = +[TSUColor whiteColor];
  }

  else
  {
    v5 = 0;
  }

  [layer setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
  if (!UIAccessibilityIsInvertColorsEnabled())
  {
    [layer th_accessibilityUndoInvertColorsIfNecessary];
  }
}

- (THWPressableRepGestureTargetHandler)pressableHandler
{
  if (![(THImageRep *)self createdPressableHandler])
  {
    [(THImageRep *)self setCreatedPressableHandler:1];
    if ([(THImageRep *)self wantsPressAction])
    {
      objc_opt_class();
      [(THImageRep *)self interactiveCanvasController];
      pressHandlerForPressableReps = [TSUDynamicCast() pressHandlerForPressableReps];
      if (pressHandlerForPressableReps)
      {
        self->_pressableHandler = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:self pressHandler:pressHandlerForPressableReps];
      }
    }
  }

  return self->_pressableHandler;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  p_shouldHitTest = [(THImageRep *)self p_shouldHitTest];
  if (p_shouldHitTest)
  {
    [(THImageRep *)self naturalBounds];
    v11 = x;
    v12 = y;

    LOBYTE(p_shouldHitTest) = CGRectContainsPoint(*&v7, *&v11);
  }

  return p_shouldHitTest;
}

- (id)p_setupContainerLayer
{
  v3 = [-[THImageRep interactiveCanvasController](self "interactiveCanvasController")];
  v4 = [-[THImageRep interactiveCanvasController](self "interactiveCanvasController")];
  [v4 setAnchorPoint:{0.5, 0.5}];
  [v3 frame];
  TSDCenterOfRect();
  [v4 setPosition:?];
  [v3 frame];
  v6 = v5;
  [v3 frame];
  [v4 setBounds:{0.0, 0.0, v6}];
  [v3 frame];
  v8 = -v7;
  [v3 frame];
  CATransform3DMakeTranslation(&v12, v8, -v9, 0.0);
  v11 = v12;
  [v4 setSublayerTransform:&v11];
  return v4;
}

- (CALayer)pressableAnimationLayer
{
  if ([-[THImageRep layout](self "layout")] && objc_msgSend(-[THImageRep layout](self, "layout"), "isReflowablePresentation"))
  {
    interactiveCanvasController = [(THImageRep *)self interactiveCanvasController];

    return [interactiveCanvasController layerForRep:self];
  }

  else
  {

    return [(THImageRep *)self p_setupContainerLayer];
  }
}

- (BOOL)p_isInBodyRep
{
  objc_opt_class();
  [(THImageRep *)self parentRep];
  v3 = TSUDynamicCast();
  objc_opt_class();
  [(THImageRep *)self parentRep];
  return (v3 | TSUDynamicCast()) != 0;
}

- (int)pressableAction
{
  if ([(THImageRep *)self popUpInfo])
  {
    objc_opt_class();
    [(THImageRep *)self interactiveCanvasController];
    v3 = TSUDynamicCast();
    if ([v3 isCompactWidth])
    {
      return 2;
    }

    else if ([v3 isCompactHeight])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if ([(THImageRep *)self p_hasHyperlink])
  {
    return 3;
  }

  else
  {
    result = [(THImageRep *)self p_isInBodyRep];
    if (result)
    {
      if ([-[THImageRep layout](self "layout")])
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)hitRep:(CGPoint)rep
{
  y = rep.y;
  x = rep.x;
  v7.receiver = self;
  v7.super_class = THImageRep;
  result = [(THImageRep *)&v7 hitRep:?];
  if (!result)
  {
    if ([(THImageRep *)self p_hasHyperlink])
    {
      [(THImageRep *)self naturalBounds];
      v8.x = x;
      v8.y = y;
      if (CGRectContainsPoint(v9, v8))
      {
        return self;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)canHandleGesture:(id)gesture
{
  if ([(THWPressableRepGestureTargetHandler *)[(THImageRep *)self pressableHandler] canHandleGesture:gesture])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    if (![-[THImageRep layout](self "layout")] || !-[THImageRep p_isInBodyRep](self, "p_isInBodyRep"))
    {
      v5 = [-[THImageRep layout](self "layout")];
      if (!v5)
      {
        return v5;
      }

      if ([(THImageRep *)self parentRep])
      {
        LOBYTE(v5) = 0;
        return v5;
      }
    }

    freeTransformableHandler = [(THImageRep *)self freeTransformableHandler];

    LOBYTE(v5) = [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler canHandleGesture:gesture];
  }

  return v5;
}

- (BOOL)handleGesture:(id)gesture
{
  if ([(THWPressableRepGestureTargetHandler *)[(THImageRep *)self pressableHandler] handleGesture:gesture])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    if (![-[THImageRep layout](self "layout")] || !-[THImageRep p_isInBodyRep](self, "p_isInBodyRep"))
    {
      v5 = [-[THImageRep layout](self "layout")];
      if (!v5)
      {
        return v5;
      }

      if ([(THImageRep *)self parentRep])
      {
        LOBYTE(v5) = 0;
        return v5;
      }
    }

    freeTransformableHandler = [(THImageRep *)self freeTransformableHandler];

    LOBYTE(v5) = [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler handleGesture:gesture];
  }

  return v5;
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDFreeTransform)
  {
    freeTransformableHandler = [(THImageRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler willBeginHandlingGesture:gesture];
  }
}

- (BOOL)p_shouldHitTest
{
  objc_opt_class();
  [(THImageRep *)self parentRep];
  v3 = TSUDynamicCast();
  objc_opt_class();
  [(THImageRep *)self parentRep];
  v4 = TSUDynamicCast();
  objc_opt_class();
  [(THImageRep *)self parentRep];
  v5 = TSUDynamicCast();
  if ([-[THImageRep info](self "info")] || (objc_msgSend(v3, "shouldHitTestChildImageRep:", self) & 1) != 0)
  {
    return 1;
  }

  if (!(v4 | v5))
  {
    return 0;
  }

  layout = [(THImageRep *)self layout];

  return [layout isReflowablePresentation];
}

- (id)p_hyperlink
{
  objc_opt_class();
  [(THImageRep *)self info];
  v3 = TSUDynamicCast();

  return [v3 hyperlinkURL];
}

- (BOOL)isExpanded
{
  layout = [(THImageRep *)self layout];

  return [layout isExpanded];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THImageRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)freeTransformWillBegin
{
  pressableAnimationLayer = [(THImageRep *)self pressableAnimationLayer];

  [(CALayer *)pressableAnimationLayer removeAllAnimations];
}

- (CGRect)rectForCompletion
{
  layout = [(THImageRep *)self layout];

  [layout frameInParent];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)expandedContentDrawableToPresent
{
  if (![(THImageRep *)self popUpInfo]|| ([(THImageRep *)self popUpInfo], (result = TSUProtocolCast()) == 0))
  {

    return [(THImageRep *)self info];
  }

  return result;
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

- (void)p_togglePanelDescriptionExpanded
{
  [(THImageRep *)self setPanelDescriptionExpanded:[(THImageRep *)self panelDescriptionExpanded]^ 1];
  [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerAnimatePanel:1 withCrossFadeContent:1 backgroundLayout:0 duration:0.25];
  expandedRepController = self->_expandedRepController;

  [(THWExpandedRepController *)expandedRepController expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:1];
}

- (id)expandedPanel:(int)panel primaryTargetForGesture:(id)gesture
{
  if (panel != 1)
  {
    return 0;
  }

  v7[7] = v4;
  v7[8] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_752A0;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  return [[THWTapGestureAction alloc] initWithAction:v7];
}

- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default
{
  if (panel == 1 && !self->_panelDescriptionExpanded)
  {
    layout = [-[THImageRep layout](self layout];
    if ([layout isCompactHeight])
    {
      return 2;
    }

    else if ([layout isCompactWidth])
    {
      return 5;
    }
  }

  return default;
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  height = toSize.height;
  width = toSize.width;
  v6 = size.height;
  v7 = size.width;
  layout = [(THImageRep *)self layout];
  [-[THImageRep interactiveCanvasController](self "interactiveCanvasController")];

  [layout scaleForCenteredAutoRotateFromSize:v7 toSize:v6 scale:{width, height, v10}];
  return result;
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillRotateTransitionFromSize:(CGSize)size toSize:(CGSize)toSize
{
  v4 = [(THImageRep *)self interactiveCanvasController:size.width];

  [v4 setViewScale:1.0];
}

- (void)expandedDidRotateTransitionToSize:(CGSize)size
{
  if (![(THImageRep *)self isFreeTransformInProgress:size.width])
  {
    [-[THImageRep layout](self "layout")];
    layout = [(THImageRep *)self layout];

    [layout invalidateChildren];
  }
}

- (void)expandedWillTransitionFromSize:(CGSize)size toSize:(CGSize)toSize
{
  v4 = [(THImageRep *)self interactiveCanvasController:size.width];

  [v4 setViewScale:1.0];
}

- (BOOL)expandedHasContentForPanel:(int)panel
{
  v3 = *&panel;
  v4 = [-[THImageRep info](self "info")];

  return [v4 panelContentProviderHasContentForPanel:v3];
}

- (id)expandedChildInfosForPanel:(int)panel
{
  v3 = *&panel;
  v4 = [-[THImageRep info](self "info")];

  return [v4 panelContentProviderChildInfosForPanel:v3];
}

- (BOOL)expandedAspectFillOnPresentIfClose
{
  layout = [(THImageRep *)self layout];

  return [layout isIntroMedia];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame
{
  v4 = [(THImageRep *)self layout:frame.origin.x];

  [v4 invalidateFrame];
}

- (BOOL)p_imageIsMostlyBlack
{
  imageRef = [(THImageRep *)self imageRef];
  AlphaInfo = CGImageGetAlphaInfo(imageRef);
  if (AlphaInfo)
  {
    v12.width = 1.0;
    v12.height = 1.0;
    UIGraphicsBeginImageContext(v12);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationMedium);
    [[UIImage imageWithCGImage:?]blendMode:"drawInRect:blendMode:alpha:" alpha:17, 0.0, 0.0, 1.0, 1.0, 1.0];
    Data = CGBitmapContextGetData(CurrentContext);
    LOBYTE(v6) = *Data;
    LOBYTE(v7) = Data[1];
    *&v8 = v7 * 0.7152;
    v9 = *&v8 + v6 * 0.2126;
    LOBYTE(v8) = Data[2];
    v10 = v9 + v8 * 0.0722;
    UIGraphicsEndImageContext();
    LOBYTE(AlphaInfo) = v10 < 0.05;
  }

  return AlphaInfo;
}

- (void)didPresentExpanded
{
  layout = [(THImageRep *)self layout];

  [layout invalidate];
}

- (id)animationLayer
{
  if (![(THImageRep *)self isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THImageRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {

    return [(THImageRep *)self pressableAnimationLayer];
  }

  return result;
}

- (id)shadowAnimationLayer
{
  if (![(THImageRep *)self isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THImageRep *)self freeTransformableHandler] ftc] shadowLayer]) == 0)
  {

    return [(THImageRep *)self pressableAnimationShadowLayer];
  }

  return result;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(THImageRep *)self isFreeTransformInProgress];
  if (result)
  {
    result = [(THWFreeTransformableRepGestureTargetHandler *)[(THImageRep *)self freeTransformableHandler] ftc];
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
  if ([(THImageRep *)self isFreeTransformInProgress]&& ![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THImageRep *)self freeTransformableHandler] ftc] passedThreshold])
  {
    return 0;
  }

  return [(THImageRep *)self pressableAnimationLayer];
}

- (CGRect)ftcTargetFrame
{
  if ([(THImageRep *)self isFreeTransformInProgress])
  {
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THImageRep *)self freeTransformableHandler] ftc] completionTargetRect];
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

@end