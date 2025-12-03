@interface VMPlayerControlsView
- (VMPlayerControlsDelegate)delegate;
- (VMPlayerControlsView)initWithCoder:(id)coder;
- (double)duration;
- (double)elapsedTime;
- (void)commonInit;
- (void)loadConstraints;
- (void)loadSubviews;
- (void)setDuration:(double)duration;
- (void)setElapsedTime:(double)time;
- (void)setElapsedTime:(double)time animated:(BOOL)animated;
- (void)setState:(int64_t)state animated:(BOOL)animated;
- (void)setStyle:(int64_t)style;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation VMPlayerControlsView

- (VMPlayerControlsView)initWithCoder:(id)coder
{
  [(VMPlayerControlsView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = VMPlayerControlsView;
  [(VMPlayerControlsView *)&v3 commonInit];
  self->_constraintsLoaded = 0;
  self->_enabled = 1;
  self->_style = 0;
  [(VMPlayerControlsView *)self loadSubviews];
}

- (double)duration
{
  timelineSlider = [(VMPlayerControlsView *)self timelineSlider];
  [timelineSlider duration];
  v4 = v3;

  return v4;
}

- (void)setDuration:(double)duration
{
  timelineSlider = [(VMPlayerControlsView *)self timelineSlider];
  [timelineSlider duration];
  v7 = v6;

  if (v7 != duration)
  {
    timelineSlider2 = [(VMPlayerControlsView *)self timelineSlider];
    [timelineSlider2 setDuration:duration];
  }
}

- (double)elapsedTime
{
  timelineSlider = [(VMPlayerControlsView *)self timelineSlider];
  [timelineSlider elapsedTime];
  v4 = v3;

  return v4;
}

- (void)setElapsedTime:(double)time
{
  timelineSlider = [(VMPlayerControlsView *)self timelineSlider];
  [timelineSlider setElapsedTime:time];
}

- (void)setElapsedTime:(double)time animated:(BOOL)animated
{
  animatedCopy = animated;
  timelineSlider = [(VMPlayerControlsView *)self timelineSlider];
  [timelineSlider setElapsedTime:animatedCopy animated:time];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9.receiver = self;
  v9.super_class = VMPlayerControlsView;
  [(VMPlayerControlsView *)&v9 setUserInteractionEnabled:?];
  if (self->_enabled != enabledCopy)
  {
    self->_enabled = enabledCopy;
    v5 = +[UIColor systemGrayColor];
    if (enabledCopy)
    {
      v6 = +[UIColor systemBlueColor];

      v5 = v6;
    }

    timelineSlider = [(VMPlayerControlsView *)self timelineSlider];
    [timelineSlider setUserInteractionEnabled:enabledCopy];

    timelineSlider2 = [(VMPlayerControlsView *)self timelineSlider];
    [timelineSlider2 setTintColor:v5];
  }
}

- (void)setState:(int64_t)state animated:(BOOL)animated
{
  if (self->_state != state)
  {
    self->_state = state;
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style == style)
  {
    return;
  }

  self->_style = style;
  [(VMPlayerControlsView *)self unloadConstraints];
  if (style == 1)
  {
    v8 = [VMPlayerControlButton buttonWithState:0];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v9) = 1148846080;
    [v8 setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [v8 setContentHuggingPriority:1 forAxis:v10];
    [(VMPlayerControlsView *)self addSubview:v8];
    v7 = v8;
    goto LABEL_7;
  }

  if (!style)
  {
    playPauseButton = [(VMPlayerControlsView *)self playPauseButton];
    v7 = playPauseButton;
    if (!playPauseButton)
    {
LABEL_8:

      goto LABEL_9;
    }

    [playPauseButton removeFromSuperview];
    v8 = 0;
LABEL_7:
    [(VMPlayerControlsView *)self setPlayPauseButton:v8];
    goto LABEL_8;
  }

LABEL_9:

  [(VMPlayerControlsView *)self setNeedsUpdateConstraints];
}

- (void)loadSubviews
{
  v3 = objc_alloc_init(VMPlayerTimelineSlider);
  timelineSlider = self->_timelineSlider;
  self->_timelineSlider = v3;

  v5 = +[UIColor clearColor];
  [(VMPlayerTimelineSlider *)self->_timelineSlider setBackgroundColor:v5];

  [(VMPlayerTimelineSlider *)self->_timelineSlider setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1144750080;
  [(VMPlayerTimelineSlider *)self->_timelineSlider setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [(VMPlayerTimelineSlider *)self->_timelineSlider setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1132068864;
  [(VMPlayerTimelineSlider *)self->_timelineSlider setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [(VMPlayerTimelineSlider *)self->_timelineSlider setContentHuggingPriority:1 forAxis:v9];
  [(VMPlayerControlsView *)self addSubview:self->_timelineSlider];

  [(VMPlayerControlsView *)self setSemanticContentAttribute:1];
}

- (void)loadConstraints
{
  if (![(VMPlayerControlsView *)self constraintsLoaded])
  {
    v3 = objc_alloc_init(NSMutableArray);
    isAccessiblityConstraintsEnabled = [(VMPlayerControlsView *)self isAccessiblityConstraintsEnabled];
    timelineSlider = [(VMPlayerControlsView *)self timelineSlider];
    topAnchor = [timelineSlider topAnchor];
    topAnchor2 = [(VMPlayerControlsView *)self topAnchor];
    if (isAccessiblityConstraintsEnabled)
    {
      [(VMPlayerControlsView *)self timelineSliderTopAnchorConstraintAccessibilityConstant];
      [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    }

    else
    {
      [topAnchor constraintEqualToAnchor:topAnchor2];
    }
    slider = ;

    [v3 addObject:slider];
    style = [(VMPlayerControlsView *)self style];
    if (style == 1)
    {
      playPauseButton = [(VMPlayerControlsView *)self playPauseButton];
      leadingAnchor = [playPauseButton leadingAnchor];
      leadingAnchor2 = [(VMPlayerControlsView *)self leadingAnchor];
      v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

      [v3 addObject:v17];
      timelineSlider2 = [(VMPlayerControlsView *)self timelineSlider];
      leadingAnchor3 = [timelineSlider2 leadingAnchor];
      playPauseButton2 = [(VMPlayerControlsView *)self playPauseButton];
      trailingAnchor = [playPauseButton2 trailingAnchor];
      v22 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:16.0];

      [v3 addObject:v22];
      playPauseButton3 = [(VMPlayerControlsView *)self playPauseButton];
      centerYAnchor = [playPauseButton3 centerYAnchor];
      timelineSlider3 = [(VMPlayerControlsView *)self timelineSlider];
      slider = [timelineSlider3 slider];
      centerYAnchor2 = [slider centerYAnchor];
      v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    }

    else
    {
      if (style)
      {
LABEL_10:
        timelineSlider4 = [(VMPlayerControlsView *)self timelineSlider];
        trailingAnchor2 = [timelineSlider4 trailingAnchor];
        trailingAnchor3 = [(VMPlayerControlsView *)self trailingAnchor];
        v27 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
        [v3 addObject:v27];

        timelineSlider5 = [(VMPlayerControlsView *)self timelineSlider];
        bottomAnchor = [timelineSlider5 bottomAnchor];
        bottomAnchor2 = [(VMPlayerControlsView *)self bottomAnchor];
        v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        [v3 addObject:v31];

        [NSLayoutConstraint activateConstraints:v3];
        [(VMPlayerControlsView *)self setConstraintsLoaded:1];

        goto LABEL_11;
      }

      playPauseButton3 = [(VMPlayerControlsView *)self timelineSlider];
      centerYAnchor = [playPauseButton3 leadingAnchor];
      timelineSlider3 = [(VMPlayerControlsView *)self leadingAnchor];
      v13 = [centerYAnchor constraintEqualToAnchor:timelineSlider3];
    }

    [v3 addObject:v13];
    slider = v13;
    goto LABEL_10;
  }

LABEL_11:
  v32.receiver = self;
  v32.super_class = VMPlayerControlsView;
  [(VMPlayerControlsView *)&v32 loadConstraints];
}

- (VMPlayerControlsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end