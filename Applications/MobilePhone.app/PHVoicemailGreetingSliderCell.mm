@interface PHVoicemailGreetingSliderCell
+ (NSString)reuseIdentifier;
- (double)progressViewHeightAnchorConstraintConstant;
- (void)commonInit;
- (void)loadConstraints;
- (void)loadContentView;
- (void)playerTimelineSlider:(id)slider didChangeElapsedTime:(double)time;
- (void)showProgressView;
- (void)showTimelineSlider;
- (void)unloadConstraints;
- (void)updateConstraintsConstants;
@end

@implementation PHVoicemailGreetingSliderCell

+ (NSString)reuseIdentifier
{
  v2 = NSStringFromClass(self);
  v3 = [NSString stringWithFormat:@"%@ReuseIdentifier", v2];

  return v3;
}

- (void)commonInit
{
  v6.receiver = self;
  v6.super_class = PHVoicemailGreetingSliderCell;
  [(PHVoicemailGreetingSliderCell *)&v6 commonInit];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(PHVoicemailGreetingSliderCell *)self setLayoutMargins:UIEdgeInsetsZero.top, left, bottom, right];
  [(PHVoicemailGreetingSliderCell *)self setPreservesSuperviewLayoutMargins:0];
  [(PHVoicemailGreetingSliderCell *)self setSeparatorInset:UIEdgeInsetsZero.top, left, bottom, right];
}

- (void)loadContentView
{
  v10.receiver = self;
  v10.super_class = PHVoicemailGreetingSliderCell;
  [(PHVoicemailGreetingSliderCell *)&v10 loadContentView];
  v3 = [[UIProgressView alloc] initWithProgressViewStyle:0];
  progressView = self->_progressView;
  self->_progressView = v3;

  [(UIProgressView *)self->_progressView setProgress:0.0];
  v5 = +[UIColor systemRedColor];
  [(UIProgressView *)self->_progressView setProgressTintColor:v5];

  [(UIProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(PHVoicemailGreetingSliderCell *)self contentView];
  [contentView addSubview:self->_progressView];

  v7 = objc_alloc_init(VMPlayerTimelineSlider);
  timelineSlider = self->_timelineSlider;
  self->_timelineSlider = v7;

  [(VMPlayerTimelineSlider *)self->_timelineSlider setAlpha:0.0];
  [(VMPlayerTimelineSlider *)self->_timelineSlider setDelegate:self];
  [(VMPlayerTimelineSlider *)self->_timelineSlider setLabelsEnabled:0];
  [(VMPlayerTimelineSlider *)self->_timelineSlider setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(PHVoicemailGreetingSliderCell *)self contentView];
  [contentView2 addSubview:self->_timelineSlider];
}

- (void)loadConstraints
{
  v43.receiver = self;
  v43.super_class = PHVoicemailGreetingSliderCell;
  [(PHVoicemailGreetingSliderCell *)&v43 loadConstraints];
  progressView = [(PHVoicemailGreetingSliderCell *)self progressView];
  leadingAnchor = [progressView leadingAnchor];
  contentView = [(PHVoicemailGreetingSliderCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];

  v8 = NSStringFromSelector("progressViewLeadingAnchorConstraint");
  [v7 setIdentifier:v8];

  [v7 setActive:1];
  [(PHVoicemailGreetingSliderCell *)self setProgressViewLeadingAnchorConstraint:v7];
  contentView2 = [(PHVoicemailGreetingSliderCell *)self contentView];
  trailingAnchor = [contentView2 trailingAnchor];
  progressView2 = [(PHVoicemailGreetingSliderCell *)self progressView];
  trailingAnchor2 = [progressView2 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:15.0];

  v14 = NSStringFromSelector("progressViewTrailingAnchorConstraint");
  [v13 setIdentifier:v14];

  [v13 setActive:1];
  [(PHVoicemailGreetingSliderCell *)self setProgressViewTrailingAnchorConstraint:v13];
  progressView3 = [(PHVoicemailGreetingSliderCell *)self progressView];
  centerYAnchor = [progressView3 centerYAnchor];
  contentView3 = [(PHVoicemailGreetingSliderCell *)self contentView];
  centerYAnchor2 = [contentView3 centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  v20 = NSStringFromSelector("progressViewCenterYAnchorConstraint");
  [v19 setIdentifier:v20];

  [v19 setActive:1];
  [(PHVoicemailGreetingSliderCell *)self setProgressViewCenterYAnchorConstraint:v19];
  progressView4 = [(PHVoicemailGreetingSliderCell *)self progressView];
  heightAnchor = [progressView4 heightAnchor];
  [(PHVoicemailGreetingSliderCell *)self progressViewHeightAnchorConstraintConstant];
  v23 = [heightAnchor constraintEqualToConstant:?];

  v24 = NSStringFromSelector("progressViewHeightAnchorConstraint");
  [v23 setIdentifier:v24];

  [v23 setActive:1];
  [(PHVoicemailGreetingSliderCell *)self setProgressViewHeightAnchorConstraint:v23];
  timelineSlider = [(PHVoicemailGreetingSliderCell *)self timelineSlider];
  leadingAnchor3 = [timelineSlider leadingAnchor];
  progressView5 = [(PHVoicemailGreetingSliderCell *)self progressView];
  leadingAnchor4 = [progressView5 leadingAnchor];
  v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  v30 = NSStringFromSelector("timelineSliderLeadingAnchorConstraint");
  [v29 setIdentifier:v30];

  [v29 setActive:1];
  [(PHVoicemailGreetingSliderCell *)self setTimelineSliderLeadingAnchorConstraint:v29];
  progressView6 = [(PHVoicemailGreetingSliderCell *)self progressView];
  trailingAnchor3 = [progressView6 trailingAnchor];
  timelineSlider2 = [(PHVoicemailGreetingSliderCell *)self timelineSlider];
  trailingAnchor4 = [timelineSlider2 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  v36 = NSStringFromSelector("timelineSliderTrailingAnchorConstraint");
  [v35 setIdentifier:v36];

  [v35 setActive:1];
  [(PHVoicemailGreetingSliderCell *)self setTimelineSliderTrailingAnchorConstraint:v35];
  timelineSlider3 = [(PHVoicemailGreetingSliderCell *)self timelineSlider];
  centerYAnchor3 = [timelineSlider3 centerYAnchor];
  progressView7 = [(PHVoicemailGreetingSliderCell *)self progressView];
  centerYAnchor4 = [progressView7 centerYAnchor];
  v41 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

  v42 = NSStringFromSelector("timelineSliderCenterYAnchorConstraint");
  [v41 setIdentifier:v42];

  [v41 setActive:1];
  [(PHVoicemailGreetingSliderCell *)self setTimelineSliderCenterYAnchorConstraint:v41];
}

- (void)unloadConstraints
{
  v10.receiver = self;
  v10.super_class = PHVoicemailGreetingSliderCell;
  [(PHVoicemailGreetingSliderCell *)&v10 unloadConstraints];
  progressViewCenterYAnchorConstraint = [(PHVoicemailGreetingSliderCell *)self progressViewCenterYAnchorConstraint];
  [progressViewCenterYAnchorConstraint setActive:0];

  progressViewHeightAnchorConstraint = [(PHVoicemailGreetingSliderCell *)self progressViewHeightAnchorConstraint];
  [progressViewHeightAnchorConstraint setActive:0];

  progressViewLeadingAnchorConstraint = [(PHVoicemailGreetingSliderCell *)self progressViewLeadingAnchorConstraint];
  [progressViewLeadingAnchorConstraint setActive:0];

  progressViewTrailingAnchorConstraint = [(PHVoicemailGreetingSliderCell *)self progressViewTrailingAnchorConstraint];
  [progressViewTrailingAnchorConstraint setActive:0];

  timelineSliderCenterYAnchorConstraint = [(PHVoicemailGreetingSliderCell *)self timelineSliderCenterYAnchorConstraint];
  [timelineSliderCenterYAnchorConstraint setActive:0];

  timelineSliderLeadingAnchorConstraint = [(PHVoicemailGreetingSliderCell *)self timelineSliderLeadingAnchorConstraint];
  [timelineSliderLeadingAnchorConstraint setActive:0];

  timelineSliderTrailingAnchorConstraint = [(PHVoicemailGreetingSliderCell *)self timelineSliderTrailingAnchorConstraint];
  [timelineSliderTrailingAnchorConstraint setActive:0];
}

- (void)updateConstraintsConstants
{
  v6.receiver = self;
  v6.super_class = PHVoicemailGreetingSliderCell;
  [(PHVoicemailGreetingSliderCell *)&v6 updateConstraintsConstants];
  [(PHVoicemailGreetingSliderCell *)self progressViewHeightAnchorConstraintConstant];
  v4 = v3;
  progressViewHeightAnchorConstraint = [(PHVoicemailGreetingSliderCell *)self progressViewHeightAnchorConstraint];
  [progressViewHeightAnchorConstraint setConstant:v4];
}

- (void)playerTimelineSlider:(id)slider didChangeElapsedTime:(double)time
{
  v5 = +[PHVoicemailPlayerController sharedPlayerController];
  CMTimeMake(&v6, time, 1);
  [v5 seekToTime:&v6];
}

- (void)showProgressView
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __49__PHVoicemailGreetingSliderCell_showProgressView__block_invoke;
  v2[3] = &unk_100284FD0;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.300000012];
}

void __49__PHVoicemailGreetingSliderCell_showProgressView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) timelineSlider];
  [v3 setAlpha:0.0];
}

- (void)showTimelineSlider
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __51__PHVoicemailGreetingSliderCell_showTimelineSlider__block_invoke;
  v2[3] = &unk_100284FD0;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.300000012];
}

void __51__PHVoicemailGreetingSliderCell_showTimelineSlider__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) timelineSlider];
  [v3 setAlpha:1.0];
}

- (double)progressViewHeightAnchorConstraintConstant
{
  isAccessiblityConstraintsEnabled = [(PHVoicemailGreetingSliderCell *)self isAccessiblityConstraintsEnabled];
  result = 7.0;
  if (isAccessiblityConstraintsEnabled)
  {
    return 14.0;
  }

  return result;
}

@end