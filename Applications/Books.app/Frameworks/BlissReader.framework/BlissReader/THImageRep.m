@interface THImageRep
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)expandedAspectFillOnPresentIfClose;
- (BOOL)expandedHasContentForPanel:(int)a3;
- (BOOL)handleGesture:(id)a3;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)p_imageIsMostlyBlack;
- (BOOL)p_isInBodyRep;
- (BOOL)p_shouldHitTest;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (CGRect)ftcTargetFrame;
- (CGRect)rectForCompletion;
- (THAnimationController)animationController;
- (THImageRep)initWithLayout:(id)a3 canvas:(id)a4;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (id)animationLayer;
- (id)expandedChildInfosForPanel:(int)a3;
- (id)expandedContentDrawableToPresent;
- (id)expandedPanel:(int)a3 primaryTargetForGesture:(id)a4;
- (id)hitRep:(CGPoint)a3;
- (id)p_hyperlink;
- (id)p_setupContainerLayer;
- (id)shadowAnimationLayer;
- (id)targetLayer;
- (int)pressableAction;
- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5;
- (void)dealloc;
- (void)didPresentExpanded;
- (void)didUpdateLayer:(id)a3;
- (void)expandedDidRotateTransitionToSize:(CGSize)a3;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4;
- (void)expandedWillRotateTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (void)expandedWillTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (void)freeTransformWillBegin;
- (void)p_togglePanelDescriptionExpanded;
- (void)willBeginHandlingGesture:(id)a3;
@end

@implementation THImageRep

- (THImageRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6.receiver = self;
  v6.super_class = THImageRep;
  v4 = [(THImageRep *)&v6 initWithLayout:a3 canvas:a4];
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

- (void)didUpdateLayer:(id)a3
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

  [a3 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
  if (!UIAccessibilityIsInvertColorsEnabled())
  {
    [a3 th_accessibilityUndoInvertColorsIfNecessary];
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
      v3 = [TSUDynamicCast() pressHandlerForPressableReps];
      if (v3)
      {
        self->_pressableHandler = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:self pressHandler:v3];
      }
    }
  }

  return self->_pressableHandler;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(THImageRep *)self p_shouldHitTest];
  if (v6)
  {
    [(THImageRep *)self naturalBounds];
    v11 = x;
    v12 = y;

    LOBYTE(v6) = CGRectContainsPoint(*&v7, *&v11);
  }

  return v6;
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
    v3 = [(THImageRep *)self interactiveCanvasController];

    return [v3 layerForRep:self];
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

- (id)hitRep:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (BOOL)canHandleGesture:(id)a3
{
  if ([(THWPressableRepGestureTargetHandler *)[(THImageRep *)self pressableHandler] canHandleGesture:a3])
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

    v6 = [(THImageRep *)self freeTransformableHandler];

    LOBYTE(v5) = [(THWFreeTransformableRepGestureTargetHandler *)v6 canHandleGesture:a3];
  }

  return v5;
}

- (BOOL)handleGesture:(id)a3
{
  if ([(THWPressableRepGestureTargetHandler *)[(THImageRep *)self pressableHandler] handleGesture:a3])
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

    v6 = [(THImageRep *)self freeTransformableHandler];

    LOBYTE(v5) = [(THWFreeTransformableRepGestureTargetHandler *)v6 handleGesture:a3];
  }

  return v5;
}

- (void)willBeginHandlingGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if (v5 == TSDFreeTransform)
  {
    v6 = [(THImageRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)v6 willBeginHandlingGesture:a3];
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

  v7 = [(THImageRep *)self layout];

  return [v7 isReflowablePresentation];
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
  v2 = [(THImageRep *)self layout];

  return [v2 isExpanded];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THImageRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)freeTransformWillBegin
{
  v2 = [(THImageRep *)self pressableAnimationLayer];

  [(CALayer *)v2 removeAllAnimations];
}

- (CGRect)rectForCompletion
{
  v2 = [(THImageRep *)self layout];

  [v2 frameInParent];
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

- (id)expandedPanel:(int)a3 primaryTargetForGesture:(id)a4
{
  if (a3 != 1)
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

- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5
{
  if (a4 == 1 && !self->_panelDescriptionExpanded)
  {
    v6 = [-[THImageRep layout](self layout];
    if ([v6 isCompactHeight])
    {
      return 2;
    }

    else if ([v6 isCompactWidth])
    {
      return 5;
    }
  }

  return a5;
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v9 = [(THImageRep *)self layout];
  [-[THImageRep interactiveCanvasController](self "interactiveCanvasController")];

  [v9 scaleForCenteredAutoRotateFromSize:v7 toSize:v6 scale:{width, height, v10}];
  return result;
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillRotateTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  v4 = [(THImageRep *)self interactiveCanvasController:a3.width];

  [v4 setViewScale:1.0];
}

- (void)expandedDidRotateTransitionToSize:(CGSize)a3
{
  if (![(THImageRep *)self isFreeTransformInProgress:a3.width])
  {
    [-[THImageRep layout](self "layout")];
    v4 = [(THImageRep *)self layout];

    [v4 invalidateChildren];
  }
}

- (void)expandedWillTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  v4 = [(THImageRep *)self interactiveCanvasController:a3.width];

  [v4 setViewScale:1.0];
}

- (BOOL)expandedHasContentForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [-[THImageRep info](self "info")];

  return [v4 panelContentProviderHasContentForPanel:v3];
}

- (id)expandedChildInfosForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [-[THImageRep info](self "info")];

  return [v4 panelContentProviderChildInfosForPanel:v3];
}

- (BOOL)expandedAspectFillOnPresentIfClose
{
  v2 = [(THImageRep *)self layout];

  return [v2 isIntroMedia];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4
{
  v4 = [(THImageRep *)self layout:a3.origin.x];

  [v4 invalidateFrame];
}

- (BOOL)p_imageIsMostlyBlack
{
  v2 = [(THImageRep *)self imageRef];
  AlphaInfo = CGImageGetAlphaInfo(v2);
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
  v2 = [(THImageRep *)self layout];

  [v2 invalidate];
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