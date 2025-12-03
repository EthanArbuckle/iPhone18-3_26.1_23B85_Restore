@interface RCWaveformViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_visibleTimeRangeForCurrentSelectionTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)setHighlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeByInsettingVisibleTimeRange:(id)range inset:(double)inset;
- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)waveformSelectionOverlay:(id)overlay willChangeSelectedTimeRange:(id)range isTrackingMin:(BOOL)min isTrackingMax:(BOOL)max;
- (BOOL)_isScrubbingSelectionTimeRange;
- (BOOL)isZooming;
- (BOOL)waveformSelectionOverlayNeedsExplicitAnimations;
- (CGRect)_frameForTimeMarkerView:(id)view;
- (CGRect)waveformRectForLayoutBounds:(CGRect)bounds;
- (RCTimeController)activeTimeController;
- (RCWaveformViewController)initWithDisplayStyle:(unint64_t)style isOverview:(BOOL)overview isCompact:(BOOL)compact duration:(double)duration;
- (RCWaveformViewDelegate)delegate;
- (RCWaveformZoomingDelegate)zoomingDelegate;
- (double)pointsPerSecond;
- (double)waveformSelectionOverlay:(id)overlay offsetForTime:(double)time;
- (double)waveformSelectionOverlay:(id)overlay timeForOffset:(double)offset;
- (double)waveformSelectionOverlay:(id)overlay willChangeAssetCurrentTime:(double)time isTracking:(BOOL)tracking;
- (id)applicationWaveformRenderer;
- (id)rasterizeCurrentTimeRangeIntoImageWithSize:(CGSize)size;
- (void)_addWaveformViewToHostingView:(id)view;
- (void)_autoscrollOverlayIfNecessary;
- (void)_layoutTimeMarkerViewsForCurrentlyVisibleTimeRange;
- (void)_refreshRenderController;
- (void)_scrollViewPanGestureRecognized:(id)recognized;
- (void)_setSelectedTimeRange:(id)range updateVisibleTimeRange:(BOOL)timeRange updateWaveformViewContentSizeAndOffset:(BOOL)offset notifyDelegate:(BOOL)delegate animationDuration:(double)duration;
- (void)_setTimeMarkerViewUpdatesDisabled:(BOOL)disabled;
- (void)_setVisibleTimeRange:(id)range animationDuration:(double)duration completionBlock:(id)block;
- (void)_setupViewsForApplicationDisplayStyle;
- (void)_setupViewsForWaveformOnlyDisplayStyle;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateAnnotationViews;
- (void)_updateBackgroundWaveformHighlight;
- (void)_updateCurrentTimeDisplay;
- (void)_updateSelectionOverlayWithAnimationDuration:(double)duration;
- (void)_updateVisibleAreaWithAnimationDuration:(double)duration;
- (void)_updateWaveformViewContentSizeAndOffset;
- (void)_updateWaveformViewContentSizeAndOffsetToSize:(double)size;
- (void)addAuxWaveformViewController:(id)controller;
- (void)bounceWaveform;
- (void)bringAuxWaveformViewControllerToFront:(id)front;
- (void)dealloc;
- (void)enableZooming:(BOOL)zooming;
- (void)fixupScrollPositionToMatchIndicatorPositionTime;
- (void)scaleWaveform:(id)waveform;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCapturing:(BOOL)capturing;
- (void)setClipTimeMarkersToDuration:(BOOL)duration;
- (void)setCurrentTimeDisplayOptions:(unint64_t)options;
- (void)setDataSource:(id)source;
- (void)setDesiredTimeDeltaForVisibleTimeRange:(double)range;
- (void)setDuration:(double)duration;
- (void)setEditing:(BOOL)editing;
- (void)setHighlightTimeRange:(id)range;
- (void)setIsCompactView:(BOOL)view;
- (void)setIsOverview:(BOOL)overview;
- (void)setIsPlayback:(BOOL)playback;
- (void)setMaximumSelectionDuration:(double)duration;
- (void)setPlaying:(BOOL)playing;
- (void)setScrubbingEnabled:(BOOL)enabled;
- (void)setSelectedTimeRangeEditingEnabled:(BOOL)enabled;
- (void)setShowPlayBarOnly:(BOOL)only;
- (void)setVisibleTimeRange:(id)range;
- (void)setZoomScale:(double)scale;
- (void)stopScrolling;
- (void)updateBackgroundColor;
- (void)updateColorStatesSelected:(BOOL)selected muted:(BOOL)muted trimMode:(BOOL)mode;
- (void)updateVisibleTimeRangeToFullDuration;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)waveformRenderer:(id)renderer contentWidthDidChange:(double)change;
- (void)waveformSelectionOverlay:(id)overlay didFinishTrackingSelectionBeginTime:(BOOL)time endTime:(BOOL)endTime assetCurrentTime:(BOOL)currentTime;
- (void)waveformSelectionOverlay:(id)overlay willBeginTrackingSelectionBeginTime:(BOOL)time endTime:(BOOL)endTime assetCurrentTime:(BOOL)currentTime;
@end

@implementation RCWaveformViewController

- (RCWaveformViewController)initWithDisplayStyle:(unint64_t)style isOverview:(BOOL)overview isCompact:(BOOL)compact duration:(double)duration
{
  overviewCopy = overview;
  v24.receiver = self;
  v24.super_class = RCWaveformViewController;
  v9 = [(RCWaveformViewController *)&v24 init];
  v10 = v9;
  if (v9)
  {
    v9->_displayStyle = style;
    v11 = objc_alloc_init(RCApplicationWaveformRenderer);
    rendererController = v10->_rendererController;
    v10->_rendererController = &v11->super;

    [(RCWaveformRenderer *)v10->_rendererController setRendererDelegate:v10];
    v13 = objc_opt_new();
    waveformHostingView = v10->_waveformHostingView;
    v10->_waveformHostingView = v13;

    v10->_isOverview = overviewCopy;
    RCTimeRangeMake();
    v10->_visibleTimeRange.beginTime = v15;
    v10->_visibleTimeRange.endTime = v16;
    [(RCWaveformRenderer *)v10->_rendererController setDisplayMode:!overviewCopy];
    v10->_highlightTimeRange = RCTimeRangeInvalid;
    v10->_currentTimeDisplayOptions = 0;
    v10->_clipTimeMarkersToDuration = 1;
    v17 = objc_opt_new();
    timeMarkerView = v10->_timeMarkerView;
    v10->_timeMarkerView = v17;

    v10->_isCompactView = compact;
    v10->_desiredTimeDeltaForVisibleTimeRange = 6.0;
    if (!v10->_isOverview && v10->_displayStyle != 1)
    {
      v19 = 3;
      v20 = [[NSMutableArray alloc] initWithCapacity:3];
      timeMarkerViews = v10->_timeMarkerViews;
      v10->_timeMarkerViews = v20;

      do
      {
        v22 = objc_alloc_init(RCChronologicalAnnotationView);
        [(NSMutableArray *)v10->_timeMarkerViews addObject:v22];

        --v19;
      }

      while (v19);
    }

    [(RCWaveformViewController *)v10 addChildViewController:v10->_rendererController];
    [(RCWaveformRenderer *)v10->_rendererController didMoveToParentViewController:v10];
    v10->_baselinePointsPerSecond = 100.0;
    v10->_pointsPerSecondScale = 1.0;
  }

  return v10;
}

- (void)dealloc
{
  [(RCWaveformScrollView *)self->_scrollView setDelegate:0];
  [(RCWaveformRenderer *)self->_rendererController setRendererDelegate:0];
  [(NSTimer *)self->_overlayAutoscrollTimer invalidate];
  overlayAutoscrollTimer = self->_overlayAutoscrollTimer;
  self->_overlayAutoscrollTimer = 0;

  rendererController = self->_rendererController;
  self->_rendererController = 0;

  v5.receiver = self;
  v5.super_class = RCWaveformViewController;
  [(RCWaveformViewController *)&v5 dealloc];
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  [(RCWaveformViewController *)self stopScrolling];
  [(RCWaveformRenderer *)self->_rendererController setDataSource:sourceCopy];

  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];

  [(RCWaveformViewController *)self _updateAnnotationViews];
}

- (void)setScrubbingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(RCWaveformViewController *)self isOverview])
  {
    self->_scrubbingEnabled = 0;
    scrollView = self->_scrollView;

    [(RCWaveformScrollView *)scrollView setScrollEnabled:0];
  }

  else
  {
    self->_scrubbingEnabled = enabledCopy;
    [(RCWaveformScrollView *)self->_scrollView setScrollEnabled:enabledCopy];
    scrubbingEnabled = self->_scrubbingEnabled;

    [(RCWaveformViewController *)self enableZooming:scrubbingEnabled];
  }
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    self->_playing = playing;
    [(RCWaveformRenderer *)self->_rendererController setFrequentUpdatesSegmentUpdatesExpectedHint:0];
    [(RCWaveformViewController *)self _updateSelectionOverlayWithAnimationDuration:0.0];

    [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
  }
}

- (void)setCapturing:(BOOL)capturing
{
  if (self->_capturing != capturing)
  {
    capturingCopy = capturing;
    self->_capturing = capturing;
    [(RCWaveformRenderer *)self->_rendererController setCalcBlockShouldRefreshAllSlices:1];
    [(RCWaveformRenderer *)self->_rendererController setIsLiveWaveform:capturingCopy];
    [(RCWaveformRenderer *)self->_rendererController setFrequentUpdatesSegmentUpdatesExpectedHint:capturingCopy];
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setIsRecording:capturingCopy];
    [(RCWaveformViewController *)self _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];

    [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    editingCopy = editing;
    self->_editing = editing;
    applicationWaveformRenderer = [(RCWaveformViewController *)self applicationWaveformRenderer];
    if (applicationWaveformRenderer)
    {
      v6 = applicationWaveformRenderer;
      [applicationWaveformRenderer setIsEditMode:editingCopy];
      applicationWaveformRenderer = v6;
    }
  }
}

- (void)setIsPlayback:(BOOL)playback
{
  playbackCopy = playback;
  self->_isPlayback = playback;
  applicationWaveformRenderer = [(RCWaveformViewController *)self applicationWaveformRenderer];
  if (applicationWaveformRenderer)
  {
    [applicationWaveformRenderer setIsPlayback:playbackCopy];
  }

  [(RCWaveformViewController *)self updateBackgroundColor];
}

- (void)setCurrentTimeDisplayOptions:(unint64_t)options
{
  if (self->_currentTimeDisplayOptions != options)
  {
    self->_currentTimeDisplayOptions = options;
    [(RCWaveformViewController *)self _updateCurrentTimeDisplay];
  }
}

- (void)setClipTimeMarkersToDuration:(BOOL)duration
{
  if (self->_clipTimeMarkersToDuration != duration)
  {
    self->_clipTimeMarkersToDuration = duration;
  }

  [(RCWaveformViewController *)self _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
}

- (void)_refreshRenderController
{
  [(RCWaveformRenderer *)self->_rendererController setSyncRenderOnMainThread:1];
  [(RCWaveformRenderer *)self->_rendererController setCalcBlockShouldRefreshAllSlices:1];
  rendererController = self->_rendererController;
  [(RCWaveformRenderer *)rendererController visibleTimeRange];
  [(RCWaveformRenderer *)rendererController setVisibleTimeRange:?];
  v4 = self->_rendererController;

  [(RCWaveformRenderer *)v4 setSyncRenderOnMainThread:0];
}

- (void)updateColorStatesSelected:(BOOL)selected muted:(BOOL)muted trimMode:(BOOL)mode
{
  modeCopy = mode;
  mutedCopy = muted;
  [(RCWaveformRenderer *)self->_rendererController setSelected:selected];
  [(RCWaveformRenderer *)self->_rendererController setMuted:mutedCopy];
  [(RCWaveformRenderer *)self->_rendererController setTrimMode:modeCopy];
  rendererController = self->_rendererController;

  [(RCWaveformRenderer *)rendererController drawWaveform];
}

- (CGRect)waveformRectForLayoutBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v7 annotationViewHeight];
  v9 = height - v8;

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)setIsOverview:(BOOL)overview
{
  overviewCopy = overview;
  if (self->_isOverview != overview)
  {
    self->_isOverview = overview;
  }

  if (overview)
  {
    [(RCWaveformRenderer *)self->_rendererController setDisplayMode:0];
    applicationWaveformRenderer = [(RCWaveformViewController *)self applicationWaveformRenderer];
    v6 = applicationWaveformRenderer;
    if (applicationWaveformRenderer)
    {
      [applicationWaveformRenderer setIsCompactView:0];
    }

    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setHidden:0];
    [(UIView *)self->_selectionBackgroundView setHidden:0];
    v7 = RCLocalizedFrameworkString();
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setAccessibilityLabel:v7];

    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setAxSegment:20.0];
  }

  else
  {
    v8 = RCLocalizedFrameworkString();
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setAccessibilityLabel:v8];

    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setAxSegment:30.0];
  }

  selectionOverlay = self->_selectionOverlay;

  [(RCWaveformSelectionOverlay *)selectionOverlay setIsOverView:overviewCopy];
}

- (void)setDuration:(double)duration
{
  if (self->_duration == duration)
  {
    return;
  }

  self->_duration = duration;
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setAssetDuration:duration];
  if ([(RCWaveformSelectionOverlay *)self->_selectionOverlay isEditingEnabled])
  {
    beginTime = self->_selectedTimeRange.beginTime;
    endTime = self->_selectedTimeRange.endTime;
    if (endTime <= beginTime)
    {
      if (endTime <= duration && beginTime <= duration)
      {
LABEL_12:
        if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
        {
          [(RCWaveformViewController *)self _setSelectedTimeRange:0 updateVisibleTimeRange:1 updateWaveformViewContentSizeAndOffset:0 notifyDelegate:beginTime animationDuration:endTime, 0.0];
        }

        goto LABEL_14;
      }
    }

    else if (beginTime < duration)
    {
      if (endTime > duration)
      {
        self->_selectedTimeRange.endTime = duration;
      }

      goto LABEL_12;
    }

    RCTimeRangeMake();
    beginTime = v8;
    endTime = v9;
    goto LABEL_12;
  }

LABEL_14:
  if (self->_clipTimeMarkersToDuration)
  {
    [(RCWaveformViewController *)self _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_timeMarkerViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * i) setContentDuration:{self->_duration, v15}];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
}

- (void)updateVisibleTimeRangeToFullDuration
{
  dataSource = [(RCWaveformViewController *)self dataSource];
  [dataSource duration];

  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v4 overviewWaveformMinimumDurationToDisplayWhenRecording];

  [(RCWaveformViewController *)self isPlayback];
  RCTimeRangeMake();
  v6 = v5;
  v8 = v7;
  RCTimeRangeDelta();
  [(RCWaveformViewController *)self setDesiredTimeDeltaForVisibleTimeRange:?];

  [(RCWaveformViewController *)self setVisibleTimeRange:v6 animationDuration:v8, 0.0];
}

- (void)setVisibleTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  if ([(RCWaveformViewController *)self isOverview])
  {

    [(RCWaveformViewController *)self updateVisibleTimeRangeToFullDuration];
  }

  else
  {

    [(RCWaveformViewController *)self setVisibleTimeRange:var0 animationDuration:var1, 0.0];
  }
}

- (void)setHighlightTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  p_highlightTimeRange = &self->_highlightTimeRange;
  if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
  {
    p_highlightTimeRange->beginTime = var0;
    p_highlightTimeRange->endTime = var1;
    rendererController = self->_rendererController;

    [(RCWaveformRenderer *)rendererController setHighlightTimeRange:var0, var1];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)setHighlightTimeRange
{
  if (self->_rendererController)
  {
    [(RCWaveformRenderer *)self->_rendererController highlightTimeRange];
  }

  else
  {
    beginTime = self->_highlightTimeRange.beginTime;
    endTime = self->_highlightTimeRange.endTime;
  }

  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeByInsettingVisibleTimeRange:(id)range inset:(double)inset
{
  var1 = range.var1;
  var0 = range.var0;
  [(RCWaveformRenderer *)self->_rendererController pointsPerSecondWithVisibleTimeRange:?];
  v8 = 1.0 / v7 * inset;
  v9 = var0 - v8;
  v10 = var1 + v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (void)setMaximumSelectionDuration:(double)duration
{
  self->_maximumSelectionDuration = duration;
  [(RCWaveformViewController *)self maximumSelectionDuration];
  selectionOverlay = self->_selectionOverlay;

  [(RCWaveformSelectionOverlay *)selectionOverlay setSelectedTimeRangeMaximumDuration:?];
}

- (void)setSelectedTimeRangeEditingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_selectedTimeRangeEditingEnabled = enabled;
  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setInsertMode:[(RCWaveformViewController *)self selectionOverlayShouldUseInsertMode]];
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setEditingEnabled:enabledCopy];

  [(RCWaveformViewController *)self _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
}

- (void)bounceWaveform
{
  view = [(RCWaveformRenderer *)self->_rendererController view];
  layer = [view layer];

  v4 = *&CATransform3DIdentity.m33;
  v15[4] = *&CATransform3DIdentity.m31;
  v15[5] = v4;
  v5 = *&CATransform3DIdentity.m43;
  v15[6] = *&CATransform3DIdentity.m41;
  v15[7] = v5;
  v6 = *&CATransform3DIdentity.m13;
  v15[0] = *&CATransform3DIdentity.m11;
  v15[1] = v6;
  v7 = *&CATransform3DIdentity.m23;
  v15[2] = *&CATransform3DIdentity.m21;
  v15[3] = v7;
  v8 = [NSValue valueWithBytes:v15 objCType:"{CATransform3D=dddddddddddddddd}"];
  CATransform3DMakeScale(&v14, 1.0, 1.333, 1.0);
  v9 = [NSValue valueWithBytes:&v14 objCType:"{CATransform3D=dddddddddddddddd}"];
  v10 = [[CASpringAnimation alloc] initWithPerceptualDuration:0.2 bounce:0.3];
  [v10 setKeyPath:@"sublayerTransform"];
  [v10 setFromValue:v8];
  [v10 setToValue:v9];
  v11 = [[CASpringAnimation alloc] initWithPerceptualDuration:0.5 bounce:0.5];
  [v11 setKeyPath:@"sublayerTransform"];
  [v11 setFromValue:v9];
  [v11 setToValue:v8];
  [v11 setBeginTime:0.2];
  v12 = objc_alloc_init(CAAnimationGroup);
  [v12 setDuration:0.7];
  v16[0] = v10;
  v16[1] = v11;
  v13 = [NSArray arrayWithObjects:v16 count:2];
  [v12 setAnimations:v13];

  [layer addAnimation:v12 forKey:0];
}

- (void)addAuxWaveformViewController:(id)controller
{
  controllerCopy = controller;
  [(RCWaveformViewController *)self addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:self];
  view = [controllerCopy view];

  [(RCWaveformViewController *)self _addWaveformViewToHostingView:view];
}

- (void)bringAuxWaveformViewControllerToFront:(id)front
{
  frontCopy = front;
  if (!frontCopy || ([(RCWaveformRenderer *)frontCopy parentViewController], v4 = objc_claimAutoreleasedReturnValue(), v4, rendererController = frontCopy, v4 != self))
  {
    rendererController = self->_rendererController;
  }

  view = [(RCWaveformRenderer *)rendererController view];
  [(UIView *)self->_waveformHostingView bringSubviewToFront:view];
}

- (void)setZoomScale:(double)scale
{
  v4 = fmin(scale, 4.0);
  if (v4 < 0.01)
  {
    v4 = 0.01;
  }

  if (self->_pointsPerSecondScale != v4)
  {
    self->_pointsPerSecondScale = v4;
    layoutWidth = self->_layoutWidth;
    [(RCWaveformViewController *)self pointsPerSecond];
    [(RCWaveformViewController *)self setDesiredTimeDeltaForVisibleTimeRange:layoutWidth / v7];

    [(RCWaveformViewController *)self fixupScrollPositionToMatchIndicatorPositionTime];
  }
}

- (double)pointsPerSecond
{
  result = self->_baselinePointsPerSecond * self->_pointsPerSecondScale;
  if (result <= 0.0)
  {
    return 1.0;
  }

  return result;
}

- (void)scaleWaveform:(id)waveform
{
  waveformCopy = waveform;
  [waveformCopy scale];
  if ([waveformCopy state] == 1 || objc_msgSend(waveformCopy, "state") == 2)
  {
    [(RCWaveformViewController *)self zoomScale];
    v6 = v5;
    [waveformCopy scale];
    v8 = v6 * v7;
    [waveformCopy setScale:1.0];
    [(RCWaveformViewController *)self setZoomScale:v8];
  }
}

- (void)enableZooming:(BOOL)zooming
{
  zoomingCopy = zooming;
  if (![(RCWaveformViewController *)self isOverview])
  {
    pinchGesture = self->_pinchGesture;
    if (!pinchGesture)
    {
      [(RCWaveformScrollView *)self->_scrollView setBouncesZoom:0];
      [(RCWaveformScrollView *)self->_scrollView setMaximumZoomScale:2.0];
      [(RCWaveformScrollView *)self->_scrollView setMinimumZoomScale:0.5];
      pinchGestureRecognizer = [(RCWaveformScrollView *)self->_scrollView pinchGestureRecognizer];
      v7 = self->_pinchGesture;
      self->_pinchGesture = pinchGestureRecognizer;

      [(UIPinchGestureRecognizer *)self->_pinchGesture addTarget:self action:"scaleWaveform:"];
      pinchGesture = self->_pinchGesture;
    }

    [(UIPinchGestureRecognizer *)pinchGesture setEnabled:zoomingCopy];
  }
}

- (void)viewDidLayoutSubviews
{
  view = [(RCWaveformViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v23);

  view2 = [(RCWaveformViewController *)self view];
  [view2 frame];
  Height = CGRectGetHeight(v24);

  if (self->_layoutWidth != Width || self->_layoutHeight != Height)
  {
    self->_layoutWidth = Width;
    self->_layoutHeight = Height;
    [(RCWaveformScrollView *)self->_scrollView bounds];
    v8 = v7;
    v9 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v9 annotationViewHeight];
    v11 = v8 - v10;
    [(RCWaveformScrollView *)self->_scrollView bounds];
    v13 = v12;
    v14 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v14 annotationViewHeight];
    [(UIView *)self->_timeMarkerView setFrame:0.0, v11, v13, v15];

    [(RCWaveformViewController *)self selectedTimeRange];
    RCTimeRangeDeltaWithUIPrecision();
    if (v16 < 4.4408921e-16)
    {
      [(RCWaveformViewController *)self fixupScrollPositionToMatchIndicatorPositionTime];
    }

    view3 = [(RCWaveformViewController *)self view];
    [view3 frame];
    v19 = v18;

    v20 = 6.0;
    if (v19 > 0.0)
    {
      [(RCWaveformViewController *)self pointsPerSecond];
      v20 = Width / v21;
    }

    [(RCWaveformViewController *)self setDesiredTimeDeltaForVisibleTimeRange:v20];
    [(UIView *)self->_waveformHostingView layoutSubviews];
    [(RCWaveformViewController *)self _updateCurrentTimeDisplay];

    [(RCWaveformViewController *)self reloadOverlayOffsets];
  }
}

- (void)setIsCompactView:(BOOL)view
{
  viewCopy = view;
  self->_isCompactView = view;
  [(UIView *)self->_timeMarkerView setHidden:?];
  v5 = viewCopy && !self->_showPlayBarOnly;
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setHidden:v5];
  [(UIView *)self->_selectionBackgroundView setHidden:viewCopy];
  [(UIView *)self->_backgroundWaveFormHighlightView setHidden:viewCopy];
  applicationWaveformRenderer = [(RCWaveformViewController *)self applicationWaveformRenderer];
  if (applicationWaveformRenderer)
  {
    [applicationWaveformRenderer setIsCompactView:viewCopy];
  }

  [(RCWaveformViewController *)self updateBackgroundColor];
  view = [(RCWaveformViewController *)self view];
  [view setNeedsLayout];
}

- (void)setShowPlayBarOnly:(BOOL)only
{
  onlyCopy = only;
  self->_showPlayBarOnly = only;
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setPlayBarOnly:?];
  if (self->_isCompactView && onlyCopy)
  {
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setHidden:0];
  }

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setSelectionMode:onlyCopy];
  applicationWaveformRenderer = [(RCWaveformViewController *)self applicationWaveformRenderer];
  if (applicationWaveformRenderer)
  {
    v7 = applicationWaveformRenderer;
    [applicationWaveformRenderer setIsPlayBarOnlyMode:onlyCopy];
    applicationWaveformRenderer = v7;
  }
}

- (void)_addWaveformViewToHostingView:(id)view
{
  viewCopy = view;
  [viewCopy setUserInteractionEnabled:0];
  [(UIView *)self->_waveformHostingView addSubview:viewCopy];
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = objc_opt_new();
  leadingAnchor = [(UIView *)self->_waveformHostingView leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v17 addObject:v7];

  trailingAnchor = [(UIView *)self->_waveformHostingView trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 addObject:v10];

  topAnchor = [(UIView *)self->_waveformHostingView topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v17 addObject:v13];

  bottomAnchor = [(UIView *)self->_waveformHostingView bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];

  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v17 addObject:v16];

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_setupViewsForWaveformOnlyDisplayStyle
{
  view = [(RCWaveformRenderer *)self->_rendererController view];
  [view setUserInteractionEnabled:0];
  view2 = [(RCWaveformViewController *)self view];
  [view2 addSubview:view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_new();
  view3 = [(RCWaveformViewController *)self view];
  leadingAnchor = [view3 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v4 addObject:v8];

  view4 = [(RCWaveformViewController *)self view];
  trailingAnchor = [view4 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v4 addObject:v12];

  view5 = [(RCWaveformViewController *)self view];
  topAnchor = [view5 topAnchor];
  topAnchor2 = [view topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v4 addObject:v16];

  view6 = [(RCWaveformViewController *)self view];
  bottomAnchor = [view6 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v4 addObject:v20];

  [NSLayoutConstraint activateConstraints:v4];
}

- (void)_setupViewsForApplicationDisplayStyle
{
  v3 = [RCWaveformScrollView alloc];
  view = [(RCWaveformViewController *)self view];
  [view bounds];
  v5 = [(RCWaveformScrollView *)v3 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  [(RCWaveformScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
  [(RCWaveformScrollView *)self->_scrollView setDirectionalLockEnabled:1];
  v7 = +[UIColor clearColor];
  [(RCWaveformScrollView *)self->_scrollView setBackgroundColor:v7];

  [(RCWaveformScrollView *)self->_scrollView setBounces:1];
  view2 = [(RCWaveformViewController *)self view];
  [view2 bounds];
  [(RCWaveformScrollView *)self->_scrollView setContentInset:0.0, v9 * 0.5, 0.0, 0.0];

  [(RCWaveformScrollView *)self->_scrollView setDelegate:self];
  [(RCWaveformScrollView *)self->_scrollView setOpaque:0];
  [(RCWaveformScrollView *)self->_scrollView setScrollEnabled:1];
  [(RCWaveformScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(RCWaveformScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  objc_storeWeak(&self->_zoomingDelegate, self->_scrollView);
  panGestureRecognizer = [(RCWaveformScrollView *)self->_scrollView panGestureRecognizer];
  [panGestureRecognizer addTarget:self action:"_scrollViewPanGestureRecognized:"];

  [(RCWaveformScrollView *)self->_scrollView addSubview:self->_timeMarkerView];
  [(UIView *)self->_timeMarkerView setHidden:[(RCWaveformViewController *)self isCompactView]];
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v11 = self->_timeMarkerViews;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v167 objects:v176 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v168;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v168 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v167 + 1) + 8 * i);
        v17 = +[RCRecorderStyleProvider sharedStyleProvider];
        [v17 annotationViewHeight];
        [v16 setFrame:{0.0, 0.0, 0.0, v18}];

        [(UIView *)self->_timeMarkerView addSubview:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v167 objects:v176 count:16];
    }

    while (v13);
  }

  [(RCWaveformViewController *)self _setTimeMarkerViewsNeedInitialLayout:1];
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  if ([(RCWaveformViewController *)self isOverview])
  {
    bottom = UIEdgeInsetsZero.bottom;
  }

  else
  {
    v22 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v22 annotationViewHeight];
    bottom = v23;
  }

  v24 = [RCWaveformSelectionOverlay alloc];
  [(RCWaveformScrollView *)self->_scrollView bounds];
  right = [(RCWaveformSelectionOverlay *)v24 initWithDelegate:self height:v25 selectionAreaInsets:UIEdgeInsetsZero.top, left, bottom, right];
  selectionOverlay = self->_selectionOverlay;
  self->_selectionOverlay = right;

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setSelectedTimeRangeMinimumDuration:1.0];
  isOverview = [(RCWaveformViewController *)self isOverview];
  v29 = self->_selectionOverlay;
  if (isOverview)
  {
    [(RCWaveformSelectionOverlay *)v29 setOverviewTrimHandleStyle:1];
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setBarMatchesKnobRadius:1];
    v30 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v30 overviewKnobWidthMultiplier];
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setKnobWidthMultiplier:?];

    v31 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v31 overviewPlayheadWidthMultiplier];
  }

  else
  {
    [(RCWaveformSelectionOverlay *)v29 setOverviewTrimHandleStyle:0];
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setBarMatchesKnobRadius:0];
    v32 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v32 knobWidthMultiplier];
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setKnobWidthMultiplier:?];

    v31 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v31 playheadWidthMultiplier];
  }

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setPlayWidthMultiplier:?];

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setEnableTimeTrackingInView:isOverview];
  v33 = 0.0;
  v34 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  selectionBackgroundView = self->_selectionBackgroundView;
  self->_selectionBackgroundView = v34;

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setSelectionBackgroundView:self->_selectionBackgroundView];
  v36 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v36;

  v38 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  backgroundWaveFormHighlightView = self->_backgroundWaveFormHighlightView;
  self->_backgroundWaveFormHighlightView = v38;

  if ([(RCWaveformViewController *)self isOverview])
  {
    v40 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v40 overviewWaveformCornerRadius];
    v42 = v41;
    layer = [(UIView *)self->_backgroundView layer];
    [layer setCornerRadius:v42];

    layer2 = [(UIView *)self->_backgroundView layer];
    [layer2 setMasksToBounds:1];

    v45 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v45 overviewWaveformCornerRadius];
    v47 = v46;
    layer3 = [(UIView *)self->_backgroundWaveFormHighlightView layer];
    [layer3 setCornerRadius:v47];

    layer4 = [(UIView *)self->_backgroundWaveFormHighlightView layer];
    [layer4 setMasksToBounds:1];

    v50 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v50 overviewWaveformCornerRadius];
    v52 = v51;
    view3 = [(RCWaveformRenderer *)self->_rendererController view];
    layer5 = [view3 layer];
    [layer5 setCornerRadius:v52];

    view4 = [(RCWaveformRenderer *)self->_rendererController view];
    layer6 = [view4 layer];
    [layer6 setMasksToBounds:1];
  }

  view5 = [(RCWaveformViewController *)self view];
  [view5 addSubview:self->_backgroundView];

  if ([(RCWaveformViewController *)self isOverview])
  {
    v58 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v58 selectionOverlayBorderWidth];
    v33 = v59;
  }

  v60 = -v33;
  if (![(RCWaveformViewController *)self isCompactView])
  {
    v61 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v61 annotationViewHeight];
    v60 = v60 - v62;
  }

  [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v63 = self->_backgroundView;
  view6 = [(RCWaveformViewController *)self view];
  v65 = [NSLayoutConstraint constraintWithItem:v63 attribute:1 relatedBy:0 toItem:view6 attribute:1 multiplier:1.0 constant:0.0];

  v66 = v65;
  v166 = v65;
  LODWORD(v67) = 1144750080;
  [v65 setPriority:v67];
  v68 = self->_backgroundView;
  view7 = [(RCWaveformViewController *)self view];
  v70 = [NSLayoutConstraint constraintWithItem:v68 attribute:2 relatedBy:0 toItem:view7 attribute:2 multiplier:1.0 constant:0.0];

  v71 = v70;
  v165 = v70;
  LODWORD(v72) = 1144750080;
  [v70 setPriority:v72];
  v73 = self->_backgroundView;
  view8 = [(RCWaveformViewController *)self view];
  v75 = [NSLayoutConstraint constraintWithItem:v73 attribute:3 relatedBy:0 toItem:view8 attribute:3 multiplier:1.0 constant:v33];

  v164 = v75;
  LODWORD(v76) = 1144750080;
  [v75 setPriority:v76];
  v77 = self->_backgroundView;
  view9 = [(RCWaveformViewController *)self view];
  v79 = [NSLayoutConstraint constraintWithItem:v77 attribute:4 relatedBy:0 toItem:view9 attribute:4 multiplier:1.0 constant:v60];
  backgroundBottomToBottomConstraint = self->_backgroundBottomToBottomConstraint;
  self->_backgroundBottomToBottomConstraint = v79;

  LODWORD(v81) = 1144750080;
  [(NSLayoutConstraint *)self->_backgroundBottomToBottomConstraint setPriority:v81];
  v175[0] = v66;
  v175[1] = v71;
  v82 = self->_backgroundBottomToBottomConstraint;
  v175[2] = v75;
  v175[3] = v82;
  v83 = [NSArray arrayWithObjects:v175 count:4];
  [NSLayoutConstraint activateConstraints:v83];

  [(UIView *)self->_waveformHostingView setUserInteractionEnabled:0];
  [(UIView *)self->_waveformHostingView setClipsToBounds:1];
  view10 = [(RCWaveformViewController *)self view];
  [view10 addSubview:self->_waveformHostingView];

  [(UIView *)self->_waveformHostingView setTranslatesAutoresizingMaskIntoConstraints:0];
  waveformHostingView = self->_waveformHostingView;
  view11 = [(RCWaveformViewController *)self view];
  v87 = [NSLayoutConstraint constraintWithItem:waveformHostingView attribute:1 relatedBy:0 toItem:view11 attribute:1 multiplier:1.0 constant:0.0];

  v163 = v87;
  LODWORD(v88) = 1144750080;
  [v87 setPriority:v88];
  v89 = self->_waveformHostingView;
  view12 = [(RCWaveformViewController *)self view];
  v91 = [NSLayoutConstraint constraintWithItem:v89 attribute:2 relatedBy:0 toItem:view12 attribute:2 multiplier:1.0 constant:0.0];

  v162 = v91;
  LODWORD(v92) = 1144750080;
  [v91 setPriority:v92];
  v93 = self->_waveformHostingView;
  view13 = [(RCWaveformViewController *)self view];
  v95 = [NSLayoutConstraint constraintWithItem:v93 attribute:3 relatedBy:0 toItem:view13 attribute:3 multiplier:1.0 constant:v33];

  v161 = v95;
  LODWORD(v96) = 1144750080;
  [v95 setPriority:v96];
  v97 = self->_waveformHostingView;
  view14 = [(RCWaveformViewController *)self view];
  v99 = [NSLayoutConstraint constraintWithItem:v97 attribute:4 relatedBy:0 toItem:view14 attribute:4 multiplier:1.0 constant:0.0];
  renderViewBottomInsetConstraint = self->_renderViewBottomInsetConstraint;
  self->_renderViewBottomInsetConstraint = v99;

  [(NSLayoutConstraint *)self->_renderViewBottomInsetConstraint setConstant:v60];
  LODWORD(v101) = 1144750080;
  [(NSLayoutConstraint *)self->_renderViewBottomInsetConstraint setPriority:v101];
  v174[0] = v87;
  v174[1] = v91;
  v102 = self->_renderViewBottomInsetConstraint;
  v174[2] = v95;
  v174[3] = v102;
  v103 = [NSArray arrayWithObjects:v174 count:4];
  [NSLayoutConstraint activateConstraints:v103];

  view15 = [(RCWaveformRenderer *)self->_rendererController view];
  [(RCWaveformViewController *)self _addWaveformViewToHostingView:view15];

  view16 = [(RCWaveformViewController *)self view];
  [view16 addSubview:self->_scrollView];

  [(RCWaveformScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v106 = self->_scrollView;
  view17 = [(RCWaveformViewController *)self view];
  v108 = [NSLayoutConstraint constraintWithItem:v106 attribute:1 relatedBy:0 toItem:view17 attribute:1 multiplier:1.0 constant:0.0];

  v109 = v108;
  v160 = v108;
  LODWORD(v110) = 1144750080;
  [v108 setPriority:v110];
  v111 = self->_scrollView;
  view18 = [(RCWaveformViewController *)self view];
  v113 = [NSLayoutConstraint constraintWithItem:v111 attribute:2 relatedBy:0 toItem:view18 attribute:2 multiplier:1.0 constant:0.0];

  LODWORD(v114) = 1144750080;
  [v113 setPriority:v114];
  v115 = self->_scrollView;
  view19 = [(RCWaveformViewController *)self view];
  v117 = [NSLayoutConstraint constraintWithItem:v115 attribute:3 relatedBy:0 toItem:view19 attribute:3 multiplier:1.0 constant:0.0];

  LODWORD(v118) = 1144750080;
  [v117 setPriority:v118];
  v119 = self->_scrollView;
  view20 = [(RCWaveformViewController *)self view];
  v159 = [NSLayoutConstraint constraintWithItem:v119 attribute:4 relatedBy:0 toItem:view20 attribute:4 multiplier:1.0 constant:0.0];

  LODWORD(v121) = 1144750080;
  [v159 setPriority:v121];
  v173[0] = v109;
  v173[1] = v113;
  v173[2] = v117;
  v173[3] = v159;
  v122 = [NSArray arrayWithObjects:v173 count:4];
  [NSLayoutConstraint activateConstraints:v122];

  view21 = [(RCWaveformViewController *)self view];
  [view21 sendSubviewToBack:self->_backgroundView];

  view22 = [(RCWaveformViewController *)self view];
  [view22 insertSubview:self->_backgroundWaveFormHighlightView aboveSubview:self->_backgroundView];

  [(UIView *)self->_backgroundWaveFormHighlightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v125 = self->_backgroundWaveFormHighlightView;
  view23 = [(RCWaveformViewController *)self view];
  v127 = [NSLayoutConstraint constraintWithItem:v125 attribute:1 relatedBy:0 toItem:view23 attribute:1 multiplier:1.0 constant:0.0];
  backgroundWaveFormHighlightViewLeftAlignment = self->_backgroundWaveFormHighlightViewLeftAlignment;
  self->_backgroundWaveFormHighlightViewLeftAlignment = v127;

  LODWORD(v129) = 1144750080;
  [(NSLayoutConstraint *)self->_backgroundWaveFormHighlightViewLeftAlignment setPriority:v129];
  v130 = self->_backgroundWaveFormHighlightView;
  view24 = [(RCWaveformViewController *)self view];
  v132 = [NSLayoutConstraint constraintWithItem:v130 attribute:2 relatedBy:0 toItem:view24 attribute:2 multiplier:1.0 constant:0.0];
  backgroundWaveFormHighlightViewRightAlignment = self->_backgroundWaveFormHighlightViewRightAlignment;
  self->_backgroundWaveFormHighlightViewRightAlignment = v132;

  LODWORD(v134) = 1144750080;
  [(NSLayoutConstraint *)self->_backgroundWaveFormHighlightViewRightAlignment setPriority:v134];
  v135 = self->_backgroundWaveFormHighlightView;
  view25 = [(RCWaveformViewController *)self view];
  v137 = [NSLayoutConstraint constraintWithItem:v135 attribute:3 relatedBy:0 toItem:view25 attribute:3 multiplier:1.0 constant:v33];

  LODWORD(v138) = 1144750080;
  [v137 setPriority:v138];
  v139 = self->_backgroundWaveFormHighlightView;
  view26 = [(RCWaveformViewController *)self view];
  v141 = [NSLayoutConstraint constraintWithItem:v139 attribute:4 relatedBy:0 toItem:view26 attribute:4 multiplier:1.0 constant:v60];
  backgroundWaveformHighlightViewBottomToBottom = self->_backgroundWaveformHighlightViewBottomToBottom;
  self->_backgroundWaveformHighlightViewBottomToBottom = v141;

  LODWORD(v143) = 1144750080;
  [(NSLayoutConstraint *)self->_backgroundWaveformHighlightViewBottomToBottom setPriority:v143];
  v144 = self->_backgroundWaveFormHighlightViewRightAlignment;
  v172[0] = self->_backgroundWaveFormHighlightViewLeftAlignment;
  v172[1] = v144;
  v145 = self->_backgroundWaveformHighlightViewBottomToBottom;
  v172[2] = v137;
  v172[3] = v145;
  v146 = [NSArray arrayWithObjects:v172 count:4];
  [NSLayoutConstraint activateConstraints:v146];

  [(UIView *)self->_selectionBackgroundView setHidden:self->_isCompactView];
  view27 = [(RCWaveformViewController *)self view];
  [view27 insertSubview:self->_selectionBackgroundView aboveSubview:self->_backgroundWaveFormHighlightView];

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setHidden:self->_isCompactView];
  view28 = [(RCWaveformViewController *)self view];
  [view28 addSubview:self->_selectionOverlay];

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setTranslatesAutoresizingMaskIntoConstraints:0];
  v149 = [NSLayoutConstraint constraintWithItem:self->_selectionOverlay attribute:1 relatedBy:0 toItem:self->_scrollView attribute:1 multiplier:1.0 constant:0.0];
  LODWORD(v150) = 1144750080;
  [v149 setPriority:v150];
  v151 = [NSLayoutConstraint constraintWithItem:self->_selectionOverlay attribute:2 relatedBy:0 toItem:self->_scrollView attribute:2 multiplier:1.0 constant:0.0];
  LODWORD(v152) = 1144750080;
  [v151 setPriority:v152];
  v153 = [NSLayoutConstraint constraintWithItem:self->_selectionOverlay attribute:3 relatedBy:0 toItem:self->_scrollView attribute:3 multiplier:1.0 constant:0.0];
  LODWORD(v154) = 1144750080;
  [v153 setPriority:v154];
  v155 = [NSLayoutConstraint constraintWithItem:self->_selectionOverlay attribute:4 relatedBy:0 toItem:self->_scrollView attribute:4 multiplier:1.0 constant:0.0];
  LODWORD(v156) = 1144750080;
  [v155 setPriority:v156];
  v171[0] = v149;
  v171[1] = v151;
  v171[2] = v153;
  v171[3] = v155;
  v157 = [NSArray arrayWithObjects:v171 count:4];
  [NSLayoutConstraint activateConstraints:v157];

  view29 = [(RCWaveformViewController *)self view];
  [view29 bringSubviewToFront:self->_selectionOverlay];

  [(RCWaveformViewController *)self setScrubbingEnabled:1];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = RCWaveformViewController;
  [(RCWaveformViewController *)&v7 viewDidLoad];
  if (self->_displayStyle == 1)
  {
    [(RCWaveformViewController *)self _setupViewsForWaveformOnlyDisplayStyle];
  }

  else
  {
    [(RCWaveformViewController *)self _setupViewsForApplicationDisplayStyle];
  }

  [(RCWaveformViewController *)self updateColors];
  [(RCWaveformViewController *)self _updateVisibleAreaWithAnimationDuration:0.0];
  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];
  view = [(RCWaveformViewController *)self view];
  [view setNeedsLayout];

  v4 = objc_opt_self();
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(RCWaveformViewController *)self registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
}

- (void)viewWillLayoutSubviews
{
  v3 = 0.0;
  if ([(RCWaveformViewController *)self isOverview])
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v4 selectionOverlayBorderWidth];
    v3 = -v5;
  }

  if (![(RCWaveformViewController *)self isCompactView])
  {
    v6 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v6 annotationViewHeight];
    v3 = v3 - v7;
  }

  [(NSLayoutConstraint *)self->_renderViewBottomInsetConstraint constant];
  if (v8 != v3)
  {
    [(NSLayoutConstraint *)self->_renderViewBottomInsetConstraint setConstant:v3];
  }

  [(NSLayoutConstraint *)self->_backgroundBottomToBottomConstraint constant];
  if (v9 != v3)
  {
    [(NSLayoutConstraint *)self->_backgroundBottomToBottomConstraint setConstant:v3];
  }

  [(NSLayoutConstraint *)self->_backgroundWaveformHighlightViewBottomToBottom constant];
  if (v10 != v3)
  {
    [(NSLayoutConstraint *)self->_backgroundWaveformHighlightViewBottomToBottom setConstant:v3];
  }

  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];

  [(RCWaveformViewController *)self _updateAnnotationViews];
}

- (BOOL)_isScrubbingSelectionTimeRange
{
  if (self->_scrubbing)
  {
    isSelectedTimeRangeEditingEnabled = [(RCWaveformViewController *)self isSelectedTimeRangeEditingEnabled];
    if (isSelectedTimeRangeEditingEnabled)
    {
      [(RCWaveformViewController *)self selectedTimeRange];
      RCTimeRangeDeltaWithUIPrecision();
      LOBYTE(isSelectedTimeRangeEditingEnabled) = v4 != 0.0;
    }
  }

  else
  {
    LOBYTE(isSelectedTimeRangeEditingEnabled) = 0;
  }

  return isSelectedTimeRangeEditingEnabled;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  isZooming = [scrollCopy isZooming];
  v5 = scrollCopy;
  if ((isZooming & 1) == 0)
  {
    v6 = scrollCopy;
    [v6 beginIgnoringContentOffsetChanges];
    if (self->_scrubbing)
    {
      [v6 contentOffsetInPresentationLayer:0];
      v8 = v7;
      [(RCWaveformRenderer *)self->_rendererController setFrequentUpdatesSegmentUpdatesExpectedHint:self->_scrubbing];
      [(RCWaveformRenderer *)self->_rendererController timeAtHorizontalOffset:v8];
      v10 = v9;
      [(RCWaveformViewController *)self desiredTimeDeltaForVisibleTimeRange];
      v12 = v11;
      RCTimeRangeMake();
      [(RCWaveformViewController *)self setVisibleTimeRange:?];
      if (self->_scrubbing)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [v15 waveformViewController:self didScrubToTime:0 finished:v10 + v12 * 0.5];
        }
      }
    }

    [v6 endIgnoringContentOffsetChanges];

    v5 = scrollCopy;
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = offset->x;
  [(RCWaveformViewController *)self desiredTimeDeltaForVisibleTimeRange:dragging];
  v9 = v8;
  [(RCWaveformScrollView *)self->_scrollView bounds];
  v10 = CGRectGetWidth(v17) * 0.5;
  [(RCWaveformViewController *)self currentTimeIndicatorCoordinate];
  v12 = v10 - v11;
  v13 = v9 * -0.5;
  [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:v13];
  v15 = v12 + v14;
  if (x >= v15)
  {
    [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:self->_duration + v13];
    v15 = v12 + v16;
    if (x <= v15)
    {
      v15 = x;
    }
  }

  offset->x = v15;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(RCWaveformViewController *)self _scrubbingDidFinish];
  }
}

- (void)stopScrolling
{
  self->_scrubbing = 0;
  [(RCWaveformScrollView *)self->_scrollView setScrollEnabled:0];
  scrollView = self->_scrollView;
  [(RCWaveformScrollView *)scrollView contentOffset];
  [(RCWaveformScrollView *)scrollView setContentOffset:0 animated:?];
  [(RCWaveformScrollView *)self->_scrollView setScrollEnabled:self->_scrubbingEnabled];

  [(RCWaveformViewController *)self fixupScrollPositionToMatchIndicatorPositionTime];
}

- (void)waveformSelectionOverlay:(id)overlay willBeginTrackingSelectionBeginTime:(BOOL)time endTime:(BOOL)endTime assetCurrentTime:(BOOL)currentTime
{
  if (time || endTime)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained waveformViewControllerWillBeginEditingSelectedTimeRange:self];
  }
}

- (void)waveformSelectionOverlay:(id)overlay didFinishTrackingSelectionBeginTime:(BOOL)time endTime:(BOOL)endTime assetCurrentTime:(BOOL)currentTime
{
  endTimeCopy = endTime;
  [(NSTimer *)self->_overlayAutoscrollTimer invalidate:overlay];
  overlayAutoscrollTimer = self->_overlayAutoscrollTimer;
  self->_overlayAutoscrollTimer = 0;

  if (time || endTimeCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained waveformViewControllerDidEndEditingSelectedTimeRange:self];
  }

  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)waveformSelectionOverlay:(id)overlay willChangeSelectedTimeRange:(id)range isTrackingMin:(BOOL)min isTrackingMax:(BOOL)max
{
  maxCopy = max;
  minCopy = min;
  [(RCWaveformViewController *)self _setSelectedTimeRange:0 updateVisibleTimeRange:0 updateWaveformViewContentSizeAndOffset:1 notifyDelegate:range.var0 animationDuration:range.var1, 0.0];
  if (!self->_overlayAutoscrollTimer && !self->_isOverview)
  {
    v9 = [NSTimer scheduledTimerWithTimeInterval:self target:"_autoscrollOverlayIfNecessary" selector:0 userInfo:1 repeats:0.1];
    overlayAutoscrollTimer = self->_overlayAutoscrollTimer;
    self->_overlayAutoscrollTimer = v9;

    self->_overlayAutoscrollRateForSelectionTracking = 1.0;
    [(RCWaveformViewController *)self desiredTimeDeltaForVisibleTimeRange];
    self->_overlayAutoscrollBaseDuration = v11;
  }

  if (self->_selectedTimeRangeEditingEnabled && self->_isOverview && !self->_playing && !self->_scrubbing)
  {
    if (!minCopy || maxCopy)
    {
      if (!maxCopy || minCopy)
      {
        if (minCopy && maxCopy)
        {
          RCTimeRangeGetMidTime();
          v19 = v18;
          if (self->_currentTime != v18)
          {
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v13 = WeakRetained;
            selfCopy2 = self;
            endTime = v19;
            goto LABEL_17;
          }
        }
      }

      else if (self->_currentTime != self->_selectedTimeRange.endTime)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = WeakRetained;
        endTime = self->_selectedTimeRange.endTime;
        goto LABEL_16;
      }
    }

    else if (self->_currentTime != self->_selectedTimeRange.beginTime)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v13 = WeakRetained;
      endTime = self->_selectedTimeRange.beginTime;
LABEL_16:
      selfCopy2 = self;
LABEL_17:
      [WeakRetained waveformViewController:selfCopy2 didScrubToTime:1 finished:endTime];
    }
  }

  beginTime = self->_selectedTimeRange.beginTime;
  v17 = self->_selectedTimeRange.endTime;
  result.var1 = v17;
  result.var0 = beginTime;
  return result;
}

- (double)waveformSelectionOverlay:(id)overlay willChangeAssetCurrentTime:(double)time isTracking:(BOOL)tracking
{
  if (self->_selectedTimeRangeEditingEnabled)
  {
    overlayCopy = overlay;
    [overlayCopy selectedTimeRange];
    v9 = v8;
    [overlayCopy selectedTimeRange];
    v11 = v10;

    if (v11 <= time)
    {
      timeCopy = v11;
    }

    else
    {
      timeCopy = time;
    }

    if (timeCopy >= v9)
    {
      time = timeCopy;
    }

    else
    {
      time = v9;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformViewController:self didScrubToTime:0 finished:time];

  return time;
}

- (double)waveformSelectionOverlay:(id)overlay offsetForTime:(double)time
{
  [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:overlay, self->_visibleTimeRange.beginTime];
  v7 = v6;
  [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:time];
  return v8 - v7;
}

- (double)waveformSelectionOverlay:(id)overlay timeForOffset:(double)offset
{
  [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:overlay, self->_visibleTimeRange.beginTime];
  rendererController = self->_rendererController;
  v8 = v7 + offset;

  [(RCWaveformRenderer *)rendererController timeAtHorizontalOffset:v8];
  return result;
}

- (BOOL)waveformSelectionOverlayNeedsExplicitAnimations
{
  splitViewController = [(RCWaveformViewController *)self splitViewController];
  isTransitioningBetweenVisibleColumnStates = [splitViewController isTransitioningBetweenVisibleColumnStates];

  return isTransitioningBetweenVisibleColumnStates;
}

- (BOOL)isZooming
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomingDelegate);
  isZooming = [WeakRetained isZooming];

  return isZooming;
}

- (void)waveformRenderer:(id)renderer contentWidthDidChange:(double)change
{
  rendererCopy = renderer;
  if (self->_displayStyle != 1)
  {
    v7 = rendererCopy;
    [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffsetToSize:change];
    [(RCWaveformViewController *)self _updateSelectionOverlayWithAnimationDuration:0.0];
    [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
    rendererCopy = v7;
    if (!self->_isOverview)
    {
      [(RCWaveformViewController *)self _updateCurrentTimeDisplay];
      [(RCWaveformViewController *)self fixupScrollPositionToMatchIndicatorPositionTime];
      rendererCopy = v7;
    }
  }
}

- (RCTimeController)activeTimeController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  activeTimeController = [WeakRetained activeTimeController];

  return activeTimeController;
}

- (void)setDesiredTimeDeltaForVisibleTimeRange:(double)range
{
  if (range <= 0.0)
  {
    range = 6.0;
  }

  if (self->_desiredTimeDeltaForVisibleTimeRange != range)
  {
    self->_desiredTimeDeltaForVisibleTimeRange = range;
    [(RCWaveformViewController *)self pointsPerSecond];
    v6 = 100.0 / v5;
    if (v6 > 2.0)
    {
      v6 = 2.0;
    }

    selectionOverlay = self->_selectionOverlay;

    [(RCWaveformSelectionOverlay *)selectionOverlay setSelectedTimeRangeMinimumDuration:v6];
  }
}

- (id)applicationWaveformRenderer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_rendererController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  traitCollection = [(RCWaveformViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(RCWaveformViewController *)self updateColors];
    rendererController = self->_rendererController;

    [(RCWaveformRenderer *)rendererController setCalcBlockShouldRefreshAllSlices:1];
  }
}

- (void)updateBackgroundColor
{
  if (self->_displayStyle == 1)
  {
    view = [(RCWaveformViewController *)self view];
    [view setBackgroundColor:0];
  }

  else
  {
    view = +[RCRecorderStyleProvider sharedStyleProvider];
    timelinePlaybackBackgroundColor = [view timelinePlaybackBackgroundColor];
    view2 = [(RCWaveformViewController *)self view];
    [view2 setBackgroundColor:timelinePlaybackBackgroundColor];

    if ([(RCWaveformViewController *)self isCompactView]&& ![(RCWaveformViewController *)self isOverview])
    {
      waveformCompactBackgroundColor = [view waveformCompactBackgroundColor];
      [(UIView *)self->_backgroundView setBackgroundColor:waveformCompactBackgroundColor];

      waveformCompactHighlightedBackgroundColor = [view waveformCompactHighlightedBackgroundColor];
    }

    else
    {
      waveformPlaybackBackgroundColor = [view waveformPlaybackBackgroundColor];
      [(UIView *)self->_backgroundView setBackgroundColor:waveformPlaybackBackgroundColor];

      waveformCompactHighlightedBackgroundColor = [view waveformPlaybackHighlightedBackgroundColor];
    }

    v8 = waveformCompactHighlightedBackgroundColor;
    [(UIView *)self->_backgroundWaveFormHighlightView setBackgroundColor:waveformCompactHighlightedBackgroundColor];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_visibleTimeRangeForCurrentSelectionTimeRange
{
  if ([(RCWaveformViewController *)self isOverview])
  {
    RCTimeRangeMake();
  }

  else
  {
    beginTime = self->_visibleTimeRange.beginTime;
    endTime = self->_visibleTimeRange.endTime;
  }

  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (void)_setVisibleTimeRange:(id)range animationDuration:(double)duration completionBlock:(id)block
{
  var1 = range.var1;
  var0 = range.var0;
  blockCopy = block;
  RCTimeRangeDeltaWithUIPrecision();
  if (v10 < 2.22044605e-16)
  {
    var1 = var0 + 2.22044605e-16;
  }

  if (RCTimeRangeEqualToTimeRange())
  {
    [(RCWaveformViewController *)self _updateVisibleAreaWithAnimationDuration:0.0];
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    RCTimeRangeDeltaWithUIPrecision();
    v12 = v11;
    RCTimeRangeDeltaWithUIPrecision();
    v30 = vabdd_f64(v12, v13) > 0.00000011920929;
    self->_visibleTimeRange.beginTime = var0;
    self->_visibleTimeRange.endTime = var1;
    if (*(v28 + 24) == 1)
    {
      [(RCWaveformViewController *)self _setTimeMarkerViewsNeedInitialLayout:1];
    }

    view = [(RCWaveformViewController *)self view];
    v15 = [view viewWithTag:92314];

    if (!v15)
    {
      v15 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v15 setTag:92314];
      v16 = +[UIColor clearColor];
      [v15 setBackgroundColor:v16];

      view2 = [(RCWaveformViewController *)self view];
      [view2 addSubview:v15];
    }

    [v15 setAlpha:1.0];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000AE6B0;
    v23[3] = &unk_10028C360;
    durationCopy = duration;
    v23[4] = self;
    v25 = &v27;
    v18 = v15;
    v24 = v18;
    v19 = objc_retainBlock(v23);
    v20 = v19;
    if (duration <= 0.0)
    {
      (v19[2])(v19);
      if (blockCopy)
      {
        blockCopy[2](blockCopy, 1);
      }
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000AE758;
      v21[3] = &unk_10028AFB8;
      v22 = blockCopy;
      [UIView animateWithDuration:0x20000 delay:v20 options:v21 animations:duration completion:0.0];
    }

    _Block_object_dispose(&v27, 8);
  }
}

- (void)_setSelectedTimeRange:(id)range updateVisibleTimeRange:(BOOL)timeRange updateWaveformViewContentSizeAndOffset:(BOOL)offset notifyDelegate:(BOOL)delegate animationDuration:(double)duration
{
  delegateCopy = delegate;
  offsetCopy = offset;
  timeRangeCopy = timeRange;
  v12 = fmax(range.var0, 0.0);
  if (self->_duration >= range.var1)
  {
    var1 = range.var1;
  }

  else
  {
    var1 = self->_duration;
  }

  p_selectedTimeRange = &self->_selectedTimeRange;
  if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
  {
    p_selectedTimeRange->beginTime = v12;
    p_selectedTimeRange->endTime = var1;
    if (offsetCopy)
    {
      [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];
    }

    if (timeRangeCopy)
    {
      if (self->_isOverview)
      {
        [(RCWaveformViewController *)self updateVisibleTimeRangeToFullDuration];
      }

      else
      {
        [(RCWaveformViewController *)self _visibleTimeRangeForCurrentSelectionTimeRange];
        v16 = v15;
        v18 = v17;
        if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
        {
          [(RCWaveformViewController *)self setVisibleTimeRange:v16 animationDuration:v18, duration];
        }
      }
    }

    [(RCWaveformViewController *)self _updateSelectionOverlayWithAnimationDuration:duration];
    [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
    if (delegateCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained waveformViewController:self didChangeToSelectedTimeRange:{p_selectedTimeRange->beginTime, p_selectedTimeRange->endTime}];
    }

    rendererController = self->_rendererController;

    [(RCWaveformRenderer *)rendererController drawWaveform];
  }
}

- (void)_autoscrollOverlayIfNecessary
{
  beginTimeIndicatorSelectionAffinity = [(RCWaveformSelectionOverlay *)self->_selectionOverlay beginTimeIndicatorSelectionAffinity];
  endTimeIndicatorSelectionAffinity = [(RCWaveformSelectionOverlay *)self->_selectionOverlay endTimeIndicatorSelectionAffinity];
  [(RCWaveformViewController *)self desiredTimeDeltaForVisibleTimeRange];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AEA98;
  v9[3] = &unk_10028C388;
  v9[5] = v5;
  v9[4] = self;
  v6 = objc_retainBlock(v9);
  p_visibleTimeRange = &self->_visibleTimeRange;
  if (((v6[2])(v6, @"[min-marker, max]", beginTimeIndicatorSelectionAffinity, 0, 1, self->_visibleTimeRange.endTime - self->_selectedTimeRange.beginTime) & 1) == 0 && ((v6[2])(v6, @"[min-marker, min]", beginTimeIndicatorSelectionAffinity, 0, 0xFFFFFFFFLL, self->_selectedTimeRange.beginTime - p_visibleTimeRange->beginTime) & 1) == 0 && ((v6[2])(v6, @"[max-marker, max]", endTimeIndicatorSelectionAffinity, 1, 1, self->_visibleTimeRange.endTime - self->_selectedTimeRange.endTime) & 1) == 0 && ((v6[2])(v6, @"[max-marker, min]", endTimeIndicatorSelectionAffinity, 1, 0xFFFFFFFFLL, self->_selectedTimeRange.endTime - p_visibleTimeRange->beginTime) & 1) == 0)
  {
    [(NSTimer *)self->_overlayAutoscrollTimer invalidate];
    overlayAutoscrollTimer = self->_overlayAutoscrollTimer;
    self->_overlayAutoscrollTimer = 0;
  }
}

- (void)_setTimeMarkerViewUpdatesDisabled:(BOOL)disabled
{
  self->_timeMarkerViewsUpdatesDisabled = disabled;
  if (disabled)
  {
    view = [(RCWaveformViewController *)self view];
    v5 = 0.200000003;
  }

  else
  {
    view = self->_timeMarkerView;
    v5 = 1.0;
  }

  timeMarkerViews = self->_timeMarkerViews;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AEE9C;
  v9[3] = &unk_10028C3B0;
  v10 = view;
  v7 = view;
  [(NSMutableArray *)timeMarkerViews enumerateObjectsUsingBlock:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AEF2C;
  v8[3] = &unk_10028A420;
  v8[4] = self;
  *&v8[5] = v5;
  [UIView animateWithDuration:v8 animations:0.5];
}

- (void)_updateBackgroundWaveformHighlight
{
  [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:self->_visibleTimeRange.beginTime];
  v4 = v3;
  [(UIView *)self->_backgroundView bounds];
  v9 = 0.0;
  v10 = 0.0;
  if (v7 > 0.0)
  {
    v11 = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:0.0];
    v10 = v15 - v4;
    v27.origin.x = v11;
    v27.origin.y = v12;
    v27.size.width = v13;
    v27.size.height = v14;
    MinX = CGRectGetMinX(v27);
    if (v10 < MinX)
    {
      v10 = MinX;
    }

    v28.origin.x = v11;
    v28.origin.y = v12;
    v28.size.width = v13;
    v28.size.height = v14;
    MaxX = CGRectGetMaxX(v28);
    if (v10 >= MaxX)
    {
      v10 = MaxX;
    }

    [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:self->_duration];
    v19 = v18;
    v29.origin.x = v11;
    v29.origin.y = v12;
    v29.size.width = v13;
    v29.size.height = v14;
    v20 = CGRectGetMaxX(v29);
    v30.origin.x = v11;
    v30.origin.y = v12;
    v30.size.width = v13;
    v30.size.height = v14;
    v5 = CGRectGetMinX(v30);
    v21 = 0.0;
    if (!self->_capturing)
    {
      v22 = v19 - v4;
      if (v19 - v4 >= v20)
      {
        v22 = v20;
      }

      if (v22 >= v5)
      {
        v5 = v22;
      }

      v21 = v11 + v13 - v5;
    }

    v9 = -v21;
  }

  [(NSLayoutConstraint *)self->_backgroundWaveFormHighlightViewLeftAlignment constant];
  if (v10 != v23)
  {
    [(NSLayoutConstraint *)self->_backgroundWaveFormHighlightViewLeftAlignment setConstant:v10];
  }

  [(NSLayoutConstraint *)self->_backgroundWaveFormHighlightViewRightAlignment constant];
  if (v9 != v24)
  {
    backgroundWaveFormHighlightViewRightAlignment = self->_backgroundWaveFormHighlightViewRightAlignment;

    [(NSLayoutConstraint *)backgroundWaveFormHighlightViewRightAlignment setConstant:v9];
  }
}

- (void)_updateWaveformViewContentSizeAndOffsetToSize:(double)size
{
  view = [(RCWaveformViewController *)self view];
  [view bounds];
  v7 = v6 * 0.5 + size;

  if (self->_isPlayback || self->_isOverview || !self->_selectedTimeRangeEditingEnabled || [(RCWaveformSelectionOverlay *)self->_selectionOverlay isCurrentlyTracking])
  {
    view2 = [(RCWaveformViewController *)self view];
    [view2 bounds];
    v10 = v9;

    if (v7 >= v10)
    {
      v10 = v7;
    }

    p_scrollView = &self->_scrollView;
    [(RCWaveformScrollView *)self->_scrollView bounds];
    [(RCWaveformScrollView *)self->_scrollView setContentSize:v10, v12];
    view3 = [(RCWaveformViewController *)self view];
    [view3 bounds];
    v14 = v13 * 0.5;
    v15 = 0.0;
  }

  else
  {
    [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:self->_selectedTimeRange.beginTime];
    v17 = v16;
    [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:self->_selectedTimeRange.endTime];
    v19 = v18;
    p_scrollView = &self->_scrollView;
    [(RCWaveformScrollView *)self->_scrollView bounds];
    [(RCWaveformScrollView *)self->_scrollView setContentSize:v7, v20];
    view3 = [(RCWaveformViewController *)self view];
    [view3 bounds];
    v14 = v21 * 0.5 - v17;
    v15 = -(size - v19);
  }

  [(RCWaveformScrollView *)*p_scrollView setContentInset:0.0, v14, 0.0, v15];
}

- (void)_updateWaveformViewContentSizeAndOffset
{
  [(RCWaveformRenderer *)self->_rendererController contentWidth];

  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffsetToSize:?];
}

- (void)_updateAnnotationViews
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000AF3F0;
  v2[3] = &unk_10028A3B8;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)fixupScrollPositionToMatchIndicatorPositionTime
{
  if (self->_displayStyle == 1)
  {

    [(RCWaveformViewController *)self _updateCurrentTimeDisplay];
  }

  else
  {
    [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:self->_visibleTimeRange.beginTime withVisibleTimeRange:self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime];
    v4 = v3;
    [(RCWaveformScrollView *)self->_scrollView contentOffsetInPresentationLayer:1];
    if (vabdd_f64(v5, v4) > 0.00000011920929)
    {
      [(RCWaveformScrollView *)self->_scrollView visibleBounds];
      if (v6 > 0.00000011920929)
      {
        [(RCWaveformScrollView *)self->_scrollView setContentOffset:v4, 0.0];
        [(RCWaveformViewController *)self _updateCurrentTimeDisplay];

        [(RCWaveformViewController *)self _updateVisibleAreaWithAnimationDuration:0.0];
      }
    }
  }
}

- (void)_updateVisibleAreaWithAnimationDuration:(double)duration
{
  [(RCWaveformRenderer *)self->_rendererController setVisibleTimeRange:self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime];
  if (self->_displayStyle != 1)
  {
    if (!self->_scrubbing)
    {
      [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:self->_visibleTimeRange.beginTime];
      v6 = RCRoundCoord(v5);
      [(RCWaveformScrollView *)self->_scrollView visibleBounds];
      v10.origin.x = v6;
      v10.origin.y = v9.origin.y;
      v10.size.width = v6;
      v10.size.height = v9.size.height;
      v7 = CGRectIntersectsRect(v9, v10);
      if (duration == 0.0 || !v7)
      {
        [(RCWaveformScrollView *)self->_scrollView setContentOffset:0 animated:v6, 0.0];
      }

      else
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1000AFA08;
        v8[3] = &unk_10028AF68;
        v8[4] = self;
        *&v8[5] = v6;
        v8[6] = 0;
        [UIView animateWithDuration:131076 delay:v8 options:0 animations:duration completion:0.0];
      }
    }

    [(RCWaveformViewController *)self _updateAnnotationViews];
  }
}

- (void)_updateSelectionOverlayWithAnimationDuration:(double)duration
{
  if (!self->_scrubbing || [(RCWaveformViewController *)self _isScrubbingSelectionTimeRange])
  {
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay selectedTimeRange];
    RCTimeRangeDeltaWithUIPrecision();
    if (v5 == 0.0)
    {
      RCTimeRangeMake();
      beginTime = v8;
      endTime = v9;
    }

    else
    {
      beginTime = self->_selectedTimeRange.beginTime;
      endTime = self->_selectedTimeRange.endTime;
    }

    if (RCTimeRangeEqualToTimeRange())
    {
      [(RCWaveformViewController *)self reloadOverlayOffsets];
      [(RCWaveformSelectionOverlay *)self->_selectionOverlay setNeedsLayout];
    }

    else
    {
      [(RCWaveformSelectionOverlay *)self->_selectionOverlay setSelectedTimeRange:beginTime withAnimationDuration:endTime, duration];
    }

    currentTime = -1.0;
    if (self->_currentTimeDisplayOptions == 2)
    {
      currentTime = self->_currentTime;
    }

    selectionOverlay = self->_selectionOverlay;

    [(RCWaveformSelectionOverlay *)selectionOverlay setAssetCurrentTime:currentTime];
  }
}

- (void)_updateCurrentTimeDisplay
{
  if ([(RCWaveformViewController *)self isOverview])
  {
    [(RCWaveformViewController *)self updateVisibleTimeRangeToFullDuration];
    [(RCWaveformViewController *)self _updateSelectionOverlayWithAnimationDuration:0.0];

    [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
  }

  else
  {
    [(RCWaveformViewController *)self desiredTimeDeltaForVisibleTimeRange];
    applicationWaveformRenderer = [(RCWaveformViewController *)self applicationWaveformRenderer];
    v4 = applicationWaveformRenderer;
    if (applicationWaveformRenderer)
    {
      [applicationWaveformRenderer isPlayBarOnlyMode];
    }

    if (self->_isCompactView)
    {
      [(RCWaveformRenderer *)self->_rendererController isLiveWaveform];
    }

    RCTimeRangeMake();
    [(RCWaveformViewController *)self setVisibleTimeRange:?];
  }
}

- (CGRect)_frameForTimeMarkerView:(id)view
{
  rendererController = self->_rendererController;
  viewCopy = view;
  [viewCopy visibleTimeRange];
  [(RCWaveformRenderer *)rendererController horizontalOffsetAtTime:?];
  v7 = RCRoundCoord(v6);
  v8 = self->_rendererController;
  [viewCopy visibleTimeRange];
  v10 = v9;

  [(RCWaveformRenderer *)v8 horizontalOffsetAtTime:v10];
  v12 = RCRoundCoord(v11) - v7;
  if (v12 >= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v14 annotationViewHeight];
  v16 = v15;

  v17 = 0.0;
  v18 = v7;
  v19 = v13;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

- (void)_layoutTimeMarkerViewsForCurrentlyVisibleTimeRange
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000AFDF0;
  v2[3] = &unk_10028A3B8;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)_scrollViewPanGestureRecognized:(id)recognized
{
  if ([recognized state] == 1)
  {
    self->_scrubbing = 1;
  }
}

- (id)rasterizeCurrentTimeRangeIntoImageWithSize:(CGSize)size
{
  rendererController = self->_rendererController;
  [(RCWaveformViewController *)self visibleTimeRange];

  return [RCWaveformRenderer rasterizeTimeRange:"rasterizeTimeRange:imageSize:afterScreenUpdates:" imageSize:0 afterScreenUpdates:?];
}

- (RCWaveformViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RCWaveformZoomingDelegate)zoomingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomingDelegate);

  return WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange
{
  beginTime = self->_visibleTimeRange.beginTime;
  endTime = self->_visibleTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange
{
  beginTime = self->_highlightTimeRange.beginTime;
  endTime = self->_highlightTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange
{
  beginTime = self->_selectedTimeRange.beginTime;
  endTime = self->_selectedTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

@end