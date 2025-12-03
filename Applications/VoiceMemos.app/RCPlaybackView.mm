@interface RCPlaybackView
- (CGSize)intrinsicContentSize;
- (void)_classSpecificLayout;
- (void)_updateAccessibilityStateForContentUnavailable:(BOOL)unavailable;
- (void)restyle;
- (void)setRecordingViewState:(int64_t)state;
- (void)updateColors;
- (void)updateShuttleBarControlsColor;
@end

@implementation RCPlaybackView

- (void)setRecordingViewState:(int64_t)state
{
  if ((state & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = RCPlaybackView;
    [(RCRecordingView *)&v5 setRecordingViewState:?];
  }
}

- (void)_classSpecificLayout
{
  [(RCPlaybackView *)self frame];
  v5 = v4 < 10.0 || v3 < 10.0;
  if (!v5 && [(RCRecordingView *)self didSetupSubviews])
  {
    shuttleBar = [(RCRecordingView *)self shuttleBar];
    [(RCPlaybackView *)self bringSubviewToFront:shuttleBar];

    progressOverlay = [(RCRecordingView *)self progressOverlay];
    [(RCPlaybackView *)self bringSubviewToFront:progressOverlay];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateAccessibilityStateForContentUnavailable:(BOOL)unavailable
{
  unavailableCopy = unavailable;
  if ([(RCRecordingView *)self didSetupSubviews])
  {
    currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
    [currentTimeLabel setIsAccessibilityElement:unavailableCopy ^ 1];

    centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
    [centerContentContainerView setAccessibilityElementsHidden:unavailableCopy];

    shuttleBar = [(RCRecordingView *)self shuttleBar];
    [shuttleBar setAccessibilityElementsHidden:unavailableCopy];

    overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];
    [overviewWaveformContainerView setAccessibilityElementsHidden:unavailableCopy];
  }
}

- (void)updateColors
{
  v10 = +[RCRecorderStyleProvider sharedStyleProvider];
  beginEndLabelsPlaybackColor = [v10 beginEndLabelsPlaybackColor];
  overviewBeginTimeLabel = [(RCRecordingView *)self overviewBeginTimeLabel];
  [overviewBeginTimeLabel setTextColor:beginEndLabelsPlaybackColor];

  beginEndLabelsPlaybackColor2 = [v10 beginEndLabelsPlaybackColor];
  overviewEndTimeLabel = [(RCRecordingView *)self overviewEndTimeLabel];
  [overviewEndTimeLabel setTextColor:beginEndLabelsPlaybackColor2];

  playbackViewBackgroundColor = [v10 playbackViewBackgroundColor];
  [(RCPlaybackView *)self setBackgroundColor:playbackViewBackgroundColor];

  playbackCardTimeLabelFontColor = [v10 playbackCardTimeLabelFontColor];
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  [currentTimeLabel setTextColor:playbackCardTimeLabelFontColor];

  [(RCPlaybackView *)self updateShuttleBarControlsColor];
}

- (void)updateShuttleBarControlsColor
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  transportControlsColorForPlaybackCard = [v5 transportControlsColorForPlaybackCard];
  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [shuttleBar setControlsColor:transportControlsColorForPlaybackCard];
}

- (void)restyle
{
  v3.receiver = self;
  v3.super_class = RCPlaybackView;
  [(RCRecordingView *)&v3 restyle];
  [(RCRecordingView *)self applyDimmingColorToProgressOverlay];
}

@end