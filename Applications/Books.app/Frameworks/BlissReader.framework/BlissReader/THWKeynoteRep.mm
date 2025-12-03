@interface THWKeynoteRep
- (BOOL)autoplayAllowed;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)canHandleGesture:(id)gesture forChildRep:(id)rep;
- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep;
- (BOOL)expandedHasContentForPanel:(int)panel;
- (BOOL)expandedHasRoomForPanelsWithHeight:(double)height inFrame:(CGRect)frame;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)keynoteShowRep:(id)rep handleURL:(id)l;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CGAffineTransform)freeTransform;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (CGRect)ftcTargetFrame;
- (CGRect)pressableNaturalBounds;
- (CGRect)rectForCompletion;
- (THAnimationController)animationController;
- (THWAutoplayConfig)autoplayConfig;
- (THWKeynoteRep)initWithLayout:(id)layout canvas:(id)canvas;
- (THWKeynoteShowRep)showRep;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (THWTransportControlRep)transportControlRep;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (id)animationLayer;
- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted;
- (id)cloneForTransportControl:(id)control;
- (id)expandedChildInfosForPanel:(int)panel;
- (id)expandedPanel:(int)panel primaryTargetForGesture:(id)gesture;
- (id)expandedSupportedGestureKinds;
- (id)shadowAnimationLayer;
- (id)targetLayer;
- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default;
- (void)buttonControl:(id)control didUpdateLayer:(id)layer;
- (void)dealloc;
- (void)didPresentExpandedPostCommit;
- (void)expandableExpandedPresentationDidEnd;
- (void)expandedDidRotateTransitionToSize:(CGSize)size;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)handleNavigateNextCommand;
- (void)handleNavigatePreviousCommand;
- (void)p_keynoteShowDidUpdate:(id)update;
- (void)p_play;
- (void)p_stop;
- (void)p_togglePanelDescriptionExpanded;
- (void)viewScaleDidChange;
- (void)wasAddedToParent;
- (void)willBeRemovedFromParent;
- (void)willBeginHandlingGesture:(id)gesture;
@end

@implementation THWKeynoteRep

- (THWKeynoteRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v6.receiver = self;
  v6.super_class = THWKeynoteRep;
  v4 = [(THWKeynoteRep *)&v6 initWithLayout:layout canvas:canvas];
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
  layout = [(THWKeynoteRep *)self layout];

  [layout invalidateChildren];
}

- (id)cloneForTransportControl:(id)control
{
  showRep = [(THWKeynoteRep *)self showRep];

  return [(THWKeynoteShowRep *)showRep transportControlClone];
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

- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6 = THBundle();
  if (highlightedCopy)
  {
    v7 = @"play-keynote-64-P";
  }

  else
  {
    v7 = @"play-keynote-64";
  }

  return [TSUImage imageNamed:v7 inBundle:v6];
}

- (void)buttonControl:(id)control didUpdateLayer:(id)layer
{
  [layer setContentsGravity:kCAGravityResizeAspectFill];
  [objc_msgSend(control "canvas")];
  TSDMultiplySizeScalar();
  [layer bounds];
  TSDShrinkSizeToFitInSize();
  v7 = v6;
  v9 = v8;
  [layer bounds];
  v12 = THScaleNeededToFitSizeInSize(v10, v11, v7, v9);
  CATransform3DMakeScale(&v14, v12, v12, 1.0);
  v13 = v14;
  [layer setTransform:&v13];
}

- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep
{
  if (![(THWKeynoteRep *)self pressableHandler:control])
  {
    return 1;
  }

  pressableHandler = [(THWKeynoteRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionEnabled];
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

- (BOOL)expandedHasContentForPanel:(int)panel
{
  v3 = *&panel;
  v4 = [-[THWKeynoteRep info](self "info")];

  return [v4 panelContentProviderHasContentForPanel:v3];
}

- (id)expandedChildInfosForPanel:(int)panel
{
  v3 = *&panel;
  v4 = [-[THWKeynoteRep info](self "info")];

  return [v4 panelContentProviderChildInfosForPanel:v3];
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame
{
  v4 = [(THWKeynoteRep *)self layout:frame.origin.x];

  [v4 invalidateFrame];
}

- (id)expandedSupportedGestureKinds
{
  showRep = [(THWKeynoteRep *)self showRep];

  return [(THWKeynoteShowRep *)showRep supportedGestureKinds];
}

- (BOOL)expandedHasRoomForPanelsWithHeight:(double)height inFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [-[THWKeynoteShowRep layout](-[THWKeynoteRep showRep](self "showRep")];
  TSDScaleSizeWithinSize();
  v10 = v9;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  return CGRectGetHeight(v12) - v10 >= height;
}

- (void)didPresentExpandedPostCommit
{
  +[CATransaction flush];
  showRep = [(THWKeynoteRep *)self showRep];

  [(THWKeynoteShowRep *)showRep playPreparedShow];
}

- (void)p_togglePanelDescriptionExpanded
{
  [(THWKeynoteRep *)self setPanelDescriptionExpanded:[(THWKeynoteRep *)self panelDescriptionExpanded]^ 1];
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
  v7[2] = sub_191450;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  return [[THWTapGestureAction alloc] initWithAction:v7];
}

- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default
{
  if (panel == 1 && !self->_panelDescriptionExpanded)
  {
    layout = [-[THWKeynoteRep layout](self layout];
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

- (void)handleNavigateNextCommand
{
  transportControlClone = [(THWKeynoteShowRep *)[(THWKeynoteRep *)self showRep] transportControlClone];
  if ([(TSWTransportControlClone *)transportControlClone transportControlCloneCanGotoNext])
  {

    [(TSWTransportControlClone *)transportControlClone transportControlCloneGotoNext];
  }
}

- (void)handleNavigatePreviousCommand
{
  transportControlClone = [(THWKeynoteShowRep *)[(THWKeynoteRep *)self showRep] transportControlClone];
  if ([(TSWTransportControlClone *)transportControlClone transportControlCloneCanGotoPrev])
  {

    [(TSWTransportControlClone *)transportControlClone transportControlCloneGotoPrev];
  }
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
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

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedDidRotateTransitionToSize:(CGSize)size
{
  v3 = [(THWKeynoteRep *)self layout:size.width];

  [v3 invalidateFrame];
}

- (id)animationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {
    interactiveCanvasController = [(THWKeynoteRep *)self interactiveCanvasController];
    showRep = [(THWKeynoteRep *)self showRep];

    return [interactiveCanvasController layerForRep:showRep];
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

- (void)p_keynoteShowDidUpdate:(id)update
{
  object = [update object];
  if (object == [(THWKeynoteShowRep *)[(THWKeynoteRep *)self showRep] transportControlClone])
  {
    layout = [(THWKeynoteRep *)self layout];

    [layout hidePlayButton];
  }
}

- (BOOL)canHandleGesture:(id)gesture forChildRep:(id)rep
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWKeynoteRep *)self pressableHandler] canHandleGesture:gesture forChildRep:rep])
  {
    return 1;
  }

  gestureKind = [gesture gestureKind];
  return gestureKind == TSDFreeTransform;
}

- (BOOL)isExpanded
{
  layout = [(THWKeynoteRep *)self layout];

  return [layout isExpanded];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWKeynoteRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (void)freeTransformWillBegin
{
  [-[THWKeynoteRep layout](self "layout")];
  showRep = [(THWKeynoteRep *)self showRep];

  [(THWKeynoteShowRep *)showRep pauseLayerUpdates];
}

- (void)freeTransformDidEnd
{
  [-[THWKeynoteRep layout](self "layout")];
  showRep = [(THWKeynoteRep *)self showRep];

  [(THWKeynoteShowRep *)showRep resumeLayerUpdatesAndLayoutImmediately];
}

- (CGRect)rectForCompletion
{
  layout = [(THWKeynoteShowRep *)[(THWKeynoteRep *)self showRep] layout];

  [layout frameInParent];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)canHandleGesture:(id)gesture
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWKeynoteRep *)self pressableHandler] canHandleGesture:gesture])
  {
    return 1;
  }

  freeTransformableHandler = [(THWKeynoteRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler canHandleGesture:gesture];
}

- (BOOL)handleGesture:(id)gesture
{
  if ([(THWPressableRepGestureTargetHandler *)[(THWKeynoteRep *)self pressableHandler] handleGesture:gesture])
  {
    return 1;
  }

  freeTransformableHandler = [(THWKeynoteRep *)self freeTransformableHandler];

  return [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler handleGesture:gesture];
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDFreeTransform)
  {
    freeTransformableHandler = [(THWKeynoteRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler willBeginHandlingGesture:gesture];
  }
}

- (BOOL)wantsPressAnimation
{
  pressableHandler = [(THWKeynoteRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionDisabledOnPage];
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
  info = [(THWKeynoteRep *)self info];

  return [info autoplayConfig];
}

- (BOOL)autoplayAllowed
{
  pressableHandler = [(THWKeynoteRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionAllowAutoplay];
}

- (BOOL)keynoteShowRep:(id)rep handleURL:(id)l
{
  v7 = [objc_msgSend(l "scheme")];
  if ([(THWKeynoteRep *)self showRep]!= rep)
  {
    goto LABEL_2;
  }

  LODWORD(v8) = [objc_msgSend(+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
  if (!v8)
  {
    return v8;
  }

  if (![v7 isEqualToString:@"ibooks"] || objc_msgSend(l, "host"))
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

    [v8 handleHyperlinkWithURL:l];
  }

  else
  {
    objc_opt_class();
    [(THWKeynoteRep *)self interactiveCanvasController];
    [TSUDynamicCast() performSelectorOnMainThread:"handleHyperlinkWithURL:" withObject:l waitUntilDone:0];
  }

  LOBYTE(v8) = 1;
  return v8;
}

@end