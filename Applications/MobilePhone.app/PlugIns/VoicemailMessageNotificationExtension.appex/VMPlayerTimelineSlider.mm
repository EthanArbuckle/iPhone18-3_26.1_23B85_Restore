@interface VMPlayerTimelineSlider
- (AVTimeFormatter)timeFormatter;
- (VMPlayerTimelineSliderDelegate)delegate;
- (double)duration;
- (double)elapsedTime;
- (double)elapsedTimeLabelFirstBaselineAnchorLayoutConstraintConstant;
- (double)remainingTime;
- (double)remainingTimeLabelFirstBaselineAnchorLayoutConstraintConstant;
- (id)localizedStringForTimeInterval:(double)interval timeFormatter:(id)formatter;
- (void)_updateTextColor;
- (void)commonInit;
- (void)detailSlider:(id)slider didChangeElapsedTime:(double)time;
- (void)detailSliderTrackingDidBegin:(id)begin;
- (void)detailSliderTrackingDidCancel:(id)cancel;
- (void)detailSliderTrackingDidEnd:(id)end;
- (void)loadConstraints;
- (void)loadLabelConstraints;
- (void)loadView;
- (void)setDuration:(double)duration;
- (void)setElapsedTime:(double)time;
- (void)setElapsedTime:(double)time animated:(BOOL)animated;
- (void)setLabelsEnabled:(BOOL)enabled;
- (void)setValue:(float)value animated:(BOOL)animated;
- (void)tintColorDidChange;
- (void)unloadConstraints;
- (void)updateConstraintsConstants;
- (void)updateElapsedTimeLabelText;
- (void)updateFonts;
- (void)updateRemainingTimeLabelText;
@end

@implementation VMPlayerTimelineSlider

- (double)duration
{
  slider = [(VMPlayerTimelineSlider *)self slider];
  [slider maximumTime];
  v4 = v3;

  return v4;
}

- (void)setDuration:(double)duration
{
  slider = [(VMPlayerTimelineSlider *)self slider];
  [slider maximumTime];
  v7 = v6;

  if (v7 != duration)
  {
    slider2 = [(VMPlayerTimelineSlider *)self slider];
    [slider2 setMaximumTime:duration];

    [(VMPlayerTimelineSlider *)self updateElapsedTimeLabelText];

    [(VMPlayerTimelineSlider *)self updateRemainingTimeLabelText];
  }
}

- (double)elapsedTime
{
  slider = [(VMPlayerTimelineSlider *)self slider];
  [slider elapsedTime];
  v4 = v3;

  return v4;
}

- (void)setElapsedTime:(double)time
{
  slider = [(VMPlayerTimelineSlider *)self slider];
  [slider setElapsedTime:time];

  [(VMPlayerTimelineSlider *)self updateElapsedTimeLabelText];

  [(VMPlayerTimelineSlider *)self updateRemainingTimeLabelText];
}

- (void)setElapsedTime:(double)time animated:(BOOL)animated
{
  animatedCopy = animated;
  slider = [(VMPlayerTimelineSlider *)self slider];
  [slider setElapsedTime:animatedCopy animated:time];

  [(VMPlayerTimelineSlider *)self updateElapsedTimeLabelText];

  [(VMPlayerTimelineSlider *)self updateRemainingTimeLabelText];
}

- (double)remainingTime
{
  slider = [(VMPlayerTimelineSlider *)self slider];
  [slider maximumTime];
  v5 = v4;
  slider2 = [(VMPlayerTimelineSlider *)self slider];
  [slider2 elapsedTime];
  v8 = v5 - v7;

  return v8;
}

- (void)setLabelsEnabled:(BOOL)enabled
{
  if (self->_labelsEnabled != enabled)
  {
    self->_labelsEnabled = enabled;
    [(VMPlayerTimelineSlider *)self unloadConstraints];
    labelsEnabled = self->_labelsEnabled;
    elapsedTimeLabel = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
    v6 = elapsedTimeLabel;
    if (labelsEnabled)
    {
      [(VMPlayerTimelineSlider *)self addSubview:elapsedTimeLabel];

      remainingTimeLabel = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
      [(VMPlayerTimelineSlider *)self addSubview:remainingTimeLabel];
    }

    else
    {
      [elapsedTimeLabel removeFromSuperview];

      remainingTimeLabel = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
      [remainingTimeLabel removeFromSuperview];
    }

    [(VMPlayerTimelineSlider *)self setNeedsUpdateConstraints];
  }
}

- (AVTimeFormatter)timeFormatter
{
  timeFormatter = self->_timeFormatter;
  if (!timeFormatter)
  {
    v4 = objc_alloc_init(AVTimeFormatter);
    v5 = self->_timeFormatter;
    self->_timeFormatter = v4;

    timeFormatter = self->_timeFormatter;
  }

  return timeFormatter;
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  animatedCopy = animated;
  slider = [(VMPlayerTimelineSlider *)self slider];
  *&v6 = value;
  [slider setValue:animatedCopy animated:v6];
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = VMPlayerTimelineSlider;
  [(VMPlayerTimelineSlider *)&v3 commonInit];
  self->_labelsEnabled = 1;
  [(VMPlayerTimelineSlider *)self loadView];
}

- (void)loadView
{
  [(VMPlayerTimelineSlider *)self setSemanticContentAttribute:1];
  v3 = objc_alloc_init(VMDetailSlider);
  slider = self->_slider;
  self->_slider = v3;

  [(VMDetailSlider *)self->_slider setDelegate:self];
  [(VMDetailSlider *)self->_slider setSemanticContentAttribute:1];
  [(VMDetailSlider *)self->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMPlayerTimelineSlider *)self addSubview:self->_slider];
  v5 = objc_alloc_init(UILabel);
  elapsedTimeLabel = self->_elapsedTimeLabel;
  self->_elapsedTimeLabel = v5;

  [(UILabel *)self->_elapsedTimeLabel setBackgroundColor:0];
  [(UILabel *)self->_elapsedTimeLabel setLineBreakMode:2];
  [(UILabel *)self->_elapsedTimeLabel setOpaque:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"UNKNOWN_DURATION" value:&stru_10008C168 table:@"Voicemail"];
  [(UILabel *)self->_elapsedTimeLabel setText:v8];

  [(UILabel *)self->_elapsedTimeLabel setTextAlignment:2];
  [(UILabel *)self->_elapsedTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMPlayerTimelineSlider *)self addSubview:self->_elapsedTimeLabel];
  v9 = objc_alloc_init(UILabel);
  remainingTimeLabel = self->_remainingTimeLabel;
  self->_remainingTimeLabel = v9;

  [(UILabel *)self->_remainingTimeLabel setBackgroundColor:0];
  [(UILabel *)self->_remainingTimeLabel setLineBreakMode:2];
  [(UILabel *)self->_remainingTimeLabel setOpaque:0];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"UNKNOWN_DURATION" value:&stru_10008C168 table:@"Voicemail"];
  [(UILabel *)self->_remainingTimeLabel setText:v12];

  [(UILabel *)self->_remainingTimeLabel setTextAlignment:0];
  [(UILabel *)self->_remainingTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMPlayerTimelineSlider *)self addSubview:self->_remainingTimeLabel];

  [(VMPlayerTimelineSlider *)self _updateTextColor];
}

- (void)loadConstraints
{
  v23.receiver = self;
  v23.super_class = VMPlayerTimelineSlider;
  [(VMPlayerTimelineSlider *)&v23 loadConstraints];
  slider = [(VMPlayerTimelineSlider *)self slider];
  leadingAnchor = [slider leadingAnchor];
  leadingAnchor2 = [(VMPlayerTimelineSlider *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  v7 = NSStringFromSelector("sliderLeadingAnchorLayoutConstraint");
  [v6 setIdentifier:v7];

  [v6 setActive:1];
  [(VMPlayerTimelineSlider *)self setSliderLeadingAnchorLayoutConstraint:v6];
  trailingAnchor = [(VMPlayerTimelineSlider *)self trailingAnchor];
  slider2 = [(VMPlayerTimelineSlider *)self slider];
  trailingAnchor2 = [slider2 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  v12 = NSStringFromSelector("sliderTrailingAnchorLayoutConstraint");
  [v11 setIdentifier:v12];

  [v11 setActive:1];
  [(VMPlayerTimelineSlider *)self setSliderTrailingAnchorLayoutConstraint:v11];
  slider3 = [(VMPlayerTimelineSlider *)self slider];
  topAnchor = [slider3 topAnchor];
  topAnchor2 = [(VMPlayerTimelineSlider *)self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];

  v17 = NSStringFromSelector("sliderTopAnchorLayoutConstraint");
  [v16 setIdentifier:v17];

  [v16 setActive:1];
  [(VMPlayerTimelineSlider *)self setSliderTopAnchorLayoutConstraint:v16];
  if ([(VMPlayerTimelineSlider *)self labelsEnabled])
  {
    [(VMPlayerTimelineSlider *)self loadLabelConstraints];
  }

  else
  {
    bottomAnchor = [(VMPlayerTimelineSlider *)self bottomAnchor];
    slider4 = [(VMPlayerTimelineSlider *)self slider];
    bottomAnchor2 = [slider4 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    v22 = NSStringFromSelector("sliderBottomAnchorLayoutConstraint");
    [v21 setIdentifier:v22];

    [v21 setActive:1];
    [(VMPlayerTimelineSlider *)self setSliderBottomAnchorLayoutConstraint:v21];
    v16 = v21;
  }

  if ([(VMPlayerTimelineSlider *)self isAccessiblityConstraintsEnabled])
  {
    [(VMPlayerTimelineSlider *)self loadAccessibilityConstraints];
  }
}

- (void)loadLabelConstraints
{
  elapsedTimeLabel = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  leadingAnchor = [elapsedTimeLabel leadingAnchor];
  leadingAnchor2 = [(VMPlayerTimelineSlider *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  v7 = NSStringFromSelector("elapsedTimeLabelLeadingAnchorLayoutConstraint");
  [v6 setIdentifier:v7];

  [v6 setActive:1];
  [(VMPlayerTimelineSlider *)self setElapsedTimeLabelLeadingAnchorLayoutConstraint:v6];
  elapsedTimeLabel2 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  firstBaselineAnchor = [elapsedTimeLabel2 firstBaselineAnchor];
  slider = [(VMPlayerTimelineSlider *)self slider];
  lastBaselineAnchor = [slider lastBaselineAnchor];
  [(VMPlayerTimelineSlider *)self elapsedTimeLabelFirstBaselineAnchorLayoutConstraintConstant];
  v12 = [firstBaselineAnchor constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor constant:?];

  v13 = NSStringFromSelector("elapsedTimeLabelFirstBaselineAnchorLayoutConstraint");
  [v12 setIdentifier:v13];

  [v12 setActive:1];
  [(VMPlayerTimelineSlider *)self setElapsedTimeLabelFirstBaselineAnchorLayoutConstraint:v12];
  bottomAnchor = [(VMPlayerTimelineSlider *)self bottomAnchor];
  elapsedTimeLabel3 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  bottomAnchor2 = [elapsedTimeLabel3 bottomAnchor];
  v17 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];

  v18 = NSStringFromSelector("elapsedTimeLabelBottomAnchorLayoutConstraint");
  [v17 setIdentifier:v18];

  [v17 setActive:1];
  [(VMPlayerTimelineSlider *)self setElapsedTimeLabelBottomAnchorLayoutConstraint:v17];
  remainingTimeLabel = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  leadingAnchor3 = [remainingTimeLabel leadingAnchor];
  elapsedTimeLabel4 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  trailingAnchor = [elapsedTimeLabel4 trailingAnchor];
  v23 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor];

  v24 = NSStringFromSelector("remainingTimeLabelLeadingAnchorLayoutConstraint");
  [v23 setIdentifier:v24];

  [v23 setActive:1];
  [(VMPlayerTimelineSlider *)self setRemainingTimeLabelLeadingAnchorLayoutConstraint:v23];
  trailingAnchor2 = [(VMPlayerTimelineSlider *)self trailingAnchor];
  remainingTimeLabel2 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  trailingAnchor3 = [remainingTimeLabel2 trailingAnchor];
  v28 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];

  v29 = NSStringFromSelector("remainingTimeLabelTrailingAnchorLayoutConstraint");
  [v28 setIdentifier:v29];

  [v28 setActive:1];
  [(VMPlayerTimelineSlider *)self setRemainingTimeLabelTrailingAnchorLayoutConstraint:v28];
  remainingTimeLabel3 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  firstBaselineAnchor2 = [remainingTimeLabel3 firstBaselineAnchor];
  slider2 = [(VMPlayerTimelineSlider *)self slider];
  lastBaselineAnchor2 = [slider2 lastBaselineAnchor];
  [(VMPlayerTimelineSlider *)self remainingTimeLabelFirstBaselineAnchorLayoutConstraintConstant];
  v34 = [firstBaselineAnchor2 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2 constant:?];

  v35 = NSStringFromSelector("remainingTimeLabelFirstBaselineAnchorLayoutConstraint");
  [v34 setIdentifier:v35];

  [v34 setActive:1];
  [(VMPlayerTimelineSlider *)self setRemainingTimeLabelFirstBaselineAnchorLayoutConstraint:v34];
  bottomAnchor3 = [(VMPlayerTimelineSlider *)self bottomAnchor];
  remainingTimeLabel4 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  bottomAnchor4 = [remainingTimeLabel4 bottomAnchor];
  v39 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];

  v40 = NSStringFromSelector("remainingTimeLabelBottomAnchorLayoutConstraint");
  [v39 setIdentifier:v40];

  [v39 setActive:1];
  [(VMPlayerTimelineSlider *)self setRemainingTimeLabelBottomAnchorLayoutConstraint:v39];
  remainingTimeLabel5 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  firstBaselineAnchor3 = [remainingTimeLabel5 firstBaselineAnchor];
  elapsedTimeLabel5 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  firstBaselineAnchor4 = [elapsedTimeLabel5 firstBaselineAnchor];
  v45 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];

  [v45 setActive:1];
}

- (void)unloadConstraints
{
  v15.receiver = self;
  v15.super_class = VMPlayerTimelineSlider;
  [(VMPlayerTimelineSlider *)&v15 unloadConstraints];
  sliderBottomAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self sliderBottomAnchorLayoutConstraint];
  [sliderBottomAnchorLayoutConstraint setActive:0];

  sliderLeadingAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self sliderLeadingAnchorLayoutConstraint];
  [sliderLeadingAnchorLayoutConstraint setActive:0];

  sliderTopAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self sliderTopAnchorLayoutConstraint];
  [sliderTopAnchorLayoutConstraint setActive:0];

  sliderTrailingAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self sliderTrailingAnchorLayoutConstraint];
  [sliderTrailingAnchorLayoutConstraint setActive:0];

  elapsedTimeLabelBottomAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self elapsedTimeLabelBottomAnchorLayoutConstraint];
  [elapsedTimeLabelBottomAnchorLayoutConstraint setActive:0];

  elapsedTimeLabelLeadingAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self elapsedTimeLabelLeadingAnchorLayoutConstraint];
  [elapsedTimeLabelLeadingAnchorLayoutConstraint setActive:0];

  elapsedTimeLabelFirstBaselineAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self elapsedTimeLabelFirstBaselineAnchorLayoutConstraint];
  [elapsedTimeLabelFirstBaselineAnchorLayoutConstraint setActive:0];

  elapsedTimeLabelTrailingAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self elapsedTimeLabelTrailingAnchorLayoutConstraint];
  [elapsedTimeLabelTrailingAnchorLayoutConstraint setActive:0];

  remainingTimeLabelBottomAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self remainingTimeLabelBottomAnchorLayoutConstraint];
  [remainingTimeLabelBottomAnchorLayoutConstraint setActive:0];

  remainingTimeLabelLeadingAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self remainingTimeLabelLeadingAnchorLayoutConstraint];
  [remainingTimeLabelLeadingAnchorLayoutConstraint setActive:0];

  remainingTimeLabelFirstBaselineAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self remainingTimeLabelFirstBaselineAnchorLayoutConstraint];
  [remainingTimeLabelFirstBaselineAnchorLayoutConstraint setActive:0];

  remainingTimeLabelTrailingAnchorLayoutConstraint = [(VMPlayerTimelineSlider *)self remainingTimeLabelTrailingAnchorLayoutConstraint];
  [remainingTimeLabelTrailingAnchorLayoutConstraint setActive:0];
}

- (void)updateConstraintsConstants
{
  v2.receiver = self;
  v2.super_class = VMPlayerTimelineSlider;
  [(VMPlayerTimelineSlider *)&v2 updateConstraintsConstants];
}

- (void)updateFonts
{
  v9.receiver = self;
  v9.super_class = VMPlayerTimelineSlider;
  [(VMPlayerTimelineSlider *)&v9 updateFonts];
  v3 = +[UIFont telephonyUIFootnoteShortFont];
  [v3 pointSize];
  v4 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];
  elapsedTimeLabel = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  [elapsedTimeLabel setFont:v4];

  elapsedTimeLabel2 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  font = [elapsedTimeLabel2 font];
  remainingTimeLabel = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  [remainingTimeLabel setFont:font];
}

- (id)localizedStringForTimeInterval:(double)interval timeFormatter:(id)formatter
{
  v4 = [formatter stringFromSeconds:interval];

  return v4;
}

- (void)updateElapsedTimeLabelText
{
  timeFormatter = [(VMPlayerTimelineSlider *)self timeFormatter];
  [timeFormatter setStyle:1];
  [(VMPlayerTimelineSlider *)self elapsedTime];
  v3 = [(VMPlayerTimelineSlider *)self localizedStringForTimeInterval:timeFormatter timeFormatter:?];
  elapsedTimeLabel = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  [elapsedTimeLabel setText:v3];
}

- (void)updateRemainingTimeLabelText
{
  timeFormatter = [(VMPlayerTimelineSlider *)self timeFormatter];
  [timeFormatter setStyle:2];
  [(VMPlayerTimelineSlider *)self remainingTime];
  v3 = [(VMPlayerTimelineSlider *)self localizedStringForTimeInterval:timeFormatter timeFormatter:?];
  remainingTimeLabel = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  [remainingTimeLabel setText:v3];
}

- (void)detailSliderTrackingDidBegin:(id)begin
{
  delegate = [(VMPlayerTimelineSlider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VMPlayerTimelineSlider *)self delegate];
    [delegate2 playerTimelineSliderScrubbingDidBegin:self];
  }
}

- (void)detailSliderTrackingDidCancel:(id)cancel
{
  delegate = [(VMPlayerTimelineSlider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VMPlayerTimelineSlider *)self delegate];
    [delegate2 playerTimelineSliderScrubbingDidCancel:self];
  }
}

- (void)detailSliderTrackingDidEnd:(id)end
{
  delegate = [(VMPlayerTimelineSlider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VMPlayerTimelineSlider *)self delegate];
    [delegate2 playerTimelineSliderScrubbingDidEnd:self];
  }
}

- (void)detailSlider:(id)slider didChangeElapsedTime:(double)time
{
  delegate = [(VMPlayerTimelineSlider *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(VMPlayerTimelineSlider *)self delegate];
    [delegate2 playerTimelineSlider:self didChangeElapsedTime:time];
  }
}

- (double)elapsedTimeLabelFirstBaselineAnchorLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIFootnoteShortFont];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:16.0];
    v7 = v6;
  }

  else
  {
    v7 = 16.0;
  }

  return v7;
}

- (double)remainingTimeLabelFirstBaselineAnchorLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIFootnoteShortFont];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:16.0];
    v7 = v6;
  }

  else
  {
    v7 = 16.0;
  }

  return v7;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = VMPlayerTimelineSlider;
  [(VMPlayerTimelineSlider *)&v3 tintColorDidChange];
  [(VMPlayerTimelineSlider *)self _updateTextColor];
}

- (void)_updateTextColor
{
  v3 = +[UIColor dynamicSecondaryLabelColor];
  v4 = [(VMPlayerTimelineSlider *)self _accessibilityHigherContrastTintColorForColor:v3];
  [(UILabel *)self->_elapsedTimeLabel setTextColor:v4];

  v6 = +[UIColor dynamicSecondaryLabelColor];
  v5 = [(VMPlayerTimelineSlider *)self _accessibilityHigherContrastTintColorForColor:v6];
  [(UILabel *)self->_remainingTimeLabel setTextColor:v5];
}

- (VMPlayerTimelineSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end