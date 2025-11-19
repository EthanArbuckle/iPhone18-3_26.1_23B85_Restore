@interface RCPlaybackView
- (CGSize)intrinsicContentSize;
- (void)_classSpecificLayout;
- (void)_updateAccessibilityStateForContentUnavailable:(BOOL)a3;
- (void)restyle;
- (void)setRecordingViewState:(int64_t)a3;
- (void)updateColors;
- (void)updateShuttleBarControlsColor;
@end

@implementation RCPlaybackView

- (void)setRecordingViewState:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
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
    v6 = [(RCRecordingView *)self shuttleBar];
    [(RCPlaybackView *)self bringSubviewToFront:v6];

    v7 = [(RCRecordingView *)self progressOverlay];
    [(RCPlaybackView *)self bringSubviewToFront:v7];
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

- (void)_updateAccessibilityStateForContentUnavailable:(BOOL)a3
{
  v3 = a3;
  if ([(RCRecordingView *)self didSetupSubviews])
  {
    v5 = [(RCRecordingView *)self currentTimeLabel];
    [v5 setIsAccessibilityElement:v3 ^ 1];

    v6 = [(RCRecordingView *)self centerContentContainerView];
    [v6 setAccessibilityElementsHidden:v3];

    v7 = [(RCRecordingView *)self shuttleBar];
    [v7 setAccessibilityElementsHidden:v3];

    v8 = [(RCRecordingView *)self overviewWaveformContainerView];
    [v8 setAccessibilityElementsHidden:v3];
  }
}

- (void)updateColors
{
  v10 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v10 beginEndLabelsPlaybackColor];
  v4 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [v4 setTextColor:v3];

  v5 = [v10 beginEndLabelsPlaybackColor];
  v6 = [(RCRecordingView *)self overviewEndTimeLabel];
  [v6 setTextColor:v5];

  v7 = [v10 playbackViewBackgroundColor];
  [(RCPlaybackView *)self setBackgroundColor:v7];

  v8 = [v10 playbackCardTimeLabelFontColor];
  v9 = [(RCRecordingView *)self currentTimeLabel];
  [v9 setTextColor:v8];

  [(RCPlaybackView *)self updateShuttleBarControlsColor];
}

- (void)updateShuttleBarControlsColor
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v5 transportControlsColorForPlaybackCard];
  v4 = [(RCRecordingView *)self shuttleBar];
  [v4 setControlsColor:v3];
}

- (void)restyle
{
  v3.receiver = self;
  v3.super_class = RCPlaybackView;
  [(RCRecordingView *)&v3 restyle];
  [(RCRecordingView *)self applyDimmingColorToProgressOverlay];
}

@end