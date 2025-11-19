@interface VMPlayerControlsView
- (VMPlayerControlsDelegate)delegate;
- (VMPlayerControlsView)initWithCoder:(id)a3;
- (double)duration;
- (double)elapsedTime;
- (void)commonInit;
- (void)loadConstraints;
- (void)loadSubviews;
- (void)setDuration:(double)a3;
- (void)setElapsedTime:(double)a3;
- (void)setElapsedTime:(double)a3 animated:(BOOL)a4;
- (void)setState:(int64_t)a3 animated:(BOOL)a4;
- (void)setStyle:(int64_t)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation VMPlayerControlsView

- (VMPlayerControlsView)initWithCoder:(id)a3
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
  v2 = [(VMPlayerControlsView *)self timelineSlider];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (void)setDuration:(double)a3
{
  v5 = [(VMPlayerControlsView *)self timelineSlider];
  [v5 duration];
  v7 = v6;

  if (v7 != a3)
  {
    v8 = [(VMPlayerControlsView *)self timelineSlider];
    [v8 setDuration:a3];
  }
}

- (double)elapsedTime
{
  v2 = [(VMPlayerControlsView *)self timelineSlider];
  [v2 elapsedTime];
  v4 = v3;

  return v4;
}

- (void)setElapsedTime:(double)a3
{
  v4 = [(VMPlayerControlsView *)self timelineSlider];
  [v4 setElapsedTime:a3];
}

- (void)setElapsedTime:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(VMPlayerControlsView *)self timelineSlider];
  [v6 setElapsedTime:v4 animated:a3];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = VMPlayerControlsView;
  [(VMPlayerControlsView *)&v9 setUserInteractionEnabled:?];
  if (self->_enabled != v3)
  {
    self->_enabled = v3;
    v5 = +[UIColor systemGrayColor];
    if (v3)
    {
      v6 = +[UIColor systemBlueColor];

      v5 = v6;
    }

    v7 = [(VMPlayerControlsView *)self timelineSlider];
    [v7 setUserInteractionEnabled:v3];

    v8 = [(VMPlayerControlsView *)self timelineSlider];
    [v8 setTintColor:v5];
  }
}

- (void)setState:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_state != a3)
  {
    self->_state = a3;
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style == a3)
  {
    return;
  }

  self->_style = a3;
  [(VMPlayerControlsView *)self unloadConstraints];
  if (a3 == 1)
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

  if (!a3)
  {
    v6 = [(VMPlayerControlsView *)self playPauseButton];
    v7 = v6;
    if (!v6)
    {
LABEL_8:

      goto LABEL_9;
    }

    [v6 removeFromSuperview];
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
    v4 = [(VMPlayerControlsView *)self isAccessiblityConstraintsEnabled];
    v5 = [(VMPlayerControlsView *)self timelineSlider];
    v6 = [v5 topAnchor];
    v7 = [(VMPlayerControlsView *)self topAnchor];
    if (v4)
    {
      [(VMPlayerControlsView *)self timelineSliderTopAnchorConstraintAccessibilityConstant];
      [v6 constraintEqualToAnchor:v7 constant:?];
    }

    else
    {
      [v6 constraintEqualToAnchor:v7];
    }
    v8 = ;

    [v3 addObject:v8];
    v9 = [(VMPlayerControlsView *)self style];
    if (v9 == 1)
    {
      v14 = [(VMPlayerControlsView *)self playPauseButton];
      v15 = [v14 leadingAnchor];
      v16 = [(VMPlayerControlsView *)self leadingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      [v3 addObject:v17];
      v18 = [(VMPlayerControlsView *)self timelineSlider];
      v19 = [v18 leadingAnchor];
      v20 = [(VMPlayerControlsView *)self playPauseButton];
      v21 = [v20 trailingAnchor];
      v22 = [v19 constraintEqualToAnchor:v21 constant:16.0];

      [v3 addObject:v22];
      v10 = [(VMPlayerControlsView *)self playPauseButton];
      v11 = [v10 centerYAnchor];
      v12 = [(VMPlayerControlsView *)self timelineSlider];
      v8 = [v12 slider];
      v23 = [v8 centerYAnchor];
      v13 = [v11 constraintEqualToAnchor:v23];
    }

    else
    {
      if (v9)
      {
LABEL_10:
        v24 = [(VMPlayerControlsView *)self timelineSlider];
        v25 = [v24 trailingAnchor];
        v26 = [(VMPlayerControlsView *)self trailingAnchor];
        v27 = [v25 constraintEqualToAnchor:v26];
        [v3 addObject:v27];

        v28 = [(VMPlayerControlsView *)self timelineSlider];
        v29 = [v28 bottomAnchor];
        v30 = [(VMPlayerControlsView *)self bottomAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];
        [v3 addObject:v31];

        [NSLayoutConstraint activateConstraints:v3];
        [(VMPlayerControlsView *)self setConstraintsLoaded:1];

        goto LABEL_11;
      }

      v10 = [(VMPlayerControlsView *)self timelineSlider];
      v11 = [v10 leadingAnchor];
      v12 = [(VMPlayerControlsView *)self leadingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
    }

    [v3 addObject:v13];
    v8 = v13;
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