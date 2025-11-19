@interface RCAVWaveformViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)nextPreviewTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)setHighlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange;
- (CGRect)waveformRectForLayoutBounds:(CGRect)a3;
- (RCAVWaveformViewController)initWithCoder:(id)a3;
- (RCAVWaveformViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (RCAVWaveformViewController)initWithWaveformDataSource:(id)a3 displayStyle:(unint64_t)a4 isOverview:(BOOL)a5 isCompact:(BOOL)a6 delegate:(id)a7;
- (RCAVWaveformViewControllerDelegate)delegate;
- (double)currentTimeIndicatorCoordinate;
- (id)_selectionOverlay;
- (unint64_t)_currentTimeDisplayOptionsIgnoringSelectionOverlayState:(BOOL)a3;
- (void)_beginShowingSelectionOverlayAndEnableInsertMode:(BOOL)a3;
- (void)_didUpdateDisplayableTime;
- (void)_endShowingSelectionOverlayWithCompletionBlock:(id)a3;
- (void)_setSelectionOverlayEnabled:(BOOL)a3;
- (void)_setWaveformDataSource:(id)a3 initialTime:(double)a4;
- (void)_updateCurrentTimeForCapturedInputAtTime:(double)a3;
- (void)_updateDisplayableTimesWithBlock:(id)a3;
- (void)_updateInterfaceForTimeControllerState:(int64_t)a3;
- (void)dealloc;
- (void)reloadWaveformDataSource:(id)a3 withActiveTimeController:(id)a4;
- (void)resetSelectedTimeRangeToFullDuration;
- (void)setActiveTimeController:(id)a3;
- (void)setAutocenterCurrentTimeIndicatorAlways:(BOOL)a3;
- (void)setClipsTimeMarkersToDuration:(BOOL)a3;
- (void)setCurrentTime:(double)a3;
- (void)setDuration:(double)a3;
- (void)setHighlightTimeRange:(id)a3;
- (void)setIsEditMode:(BOOL)a3;
- (void)setMaximumSelectionDuration:(double)a3;
- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4 didChangeDuration:(double)a5;
- (void)timeController:(id)a3 didChangeState:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)waveformViewController:(id)a3 didChangeToVisibleTimeRange:(id)a4;
- (void)waveformViewController:(id)a3 didScrubToTime:(double)a4 finished:(BOOL)a5;
- (void)waveformViewControllerDidEndEditingSelectedTimeRange:(id)a3;
@end

@implementation RCAVWaveformViewController

- (RCAVWaveformViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  [v6 handleFailureInMethod:a2 object:self file:@"RCAVWaveformViewController.m" lineNumber:52 description:@"initWithNibName:bundle: is not the designated initializer"];

  return self;
}

- (RCAVWaveformViewController)initWithCoder:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"RCAVWaveformViewController.m" lineNumber:58 description:@"this view controller does not support keyed coding.  use the other designated initializer"];

  return [(RCAVWaveformViewController *)self init];
}

- (RCAVWaveformViewController)initWithWaveformDataSource:(id)a3 displayStyle:(unint64_t)a4 isOverview:(BOOL)a5 isCompact:(BOOL)a6 delegate:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a7;
  v28.receiver = self;
  v28.super_class = RCAVWaveformViewController;
  v14 = [(RCAVWaveformViewController *)&v28 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    v14->_isOverview = v9;
    v14->_userInteractionEnabled = 1;
    v14->_autocenterCurrentTimeIndicatorAlways = !v14->_isOverview;
    v14->_clipsTimeMarkersToDuration = 1;
    v14->_currentTimeTracksCapturedEndPoint = 1;
    [v12 duration];
    v15->_duration = v16;
    v17 = [[RCWaveformViewController alloc] initWithDisplayStyle:a4 isOverview:v9 isCompact:v8 duration:v15->_duration];
    waveformViewController = v15->_waveformViewController;
    v15->_waveformViewController = v17;

    [(RCWaveformViewController *)v15->_waveformViewController setCurrentTime:0.0];
    [(RCWaveformViewController *)v15->_waveformViewController setCurrentTimeDisplayOptions:v15->_duration > 0.0];
    [(RCWaveformViewController *)v15->_waveformViewController setDelegate:v15];
    [(RCAVWaveformViewController *)v15 addChildViewController:v15->_waveformViewController];
    [(RCAVWaveformViewController *)v15 _setWaveformDataSource:v12 initialTime:0.0];
    [(RCWaveformViewController *)v15->_waveformViewController didMoveToParentViewController:v15];
    objc_storeWeak(&v15->_delegate, v13);
    if (v15->_isOverview)
    {
      v19 = [RCHitTestForwardingView alloc];
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v23 = [(RCHitTestForwardingView *)v19 initWithFrame:CGRectZero.origin.x, y, width, height];
      leftForwardingView = v15->_leftForwardingView;
      v15->_leftForwardingView = v23;

      v25 = [[RCHitTestForwardingView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      rightForwardingView = v15->_rightForwardingView;
      v15->_rightForwardingView = v25;
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
  v3 = [(RCAVWaveformViewController *)self view];
  v4 = [(RCAVWaveformViewController *)self waveformViewController];
  v5 = [v4 view];
  [v3 addSubview:v5];

  if (self->_isOverview)
  {
    [(RCHitTestForwardingView *)self->_leftForwardingView setUserInteractionEnabled:1];
    v6 = [(RCAVWaveformViewController *)self _selectionOverlay];
    [(RCHitTestForwardingView *)self->_leftForwardingView setTargetView:v6];

    [(RCHitTestForwardingView *)self->_rightForwardingView setUserInteractionEnabled:1];
    v7 = [(RCAVWaveformViewController *)self _selectionOverlay];
    [(RCHitTestForwardingView *)self->_rightForwardingView setTargetView:v7];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(RCAVWaveformViewController *)self waveformViewController];
  v4 = [v3 view];
  v5 = [(RCAVWaveformViewController *)self view];
  [v5 bounds];
  [(RCAVWaveformViewController *)self annotatedWaveformRectForLayoutBounds:?];
  [v4 setFrame:?];

  v20.receiver = self;
  v20.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v20 viewDidLayoutSubviews];
  if (self->_isOverview)
  {
    v6 = [(RCAVWaveformViewController *)self view];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(RCAVWaveformViewController *)self view];
    v16 = [v15 superview];
    [v16 frame];
    v18 = v17;

    v19 = (v18 - v12) * 0.5;
    [(RCHitTestForwardingView *)self->_leftForwardingView setFrame:v8 - v19, v10, v19, v14];
    [(RCHitTestForwardingView *)self->_rightForwardingView setFrame:v8 + v12, v10, v19, v14];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v5 viewWillAppear:a3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v8 viewDidAppear:a3];
  [(RCTimeController *)self->_activeTimeController addTimeObserver:self];
  if (self->_isOverview)
  {
    v4 = [(RCAVWaveformViewController *)self view];
    v5 = [v4 superview];
    [v5 addSubview:self->_leftForwardingView];

    v6 = [(RCAVWaveformViewController *)self view];
    v7 = [v6 superview];
    [v7 addSubview:self->_rightForwardingView];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v4 viewWillDisappear:a3];
  if (self->_isOverview)
  {
    [(RCHitTestForwardingView *)self->_leftForwardingView removeFromSuperview];
    [(RCHitTestForwardingView *)self->_rightForwardingView removeFromSuperview];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v3 viewDidDisappear:a3];
}

- (void)reloadWaveformDataSource:(id)a3 withActiveTimeController:(id)a4
{
  v7 = a4;
  v6 = a3;
  [v7 currentTime];
  [(RCAVWaveformViewController *)self _setWaveformDataSource:v6 initialTime:?];

  [(RCAVWaveformViewController *)self setActiveTimeController:v7];
}

- (void)setActiveTimeController:(id)a3
{
  v5 = a3;
  activeTimeController = self->_activeTimeController;
  if (activeTimeController != v5)
  {
    v10 = v5;
    [(RCTimeController *)activeTimeController removeTimeObserver:self];
    objc_storeStrong(&self->_activeTimeController, a3);
    [(RCTimeController *)self->_activeTimeController addTimeObserver:self];
    v5 = v10;
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
      v5 = v10;
    }
  }
}

- (void)setIsEditMode:(BOOL)a3
{
  if (self->_isEditMode != a3)
  {
    v4 = a3;
    self->_isEditMode = a3;
    v5 = [(RCAVWaveformViewController *)self waveformViewController];
    [v5 setEditing:v4];
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

- (void)setHighlightTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
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

- (void)setCurrentTime:(double)a3
{
  if (self->_currentTime != a3)
  {
    self->_currentTime = a3;
    self->_nextPreviewStartTime = a3;
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

- (void)setDuration:(double)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    [(RCWaveformViewController *)self->_waveformViewController setDuration:?];

    [(RCAVWaveformViewController *)self _didUpdateDisplayableTime];
  }
}

- (CGRect)waveformRectForLayoutBounds:(CGRect)a3
{
  [(RCWaveformViewController *)self->_waveformViewController waveformRectForLayoutBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v5 = [(RCAVWaveformViewController *)self view];
    [v5 bounds];
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

- (void)setAutocenterCurrentTimeIndicatorAlways:(BOOL)a3
{
  if (self->_autocenterCurrentTimeIndicatorAlways != a3)
  {
    self->_autocenterCurrentTimeIndicatorAlways = a3;
    waveformViewController = self->_waveformViewController;
    v5 = [(RCAVWaveformViewController *)self _currentTimeDisplayOptions];

    [(RCWaveformViewController *)waveformViewController setCurrentTimeDisplayOptions:v5];
  }
}

- (void)setClipsTimeMarkersToDuration:(BOOL)a3
{
  if (self->_clipsTimeMarkersToDuration != a3)
  {
    self->_clipsTimeMarkersToDuration = a3;
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
      v6 = [(RCAVWaveformViewController *)self view];
      [v6 window];
    }

    v7 = [(RCAVWaveformViewController *)self waveformViewController];
    [v7 duration];
    RCTimeRangeMake();
    [v7 setSelectedTimeRange:? animationDuration:?];
  }
}

- (void)setMaximumSelectionDuration:(double)a3
{
  if (self->_maximumSelectionDuration != a3)
  {
    self->_maximumSelectionDuration = a3;
    [(RCWaveformViewController *)self->_waveformViewController setMaximumSelectionDuration:?];
  }
}

- (void)waveformViewController:(id)a3 didScrubToTime:(double)a4 finished:(BOOL)a5
{
  v5 = a5;
  if (UIAccessibilityIsVoiceOverRunning() && (CFAbsoluteTimeGetCurrent() - *&qword_1002D7028 > 2.0 || v5))
  {
    v9 = UIAccessibilityAnnouncementNotification;
    v10 = UIAXTimeStringForDuration();
    UIAccessibilityPostNotification(v9, v10);

    qword_1002D7028 = CFAbsoluteTimeGetCurrent();
  }

  activeTimeController = self->_activeTimeController;

  [(RCTimeController *)activeTimeController setTargetTime:a4];
}

- (void)waveformViewControllerDidEndEditingSelectedTimeRange:(id)a3
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

- (void)waveformViewController:(id)a3 didChangeToVisibleTimeRange:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained audioWaveformControllerDidChangeAVTimes:self];
}

- (void)timeController:(id)a3 didChangeState:(int64_t)a4
{
  if (!a4)
  {
    [a3 currentTime];
    self->_nextPreviewStartTime = v6;
  }

  [(RCAVWaveformViewController *)self _updateInterfaceForTimeControllerState:a4];
}

- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4 didChangeDuration:(double)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005C82C;
  v5[3] = &unk_10028AF68;
  v5[4] = self;
  *&v5[5] = a5;
  *&v5[6] = a4;
  [(RCAVWaveformViewController *)self _updateDisplayableTimesWithBlock:v5];
}

- (void)_setWaveformDataSource:(id)a3 initialTime:(double)a4
{
  v7 = a3;
  if (self->_waveformDataSource != v7)
  {
    objc_storeStrong(&self->_waveformDataSource, a3);
    waveformDataSource = self->_waveformDataSource;
    if (waveformDataSource)
    {
      [(RCWaveformDataSource *)waveformDataSource beginLoading];
    }

    [(RCWaveformViewController *)self->_waveformViewController setDataSource:v7];
    [(RCWaveformViewController *)self->_waveformViewController setCurrentTime:a4];
    waveformViewController = self->_waveformViewController;
    [(RCWaveformDataSource *)v7 duration];
    [(RCWaveformViewController *)waveformViewController setDuration:?];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005C9A0;
    v11[3] = &unk_10028A420;
    v11[4] = self;
    *&v11[5] = a4;
    [(RCAVWaveformViewController *)self _updateDisplayableTimesWithBlock:v11];
    self->_nextPreviewStartTime = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained audioWaveformControllerDidChangeWaveformDataSource:self];
  }
}

- (void)_updateCurrentTimeForCapturedInputAtTime:(double)a3
{
  if (self->_currentTimeTracksCapturedEndPoint)
  {
    [(RCAVWaveformViewController *)self setCurrentTime:a3];
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

- (void)_updateDisplayableTimesWithBlock:(id)a3
{
  ++self->_batchUpdatingDisplayableTimesCount;
  (*(a3 + 2))(a3, a2);
  v4 = self->_batchUpdatingDisplayableTimesCount - 1;
  self->_batchUpdatingDisplayableTimesCount = v4;
  if (!v4 && self->_needsUpdateDisplayableTime)
  {

    [(RCAVWaveformViewController *)self _didUpdateDisplayableTime];
  }
}

- (void)_setSelectionOverlayEnabled:(BOOL)a3
{
  if (self->_showingSelectionOverlayEnabled != a3)
  {
    self->_showingSelectionOverlayEnabled = a3;
    [(RCAVWaveformViewController *)self _didUpdateDisplayableTime];
  }
}

- (unint64_t)_currentTimeDisplayOptionsIgnoringSelectionOverlayState:(BOOL)a3
{
  if (self->_selectionOverlayVisible && !a3)
  {
    return 2;
  }

  else
  {
    return self->_autocenterCurrentTimeIndicatorAlways;
  }
}

- (void)_updateInterfaceForTimeControllerState:(int64_t)a3
{
  v5 = a3 == 1;
  v6 = [(RCAVWaveformViewController *)self waveformViewController];
  [v6 setPlaying:v5];

  if (a3 == 2)
  {
    v5 = [(RCAVWaveformViewController *)self waveformDataSource];
    v7 = [v5 supportsLiveInput];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(RCAVWaveformViewController *)self waveformViewController];
  [v8 setCapturing:v7];

  if (a3 == 2)
  {
  }

  selectionOverlayVisible = self->_selectionOverlayVisible;
  v10 = [(RCAVWaveformViewController *)self waveformViewController];
  [v10 setSelectedTimeRangeEditingEnabled:selectionOverlayVisible];

  v11 = [(RCAVWaveformViewController *)self waveformViewController];
  [v11 setScrubbingEnabled:(a3 - 3) < 0xFFFFFFFFFFFFFFFELL];

  v12 = [(RCAVWaveformViewController *)self waveformViewController];
  -[RCAVWaveformViewController _setSelectionOverlayEnabled:](self, "_setSelectionOverlayEnabled:", [v12 showPlayBarOnly]);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained audioWaveformControllerDidChangeAVState:self];
}

- (void)_beginShowingSelectionOverlayAndEnableInsertMode:(BOOL)a3
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
      v7 = [(RCAVWaveformViewController *)self view];
      v8 = [v7 window];
      if (v8)
      {
        v6 = 0.5;
      }

      else
      {
        v6 = 0.0;
      }
    }

    v9 = [(RCAVWaveformViewController *)self waveformViewController];
    self->_selectionOverlayVisible = 1;
    [(RCAVWaveformViewController *)self currentTime];
    self->_nextPreviewStartTime = v10;
    [v9 visibleTimeRange];
    RCTimeRangeDeltaWithUIPrecision();
    self->_defaultVisibleDuration = v11;
    [v9 setCurrentTimeDisplayOptions:{-[RCAVWaveformViewController _currentTimeDisplayOptions](self, "_currentTimeDisplayOptions")}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005CF18;
    v14[3] = &unk_10028A988;
    v15 = v9;
    v16 = a3;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005CF5C;
    v13[3] = &unk_10028AF90;
    v13[4] = self;
    v12 = v9;
    [UIView animateWithDuration:0x20000 delay:v14 options:v13 animations:v6 completion:0.0];
  }
}

- (void)_endShowingSelectionOverlayWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if ([(RCAVWaveformViewController *)self isViewLoaded])
  {
    v6 = [(RCAVWaveformViewController *)self view];
    v7 = [v6 window];
    if (v7)
    {
      v5 = 0.5;
    }

    else
    {
      v5 = 0.0;
    }
  }

  v8 = [(RCAVWaveformViewController *)self waveformViewController];
  [(RCAVWaveformViewController *)self nextPreviewStartTime];
  v10 = v9;
  self->_selectionOverlayVisible = 0;
  [v8 setCurrentTimeDisplayOptions:{-[RCAVWaveformViewController _currentTimeDisplayOptions](self, "_currentTimeDisplayOptions")}];
  [v8 setSelectionOverlayShouldUseInsertMode:0];
  [v8 setSelectedTimeRangeEditingEnabled:0];
  [v8 setScrubbingEnabled:1];
  v11 = [(RCAVWaveformViewController *)self activeTimeController];
  [v11 currentDuration];
  RCTimeRangeMake();
  [v11 setAllowedTimeRange:?];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005D1D0;
  v16[3] = &unk_10028AF68;
  v17 = v8;
  v18 = v10;
  v19 = v5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005D22C;
  v14[3] = &unk_10028AFB8;
  v15 = v4;
  v12 = v4;
  v13 = v8;
  [UIView animateWithDuration:0x20000 delay:v16 options:v14 animations:v5 completion:0.0];
}

- (id)_selectionOverlay
{
  v2 = [(RCAVWaveformViewController *)self waveformViewController];
  v3 = [v2 valueForKey:@"_selectionOverlay"];

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