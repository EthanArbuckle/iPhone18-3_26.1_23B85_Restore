@interface RCAVWaveformViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)nextPreviewTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)setHighlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange;
- (CGRect)waveformRectForLayoutBounds:(CGRect)bounds;
- (RCAVWaveformViewController)initWithCoder:(id)coder;
- (RCAVWaveformViewController)initWithNibName:(id)name bundle:(id)bundle;
- (RCAVWaveformViewController)initWithWaveformDataSource:(id)source displayStyle:(unint64_t)style isOverview:(BOOL)overview isCompact:(BOOL)compact delegate:(id)delegate;
- (RCAVWaveformViewControllerDelegate)delegate;
- (double)currentTimeIndicatorCoordinate;
- (id)_selectionOverlay;
- (unint64_t)_currentTimeDisplayOptionsIgnoringSelectionOverlayState:(BOOL)state;
- (void)_beginShowingSelectionOverlayAndEnableInsertMode:(BOOL)mode;
- (void)_didUpdateDisplayableTime;
- (void)_endShowingSelectionOverlayWithCompletionBlock:(id)block;
- (void)_setSelectionOverlayEnabled:(BOOL)enabled;
- (void)_setWaveformDataSource:(id)source initialTime:(double)time;
- (void)_updateCurrentTimeForCapturedInputAtTime:(double)time;
- (void)_updateDisplayableTimesWithBlock:(id)block;
- (void)_updateInterfaceForTimeControllerState:(int64_t)state;
- (void)dealloc;
- (void)reloadWaveformDataSource:(id)source withActiveTimeController:(id)controller;
- (void)resetSelectedTimeRangeToFullDuration;
- (void)setActiveTimeController:(id)controller;
- (void)setAutocenterCurrentTimeIndicatorAlways:(BOOL)always;
- (void)setClipsTimeMarkersToDuration:(BOOL)duration;
- (void)setCurrentTime:(double)time;
- (void)setDuration:(double)duration;
- (void)setHighlightTimeRange:(id)range;
- (void)setIsEditMode:(BOOL)mode;
- (void)setMaximumSelectionDuration:(double)duration;
- (void)timeController:(id)controller didChangeCurrentTime:(double)time didChangeDuration:(double)duration;
- (void)timeController:(id)controller didChangeState:(int64_t)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)waveformViewController:(id)controller didChangeToVisibleTimeRange:(id)range;
- (void)waveformViewController:(id)controller didScrubToTime:(double)time finished:(BOOL)finished;
- (void)waveformViewControllerDidEndEditingSelectedTimeRange:(id)range;
@end

@implementation RCAVWaveformViewController

- (RCAVWaveformViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6 = [NSAssertionHandler currentHandler:name];
  [v6 handleFailureInMethod:a2 object:self file:@"RCAVWaveformViewController.m" lineNumber:52 description:@"initWithNibName:bundle: is not the designated initializer"];

  return self;
}

- (RCAVWaveformViewController)initWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"RCAVWaveformViewController.m" lineNumber:58 description:@"this view controller does not support keyed coding.  use the other designated initializer"];

  return [(RCAVWaveformViewController *)self init];
}

- (RCAVWaveformViewController)initWithWaveformDataSource:(id)source displayStyle:(unint64_t)style isOverview:(BOOL)overview isCompact:(BOOL)compact delegate:(id)delegate
{
  compactCopy = compact;
  overviewCopy = overview;
  sourceCopy = source;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = RCAVWaveformViewController;
  v14 = [(RCAVWaveformViewController *)&v28 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    v14->_isOverview = overviewCopy;
    v14->_userInteractionEnabled = 1;
    v14->_autocenterCurrentTimeIndicatorAlways = !v14->_isOverview;
    v14->_clipsTimeMarkersToDuration = 1;
    v14->_currentTimeTracksCapturedEndPoint = 1;
    [sourceCopy duration];
    v15->_duration = v16;
    v17 = [[RCWaveformViewController alloc] initWithDisplayStyle:style isOverview:overviewCopy isCompact:compactCopy duration:v15->_duration];
    waveformViewController = v15->_waveformViewController;
    v15->_waveformViewController = v17;

    [(RCWaveformViewController *)v15->_waveformViewController setCurrentTime:0.0];
    [(RCWaveformViewController *)v15->_waveformViewController setCurrentTimeDisplayOptions:v15->_duration > 0.0];
    [(RCWaveformViewController *)v15->_waveformViewController setDelegate:v15];
    [(RCAVWaveformViewController *)v15 addChildViewController:v15->_waveformViewController];
    [(RCAVWaveformViewController *)v15 _setWaveformDataSource:sourceCopy initialTime:0.0];
    [(RCWaveformViewController *)v15->_waveformViewController didMoveToParentViewController:v15];
    objc_storeWeak(&v15->_delegate, delegateCopy);
    if (v15->_isOverview)
    {
      v19 = [RCHitTestForwardingView alloc];
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      height = [(RCHitTestForwardingView *)v19 initWithFrame:CGRectZero.origin.x, y, width, height];
      leftForwardingView = v15->_leftForwardingView;
      v15->_leftForwardingView = height;

      height2 = [[RCHitTestForwardingView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      rightForwardingView = v15->_rightForwardingView;
      v15->_rightForwardingView = height2;
    }
  }

  return v15;
}

- (void)dealloc
{
  [(RCTimeController *)self->_activeTimeController removeTimeObserver:self];
  waveformViewController = self->_waveformViewController;
  self->_waveformViewController = 0;

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v8 viewDidLoad];
  view = [(RCAVWaveformViewController *)self view];
  waveformViewController = [(RCAVWaveformViewController *)self waveformViewController];
  view2 = [waveformViewController view];
  [view addSubview:view2];

  if (self->_isOverview)
  {
    [(RCHitTestForwardingView *)self->_leftForwardingView setUserInteractionEnabled:1];
    _selectionOverlay = [(RCAVWaveformViewController *)self _selectionOverlay];
    [(RCHitTestForwardingView *)self->_leftForwardingView setTargetView:_selectionOverlay];

    [(RCHitTestForwardingView *)self->_rightForwardingView setUserInteractionEnabled:1];
    _selectionOverlay2 = [(RCAVWaveformViewController *)self _selectionOverlay];
    [(RCHitTestForwardingView *)self->_rightForwardingView setTargetView:_selectionOverlay2];
  }
}

- (void)viewDidLayoutSubviews
{
  waveformViewController = [(RCAVWaveformViewController *)self waveformViewController];
  view = [waveformViewController view];
  view2 = [(RCAVWaveformViewController *)self view];
  [view2 bounds];
  [(RCAVWaveformViewController *)self annotatedWaveformRectForLayoutBounds:?];
  [view setFrame:?];

  v20.receiver = self;
  v20.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v20 viewDidLayoutSubviews];
  if (self->_isOverview)
  {
    view3 = [(RCAVWaveformViewController *)self view];
    [view3 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    view4 = [(RCAVWaveformViewController *)self view];
    superview = [view4 superview];
    [superview frame];
    v18 = v17;

    v19 = (v18 - v12) * 0.5;
    [(RCHitTestForwardingView *)self->_leftForwardingView setFrame:v8 - v19, v10, v19, v14];
    [(RCHitTestForwardingView *)self->_rightForwardingView setFrame:v8 + v12, v10, v19, v14];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v5 viewWillAppear:appear];
  [(RCTimeController *)self->_activeTimeController currentTime];
  [(RCAVWaveformViewController *)self setCurrentTime:?];
  [(RCAVWaveformViewController *)self _updateCurrentTimeForCapturedInputAtTime:self->_currentTime];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005BD0C;
  v4[3] = &unk_10028A3B8;
  v4[4] = self;
  [(RCAVWaveformViewController *)self _updateDisplayableTimesWithBlock:v4];
  [(RCAVWaveformViewController *)self _updateInterfaceForTimeControllerState:[(RCTimeController *)self->_activeTimeController timeControllerState]];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v8 viewDidAppear:appear];
  [(RCTimeController *)self->_activeTimeController addTimeObserver:self];
  if (self->_isOverview)
  {
    view = [(RCAVWaveformViewController *)self view];
    superview = [view superview];
    [superview addSubview:self->_leftForwardingView];

    view2 = [(RCAVWaveformViewController *)self view];
    superview2 = [view2 superview];
    [superview2 addSubview:self->_rightForwardingView];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v4 viewWillDisappear:disappear];
  if (self->_isOverview)
  {
    [(RCHitTestForwardingView *)self->_leftForwardingView removeFromSuperview];
    [(RCHitTestForwardingView *)self->_rightForwardingView removeFromSuperview];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v3 viewDidDisappear:disappear];
}

- (void)reloadWaveformDataSource:(id)source withActiveTimeController:(id)controller
{
  controllerCopy = controller;
  sourceCopy = source;
  [controllerCopy currentTime];
  [(RCAVWaveformViewController *)self _setWaveformDataSource:sourceCopy initialTime:?];

  [(RCAVWaveformViewController *)self setActiveTimeController:controllerCopy];
}

- (void)setActiveTimeController:(id)controller
{
  controllerCopy = controller;
  activeTimeController = self->_activeTimeController;
  if (activeTimeController != controllerCopy)
  {
    v10 = controllerCopy;
    [(RCTimeController *)activeTimeController removeTimeObserver:self];
    objc_storeStrong(&self->_activeTimeController, controller);
    [(RCTimeController *)self->_activeTimeController addTimeObserver:self];
    controllerCopy = v10;
    if (v10)
    {
      [(RCTimeController *)v10 currentTime];
      v8 = v7;
      [(RCAVWaveformViewController *)self currentTime];
      if (v8 != v9)
      {
        [(RCAVWaveformViewController *)self setCurrentTime:v8];
      }

      [(RCAVWaveformViewController *)self _updateInterfaceForTimeControllerState:[(RCTimeController *)self->_activeTimeController timeControllerState]];
      controllerCopy = v10;
    }
  }
}

- (void)setIsEditMode:(BOOL)mode
{
  if (self->_isEditMode != mode)
  {
    modeCopy = mode;
    self->_isEditMode = mode;
    waveformViewController = [(RCAVWaveformViewController *)self waveformViewController];
    [waveformViewController setEditing:modeCopy];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)nextPreviewTimeRange
{
  if (self->_selectionOverlayVisible)
  {
    [(RCAVWaveformViewController *)self selectedTimeRange];
  }

  else
  {
    v2 = RCTimeRangeEverything[0];
    v3 = RCTimeRangeEverything[1];
  }

  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange
{
  [(RCWaveformViewController *)self->_waveformViewController visibleTimeRange];
  result.var1 = v3;
  result.var0 = v2;
  return result;
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
    waveformViewController = self->_waveformViewController;

    [(RCWaveformViewController *)waveformViewController setHighlightTimeRange:var0, var1];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)setHighlightTimeRange
{
  if (self->_waveformViewController)
  {
    [(RCWaveformViewController *)self->_waveformViewController highlightTimeRange];
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

- (void)setCurrentTime:(double)time
{
  if (self->_currentTime != time)
  {
    self->_currentTime = time;
    self->_nextPreviewStartTime = time;
    [(RCAVWaveformViewController *)self _didUpdateDisplayableTime];
    if (self->_didJumpTime)
    {
      [(RCTimeController *)self->_activeTimeController currentRate];
      if (v4 > 0.0)
      {
        self->_didJumpTime = 0;
      }
    }
  }
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    [(RCWaveformViewController *)self->_waveformViewController setDuration:?];

    [(RCAVWaveformViewController *)self _didUpdateDisplayableTime];
  }
}

- (CGRect)waveformRectForLayoutBounds:(CGRect)bounds
{
  [(RCWaveformViewController *)self->_waveformViewController waveformRectForLayoutBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)currentTimeIndicatorCoordinate
{
  if (([(RCAVWaveformViewController *)self _currentTimeDisplayOptionsIgnoringSelectionOverlayState:1]& 1) != 0)
  {
    view = [(RCAVWaveformViewController *)self view];
    [view bounds];
    MidX = CGRectGetMidX(v8);

    return MidX;
  }

  else
  {
    waveformViewController = self->_waveformViewController;

    [(RCWaveformViewController *)waveformViewController currentTimeIndicatorCoordinate];
  }

  return result;
}

- (void)setAutocenterCurrentTimeIndicatorAlways:(BOOL)always
{
  if (self->_autocenterCurrentTimeIndicatorAlways != always)
  {
    self->_autocenterCurrentTimeIndicatorAlways = always;
    waveformViewController = self->_waveformViewController;
    _currentTimeDisplayOptions = [(RCAVWaveformViewController *)self _currentTimeDisplayOptions];

    [(RCWaveformViewController *)waveformViewController setCurrentTimeDisplayOptions:_currentTimeDisplayOptions];
  }
}

- (void)setClipsTimeMarkersToDuration:(BOOL)duration
{
  if (self->_clipsTimeMarkersToDuration != duration)
  {
    self->_clipsTimeMarkersToDuration = duration;
    [(RCWaveformViewController *)self->_waveformViewController setClipTimeMarkersToDuration:?];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange
{
  [(RCWaveformViewController *)self->_waveformViewController selectedTimeRange];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)resetSelectedTimeRangeToFullDuration
{
  [(RCAVWaveformViewController *)self maximumSelectionDuration];
  v4 = v3;
  if (v3 == 0.0)
  {
    [(RCAVWaveformViewController *)self duration];
    v4 = v5;
  }

  if (v4 >= 0.0)
  {
    if ([(RCAVWaveformViewController *)self isViewLoaded])
    {
      view = [(RCAVWaveformViewController *)self view];
      [view window];
    }

    waveformViewController = [(RCAVWaveformViewController *)self waveformViewController];
    [waveformViewController duration];
    RCTimeRangeMake();
    [waveformViewController setSelectedTimeRange:? animationDuration:?];
  }
}

- (void)setMaximumSelectionDuration:(double)duration
{
  if (self->_maximumSelectionDuration != duration)
  {
    self->_maximumSelectionDuration = duration;
    [(RCWaveformViewController *)self->_waveformViewController setMaximumSelectionDuration:?];
  }
}

- (void)waveformViewController:(id)controller didScrubToTime:(double)time finished:(BOOL)finished
{
  finishedCopy = finished;
  if (UIAccessibilityIsVoiceOverRunning() && (CFAbsoluteTimeGetCurrent() - *&qword_1002D7028 > 2.0 || finishedCopy))
  {
    v9 = UIAccessibilityAnnouncementNotification;
    v10 = UIAXTimeStringForDuration();
    UIAccessibilityPostNotification(v9, v10);

    qword_1002D7028 = CFAbsoluteTimeGetCurrent();
  }

  activeTimeController = self->_activeTimeController;

  [(RCTimeController *)activeTimeController setTargetTime:time];
}

- (void)waveformViewControllerDidEndEditingSelectedTimeRange:(id)range
{
  [(RCAVWaveformViewController *)self selectedTimeRange];
  v5 = v4;
  v7 = v6;
  [(RCTimeController *)self->_activeTimeController currentTime];
  v9 = v8;
  if ((RCTimeRangeContainsTime() & 1) == 0)
  {
    RCTimeRangeConstrainTime();
    v9 = v10;
    [(RCTimeController *)self->_activeTimeController setTargetTime:?];
  }

  self->_nextPreviewStartTime = v9;
  activeTimeController = self->_activeTimeController;

  [(RCTimeController *)activeTimeController setAllowedTimeRange:v5, v7];
}

- (void)waveformViewController:(id)controller didChangeToVisibleTimeRange:(id)range
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained audioWaveformControllerDidChangeAVTimes:self];
}

- (void)timeController:(id)controller didChangeState:(int64_t)state
{
  if (!state)
  {
    [controller currentTime];
    self->_nextPreviewStartTime = v6;
  }

  [(RCAVWaveformViewController *)self _updateInterfaceForTimeControllerState:state];
}

- (void)timeController:(id)controller didChangeCurrentTime:(double)time didChangeDuration:(double)duration
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005C82C;
  v5[3] = &unk_10028AF68;
  v5[4] = self;
  *&v5[5] = duration;
  *&v5[6] = time;
  [(RCAVWaveformViewController *)self _updateDisplayableTimesWithBlock:v5];
}

- (void)_setWaveformDataSource:(id)source initialTime:(double)time
{
  sourceCopy = source;
  if (self->_waveformDataSource != sourceCopy)
  {
    objc_storeStrong(&self->_waveformDataSource, source);
    waveformDataSource = self->_waveformDataSource;
    if (waveformDataSource)
    {
      [(RCWaveformDataSource *)waveformDataSource beginLoading];
    }

    [(RCWaveformViewController *)self->_waveformViewController setDataSource:sourceCopy];
    [(RCWaveformViewController *)self->_waveformViewController setCurrentTime:time];
    waveformViewController = self->_waveformViewController;
    [(RCWaveformDataSource *)sourceCopy duration];
    [(RCWaveformViewController *)waveformViewController setDuration:?];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005C9A0;
    v11[3] = &unk_10028A420;
    v11[4] = self;
    *&v11[5] = time;
    [(RCAVWaveformViewController *)self _updateDisplayableTimesWithBlock:v11];
    self->_nextPreviewStartTime = time;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained audioWaveformControllerDidChangeWaveformDataSource:self];
  }
}

- (void)_updateCurrentTimeForCapturedInputAtTime:(double)time
{
  if (self->_currentTimeTracksCapturedEndPoint)
  {
    [(RCAVWaveformViewController *)self setCurrentTime:time];
  }
}

- (void)_didUpdateDisplayableTime
{
  if (self->_batchUpdatingDisplayableTimesCount < 1)
  {
    [(RCAVWaveformViewController *)self currentTime];
    v4 = v3;
    [(RCAVWaveformViewController *)self visibleTimeRange];
    RCTimeRangeGetMidTime();
    if (v4 > v5)
    {
      [(RCWaveformViewController *)self->_waveformViewController setCurrentTimeDisplayOptions:[(RCAVWaveformViewController *)self _currentTimeDisplayOptions]];
    }

    [(RCWaveformViewController *)self->_waveformViewController setCurrentTime:v4];
    waveformViewController = self->_waveformViewController;
    [(RCAVWaveformViewController *)self duration];
    [(RCWaveformViewController *)waveformViewController setDuration:?];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained audioWaveformControllerDidChangeAVTimes:self];

    if (self->_isOverview)
    {
      v8 = self->_waveformViewController;

      [(RCWaveformViewController *)v8 updateVisibleTimeRangeToFullDuration];
    }
  }

  else
  {
    self->_needsUpdateDisplayableTime = 1;
  }
}

- (void)_updateDisplayableTimesWithBlock:(id)block
{
  ++self->_batchUpdatingDisplayableTimesCount;
  (*(block + 2))(block, a2);
  v4 = self->_batchUpdatingDisplayableTimesCount - 1;
  self->_batchUpdatingDisplayableTimesCount = v4;
  if (!v4 && self->_needsUpdateDisplayableTime)
  {

    [(RCAVWaveformViewController *)self _didUpdateDisplayableTime];
  }
}

- (void)_setSelectionOverlayEnabled:(BOOL)enabled
{
  if (self->_showingSelectionOverlayEnabled != enabled)
  {
    self->_showingSelectionOverlayEnabled = enabled;
    [(RCAVWaveformViewController *)self _didUpdateDisplayableTime];
  }
}

- (unint64_t)_currentTimeDisplayOptionsIgnoringSelectionOverlayState:(BOOL)state
{
  if (self->_selectionOverlayVisible && !state)
  {
    return 2;
  }

  else
  {
    return self->_autocenterCurrentTimeIndicatorAlways;
  }
}

- (void)_updateInterfaceForTimeControllerState:(int64_t)state
{
  waveformDataSource = state == 1;
  waveformViewController = [(RCAVWaveformViewController *)self waveformViewController];
  [waveformViewController setPlaying:waveformDataSource];

  if (state == 2)
  {
    waveformDataSource = [(RCAVWaveformViewController *)self waveformDataSource];
    supportsLiveInput = [waveformDataSource supportsLiveInput];
  }

  else
  {
    supportsLiveInput = 0;
  }

  waveformViewController2 = [(RCAVWaveformViewController *)self waveformViewController];
  [waveformViewController2 setCapturing:supportsLiveInput];

  if (state == 2)
  {
  }

  selectionOverlayVisible = self->_selectionOverlayVisible;
  waveformViewController3 = [(RCAVWaveformViewController *)self waveformViewController];
  [waveformViewController3 setSelectedTimeRangeEditingEnabled:selectionOverlayVisible];

  waveformViewController4 = [(RCAVWaveformViewController *)self waveformViewController];
  [waveformViewController4 setScrubbingEnabled:(state - 3) < 0xFFFFFFFFFFFFFFFELL];

  waveformViewController5 = [(RCAVWaveformViewController *)self waveformViewController];
  -[RCAVWaveformViewController _setSelectionOverlayEnabled:](self, "_setSelectionOverlayEnabled:", [waveformViewController5 showPlayBarOnly]);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained audioWaveformControllerDidChangeAVState:self];
}

- (void)_beginShowingSelectionOverlayAndEnableInsertMode:(BOOL)mode
{
  [(RCAVWaveformViewController *)self maximumSelectionDuration];
  if (v5 == 0.0)
  {
    [(RCAVWaveformViewController *)self duration];
  }

  if (v5 >= 0.0)
  {
    [(RCAVWaveformViewController *)self resetSelectedTimeRangeToFullDuration];
    v6 = 0.0;
    if ([(RCAVWaveformViewController *)self isViewLoaded])
    {
      view = [(RCAVWaveformViewController *)self view];
      window = [view window];
      if (window)
      {
        v6 = 0.5;
      }

      else
      {
        v6 = 0.0;
      }
    }

    waveformViewController = [(RCAVWaveformViewController *)self waveformViewController];
    self->_selectionOverlayVisible = 1;
    [(RCAVWaveformViewController *)self currentTime];
    self->_nextPreviewStartTime = v10;
    [waveformViewController visibleTimeRange];
    RCTimeRangeDeltaWithUIPrecision();
    self->_defaultVisibleDuration = v11;
    [waveformViewController setCurrentTimeDisplayOptions:{-[RCAVWaveformViewController _currentTimeDisplayOptions](self, "_currentTimeDisplayOptions")}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005CF18;
    v14[3] = &unk_10028A988;
    v15 = waveformViewController;
    modeCopy = mode;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005CF5C;
    v13[3] = &unk_10028AF90;
    v13[4] = self;
    v12 = waveformViewController;
    [UIView animateWithDuration:0x20000 delay:v14 options:v13 animations:v6 completion:0.0];
  }
}

- (void)_endShowingSelectionOverlayWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = 0.0;
  if ([(RCAVWaveformViewController *)self isViewLoaded])
  {
    view = [(RCAVWaveformViewController *)self view];
    window = [view window];
    if (window)
    {
      v5 = 0.5;
    }

    else
    {
      v5 = 0.0;
    }
  }

  waveformViewController = [(RCAVWaveformViewController *)self waveformViewController];
  [(RCAVWaveformViewController *)self nextPreviewStartTime];
  v10 = v9;
  self->_selectionOverlayVisible = 0;
  [waveformViewController setCurrentTimeDisplayOptions:{-[RCAVWaveformViewController _currentTimeDisplayOptions](self, "_currentTimeDisplayOptions")}];
  [waveformViewController setSelectionOverlayShouldUseInsertMode:0];
  [waveformViewController setSelectedTimeRangeEditingEnabled:0];
  [waveformViewController setScrubbingEnabled:1];
  activeTimeController = [(RCAVWaveformViewController *)self activeTimeController];
  [activeTimeController currentDuration];
  RCTimeRangeMake();
  [activeTimeController setAllowedTimeRange:?];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005D1D0;
  v16[3] = &unk_10028AF68;
  v17 = waveformViewController;
  v18 = v10;
  v19 = v5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005D22C;
  v14[3] = &unk_10028AFB8;
  v15 = blockCopy;
  v12 = blockCopy;
  v13 = waveformViewController;
  [UIView animateWithDuration:0x20000 delay:v16 options:v14 animations:v5 completion:0.0];
}

- (id)_selectionOverlay
{
  waveformViewController = [(RCAVWaveformViewController *)self waveformViewController];
  v3 = [waveformViewController valueForKey:@"_selectionOverlay"];

  return v3;
}

- (RCAVWaveformViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange
{
  beginTime = self->_highlightTimeRange.beginTime;
  endTime = self->_highlightTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

@end