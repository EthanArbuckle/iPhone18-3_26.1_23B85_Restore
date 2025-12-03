@interface THWReviewRep
- (BOOL)canExpand;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep;
- (BOOL)controlContainer:(id)container allowTrackingContainedRep:(id)rep;
- (BOOL)expandedHasContentForPanel:(int)panel;
- (BOOL)expandedIsRelatedCanvasScrolling;
- (BOOL)expandedShouldDismissOnChangeFromSizeClassPairWithController:(id)controller flowMode:(BOOL)mode;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)isRelatedCanvasScrollingForScrollableCanvasController:(id)controller;
- (BOOL)p_questionCanBeChecked:(id)checked;
- (BOOL)pagedCanvasControllerDeferViewCreation:(id)creation;
- (BOOL)pagedCanvasControllerIsRelatedCanvasScrolling:(id)scrolling;
- (BOOL)shouldFadeOutAnimationLayer:(id)layer;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGRect)ftcTargetFrame;
- (CGRect)pressableNaturalBounds;
- (CGRect)rectForCompletion;
- (CGSize)expandedMinimumContentSize;
- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)controller;
- (THAnimationController)animationController;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (THWReviewRep)initWithLayout:(id)layout canvas:(id)canvas;
- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)controller;
- (double)contentsScaleForScrollableCanvasController:(id)controller;
- (double)pagedCanvasController:(id)controller adjustScale:(double)scale andFrame:(CGRect *)frame;
- (double)pagedCanvasControllerContentsScale:(id)scale;
- (id)animationLayer;
- (id)bookNavigatorForScrollableCanvasController:(id)controller;
- (id)documentNavigatorForScrollableCanvasController:(id)controller;
- (id)expandedAdditionalChildLayoutsForPanel:(int)panel;
- (id)expandedChildInfosForPanel:(int)panel;
- (id)expandedLayoutGeometryForLayout:(id)layout inPanel:(int)panel withWidth:(double)width insets:(UIEdgeInsets)insets;
- (id)expandedRotationAnimationController;
- (id)pAnimationLayer;
- (id)pAnimationView;
- (id)p_currentQuestion;
- (id)p_currentScrollableCanvasController;
- (id)p_dataController;
- (id)p_matchingAnswerStateForQuestion:(id)question temporaryMOC:(id)c;
- (id)p_repForPage:(unint64_t)page;
- (id)p_repForQuestion:(id)question;
- (id)p_responseController;
- (id)pagedCanvasController:(id)controller infosToDisplayForPageRange:(_NSRange)range;
- (id)pagedCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (id)reviewQuestion:(id)question cachedImageNamed:(id)named;
- (id)reviewQuestionDraggingHostView:(id)view;
- (id)scrollableCanvasController:(id)controller actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture;
- (id)scrollableCanvasController:(id)controller infosToDisplayForViewport:(CGRect)viewport;
- (id)scrollableCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (id)scrollableCanvasHost;
- (id)shadowAnimationLayer;
- (id)shadowPath;
- (id)targetLayer;
- (int)p_computeCheckButtonStateDisabled:(BOOL *)disabled;
- (int)p_evaluateAnswerToQuestion:(id)question updateScore:(BOOL)score;
- (int)reviewQuestion:(id)question radioStateForChoice:(unint64_t)choice pressed:(BOOL)pressed;
- (int)reviewQuestionInitialState:(id)state;
- (unint64_t)pageCountForPagedCanvasController:(id)controller;
- (unint64_t)reviewQuestion:(id)question placardForTarget:(unint64_t)target;
- (unint64_t)reviewQuestion:(id)question targetForPlacard:(unint64_t)placard;
- (unsigned)expandedAlignmentForLayout:(id)layout inPanel:(int)panel;
- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)p_answersUpdated;
- (void)p_checkAllAnswers;
- (void)p_checkQuestionAnswer:(id)answer;
- (void)p_clearQuestionAnswer:(id)answer;
- (void)p_invalidateLayouts;
- (void)p_refreshQuestions;
- (void)p_relaxMinimizeInfosNextFrame;
- (void)p_resetQuestions;
- (void)p_updateButtonStates;
- (void)p_updatePersitentQuestionIndex:(unint64_t)index;
- (void)p_updateQuestionIndex:(unint64_t)index animate:(BOOL)animate;
- (void)pagedCanvasController:(id)controller customizeLayerHost:(id)host;
- (void)pagedCanvasController:(id)controller didScrollToPageIndex:(unint64_t)index;
- (void)performanceModeChanged;
- (void)queryScore:(id)score;
- (void)reparentAnimationLayerIfBackedByView:(id)view;
- (void)reparentTargetLayerIfBackedByView:(id)view;
- (void)reviewControls:(id)controls buttonPressed:(int)pressed;
- (void)reviewQuestion:(id)question associatePlacard:(unint64_t)placard withTarget:(unint64_t)target;
- (void)reviewQuestion:(id)question selectChoice:(unint64_t)choice;
- (void)reviewQuestion:(id)question unassociateTargets:(id)targets;
- (void)reviewQuestionInvalidateLayers:(id)layers;
- (void)scrollableCanvasController:(id)controller customizeLayerHost:(id)host;
- (void)updateFromLayout;
- (void)viewScaleDidChange;
- (void)willBeginHandlingGesture:(id)gesture;
- (void)willReplaceContentsFromRep:(id)rep;
@end

@implementation THWReviewRep

- (THWReviewRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v6.receiver = self;
  v6.super_class = THWReviewRep;
  v4 = [(THWReviewRep *)&v6 initWithLayout:layout canvas:canvas];
  if (v4)
  {
    v4->_scrollableCanvasControllers = objc_alloc_init(NSMutableDictionary);
    v4->_cachedImages = objc_alloc_init(NSMutableDictionary);
    if ([(THWReviewRep *)v4 isExpanded])
    {
      [-[THWReviewRep hostICC](v4 "hostICC")];
    }

    else
    {
      [(THWReviewRep *)v4 interactiveCanvasController];
    }

    v4->_progressTracker = TSUProtocolCast();
    v4->_tracksScore = 1;
    if ([objc_msgSend(-[THWReviewRep hostICC](v4 "hostICC")])
    {
      v4->_freeTransformableHandler = -[THWFreeTransformableRepGestureTargetHandler initWithFreeTransformableRep:handler:]([THWFreeTransformableRepGestureTargetHandler alloc], "initWithFreeTransformableRep:handler:", v4, [objc_msgSend(-[THWReviewRep hostICC](v4 "hostICC")]);
    }
  }

  return v4;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_scrollableCanvasControllers enumerateKeysAndObjectsUsingBlock:&stru_45E440];

  v3.receiver = self;
  v3.super_class = THWReviewRep;
  [(THWReviewRep *)&v3 dealloc];
}

- (THWPressableRepGestureTargetHandler)pressableHandler
{
  if (!self->_pressableHandler)
  {
    objc_opt_class();
    [(THWReviewRep *)self interactiveCanvasController];
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

- (void)willReplaceContentsFromRep:(id)rep
{
  v6.receiver = self;
  v6.super_class = THWReviewRep;
  [(THWReviewRep *)&v6 willReplaceContentsFromRep:?];
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    if ([v4 isExpanded])
    {
      -[THWReviewRep p_updateQuestionIndex:animate:](self, "p_updateQuestionIndex:animate:", [objc_msgSend(v5 "layout")], 0);
      -[THWPagedCanvasController setPageIndex:animated:](self->_stageCanvasController, "setPageIndex:animated:", [-[THWReviewRep layout](self "layout")], 0);
      [(THWReviewRep *)self p_refreshQuestions];
    }
  }
}

- (void)updateFromLayout
{
  v28.receiver = self;
  v28.super_class = THWReviewRep;
  [(THWReviewRep *)&v28 updateFromLayout];
  v3 = [-[THWReviewRep layout](self "layout")];
  v4 = v3;
  if (!self->_stageFillLayer && (v3 & 1) == 0)
  {
    self->_stageFillLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    -[CALayer setBackgroundColor:](self->_stageFillLayer, "setBackgroundColor:", [+[TSUColor whiteColor](TSUColor "whiteColor")]);
    [(CALayer *)self->_stageFillLayer setOpaque:1];
    [(CALayer *)self->_stageFillLayer setDelegate:[(THWReviewRep *)self interactiveCanvasController]];
  }

  if (!((self->_stageStrokeLayer != 0) | v4 & 1))
  {
    v5 = objc_alloc_init(TSDNoDefaultImplicitActionShapeLayer);
    self->_stageStrokeLayer = v5;
    [(CAShapeLayer *)v5 setFillColor:0];
    [(CAShapeLayer *)self->_stageStrokeLayer setLineWidth:1.0];
    -[CAShapeLayer setStrokeColor:](self->_stageStrokeLayer, "setStrokeColor:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.0]);
    [(CAShapeLayer *)self->_stageStrokeLayer setDelegate:[(THWReviewRep *)self interactiveCanvasController]];
  }

  [-[THWReviewRep canvas](self "canvas")];
  memset(&v27, 0, sizeof(v27));
  CGAffineTransformMakeScale(&v27, v6, v6);
  [-[THWReviewRep layout](self "layout")];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  TSDCenterOfRect();
  v25 = vaddq_f64(*&v27.tx, vmlaq_n_f64(vmulq_n_f64(*&v27.c, v15), *&v27.a, v16));
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  CGRectInset(v29, 1.0, 1.0);
  TSDRectWithSize();
  [(CALayer *)self->_stageFillLayer setBounds:?];
  [(CALayer *)self->_stageFillLayer setPosition:?];
  v26 = v27;
  [(CALayer *)self->_stageFillLayer setAffineTransform:&v26];
  if (self->_stageStrokeLayer)
  {
    TSDRectWithSize();
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    v31 = CGRectInset(v30, 0.5, 0.5);
    v21 = v31.origin.x;
    v22 = v31.origin.y;
    v23 = v31.size.width;
    v24 = v31.size.height;
    [(CAShapeLayer *)self->_stageStrokeLayer setBounds:x, y, width, height];
    -[CAShapeLayer setPath:](self->_stageStrokeLayer, "setPath:", [+[TSDBezierPath bezierPathWithRect:](TSDBezierPath CGPath:v21]);
    [(CAShapeLayer *)self->_stageStrokeLayer setPosition:*&v25];
    v26 = v27;
    [(CAShapeLayer *)self->_stageStrokeLayer setAffineTransform:&v26];
  }
}

- (void)viewScaleDidChange
{
  if ([(THWReviewRep *)self pressableHandler])
  {
    widgetInteractionEnabled = [(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] widgetInteractionEnabled];
  }

  else
  {
    widgetInteractionEnabled = 1;
  }

  stageCanvasController = self->_stageCanvasController;

  [(THWPagedCanvasController *)stageCanvasController setUserInteractionEnabled:widgetInteractionEnabled];
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  v5.receiver = self;
  v5.super_class = THWReviewRep;
  [(THWReviewRep *)&v5 addAdditionalChildLayersToArray:?];
  if (self->_stageFillLayer)
  {
    [array addObject:?];
  }

  if (self->_stageStrokeLayer)
  {
    [array addObject:?];
  }
}

- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep
{
  if (![(THWReviewRep *)self pressableHandler:control])
  {
    return 1;
  }

  pressableHandler = [(THWReviewRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionEnabled];
}

- (void)control:(id)control repWasAdded:(id)added
{
  v6 = [control tag];
  if (v6 > 3)
  {
    if ((v6 - 4) >= 2)
    {
      return;
    }

    objc_opt_class();
    stageCanvasController = TSUDynamicCast();
    goto LABEL_11;
  }

  if (!v6)
  {

    self->_stageCanvasController = 0;
    objc_opt_class();
    self->_stageCanvasController = [TSUDynamicCast() pagedCanvasController];
    if ([(THWReviewRep *)self performanceMode])
    {
      [(THWPagedCanvasController *)self->_stageCanvasController setMinimizeInfoChange:1];
    }

    stageCanvasController = self->_stageCanvasController;
LABEL_11:

    [stageCanvasController setDelegate:self];
    return;
  }

  if (v6 != &dword_0 + 1)
  {
    if (v6 != &dword_0 + 3)
    {
      return;
    }

    index = [control index];
    [(NSMutableDictionary *)self->_scrollableCanvasControllers removeObjectForKey:[NSNumber numberWithUnsignedInteger:index]];
    objc_opt_class();
    scrollableCanvasController = [TSUDynamicCast() scrollableCanvasController];
    [(NSMutableDictionary *)self->_scrollableCanvasControllers setObject:scrollableCanvasController forKeyedSubscript:[NSNumber numberWithUnsignedInteger:index]];
    [scrollableCanvasController setInstanceData:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", index)}];
    [scrollableCanvasController setUpdateCanvasSizeOnLayout:1];
    stageCanvasController = scrollableCanvasController;
    goto LABEL_11;
  }

  objc_opt_class();
  v10 = TSUDynamicCast();
  self->_controlsRep = v10;
  [(THWReviewControlsRep *)v10 setDelegate:self];

  [(THWReviewRep *)self p_updateButtonStates];
}

- (void)control:(id)control repWillBeRemoved:(id)removed
{
  if ([(THWReviewControlsRep *)self->_controlsRep layout:control]== control)
  {
    self->_controlsRep = 0;
  }

  else if ([control tag] == &dword_0 + 3)
  {
    index = [control index];
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_scrollableCanvasControllers objectForKeyedSubscript:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", index)), "setDelegate:", 0}];
    scrollableCanvasControllers = self->_scrollableCanvasControllers;
    v8 = [NSNumber numberWithUnsignedInteger:index];

    [(NSMutableDictionary *)scrollableCanvasControllers removeObjectForKey:v8];
  }
}

- (void)performanceModeChanged
{
  if (![(THWReviewRep *)self performanceMode])
  {

    [(THWReviewRep *)self p_relaxMinimizeInfosNextFrame];
  }
}

- (void)p_relaxMinimizeInfosNextFrame
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_18219C;
  v2[3] = &unk_45AE00;
  v2[4] = self;
  [-[THWReviewRep interactiveCanvasController](self "interactiveCanvasController")];
}

- (BOOL)controlContainer:(id)container allowTrackingContainedRep:(id)rep
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [rep allowTrackingInControlContainer:container];
}

- (unint64_t)pageCountForPagedCanvasController:(id)controller
{
  if (self->_stageCanvasController != controller)
  {
    return 0;
  }

  layout = [(THWReviewRep *)self layout];

  return [layout numberOfStagePages];
}

- (id)pagedCanvasController:(id)controller infosToDisplayForPageRange:(_NSRange)range
{
  if (self->_stageCanvasController != controller)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  layout = [(THWReviewRep *)self layout];

  return [layout infosForStagePages:{location, length}];
}

- (void)p_updateQuestionIndex:(unint64_t)index animate:(BOOL)animate
{
  animateCopy = animate;
  if ([-[THWReviewRep layout](self "layout")] != index)
  {
    [-[THWReviewRep layout](self "layout")];
    if (self->_expandedRepController && [-[THWReviewRep layout](self "layout")])
    {
      if (animateCopy)
      {
        [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerAnimatePanel:0 withCrossFadeContent:1 backgroundLayout:1 duration:0.15];
      }

      [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerInvalidateChildrenInPanel:0 invalidateWPAuto:0];
    }

    [(THWReviewRep *)self p_updatePersitentQuestionIndex:index];

    [(THWReviewRep *)self p_updateButtonStates];
  }
}

- (void)pagedCanvasController:(id)controller didScrollToPageIndex:(unint64_t)index
{
  [(THWReviewRep *)self p_updateQuestionIndex:index animate:0];
  if ([objc_msgSend(-[THWReviewRep info](self "info")] == index)
  {

    [(THWReviewRep *)self p_checkAllAnswers];
  }
}

- (id)pagedCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  if (![(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] canHandleGesture:gesture])
  {
    return 0;
  }

  return [(THWReviewRep *)self pressableHandler];
}

- (void)pagedCanvasController:(id)controller customizeLayerHost:(id)host
{
  stageCanvasController = self->_stageCanvasController;
  if (stageCanvasController == controller)
  {
    -[THWPagedCanvasController setPageIndex:animated:](stageCanvasController, "setPageIndex:animated:", [-[THWReviewRep layout](self "layout")], 0);
    [-[THWReviewRep layout](self "layout")];
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController "interactiveCanvasController")];
    [objc_msgSend(host "layer")];
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController "interactiveCanvasController")];
    if ([(THWReviewRep *)self pressableHandler])
    {
      widgetInteractionEnabled = [(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] widgetInteractionEnabled];
    }

    else
    {
      widgetInteractionEnabled = 1;
    }

    v9 = self->_stageCanvasController;

    [(THWPagedCanvasController *)v9 setUserInteractionEnabled:widgetInteractionEnabled];
  }
}

- (BOOL)pagedCanvasControllerDeferViewCreation:(id)creation
{
  interactiveCanvasController = [(THWReviewRep *)self interactiveCanvasController];

  return [interactiveCanvasController currentlyScrolling];
}

- (double)pagedCanvasControllerContentsScale:(id)scale
{
  interactiveCanvasController = [-[THWReviewRep interactiveCanvasController](self interactiveCanvasController];

  [interactiveCanvasController contentsScale];
  return result;
}

- (BOOL)pagedCanvasControllerIsRelatedCanvasScrolling:(id)scrolling
{
  interactiveCanvasController = [(THWReviewRep *)self interactiveCanvasController];

  return [interactiveCanvasController currentlyScrolling];
}

- (double)pagedCanvasController:(id)controller adjustScale:(double)scale andFrame:(CGRect *)frame
{
  if (frame)
  {
    Width = CGRectGetWidth(*frame);
    if (self->_stageCanvasController == controller)
    {
      [-[THWReviewRep layout](self layout];
      Width = CGRectGetWidth(v12);
    }

    v10 = Width;
    if (Width > 0.0)
    {
      [objc_msgSend(-[THWReviewRep interactiveCanvasController](self "interactiveCanvasController")];
      TSDRoundedRectForScale();
      *frame = v13;
      return CGRectGetWidth(v13) / v10;
    }
  }

  return scale;
}

- (void)reviewControls:(id)controls buttonPressed:(int)pressed
{
  if (pressed == 2)
  {
    v9 = [(THWReviewRep *)self p_computeCheckButtonStateDisabled:0];
    if (v9)
    {
      if (v9 == 3)
      {

        [(THWReviewRep *)self p_resetQuestions];
      }

      else
      {
        p_currentQuestion = [(THWReviewRep *)self p_currentQuestion];

        [(THWReviewRep *)self p_clearQuestionAnswer:p_currentQuestion];
      }
    }

    else
    {
      p_currentQuestion2 = [(THWReviewRep *)self p_currentQuestion];

      [(THWReviewRep *)self p_checkQuestionAnswer:p_currentQuestion2];
    }
  }

  else
  {
    if (pressed == 1)
    {
      layout = [-[THWReviewRep layout](self layout];
      v6 = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex]+ 1;
      if (v6 >= layout)
      {
        return;
      }

      stageCanvasController = self->_stageCanvasController;
    }

    else
    {
      if (pressed)
      {
        return;
      }

      pageIndex = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
      if (!pageIndex)
      {
        return;
      }

      v6 = (pageIndex - 1);
      stageCanvasController = self->_stageCanvasController;
    }

    [(THWPagedCanvasController *)stageCanvasController setPageIndex:v6 animated:1];
  }
}

- (id)pAnimationView
{
  v2 = [(NSMutableDictionary *)self->_scrollableCanvasControllers objectForKeyedSubscript:[NSNumber numberWithUnsignedInteger:[(THWPagedCanvasController *)self->_stageCanvasController pageIndex]]];

  return [v2 mainView];
}

- (id)pAnimationLayer
{
  pAnimationView = [(THWReviewRep *)self pAnimationView];

  return [pAnimationView layer];
}

- (id)animationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {

    return [(THWReviewRep *)self pAnimationLayer];
  }

  return result;
}

- (void)reparentAnimationLayerIfBackedByView:(id)view
{
  pAnimationView = [(THWReviewRep *)self pAnimationView];
  if (pAnimationView)
  {
    v5 = pAnimationView;
    subviewsController = [(TSDCanvasLayerHosting *)[(THWPagedCanvasController *)self->_stageCanvasController layerHost] subviewsController];
    v7 = v5;
    [subviewsController addSubviews:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
  }
}

- (id)shadowAnimationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    return 0;
  }

  v3 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v3 shadowLayer];
}

- (BOOL)shouldFadeOutAnimationLayer:(id)layer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    return 1;
  }

  v4 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v4 passedThreshold];
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress];
  if (result)
  {
    result = [(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc];
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

- (CALayer)pressableAnimationLayer
{
  view = [(THWPagedCanvasController *)self->_stageCanvasController view];

  return [(UIView *)view layer];
}

- (BOOL)wantsPressAnimation
{
  pressableHandler = [(THWReviewRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler widgetInteractionDisabledOnPage];
}

- (BOOL)wantsPressAction
{
  if ([(THWReviewRep *)self meetsStageDimensionRequirementForExpanded]|| (v3 = [(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] widgetInteractionDisabledOnPage]))
  {
    LOBYTE(v3) = [(THWReviewRep *)self pressableAction]!= 0;
  }

  return v3;
}

- (CGRect)pressableNaturalBounds
{
  layout = [(THWReviewRep *)self layout];

  [layout stageFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)queryScore:(id)score
{
  [(THWReviewRep *)self layout];
  v4 = TSUProtocolCast();
  if (v4)
  {
    v5 = v4;
    reviewSummaryCorrectCount = [v4 reviewSummaryCorrectCount];
    reviewSummaryQuestionCount = [v5 reviewSummaryQuestionCount];
    if (!score)
    {
      return;
    }
  }

  else
  {
    reviewSummaryQuestionCount = 0.0;
    reviewSummaryCorrectCount = 0.0;
    if (!score)
    {
      return;
    }
  }

  v8 = [NSNumber numberWithDouble:reviewSummaryCorrectCount];
  v9 = [NSNumber numberWithDouble:reviewSummaryQuestionCount];
  v10 = *(score + 2);

  v10(score, v8, v9);
}

- (id)targetLayer
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]&& ![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] passedThreshold])
  {
    return 0;
  }

  return [(THWReviewRep *)self pAnimationLayer];
}

- (void)reparentTargetLayerIfBackedByView:(id)view
{
  pAnimationView = [(THWReviewRep *)self pAnimationView];
  if (pAnimationView)
  {
    v5 = pAnimationView;
    subviewsController = [(TSDCanvasLayerHosting *)[(THWPagedCanvasController *)self->_stageCanvasController layerHost] subviewsController];
    v7 = v5;
    [subviewsController addSubviews:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
  }
}

- (CGRect)ftcTargetFrame
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress])
  {
    [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] completionTargetRect];
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

- (BOOL)expandedIsRelatedCanvasScrolling
{
  interactiveCanvasController = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)interactiveCanvasController currentlyScrolling];
}

- (BOOL)expandedShouldDismissOnChangeFromSizeClassPairWithController:(id)controller flowMode:(BOOL)mode
{
  layout = [(THWReviewRep *)self layout];
  if (layout)
  {
    v6 = layout;
    if ([layout isExpandedOnly])
    {
      LOBYTE(layout) = 0;
    }

    else
    {
      LOBYTE(layout) = ([v6 usePhoneLayout] | mode) ^ 1;
    }
  }

  return layout;
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

- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default
{
  if (!panel && [-[THWReviewRep layout](self layout])
  {
    return 1;
  }

  return default;
}

- (void)p_invalidateLayouts
{
  layout = [(THWReviewRep *)self layout];
  [layout invalidateFrame];
  [layout invalidateChildren];
  [-[THWReviewRep interactiveCanvasController](self "interactiveCanvasController")];
  [(THWPagedCanvasController *)[(THWReviewRep *)self stageCanvasController] invalidateLayoutsAndFrames];
  interactiveCanvasController = [(THWPagedCanvasController *)[(THWReviewRep *)self stageCanvasController] interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController layoutIfNeeded];
}

- (BOOL)expandedHasContentForPanel:(int)panel
{
  if (panel == 1)
  {
    return 1;
  }

  if (panel)
  {
    return 0;
  }

  if ([-[THWReviewRep layout](self "layout")])
  {
    return 1;
  }

  layout = [(THWReviewRep *)self layout];

  return [layout hasTitle];
}

- (id)expandedLayoutGeometryForLayout:(id)layout inPanel:(int)panel withWidth:(double)width insets:(UIEdgeInsets)insets
{
  v9 = [TSUProtocolCast() tag];
  if (panel != 1 || v9 != &dword_0 + 1)
  {
    return 0;
  }

  y = CGPointZero.y;
  [-[THWReviewRep layout](self "layout")];
  v13 = [[TSDLayoutGeometry alloc] initWithFrame:{CGPointZero.x, y, v11, v12}];

  return v13;
}

- (unsigned)expandedAlignmentForLayout:(id)layout inPanel:(int)panel
{
  if ([TSUProtocolCast() tag] == &dword_0 + 1)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

- (id)expandedChildInfosForPanel:(int)panel
{
  if (panel)
  {
    return 0;
  }

  v5 = [objc_msgSend(-[THWReviewRep info](self "info")];
  pageIndex = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  if ([-[THWReviewRep layout](self "layout")] && v5 >= 2)
  {
    layout = [(THWReviewRep *)self layout];
    if (pageIndex >= v5)
    {
      summaryTitleStorage = [layout summaryTitleStorage];
    }

    else
    {
      summaryTitleStorage = [layout questionNumberStorageAtPageIndex:pageIndex];
      if (!summaryTitleStorage)
      {
        return 0;
      }
    }
  }

  else
  {
    summaryTitleStorage = [objc_msgSend(objc_msgSend(-[THWReviewRep info](self "info")];
    if (!summaryTitleStorage)
    {
      return 0;
    }
  }

  return [NSArray arrayWithObject:summaryTitleStorage];
}

- (id)expandedAdditionalChildLayoutsForPanel:(int)panel
{
  if (panel != 1)
  {
    return 0;
  }

  layout = [-[THWReviewRep layout](self layout];
  if (!layout)
  {
    return 0;
  }

  return [NSArray arrayWithObject:layout];
}

- (id)expandedRotationAnimationController
{
  v2 = [[THWReviewRotationAnimationController alloc] initWithRep:self];

  return v2;
}

- (CGSize)expandedMinimumContentSize
{
  layout = [(THWReviewRep *)self layout];

  [layout minimumContentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)canHandleGesture:(id)gesture
{
  if ([(THWReviewRep *)self isExpanded]&& [(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] canHandleGesture:gesture]|| [(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] canHandleGesture:gesture])
  {
    return 1;
  }

  [gesture naturalLocationForRep:self];
  v7 = v6;
  v9 = v8;
  [-[THWReviewRep layout](self "layout")];
  v12.x = v7;
  v12.y = v9;
  v10 = CGRectContainsPoint(v13, v12);
  gestureKind = [gesture gestureKind];
  return gestureKind == TSWPImmediateDoubleTap && v10;
}

- (BOOL)handleGesture:(id)gesture
{
  if ((![(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] canHandleGesture:gesture]|| ![(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] handleGesture:gesture]) && (![(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] canHandleGesture:gesture]|| ![(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] handleGesture:gesture]))
  {
    [gesture naturalLocationForRep:self];
    v6 = v5;
    v8 = v7;
    [-[THWReviewRep layout](self "layout")];
    v13.x = v6;
    v13.y = v8;
    v9 = CGRectContainsPoint(v14, v13);
    gestureKind = [gesture gestureKind];
    if (gestureKind != TSWPImmediateDoubleTap || !v9)
    {
      return 0;
    }

    [gesture gestureState];
  }

  return 1;
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDFreeTransform)
  {
    freeTransformableHandler = [(THWReviewRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)freeTransformableHandler willBeginHandlingGesture:gesture];
  }
}

- (id)reviewQuestion:(id)question cachedImageNamed:(id)named
{
  if (!named)
  {
    return 0;
  }

  v6 = [(NSMutableDictionary *)self->_cachedImages objectForKey:named];
  if (!v6)
  {
    v6 = [TSUImage imageNamed:named inBundle:THBundle()];
    if (v6)
    {
      [(NSMutableDictionary *)self->_cachedImages setObject:v6 forKey:named];
    }
  }

  return v6;
}

- (int)reviewQuestionInitialState:(id)state
{
  p_responseController = [(THWReviewRep *)self p_responseController];
  v6 = [objc_msgSend(state "questionLayout")];
  newTemporateReviewResponseMOC = [p_responseController newTemporateReviewResponseMOC];
  v8 = [p_responseController responseForQuestionID:objc_msgSend(v6 temporaryMOC:{"questionID"), newTemporateReviewResponseMOC}];
  if ([v8 userHasCheckedAnswer])
  {
    v9 = [(THWReviewRep *)self p_evaluateAnswerToQuestion:v6 updateScore:0];
  }

  else if ([objc_msgSend(v8 "answerState")])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)reviewQuestion:(id)question selectChoice:(unint64_t)choice
{
  v7 = [objc_msgSend(question "questionLayout")];
  p_responseController = [(THWReviewRep *)self p_responseController];
  v9 = [p_responseController responseForQuestionID:{objc_msgSend(v7, "questionID")}];
  objc_opt_class();
  [v9 answerState];
  v10 = [objc_msgSend(TSUDynamicCast() "selectedChoices")];
  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableIndexSet);
  }

  if ([v7 cardinality] == 2)
  {
    if ([v10 containsIndex:choice])
    {
      [v10 removeIndex:choice];
    }

    else
    {
      [v10 addIndex:choice];
    }

    v11 = [objc_msgSend(objc_msgSend(objc_msgSend(question "questionLayout")];
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        if (choice != i && [question reviewQuestionStateForChoiceIndex:i] == 2)
        {
          [v10 removeIndex:i];
        }
      }
    }
  }

  else
  {
    [v10 removeAllIndexes];
    [v10 addIndex:choice];
  }

  [question setQuestionState:2];
  if ([v10 count])
  {
    v14 = objc_alloc_init(TSWReviewMultiChoiceAnswerState);
    -[TSWReviewMultiChoiceAnswerState setSelectedChoices:](v14, "setSelectedChoices:", [v10 copy]);
  }

  else
  {
    v14 = 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1838D0;
  v15[3] = &unk_45AE58;
  v15[4] = v9;
  v15[5] = v14;
  [p_responseController mutateResponse:v9 block:v15];

  [(THWReviewRep *)self p_answersUpdated];
  [question reviewQuestionAnswerUpdated];
  [(THWReviewRep *)self reviewQuestionInvalidateLayers:question];
}

- (int)reviewQuestion:(id)question radioStateForChoice:(unint64_t)choice pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v9 = [objc_msgSend(question "questionLayout")];
  v10 = [(THWReviewRep *)self reviewQuestionResponseController:question];
  newTemporateReviewResponseMOC = [v10 newTemporateReviewResponseMOC];
  v12 = [v10 responseForQuestionID:objc_msgSend(v9 temporaryMOC:{"questionID"), newTemporateReviewResponseMOC}];
  objc_opt_class();
  [v12 answerState];
  v13 = TSUDynamicCast();
  v14 = v13;
  if (pressedCopy)
  {
    v15 = [v9 cardinality] != 2 || (objc_msgSend(objc_msgSend(v14, "selectedChoices"), "containsIndex:", choice) & 1) == 0;
  }

  else if ([objc_msgSend(v13 "selectedChoices")])
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)reviewQuestionInvalidateLayers:(id)layers
{
  interactiveCanvasController = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController invalidateLayers];
}

- (void)reviewQuestion:(id)question unassociateTargets:(id)targets
{
  v7 = [objc_msgSend(question "questionLayout")];
  p_responseController = [(THWReviewRep *)self p_responseController];
  newTemporateReviewResponseMOC = [p_responseController newTemporateReviewResponseMOC];
  v10 = [p_responseController responseForQuestionID:{objc_msgSend(v7, "questionID")}];
  v11 = [(THWReviewRep *)self p_matchingAnswerStateForQuestion:question temporaryMOC:newTemporateReviewResponseMOC];
  if (!v11)
  {
    v11 = objc_alloc_init(TSWReviewMatchingAnswerState);
  }

  firstIndex = [targets firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [targets indexGreaterThanIndex:i])
    {
      v14 = [(TSWReviewMatchingAnswerState *)v11 placardForTarget:i];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(TSWReviewMatchingAnswerState *)v11 setTarget:0x7FFFFFFFFFFFFFFFLL forPlacard:v14];
      }
    }
  }

  [question setQuestionState:2];
  v15 = [(NSArray *)[(TSWReviewMatchingAnswerState *)v11 placardToTargetMap] copy];
  v16 = objc_alloc_init(TSWReviewMatchingAnswerState);
  [(TSWReviewMatchingAnswerState *)v16 setPlacardToTargetMap:v15];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_183C58;
  v17[3] = &unk_45AE58;
  v17[4] = v10;
  v17[5] = v16;
  [p_responseController mutateResponse:v10 block:v17];

  [(THWReviewRep *)self p_answersUpdated];
  [question reviewQuestionAnswerUpdated];
  [(THWReviewRep *)self reviewQuestionInvalidateLayers:question];
  [(THWReviewRep *)self reviewQuestionDidUpdateState:question];
}

- (void)reviewQuestion:(id)question associatePlacard:(unint64_t)placard withTarget:(unint64_t)target
{
  v9 = [objc_msgSend(question "questionLayout")];
  p_responseController = [(THWReviewRep *)self p_responseController];
  newTemporateReviewResponseMOC = [p_responseController newTemporateReviewResponseMOC];
  v12 = [p_responseController responseForQuestionID:{objc_msgSend(v9, "questionID")}];
  v13 = [(THWReviewRep *)self p_matchingAnswerStateForQuestion:question temporaryMOC:newTemporateReviewResponseMOC];
  if (!v13)
  {
    v13 = objc_alloc_init(TSWReviewMatchingAnswerState);
  }

  v14 = [(TSWReviewMatchingAnswerState *)v13 targetForPlacard:placard];
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (target != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(TSWReviewMatchingAnswerState *)v13 placardForTarget:target];
  }

  if (v14 != target)
  {
    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(TSWReviewMatchingAnswerState *)v13 setTarget:v14 forPlacard:?];
    }

    [(TSWReviewMatchingAnswerState *)v13 setTarget:target forPlacard:placard];
    [question setQuestionState:2];
    v16 = [(NSArray *)[(TSWReviewMatchingAnswerState *)v13 placardToTargetMap] copy];
    v17 = objc_alloc_init(TSWReviewMatchingAnswerState);
    [(TSWReviewMatchingAnswerState *)v17 setPlacardToTargetMap:v16];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_183E78;
    v18[3] = &unk_45AE58;
    v18[4] = v12;
    v18[5] = v17;
    [p_responseController mutateResponse:v12 block:v18];
  }

  [(THWReviewRep *)self p_answersUpdated];
  [question reviewQuestionAnswerUpdated];
  [(THWReviewRep *)self reviewQuestionInvalidateLayers:question];
  [(THWReviewRep *)self reviewQuestionDidUpdateState:question];
}

- (id)reviewQuestionDraggingHostView:(id)view
{
  interactiveCanvasController = [(THWReviewRep *)self interactiveCanvasController];

  return [interactiveCanvasController canvasView];
}

- (id)p_matchingAnswerStateForQuestion:(id)question temporaryMOC:(id)c
{
  v4 = [-[THWReviewRep p_responseController](self "p_responseController")];
  objc_opt_class();
  [v4 answerState];

  return TSUDynamicCast();
}

- (unint64_t)reviewQuestion:(id)question placardForTarget:(unint64_t)target
{
  v7 = [-[THWReviewRep p_responseController](self "p_responseController")];
  v8 = [(THWReviewRep *)self p_matchingAnswerStateForQuestion:question temporaryMOC:v7];
  if (v8)
  {
    v9 = [v8 placardForTarget:target];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (unint64_t)reviewQuestion:(id)question targetForPlacard:(unint64_t)placard
{
  v7 = [-[THWReviewRep p_responseController](self "p_responseController")];
  v8 = [(THWReviewRep *)self p_matchingAnswerStateForQuestion:question temporaryMOC:v7];
  if (v8)
  {
    v9 = [v8 targetForPlacard:placard];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (id)p_responseController
{
  objc_opt_class();
  [-[THWReviewRep interactiveCanvasController](self "interactiveCanvasController")];

  return TSUDynamicCast();
}

- (id)p_dataController
{
  objc_opt_class();
  [-[THWReviewRep interactiveCanvasController](self "interactiveCanvasController")];

  return TSUDynamicCast();
}

- (id)p_currentQuestion
{
  pageIndex = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  info = [(THWReviewRep *)self info];

  return [info questionAtIndex:pageIndex];
}

- (id)p_repForQuestion:(id)question
{
  [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_scrollableCanvasControllers objectForKeyedSubscript:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(-[THWReviewRep info](self, "info"), "indexOfQuestion:", question))), "interactiveCanvasController"), "repForLayout:", objc_msgSend(-[THWReviewRep layout](self, "layout"), "layoutForQuestion:", question)}];
  objc_opt_class();
  return TSUClassAndProtocolCast();
}

- (id)p_repForPage:(unint64_t)page
{
  v4 = [-[TSDInteractiveCanvasController layoutController](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController "interactiveCanvasController")];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] repForLayout:v4];

  return TSUDynamicCast();
}

- (int)p_evaluateAnswerToQuestion:(id)question updateScore:(BOOL)score
{
  scoreCopy = score;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_184338;
  v8[3] = &unk_45E468;
  v8[4] = [(THWReviewRep *)self p_repForQuestion:?];
  return [question evaluateAnswerWithResponseController:-[THWReviewRep p_responseController](self updateScore:"p_responseController") choiceBlock:{scoreCopy, v8}];
}

- (void)p_updateButtonStates
{
  v7 = 0;
  [(THWReviewControlsRep *)self->_controlsRep setCheckAnswerButtonState:[(THWReviewRep *)self p_computeCheckButtonStateDisabled:&v7]];
  [(THWReviewControlsRep *)self->_controlsRep setCheckAnswerButtonDisabled:v7];
  v3 = [-[THWReviewRep layout](self "layout")];
  if ([-[THWReviewRep layout](self "layout")] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [-[THWReviewRep layout](self "layout")];
  }

  v5 = v3 == &dword_0 + 1 || v4 == 0;
  [(THWReviewControlsRep *)self->_controlsRep setPrevButtonHidden:v5];
  v6 = v4 >= v3 || v3 == &dword_0 + 1;
  [(THWReviewControlsRep *)self->_controlsRep setNextButtonHidden:v6];
}

- (int)p_computeCheckButtonStateDisabled:(BOOL *)disabled
{
  pageIndex = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  if (pageIndex == [objc_msgSend(-[THWReviewRep info](self "info")])
  {
    v6 = 0;
    LODWORD(v7) = 3;
  }

  else
  {
    v7 = [(THWReviewRep *)self p_repForQuestion:[(THWReviewRep *)self p_currentQuestion]];
    if (v7)
    {
      v8 = v7;
      questionState = [v7 questionState];
      v10 = questionState;
      v6 = 0;
      if (questionState <= 2)
      {
        if (questionState >= 2)
        {
          LODWORD(v7) = 0;
          if (v10 == 2)
          {
            if (objc_opt_respondsToSelector())
            {
              reviewQuestionIsAnswerCheckable = [v8 reviewQuestionIsAnswerCheckable];
              LODWORD(v7) = 0;
              v6 = reviewQuestionIsAnswerCheckable ^ 1;
            }

            else
            {
              v6 = 0;
              LODWORD(v7) = 0;
            }
          }
        }

        else
        {
          LODWORD(v7) = 0;
          v6 = 1;
        }
      }

      else if ((questionState - 3) >= 3)
      {
        LODWORD(v7) = 0;
        if (v10 == 6)
        {
          v6 = 0;
          LODWORD(v7) = 2;
        }
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  if (disabled)
  {
    *disabled = v6;
  }

  return v7;
}

- (BOOL)p_questionCanBeChecked:(id)checked
{
  p_responseController = [(THWReviewRep *)self p_responseController];
  newTemporateReviewResponseMOC = [p_responseController newTemporateReviewResponseMOC];
  v6 = [p_responseController responseForQuestionID:objc_msgSend(checked temporaryMOC:{"questionID"), newTemporateReviewResponseMOC}];
  if (v6)
  {
    if ([checked type] == 2)
    {
      objc_opt_class();
      [v6 answerState];
      v7 = TSUDynamicCast();
      if (!v7)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      numSelectedTargets = [v7 numSelectedTargets];
      if (numSelectedTargets != [objc_msgSend(checked "choices")])
      {
        goto LABEL_6;
      }
    }

    else if (![objc_msgSend(v6 "answerState")])
    {
LABEL_6:
      LOBYTE(v6) = 0;
      goto LABEL_9;
    }

    LODWORD(v6) = [v6 userHasCheckedAnswer] ^ 1;
  }

LABEL_9:

  return v6;
}

- (void)p_checkQuestionAnswer:(id)answer
{
  p_responseController = [(THWReviewRep *)self p_responseController];
  v6 = [p_responseController responseForQuestionID:{objc_msgSend(answer, "questionID")}];
  if ([objc_msgSend(v6 "answerState")])
  {
    [-[THWReviewRep p_repForQuestion:](self p_repForQuestion:{answer), "setQuestionState:", -[THWReviewRep p_evaluateAnswerToQuestion:updateScore:](self, "p_evaluateAnswerToQuestion:updateScore:", answer, 1)}];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_184788;
    v7[3] = &unk_45AE00;
    v7[4] = v6;
    [p_responseController mutateResponse:v6 block:v7];
    [(THWReviewRep *)self p_answersUpdated];
  }
}

- (void)p_clearQuestionAnswer:(id)answer
{
  p_responseController = [(THWReviewRep *)self p_responseController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_184870;
  v7[3] = &unk_45AE00;
  v8 = [p_responseController responseForQuestionID:{objc_msgSend(answer, "questionID")}];
  [p_responseController mutateResponse:v8 block:v7];
  [-[THWReviewRep p_repForQuestion:](self p_repForQuestion:{answer), "setQuestionState:", 1}];
  v6 = [(THWReviewRep *)self p_repForQuestion:answer];
  [(THWReviewRep *)self p_answersUpdated];
  [v6 reviewQuestionAnswerUpdated];
}

- (void)p_answersUpdated
{
  [objc_msgSend(-[THWReviewRep layout](self "layout")];
  canvas = [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] canvas];

  [canvas invalidateLayers];
}

- (void)p_updatePersitentQuestionIndex:(unint64_t)index
{
  p_dataController = [(THWReviewRep *)self p_dataController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1849C8;
  v6[3] = &unk_45B298;
  v6[5] = index;
  [p_dataController mutateReviewWidgetData:objc_msgSend(p_dataController block:{"reviewWidgetDataForWidgetID:", objc_msgSend(-[THWReviewRep info](self, "info"), "reviewID")), v6}];
}

- (void)p_refreshQuestions
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [-[THWReviewRep info](self "info")];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(THWReviewRep *)self p_repForQuestion:*(*(&v9 + 1) + 8 * v7)];
        objc_opt_class();
        v8 = TSUClassAndProtocolCast();
        [v8 setQuestionState:{0, &OBJC_PROTOCOL___THWReviewQuestionRep}];
        [v8 updateChildrenFromLayout];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(THWReviewRep *)self p_answersUpdated];
}

- (void)p_resetQuestions
{
  [(THWPagedCanvasController *)self->_stageCanvasController setPageIndex:0 animated:[(THWPagedCanvasController *)self->_stageCanvasController pageIndex]< 3];
  p_responseController = [(THWReviewRep *)self p_responseController];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  info = [-[THWReviewRep info](self info];
  v5 = [info countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(info);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(THWReviewRep *)self p_repForQuestion:v9];
        [v10 setQuestionState:1];
        [p_responseController removeResponseForQuestionID:{objc_msgSend(v9, "questionID")}];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          [-[THWReviewRep layout](self "layout")];
          v11 = TSUProtocolCast();
        }

        [v11 reviewQuestionAnswerUpdated];
      }

      v6 = [info countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(THWReviewRep *)self p_answersUpdated];
  [(BCProgressTrackingRepTracker *)self->_progressTracker resetAttemptForRep:self];
}

- (void)p_checkAllAnswers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  info = [-[THWReviewRep info](self info];
  v4 = [info countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(info);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([(THWReviewRep *)self p_questionCanBeChecked:v8])
        {
          [(THWReviewRep *)self p_checkQuestionAnswer:v8];
        }
      }

      v5 = [info countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(THWReviewRep *)self layout];
  v9 = TSUProtocolCast();
  if (v9)
  {
    v10 = v9;
    if ([v9 reviewSummaryShouldShowResults])
    {
      -[BCProgressTrackingRepTracker scoreDidChangeForRep:score:total:](self->_progressTracker, "scoreDidChangeForRep:score:total:", self, +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 reviewSummaryCorrectCount]), +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(v10, "reviewSummaryQuestionCount")));
    }
  }
}

- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)controller
{
  [objc_msgSend(objc_msgSend(controller "interactiveCanvasController")];
  v5 = 1.0;
  if (v3 <= 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v3;
  }

  if (v4 > 0.0)
  {
    v5 = v4;
  }

  result.height = v5;
  result.width = v6;
  return result;
}

- (id)scrollableCanvasController:(id)controller infosToDisplayForViewport:(CGRect)viewport
{
  objc_opt_class();
  [controller instanceData];
  unsignedIntegerValue = [TSUDynamicCast() unsignedIntegerValue];
  layout = [(THWReviewRep *)self layout];

  return [layout infosForScrollablePage:unsignedIntegerValue];
}

- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)controller
{
  v3 = TSDEdgeInsetsZero[0];
  v4 = TSDEdgeInsetsZero[1];
  v5 = TSDEdgeInsetsZero[2];
  v6 = TSDEdgeInsetsZero[3];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)scrollableCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  if (![(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] canHandleGesture:gesture])
  {
    return 0;
  }

  return [(THWReviewRep *)self pressableHandler];
}

- (id)scrollableCanvasHost
{
  interactiveCanvasController = [(THWReviewRep *)self interactiveCanvasController];

  return [interactiveCanvasController scrollableCanvasHost];
}

- (double)contentsScaleForScrollableCanvasController:(id)controller
{
  canvas = [(THWReviewRep *)self canvas];

  [canvas contentsScale];
  return result;
}

- (id)scrollableCanvasController:(id)controller actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture
{
  [-[THWReviewRep interactiveCanvasController](self interactiveCanvasController];
  v9 = TSUProtocolCast();

  return [v9 actionForHyperlink:hyperlink inRep:rep gesture:gesture];
}

- (BOOL)isRelatedCanvasScrollingForScrollableCanvasController:(id)controller
{
  interactiveCanvasController = [(THWReviewRep *)self interactiveCanvasController];

  return [interactiveCanvasController currentlyScrolling];
}

- (void)scrollableCanvasController:(id)controller customizeLayerHost:(id)host
{
  [controller setupImmediatePressGestureWithSimultaneousGestures:{objc_msgSend(objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController, "interactiveCanvasController", controller, host), "layerHost"), "asiOSCVC"), "panGestureRecognizers")}];
  if ([(THWReviewRep *)self pressableHandler])
  {
    widgetInteractionEnabled = [(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] widgetInteractionEnabled];
  }

  else
  {
    widgetInteractionEnabled = 1;
  }

  [controller setUserInteractionEnabled:widgetInteractionEnabled];
}

- (id)bookNavigatorForScrollableCanvasController:(id)controller
{
  objc_opt_class();
  [(THWReviewRep *)self interactiveCanvasController];
  v4 = TSUDynamicCast();

  return [v4 bookNavigator];
}

- (id)documentNavigatorForScrollableCanvasController:(id)controller
{
  objc_opt_class();
  [(THWReviewRep *)self interactiveCanvasController];
  v4 = TSUDynamicCast();

  return [v4 documentNavigator];
}

- (id)p_currentScrollableCanvasController
{
  pageIndex = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  scrollableCanvasControllers = self->_scrollableCanvasControllers;
  v5 = [NSNumber numberWithUnsignedInteger:pageIndex];

  return [(NSMutableDictionary *)scrollableCanvasControllers objectForKeyedSubscript:v5];
}

- (void)freeTransformWillBegin
{
  v3 = [+[TSUColor whiteColor](TSUColor "whiteColor")];
  pAnimationView = [(THWReviewRep *)self pAnimationView];

  [pAnimationView setTsdBackgroundColor:v3];
}

- (void)freeTransformDidEnd
{
  v3 = [+[TSUColor clearColor](TSUColor "clearColor")];
  pAnimationView = [(THWReviewRep *)self pAnimationView];

  [pAnimationView setTsdBackgroundColor:v3];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (BOOL)isExpanded
{
  layout = [(THWReviewRep *)self layout];

  return [layout isExpanded];
}

- (id)shadowPath
{
  [-[THWReviewRep transformLayer](self "transformLayer")];

  return [TSDBezierPath bezierPathWithRect:?];
}

- (CGRect)rectForCompletion
{
  layout = [(THWReviewRep *)self layout];

  [layout frameInParent];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)canExpand
{
  v3.receiver = self;
  v3.super_class = THWReviewRep;
  return [(THWReviewRep *)&v3 canExpand];
}

@end