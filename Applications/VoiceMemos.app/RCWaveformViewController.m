@interface RCWaveformViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_visibleTimeRangeForCurrentSelectionTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)setHighlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeByInsettingVisibleTimeRange:(id)a3 inset:(double)a4;
- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)waveformSelectionOverlay:(id)a3 willChangeSelectedTimeRange:(id)a4 isTrackingMin:(BOOL)a5 isTrackingMax:(BOOL)a6;
- (BOOL)_isScrubbingSelectionTimeRange;
- (BOOL)isZooming;
- (BOOL)waveformSelectionOverlayNeedsExplicitAnimations;
- (CGRect)_frameForTimeMarkerView:(id)a3;
- (CGRect)waveformRectForLayoutBounds:(CGRect)a3;
- (RCTimeController)activeTimeController;
- (RCWaveformViewController)initWithDisplayStyle:(unint64_t)a3 isOverview:(BOOL)a4 isCompact:(BOOL)a5 duration:(double)a6;
- (RCWaveformViewDelegate)delegate;
- (RCWaveformZoomingDelegate)zoomingDelegate;
- (double)pointsPerSecond;
- (double)waveformSelectionOverlay:(id)a3 offsetForTime:(double)a4;
- (double)waveformSelectionOverlay:(id)a3 timeForOffset:(double)a4;
- (double)waveformSelectionOverlay:(id)a3 willChangeAssetCurrentTime:(double)a4 isTracking:(BOOL)a5;
- (id)applicationWaveformRenderer;
- (id)rasterizeCurrentTimeRangeIntoImageWithSize:(CGSize)a3;
- (void)_addWaveformViewToHostingView:(id)a3;
- (void)_autoscrollOverlayIfNecessary;
- (void)_layoutTimeMarkerViewsForCurrentlyVisibleTimeRange;
- (void)_refreshRenderController;
- (void)_scrollViewPanGestureRecognized:(id)a3;
- (void)_setSelectedTimeRange:(id)a3 updateVisibleTimeRange:(BOOL)a4 updateWaveformViewContentSizeAndOffset:(BOOL)a5 notifyDelegate:(BOOL)a6 animationDuration:(double)a7;
- (void)_setTimeMarkerViewUpdatesDisabled:(BOOL)a3;
- (void)_setVisibleTimeRange:(id)a3 animationDuration:(double)a4 completionBlock:(id)a5;
- (void)_setupViewsForApplicationDisplayStyle;
- (void)_setupViewsForWaveformOnlyDisplayStyle;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateAnnotationViews;
- (void)_updateBackgroundWaveformHighlight;
- (void)_updateCurrentTimeDisplay;
- (void)_updateSelectionOverlayWithAnimationDuration:(double)a3;
- (void)_updateVisibleAreaWithAnimationDuration:(double)a3;
- (void)_updateWaveformViewContentSizeAndOffset;
- (void)_updateWaveformViewContentSizeAndOffsetToSize:(double)a3;
- (void)addAuxWaveformViewController:(id)a3;
- (void)bounceWaveform;
- (void)bringAuxWaveformViewControllerToFront:(id)a3;
- (void)dealloc;
- (void)enableZooming:(BOOL)a3;
- (void)fixupScrollPositionToMatchIndicatorPositionTime;
- (void)scaleWaveform:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setCapturing:(BOOL)a3;
- (void)setClipTimeMarkersToDuration:(BOOL)a3;
- (void)setCurrentTimeDisplayOptions:(unint64_t)a3;
- (void)setDataSource:(id)a3;
- (void)setDesiredTimeDeltaForVisibleTimeRange:(double)a3;
- (void)setDuration:(double)a3;
- (void)setEditing:(BOOL)a3;
- (void)setHighlightTimeRange:(id)a3;
- (void)setIsCompactView:(BOOL)a3;
- (void)setIsOverview:(BOOL)a3;
- (void)setIsPlayback:(BOOL)a3;
- (void)setMaximumSelectionDuration:(double)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setScrubbingEnabled:(BOOL)a3;
- (void)setSelectedTimeRangeEditingEnabled:(BOOL)a3;
- (void)setShowPlayBarOnly:(BOOL)a3;
- (void)setVisibleTimeRange:(id)a3;
- (void)setZoomScale:(double)a3;
- (void)stopScrolling;
- (void)updateBackgroundColor;
- (void)updateColorStatesSelected:(BOOL)a3 muted:(BOOL)a4 trimMode:(BOOL)a5;
- (void)updateVisibleTimeRangeToFullDuration;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)waveformRenderer:(id)a3 contentWidthDidChange:(double)a4;
- (void)waveformSelectionOverlay:(id)a3 didFinishTrackingSelectionBeginTime:(BOOL)a4 endTime:(BOOL)a5 assetCurrentTime:(BOOL)a6;
- (void)waveformSelectionOverlay:(id)a3 willBeginTrackingSelectionBeginTime:(BOOL)a4 endTime:(BOOL)a5 assetCurrentTime:(BOOL)a6;
@end

@implementation RCWaveformViewController

- (RCWaveformViewController)initWithDisplayStyle:(unint64_t)a3 isOverview:(BOOL)a4 isCompact:(BOOL)a5 duration:(double)a6
{
  v7 = a4;
  v24.receiver = self;
  v24.super_class = RCWaveformViewController;
  v9 = [(RCWaveformViewController *)&v24 init];
  v10 = v9;
  if (v9)
  {
    v9->_displayStyle = a3;
    v11 = objc_alloc_init(RCApplicationWaveformRenderer);
    rendererController = v10->_rendererController;
    v10->_rendererController = &v11->super;

    [(RCWaveformRenderer *)v10->_rendererController setRendererDelegate:v10];
    v13 = objc_opt_new();
    waveformHostingView = v10->_waveformHostingView;
    v10->_waveformHostingView = v13;

    v10->_isOverview = v7;
    RCTimeRangeMake();
    v10->_visibleTimeRange.beginTime = v15;
    v10->_visibleTimeRange.endTime = v16;
    [(RCWaveformRenderer *)v10->_rendererController setDisplayMode:!v7];
    v10->_highlightTimeRange = RCTimeRangeInvalid;
    v10->_currentTimeDisplayOptions = 0;
    v10->_clipTimeMarkersToDuration = 1;
    v17 = objc_opt_new();
    timeMarkerView = v10->_timeMarkerView;
    v10->_timeMarkerView = v17;

    v10->_isCompactView = a5;
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

- (void)setDataSource:(id)a3
{
  v4 = a3;
  [(RCWaveformViewController *)self stopScrolling];
  [(RCWaveformRenderer *)self->_rendererController setDataSource:v4];

  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];

  [(RCWaveformViewController *)self _updateAnnotationViews];
}

- (void)setScrubbingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(RCWaveformViewController *)self isOverview])
  {
    self->_scrubbingEnabled = 0;
    scrollView = self->_scrollView;

    [(RCWaveformScrollView *)scrollView setScrollEnabled:0];
  }

  else
  {
    self->_scrubbingEnabled = v3;
    [(RCWaveformScrollView *)self->_scrollView setScrollEnabled:v3];
    scrubbingEnabled = self->_scrubbingEnabled;

    [(RCWaveformViewController *)self enableZooming:scrubbingEnabled];
  }
}

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    self->_playing = a3;
    [(RCWaveformRenderer *)self->_rendererController setFrequentUpdatesSegmentUpdatesExpectedHint:0];
    [(RCWaveformViewController *)self _updateSelectionOverlayWithAnimationDuration:0.0];

    [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
  }
}

- (void)setCapturing:(BOOL)a3
{
  if (self->_capturing != a3)
  {
    v4 = a3;
    self->_capturing = a3;
    [(RCWaveformRenderer *)self->_rendererController setCalcBlockShouldRefreshAllSlices:1];
    [(RCWaveformRenderer *)self->_rendererController setIsLiveWaveform:v4];
    [(RCWaveformRenderer *)self->_rendererController setFrequentUpdatesSegmentUpdatesExpectedHint:v4];
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setIsRecording:v4];
    [(RCWaveformViewController *)self _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];

    [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    v4 = a3;
    self->_editing = a3;
    v5 = [(RCWaveformViewController *)self applicationWaveformRenderer];
    if (v5)
    {
      v6 = v5;
      [v5 setIsEditMode:v4];
      v5 = v6;
    }
  }
}

- (void)setIsPlayback:(BOOL)a3
{
  v3 = a3;
  self->_isPlayback = a3;
  v5 = [(RCWaveformViewController *)self applicationWaveformRenderer];
  if (v5)
  {
    [v5 setIsPlayback:v3];
  }

  [(RCWaveformViewController *)self updateBackgroundColor];
}

- (void)setCurrentTimeDisplayOptions:(unint64_t)a3
{
  if (self->_currentTimeDisplayOptions != a3)
  {
    self->_currentTimeDisplayOptions = a3;
    [(RCWaveformViewController *)self _updateCurrentTimeDisplay];
  }
}

- (void)setClipTimeMarkersToDuration:(BOOL)a3
{
  if (self->_clipTimeMarkersToDuration != a3)
  {
    self->_clipTimeMarkersToDuration = a3;
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

- (void)updateColorStatesSelected:(BOOL)a3 muted:(BOOL)a4 trimMode:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(RCWaveformRenderer *)self->_rendererController setSelected:a3];
  [(RCWaveformRenderer *)self->_rendererController setMuted:v6];
  [(RCWaveformRenderer *)self->_rendererController setTrimMode:v5];
  rendererController = self->_rendererController;

  [(RCWaveformRenderer *)rendererController drawWaveform];
}

- (CGRect)waveformRectForLayoutBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setIsOverview:(BOOL)a3
{
  v3 = a3;
  if (self->_isOverview != a3)
  {
    self->_isOverview = a3;
  }

  if (a3)
  {
    [(RCWaveformRenderer *)self->_rendererController setDisplayMode:0];
    v5 = [(RCWaveformViewController *)self applicationWaveformRenderer];
    v6 = v5;
    if (v5)
    {
      [v5 setIsCompactView:0];
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

  [(RCWaveformSelectionOverlay *)selectionOverlay setIsOverView:v3];
}

- (void)setDuration:(double)a3
{
  if (self->_duration == a3)
  {
    return;
  }

  self->_duration = a3;
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setAssetDuration:a3];
  if ([(RCWaveformSelectionOverlay *)self->_selectionOverlay isEditingEnabled])
  {
    beginTime = self->_selectedTimeRange.beginTime;
    endTime = self->_selectedTimeRange.endTime;
    if (endTime <= beginTime)
    {
      if (endTime <= a3 && beginTime <= a3)
      {
LABEL_12:
        if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
        {
          [(RCWaveformViewController *)self _setSelectedTimeRange:0 updateVisibleTimeRange:1 updateWaveformViewContentSizeAndOffset:0 notifyDelegate:beginTime animationDuration:endTime, 0.0];
        }

        goto LABEL_14;
      }
    }

    else if (beginTime < a3)
    {
      if (endTime > a3)
      {
        self->_selectedTimeRange.endTime = a3;
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
  v3 = [(RCWaveformViewController *)self dataSource];
  [v3 duration];

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

- (void)setVisibleTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(RCWaveformViewController *)self isOverview])
  {

    [(RCWaveformViewController *)self updateVisibleTimeRangeToFullDuration];
  }

  else
  {

    [(RCWaveformViewController *)self setVisibleTimeRange:var0 animationDuration:var1, 0.0];
  }
}

- (void)setHighlightTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
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

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeByInsettingVisibleTimeRange:(id)a3 inset:(double)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  [(RCWaveformRenderer *)self->_rendererController pointsPerSecondWithVisibleTimeRange:?];
  v8 = 1.0 / v7 * a4;
  v9 = var0 - v8;
  v10 = var1 + v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (void)setMaximumSelectionDuration:(double)a3
{
  self->_maximumSelectionDuration = a3;
  [(RCWaveformViewController *)self maximumSelectionDuration];
  selectionOverlay = self->_selectionOverlay;

  [(RCWaveformSelectionOverlay *)selectionOverlay setSelectedTimeRangeMaximumDuration:?];
}

- (void)setSelectedTimeRangeEditingEnabled:(BOOL)a3
{
  v3 = a3;
  self->_selectedTimeRangeEditingEnabled = a3;
  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setInsertMode:[(RCWaveformViewController *)self selectionOverlayShouldUseInsertMode]];
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setEditingEnabled:v3];

  [(RCWaveformViewController *)self _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
}

- (void)bounceWaveform
{
  v2 = [(RCWaveformRenderer *)self->_rendererController view];
  v3 = [v2 layer];

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

  [v3 addAnimation:v12 forKey:0];
}

- (void)addAuxWaveformViewController:(id)a3
{
  v4 = a3;
  [(RCWaveformViewController *)self addChildViewController:v4];
  [v4 didMoveToParentViewController:self];
  v5 = [v4 view];

  [(RCWaveformViewController *)self _addWaveformViewToHostingView:v5];
}

- (void)bringAuxWaveformViewControllerToFront:(id)a3
{
  v7 = a3;
  if (!v7 || ([(RCWaveformRenderer *)v7 parentViewController], v4 = objc_claimAutoreleasedReturnValue(), v4, rendererController = v7, v4 != self))
  {
    rendererController = self->_rendererController;
  }

  v6 = [(RCWaveformRenderer *)rendererController view];
  [(UIView *)self->_waveformHostingView bringSubviewToFront:v6];
}

- (void)setZoomScale:(double)a3
{
  v4 = fmin(a3, 4.0);
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

- (void)scaleWaveform:(id)a3
{
  v9 = a3;
  [v9 scale];
  if ([v9 state] == 1 || objc_msgSend(v9, "state") == 2)
  {
    [(RCWaveformViewController *)self zoomScale];
    v6 = v5;
    [v9 scale];
    v8 = v6 * v7;
    [v9 setScale:1.0];
    [(RCWaveformViewController *)self setZoomScale:v8];
  }
}

- (void)enableZooming:(BOOL)a3
{
  v3 = a3;
  if (![(RCWaveformViewController *)self isOverview])
  {
    pinchGesture = self->_pinchGesture;
    if (!pinchGesture)
    {
      [(RCWaveformScrollView *)self->_scrollView setBouncesZoom:0];
      [(RCWaveformScrollView *)self->_scrollView setMaximumZoomScale:2.0];
      [(RCWaveformScrollView *)self->_scrollView setMinimumZoomScale:0.5];
      v6 = [(RCWaveformScrollView *)self->_scrollView pinchGestureRecognizer];
      v7 = self->_pinchGesture;
      self->_pinchGesture = v6;

      [(UIPinchGestureRecognizer *)self->_pinchGesture addTarget:self action:"scaleWaveform:"];
      pinchGesture = self->_pinchGesture;
    }

    [(UIPinchGestureRecognizer *)pinchGesture setEnabled:v3];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(RCWaveformViewController *)self view];
  [v3 frame];
  Width = CGRectGetWidth(v23);

  v5 = [(RCWaveformViewController *)self view];
  [v5 frame];
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

    v17 = [(RCWaveformViewController *)self view];
    [v17 frame];
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

- (void)setIsCompactView:(BOOL)a3
{
  v3 = a3;
  self->_isCompactView = a3;
  [(UIView *)self->_timeMarkerView setHidden:?];
  v5 = v3 && !self->_showPlayBarOnly;
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setHidden:v5];
  [(UIView *)self->_selectionBackgroundView setHidden:v3];
  [(UIView *)self->_backgroundWaveFormHighlightView setHidden:v3];
  v7 = [(RCWaveformViewController *)self applicationWaveformRenderer];
  if (v7)
  {
    [v7 setIsCompactView:v3];
  }

  [(RCWaveformViewController *)self updateBackgroundColor];
  v6 = [(RCWaveformViewController *)self view];
  [v6 setNeedsLayout];
}

- (void)setShowPlayBarOnly:(BOOL)a3
{
  v3 = a3;
  self->_showPlayBarOnly = a3;
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setPlayBarOnly:?];
  if (self->_isCompactView && v3)
  {
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setHidden:0];
  }

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setSelectionMode:v3];
  v6 = [(RCWaveformViewController *)self applicationWaveformRenderer];
  if (v6)
  {
    v7 = v6;
    [v6 setIsPlayBarOnlyMode:v3];
    v6 = v7;
  }
}

- (void)_addWaveformViewToHostingView:(id)a3
{
  v4 = a3;
  [v4 setUserInteractionEnabled:0];
  [(UIView *)self->_waveformHostingView addSubview:v4];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = objc_opt_new();
  v5 = [(UIView *)self->_waveformHostingView leadingAnchor];
  v6 = [v4 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v17 addObject:v7];

  v8 = [(UIView *)self->_waveformHostingView trailingAnchor];
  v9 = [v4 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v17 addObject:v10];

  v11 = [(UIView *)self->_waveformHostingView topAnchor];
  v12 = [v4 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v17 addObject:v13];

  v14 = [(UIView *)self->_waveformHostingView bottomAnchor];
  v15 = [v4 bottomAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  [v17 addObject:v16];

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_setupViewsForWaveformOnlyDisplayStyle
{
  v21 = [(RCWaveformRenderer *)self->_rendererController view];
  [v21 setUserInteractionEnabled:0];
  v3 = [(RCWaveformViewController *)self view];
  [v3 addSubview:v21];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_new();
  v5 = [(RCWaveformViewController *)self view];
  v6 = [v5 leadingAnchor];
  v7 = [v21 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v4 addObject:v8];

  v9 = [(RCWaveformViewController *)self view];
  v10 = [v9 trailingAnchor];
  v11 = [v21 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v4 addObject:v12];

  v13 = [(RCWaveformViewController *)self view];
  v14 = [v13 topAnchor];
  v15 = [v21 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v4 addObject:v16];

  v17 = [(RCWaveformViewController *)self view];
  v18 = [v17 bottomAnchor];
  v19 = [v21 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v4 addObject:v20];

  [NSLayoutConstraint activateConstraints:v4];
}

- (void)_setupViewsForApplicationDisplayStyle
{
  v3 = [RCWaveformScrollView alloc];
  v4 = [(RCWaveformViewController *)self view];
  [v4 bounds];
  v5 = [(RCWaveformScrollView *)v3 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  [(RCWaveformScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
  [(RCWaveformScrollView *)self->_scrollView setDirectionalLockEnabled:1];
  v7 = +[UIColor clearColor];
  [(RCWaveformScrollView *)self->_scrollView setBackgroundColor:v7];

  [(RCWaveformScrollView *)self->_scrollView setBounces:1];
  v8 = [(RCWaveformViewController *)self view];
  [v8 bounds];
  [(RCWaveformScrollView *)self->_scrollView setContentInset:0.0, v9 * 0.5, 0.0, 0.0];

  [(RCWaveformScrollView *)self->_scrollView setDelegate:self];
  [(RCWaveformScrollView *)self->_scrollView setOpaque:0];
  [(RCWaveformScrollView *)self->_scrollView setScrollEnabled:1];
  [(RCWaveformScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(RCWaveformScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  objc_storeWeak(&self->_zoomingDelegate, self->_scrollView);
  v10 = [(RCWaveformScrollView *)self->_scrollView panGestureRecognizer];
  [v10 addTarget:self action:"_scrollViewPanGestureRecognized:"];

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
  v26 = [(RCWaveformSelectionOverlay *)v24 initWithDelegate:self height:v25 selectionAreaInsets:UIEdgeInsetsZero.top, left, bottom, right];
  selectionOverlay = self->_selectionOverlay;
  self->_selectionOverlay = v26;

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setSelectedTimeRangeMinimumDuration:1.0];
  v28 = [(RCWaveformViewController *)self isOverview];
  v29 = self->_selectionOverlay;
  if (v28)
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

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setEnableTimeTrackingInView:v28];
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
    v43 = [(UIView *)self->_backgroundView layer];
    [v43 setCornerRadius:v42];

    v44 = [(UIView *)self->_backgroundView layer];
    [v44 setMasksToBounds:1];

    v45 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v45 overviewWaveformCornerRadius];
    v47 = v46;
    v48 = [(UIView *)self->_backgroundWaveFormHighlightView layer];
    [v48 setCornerRadius:v47];

    v49 = [(UIView *)self->_backgroundWaveFormHighlightView layer];
    [v49 setMasksToBounds:1];

    v50 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v50 overviewWaveformCornerRadius];
    v52 = v51;
    v53 = [(RCWaveformRenderer *)self->_rendererController view];
    v54 = [v53 layer];
    [v54 setCornerRadius:v52];

    v55 = [(RCWaveformRenderer *)self->_rendererController view];
    v56 = [v55 layer];
    [v56 setMasksToBounds:1];
  }

  v57 = [(RCWaveformViewController *)self view];
  [v57 addSubview:self->_backgroundView];

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
  v64 = [(RCWaveformViewController *)self view];
  v65 = [NSLayoutConstraint constraintWithItem:v63 attribute:1 relatedBy:0 toItem:v64 attribute:1 multiplier:1.0 constant:0.0];

  v66 = v65;
  v166 = v65;
  LODWORD(v67) = 1144750080;
  [v65 setPriority:v67];
  v68 = self->_backgroundView;
  v69 = [(RCWaveformViewController *)self view];
  v70 = [NSLayoutConstraint constraintWithItem:v68 attribute:2 relatedBy:0 toItem:v69 attribute:2 multiplier:1.0 constant:0.0];

  v71 = v70;
  v165 = v70;
  LODWORD(v72) = 1144750080;
  [v70 setPriority:v72];
  v73 = self->_backgroundView;
  v74 = [(RCWaveformViewController *)self view];
  v75 = [NSLayoutConstraint constraintWithItem:v73 attribute:3 relatedBy:0 toItem:v74 attribute:3 multiplier:1.0 constant:v33];

  v164 = v75;
  LODWORD(v76) = 1144750080;
  [v75 setPriority:v76];
  v77 = self->_backgroundView;
  v78 = [(RCWaveformViewController *)self view];
  v79 = [NSLayoutConstraint constraintWithItem:v77 attribute:4 relatedBy:0 toItem:v78 attribute:4 multiplier:1.0 constant:v60];
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
  v84 = [(RCWaveformViewController *)self view];
  [v84 addSubview:self->_waveformHostingView];

  [(UIView *)self->_waveformHostingView setTranslatesAutoresizingMaskIntoConstraints:0];
  waveformHostingView = self->_waveformHostingView;
  v86 = [(RCWaveformViewController *)self view];
  v87 = [NSLayoutConstraint constraintWithItem:waveformHostingView attribute:1 relatedBy:0 toItem:v86 attribute:1 multiplier:1.0 constant:0.0];

  v163 = v87;
  LODWORD(v88) = 1144750080;
  [v87 setPriority:v88];
  v89 = self->_waveformHostingView;
  v90 = [(RCWaveformViewController *)self view];
  v91 = [NSLayoutConstraint constraintWithItem:v89 attribute:2 relatedBy:0 toItem:v90 attribute:2 multiplier:1.0 constant:0.0];

  v162 = v91;
  LODWORD(v92) = 1144750080;
  [v91 setPriority:v92];
  v93 = self->_waveformHostingView;
  v94 = [(RCWaveformViewController *)self view];
  v95 = [NSLayoutConstraint constraintWithItem:v93 attribute:3 relatedBy:0 toItem:v94 attribute:3 multiplier:1.0 constant:v33];

  v161 = v95;
  LODWORD(v96) = 1144750080;
  [v95 setPriority:v96];
  v97 = self->_waveformHostingView;
  v98 = [(RCWaveformViewController *)self view];
  v99 = [NSLayoutConstraint constraintWithItem:v97 attribute:4 relatedBy:0 toItem:v98 attribute:4 multiplier:1.0 constant:0.0];
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

  v104 = [(RCWaveformRenderer *)self->_rendererController view];
  [(RCWaveformViewController *)self _addWaveformViewToHostingView:v104];

  v105 = [(RCWaveformViewController *)self view];
  [v105 addSubview:self->_scrollView];

  [(RCWaveformScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v106 = self->_scrollView;
  v107 = [(RCWaveformViewController *)self view];
  v108 = [NSLayoutConstraint constraintWithItem:v106 attribute:1 relatedBy:0 toItem:v107 attribute:1 multiplier:1.0 constant:0.0];

  v109 = v108;
  v160 = v108;
  LODWORD(v110) = 1144750080;
  [v108 setPriority:v110];
  v111 = self->_scrollView;
  v112 = [(RCWaveformViewController *)self view];
  v113 = [NSLayoutConstraint constraintWithItem:v111 attribute:2 relatedBy:0 toItem:v112 attribute:2 multiplier:1.0 constant:0.0];

  LODWORD(v114) = 1144750080;
  [v113 setPriority:v114];
  v115 = self->_scrollView;
  v116 = [(RCWaveformViewController *)self view];
  v117 = [NSLayoutConstraint constraintWithItem:v115 attribute:3 relatedBy:0 toItem:v116 attribute:3 multiplier:1.0 constant:0.0];

  LODWORD(v118) = 1144750080;
  [v117 setPriority:v118];
  v119 = self->_scrollView;
  v120 = [(RCWaveformViewController *)self view];
  v159 = [NSLayoutConstraint constraintWithItem:v119 attribute:4 relatedBy:0 toItem:v120 attribute:4 multiplier:1.0 constant:0.0];

  LODWORD(v121) = 1144750080;
  [v159 setPriority:v121];
  v173[0] = v109;
  v173[1] = v113;
  v173[2] = v117;
  v173[3] = v159;
  v122 = [NSArray arrayWithObjects:v173 count:4];
  [NSLayoutConstraint activateConstraints:v122];

  v123 = [(RCWaveformViewController *)self view];
  [v123 sendSubviewToBack:self->_backgroundView];

  v124 = [(RCWaveformViewController *)self view];
  [v124 insertSubview:self->_backgroundWaveFormHighlightView aboveSubview:self->_backgroundView];

  [(UIView *)self->_backgroundWaveFormHighlightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v125 = self->_backgroundWaveFormHighlightView;
  v126 = [(RCWaveformViewController *)self view];
  v127 = [NSLayoutConstraint constraintWithItem:v125 attribute:1 relatedBy:0 toItem:v126 attribute:1 multiplier:1.0 constant:0.0];
  backgroundWaveFormHighlightViewLeftAlignment = self->_backgroundWaveFormHighlightViewLeftAlignment;
  self->_backgroundWaveFormHighlightViewLeftAlignment = v127;

  LODWORD(v129) = 1144750080;
  [(NSLayoutConstraint *)self->_backgroundWaveFormHighlightViewLeftAlignment setPriority:v129];
  v130 = self->_backgroundWaveFormHighlightView;
  v131 = [(RCWaveformViewController *)self view];
  v132 = [NSLayoutConstraint constraintWithItem:v130 attribute:2 relatedBy:0 toItem:v131 attribute:2 multiplier:1.0 constant:0.0];
  backgroundWaveFormHighlightViewRightAlignment = self->_backgroundWaveFormHighlightViewRightAlignment;
  self->_backgroundWaveFormHighlightViewRightAlignment = v132;

  LODWORD(v134) = 1144750080;
  [(NSLayoutConstraint *)self->_backgroundWaveFormHighlightViewRightAlignment setPriority:v134];
  v135 = self->_backgroundWaveFormHighlightView;
  v136 = [(RCWaveformViewController *)self view];
  v137 = [NSLayoutConstraint constraintWithItem:v135 attribute:3 relatedBy:0 toItem:v136 attribute:3 multiplier:1.0 constant:v33];

  LODWORD(v138) = 1144750080;
  [v137 setPriority:v138];
  v139 = self->_backgroundWaveFormHighlightView;
  v140 = [(RCWaveformViewController *)self view];
  v141 = [NSLayoutConstraint constraintWithItem:v139 attribute:4 relatedBy:0 toItem:v140 attribute:4 multiplier:1.0 constant:v60];
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
  v147 = [(RCWaveformViewController *)self view];
  [v147 insertSubview:self->_selectionBackgroundView aboveSubview:self->_backgroundWaveFormHighlightView];

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setHidden:self->_isCompactView];
  v148 = [(RCWaveformViewController *)self view];
  [v148 addSubview:self->_selectionOverlay];

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

  v158 = [(RCWaveformViewController *)self view];
  [v158 bringSubviewToFront:self->_selectionOverlay];

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
  v3 = [(RCWaveformViewController *)self view];
  [v3 setNeedsLayout];

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
    v3 = [(RCWaveformViewController *)self isSelectedTimeRangeEditingEnabled];
    if (v3)
    {
      [(RCWaveformViewController *)self selectedTimeRange];
      RCTimeRangeDeltaWithUIPrecision();
      LOBYTE(v3) = v4 != 0.0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)scrollViewDidScroll:(id)a3
{
  v16 = a3;
  v4 = [v16 isZooming];
  v5 = v16;
  if ((v4 & 1) == 0)
  {
    v6 = v16;
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

    v5 = v16;
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a5->x;
  [(RCWaveformViewController *)self desiredTimeDeltaForVisibleTimeRange:a3];
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

  a5->x = v15;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
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

- (void)waveformSelectionOverlay:(id)a3 willBeginTrackingSelectionBeginTime:(BOOL)a4 endTime:(BOOL)a5 assetCurrentTime:(BOOL)a6
{
  if (a4 || a5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained waveformViewControllerWillBeginEditingSelectedTimeRange:self];
  }
}

- (void)waveformSelectionOverlay:(id)a3 didFinishTrackingSelectionBeginTime:(BOOL)a4 endTime:(BOOL)a5 assetCurrentTime:(BOOL)a6
{
  v6 = a5;
  [(NSTimer *)self->_overlayAutoscrollTimer invalidate:a3];
  overlayAutoscrollTimer = self->_overlayAutoscrollTimer;
  self->_overlayAutoscrollTimer = 0;

  if (a4 || v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained waveformViewControllerDidEndEditingSelectedTimeRange:self];
  }

  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)waveformSelectionOverlay:(id)a3 willChangeSelectedTimeRange:(id)a4 isTrackingMin:(BOOL)a5 isTrackingMax:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  [(RCWaveformViewController *)self _setSelectedTimeRange:0 updateVisibleTimeRange:0 updateWaveformViewContentSizeAndOffset:1 notifyDelegate:a4.var0 animationDuration:a4.var1, 0.0];
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
    if (!v7 || v6)
    {
      if (!v6 || v7)
      {
        if (v7 && v6)
        {
          RCTimeRangeGetMidTime();
          v19 = v18;
          if (self->_currentTime != v18)
          {
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v13 = WeakRetained;
            v15 = self;
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
      v15 = self;
LABEL_17:
      [WeakRetained waveformViewController:v15 didScrubToTime:1 finished:endTime];
    }
  }

  beginTime = self->_selectedTimeRange.beginTime;
  v17 = self->_selectedTimeRange.endTime;
  result.var1 = v17;
  result.var0 = beginTime;
  return result;
}

- (double)waveformSelectionOverlay:(id)a3 willChangeAssetCurrentTime:(double)a4 isTracking:(BOOL)a5
{
  if (self->_selectedTimeRangeEditingEnabled)
  {
    v7 = a3;
    [v7 selectedTimeRange];
    v9 = v8;
    [v7 selectedTimeRange];
    v11 = v10;

    if (v11 <= a4)
    {
      v12 = v11;
    }

    else
    {
      v12 = a4;
    }

    if (v12 >= v9)
    {
      a4 = v12;
    }

    else
    {
      a4 = v9;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformViewController:self didScrubToTime:0 finished:a4];

  return a4;
}

- (double)waveformSelectionOverlay:(id)a3 offsetForTime:(double)a4
{
  [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:a3, self->_visibleTimeRange.beginTime];
  v7 = v6;
  [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:a4];
  return v8 - v7;
}

- (double)waveformSelectionOverlay:(id)a3 timeForOffset:(double)a4
{
  [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:a3, self->_visibleTimeRange.beginTime];
  rendererController = self->_rendererController;
  v8 = v7 + a4;

  [(RCWaveformRenderer *)rendererController timeAtHorizontalOffset:v8];
  return result;
}

- (BOOL)waveformSelectionOverlayNeedsExplicitAnimations
{
  v2 = [(RCWaveformViewController *)self splitViewController];
  v3 = [v2 isTransitioningBetweenVisibleColumnStates];

  return v3;
}

- (BOOL)isZooming
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomingDelegate);
  v3 = [WeakRetained isZooming];

  return v3;
}

- (void)waveformRenderer:(id)a3 contentWidthDidChange:(double)a4
{
  v6 = a3;
  if (self->_displayStyle != 1)
  {
    v7 = v6;
    [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffsetToSize:a4];
    [(RCWaveformViewController *)self _updateSelectionOverlayWithAnimationDuration:0.0];
    [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
    v6 = v7;
    if (!self->_isOverview)
    {
      [(RCWaveformViewController *)self _updateCurrentTimeDisplay];
      [(RCWaveformViewController *)self fixupScrollPositionToMatchIndicatorPositionTime];
      v6 = v7;
    }
  }
}

- (RCTimeController)activeTimeController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained activeTimeController];

  return v3;
}

- (void)setDesiredTimeDeltaForVisibleTimeRange:(double)a3
{
  if (a3 <= 0.0)
  {
    a3 = 6.0;
  }

  if (self->_desiredTimeDeltaForVisibleTimeRange != a3)
  {
    self->_desiredTimeDeltaForVisibleTimeRange = a3;
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

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(RCWaveformViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
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
    v9 = [(RCWaveformViewController *)self view];
    [v9 setBackgroundColor:0];
  }

  else
  {
    v9 = +[RCRecorderStyleProvider sharedStyleProvider];
    v3 = [v9 timelinePlaybackBackgroundColor];
    v4 = [(RCWaveformViewController *)self view];
    [v4 setBackgroundColor:v3];

    if ([(RCWaveformViewController *)self isCompactView]&& ![(RCWaveformViewController *)self isOverview])
    {
      v7 = [v9 waveformCompactBackgroundColor];
      [(UIView *)self->_backgroundView setBackgroundColor:v7];

      v6 = [v9 waveformCompactHighlightedBackgroundColor];
    }

    else
    {
      v5 = [v9 waveformPlaybackBackgroundColor];
      [(UIView *)self->_backgroundView setBackgroundColor:v5];

      v6 = [v9 waveformPlaybackHighlightedBackgroundColor];
    }

    v8 = v6;
    [(UIView *)self->_backgroundWaveFormHighlightView setBackgroundColor:v6];
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

- (void)_setVisibleTimeRange:(id)a3 animationDuration:(double)a4 completionBlock:(id)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a5;
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

    v14 = [(RCWaveformViewController *)self view];
    v15 = [v14 viewWithTag:92314];

    if (!v15)
    {
      v15 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v15 setTag:92314];
      v16 = +[UIColor clearColor];
      [v15 setBackgroundColor:v16];

      v17 = [(RCWaveformViewController *)self view];
      [v17 addSubview:v15];
    }

    [v15 setAlpha:1.0];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000AE6B0;
    v23[3] = &unk_10028C360;
    v26 = a4;
    v23[4] = self;
    v25 = &v27;
    v18 = v15;
    v24 = v18;
    v19 = objc_retainBlock(v23);
    v20 = v19;
    if (a4 <= 0.0)
    {
      (v19[2])(v19);
      if (v9)
      {
        v9[2](v9, 1);
      }
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000AE758;
      v21[3] = &unk_10028AFB8;
      v22 = v9;
      [UIView animateWithDuration:0x20000 delay:v20 options:v21 animations:a4 completion:0.0];
    }

    _Block_object_dispose(&v27, 8);
  }
}

- (void)_setSelectedTimeRange:(id)a3 updateVisibleTimeRange:(BOOL)a4 updateWaveformViewContentSizeAndOffset:(BOOL)a5 notifyDelegate:(BOOL)a6 animationDuration:(double)a7
{
  v7 = a6;
  v8 = a5;
  v10 = a4;
  v12 = fmax(a3.var0, 0.0);
  if (self->_duration >= a3.var1)
  {
    var1 = a3.var1;
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
    if (v8)
    {
      [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];
    }

    if (v10)
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
          [(RCWaveformViewController *)self setVisibleTimeRange:v16 animationDuration:v18, a7];
        }
      }
    }

    [(RCWaveformViewController *)self _updateSelectionOverlayWithAnimationDuration:a7];
    [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
    if (v7)
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
  v3 = [(RCWaveformSelectionOverlay *)self->_selectionOverlay beginTimeIndicatorSelectionAffinity];
  v4 = [(RCWaveformSelectionOverlay *)self->_selectionOverlay endTimeIndicatorSelectionAffinity];
  [(RCWaveformViewController *)self desiredTimeDeltaForVisibleTimeRange];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AEA98;
  v9[3] = &unk_10028C388;
  v9[5] = v5;
  v9[4] = self;
  v6 = objc_retainBlock(v9);
  p_visibleTimeRange = &self->_visibleTimeRange;
  if (((v6[2])(v6, @"[min-marker, max]", v3, 0, 1, self->_visibleTimeRange.endTime - self->_selectedTimeRange.beginTime) & 1) == 0 && ((v6[2])(v6, @"[min-marker, min]", v3, 0, 0xFFFFFFFFLL, self->_selectedTimeRange.beginTime - p_visibleTimeRange->beginTime) & 1) == 0 && ((v6[2])(v6, @"[max-marker, max]", v4, 1, 1, self->_visibleTimeRange.endTime - self->_selectedTimeRange.endTime) & 1) == 0 && ((v6[2])(v6, @"[max-marker, min]", v4, 1, 0xFFFFFFFFLL, self->_selectedTimeRange.endTime - p_visibleTimeRange->beginTime) & 1) == 0)
  {
    [(NSTimer *)self->_overlayAutoscrollTimer invalidate];
    overlayAutoscrollTimer = self->_overlayAutoscrollTimer;
    self->_overlayAutoscrollTimer = 0;
  }
}

- (void)_setTimeMarkerViewUpdatesDisabled:(BOOL)a3
{
  self->_timeMarkerViewsUpdatesDisabled = a3;
  if (a3)
  {
    v4 = [(RCWaveformViewController *)self view];
    v5 = 0.200000003;
  }

  else
  {
    v4 = self->_timeMarkerView;
    v5 = 1.0;
  }

  timeMarkerViews = self->_timeMarkerViews;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AEE9C;
  v9[3] = &unk_10028C3B0;
  v10 = v4;
  v7 = v4;
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

- (void)_updateWaveformViewContentSizeAndOffsetToSize:(double)a3
{
  v5 = [(RCWaveformViewController *)self view];
  [v5 bounds];
  v7 = v6 * 0.5 + a3;

  if (self->_isPlayback || self->_isOverview || !self->_selectedTimeRangeEditingEnabled || [(RCWaveformSelectionOverlay *)self->_selectionOverlay isCurrentlyTracking])
  {
    v8 = [(RCWaveformViewController *)self view];
    [v8 bounds];
    v10 = v9;

    if (v7 >= v10)
    {
      v10 = v7;
    }

    p_scrollView = &self->_scrollView;
    [(RCWaveformScrollView *)self->_scrollView bounds];
    [(RCWaveformScrollView *)self->_scrollView setContentSize:v10, v12];
    v22 = [(RCWaveformViewController *)self view];
    [v22 bounds];
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
    v22 = [(RCWaveformViewController *)self view];
    [v22 bounds];
    v14 = v21 * 0.5 - v17;
    v15 = -(a3 - v19);
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

- (void)_updateVisibleAreaWithAnimationDuration:(double)a3
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
      if (a3 == 0.0 || !v7)
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
        [UIView animateWithDuration:131076 delay:v8 options:0 animations:a3 completion:0.0];
      }
    }

    [(RCWaveformViewController *)self _updateAnnotationViews];
  }
}

- (void)_updateSelectionOverlayWithAnimationDuration:(double)a3
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
      [(RCWaveformSelectionOverlay *)self->_selectionOverlay setSelectedTimeRange:beginTime withAnimationDuration:endTime, a3];
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
    v3 = [(RCWaveformViewController *)self applicationWaveformRenderer];
    v4 = v3;
    if (v3)
    {
      [v3 isPlayBarOnlyMode];
    }

    if (self->_isCompactView)
    {
      [(RCWaveformRenderer *)self->_rendererController isLiveWaveform];
    }

    RCTimeRangeMake();
    [(RCWaveformViewController *)self setVisibleTimeRange:?];
  }
}

- (CGRect)_frameForTimeMarkerView:(id)a3
{
  rendererController = self->_rendererController;
  v5 = a3;
  [v5 visibleTimeRange];
  [(RCWaveformRenderer *)rendererController horizontalOffsetAtTime:?];
  v7 = RCRoundCoord(v6);
  v8 = self->_rendererController;
  [v5 visibleTimeRange];
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

- (void)_scrollViewPanGestureRecognized:(id)a3
{
  if ([a3 state] == 1)
  {
    self->_scrubbing = 1;
  }
}

- (id)rasterizeCurrentTimeRangeIntoImageWithSize:(CGSize)a3
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