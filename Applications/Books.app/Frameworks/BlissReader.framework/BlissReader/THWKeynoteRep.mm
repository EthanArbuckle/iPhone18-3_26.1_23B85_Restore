@interface THWKeynoteRep
- (BOOL)autoplayAllowed;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)canHandleGesture:(id)a3 forChildRep:(id)a4;
- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4;
- (BOOL)expandedHasContentForPanel:(int)a3;
- (BOOL)expandedHasRoomForPanelsWithHeight:(double)a3 inFrame:(CGRect)a4;
- (BOOL)handleGesture:(id)a3;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)keynoteShowRep:(id)a3 handleURL:(id)a4;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CGAffineTransform)freeTransform;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (CGRect)ftcTargetFrame;
- (CGRect)pressableNaturalBounds;
- (CGRect)rectForCompletion;
- (THAnimationController)animationController;
- (THWAutoplayConfig)autoplayConfig;
- (THWKeynoteRep)initWithLayout:(id)a3 canvas:(id)a4;
- (THWKeynoteShowRep)showRep;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (THWTransportControlRep)transportControlRep;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (id)animationLayer;
- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5;
- (id)cloneForTransportControl:(id)a3;
- (id)expandedChildInfosForPanel:(int)a3;
- (id)expandedPanel:(int)a3 primaryTargetForGesture:(id)a4;
- (id)expandedSupportedGestureKinds;
- (id)shadowAnimationLayer;
- (id)targetLayer;
- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5;
- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4;
- (void)dealloc;
- (void)didPresentExpandedPostCommit;
- (void)expandableExpandedPresentationDidEnd;
- (void)expandedDidRotateTransitionToSize:(CGSize)a3;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)handleNavigateNextCommand;
- (void)handleNavigatePreviousCommand;
- (void)p_keynoteShowDidUpdate:(id)a3;
- (void)p_play;
- (void)p_stop;
- (void)p_togglePanelDescriptionExpanded;
- (void)viewScaleDidChange;
- (void)wasAddedToParent;
- (void)willBeRemovedFromParent;
- (void)willBeginHandlingGesture:(id)a3;
@end

@implementation THWKeynoteRep

- (THWKeynoteRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6.receiver = self;
  v6.super_class = THWKeynoteRep;
  v4 = [(THWKeynoteRep *)&v6 initWithLayout:a3 canvas:a4];
  if (v4)
  {
    v4->_freeTransformableHandler = -[THWFreeTransformableRepGestureTargetHandler initWithFreeTransformableRep:handler:]([THWFreeTransformableRepGestureTargetHandler alloc], "initWithFreeTransformableRep:handler:", v4, [objc_msgSend(-[THWKeynoteRep hostICC](v4 "hostICC")]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWKeynoteRep;
  [(THWKeynoteRep *)&v3 dealloc];
}

- (THWPressableRepGestureTargetHandler)pressableHandler
{
  if (!self->_pressableHandler)
  {
    objc_opt_class();
    [(THWKeynoteRep *)self interactiveCanvasController];
    v3 = [TSUDynamicCast() pressHandlerForPressableReps];
    if (v3)
    {
      v4 = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:self pressHandler:v3];
      self->_pressableHandler = v4;
      [(THWPressableRepGestureTargetHandler *)v4 setEnabledOnlyIfWidgetInteractionDisabledOnPage:1];
    }
  }

  return self->_pressableHandler;
}

- (void)wasAddedToParent
{
  v3.receiver = self;
  v3.super_class = THWKeynoteRep;
  [(THWKeynoteRep *)&v3 wasAddedToParent];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"p_keynoteShowDidUpdate:" object:@"kTSWTransportControlCloneDidUpdateNotification", 0];
}

- (void)willBeRemovedFromParent
{
  v3.receiver = self;
  v3.super_class = THWKeynoteRep;
  [(THWKeynoteRep *)&v3 willBeRemovedFromParent];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kTSWTransportControlCloneDidUpdateNotification", 0];
}

- (void)viewScaleDidChange
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWKeynoteRep *)self pressableHandler] widgetInteractionDisabledOnPage])
  {
    [(THWKeynoteRep *)self p_stop];
  }

  [-[THWKeynoteRep layout](self "layout")];
  v3 = [(THWKeynoteRep *)self layout];

  [v3 invalidateChildren];
}

- (id)cloneForTransportControl:(id)a3
{
  v3 = [(THWKeynoteRep *)self showRep];

  return [(THWKeynoteShowRep *)v3 transportControlClone];
}

- (void)p_play
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_190E40;
  activity_block[3] = &unk_45AE00;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "Keynote Play", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)p_stop
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_190F04;
  activity_block[3] = &unk_45AE00;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "Keynote Stop", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5
{
  v5 = a5;
  v6 = THBundle();
  if (v5)
  {
    v7 = @"play-keynote-64-P";
  }

  else
  {
    v7 = @"play-keynote-64";
  }

  return [TSUImage imageNamed:v7 inBundle:v6];
}

- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4
{
  [a4 setContentsGravity:kCAGravityResizeAspectFill];
  [objc_msgSend(a3 "canvas")];
  TSDMultiplySizeScalar();
  [a4 bounds];
  TSDShrinkSizeToFitInSize();
  v7 = v6;
  v9 = v8;
  [a4 bounds];
  v12 = THScaleNeededToFitSizeInSize(v10, v11, v7, v9);
  CATransform3DMakeScale(&v14, v12, v12, 1.0);
  v13 = v14;
  [a4 setTransform:&v13];
}

- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4
{
  if (![(THWKeynoteRep *)self pressableHandler:a3])
  {
    return 1;
  }

  v5 = [(THWKeynoteRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v5 widgetInteractionEnabled];
}

- (THAnimationController)animationController
{
  result = self->_animationController;
  if (!result)
  {
    v4 = objc_alloc_init(THAnimationController);
    self->_animationController = v4;
    [(THAnimationController *)v4 setSource:self];
    [(THAnimationController *)self->_animationController addObserver:self];
    return self->_animationController;
  }

  return result;
}

- (void)expandableExpandedPresentationDidEnd
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWKeynoteRep *)self pressableHandler] widgetInteractionDisabledOnPage])
  {

    [(THWKeynoteRep *)self p_stop];
  }
}

- (BOOL)expandedHasContentForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [-[THWKeynoteRep info](self "info")];

  return [v4 panelContentProviderHasContentForPanel:v3];
}

- (id)expandedChildInfosForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [-[THWKeynoteRep info](self "info")];

  return [v4 panelContentProviderChildInfosForPanel:v3];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4
{
  v4 = [(THWKeynoteRep *)self layout:a3.origin.x];

  [v4 invalidateFrame];
}

- (id)expandedSupportedGestureKinds
{
  v2 = [(THWKeynoteRep *)self showRep];

  return [(THWKeynoteShowRep *)v2 supportedGestureKinds];
}

- (BOOL)expandedHasRoomForPanelsWithHeight:(double)a3 inFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [-[THWKeynoteShowRep layout](-[THWKeynoteRep showRep](self "showRep")];
  TSDScaleSizeWithinSize();
  v10 = v9;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  return CGRectGetHeight(v12) - v10 >= a3;
}

- (void)didPresentExpandedPostCommit
{
  +[CATransaction flush];
  v3 = [(THWKeynoteRep *)self showRep];

  [(THWKeynoteShowRep *)v3 playPreparedShow];
}

- (void)p_togglePanelDescriptionExpanded
{
  [(THWKeynoteRep *)self setPanelDescriptionExpanded:[(THWKeynoteRep *)self panelDescriptionExpanded]^ 1];
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
  v7[2] = sub_191450;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  return [[THWTapGestureAction alloc] initWithAction:v7];
}

- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5
{
  if (a4 == 1 && !self->_panelDescriptionExpanded)
  {
    v6 = [-[THWKeynoteRep layout](self layout];
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

- (void)handleNavigateNextCommand
{
  v2 = [(THWKeynoteShowRep *)[(THWKeynoteRep *)self showRep] transportControlClone];
  if ([(TSWTransportControlClone *)v2 transportControlCloneCanGotoNext])
  {

    [(TSWTransportControlClone *)v2 transportControlCloneGotoNext];
  }
}

- (void)handleNavigatePreviousCommand
{
  v2 = [(THWKeynoteShowRep *)[(THWKeynoteRep *)self showRep] transportControlClone];
  if ([(TSWTransportControlClone *)v2 transportControlCloneCanGotoPrev])
  {

    [(TSWTransportControlClone *)v2 transportControlCloneGotoPrev];
  }
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  [-[THWKeynoteShowRep layout](-[THWKeynoteRep showRep](self "showRep")];
  TSDScaleSizeWithinSize();
  v6 = v5;
  v8 = v7;
  [-[THWKeynoteShowRep layout](-[THWKeynoteRep showRep](self "showRep")];
  TSDScaleSizeWithinSize();
  *&v9 = v9 / v6;
  *&v10 = v10 / v8;
  return fminf(*&v9, *&v10);
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedDidRotateTransitionToSize:(CGSize)a3
{
  v3 = [(THWKeynoteRep *)self layout:a3.width];

  [v3 invalidateFrame];
}

- (id)animationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {
    v4 = [(THWKeynoteRep *)self interactiveCanvasController];
    v5 = [(THWKeynoteRep *)self showRep];

    return [v4 layerForRep:v5];
  }

  return result;
}

- (id)shadowAnimationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    return 0;
  }

  v3 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v3 shadowLayer];
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress];
  if (result)
  {
    result = [(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc];
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
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]&& ![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] passedThreshold])
  {
    return 0;
  }

  return [(THWKeynoteRep *)self animationLayer];
}

- (CGRect)ftcTargetFrame
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] completionTargetRect];
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

- (THWKeynoteShowRep)showRep
{
  objc_opt_class();
  [-[THWKeynoteRep canvas](self "canvas")];

  return TSUDynamicCast();
}

- (THWTransportControlRep)transportControlRep
{
  objc_opt_class();
  [-[THWKeynoteRep canvas](self "canvas")];

  return TSUDynamicCast();
}

- (void)p_keynoteShowDidUpdate:(id)a3
{
  v4 = [a3 object];
  if (v4 == [(THWKeynoteShowRep *)[(THWKeynoteRep *)self showRep] transportControlClone])
  {
    v5 = [(THWKeynoteRep *)self layout];

    [v5 hidePlayButton];
  }
}

- (BOOL)canHandleGesture:(id)a3 forChildRep:(id)a4
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWKeynoteRep *)self pressableHandler] canHandleGesture:a3 forChildRep:a4])
  {
    return 1;
  }

  v6 = [a3 gestureKind];
  return v6 == TSDFreeTransform;
}

- (BOOL)isExpanded
{
  v2 = [(THWKeynoteRep *)self layout];

  return [v2 isExpanded];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)freeTransformWillBegin
{
  [-[THWKeynoteRep layout](self "layout")];
  v3 = [(THWKeynoteRep *)self showRep];

  [(THWKeynoteShowRep *)v3 pauseLayerUpdates];
}

- (void)freeTransformDidEnd
{
  [-[THWKeynoteRep layout](self "layout")];
  v3 = [(THWKeynoteRep *)self showRep];

  [(THWKeynoteShowRep *)v3 resumeLayerUpdatesAndLayoutImmediately];
}

- (CGRect)rectForCompletion
{
  v2 = [(THWKeynoteShowRep *)[(THWKeynoteRep *)self showRep] layout];

  [v2 frameInParent];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)canHandleGesture:(id)a3
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWKeynoteRep *)self pressableHandler] canHandleGesture:a3])
  {
    return 1;
  }

  v6 = [(THWKeynoteRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)v6 canHandleGesture:a3];
}

- (BOOL)handleGesture:(id)a3
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWKeynoteRep *)self pressableHandler] handleGesture:a3])
  {
    return 1;
  }

  v6 = [(THWKeynoteRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)v6 handleGesture:a3];
}

- (void)willBeginHandlingGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if (v5 == TSDFreeTransform)
  {
    v6 = [(THWKeynoteRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)v6 willBeginHandlingGesture:a3];
  }
}

- (BOOL)wantsPressAnimation
{
  v2 = [(THWKeynoteRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v2 widgetInteractionDisabledOnPage];
}

- (BOOL)wantsPressAction
{
  if ([(THWKeynoteRep *)self meetsStageDimensionRequirementForExpanded]|| (v3 = [(THWPressableRepGestureTargetHandler *)self->_pressableHandler widgetInteractionDisabledOnPage]))
  {
    LOBYTE(v3) = [(THWKeynoteRep *)self pressableAction]!= 0;
  }

  return v3;
}

- (CGRect)pressableNaturalBounds
{
  v2 = [-[THWKeynoteShowRep layout](-[THWKeynoteRep showRep](self "showRep")];

  [v2 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (THWAutoplayConfig)autoplayConfig
{
  v2 = [(THWKeynoteRep *)self info];

  return [v2 autoplayConfig];
}

- (BOOL)autoplayAllowed
{
  v2 = [(THWKeynoteRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v2 widgetInteractionAllowAutoplay];
}

- (BOOL)keynoteShowRep:(id)a3 handleURL:(id)a4
{
  v7 = [objc_msgSend(a4 "scheme")];
  if ([(THWKeynoteRep *)self showRep]!= a3)
  {
    goto LABEL_2;
  }

  LODWORD(v8) = [objc_msgSend(+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
  if (!v8)
  {
    return v8;
  }

  if (![v7 isEqualToString:@"ibooks"] || objc_msgSend(a4, "host"))
  {
    [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
LABEL_2:
    LOBYTE(v8) = 0;
    return v8;
  }

  if ([(THWKeynoteRep *)self isExpanded])
  {
    [-[THWKeynoteRep interactiveCanvasController](self "interactiveCanvasController")];
    v8 = TSUProtocolCast();
    if (!v8)
    {
      return v8;
    }

    [v8 handleHyperlinkWithURL:a4];
  }

  else
  {
    objc_opt_class();
    [(THWKeynoteRep *)self interactiveCanvasController];
    [TSUDynamicCast() performSelectorOnMainThread:"handleHyperlinkWithURL:" withObject:a4 waitUntilDone:0];
  }

  LOBYTE(v8) = 1;
  return v8;
}

@end