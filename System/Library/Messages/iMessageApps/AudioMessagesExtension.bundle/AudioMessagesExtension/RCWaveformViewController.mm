@interface RCWaveformViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_visibleTimeRangeForCurrentSelectionTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)setHighlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeByInsettingVisibleTimeRange:(id)range inset:(double)inset;
- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)waveformSelectionOverlay:(id)overlay willChangeSelectedTimeRange:(id)range isTrackingMin:(BOOL)min isTrackingMax:(BOOL)max;
- (BOOL)_isScrubbingSelectionTimeRange;
- (CGRect)_frameForTimeMarkerView:(id)view;
- (CGRect)waveformRectForLayoutBounds:(CGRect)bounds;
- (RCTimeController)activeTimeController;
- (RCWaveformViewController)initWithOverviewWaveform:(BOOL)waveform duration:(double)duration;
- (RCWaveformViewDelegate)delegate;
- (double)waveformSelectionOverlay:(id)overlay offsetForTime:(double)time;
- (double)waveformSelectionOverlay:(id)overlay timeForOffset:(double)offset;
- (double)waveformSelectionOverlay:(id)overlay willChangeAssetCurrentTime:(double)time isTracking:(BOOL)tracking;
- (void)_autoscrollOverlayIfNecessary;
- (void)_layoutTimeMarkerViewsForCurrentlyVisibleTimeRange;
- (void)_scrollViewPanGestureRecognized:(id)recognized;
- (void)_setSelectedTimeRange:(id)range updateVisibleTimeRange:(BOOL)timeRange updateWaveformViewContentSizeAndOffset:(BOOL)offset notifyDelegate:(BOOL)delegate animationDuration:(double)duration;
- (void)_setTimeMarkerViewUpdatesDisabled:(BOOL)disabled;
- (void)_setVisibleTimeRange:(id)range animationDuration:(double)duration completionBlock:(id)block;
- (void)_updateAnnotationViews;
- (void)_updateBackgroundWaveformHighlight;
- (void)_updateCurrentTimeDisplay;
- (void)_updateSelectionOverlayWithAnimationDuration:(double)duration;
- (void)_updateVisibleAreaWithAnimationDuration:(double)duration;
- (void)_updateWaveformViewContentSizeAndOffset;
- (void)_updateWaveformViewContentSizeAndOffsetToSize:(double)size;
- (void)dealloc;
- (void)enableZooming:(BOOL)zooming;
- (void)fixupScrollPositionToMatchIndicatorPositionTime;
- (void)resetZoomScale;
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
- (void)stopScrolling;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackgroundColor;
- (void)updateColors;
- (void)updateVisibleTimeRangeToFullDuration;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)waveformRenderer:(id)renderer contentWidthDidChange:(double)change;
- (void)waveformSelectionOverlay:(id)overlay didFinishTrackingSelectionBeginTime:(BOOL)time endTime:(BOOL)endTime assetCurrentTime:(BOOL)currentTime;
- (void)waveformSelectionOverlay:(id)overlay willBeginTrackingSelectionBeginTime:(BOOL)time endTime:(BOOL)endTime assetCurrentTime:(BOOL)currentTime;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation RCWaveformViewController

- (RCWaveformViewController)initWithOverviewWaveform:(BOOL)waveform duration:(double)duration
{
  waveformCopy = waveform;
  v18.receiver = self;
  v18.super_class = RCWaveformViewController;
  v6 = [(RCWaveformViewController *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(RCWaveformRenderer);
    rendererController = v6->_rendererController;
    v6->_rendererController = v7;

    [(RCWaveformRenderer *)v6->_rendererController setRendererDelegate:v6];
    v6->_isOverview = waveformCopy;
    if (duration > 0.0 && waveformCopy)
    {
      durationCopy = duration;
    }

    else
    {
      durationCopy = 6.0;
    }

    v6->_visibleTimeRange.beginTime = RCTimeRangeMake(0.0, durationCopy);
    v6->_visibleTimeRange.endTime = v10;
    [(RCWaveformRenderer *)v6->_rendererController setIsOverview:waveformCopy];
    v6->_highlightTimeRange = RCTimeRangeInvalid;
    v6->_currentTimeDisplayOptions = 0;
    v6->_clipTimeMarkersToDuration = 1;
    v11 = objc_opt_new();
    timeMarkerView = v6->_timeMarkerView;
    v6->_timeMarkerView = v11;

    v6->_isCompactView = 1;
    v6->_desiredTimeDeltaForVisibleTimeRange = 6.0;
    if (!v6->_isOverview)
    {
      v13 = 3;
      v14 = [[NSMutableArray alloc] initWithCapacity:3];
      timeMarkerViews = v6->_timeMarkerViews;
      v6->_timeMarkerViews = v14;

      do
      {
        v16 = objc_alloc_init(RCChronologicalAnnotationView);
        [(NSMutableArray *)v6->_timeMarkerViews addObject:v16];

        --v13;
      }

      while (v13);
    }

    [(RCWaveformViewController *)v6 addChildViewController:v6->_rendererController];
    [(RCWaveformRenderer *)v6->_rendererController didMoveToParentViewController:v6];
    v6->_pointsPerSecond = 100.0;
    v6->_pointsPerSecondScale = 1.0;
  }

  return v6;
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

- (void)willMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = RCWaveformViewController;
  [(RCWaveformViewController *)&v7 willMoveToParentViewController:?];
  if (!controller)
  {
    [(RCWaveformViewController *)self setDataSource:0];
    [(RCWaveformRenderer *)self->_rendererController willMoveToParentViewController:0];
    view = [(RCWaveformRenderer *)self->_rendererController view];
    [view removeFromSuperview];

    [(RCWaveformRenderer *)self->_rendererController removeFromParentViewController];
    rendererController = self->_rendererController;
    self->_rendererController = 0;
  }
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
  [(RCWaveformViewController *)self isOverview];
  self->_scrubbingEnabled = 0;
  scrollView = self->_scrollView;

  [(RCWaveformScrollView *)scrollView setScrollEnabled:0];
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
    [(RCWaveformRenderer *)self->_rendererController setIsRecordWaveform:capturingCopy];
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
    self->_editing = editing;
    [(RCWaveformRenderer *)self->_rendererController setIsEditMode:?];
  }
}

- (void)setIsPlayback:(BOOL)playback
{
  self->_isPlayback = playback;
  [(RCWaveformRenderer *)self->_rendererController setIsPlayback:?];

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
    [(RCWaveformRenderer *)self->_rendererController setIsOverview:1];
    [(RCWaveformRenderer *)self->_rendererController setIsCompactView:0];
    p_selectionOverlay = &self->_selectionOverlay;
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setHidden:0];
    [(UIView *)self->_selectionBackgroundView setHidden:0];
    v6 = +[RCRecorderStyleProvider sharedStyleProvider];
    shouldShowOverviewWaveform = [v6 shouldShowOverviewWaveform];

    v8 = 20.0;
    if (!shouldShowOverviewWaveform)
    {
      goto LABEL_11;
    }

    v9 = RCLocalizedFrameworkString(@"AX_OVERVIEW_WAVEFORM");
  }

  else
  {
    v10 = +[RCRecorderStyleProvider sharedStyleProvider];
    shouldShowOverviewWaveform2 = [v10 shouldShowOverviewWaveform];

    if (shouldShowOverviewWaveform2)
    {
      v12 = @"AX_DETAIL_WAVEFORM";
    }

    else
    {
      v12 = @"AX_WAVEFORM";
    }

    v9 = RCLocalizedFrameworkString(v12);
    p_selectionOverlay = &self->_selectionOverlay;
    v8 = 30.0;
  }

  [(RCWaveformSelectionOverlay *)*p_selectionOverlay setAccessibilityLabel:v9];

LABEL_11:
  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setAxSegment:v8];
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
LABEL_14:
        if (!RCTimeRangeEqualToTimeRange(self->_selectedTimeRange.beginTime, self->_selectedTimeRange.endTime, beginTime, endTime))
        {
          [(RCWaveformViewController *)self _setSelectedTimeRange:0 updateVisibleTimeRange:1 updateWaveformViewContentSizeAndOffset:0 notifyDelegate:beginTime animationDuration:endTime, 0.0];
        }

        goto LABEL_16;
      }

      durationCopy = duration;
    }

    else
    {
      if (beginTime < duration)
      {
        if (endTime > duration)
        {
          self->_selectedTimeRange.endTime = duration;
        }

        goto LABEL_14;
      }

      durationCopy = 0.0;
    }

    beginTime = RCTimeRangeMake(durationCopy, duration);
    endTime = v9;
    goto LABEL_14;
  }

LABEL_16:
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
  duration = self->_duration;
  dataSource = [(RCWaveformViewController *)self dataSource];
  [dataSource duration];
  v6 = v5;

  if (duration < v6)
  {
    duration = v6;
  }

  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v7 overviewWaveformMinimumDurationToDisplayWhenRecording];
  v9 = v8;

  isPlayback = [(RCWaveformViewController *)self isPlayback];
  if (duration >= v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = isPlayback;
  }

  if (v11)
  {
    v12 = duration;
  }

  else
  {
    v12 = v9;
  }

  v13 = RCTimeRangeMake(0.0, v12);
  v15 = v14;
  [(RCWaveformViewController *)self setDesiredTimeDeltaForVisibleTimeRange:RCTimeRangeDelta(v13, v14)];

  [(RCWaveformViewController *)self setVisibleTimeRange:v13 animationDuration:v15, 0.0];
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
  if (!RCTimeRangeEqualToTimeRange(self->_highlightTimeRange.beginTime, self->_highlightTimeRange.endTime, range.var0, range.var1))
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

- (void)resetZoomScale
{
  self->_pointsPerSecond = 100.0;
  self->_pointsPerSecondScale = 1.0;
  layoutWidth = self->_layoutWidth;
  [(RCWaveformViewController *)self pointsPerSecond];
  [(RCWaveformViewController *)self setDesiredTimeDeltaForVisibleTimeRange:layoutWidth / v4];
  [(RCWaveformViewController *)self _updateCurrentTimeDisplay];

  [(RCWaveformViewController *)self fixupScrollPositionToMatchIndicatorPositionTime];
}

- (void)scaleWaveform:(id)waveform
{
  waveformCopy = waveform;
  [waveformCopy scale];
  if ([waveformCopy state] == &dword_0 + 1 || objc_msgSend(waveformCopy, "state") == &dword_0 + 2)
  {
    [waveformCopy scale];
    v6 = v5 * self->_pointsPerSecondScale;
    self->_pointsPerSecondScale = v6;
    v7 = 4.0;
    if (v6 > 4.0 || (v7 = 0.01, v6 < 0.01))
    {
      self->_pointsPerSecondScale = v7;
    }

    [waveformCopy setScale:1.0];
    layoutWidth = self->_layoutWidth;
    [(RCWaveformViewController *)self pointsPerSecond];
    [(RCWaveformViewController *)self setDesiredTimeDeltaForVisibleTimeRange:layoutWidth / v9];
    [(RCWaveformViewController *)self pointsPerSecond];
    v11 = 100.0 / v10;
    if (v11 > 2.0)
    {
      v11 = 2.0;
    }

    [(RCWaveformSelectionOverlay *)self->_selectionOverlay setSelectedTimeRangeMinimumDuration:v11];
    [(RCWaveformViewController *)self _updateCurrentTimeDisplay];
    [(RCWaveformViewController *)self fixupScrollPositionToMatchIndicatorPositionTime];
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
  Width = CGRectGetWidth(v24);

  view2 = [(RCWaveformViewController *)self view];
  [view2 frame];
  Height = CGRectGetHeight(v25);

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
    if (RCTimeRangeDeltaWithUIPrecision(v16, v17) < 4.4408921e-16)
    {
      [(RCWaveformViewController *)self fixupScrollPositionToMatchIndicatorPositionTime];
    }

    view3 = [(RCWaveformViewController *)self view];
    [view3 frame];
    v20 = v19;

    v21 = 6.0;
    if (v20 > 0.0)
    {
      [(RCWaveformViewController *)self pointsPerSecond];
      v21 = Width / v22;
    }

    [(RCWaveformViewController *)self setDesiredTimeDeltaForVisibleTimeRange:v21];
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
  [(RCWaveformRenderer *)self->_rendererController setIsCompactView:viewCopy];
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
  rendererController = self->_rendererController;

  [(RCWaveformRenderer *)rendererController setIsPlayBarOnlyMode:onlyCopy];
}

- (void)viewDidLoad
{
  v171.receiver = self;
  v171.super_class = RCWaveformViewController;
  [(RCWaveformViewController *)&v171 viewDidLoad];
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
  panGestureRecognizer = [(RCWaveformScrollView *)self->_scrollView panGestureRecognizer];
  [panGestureRecognizer addTarget:self action:"_scrollViewPanGestureRecognized:"];

  [(RCWaveformScrollView *)self->_scrollView addSubview:self->_timeMarkerView];
  [(UIView *)self->_timeMarkerView setHidden:[(RCWaveformViewController *)self isCompactView]];
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v11 = self->_timeMarkerViews;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v167 objects:v177 count:16];
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

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v167 objects:v177 count:16];
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

  [(RCWaveformViewController *)self updateColors];
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

  [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v60 = self->_backgroundView;
  view6 = [(RCWaveformViewController *)self view];
  v62 = [NSLayoutConstraint constraintWithItem:v60 attribute:1 relatedBy:0 toItem:view6 attribute:1 multiplier:1.0 constant:0.0];

  LODWORD(v63) = 1144750080;
  [v62 setPriority:v63];
  v64 = self->_backgroundView;
  view7 = [(RCWaveformViewController *)self view];
  v66 = [NSLayoutConstraint constraintWithItem:v64 attribute:2 relatedBy:0 toItem:view7 attribute:2 multiplier:1.0 constant:0.0];

  LODWORD(v67) = 1144750080;
  [v66 setPriority:v67];
  v68 = self->_backgroundView;
  view8 = [(RCWaveformViewController *)self view];
  v70 = [NSLayoutConstraint constraintWithItem:v68 attribute:3 relatedBy:0 toItem:view8 attribute:3 multiplier:1.0 constant:v33];

  LODWORD(v71) = 1144750080;
  [v70 setPriority:v71];
  v72 = self->_backgroundView;
  view9 = [(RCWaveformViewController *)self view];
  v74 = [NSLayoutConstraint constraintWithItem:v72 attribute:4 relatedBy:0 toItem:view9 attribute:4 multiplier:1.0 constant:-v33];

  LODWORD(v75) = 1144750080;
  [v74 setPriority:v75];
  v165 = v66;
  v166 = v62;
  v176[0] = v62;
  v176[1] = v66;
  v164 = v74;
  v176[2] = v70;
  v176[3] = v74;
  v76 = [NSArray arrayWithObjects:v176 count:4];
  [NSLayoutConstraint activateConstraints:v76];

  view10 = [(RCWaveformRenderer *)self->_rendererController view];
  [view10 setUserInteractionEnabled:0];

  view11 = [(RCWaveformViewController *)self view];
  view12 = [(RCWaveformRenderer *)self->_rendererController view];
  [view11 addSubview:view12];

  view13 = [(RCWaveformRenderer *)self->_rendererController view];
  [view13 setTranslatesAutoresizingMaskIntoConstraints:0];

  view14 = [(RCWaveformRenderer *)self->_rendererController view];
  view15 = [(RCWaveformViewController *)self view];
  v83 = [NSLayoutConstraint constraintWithItem:view14 attribute:1 relatedBy:0 toItem:view15 attribute:1 multiplier:1.0 constant:0.0];

  LODWORD(v84) = 1144750080;
  [v83 setPriority:v84];
  view16 = [(RCWaveformRenderer *)self->_rendererController view];
  view17 = [(RCWaveformViewController *)self view];
  v87 = [NSLayoutConstraint constraintWithItem:view16 attribute:2 relatedBy:0 toItem:view17 attribute:2 multiplier:1.0 constant:0.0];

  LODWORD(v88) = 1144750080;
  [v87 setPriority:v88];
  view18 = [(RCWaveformRenderer *)self->_rendererController view];
  view19 = [(RCWaveformViewController *)self view];
  v91 = [NSLayoutConstraint constraintWithItem:view18 attribute:3 relatedBy:0 toItem:view19 attribute:3 multiplier:1.0 constant:v33];

  v92 = v91;
  LODWORD(v93) = 1144750080;
  [v91 setPriority:v93];
  view20 = [(RCWaveformRenderer *)self->_rendererController view];
  view21 = [(RCWaveformViewController *)self view];
  v96 = [NSLayoutConstraint constraintWithItem:view20 attribute:4 relatedBy:0 toItem:view21 attribute:4 multiplier:1.0 constant:0.0];
  renderViewBottomInsetConstraint = self->_renderViewBottomInsetConstraint;
  self->_renderViewBottomInsetConstraint = v96;

  [(NSLayoutConstraint *)self->_renderViewBottomInsetConstraint setConstant:-v33];
  LODWORD(v98) = 1144750080;
  [(NSLayoutConstraint *)self->_renderViewBottomInsetConstraint setPriority:v98];
  if (![(RCWaveformViewController *)self isCompactView])
  {
    [(NSLayoutConstraint *)self->_renderViewBottomInsetConstraint constant];
    v100 = v99;
    v101 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v101 annotationViewHeight];
    [(NSLayoutConstraint *)self->_renderViewBottomInsetConstraint setConstant:v100 - v102];
  }

  v175[0] = v83;
  v175[1] = v87;
  v103 = self->_renderViewBottomInsetConstraint;
  v163 = v92;
  v175[2] = v92;
  v175[3] = v103;
  v104 = [NSArray arrayWithObjects:v175 count:4];
  [NSLayoutConstraint activateConstraints:v104];

  view22 = [(RCWaveformViewController *)self view];
  v162 = v87;
  [view22 addSubview:self->_scrollView];

  [(RCWaveformScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v106 = self->_scrollView;
  view23 = [(RCWaveformViewController *)self view];
  v108 = [NSLayoutConstraint constraintWithItem:v106 attribute:1 relatedBy:0 toItem:view23 attribute:1 multiplier:1.0 constant:0.0];

  v109 = v108;
  v161 = v108;
  LODWORD(v110) = 1144750080;
  [v108 setPriority:v110];
  v111 = self->_scrollView;
  view24 = [(RCWaveformViewController *)self view];
  v113 = [NSLayoutConstraint constraintWithItem:v111 attribute:2 relatedBy:0 toItem:view24 attribute:2 multiplier:1.0 constant:0.0];

  v160 = v113;
  LODWORD(v114) = 1144750080;
  [v113 setPriority:v114];
  v115 = self->_scrollView;
  view25 = [(RCWaveformViewController *)self view];
  v117 = [NSLayoutConstraint constraintWithItem:v115 attribute:3 relatedBy:0 toItem:view25 attribute:3 multiplier:1.0 constant:0.0];

  v159 = v117;
  LODWORD(v118) = 1144750080;
  [v117 setPriority:v118];
  v119 = self->_scrollView;
  view26 = [(RCWaveformViewController *)self view];
  v158 = [NSLayoutConstraint constraintWithItem:v119 attribute:4 relatedBy:0 toItem:view26 attribute:4 multiplier:1.0 constant:0.0];

  LODWORD(v121) = 1144750080;
  [v158 setPriority:v121];
  v174[0] = v109;
  v174[1] = v113;
  v174[2] = v117;
  v174[3] = v158;
  v122 = [NSArray arrayWithObjects:v174 count:4];
  [NSLayoutConstraint activateConstraints:v122];

  view27 = [(RCWaveformViewController *)self view];
  [view27 sendSubviewToBack:self->_backgroundView];

  view28 = [(RCWaveformViewController *)self view];
  v157 = v83;
  [view28 insertSubview:self->_backgroundWaveFormHighlightView above:self->_backgroundView];

  [(UIView *)self->_backgroundWaveFormHighlightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v125 = self->_backgroundWaveFormHighlightView;
  view29 = [(RCWaveformViewController *)self view];
  v127 = [NSLayoutConstraint constraintWithItem:v125 attribute:1 relatedBy:0 toItem:view29 attribute:1 multiplier:1.0 constant:0.0];
  backgroundWaveFormHighlightViewLeftAlignment = self->_backgroundWaveFormHighlightViewLeftAlignment;
  self->_backgroundWaveFormHighlightViewLeftAlignment = v127;

  LODWORD(v129) = 1144750080;
  [(NSLayoutConstraint *)self->_backgroundWaveFormHighlightViewLeftAlignment setPriority:v129];
  v130 = self->_backgroundWaveFormHighlightView;
  view30 = [(RCWaveformViewController *)self view];
  v132 = [NSLayoutConstraint constraintWithItem:v130 attribute:2 relatedBy:0 toItem:view30 attribute:2 multiplier:1.0 constant:0.0];
  backgroundWaveFormHighlightViewRightAlignment = self->_backgroundWaveFormHighlightViewRightAlignment;
  self->_backgroundWaveFormHighlightViewRightAlignment = v132;

  LODWORD(v134) = 1144750080;
  [(NSLayoutConstraint *)self->_backgroundWaveFormHighlightViewRightAlignment setPriority:v134];
  v135 = self->_backgroundWaveFormHighlightView;
  view31 = [(RCWaveformViewController *)self view];
  v137 = [NSLayoutConstraint constraintWithItem:v135 attribute:3 relatedBy:0 toItem:view31 attribute:3 multiplier:1.0 constant:v33];

  LODWORD(v138) = 1144750080;
  [v137 setPriority:v138];
  v139 = self->_backgroundWaveFormHighlightView;
  view32 = [(RCWaveformViewController *)self view];
  v141 = [NSLayoutConstraint constraintWithItem:v139 attribute:4 relatedBy:0 toItem:view32 attribute:4 multiplier:1.0 constant:-v33];

  LODWORD(v142) = 1144750080;
  [v141 setPriority:v142];
  v143 = self->_backgroundWaveFormHighlightViewRightAlignment;
  v173[0] = self->_backgroundWaveFormHighlightViewLeftAlignment;
  v173[1] = v143;
  v173[2] = v137;
  v173[3] = v141;
  v144 = [NSArray arrayWithObjects:v173 count:4];
  [NSLayoutConstraint activateConstraints:v144];

  [(UIView *)self->_selectionBackgroundView setHidden:self->_isCompactView];
  view33 = [(RCWaveformViewController *)self view];
  [view33 insertSubview:self->_selectionBackgroundView above:self->_backgroundWaveFormHighlightView];

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setHidden:self->_isCompactView];
  view34 = [(RCWaveformViewController *)self view];
  [view34 addSubview:self->_selectionOverlay];

  [(RCWaveformSelectionOverlay *)self->_selectionOverlay setTranslatesAutoresizingMaskIntoConstraints:0];
  v147 = [NSLayoutConstraint constraintWithItem:self->_selectionOverlay attribute:1 relatedBy:0 toItem:self->_scrollView attribute:1 multiplier:1.0 constant:0.0];
  LODWORD(v148) = 1144750080;
  [v147 setPriority:v148];
  v149 = [NSLayoutConstraint constraintWithItem:self->_selectionOverlay attribute:2 relatedBy:0 toItem:self->_scrollView attribute:2 multiplier:1.0 constant:0.0];
  LODWORD(v150) = 1144750080;
  [v149 setPriority:v150];
  v151 = [NSLayoutConstraint constraintWithItem:self->_selectionOverlay attribute:3 relatedBy:0 toItem:self->_scrollView attribute:3 multiplier:1.0 constant:0.0];
  LODWORD(v152) = 1144750080;
  [v151 setPriority:v152];
  v153 = [NSLayoutConstraint constraintWithItem:self->_selectionOverlay attribute:4 relatedBy:0 toItem:self->_scrollView attribute:4 multiplier:1.0 constant:0.0];
  LODWORD(v154) = 1144750080;
  [v153 setPriority:v154];
  v172[0] = v147;
  v172[1] = v149;
  v172[2] = v151;
  v172[3] = v153;
  v155 = [NSArray arrayWithObjects:v172 count:4];
  [NSLayoutConstraint activateConstraints:v155];

  [(RCWaveformViewController *)self _updateVisibleAreaWithAnimationDuration:0.0];
  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffset];
  [(RCWaveformViewController *)self setScrubbingEnabled:1];
  view35 = [(RCWaveformViewController *)self view];
  [view35 setNeedsLayout];
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
      LOBYTE(isSelectedTimeRangeEditingEnabled) = RCTimeRangeDeltaWithUIPrecision(v4, v5) != 0.0;
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
      desiredTimeDeltaForVisibleTimeRange = self->_desiredTimeDeltaForVisibleTimeRange;
      [(RCWaveformViewController *)self setVisibleTimeRange:RCTimeRangeMake(v9, v9 + desiredTimeDeltaForVisibleTimeRange)];
      if (self->_scrubbing)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = objc_loadWeakRetained(&self->_delegate);
          [v14 waveformViewController:self didScrubToTime:0 finished:v10 + desiredTimeDeltaForVisibleTimeRange * 0.5];
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
  desiredTimeDeltaForVisibleTimeRange = self->_desiredTimeDeltaForVisibleTimeRange;
  [(RCWaveformScrollView *)self->_scrollView bounds:dragging];
  v9 = CGRectGetWidth(v16) * 0.5;
  [(RCWaveformViewController *)self currentTimeIndicatorCoordinate];
  v11 = v9 - v10;
  v12 = desiredTimeDeltaForVisibleTimeRange * -0.5;
  [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:v12];
  v14 = v11 + v13;
  if (x >= v14)
  {
    [(RCWaveformRenderer *)self->_rendererController horizontalOffsetAtTime:self->_duration + v12];
    v14 = v11 + v15;
    if (x <= v14)
    {
      v14 = x;
    }
  }

  offset->x = v14;
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
    self->_overlayAutoscrollBaseDuration = self->_desiredTimeDeltaForVisibleTimeRange;
  }

  if (self->_selectedTimeRangeEditingEnabled && self->_isOverview && !self->_playing && !self->_scrubbing)
  {
    if (!minCopy || maxCopy)
    {
      if (!maxCopy || minCopy)
      {
        if (minCopy && maxCopy)
        {
          MidTime = RCTimeRangeGetMidTime(self->_selectedTimeRange.beginTime, self->_selectedTimeRange.endTime);
          if (self->_currentTime != MidTime)
          {
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v12 = WeakRetained;
            selfCopy2 = self;
            endTime = MidTime;
            goto LABEL_17;
          }
        }
      }

      else if (self->_currentTime != self->_selectedTimeRange.endTime)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v12 = WeakRetained;
        endTime = self->_selectedTimeRange.endTime;
        goto LABEL_16;
      }
    }

    else if (self->_currentTime != self->_selectedTimeRange.beginTime)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v12 = WeakRetained;
      endTime = self->_selectedTimeRange.beginTime;
LABEL_16:
      selfCopy2 = self;
LABEL_17:
      [WeakRetained waveformViewController:selfCopy2 didScrubToTime:1 finished:endTime];
    }
  }

  beginTime = self->_selectedTimeRange.beginTime;
  v16 = self->_selectedTimeRange.endTime;
  result.var1 = v16;
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

- (void)waveformRenderer:(id)renderer contentWidthDidChange:(double)change
{
  [(RCWaveformViewController *)self _updateWaveformViewContentSizeAndOffsetToSize:renderer, change];
  [(RCWaveformViewController *)self _updateSelectionOverlayWithAnimationDuration:0.0];
  [(RCWaveformViewController *)self _updateBackgroundWaveformHighlight];
  if (!self->_isOverview)
  {
    [(RCWaveformViewController *)self _updateCurrentTimeDisplay];

    [(RCWaveformViewController *)self fixupScrollPositionToMatchIndicatorPositionTime];
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
  }
}

- (void)updateColors
{
  traitCollection = [(RCWaveformViewController *)self traitCollection];
  isUserInterfaceStyleDark = [traitCollection isUserInterfaceStyleDark];

  [(RCWaveformViewController *)self updateBackgroundColor];
  subviews = [(UIView *)self->_timeMarkerView subviews];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_247FC;
  v6[3] = &unk_6D888;
  v7 = isUserInterfaceStyleDark;
  [subviews enumerateObjectsUsingBlock:v6];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = RCWaveformViewController;
  changeCopy = change;
  [(RCWaveformViewController *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(RCWaveformViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(RCWaveformViewController *)self updateColors];
    [(RCWaveformRenderer *)self->_rendererController setCalcBlockShouldRefreshAllSlices:1];
  }
}

- (void)updateBackgroundColor
{
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  traitCollection = [(RCWaveformViewController *)self traitCollection];
  isUserInterfaceStyleDark = [traitCollection isUserInterfaceStyleDark];

  if ([(RCWaveformViewController *)self isCompactView]&& ![(RCWaveformViewController *)self isOverview])
  {
    waveformCompactBackgroundColor = [v9 waveformCompactBackgroundColor];
    [(UIView *)self->_backgroundView setBackgroundColor:waveformCompactBackgroundColor];

    waveformCompactHighlightedBackgroundColor = [v9 waveformCompactHighlightedBackgroundColor];
  }

  else
  {
    v5 = [v9 waveformPlaybackBackgroundColor:isUserInterfaceStyleDark];
    [(UIView *)self->_backgroundView setBackgroundColor:v5];

    waveformCompactHighlightedBackgroundColor = [v9 waveformPlaybackHighlightedBackgroundColor:isUserInterfaceStyleDark];
  }

  v8 = waveformCompactHighlightedBackgroundColor;
  [(UIView *)self->_backgroundWaveFormHighlightView setBackgroundColor:waveformCompactHighlightedBackgroundColor];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_visibleTimeRangeForCurrentSelectionTimeRange
{
  if ([(RCWaveformViewController *)self isOverview])
  {
    beginTime = RCTimeRangeMake(0.0, self->_duration);
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
  if (RCTimeRangeDeltaWithUIPrecision(var0, var1) < 2.22044605e-16)
  {
    var1 = var0 + 2.22044605e-16;
  }

  p_visibleTimeRange = &self->_visibleTimeRange;
  if (RCTimeRangeEqualToTimeRange(self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime, var0, var1))
  {
    [(RCWaveformViewController *)self _updateVisibleAreaWithAnimationDuration:0.0];
  }

  else
  {
    v11 = RCTimeRangeDeltaWithUIPrecision(p_visibleTimeRange->beginTime, self->_visibleTimeRange.endTime);
    v12 = RCTimeRangeDeltaWithUIPrecision(var0, var1);
    p_visibleTimeRange->beginTime = var0;
    self->_visibleTimeRange.endTime = var1;
    if (vabdd_f64(v11, v12) > 0.00000011920929)
    {
      [(RCWaveformViewController *)self _setTimeMarkerViewsNeedInitialLayout:1];
    }

    view = [(RCWaveformViewController *)self view];
    v14 = [view viewWithTag:92314];

    if (!v14)
    {
      v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v14 setTag:92314];
      v15 = +[UIColor clearColor];
      [v14 setBackgroundColor:v15];

      view2 = [(RCWaveformViewController *)self view];
      [view2 addSubview:v14];
    }

    [v14 setAlpha:1.0];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_24D40;
    v22[3] = &unk_6D8B0;
    v22[4] = self;
    durationCopy = duration;
    v17 = v14;
    v23 = v17;
    v18 = objc_retainBlock(v22);
    v19 = v18;
    if (duration <= 0.0)
    {
      (v18[2])(v18);
      if (blockCopy)
      {
        blockCopy[2](blockCopy, 1);
      }
    }

    else
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_24D98;
      v20[3] = &unk_6D840;
      v21 = blockCopy;
      [UIView animateWithDuration:0x20000 delay:v19 options:v20 animations:duration completion:0.0];
    }
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
  if (!RCTimeRangeEqualToTimeRange(self->_selectedTimeRange.beginTime, self->_selectedTimeRange.endTime, v12, var1))
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
        if (!RCTimeRangeEqualToTimeRange(v15, v17, self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime))
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
  }
}

- (void)_autoscrollOverlayIfNecessary
{
  beginTimeIndicatorSelectionAffinity = [(RCWaveformSelectionOverlay *)self->_selectionOverlay beginTimeIndicatorSelectionAffinity];
  endTimeIndicatorSelectionAffinity = [(RCWaveformSelectionOverlay *)self->_selectionOverlay endTimeIndicatorSelectionAffinity];
  desiredTimeDeltaForVisibleTimeRange = self->_desiredTimeDeltaForVisibleTimeRange;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_250DC;
  v9[3] = &unk_6D8D8;
  *&v9[5] = desiredTimeDeltaForVisibleTimeRange;
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
  v9[2] = sub_254E0;
  v9[3] = &unk_6D900;
  v10 = view;
  v7 = view;
  [(NSMutableArray *)timeMarkerViews enumerateObjectsUsingBlock:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_25570;
  v8[3] = &unk_6D7C8;
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
  v2[2] = sub_25A34;
  v2[3] = &unk_6D458;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)fixupScrollPositionToMatchIndicatorPositionTime
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
      [(RCWaveformViewController *)self _updateVisibleAreaWithAnimationDuration:0.0];

      [(RCWaveformViewController *)self _updateCurrentTimeDisplay];
    }
  }
}

- (void)_updateVisibleAreaWithAnimationDuration:(double)duration
{
  [(RCWaveformRenderer *)self->_rendererController setVisibleTimeRange:self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime];
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
      v8[2] = sub_26000;
      v8[3] = &unk_6D7A0;
      v8[4] = self;
      *&v8[5] = v6;
      v8[6] = 0;
      [UIView animateWithDuration:131076 delay:v8 options:0 animations:duration completion:0.0];
    }
  }

  [(RCWaveformViewController *)self _updateAnnotationViews];
}

- (void)_updateSelectionOverlayWithAnimationDuration:(double)duration
{
  if (!self->_scrubbing || [(RCWaveformViewController *)self _isScrubbingSelectionTimeRange])
  {
    [(RCWaveformSelectionOverlay *)self->_selectionOverlay selectedTimeRange];
    v6 = v5;
    v8 = v7;
    if (RCTimeRangeDeltaWithUIPrecision(self->_selectedTimeRange.beginTime, self->_selectedTimeRange.endTime) == 0.0)
    {
      beginTime = RCTimeRangeMake(self->_currentTime, self->_currentTime);
      endTime = v11;
    }

    else
    {
      beginTime = self->_selectedTimeRange.beginTime;
      endTime = self->_selectedTimeRange.endTime;
    }

    if (RCTimeRangeEqualToTimeRange(v6, v8, beginTime, endTime))
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
    desiredTimeDeltaForVisibleTimeRange = self->_desiredTimeDeltaForVisibleTimeRange;
    if (self->_isCompactView && [(RCWaveformRenderer *)self->_rendererController isRecordWaveform]&& ![(RCWaveformRenderer *)self->_rendererController isPlayBarOnlyMode])
    {
      currentTime = self->_currentTime;
      v5 = currentTime - desiredTimeDeltaForVisibleTimeRange;
    }

    else
    {
      v4 = self->_currentTime;
      v5 = v4 - desiredTimeDeltaForVisibleTimeRange * 0.5;
      currentTime = desiredTimeDeltaForVisibleTimeRange * 0.5 + v4;
    }

    v7 = RCTimeRangeMake(v5, currentTime);

    [(RCWaveformViewController *)self setVisibleTimeRange:v7];
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
  v2[2] = sub_263B4;
  v2[3] = &unk_6D458;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)_scrollViewPanGestureRecognized:(id)recognized
{
  if ([recognized state] == &dword_0 + 1)
  {
    self->_scrubbing = 1;
  }
}

- (RCWaveformViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

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