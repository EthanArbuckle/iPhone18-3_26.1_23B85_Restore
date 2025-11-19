@interface RCAVWaveformViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)nextPreviewTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)setHighlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange;
- (CGRect)waveformRectForLayoutBounds:(CGRect)a3;
- (RCAVWaveformViewController)initWithWaveformDataSource:(id)a3 isOverview:(BOOL)a4 isLockScreen:(BOOL)a5 delegate:(id)a6;
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
- (void)waveformViewController:(id)a3 didScrubToTime:(double)a4 finished:(BOOL)a5;
- (void)waveformViewControllerDidEndEditingSelectedTimeRange:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation RCAVWaveformViewController

- (RCAVWaveformViewController)initWithWaveformDataSource:(id)a3 isOverview:(BOOL)a4 isLockScreen:(BOOL)a5 delegate:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v26.receiver = self;
  v26.super_class = RCAVWaveformViewController;
  v12 = [(RCAVWaveformViewController *)&v26 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    v12->_isOverview = v8;
    v12->_userInteractionEnabled = 1;
    v12->_autocenterCurrentTimeIndicatorAlways = !v12->_isOverview;
    v12->_clipsTimeMarkersToDuration = 1;
    v12->_currentTimeTracksCapturedEndPoint = 1;
    [v10 duration];
    v13->_duration = v14;
    v15 = [[RCWaveformViewController alloc] initWithOverviewWaveform:v8 duration:v13->_duration];
    waveformViewController = v13->_waveformViewController;
    v13->_waveformViewController = v15;

    [(RCWaveformViewController *)v13->_waveformViewController setCurrentTime:0.0];
    [(RCWaveformViewController *)v13->_waveformViewController setCurrentTimeDisplayOptions:v13->_duration > 0.0];
    [(RCWaveformViewController *)v13->_waveformViewController setDelegate:v13];
    [(RCAVWaveformViewController *)v13 addChildViewController:v13->_waveformViewController];
    [(RCAVWaveformViewController *)v13 _setWaveformDataSource:v10 initialTime:0.0];
    [(RCWaveformViewController *)v13->_waveformViewController didMoveToParentViewController:v13];
    objc_storeWeak(&v13->_delegate, v11);
    if (v13->_isOverview && !a5)
    {
      v17 = [RCHitTestForwardingView alloc];
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v21 = [(RCHitTestForwardingView *)v17 initWithFrame:CGRectZero.origin.x, y, width, height];
      leftForwardingView = v13->_leftForwardingView;
      v13->_leftForwardingView = v21;

      v23 = [[RCHitTestForwardingView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      rightForwardingView = v13->_rightForwardingView;
      v13->_rightForwardingView = v23;
    }
  }

  return v13;
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

- (void)willMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = RCAVWaveformViewController;
  [(RCAVWaveformViewController *)&v7 willMoveToParentViewController:?];
  if (!a3)
  {
    [(RCWaveformViewController *)self->_waveformViewController willMoveToParentViewController:0];
    v5 = [(RCWaveformViewController *)self->_waveformViewController view];
    [v5 removeFromSuperview];

    [(RCWaveformViewController *)self->_waveformViewController removeFromParentViewController];
    waveformViewController = self->_waveformViewController;
    self->_waveformViewController = 0;
  }
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
  v4[2] = sub_1FDF0;
  v4[3] = &unk_6D458;
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
    v2 = -1.79769313e308;
    v3 = 1.79769313e308;
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
  if (!RCTimeRangeEqualToTimeRange(self->_highlightTimeRange.beginTime, self->_highlightTimeRange.endTime, a3.var0, a3.var1))
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

    v9 = [(RCAVWaveformViewController *)self waveformViewController];
    [v9 duration];
    if (v4 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    [v9 setSelectedTimeRange:RCTimeRangeMake(0.0 animationDuration:v8)];
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
  if (UIAccessibilityIsVoiceOverRunning() && (CFAbsoluteTimeGetCurrent() - *&qword_823F0 > 2.0 || v5))
  {
    v9 = UIAccessibilityAnnouncementNotification;
    v10 = UIAXTimeStringForDuration();
    UIAccessibilityPostNotification(v9, v10);

    qword_823F0 = CFAbsoluteTimeGetCurrent();
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
  if (!RCTimeRangeContainsTime(v5, v7, v8))
  {
    v9 = RCTimeRangeConstrainTime(v5, v7, v9);
    [(RCTimeController *)self->_activeTimeController setTargetTime:?];
  }

  self->_nextPreviewStartTime = v9;
  activeTimeController = self->_activeTimeController;

  [(RCTimeController *)activeTimeController setAllowedTimeRange:v5, v7];
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
  v5[2] = sub_208B4;
  v5[3] = &unk_6D7A0;
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
    v11[2] = sub_20A28;
    v11[3] = &unk_6D7C8;
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
    if (v4 > RCTimeRangeGetMidTime(v5, v6))
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
      v9 = self->_waveformViewController;

      [(RCWaveformViewController *)v9 updateVisibleTimeRangeToFullDuration];
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
  v4 = a3 == 1;
  v5 = a3 == 2;
  v6 = (a3 - 3) < 0xFFFFFFFFFFFFFFFELL;
  v7 = [(RCAVWaveformViewController *)self waveformViewController];
  [v7 setPlaying:v4];

  v8 = [(RCAVWaveformViewController *)self waveformViewController];
  [v8 setCapturing:v5];

  selectionOverlayVisible = self->_selectionOverlayVisible;
  v10 = [(RCAVWaveformViewController *)self waveformViewController];
  [v10 setSelectedTimeRangeEditingEnabled:selectionOverlayVisible];

  v11 = [(RCAVWaveformViewController *)self waveformViewController];
  [v11 setScrubbingEnabled:v6];

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
    self->_defaultVisibleDuration = RCTimeRangeDeltaWithUIPrecision(v11, v12);
    [v9 setCurrentTimeDisplayOptions:{-[RCAVWaveformViewController _currentTimeDisplayOptions](self, "_currentTimeDisplayOptions")}];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_20F70;
    v15[3] = &unk_6D7F0;
    v16 = v9;
    v17 = a3;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_20FB4;
    v14[3] = &unk_6D818;
    v14[4] = self;
    v13 = v9;
    [UIView animateWithDuration:0x20000 delay:v15 options:v14 animations:v6 completion:0.0];
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
  [v11 setAllowedTimeRange:{RCTimeRangeMake(0.0, v12)}];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_21228;
  v17[3] = &unk_6D7A0;
  v18 = v8;
  v19 = v10;
  v20 = v5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_21284;
  v15[3] = &unk_6D840;
  v16 = v4;
  v13 = v4;
  v14 = v8;
  [UIView animateWithDuration:0x20000 delay:v17 options:v15 animations:v5 completion:0.0];
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