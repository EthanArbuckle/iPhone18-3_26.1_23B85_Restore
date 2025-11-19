@interface THWReviewRep
- (BOOL)canExpand;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4;
- (BOOL)controlContainer:(id)a3 allowTrackingContainedRep:(id)a4;
- (BOOL)expandedHasContentForPanel:(int)a3;
- (BOOL)expandedIsRelatedCanvasScrolling;
- (BOOL)expandedShouldDismissOnChangeFromSizeClassPairWithController:(id)a3 flowMode:(BOOL)a4;
- (BOOL)handleGesture:(id)a3;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)isRelatedCanvasScrollingForScrollableCanvasController:(id)a3;
- (BOOL)p_questionCanBeChecked:(id)a3;
- (BOOL)pagedCanvasControllerDeferViewCreation:(id)a3;
- (BOOL)pagedCanvasControllerIsRelatedCanvasScrolling:(id)a3;
- (BOOL)shouldFadeOutAnimationLayer:(id)a3;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGRect)ftcTargetFrame;
- (CGRect)pressableNaturalBounds;
- (CGRect)rectForCompletion;
- (CGSize)expandedMinimumContentSize;
- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)a3;
- (THAnimationController)animationController;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (THWReviewRep)initWithLayout:(id)a3 canvas:(id)a4;
- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)a3;
- (double)contentsScaleForScrollableCanvasController:(id)a3;
- (double)pagedCanvasController:(id)a3 adjustScale:(double)a4 andFrame:(CGRect *)a5;
- (double)pagedCanvasControllerContentsScale:(id)a3;
- (id)animationLayer;
- (id)bookNavigatorForScrollableCanvasController:(id)a3;
- (id)documentNavigatorForScrollableCanvasController:(id)a3;
- (id)expandedAdditionalChildLayoutsForPanel:(int)a3;
- (id)expandedChildInfosForPanel:(int)a3;
- (id)expandedLayoutGeometryForLayout:(id)a3 inPanel:(int)a4 withWidth:(double)a5 insets:(UIEdgeInsets)a6;
- (id)expandedRotationAnimationController;
- (id)pAnimationLayer;
- (id)pAnimationView;
- (id)p_currentQuestion;
- (id)p_currentScrollableCanvasController;
- (id)p_dataController;
- (id)p_matchingAnswerStateForQuestion:(id)a3 temporaryMOC:(id)a4;
- (id)p_repForPage:(unint64_t)a3;
- (id)p_repForQuestion:(id)a3;
- (id)p_responseController;
- (id)pagedCanvasController:(id)a3 infosToDisplayForPageRange:(_NSRange)a4;
- (id)pagedCanvasController:(id)a3 primaryTargetForGesture:(id)a4;
- (id)reviewQuestion:(id)a3 cachedImageNamed:(id)a4;
- (id)reviewQuestionDraggingHostView:(id)a3;
- (id)scrollableCanvasController:(id)a3 actionForHyperlink:(id)a4 inRep:(id)a5 gesture:(id)a6;
- (id)scrollableCanvasController:(id)a3 infosToDisplayForViewport:(CGRect)a4;
- (id)scrollableCanvasController:(id)a3 primaryTargetForGesture:(id)a4;
- (id)scrollableCanvasHost;
- (id)shadowAnimationLayer;
- (id)shadowPath;
- (id)targetLayer;
- (int)p_computeCheckButtonStateDisabled:(BOOL *)a3;
- (int)p_evaluateAnswerToQuestion:(id)a3 updateScore:(BOOL)a4;
- (int)reviewQuestion:(id)a3 radioStateForChoice:(unint64_t)a4 pressed:(BOOL)a5;
- (int)reviewQuestionInitialState:(id)a3;
- (unint64_t)pageCountForPagedCanvasController:(id)a3;
- (unint64_t)reviewQuestion:(id)a3 placardForTarget:(unint64_t)a4;
- (unint64_t)reviewQuestion:(id)a3 targetForPlacard:(unint64_t)a4;
- (unsigned)expandedAlignmentForLayout:(id)a3 inPanel:(int)a4;
- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)control:(id)a3 repWillBeRemoved:(id)a4;
- (void)dealloc;
- (void)freeTransformDidEnd;
- (void)freeTransformWillBegin;
- (void)p_answersUpdated;
- (void)p_checkAllAnswers;
- (void)p_checkQuestionAnswer:(id)a3;
- (void)p_clearQuestionAnswer:(id)a3;
- (void)p_invalidateLayouts;
- (void)p_refreshQuestions;
- (void)p_relaxMinimizeInfosNextFrame;
- (void)p_resetQuestions;
- (void)p_updateButtonStates;
- (void)p_updatePersitentQuestionIndex:(unint64_t)a3;
- (void)p_updateQuestionIndex:(unint64_t)a3 animate:(BOOL)a4;
- (void)pagedCanvasController:(id)a3 customizeLayerHost:(id)a4;
- (void)pagedCanvasController:(id)a3 didScrollToPageIndex:(unint64_t)a4;
- (void)performanceModeChanged;
- (void)queryScore:(id)a3;
- (void)reparentAnimationLayerIfBackedByView:(id)a3;
- (void)reparentTargetLayerIfBackedByView:(id)a3;
- (void)reviewControls:(id)a3 buttonPressed:(int)a4;
- (void)reviewQuestion:(id)a3 associatePlacard:(unint64_t)a4 withTarget:(unint64_t)a5;
- (void)reviewQuestion:(id)a3 selectChoice:(unint64_t)a4;
- (void)reviewQuestion:(id)a3 unassociateTargets:(id)a4;
- (void)reviewQuestionInvalidateLayers:(id)a3;
- (void)scrollableCanvasController:(id)a3 customizeLayerHost:(id)a4;
- (void)updateFromLayout;
- (void)viewScaleDidChange;
- (void)willBeginHandlingGesture:(id)a3;
- (void)willReplaceContentsFromRep:(id)a3;
@end

@implementation THWReviewRep

- (THWReviewRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6.receiver = self;
  v6.super_class = THWReviewRep;
  v4 = [(THWReviewRep *)&v6 initWithLayout:a3 canvas:a4];
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

- (void)willReplaceContentsFromRep:(id)a3
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
    v3 = [(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] widgetInteractionEnabled];
  }

  else
  {
    v3 = 1;
  }

  stageCanvasController = self->_stageCanvasController;

  [(THWPagedCanvasController *)stageCanvasController setUserInteractionEnabled:v3];
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  v5.receiver = self;
  v5.super_class = THWReviewRep;
  [(THWReviewRep *)&v5 addAdditionalChildLayersToArray:?];
  if (self->_stageFillLayer)
  {
    [a3 addObject:?];
  }

  if (self->_stageStrokeLayer)
  {
    [a3 addObject:?];
  }
}

- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4
{
  if (![(THWReviewRep *)self pressableHandler:a3])
  {
    return 1;
  }

  v5 = [(THWReviewRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v5 widgetInteractionEnabled];
}

- (void)control:(id)a3 repWasAdded:(id)a4
{
  v6 = [a3 tag];
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

    v7 = [a3 index];
    [(NSMutableDictionary *)self->_scrollableCanvasControllers removeObjectForKey:[NSNumber numberWithUnsignedInteger:v7]];
    objc_opt_class();
    v8 = [TSUDynamicCast() scrollableCanvasController];
    [(NSMutableDictionary *)self->_scrollableCanvasControllers setObject:v8 forKeyedSubscript:[NSNumber numberWithUnsignedInteger:v7]];
    [v8 setInstanceData:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v7)}];
    [v8 setUpdateCanvasSizeOnLayout:1];
    stageCanvasController = v8;
    goto LABEL_11;
  }

  objc_opt_class();
  v10 = TSUDynamicCast();
  self->_controlsRep = v10;
  [(THWReviewControlsRep *)v10 setDelegate:self];

  [(THWReviewRep *)self p_updateButtonStates];
}

- (void)control:(id)a3 repWillBeRemoved:(id)a4
{
  if ([(THWReviewControlsRep *)self->_controlsRep layout:a3]== a3)
  {
    self->_controlsRep = 0;
  }

  else if ([a3 tag] == &dword_0 + 3)
  {
    v6 = [a3 index];
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_scrollableCanvasControllers objectForKeyedSubscript:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v6)), "setDelegate:", 0}];
    scrollableCanvasControllers = self->_scrollableCanvasControllers;
    v8 = [NSNumber numberWithUnsignedInteger:v6];

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

- (BOOL)controlContainer:(id)a3 allowTrackingContainedRep:(id)a4
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a4 allowTrackingInControlContainer:a3];
}

- (unint64_t)pageCountForPagedCanvasController:(id)a3
{
  if (self->_stageCanvasController != a3)
  {
    return 0;
  }

  v6 = [(THWReviewRep *)self layout];

  return [v6 numberOfStagePages];
}

- (id)pagedCanvasController:(id)a3 infosToDisplayForPageRange:(_NSRange)a4
{
  if (self->_stageCanvasController != a3)
  {
    return 0;
  }

  length = a4.length;
  location = a4.location;
  v8 = [(THWReviewRep *)self layout];

  return [v8 infosForStagePages:{location, length}];
}

- (void)p_updateQuestionIndex:(unint64_t)a3 animate:(BOOL)a4
{
  v4 = a4;
  if ([-[THWReviewRep layout](self "layout")] != a3)
  {
    [-[THWReviewRep layout](self "layout")];
    if (self->_expandedRepController && [-[THWReviewRep layout](self "layout")])
    {
      if (v4)
      {
        [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerAnimatePanel:0 withCrossFadeContent:1 backgroundLayout:1 duration:0.15];
      }

      [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerInvalidateChildrenInPanel:0 invalidateWPAuto:0];
    }

    [(THWReviewRep *)self p_updatePersitentQuestionIndex:a3];

    [(THWReviewRep *)self p_updateButtonStates];
  }
}

- (void)pagedCanvasController:(id)a3 didScrollToPageIndex:(unint64_t)a4
{
  [(THWReviewRep *)self p_updateQuestionIndex:a4 animate:0];
  if ([objc_msgSend(-[THWReviewRep info](self "info")] == a4)
  {

    [(THWReviewRep *)self p_checkAllAnswers];
  }
}

- (id)pagedCanvasController:(id)a3 primaryTargetForGesture:(id)a4
{
  if (![(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] canHandleGesture:a4])
  {
    return 0;
  }

  return [(THWReviewRep *)self pressableHandler];
}

- (void)pagedCanvasController:(id)a3 customizeLayerHost:(id)a4
{
  stageCanvasController = self->_stageCanvasController;
  if (stageCanvasController == a3)
  {
    -[THWPagedCanvasController setPageIndex:animated:](stageCanvasController, "setPageIndex:animated:", [-[THWReviewRep layout](self "layout")], 0);
    [-[THWReviewRep layout](self "layout")];
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController "interactiveCanvasController")];
    [objc_msgSend(a4 "layer")];
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController "interactiveCanvasController")];
    if ([(THWReviewRep *)self pressableHandler])
    {
      v8 = [(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] widgetInteractionEnabled];
    }

    else
    {
      v8 = 1;
    }

    v9 = self->_stageCanvasController;

    [(THWPagedCanvasController *)v9 setUserInteractionEnabled:v8];
  }
}

- (BOOL)pagedCanvasControllerDeferViewCreation:(id)a3
{
  v3 = [(THWReviewRep *)self interactiveCanvasController];

  return [v3 currentlyScrolling];
}

- (double)pagedCanvasControllerContentsScale:(id)a3
{
  v3 = [-[THWReviewRep interactiveCanvasController](self interactiveCanvasController];

  [v3 contentsScale];
  return result;
}

- (BOOL)pagedCanvasControllerIsRelatedCanvasScrolling:(id)a3
{
  v3 = [(THWReviewRep *)self interactiveCanvasController];

  return [v3 currentlyScrolling];
}

- (double)pagedCanvasController:(id)a3 adjustScale:(double)a4 andFrame:(CGRect *)a5
{
  if (a5)
  {
    Width = CGRectGetWidth(*a5);
    if (self->_stageCanvasController == a3)
    {
      [-[THWReviewRep layout](self layout];
      Width = CGRectGetWidth(v12);
    }

    v10 = Width;
    if (Width > 0.0)
    {
      [objc_msgSend(-[THWReviewRep interactiveCanvasController](self "interactiveCanvasController")];
      TSDRoundedRectForScale();
      *a5 = v13;
      return CGRectGetWidth(v13) / v10;
    }
  }

  return a4;
}

- (void)reviewControls:(id)a3 buttonPressed:(int)a4
{
  if (a4 == 2)
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
        v12 = [(THWReviewRep *)self p_currentQuestion];

        [(THWReviewRep *)self p_clearQuestionAnswer:v12];
      }
    }

    else
    {
      v11 = [(THWReviewRep *)self p_currentQuestion];

      [(THWReviewRep *)self p_checkQuestionAnswer:v11];
    }
  }

  else
  {
    if (a4 == 1)
    {
      v8 = [-[THWReviewRep layout](self layout];
      v6 = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex]+ 1;
      if (v6 >= v8)
      {
        return;
      }

      stageCanvasController = self->_stageCanvasController;
    }

    else
    {
      if (a4)
      {
        return;
      }

      v5 = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
      if (!v5)
      {
        return;
      }

      v6 = (v5 - 1);
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
  v2 = [(THWReviewRep *)self pAnimationView];

  return [v2 layer];
}

- (id)animationLayer
{
  if (![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]|| (result = [(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] freeTransformLayer]) == 0)
  {

    return [(THWReviewRep *)self pAnimationLayer];
  }

  return result;
}

- (void)reparentAnimationLayerIfBackedByView:(id)a3
{
  v4 = [(THWReviewRep *)self pAnimationView];
  if (v4)
  {
    v5 = v4;
    v6 = [(TSDCanvasLayerHosting *)[(THWPagedCanvasController *)self->_stageCanvasController layerHost] subviewsController];
    v7 = v5;
    [v6 addSubviews:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
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

- (BOOL)shouldFadeOutAnimationLayer:(id)a3
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
  v2 = [(THWPagedCanvasController *)self->_stageCanvasController view];

  return [(UIView *)v2 layer];
}

- (BOOL)wantsPressAnimation
{
  v2 = [(THWReviewRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v2 widgetInteractionDisabledOnPage];
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
  v2 = [(THWReviewRep *)self layout];

  [v2 stageFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)queryScore:(id)a3
{
  [(THWReviewRep *)self layout];
  v4 = TSUProtocolCast();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 reviewSummaryCorrectCount];
    v7 = [v5 reviewSummaryQuestionCount];
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    if (!a3)
    {
      return;
    }
  }

  v8 = [NSNumber numberWithDouble:v6];
  v9 = [NSNumber numberWithDouble:v7];
  v10 = *(a3 + 2);

  v10(a3, v8, v9);
}

- (id)targetLayer
{
  if ([(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] isFreeTransformInProgress]&& ![(THWFreeTransformController *)[(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc] passedThreshold])
  {
    return 0;
  }

  return [(THWReviewRep *)self pAnimationLayer];
}

- (void)reparentTargetLayerIfBackedByView:(id)a3
{
  v4 = [(THWReviewRep *)self pAnimationView];
  if (v4)
  {
    v5 = v4;
    v6 = [(TSDCanvasLayerHosting *)[(THWPagedCanvasController *)self->_stageCanvasController layerHost] subviewsController];
    v7 = v5;
    [v6 addSubviews:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
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
  v2 = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)v2 currentlyScrolling];
}

- (BOOL)expandedShouldDismissOnChangeFromSizeClassPairWithController:(id)a3 flowMode:(BOOL)a4
{
  v5 = [(THWReviewRep *)self layout];
  if (v5)
  {
    v6 = v5;
    if ([v5 isExpandedOnly])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = ([v6 usePhoneLayout] | a4) ^ 1;
    }
  }

  return v5;
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

- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5
{
  if (!a4 && [-[THWReviewRep layout](self layout])
  {
    return 1;
  }

  return a5;
}

- (void)p_invalidateLayouts
{
  v3 = [(THWReviewRep *)self layout];
  [v3 invalidateFrame];
  [v3 invalidateChildren];
  [-[THWReviewRep interactiveCanvasController](self "interactiveCanvasController")];
  [(THWPagedCanvasController *)[(THWReviewRep *)self stageCanvasController] invalidateLayoutsAndFrames];
  v4 = [(THWPagedCanvasController *)[(THWReviewRep *)self stageCanvasController] interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v4 layoutIfNeeded];
}

- (BOOL)expandedHasContentForPanel:(int)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  if (a3)
  {
    return 0;
  }

  if ([-[THWReviewRep layout](self "layout")])
  {
    return 1;
  }

  v5 = [(THWReviewRep *)self layout];

  return [v5 hasTitle];
}

- (id)expandedLayoutGeometryForLayout:(id)a3 inPanel:(int)a4 withWidth:(double)a5 insets:(UIEdgeInsets)a6
{
  v9 = [TSUProtocolCast() tag];
  if (a4 != 1 || v9 != &dword_0 + 1)
  {
    return 0;
  }

  y = CGPointZero.y;
  [-[THWReviewRep layout](self "layout")];
  v13 = [[TSDLayoutGeometry alloc] initWithFrame:{CGPointZero.x, y, v11, v12}];

  return v13;
}

- (unsigned)expandedAlignmentForLayout:(id)a3 inPanel:(int)a4
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

- (id)expandedChildInfosForPanel:(int)a3
{
  if (a3)
  {
    return 0;
  }

  v5 = [objc_msgSend(-[THWReviewRep info](self "info")];
  v6 = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  if ([-[THWReviewRep layout](self "layout")] && v5 >= 2)
  {
    v7 = [(THWReviewRep *)self layout];
    if (v6 >= v5)
    {
      v8 = [v7 summaryTitleStorage];
    }

    else
    {
      v8 = [v7 questionNumberStorageAtPageIndex:v6];
      if (!v8)
      {
        return 0;
      }
    }
  }

  else
  {
    v8 = [objc_msgSend(objc_msgSend(-[THWReviewRep info](self "info")];
    if (!v8)
    {
      return 0;
    }
  }

  return [NSArray arrayWithObject:v8];
}

- (id)expandedAdditionalChildLayoutsForPanel:(int)a3
{
  if (a3 != 1)
  {
    return 0;
  }

  v5 = [-[THWReviewRep layout](self layout];
  if (!v5)
  {
    return 0;
  }

  return [NSArray arrayWithObject:v5];
}

- (id)expandedRotationAnimationController
{
  v2 = [[THWReviewRotationAnimationController alloc] initWithRep:self];

  return v2;
}

- (CGSize)expandedMinimumContentSize
{
  v2 = [(THWReviewRep *)self layout];

  [v2 minimumContentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)canHandleGesture:(id)a3
{
  if ([(THWReviewRep *)self isExpanded]&& [(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] canHandleGesture:a3]|| [(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] canHandleGesture:a3])
  {
    return 1;
  }

  [a3 naturalLocationForRep:self];
  v7 = v6;
  v9 = v8;
  [-[THWReviewRep layout](self "layout")];
  v12.x = v7;
  v12.y = v9;
  v10 = CGRectContainsPoint(v13, v12);
  v11 = [a3 gestureKind];
  return v11 == TSWPImmediateDoubleTap && v10;
}

- (BOOL)handleGesture:(id)a3
{
  if ((![(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] canHandleGesture:a3]|| ![(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] handleGesture:a3]) && (![(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] canHandleGesture:a3]|| ![(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] handleGesture:a3]))
  {
    [a3 naturalLocationForRep:self];
    v6 = v5;
    v8 = v7;
    [-[THWReviewRep layout](self "layout")];
    v13.x = v6;
    v13.y = v8;
    v9 = CGRectContainsPoint(v14, v13);
    v10 = [a3 gestureKind];
    if (v10 != TSWPImmediateDoubleTap || !v9)
    {
      return 0;
    }

    [a3 gestureState];
  }

  return 1;
}

- (void)willBeginHandlingGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if (v5 == TSDFreeTransform)
  {
    v6 = [(THWReviewRep *)self freeTransformableHandler];

    [(THWFreeTransformableRepGestureTargetHandler *)v6 willBeginHandlingGesture:a3];
  }
}

- (id)reviewQuestion:(id)a3 cachedImageNamed:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v6 = [(NSMutableDictionary *)self->_cachedImages objectForKey:a4];
  if (!v6)
  {
    v6 = [TSUImage imageNamed:a4 inBundle:THBundle()];
    if (v6)
    {
      [(NSMutableDictionary *)self->_cachedImages setObject:v6 forKey:a4];
    }
  }

  return v6;
}

- (int)reviewQuestionInitialState:(id)a3
{
  v5 = [(THWReviewRep *)self p_responseController];
  v6 = [objc_msgSend(a3 "questionLayout")];
  v7 = [v5 newTemporateReviewResponseMOC];
  v8 = [v5 responseForQuestionID:objc_msgSend(v6 temporaryMOC:{"questionID"), v7}];
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

- (void)reviewQuestion:(id)a3 selectChoice:(unint64_t)a4
{
  v7 = [objc_msgSend(a3 "questionLayout")];
  v8 = [(THWReviewRep *)self p_responseController];
  v9 = [v8 responseForQuestionID:{objc_msgSend(v7, "questionID")}];
  objc_opt_class();
  [v9 answerState];
  v10 = [objc_msgSend(TSUDynamicCast() "selectedChoices")];
  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableIndexSet);
  }

  if ([v7 cardinality] == 2)
  {
    if ([v10 containsIndex:a4])
    {
      [v10 removeIndex:a4];
    }

    else
    {
      [v10 addIndex:a4];
    }

    v11 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "questionLayout")];
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        if (a4 != i && [a3 reviewQuestionStateForChoiceIndex:i] == 2)
        {
          [v10 removeIndex:i];
        }
      }
    }
  }

  else
  {
    [v10 removeAllIndexes];
    [v10 addIndex:a4];
  }

  [a3 setQuestionState:2];
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
  [v8 mutateResponse:v9 block:v15];

  [(THWReviewRep *)self p_answersUpdated];
  [a3 reviewQuestionAnswerUpdated];
  [(THWReviewRep *)self reviewQuestionInvalidateLayers:a3];
}

- (int)reviewQuestion:(id)a3 radioStateForChoice:(unint64_t)a4 pressed:(BOOL)a5
{
  v5 = a5;
  v9 = [objc_msgSend(a3 "questionLayout")];
  v10 = [(THWReviewRep *)self reviewQuestionResponseController:a3];
  v11 = [v10 newTemporateReviewResponseMOC];
  v12 = [v10 responseForQuestionID:objc_msgSend(v9 temporaryMOC:{"questionID"), v11}];
  objc_opt_class();
  [v12 answerState];
  v13 = TSUDynamicCast();
  v14 = v13;
  if (v5)
  {
    v15 = [v9 cardinality] != 2 || (objc_msgSend(objc_msgSend(v14, "selectedChoices"), "containsIndex:", a4) & 1) == 0;
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

- (void)reviewQuestionInvalidateLayers:(id)a3
{
  v3 = [(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v3 invalidateLayers];
}

- (void)reviewQuestion:(id)a3 unassociateTargets:(id)a4
{
  v7 = [objc_msgSend(a3 "questionLayout")];
  v8 = [(THWReviewRep *)self p_responseController];
  v9 = [v8 newTemporateReviewResponseMOC];
  v10 = [v8 responseForQuestionID:{objc_msgSend(v7, "questionID")}];
  v11 = [(THWReviewRep *)self p_matchingAnswerStateForQuestion:a3 temporaryMOC:v9];
  if (!v11)
  {
    v11 = objc_alloc_init(TSWReviewMatchingAnswerState);
  }

  v12 = [a4 firstIndex];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v12; i != 0x7FFFFFFFFFFFFFFFLL; i = [a4 indexGreaterThanIndex:i])
    {
      v14 = [(TSWReviewMatchingAnswerState *)v11 placardForTarget:i];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(TSWReviewMatchingAnswerState *)v11 setTarget:0x7FFFFFFFFFFFFFFFLL forPlacard:v14];
      }
    }
  }

  [a3 setQuestionState:2];
  v15 = [(NSArray *)[(TSWReviewMatchingAnswerState *)v11 placardToTargetMap] copy];
  v16 = objc_alloc_init(TSWReviewMatchingAnswerState);
  [(TSWReviewMatchingAnswerState *)v16 setPlacardToTargetMap:v15];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_183C58;
  v17[3] = &unk_45AE58;
  v17[4] = v10;
  v17[5] = v16;
  [v8 mutateResponse:v10 block:v17];

  [(THWReviewRep *)self p_answersUpdated];
  [a3 reviewQuestionAnswerUpdated];
  [(THWReviewRep *)self reviewQuestionInvalidateLayers:a3];
  [(THWReviewRep *)self reviewQuestionDidUpdateState:a3];
}

- (void)reviewQuestion:(id)a3 associatePlacard:(unint64_t)a4 withTarget:(unint64_t)a5
{
  v9 = [objc_msgSend(a3 "questionLayout")];
  v10 = [(THWReviewRep *)self p_responseController];
  v11 = [v10 newTemporateReviewResponseMOC];
  v12 = [v10 responseForQuestionID:{objc_msgSend(v9, "questionID")}];
  v13 = [(THWReviewRep *)self p_matchingAnswerStateForQuestion:a3 temporaryMOC:v11];
  if (!v13)
  {
    v13 = objc_alloc_init(TSWReviewMatchingAnswerState);
  }

  v14 = [(TSWReviewMatchingAnswerState *)v13 targetForPlacard:a4];
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(TSWReviewMatchingAnswerState *)v13 placardForTarget:a5];
  }

  if (v14 != a5)
  {
    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(TSWReviewMatchingAnswerState *)v13 setTarget:v14 forPlacard:?];
    }

    [(TSWReviewMatchingAnswerState *)v13 setTarget:a5 forPlacard:a4];
    [a3 setQuestionState:2];
    v16 = [(NSArray *)[(TSWReviewMatchingAnswerState *)v13 placardToTargetMap] copy];
    v17 = objc_alloc_init(TSWReviewMatchingAnswerState);
    [(TSWReviewMatchingAnswerState *)v17 setPlacardToTargetMap:v16];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_183E78;
    v18[3] = &unk_45AE58;
    v18[4] = v12;
    v18[5] = v17;
    [v10 mutateResponse:v12 block:v18];
  }

  [(THWReviewRep *)self p_answersUpdated];
  [a3 reviewQuestionAnswerUpdated];
  [(THWReviewRep *)self reviewQuestionInvalidateLayers:a3];
  [(THWReviewRep *)self reviewQuestionDidUpdateState:a3];
}

- (id)reviewQuestionDraggingHostView:(id)a3
{
  v3 = [(THWReviewRep *)self interactiveCanvasController];

  return [v3 canvasView];
}

- (id)p_matchingAnswerStateForQuestion:(id)a3 temporaryMOC:(id)a4
{
  v4 = [-[THWReviewRep p_responseController](self "p_responseController")];
  objc_opt_class();
  [v4 answerState];

  return TSUDynamicCast();
}

- (unint64_t)reviewQuestion:(id)a3 placardForTarget:(unint64_t)a4
{
  v7 = [-[THWReviewRep p_responseController](self "p_responseController")];
  v8 = [(THWReviewRep *)self p_matchingAnswerStateForQuestion:a3 temporaryMOC:v7];
  if (v8)
  {
    v9 = [v8 placardForTarget:a4];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (unint64_t)reviewQuestion:(id)a3 targetForPlacard:(unint64_t)a4
{
  v7 = [-[THWReviewRep p_responseController](self "p_responseController")];
  v8 = [(THWReviewRep *)self p_matchingAnswerStateForQuestion:a3 temporaryMOC:v7];
  if (v8)
  {
    v9 = [v8 targetForPlacard:a4];
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
  v3 = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  v4 = [(THWReviewRep *)self info];

  return [v4 questionAtIndex:v3];
}

- (id)p_repForQuestion:(id)a3
{
  [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_scrollableCanvasControllers objectForKeyedSubscript:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(-[THWReviewRep info](self, "info"), "indexOfQuestion:", a3))), "interactiveCanvasController"), "repForLayout:", objc_msgSend(-[THWReviewRep layout](self, "layout"), "layoutForQuestion:", a3)}];
  objc_opt_class();
  return TSUClassAndProtocolCast();
}

- (id)p_repForPage:(unint64_t)a3
{
  v4 = [-[TSDInteractiveCanvasController layoutController](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController "interactiveCanvasController")];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] repForLayout:v4];

  return TSUDynamicCast();
}

- (int)p_evaluateAnswerToQuestion:(id)a3 updateScore:(BOOL)a4
{
  v4 = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_184338;
  v8[3] = &unk_45E468;
  v8[4] = [(THWReviewRep *)self p_repForQuestion:?];
  return [a3 evaluateAnswerWithResponseController:-[THWReviewRep p_responseController](self updateScore:"p_responseController") choiceBlock:{v4, v8}];
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

- (int)p_computeCheckButtonStateDisabled:(BOOL *)a3
{
  v5 = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  if (v5 == [objc_msgSend(-[THWReviewRep info](self "info")])
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
      v9 = [v7 questionState];
      v10 = v9;
      v6 = 0;
      if (v9 <= 2)
      {
        if (v9 >= 2)
        {
          LODWORD(v7) = 0;
          if (v10 == 2)
          {
            if (objc_opt_respondsToSelector())
            {
              v11 = [v8 reviewQuestionIsAnswerCheckable];
              LODWORD(v7) = 0;
              v6 = v11 ^ 1;
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

      else if ((v9 - 3) >= 3)
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

  if (a3)
  {
    *a3 = v6;
  }

  return v7;
}

- (BOOL)p_questionCanBeChecked:(id)a3
{
  v4 = [(THWReviewRep *)self p_responseController];
  v5 = [v4 newTemporateReviewResponseMOC];
  v6 = [v4 responseForQuestionID:objc_msgSend(a3 temporaryMOC:{"questionID"), v5}];
  if (v6)
  {
    if ([a3 type] == 2)
    {
      objc_opt_class();
      [v6 answerState];
      v7 = TSUDynamicCast();
      if (!v7)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      v8 = [v7 numSelectedTargets];
      if (v8 != [objc_msgSend(a3 "choices")])
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

- (void)p_checkQuestionAnswer:(id)a3
{
  v5 = [(THWReviewRep *)self p_responseController];
  v6 = [v5 responseForQuestionID:{objc_msgSend(a3, "questionID")}];
  if ([objc_msgSend(v6 "answerState")])
  {
    [-[THWReviewRep p_repForQuestion:](self p_repForQuestion:{a3), "setQuestionState:", -[THWReviewRep p_evaluateAnswerToQuestion:updateScore:](self, "p_evaluateAnswerToQuestion:updateScore:", a3, 1)}];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_184788;
    v7[3] = &unk_45AE00;
    v7[4] = v6;
    [v5 mutateResponse:v6 block:v7];
    [(THWReviewRep *)self p_answersUpdated];
  }
}

- (void)p_clearQuestionAnswer:(id)a3
{
  v5 = [(THWReviewRep *)self p_responseController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_184870;
  v7[3] = &unk_45AE00;
  v8 = [v5 responseForQuestionID:{objc_msgSend(a3, "questionID")}];
  [v5 mutateResponse:v8 block:v7];
  [-[THWReviewRep p_repForQuestion:](self p_repForQuestion:{a3), "setQuestionState:", 1}];
  v6 = [(THWReviewRep *)self p_repForQuestion:a3];
  [(THWReviewRep *)self p_answersUpdated];
  [v6 reviewQuestionAnswerUpdated];
}

- (void)p_answersUpdated
{
  [objc_msgSend(-[THWReviewRep layout](self "layout")];
  v3 = [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_stageCanvasController interactiveCanvasController] canvas];

  [v3 invalidateLayers];
}

- (void)p_updatePersitentQuestionIndex:(unint64_t)a3
{
  v5 = [(THWReviewRep *)self p_dataController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1849C8;
  v6[3] = &unk_45B298;
  v6[5] = a3;
  [v5 mutateReviewWidgetData:objc_msgSend(v5 block:{"reviewWidgetDataForWidgetID:", objc_msgSend(-[THWReviewRep info](self, "info"), "reviewID")), v6}];
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
  v3 = [(THWReviewRep *)self p_responseController];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [-[THWReviewRep info](self info];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(THWReviewRep *)self p_repForQuestion:v9];
        [v10 setQuestionState:1];
        [v3 removeResponseForQuestionID:{objc_msgSend(v9, "questionID")}];
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

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [-[THWReviewRep info](self info];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([(THWReviewRep *)self p_questionCanBeChecked:v8])
        {
          [(THWReviewRep *)self p_checkQuestionAnswer:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)a3
{
  [objc_msgSend(objc_msgSend(a3 "interactiveCanvasController")];
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

- (id)scrollableCanvasController:(id)a3 infosToDisplayForViewport:(CGRect)a4
{
  objc_opt_class();
  [a3 instanceData];
  v6 = [TSUDynamicCast() unsignedIntegerValue];
  v7 = [(THWReviewRep *)self layout];

  return [v7 infosForScrollablePage:v6];
}

- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)a3
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

- (id)scrollableCanvasController:(id)a3 primaryTargetForGesture:(id)a4
{
  if (![(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] canHandleGesture:a4])
  {
    return 0;
  }

  return [(THWReviewRep *)self pressableHandler];
}

- (id)scrollableCanvasHost
{
  v2 = [(THWReviewRep *)self interactiveCanvasController];

  return [v2 scrollableCanvasHost];
}

- (double)contentsScaleForScrollableCanvasController:(id)a3
{
  v3 = [(THWReviewRep *)self canvas];

  [v3 contentsScale];
  return result;
}

- (id)scrollableCanvasController:(id)a3 actionForHyperlink:(id)a4 inRep:(id)a5 gesture:(id)a6
{
  [-[THWReviewRep interactiveCanvasController](self interactiveCanvasController];
  v9 = TSUProtocolCast();

  return [v9 actionForHyperlink:a4 inRep:a5 gesture:a6];
}

- (BOOL)isRelatedCanvasScrollingForScrollableCanvasController:(id)a3
{
  v3 = [(THWReviewRep *)self interactiveCanvasController];

  return [v3 currentlyScrolling];
}

- (void)scrollableCanvasController:(id)a3 customizeLayerHost:(id)a4
{
  [a3 setupImmediatePressGestureWithSimultaneousGestures:{objc_msgSend(objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self->_stageCanvasController, "interactiveCanvasController", a3, a4), "layerHost"), "asiOSCVC"), "panGestureRecognizers")}];
  if ([(THWReviewRep *)self pressableHandler])
  {
    v6 = [(THWPressableRepGestureTargetHandler *)[(THWReviewRep *)self pressableHandler] widgetInteractionEnabled];
  }

  else
  {
    v6 = 1;
  }

  [a3 setUserInteractionEnabled:v6];
}

- (id)bookNavigatorForScrollableCanvasController:(id)a3
{
  objc_opt_class();
  [(THWReviewRep *)self interactiveCanvasController];
  v4 = TSUDynamicCast();

  return [v4 bookNavigator];
}

- (id)documentNavigatorForScrollableCanvasController:(id)a3
{
  objc_opt_class();
  [(THWReviewRep *)self interactiveCanvasController];
  v4 = TSUDynamicCast();

  return [v4 documentNavigator];
}

- (id)p_currentScrollableCanvasController
{
  v3 = [(THWPagedCanvasController *)self->_stageCanvasController pageIndex];
  scrollableCanvasControllers = self->_scrollableCanvasControllers;
  v5 = [NSNumber numberWithUnsignedInteger:v3];

  return [(NSMutableDictionary *)scrollableCanvasControllers objectForKeyedSubscript:v5];
}

- (void)freeTransformWillBegin
{
  v3 = [+[TSUColor whiteColor](TSUColor "whiteColor")];
  v4 = [(THWReviewRep *)self pAnimationView];

  [v4 setTsdBackgroundColor:v3];
}

- (void)freeTransformDidEnd
{
  v3 = [+[TSUColor clearColor](TSUColor "clearColor")];
  v4 = [(THWReviewRep *)self pAnimationView];

  [v4 setTsdBackgroundColor:v3];
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWFreeTransformableRepGestureTargetHandler *)[(THWReviewRep *)self freeTransformableHandler] ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (BOOL)isExpanded
{
  v2 = [(THWReviewRep *)self layout];

  return [v2 isExpanded];
}

- (id)shadowPath
{
  [-[THWReviewRep transformLayer](self "transformLayer")];

  return [TSDBezierPath bezierPathWithRect:?];
}

- (CGRect)rectForCompletion
{
  v2 = [(THWReviewRep *)self layout];

  [v2 frameInParent];
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