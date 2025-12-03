@interface THWIOSMovieRep
- (BOOL)autoplayAllowed;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isExpanded;
- (BOOL)isPlaying;
- (BOOL)isVisibleOnCanvas;
- (BOOL)layerUpdatesPaused;
- (BOOL)meetsStageDimensionRequirementForExpanded;
- (BOOL)p_hasValidViewForFreeTransform;
- (BOOL)p_shouldShowPosterImage;
- (BOOL)shouldRecognizePressOnRep:(id)rep;
- (BOOL)wantsFullscreenOnlyDisplay;
- (BOOL)wantsPressAction;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGRect)ftcTargetFrame;
- (CGRect)rectForCompletion;
- (THAnimationController)animationController;
- (THWAutoplayConfig)autoplayConfig;
- (THWIOSMovieRep)initWithLayout:(id)layout canvas:(id)canvas;
- (THWMovieInfo)movieInfo;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (double)p_percentElapsed;
- (id)animationLayer;
- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted;
- (id)movieLayout;
- (id)shadowAnimationLayer;
- (id)targetLayer;
- (int)pressableAction;
- (void)addChildViewsToArray:(id)array;
- (void)animationControllerDidPresent:(id)present;
- (void)autoplayPause;
- (void)autoplayStart;
- (void)autoplayStop;
- (void)buttonControl:(id)control didUpdateLayer:(id)layer;
- (void)buttonControlWasPressed:(id)pressed;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)didUpdateLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
- (void)expandableExpandedPresentationDidEnd;
- (void)expandableWillPresentExpanded;
- (void)freeTransformDidEndPassedThreshold:(BOOL)threshold;
- (void)freeTransformWillBegin;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_moviePlayerNowPlayingWillChange:(id)change;
- (void)p_moviePlayerPlaybackDidFinish:(id)finish;
- (void)p_pause;
- (void)p_play;
- (void)p_reportProgress;
- (void)p_setMoviePlayerBackgroundColor:(id)color animated:(BOOL)animated;
- (void)p_stop;
- (void)p_stopAndInvalidate;
- (void)p_teardownPlayerIsTransferringToExpanded:(BOOL)expanded;
- (void)p_vantageDidChange:(id)change;
- (void)pause;
- (void)play;
- (void)reparentTargetLayerIfBackedByView:(id)view;
- (void)setChildReps:(id)reps;
- (void)setMoviePlayerViewController:(id)controller;
- (void)stop;
- (void)updateChildrenFromLayout;
- (void)updateLayerGeometryFromLayout:(id)layout;
- (void)willAddChildView:(id)view toView:(id)toView;
- (void)willBeRemoved;
- (void)willBeginHandlingGesture:(id)gesture;
- (void)willRemoveChildView:(id)view;
@end

@implementation THWIOSMovieRep

- (THWIOSMovieRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v17.receiver = self;
  v17.super_class = THWIOSMovieRep;
  v4 = [(THWIOSMovieRep *)&v17 initWithLayout:layout canvas:canvas];
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    movieInfo = v5;
    goto LABEL_8;
  }

  movieInfo = [(THWIOSMovieRep *)v4 movieInfo];

  if (movieInfo)
  {
    v7 = [THWFreeTransformableRepGestureTargetHandler alloc];
    hostICC = [(THWIOSMovieRep *)v5 hostICC];
    widgetHost = [hostICC widgetHost];
    freeTransformRepHandler = [widgetHost freeTransformRepHandler];
    v11 = [(THWFreeTransformableRepGestureTargetHandler *)v7 initWithFreeTransformableRep:v5 handler:freeTransformRepHandler];
    freeTransformableHandler = v5->_freeTransformableHandler;
    v5->_freeTransformableHandler = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v5 selector:"p_moviePlayerNowPlayingWillChange:" name:@"THWMPMoviePlayerNowPlayingMovieWillChangeNotification" object:0];

    if ([(THWIOSMovieRep *)v5 isExpanded])
    {
      hostICC2 = [(THWIOSMovieRep *)v5 hostICC];
      delegate = [hostICC2 delegate];
      v5->_progressTracker = TSUProtocolCast();
    }

    else
    {
      hostICC2 = [(THWIOSMovieRep *)v5 interactiveCanvasController];
      v5->_progressTracker = TSUProtocolCast();
    }

    goto LABEL_7;
  }

LABEL_8:

  return movieInfo;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(THWIOSMovieRep *)self stop];
  moviePlayerViewController = self->_moviePlayerViewController;
  self->_moviePlayerViewController = 0;

  [(THWIOSMovieRep *)self setChildReps:0];
  buttonControlRep = [(THWIOSMovieRep *)self buttonControlRep];
  [buttonControlRep setDelegate:0];

  pressableHandler = self->_pressableHandler;
  self->_pressableHandler = 0;

  childReps = self->_childReps;
  self->_childReps = 0;

  freeTransformableHandler = self->_freeTransformableHandler;
  self->_freeTransformableHandler = 0;

  v9.receiver = self;
  v9.super_class = THWIOSMovieRep;
  [(THWIOSMovieRep *)&v9 dealloc];
}

- (BOOL)isPlaying
{
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  v3 = moviePlayerViewController != 0;

  return v3;
}

- (void)play
{
  [(THWIOSMovieRep *)self p_play];
  objc_opt_class();
  layout = [(THWIOSMovieRep *)self layout];
  mediaListener = [layout mediaListener];
  v6 = TSUDynamicCast();

  v5 = +[THWAVController sharedController];
  [v5 transportControllerDidStartPlaying:v6];
}

- (void)pause
{
  [(THWIOSMovieRep *)self p_reportProgress];
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  player = [moviePlayerViewController player];
  [player pause];

  objc_opt_class();
  layout = [(THWIOSMovieRep *)self layout];
  mediaListener = [layout mediaListener];
  v8 = TSUDynamicCast();

  v7 = +[THWAVController sharedController];
  [v7 transportControllerDidPausePlaying:v8];
}

- (void)stop
{
  [(THWIOSMovieRep *)self p_stop];
  objc_opt_class();
  layout = [(THWIOSMovieRep *)self layout];
  mediaListener = [layout mediaListener];
  v6 = TSUDynamicCast();

  v5 = +[THWAVController sharedController];
  [v5 transportControllerDidStopPlaying:v6];
}

- (THWMovieInfo)movieInfo
{
  objc_opt_class();
  info = [(THWIOSMovieRep *)self info];
  v4 = TSUDynamicCast();

  return v4;
}

- (void)setMoviePlayerViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_moviePlayerViewController)
  {
    [(THWIOSMovieRep *)self p_teardownPlayerIsTransferringToExpanded:1];
  }

  if (controllerCopy)
  {
    objc_storeStrong(&self->_moviePlayerViewController, controller);
    v5 = +[NSNotificationCenter defaultCenter];
    player = [(AVPlayerViewController *)self->_moviePlayerViewController player];
    currentItem = [player currentItem];
    [v5 addObserver:self selector:"p_moviePlayerPlaybackDidFinish:" name:AVPlayerItemDidPlayToEndTimeNotification object:currentItem];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"p_vantageDidChange:" name:@"THVantageDidChangeNotification" object:0];

    moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
    player2 = [moviePlayerViewController player];
    [player2 addObserver:self forKeyPath:@"status" options:1 context:off_55CFB0];

    [(THWIOSMovieRep *)self setMoviePlayerControllerIsLoaded:1];
  }

  layout = [(THWIOSMovieRep *)self layout];
  [layout invalidate];
}

- (void)willBeRemoved
{
  [(THWIOSMovieRep *)self setReparentingView:0];
  [(THWIOSMovieRep *)self setRemovePosterLayer:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"THVantageDidChangeNotification" object:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_256C;
  block[3] = &unk_45AD60;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (THWPressableRepGestureTargetHandler)pressableHandler
{
  pressableHandler = self->_pressableHandler;
  if (!pressableHandler)
  {
    objc_opt_class();
    interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
    v5 = TSUDynamicCast();

    pressHandlerForPressableReps = [v5 pressHandlerForPressableReps];
    if (pressHandlerForPressableReps)
    {
      v7 = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:self pressHandler:pressHandlerForPressableReps];
      v8 = self->_pressableHandler;
      self->_pressableHandler = v7;

      [(THWPressableRepGestureTargetHandler *)self->_pressableHandler setEnabledOnlyIfWidgetInteractionDisabledOnPage:1];
    }

    pressableHandler = self->_pressableHandler;
  }

  return pressableHandler;
}

- (BOOL)p_shouldShowPosterImage
{
  interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
  widgetHost = [interactiveCanvasController widgetHost];
  v5 = [widgetHost repIsPresentedExpanded:self];

  if ([(THWIOSMovieRep *)self isPlaying]|| [(THWIOSMovieRep *)self isInFullscreen])
  {
    v6 = ![(THWIOSMovieRep *)self moviePlayerControllerIsLoaded];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & (v5 ^ 1);
}

- (void)didUpdateLayer:(id)layer
{
  layerCopy = layer;
  v12.receiver = self;
  v12.super_class = THWIOSMovieRep;
  [(THWIOSMovieRep *)&v12 didUpdateLayer:layerCopy];
  if ([(THWIOSMovieRep *)self p_shouldShowPosterImage])
  {
    movieInfo = [(THWIOSMovieRep *)self movieInfo];
    posterImageData = [movieInfo posterImageData];
    contents = [layerCopy contents];

    if (!contents && posterImageData)
    {
      [layerCopy setContents:{+[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", posterImageData)}];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_2888;
    v8[3] = &unk_45AD88;
    v9 = layerCopy;
    objc_copyWeak(&v10, &location);
    [(THWIOSMovieRep *)self setRemovePosterLayer:v8];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  if (!UIAccessibilityIsInvertColorsEnabled())
  {
    [layerCopy th_accessibilityUndoInvertColorsIfNecessary];
  }
}

- (void)drawInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  layout = [(THWIOSMovieRep *)self layout];
  geometry = [layout geometry];
  [geometry size];
  TSDRectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v19 = +[TSDImageProviderPool sharedPool];
  movieInfo = [(THWIOSMovieRep *)self movieInfo];
  posterImageData = [movieInfo posterImageData];
  if (posterImageData)
  {
    objc_opt_class();
    v17 = [v19 providerForData:posterImageData shouldValidate:1];
    v18 = TSUDynamicCast();

    if (v18)
    {
      [v18 drawImageInContext:context rect:{v8, v10, v12, v14}];
    }
  }

  CGContextRestoreGState(context);
}

- (BOOL)layerUpdatesPaused
{
  if ([(THWIOSMovieRep *)self inFreeTransform])
  {
    return 1;
  }

  return [(THWIOSMovieRep *)self animating];
}

- (void)updateLayerGeometryFromLayout:(id)layout
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  layoutCopy = layout;
  layout = [(THWIOSMovieRep *)self layout];
  geometry = [layout geometry];
  [(THWIOSMovieRep *)self computeDirectLayerFrame:&v13 andTransform:&v10 basedOnLayoutGeometry:geometry];

  v7 = v10;
  v8 = v11;
  v9 = v12;
  [(THWIOSMovieRep *)self antiAliasDefeatLayerFrame:&v13 forTransform:&v7];
  v7 = v10;
  v8 = v11;
  v9 = v12;
  [layoutCopy setIfDifferentFrame:&v7 orTransform:{v13, v14}];
}

- (BOOL)wantsFullscreenOnlyDisplay
{
  movieLayout = [(THWIOSMovieRep *)self movieLayout];
  info = [movieLayout info];
  geometry = [info geometry];
  [geometry size];
  if (v6 < 150.0)
  {
    widgetInteractionDisabledOnPage = 1;
  }

  else
  {
    pressableHandler = [(THWIOSMovieRep *)self pressableHandler];
    widgetInteractionDisabledOnPage = [pressableHandler widgetInteractionDisabledOnPage];
  }

  return widgetInteractionDisabledOnPage;
}

- (id)movieLayout
{
  objc_opt_class();
  layout = [(THWIOSMovieRep *)self layout];
  v4 = TSUDynamicCast();

  return v4;
}

- (void)setChildReps:(id)reps
{
  repsCopy = reps;
  if (self->_childReps != repsCopy && ![(NSArray *)repsCopy isEqualToArray:?])
  {
    [(NSArray *)self->_childReps makeObjectsPerformSelector:"setParentRep:" withObject:0];
    objc_storeStrong(&self->_childReps, reps);
    [(NSArray *)self->_childReps makeObjectsPerformSelector:"setParentRep:" withObject:self];
  }

  _objc_release_x1();
}

- (BOOL)isVisibleOnCanvas
{
  interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];

  if (interactiveCanvasController)
  {
    interactiveCanvasController2 = [(THWIOSMovieRep *)self interactiveCanvasController];
    [interactiveCanvasController2 visibleUnscaledRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(THWIOSMovieRep *)self frameInUnscaledCanvas];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v31.origin.x = v6;
    v31.origin.y = v8;
    v31.size.width = v10;
    v31.size.height = v12;
    v34.origin.x = v14;
    v34.origin.y = v16;
    v34.size.width = v18;
    v34.size.height = v20;
    v21 = CGRectIntersectsRect(v31, v34);
    if (v21 && v18 > v10)
    {
      v32.origin.x = v14;
      v32.origin.y = v16;
      v32.size.width = v18;
      v32.size.height = v20;
      point = CGRectGetMidX(v32);
      v33.origin.x = v14;
      v33.origin.y = v16;
      v33.size.width = v18;
      v33.size.height = v20;
      MidY = CGRectGetMidY(v33);
      v23 = v6;
      v24 = v8;
      v25 = v10;
      v26 = v12;
      v27 = point;

      LOBYTE(v21) = CGRectContainsPoint(*&v23, *&v27);
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (BOOL)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  pressableHandler = [(THWIOSMovieRep *)self pressableHandler];
  v6 = [pressableHandler canHandleGesture:gestureCopy];

  if (!v6)
  {
    gestureKind = [gestureCopy gestureKind];
    v9 = TSWPImmediatePress;

    if (gestureKind != v9)
    {
      freeTransformableHandler = [(THWIOSMovieRep *)self freeTransformableHandler];
      goto LABEL_5;
    }

    objc_opt_class();
    v10 = TSUDynamicCast();
    view = [v10 view];
    isAncestorScrollViewDragging = [view isAncestorScrollViewDragging];

    if (isAncestorScrollViewDragging)
    {
      [v10 cancel];
    }

    if ([gestureCopy gestureState] == 3)
    {
      autoplayConfig = [(THWIOSMovieRep *)self autoplayConfig];
      enabled = [autoplayConfig enabled];

      if (enabled)
      {
        moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
        player = [moviePlayerViewController player];
        [player rate];
        v20 = v19;

        if (v20 != 0.0)
        {
          [(THWIOSMovieRep *)self pause];
          goto LABEL_15;
        }
      }

      else if ([(THWIOSMovieRep *)self isPlaying])
      {
        goto LABEL_15;
      }

      [(THWIOSMovieRep *)self play];
    }

LABEL_15:
    v11 = 1;
    goto LABEL_6;
  }

  freeTransformableHandler = [(THWIOSMovieRep *)self pressableHandler];
LABEL_5:
  v10 = freeTransformableHandler;
  v11 = [freeTransformableHandler handleGesture:gestureCopy];
LABEL_6:

  return v11;
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureCopy = gesture;
  freeTransformableHandler = [(THWIOSMovieRep *)self freeTransformableHandler];
  [freeTransformableHandler willBeginHandlingGesture:gestureCopy];
}

- (BOOL)isExpanded
{
  layout = [(THWIOSMovieRep *)self layout];
  isExpanded = [layout isExpanded];

  return isExpanded;
}

- (BOOL)meetsStageDimensionRequirementForExpanded
{
  layout = [(THWIOSMovieRep *)self layout];
  geometry = [layout geometry];
  [geometry size];
  v5 = v4;
  v7 = v6;

  return v7 < 660.0 || v5 < 960.0;
}

- (void)freeTransformWillBegin
{
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  [moviePlayerViewController setShowsPlaybackControls:0];

  [(THWIOSMovieRep *)self setInFreeTransform:1];
  interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
  buttonControlRep = [(THWIOSMovieRep *)self buttonControlRep];
  v6 = [interactiveCanvasController layerForRep:buttonControlRep];

  if (v6)
  {
    +[CATransaction begin];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_3234;
    v8[3] = &unk_45AD60;
    v7 = v6;
    v9 = v7;
    [CATransaction setCompletionBlock:v8];
    [v7 addCABasicOpacityAnimationToValue:1 duration:0.0 removedOnCompletion:0.25];
    +[CATransaction commit];
  }
}

- (void)freeTransformDidEndPassedThreshold:(BOOL)threshold
{
  [(THWIOSMovieRep *)self setInFreeTransform:0];
  interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
  buttonControlRep = [(THWIOSMovieRep *)self buttonControlRep];
  v7 = [interactiveCanvasController layerForRep:buttonControlRep];

  if (v7)
  {
    +[CATransaction begin];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_3398;
    v12[3] = &unk_45AD60;
    v8 = v7;
    v13 = v8;
    [CATransaction setCompletionBlock:v12];
    [v8 addCABasicOpacityAnimationToValue:1 duration:1.0 removedOnCompletion:0.25];
    +[CATransaction commit];
  }

  if (!threshold)
  {
    autoplayConfig = [(THWIOSMovieRep *)self autoplayConfig];
    enabled = [autoplayConfig enabled];
    moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
    [moviePlayerViewController setShowsPlaybackControls:enabled ^ 1];
  }
}

- (CGRect)rectForCompletion
{
  if ([(THWIOSMovieRep *)self p_hasValidViewForFreeTransform])
  {
    moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
    view = [moviePlayerViewController view];
    [view frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    moviePlayerViewController = [(THWIOSMovieRep *)self layout];
    [moviePlayerViewController frameInParent];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (THAnimationController)animationController
{
  animationController = self->_animationController;
  if (!animationController)
  {
    v4 = objc_alloc_init(THAnimationController);
    v5 = self->_animationController;
    self->_animationController = v4;

    [(THAnimationController *)self->_animationController addObserver:self];
    [(THAnimationController *)self->_animationController setSource:self];
    animationController = self->_animationController;
  }

  return animationController;
}

- (void)expandableWillPresentExpanded
{
  v3 = UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning();
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  [moviePlayerViewController setShowsPlaybackControls:v3];

  moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];
  view = [moviePlayerViewController2 view];
  [view setAccessibilityViewIsModal:1];

  moviePlayerViewController3 = [(THWIOSMovieRep *)self moviePlayerViewController];
  view2 = [moviePlayerViewController3 view];
  [view2 setShouldGroupAccessibilityChildren:1];

  interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
  canvasView = [interactiveCanvasController canvasView];
  [canvasView setAccessibilityElementsHidden:1];
}

- (void)expandableExpandedPresentationDidEnd
{
  autoplayConfig = [(THWIOSMovieRep *)self autoplayConfig];
  enabled = [autoplayConfig enabled];
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  [moviePlayerViewController setShowsPlaybackControls:enabled ^ 1];

  layout = [(THWIOSMovieRep *)self layout];
  [layout invalidate];

  moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];
  view = [moviePlayerViewController2 view];
  [view setAccessibilityViewIsModal:0];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self);
  interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
  canvasView = [interactiveCanvasController canvasView];
  [canvasView setAccessibilityElementsHidden:0];
}

- (BOOL)p_hasValidViewForFreeTransform
{
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  view = [moviePlayerViewController view];
  [view bounds];
  v6 = v5;
  v8 = v7;

  moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];
  if (moviePlayerViewController2)
  {
    moviePlayerViewController3 = [(THWIOSMovieRep *)self moviePlayerViewController];
    view2 = [moviePlayerViewController3 view];
    v12 = v6 > 0.0;
    if (v8 <= 0.0)
    {
      v12 = 0;
    }

    if (view2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (id)animationLayer
{
  freeTransformableHandler = [(THWIOSMovieRep *)self freeTransformableHandler];
  v4 = [freeTransformableHandler ftc];
  isFreeTransformInProgress = [v4 isFreeTransformInProgress];

  if (!isFreeTransformInProgress || (-[THWIOSMovieRep freeTransformableHandler](self, "freeTransformableHandler"), v6 = objc_claimAutoreleasedReturnValue(), [v6 ftc], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "freeTransformLayer"), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, !v8))
  {
    if (!-[THWIOSMovieRep p_hasValidViewForFreeTransform](self, "p_hasValidViewForFreeTransform") || (-[THWIOSMovieRep moviePlayerViewController](self, "moviePlayerViewController"), v9 = objc_claimAutoreleasedReturnValue(), [v9 view], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "layer"), v8 = objc_claimAutoreleasedReturnValue(), v10, v9, !v8))
    {
      interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
      v8 = [interactiveCanvasController layerForRep:self];
    }
  }

  return v8;
}

- (id)shadowAnimationLayer
{
  freeTransformableHandler = [(THWIOSMovieRep *)self freeTransformableHandler];
  v4 = [freeTransformableHandler ftc];
  isFreeTransformInProgress = [v4 isFreeTransformInProgress];

  if (isFreeTransformInProgress)
  {
    freeTransformableHandler2 = [(THWIOSMovieRep *)self freeTransformableHandler];
    v7 = [freeTransformableHandler2 ftc];
    shadowLayer = [v7 shadowLayer];
  }

  else
  {
    shadowLayer = 0;
  }

  return shadowLayer;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  freeTransformableHandler = [(THWIOSMovieRep *)self freeTransformableHandler];
  v7 = [freeTransformableHandler ftc];
  isFreeTransformInProgress = [v7 isFreeTransformInProgress];

  if (isFreeTransformInProgress)
  {
    freeTransformableHandler2 = [(THWIOSMovieRep *)self freeTransformableHandler];
    v11 = [freeTransformableHandler2 ftc];
    v12 = v11;
    if (v11)
    {
      [v11 currentTransform];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    *&retstr->a = v13;
    *&retstr->c = v14;
    *&retstr->tx = v15;
  }

  return result;
}

- (id)targetLayer
{
  freeTransformableHandler = [(THWIOSMovieRep *)self freeTransformableHandler];
  v6 = [freeTransformableHandler ftc];
  isFreeTransformInProgress = [v6 isFreeTransformInProgress];
  if (isFreeTransformInProgress)
  {
    freeTransformableHandler2 = [(THWIOSMovieRep *)self freeTransformableHandler];
    v3 = [freeTransformableHandler2 ftc];
    if (![v3 passedThreshold])
    {
      animationLayer = 0;
      goto LABEL_6;
    }
  }

  animationLayer = [(THWIOSMovieRep *)self animationLayer];
  if (isFreeTransformInProgress)
  {
LABEL_6:
  }

  return animationLayer;
}

- (CGRect)ftcTargetFrame
{
  freeTransformableHandler = [(THWIOSMovieRep *)self freeTransformableHandler];
  v4 = [freeTransformableHandler ftc];
  if ([v4 isFreeTransformInProgress])
  {
    freeTransformableHandler2 = [(THWIOSMovieRep *)self freeTransformableHandler];
    v6 = [freeTransformableHandler2 ftc];
    [v6 completionTargetRect];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)reparentTargetLayerIfBackedByView:(id)view
{
  reparentingView = [(THWIOSMovieRep *)self reparentingView];
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  view = [moviePlayerViewController view];
  [reparentingView addSubview:view];
}

- (void)animationControllerDidPresent:(id)present
{
  animationController = self->_animationController;
  self->_animationController = 0;

  [(THWIOSMovieRep *)self setAnimating:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3CBC;
  block[3] = &unk_45AD60;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addChildViewsToArray:(id)array
{
  arrayCopy = array;
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  view = [moviePlayerViewController view];
  if (view)
  {
    v6 = view;
    moviePlayerControllerIsLoaded = [(THWIOSMovieRep *)self moviePlayerControllerIsLoaded];

    if (!moviePlayerControllerIsLoaded)
    {
      goto LABEL_5;
    }

    [(THWIOSMovieRep *)self frameInUnscaledCanvas];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
    [interactiveCanvasController convertUnscaledToBoundsRect:{v9, v11, v13, v15}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];
    view2 = [moviePlayerViewController2 view];
    [view2 setFrame:{v18, v20, v22, v24}];

    moviePlayerViewController3 = [(THWIOSMovieRep *)self moviePlayerViewController];
    view3 = [moviePlayerViewController3 view];
    [arrayCopy addObject:view3];

    moviePlayerViewController = +[UIColor clearColor];
    [(THWIOSMovieRep *)self p_setMoviePlayerBackgroundColor:moviePlayerViewController animated:0];
  }

LABEL_5:
}

- (void)willAddChildView:(id)view toView:(id)toView
{
  toViewCopy = toView;
  viewCopy = view;
  [toViewCopy addSubview:viewCopy];
  [(THWIOSMovieRep *)self setReparentingView:toViewCopy];

  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  view = [moviePlayerViewController view];

  if (view == viewCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3FD8;
    block[3] = &unk_45AD60;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)willRemoveChildView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v7 = viewCopy;
    moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
    view = [moviePlayerViewController view];

    viewCopy = v7;
    if (view == v7)
    {
      [v7 removeFromSuperview];
      viewCopy = v7;
    }
  }
}

- (void)updateChildrenFromLayout
{
  if ([(THWIOSMovieRep *)self p_shouldShowPosterImage])
  {
    v3 = [TSDContainerRep childrenFromLayoutInContainerRep:self];
    [(THWIOSMovieRep *)self setChildReps:v3];
  }

  else
  {

    [(THWIOSMovieRep *)self setChildReps:0];
  }
}

- (void)control:(id)control repWasAdded:(id)added
{
  addedCopy = added;
  objc_opt_class();
  v6 = TSUDynamicCast();

  [(THWIOSMovieRep *)self setButtonControlRep:v6];
  buttonControlRep = [(THWIOSMovieRep *)self buttonControlRep];
  [buttonControlRep setDelegate:self];
}

- (void)control:(id)control repWillBeRemoved:(id)removed
{
  removedCopy = removed;
  buttonControlRep = [(THWIOSMovieRep *)self buttonControlRep];

  if (buttonControlRep == removedCopy)
  {
    buttonControlRep2 = [(THWIOSMovieRep *)self buttonControlRep];
    [buttonControlRep2 setDelegate:0];

    [(THWIOSMovieRep *)self setButtonControlRep:0];
  }
}

- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7 = THBundle();
  v8 = @"ib_media_btn_small_pause-N";
  if (highlightedCopy)
  {
    v8 = @"ib_media_btn_small_pause-P";
  }

  v9 = @"ib_media_movie_play-P";
  if (!highlightedCopy)
  {
    v9 = @"ib_media_movie_play-N";
  }

  if (state)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [TSUImage imageNamed:v10 inBundle:v7];

  return v11;
}

- (void)buttonControlWasPressed:(id)pressed
{
  if ([(THWIOSMovieRep *)self wantsFullscreenOnlyDisplay])
  {
    interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
    buttonControlRep = [(THWIOSMovieRep *)self buttonControlRep];
    v7 = [interactiveCanvasController layerForRep:buttonControlRep];

    [v7 setOpacity:0.0];
    pressableHandler = [(THWIOSMovieRep *)self pressableHandler];
    [pressableHandler spoofGesture];
  }

  else
  {

    [(THWIOSMovieRep *)self play];
  }
}

- (void)p_stopAndInvalidate
{
  [(THWIOSMovieRep *)self p_reportProgress];
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  player = [moviePlayerViewController player];
  [player pause];

  objc_opt_class();
  layout = [(THWIOSMovieRep *)self layout];
  mediaListener = [layout mediaListener];
  v8 = TSUDynamicCast();

  v7 = +[THWAVController sharedController];
  [v7 transportControllerDidBecomeInvalid:v8];
}

- (void)p_stop
{
  [(THWIOSMovieRep *)self p_reportProgress];
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  player = [moviePlayerViewController player];
  [player pause];
}

- (void)p_pause
{
  [(THWIOSMovieRep *)self p_reportProgress];
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  player = [moviePlayerViewController player];
  [player pause];
}

- (void)p_setMoviePlayerBackgroundColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_46A4;
  v11 = &unk_45ADB0;
  selfCopy = self;
  colorCopy = color;
  v13 = colorCopy;
  v6 = objc_retainBlock(&v8);
  v7 = v6;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v6 animations:0.25, v8, v9, v10, v11, selfCopy];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)p_play
{
  if (self->_moviePlayerViewController)
  {
    moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
    player = [moviePlayerViewController player];
    [player play];
  }

  else
  {
    movieInfo = [(THWIOSMovieRep *)self movieInfo];
    movieRemoteURL = [movieInfo movieRemoteURL];
    v6 = [AVPlayerItem playerItemWithURL:movieRemoteURL];
    [(THWIOSMovieRep *)self setPlayerItem:v6];

    v7 = +[NSNotificationCenter defaultCenter];
    playerItem = [(THWIOSMovieRep *)self playerItem];
    [v7 addObserver:self selector:"p_moviePlayerPlaybackDidFinish:" name:AVPlayerItemDidPlayToEndTimeNotification object:playerItem];

    v9 = [AVPlayer alloc];
    playerItem2 = [(THWIOSMovieRep *)self playerItem];
    moviePlayerViewController = [v9 initWithPlayerItem:playerItem2];

    movieInfo2 = [(THWIOSMovieRep *)self movieInfo];
    drmContext = [movieInfo2 drmContext];
    [moviePlayerViewController setAllowsExternalPlayback:{objc_msgSend(drmContext, "kiUanAfQBD5qIUraolUj") ^ 1}];

    info = [(THWIOSMovieRep *)self info];
    player = [info drmContext];

    if ([player kiUanAfQBD5qIUraolUj])
    {
      playerItem3 = [(THWIOSMovieRep *)self playerItem];
      [player authorizeAVPlayerItemForPlayback:playerItem3];
    }

    v15 = objc_alloc_init(AVPlayerViewController);
    moviePlayerViewController = self->_moviePlayerViewController;
    self->_moviePlayerViewController = v15;

    [(AVPlayerViewController *)self->_moviePlayerViewController setAllowsPictureInPicturePlayback:0];
    [(AVPlayerViewController *)self->_moviePlayerViewController setPlayer:moviePlayerViewController];
    autoplayConfig = [(THWIOSMovieRep *)self autoplayConfig];
    enabled = [autoplayConfig enabled];
    moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];
    [moviePlayerViewController2 setShowsPlaybackControls:enabled ^ 1];

    [(THWIOSMovieRep *)self setMoviePlayerControllerIsLoaded:0];
    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:self selector:"p_vantageDidChange:" name:@"THVantageDidChangeNotification" object:0];

    v21 = +[NSNotificationCenter defaultCenter];
    moviePlayerViewController3 = [(THWIOSMovieRep *)self moviePlayerViewController];
    [v21 postNotificationName:@"THWMPMoviePlayerNowPlayingMovieWillChangeNotification" object:moviePlayerViewController3];

    moviePlayerViewController4 = [(THWIOSMovieRep *)self moviePlayerViewController];
    player2 = [moviePlayerViewController4 player];
    [player2 addObserver:self forKeyPath:@"status" options:1 context:off_55CFB0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_55CFB0 == context && [pathCopy isEqualToString:@"status"])
  {
    moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
    player = [moviePlayerViewController player];
    status = [player status];

    if (status == &dword_0 + 1)
    {
      moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];
      player2 = [moviePlayerViewController2 player];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_4C64;
      v19[3] = &unk_45ADD8;
      v19[4] = self;
      [player2 prerollAtRate:v19 completionHandler:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = THWIOSMovieRep;
    [(THWIOSMovieRep *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)p_teardownPlayerIsTransferringToExpanded:(BOOL)expanded
{
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];

  if (moviePlayerViewController)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:0 object:self->_moviePlayerViewController];

    v7 = +[NSNotificationCenter defaultCenter];
    playerItem = [(THWIOSMovieRep *)self playerItem];
    [v7 removeObserver:self name:0 object:playerItem];

    player = [(AVPlayerViewController *)self->_moviePlayerViewController player];
    [player removeObserver:self forKeyPath:@"status"];

    if (!expanded)
    {
      player2 = [(AVPlayerViewController *)self->_moviePlayerViewController player];
      [player2 pause];
    }

    view = [(AVPlayerViewController *)self->_moviePlayerViewController view];
    [view removeFromSuperview];

    moviePlayerViewController = self->_moviePlayerViewController;
    self->_moviePlayerViewController = 0;

    [(THWIOSMovieRep *)self setMoviePlayerControllerIsLoaded:0];
  }

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 removeObserver:self name:@"THVantageDidChangeNotification" object:0];
}

- (void)p_vantageDidChange:(id)change
{
  userInfo = [change userInfo];
  v7 = [userInfo valueForKey:@"THVantageChangeReason"];

  v5 = [v7 isEqualToString:@"THVantageChangeReasonRotation"];
  if (([v7 isEqualToString:@"THVantageChangeReasonScrolling"] & 1) != 0 || (isVisibleOnCanvas = objc_msgSend(v7, "isEqualToString:", @"THVantageChangeReasonPresentationMode")) != 0)
  {
    isVisibleOnCanvas = [(THWIOSMovieRep *)self isVisibleOnCanvas];
  }

  if (((v5 | isVisibleOnCanvas) & 1) == 0)
  {
    [(THWIOSMovieRep *)self p_pause];
  }
}

- (void)p_moviePlayerNowPlayingWillChange:(id)change
{
  changeCopy = change;
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  if (moviePlayerViewController)
  {
    v5 = moviePlayerViewController;
    object = [changeCopy object];
    moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];

    if (object != moviePlayerViewController2)
    {
      [(THWIOSMovieRep *)self p_teardownPlayerIsTransferringToExpanded:0];
      layout = [(THWIOSMovieRep *)self layout];
      [layout invalidate];
    }
  }
}

- (void)p_moviePlayerPlaybackDidFinish:(id)finish
{
  finishCopy = finish;
  player = [(AVPlayerViewController *)self->_moviePlayerViewController player];
  currentItem = [player currentItem];
  if (!currentItem)
  {
    goto LABEL_11;
  }

  v7 = currentItem;
  object = [finishCopy object];
  player2 = [(AVPlayerViewController *)self->_moviePlayerViewController player];
  currentItem2 = [player2 currentItem];

  if (object == currentItem2)
  {
    [(THWIOSMovieRep *)self p_reportProgress];
    player = [(THWIOSMovieRep *)self movieInfo];
    if ([player loopOption])
    {
      if ([player loopOption] != &dword_0 + 1)
      {
LABEL_11:

        goto LABEL_12;
      }

      moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
      player3 = [moviePlayerViewController player];
      v17 = *&kCMTimeZero.value;
      epoch = kCMTimeZero.epoch;
      [player3 seekToTime:&v17];

      moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];
      player4 = [moviePlayerViewController2 player];
      [player4 play];
    }

    else
    {
      moviePlayerViewController3 = [(THWIOSMovieRep *)self moviePlayerViewController];
      player5 = [moviePlayerViewController3 player];
      v17 = *&kCMTimeZero.value;
      epoch = kCMTimeZero.epoch;
      [player5 seekToTime:&v17];

      if ([(THWIOSMovieRep *)self isInFullscreen]&& ![(THWIOSMovieRep *)self animatedFromFullscreen]|| [(THWIOSMovieRep *)self inFreeTransform])
      {
        goto LABEL_11;
      }

      [(THWIOSMovieRep *)self setAnimatedFromFullscreen:0];
      [(THWIOSMovieRep *)self p_teardownPlayerIsTransferringToExpanded:0];
      moviePlayerViewController2 = [(THWIOSMovieRep *)self layout];
      [moviePlayerViewController2 invalidate];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)buttonControl:(id)control didUpdateLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy setMinificationFilter:kCAFilterTrilinear];
  [layerCopy setMagnificationFilter:kCAFilterTrilinear];
}

- (CALayer)pressableAnimationLayer
{
  interactiveCanvasController = [(THWIOSMovieRep *)self interactiveCanvasController];
  v4 = [interactiveCanvasController layerForRep:self];

  return v4;
}

- (BOOL)wantsPressAction
{
  if ([(THWIOSMovieRep *)self meetsStageDimensionRequirementForExpanded]|| (v3 = [(THWIOSMovieRep *)self wantsFullscreenOnlyDisplay]))
  {
    LOBYTE(v3) = [(THWIOSMovieRep *)self pressableAction]!= 0;
  }

  return v3;
}

- (BOOL)shouldRecognizePressOnRep:(id)rep
{
  layout = [(THWIOSMovieRep *)self layout];
  isExpanded = [layout isExpanded];

  return isExpanded ^ 1;
}

- (int)pressableAction
{
  autoplayConfig = [(THWIOSMovieRep *)self autoplayConfig];
  if ([autoplayConfig enabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (double)p_percentElapsed
{
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  player = [moviePlayerViewController player];

  if (player)
  {
    movieInfo = [(THWIOSMovieRep *)self movieInfo];
    [movieInfo endTime];
    v7 = v6;
    [movieInfo startTime];
    v9 = v7 - v8;
    moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];
    player2 = [moviePlayerViewController2 player];
    v12 = player2;
    if (player2)
    {
      [player2 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    [movieInfo startTime];
    if (v9 == 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = (Seconds - v15) / v9;
    }
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (void)p_reportProgress
{
  [(THWIOSMovieRep *)self p_percentElapsed];
  if (v3 != 0.0)
  {
    progressTracker = self->_progressTracker;
    v5 = [NSNumber numberWithDouble:?];
    [(BCProgressTrackingRepTracker *)progressTracker progressDidChangeForRep:self percent:v5];
  }
}

- (THWAutoplayConfig)autoplayConfig
{
  info = [(THWIOSMovieRep *)self info];
  autoplayConfig = [info autoplayConfig];

  return autoplayConfig;
}

- (BOOL)autoplayAllowed
{
  pressableHandler = [(THWIOSMovieRep *)self pressableHandler];
  widgetInteractionAllowAutoplay = [pressableHandler widgetInteractionAllowAutoplay];

  return widgetInteractionAllowAutoplay;
}

- (void)autoplayStart
{
  moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
  if (!moviePlayerViewController || (v4 = moviePlayerViewController, -[THWIOSMovieRep moviePlayerViewController](self, "moviePlayerViewController"), v5 = objc_claimAutoreleasedReturnValue(), [v5 player], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "rate"), v8 = v7, v6, v5, v4, v8 == 0.0))
  {
    moviePlayerViewController2 = [(THWIOSMovieRep *)self moviePlayerViewController];
    player = [moviePlayerViewController2 player];
    v15 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [player seekToTime:&v15];

    [(THWIOSMovieRep *)self p_play];
    objc_opt_class();
    layout = [(THWIOSMovieRep *)self layout];
    mediaListener = [layout mediaListener];
    v13 = TSUDynamicCast();

    v14 = +[THWAVController sharedController];
    [v14 transportControllerDidStartAutoplaying:v13];
  }
}

- (void)autoplayStop
{
  if ([(THWIOSMovieRep *)self isPlaying])
  {
    [(THWIOSMovieRep *)self p_pause];
    moviePlayerViewController = [(THWIOSMovieRep *)self moviePlayerViewController];
    player = [moviePlayerViewController player];
    v9 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [player seekToTime:&v9];

    objc_opt_class();
    layout = [(THWIOSMovieRep *)self layout];
    mediaListener = [layout mediaListener];
    v7 = TSUDynamicCast();

    v8 = +[THWAVController sharedController];
    [v8 transportControllerDidStopAutoplaying:v7];
  }
}

- (void)autoplayPause
{
  if ([(THWIOSMovieRep *)self isPlaying])
  {

    [(THWIOSMovieRep *)self p_pause];
  }
}

@end