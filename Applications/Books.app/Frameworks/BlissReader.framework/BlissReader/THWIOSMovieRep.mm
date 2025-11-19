@interface THWIOSMovieRep
- (BOOL)autoplayAllowed;
- (BOOL)handleGesture:(id)a3;
- (BOOL)isExpanded;
- (BOOL)isPlaying;
- (BOOL)isVisibleOnCanvas;
- (BOOL)layerUpdatesPaused;
- (BOOL)meetsStageDimensionRequirementForExpanded;
- (BOOL)p_hasValidViewForFreeTransform;
- (BOOL)p_shouldShowPosterImage;
- (BOOL)shouldRecognizePressOnRep:(id)a3;
- (BOOL)wantsFullscreenOnlyDisplay;
- (BOOL)wantsPressAction;
- (CALayer)pressableAnimationLayer;
- (CGAffineTransform)freeTransform;
- (CGRect)ftcTargetFrame;
- (CGRect)rectForCompletion;
- (THAnimationController)animationController;
- (THWAutoplayConfig)autoplayConfig;
- (THWIOSMovieRep)initWithLayout:(id)a3 canvas:(id)a4;
- (THWMovieInfo)movieInfo;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (double)p_percentElapsed;
- (id)animationLayer;
- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5;
- (id)movieLayout;
- (id)shadowAnimationLayer;
- (id)targetLayer;
- (int)pressableAction;
- (void)addChildViewsToArray:(id)a3;
- (void)animationControllerDidPresent:(id)a3;
- (void)autoplayPause;
- (void)autoplayStart;
- (void)autoplayStop;
- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4;
- (void)buttonControlWasPressed:(id)a3;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)control:(id)a3 repWillBeRemoved:(id)a4;
- (void)dealloc;
- (void)didUpdateLayer:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)expandableExpandedPresentationDidEnd;
- (void)expandableWillPresentExpanded;
- (void)freeTransformDidEndPassedThreshold:(BOOL)a3;
- (void)freeTransformWillBegin;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_moviePlayerNowPlayingWillChange:(id)a3;
- (void)p_moviePlayerPlaybackDidFinish:(id)a3;
- (void)p_pause;
- (void)p_play;
- (void)p_reportProgress;
- (void)p_setMoviePlayerBackgroundColor:(id)a3 animated:(BOOL)a4;
- (void)p_stop;
- (void)p_stopAndInvalidate;
- (void)p_teardownPlayerIsTransferringToExpanded:(BOOL)a3;
- (void)p_vantageDidChange:(id)a3;
- (void)pause;
- (void)play;
- (void)reparentTargetLayerIfBackedByView:(id)a3;
- (void)setChildReps:(id)a3;
- (void)setMoviePlayerViewController:(id)a3;
- (void)stop;
- (void)updateChildrenFromLayout;
- (void)updateLayerGeometryFromLayout:(id)a3;
- (void)willAddChildView:(id)a3 toView:(id)a4;
- (void)willBeRemoved;
- (void)willBeginHandlingGesture:(id)a3;
- (void)willRemoveChildView:(id)a3;
@end

@implementation THWIOSMovieRep

- (THWIOSMovieRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v17.receiver = self;
  v17.super_class = THWIOSMovieRep;
  v4 = [(THWIOSMovieRep *)&v17 initWithLayout:a3 canvas:a4];
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  v6 = [(THWIOSMovieRep *)v4 movieInfo];

  if (v6)
  {
    v7 = [THWFreeTransformableRepGestureTargetHandler alloc];
    v8 = [(THWIOSMovieRep *)v5 hostICC];
    v9 = [v8 widgetHost];
    v10 = [v9 freeTransformRepHandler];
    v11 = [(THWFreeTransformableRepGestureTargetHandler *)v7 initWithFreeTransformableRep:v5 handler:v10];
    freeTransformableHandler = v5->_freeTransformableHandler;
    v5->_freeTransformableHandler = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v5 selector:"p_moviePlayerNowPlayingWillChange:" name:@"THWMPMoviePlayerNowPlayingMovieWillChangeNotification" object:0];

    if ([(THWIOSMovieRep *)v5 isExpanded])
    {
      v14 = [(THWIOSMovieRep *)v5 hostICC];
      v15 = [v14 delegate];
      v5->_progressTracker = TSUProtocolCast();
    }

    else
    {
      v14 = [(THWIOSMovieRep *)v5 interactiveCanvasController];
      v5->_progressTracker = TSUProtocolCast();
    }

    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(THWIOSMovieRep *)self stop];
  moviePlayerViewController = self->_moviePlayerViewController;
  self->_moviePlayerViewController = 0;

  [(THWIOSMovieRep *)self setChildReps:0];
  v5 = [(THWIOSMovieRep *)self buttonControlRep];
  [v5 setDelegate:0];

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
  v2 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)play
{
  [(THWIOSMovieRep *)self p_play];
  objc_opt_class();
  v3 = [(THWIOSMovieRep *)self layout];
  v4 = [v3 mediaListener];
  v6 = TSUDynamicCast();

  v5 = +[THWAVController sharedController];
  [v5 transportControllerDidStartPlaying:v6];
}

- (void)pause
{
  [(THWIOSMovieRep *)self p_reportProgress];
  v3 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v4 = [v3 player];
  [v4 pause];

  objc_opt_class();
  v5 = [(THWIOSMovieRep *)self layout];
  v6 = [v5 mediaListener];
  v8 = TSUDynamicCast();

  v7 = +[THWAVController sharedController];
  [v7 transportControllerDidPausePlaying:v8];
}

- (void)stop
{
  [(THWIOSMovieRep *)self p_stop];
  objc_opt_class();
  v3 = [(THWIOSMovieRep *)self layout];
  v4 = [v3 mediaListener];
  v6 = TSUDynamicCast();

  v5 = +[THWAVController sharedController];
  [v5 transportControllerDidStopPlaying:v6];
}

- (THWMovieInfo)movieInfo
{
  objc_opt_class();
  v3 = [(THWIOSMovieRep *)self info];
  v4 = TSUDynamicCast();

  return v4;
}

- (void)setMoviePlayerViewController:(id)a3
{
  v12 = a3;
  if (self->_moviePlayerViewController)
  {
    [(THWIOSMovieRep *)self p_teardownPlayerIsTransferringToExpanded:1];
  }

  if (v12)
  {
    objc_storeStrong(&self->_moviePlayerViewController, a3);
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = [(AVPlayerViewController *)self->_moviePlayerViewController player];
    v7 = [v6 currentItem];
    [v5 addObserver:self selector:"p_moviePlayerPlaybackDidFinish:" name:AVPlayerItemDidPlayToEndTimeNotification object:v7];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"p_vantageDidChange:" name:@"THVantageDidChangeNotification" object:0];

    v9 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v10 = [v9 player];
    [v10 addObserver:self forKeyPath:@"status" options:1 context:off_55CFB0];

    [(THWIOSMovieRep *)self setMoviePlayerControllerIsLoaded:1];
  }

  v11 = [(THWIOSMovieRep *)self layout];
  [v11 invalidate];
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
    v4 = [(THWIOSMovieRep *)self interactiveCanvasController];
    v5 = TSUDynamicCast();

    v6 = [v5 pressHandlerForPressableReps];
    if (v6)
    {
      v7 = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:self pressHandler:v6];
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
  v3 = [(THWIOSMovieRep *)self interactiveCanvasController];
  v4 = [v3 widgetHost];
  v5 = [v4 repIsPresentedExpanded:self];

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

- (void)didUpdateLayer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = THWIOSMovieRep;
  [(THWIOSMovieRep *)&v12 didUpdateLayer:v4];
  if ([(THWIOSMovieRep *)self p_shouldShowPosterImage])
  {
    v5 = [(THWIOSMovieRep *)self movieInfo];
    v6 = [v5 posterImageData];
    v7 = [v4 contents];

    if (!v7 && v6)
    {
      [v4 setContents:{+[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", v6)}];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_2888;
    v8[3] = &unk_45AD88;
    v9 = v4;
    objc_copyWeak(&v10, &location);
    [(THWIOSMovieRep *)self setRemovePosterLayer:v8];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  if (!UIAccessibilityIsInvertColorsEnabled())
  {
    [v4 th_accessibilityUndoInvertColorsIfNecessary];
  }
}

- (void)drawInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  v5 = [(THWIOSMovieRep *)self layout];
  v6 = [v5 geometry];
  [v6 size];
  TSDRectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v19 = +[TSDImageProviderPool sharedPool];
  v15 = [(THWIOSMovieRep *)self movieInfo];
  v16 = [v15 posterImageData];
  if (v16)
  {
    objc_opt_class();
    v17 = [v19 providerForData:v16 shouldValidate:1];
    v18 = TSUDynamicCast();

    if (v18)
    {
      [v18 drawImageInContext:a3 rect:{v8, v10, v12, v14}];
    }
  }

  CGContextRestoreGState(a3);
}

- (BOOL)layerUpdatesPaused
{
  if ([(THWIOSMovieRep *)self inFreeTransform])
  {
    return 1;
  }

  return [(THWIOSMovieRep *)self animating];
}

- (void)updateLayerGeometryFromLayout:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v4 = a3;
  v5 = [(THWIOSMovieRep *)self layout];
  v6 = [v5 geometry];
  [(THWIOSMovieRep *)self computeDirectLayerFrame:&v13 andTransform:&v10 basedOnLayoutGeometry:v6];

  v7 = v10;
  v8 = v11;
  v9 = v12;
  [(THWIOSMovieRep *)self antiAliasDefeatLayerFrame:&v13 forTransform:&v7];
  v7 = v10;
  v8 = v11;
  v9 = v12;
  [v4 setIfDifferentFrame:&v7 orTransform:{v13, v14}];
}

- (BOOL)wantsFullscreenOnlyDisplay
{
  v3 = [(THWIOSMovieRep *)self movieLayout];
  v4 = [v3 info];
  v5 = [v4 geometry];
  [v5 size];
  if (v6 < 150.0)
  {
    v8 = 1;
  }

  else
  {
    v7 = [(THWIOSMovieRep *)self pressableHandler];
    v8 = [v7 widgetInteractionDisabledOnPage];
  }

  return v8;
}

- (id)movieLayout
{
  objc_opt_class();
  v3 = [(THWIOSMovieRep *)self layout];
  v4 = TSUDynamicCast();

  return v4;
}

- (void)setChildReps:(id)a3
{
  v5 = a3;
  if (self->_childReps != v5 && ![(NSArray *)v5 isEqualToArray:?])
  {
    [(NSArray *)self->_childReps makeObjectsPerformSelector:"setParentRep:" withObject:0];
    objc_storeStrong(&self->_childReps, a3);
    [(NSArray *)self->_childReps makeObjectsPerformSelector:"setParentRep:" withObject:self];
  }

  _objc_release_x1();
}

- (BOOL)isVisibleOnCanvas
{
  v3 = [(THWIOSMovieRep *)self interactiveCanvasController];

  if (v3)
  {
    v4 = [(THWIOSMovieRep *)self interactiveCanvasController];
    [v4 visibleUnscaledRect];
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

- (BOOL)handleGesture:(id)a3
{
  v4 = a3;
  v5 = [(THWIOSMovieRep *)self pressableHandler];
  v6 = [v5 canHandleGesture:v4];

  if (!v6)
  {
    v8 = [v4 gestureKind];
    v9 = TSWPImmediatePress;

    if (v8 != v9)
    {
      v7 = [(THWIOSMovieRep *)self freeTransformableHandler];
      goto LABEL_5;
    }

    objc_opt_class();
    v10 = TSUDynamicCast();
    v13 = [v10 view];
    v14 = [v13 isAncestorScrollViewDragging];

    if (v14)
    {
      [v10 cancel];
    }

    if ([v4 gestureState] == 3)
    {
      v15 = [(THWIOSMovieRep *)self autoplayConfig];
      v16 = [v15 enabled];

      if (v16)
      {
        v17 = [(THWIOSMovieRep *)self moviePlayerViewController];
        v18 = [v17 player];
        [v18 rate];
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

  v7 = [(THWIOSMovieRep *)self pressableHandler];
LABEL_5:
  v10 = v7;
  v11 = [v7 handleGesture:v4];
LABEL_6:

  return v11;
}

- (void)willBeginHandlingGesture:(id)a3
{
  v4 = a3;
  v5 = [(THWIOSMovieRep *)self freeTransformableHandler];
  [v5 willBeginHandlingGesture:v4];
}

- (BOOL)isExpanded
{
  v2 = [(THWIOSMovieRep *)self layout];
  v3 = [v2 isExpanded];

  return v3;
}

- (BOOL)meetsStageDimensionRequirementForExpanded
{
  v2 = [(THWIOSMovieRep *)self layout];
  v3 = [v2 geometry];
  [v3 size];
  v5 = v4;
  v7 = v6;

  return v7 < 660.0 || v5 < 960.0;
}

- (void)freeTransformWillBegin
{
  v3 = [(THWIOSMovieRep *)self moviePlayerViewController];
  [v3 setShowsPlaybackControls:0];

  [(THWIOSMovieRep *)self setInFreeTransform:1];
  v4 = [(THWIOSMovieRep *)self interactiveCanvasController];
  v5 = [(THWIOSMovieRep *)self buttonControlRep];
  v6 = [v4 layerForRep:v5];

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

- (void)freeTransformDidEndPassedThreshold:(BOOL)a3
{
  [(THWIOSMovieRep *)self setInFreeTransform:0];
  v5 = [(THWIOSMovieRep *)self interactiveCanvasController];
  v6 = [(THWIOSMovieRep *)self buttonControlRep];
  v7 = [v5 layerForRep:v6];

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

  if (!a3)
  {
    v9 = [(THWIOSMovieRep *)self autoplayConfig];
    v10 = [v9 enabled];
    v11 = [(THWIOSMovieRep *)self moviePlayerViewController];
    [v11 setShowsPlaybackControls:v10 ^ 1];
  }
}

- (CGRect)rectForCompletion
{
  if ([(THWIOSMovieRep *)self p_hasValidViewForFreeTransform])
  {
    v3 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v4 = [v3 view];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v3 = [(THWIOSMovieRep *)self layout];
    [v3 frameInParent];
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
  v4 = [(THWIOSMovieRep *)self moviePlayerViewController];
  [v4 setShowsPlaybackControls:v3];

  v5 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v6 = [v5 view];
  [v6 setAccessibilityViewIsModal:1];

  v7 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v8 = [v7 view];
  [v8 setShouldGroupAccessibilityChildren:1];

  v10 = [(THWIOSMovieRep *)self interactiveCanvasController];
  v9 = [v10 canvasView];
  [v9 setAccessibilityElementsHidden:1];
}

- (void)expandableExpandedPresentationDidEnd
{
  v3 = [(THWIOSMovieRep *)self autoplayConfig];
  v4 = [v3 enabled];
  v5 = [(THWIOSMovieRep *)self moviePlayerViewController];
  [v5 setShowsPlaybackControls:v4 ^ 1];

  v6 = [(THWIOSMovieRep *)self layout];
  [v6 invalidate];

  v7 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v8 = [v7 view];
  [v8 setAccessibilityViewIsModal:0];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self);
  v10 = [(THWIOSMovieRep *)self interactiveCanvasController];
  v9 = [v10 canvasView];
  [v9 setAccessibilityElementsHidden:0];
}

- (BOOL)p_hasValidViewForFreeTransform
{
  v3 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [(THWIOSMovieRep *)self moviePlayerViewController];
  if (v9)
  {
    v10 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v11 = [v10 view];
    v12 = v6 > 0.0;
    if (v8 <= 0.0)
    {
      v12 = 0;
    }

    if (v11)
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
  v3 = [(THWIOSMovieRep *)self freeTransformableHandler];
  v4 = [v3 ftc];
  v5 = [v4 isFreeTransformInProgress];

  if (!v5 || (-[THWIOSMovieRep freeTransformableHandler](self, "freeTransformableHandler"), v6 = objc_claimAutoreleasedReturnValue(), [v6 ftc], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "freeTransformLayer"), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, !v8))
  {
    if (!-[THWIOSMovieRep p_hasValidViewForFreeTransform](self, "p_hasValidViewForFreeTransform") || (-[THWIOSMovieRep moviePlayerViewController](self, "moviePlayerViewController"), v9 = objc_claimAutoreleasedReturnValue(), [v9 view], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "layer"), v8 = objc_claimAutoreleasedReturnValue(), v10, v9, !v8))
    {
      v11 = [(THWIOSMovieRep *)self interactiveCanvasController];
      v8 = [v11 layerForRep:self];
    }
  }

  return v8;
}

- (id)shadowAnimationLayer
{
  v3 = [(THWIOSMovieRep *)self freeTransformableHandler];
  v4 = [v3 ftc];
  v5 = [v4 isFreeTransformInProgress];

  if (v5)
  {
    v6 = [(THWIOSMovieRep *)self freeTransformableHandler];
    v7 = [v6 ftc];
    v8 = [v7 shadowLayer];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  v6 = [(THWIOSMovieRep *)self freeTransformableHandler];
  v7 = [v6 ftc];
  v8 = [v7 isFreeTransformInProgress];

  if (v8)
  {
    v10 = [(THWIOSMovieRep *)self freeTransformableHandler];
    v11 = [v10 ftc];
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
  v5 = [(THWIOSMovieRep *)self freeTransformableHandler];
  v6 = [v5 ftc];
  v7 = [v6 isFreeTransformInProgress];
  if (v7)
  {
    v2 = [(THWIOSMovieRep *)self freeTransformableHandler];
    v3 = [v2 ftc];
    if (![v3 passedThreshold])
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = [(THWIOSMovieRep *)self animationLayer];
  if (v7)
  {
LABEL_6:
  }

  return v8;
}

- (CGRect)ftcTargetFrame
{
  v3 = [(THWIOSMovieRep *)self freeTransformableHandler];
  v4 = [v3 ftc];
  if ([v4 isFreeTransformInProgress])
  {
    v5 = [(THWIOSMovieRep *)self freeTransformableHandler];
    v6 = [v5 ftc];
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

- (void)reparentTargetLayerIfBackedByView:(id)a3
{
  v6 = [(THWIOSMovieRep *)self reparentingView];
  v4 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v5 = [v4 view];
  [v6 addSubview:v5];
}

- (void)animationControllerDidPresent:(id)a3
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

- (void)addChildViewsToArray:(id)a3
{
  v29 = a3;
  v4 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    v7 = [(THWIOSMovieRep *)self moviePlayerControllerIsLoaded];

    if (!v7)
    {
      goto LABEL_5;
    }

    [(THWIOSMovieRep *)self frameInUnscaledCanvas];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(THWIOSMovieRep *)self interactiveCanvasController];
    [v16 convertUnscaledToBoundsRect:{v9, v11, v13, v15}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v26 = [v25 view];
    [v26 setFrame:{v18, v20, v22, v24}];

    v27 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v28 = [v27 view];
    [v29 addObject:v28];

    v4 = +[UIColor clearColor];
    [(THWIOSMovieRep *)self p_setMoviePlayerBackgroundColor:v4 animated:0];
  }

LABEL_5:
}

- (void)willAddChildView:(id)a3 toView:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 addSubview:v7];
  [(THWIOSMovieRep *)self setReparentingView:v6];

  v8 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v9 = [v8 view];

  if (v9 == v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3FD8;
    block[3] = &unk_45AD60;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)willRemoveChildView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v6 = [v5 view];

    v4 = v7;
    if (v6 == v7)
    {
      [v7 removeFromSuperview];
      v4 = v7;
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

- (void)control:(id)a3 repWasAdded:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = TSUDynamicCast();

  [(THWIOSMovieRep *)self setButtonControlRep:v6];
  v7 = [(THWIOSMovieRep *)self buttonControlRep];
  [v7 setDelegate:self];
}

- (void)control:(id)a3 repWillBeRemoved:(id)a4
{
  v5 = a4;
  v6 = [(THWIOSMovieRep *)self buttonControlRep];

  if (v6 == v5)
  {
    v7 = [(THWIOSMovieRep *)self buttonControlRep];
    [v7 setDelegate:0];

    [(THWIOSMovieRep *)self setButtonControlRep:0];
  }
}

- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5
{
  v5 = a5;
  v7 = THBundle();
  v8 = @"ib_media_btn_small_pause-N";
  if (v5)
  {
    v8 = @"ib_media_btn_small_pause-P";
  }

  v9 = @"ib_media_movie_play-P";
  if (!v5)
  {
    v9 = @"ib_media_movie_play-N";
  }

  if (a4)
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

- (void)buttonControlWasPressed:(id)a3
{
  if ([(THWIOSMovieRep *)self wantsFullscreenOnlyDisplay])
  {
    v4 = [(THWIOSMovieRep *)self interactiveCanvasController];
    v5 = [(THWIOSMovieRep *)self buttonControlRep];
    v7 = [v4 layerForRep:v5];

    [v7 setOpacity:0.0];
    v6 = [(THWIOSMovieRep *)self pressableHandler];
    [v6 spoofGesture];
  }

  else
  {

    [(THWIOSMovieRep *)self play];
  }
}

- (void)p_stopAndInvalidate
{
  [(THWIOSMovieRep *)self p_reportProgress];
  v3 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v4 = [v3 player];
  [v4 pause];

  objc_opt_class();
  v5 = [(THWIOSMovieRep *)self layout];
  v6 = [v5 mediaListener];
  v8 = TSUDynamicCast();

  v7 = +[THWAVController sharedController];
  [v7 transportControllerDidBecomeInvalid:v8];
}

- (void)p_stop
{
  [(THWIOSMovieRep *)self p_reportProgress];
  v4 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v3 = [v4 player];
  [v3 pause];
}

- (void)p_pause
{
  [(THWIOSMovieRep *)self p_reportProgress];
  v4 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v3 = [v4 player];
  [v3 pause];
}

- (void)p_setMoviePlayerBackgroundColor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_46A4;
  v11 = &unk_45ADB0;
  v12 = self;
  v5 = a3;
  v13 = v5;
  v6 = objc_retainBlock(&v8);
  v7 = v6;
  if (v4)
  {
    [UIView animateWithDuration:v6 animations:0.25, v8, v9, v10, v11, v12];
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
    v25 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v3 = [v25 player];
    [v3 play];
  }

  else
  {
    v4 = [(THWIOSMovieRep *)self movieInfo];
    v5 = [v4 movieRemoteURL];
    v6 = [AVPlayerItem playerItemWithURL:v5];
    [(THWIOSMovieRep *)self setPlayerItem:v6];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = [(THWIOSMovieRep *)self playerItem];
    [v7 addObserver:self selector:"p_moviePlayerPlaybackDidFinish:" name:AVPlayerItemDidPlayToEndTimeNotification object:v8];

    v9 = [AVPlayer alloc];
    v10 = [(THWIOSMovieRep *)self playerItem];
    v25 = [v9 initWithPlayerItem:v10];

    v11 = [(THWIOSMovieRep *)self movieInfo];
    v12 = [v11 drmContext];
    [v25 setAllowsExternalPlayback:{objc_msgSend(v12, "kiUanAfQBD5qIUraolUj") ^ 1}];

    v13 = [(THWIOSMovieRep *)self info];
    v3 = [v13 drmContext];

    if ([v3 kiUanAfQBD5qIUraolUj])
    {
      v14 = [(THWIOSMovieRep *)self playerItem];
      [v3 authorizeAVPlayerItemForPlayback:v14];
    }

    v15 = objc_alloc_init(AVPlayerViewController);
    moviePlayerViewController = self->_moviePlayerViewController;
    self->_moviePlayerViewController = v15;

    [(AVPlayerViewController *)self->_moviePlayerViewController setAllowsPictureInPicturePlayback:0];
    [(AVPlayerViewController *)self->_moviePlayerViewController setPlayer:v25];
    v17 = [(THWIOSMovieRep *)self autoplayConfig];
    v18 = [v17 enabled];
    v19 = [(THWIOSMovieRep *)self moviePlayerViewController];
    [v19 setShowsPlaybackControls:v18 ^ 1];

    [(THWIOSMovieRep *)self setMoviePlayerControllerIsLoaded:0];
    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:self selector:"p_vantageDidChange:" name:@"THVantageDidChangeNotification" object:0];

    v21 = +[NSNotificationCenter defaultCenter];
    v22 = [(THWIOSMovieRep *)self moviePlayerViewController];
    [v21 postNotificationName:@"THWMPMoviePlayerNowPlayingMovieWillChangeNotification" object:v22];

    v23 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v24 = [v23 player];
    [v24 addObserver:self forKeyPath:@"status" options:1 context:off_55CFB0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_55CFB0 == a6 && [v10 isEqualToString:@"status"])
  {
    v13 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v14 = [v13 player];
    v15 = [v14 status];

    if (v15 == &dword_0 + 1)
    {
      v16 = [(THWIOSMovieRep *)self moviePlayerViewController];
      v17 = [v16 player];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_4C64;
      v19[3] = &unk_45ADD8;
      v19[4] = self;
      [v17 prerollAtRate:v19 completionHandler:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = THWIOSMovieRep;
    [(THWIOSMovieRep *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)p_teardownPlayerIsTransferringToExpanded:(BOOL)a3
{
  v5 = [(THWIOSMovieRep *)self moviePlayerViewController];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:0 object:self->_moviePlayerViewController];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = [(THWIOSMovieRep *)self playerItem];
    [v7 removeObserver:self name:0 object:v8];

    v9 = [(AVPlayerViewController *)self->_moviePlayerViewController player];
    [v9 removeObserver:self forKeyPath:@"status"];

    if (!a3)
    {
      v10 = [(AVPlayerViewController *)self->_moviePlayerViewController player];
      [v10 pause];
    }

    v11 = [(AVPlayerViewController *)self->_moviePlayerViewController view];
    [v11 removeFromSuperview];

    moviePlayerViewController = self->_moviePlayerViewController;
    self->_moviePlayerViewController = 0;

    [(THWIOSMovieRep *)self setMoviePlayerControllerIsLoaded:0];
  }

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 removeObserver:self name:@"THVantageDidChangeNotification" object:0];
}

- (void)p_vantageDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 valueForKey:@"THVantageChangeReason"];

  v5 = [v7 isEqualToString:@"THVantageChangeReasonRotation"];
  if (([v7 isEqualToString:@"THVantageChangeReasonScrolling"] & 1) != 0 || (v6 = objc_msgSend(v7, "isEqualToString:", @"THVantageChangeReasonPresentationMode")) != 0)
  {
    v6 = [(THWIOSMovieRep *)self isVisibleOnCanvas];
  }

  if (((v5 | v6) & 1) == 0)
  {
    [(THWIOSMovieRep *)self p_pause];
  }
}

- (void)p_moviePlayerNowPlayingWillChange:(id)a3
{
  v9 = a3;
  v4 = [(THWIOSMovieRep *)self moviePlayerViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v9 object];
    v7 = [(THWIOSMovieRep *)self moviePlayerViewController];

    if (v6 != v7)
    {
      [(THWIOSMovieRep *)self p_teardownPlayerIsTransferringToExpanded:0];
      v8 = [(THWIOSMovieRep *)self layout];
      [v8 invalidate];
    }
  }
}

- (void)p_moviePlayerPlaybackDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(AVPlayerViewController *)self->_moviePlayerViewController player];
  v6 = [v5 currentItem];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v4 object];
  v9 = [(AVPlayerViewController *)self->_moviePlayerViewController player];
  v10 = [v9 currentItem];

  if (v8 == v10)
  {
    [(THWIOSMovieRep *)self p_reportProgress];
    v5 = [(THWIOSMovieRep *)self movieInfo];
    if ([v5 loopOption])
    {
      if ([v5 loopOption] != &dword_0 + 1)
      {
LABEL_11:

        goto LABEL_12;
      }

      v11 = [(THWIOSMovieRep *)self moviePlayerViewController];
      v12 = [v11 player];
      v17 = *&kCMTimeZero.value;
      epoch = kCMTimeZero.epoch;
      [v12 seekToTime:&v17];

      v13 = [(THWIOSMovieRep *)self moviePlayerViewController];
      v14 = [v13 player];
      [v14 play];
    }

    else
    {
      v15 = [(THWIOSMovieRep *)self moviePlayerViewController];
      v16 = [v15 player];
      v17 = *&kCMTimeZero.value;
      epoch = kCMTimeZero.epoch;
      [v16 seekToTime:&v17];

      if ([(THWIOSMovieRep *)self isInFullscreen]&& ![(THWIOSMovieRep *)self animatedFromFullscreen]|| [(THWIOSMovieRep *)self inFreeTransform])
      {
        goto LABEL_11;
      }

      [(THWIOSMovieRep *)self setAnimatedFromFullscreen:0];
      [(THWIOSMovieRep *)self p_teardownPlayerIsTransferringToExpanded:0];
      v13 = [(THWIOSMovieRep *)self layout];
      [v13 invalidate];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4
{
  v4 = a4;
  [v4 setMinificationFilter:kCAFilterTrilinear];
  [v4 setMagnificationFilter:kCAFilterTrilinear];
}

- (CALayer)pressableAnimationLayer
{
  v3 = [(THWIOSMovieRep *)self interactiveCanvasController];
  v4 = [v3 layerForRep:self];

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

- (BOOL)shouldRecognizePressOnRep:(id)a3
{
  v3 = [(THWIOSMovieRep *)self layout];
  v4 = [v3 isExpanded];

  return v4 ^ 1;
}

- (int)pressableAction
{
  v2 = [(THWIOSMovieRep *)self autoplayConfig];
  if ([v2 enabled])
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
  v3 = [(THWIOSMovieRep *)self moviePlayerViewController];
  v4 = [v3 player];

  if (v4)
  {
    v5 = [(THWIOSMovieRep *)self movieInfo];
    [v5 endTime];
    v7 = v6;
    [v5 startTime];
    v9 = v7 - v8;
    v10 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v11 = [v10 player];
    v12 = v11;
    if (v11)
    {
      [v11 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    [v5 startTime];
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
  v2 = [(THWIOSMovieRep *)self info];
  v3 = [v2 autoplayConfig];

  return v3;
}

- (BOOL)autoplayAllowed
{
  v2 = [(THWIOSMovieRep *)self pressableHandler];
  v3 = [v2 widgetInteractionAllowAutoplay];

  return v3;
}

- (void)autoplayStart
{
  v3 = [(THWIOSMovieRep *)self moviePlayerViewController];
  if (!v3 || (v4 = v3, -[THWIOSMovieRep moviePlayerViewController](self, "moviePlayerViewController"), v5 = objc_claimAutoreleasedReturnValue(), [v5 player], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "rate"), v8 = v7, v6, v5, v4, v8 == 0.0))
  {
    v9 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v10 = [v9 player];
    v15 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [v10 seekToTime:&v15];

    [(THWIOSMovieRep *)self p_play];
    objc_opt_class();
    v11 = [(THWIOSMovieRep *)self layout];
    v12 = [v11 mediaListener];
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
    v3 = [(THWIOSMovieRep *)self moviePlayerViewController];
    v4 = [v3 player];
    v9 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [v4 seekToTime:&v9];

    objc_opt_class();
    v5 = [(THWIOSMovieRep *)self layout];
    v6 = [v5 mediaListener];
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