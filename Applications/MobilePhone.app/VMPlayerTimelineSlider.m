@interface VMPlayerTimelineSlider
- (AVTimeFormatter)timeFormatter;
- (VMPlayerTimelineSliderDelegate)delegate;
- (double)duration;
- (double)elapsedTime;
- (double)elapsedTimeLabelFirstBaselineAnchorLayoutConstraintConstant;
- (double)remainingTime;
- (double)remainingTimeLabelFirstBaselineAnchorLayoutConstraintConstant;
- (id)localizedStringForTimeInterval:(double)a3 timeFormatter:(id)a4;
- (void)_updateTextColor;
- (void)commonInit;
- (void)detailSlider:(id)a3 didChangeElapsedTime:(double)a4;
- (void)detailSliderTrackingDidBegin:(id)a3;
- (void)detailSliderTrackingDidCancel:(id)a3;
- (void)detailSliderTrackingDidEnd:(id)a3;
- (void)loadConstraints;
- (void)loadLabelConstraints;
- (void)loadView;
- (void)setDuration:(double)a3;
- (void)setElapsedTime:(double)a3;
- (void)setElapsedTime:(double)a3 animated:(BOOL)a4;
- (void)setLabelsEnabled:(BOOL)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
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
  v2 = [(VMPlayerTimelineSlider *)self slider];
  [v2 maximumTime];
  v4 = v3;

  return v4;
}

- (void)setDuration:(double)a3
{
  v5 = [(VMPlayerTimelineSlider *)self slider];
  [v5 maximumTime];
  v7 = v6;

  if (v7 != a3)
  {
    v8 = [(VMPlayerTimelineSlider *)self slider];
    [v8 setMaximumTime:a3];

    [(VMPlayerTimelineSlider *)self updateElapsedTimeLabelText];

    [(VMPlayerTimelineSlider *)self updateRemainingTimeLabelText];
  }
}

- (double)elapsedTime
{
  v2 = [(VMPlayerTimelineSlider *)self slider];
  [v2 elapsedTime];
  v4 = v3;

  return v4;
}

- (void)setElapsedTime:(double)a3
{
  v5 = [(VMPlayerTimelineSlider *)self slider];
  [v5 setElapsedTime:a3];

  [(VMPlayerTimelineSlider *)self updateElapsedTimeLabelText];

  [(VMPlayerTimelineSlider *)self updateRemainingTimeLabelText];
}

- (void)setElapsedTime:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(VMPlayerTimelineSlider *)self slider];
  [v7 setElapsedTime:v4 animated:a3];

  [(VMPlayerTimelineSlider *)self updateElapsedTimeLabelText];

  [(VMPlayerTimelineSlider *)self updateRemainingTimeLabelText];
}

- (double)remainingTime
{
  v3 = [(VMPlayerTimelineSlider *)self slider];
  [v3 maximumTime];
  v5 = v4;
  v6 = [(VMPlayerTimelineSlider *)self slider];
  [v6 elapsedTime];
  v8 = v5 - v7;

  return v8;
}

- (void)setLabelsEnabled:(BOOL)a3
{
  if (self->_labelsEnabled != a3)
  {
    self->_labelsEnabled = a3;
    [(VMPlayerTimelineSlider *)self unloadConstraints];
    labelsEnabled = self->_labelsEnabled;
    v5 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
    v6 = v5;
    if (labelsEnabled)
    {
      [(VMPlayerTimelineSlider *)self addSubview:v5];

      v7 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
      [(VMPlayerTimelineSlider *)self addSubview:v7];
    }

    else
    {
      [v5 removeFromSuperview];

      v7 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
      [v7 removeFromSuperview];
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

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(VMPlayerTimelineSlider *)self slider];
  *&v6 = a3;
  [v7 setValue:v4 animated:v6];
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
  v8 = [v7 localizedStringForKey:@"UNKNOWN_DURATION" value:&stru_10028F310 table:@"Voicemail"];
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
  v12 = [v11 localizedStringForKey:@"UNKNOWN_DURATION" value:&stru_10028F310 table:@"Voicemail"];
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
  v3 = [(VMPlayerTimelineSlider *)self slider];
  v4 = [v3 leadingAnchor];
  v5 = [(VMPlayerTimelineSlider *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  v7 = NSStringFromSelector("sliderLeadingAnchorLayoutConstraint");
  [v6 setIdentifier:v7];

  [v6 setActive:1];
  [(VMPlayerTimelineSlider *)self setSliderLeadingAnchorLayoutConstraint:v6];
  v8 = [(VMPlayerTimelineSlider *)self trailingAnchor];
  v9 = [(VMPlayerTimelineSlider *)self slider];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];

  v12 = NSStringFromSelector("sliderTrailingAnchorLayoutConstraint");
  [v11 setIdentifier:v12];

  [v11 setActive:1];
  [(VMPlayerTimelineSlider *)self setSliderTrailingAnchorLayoutConstraint:v11];
  v13 = [(VMPlayerTimelineSlider *)self slider];
  v14 = [v13 topAnchor];
  v15 = [(VMPlayerTimelineSlider *)self topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

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
    v18 = [(VMPlayerTimelineSlider *)self bottomAnchor];
    v19 = [(VMPlayerTimelineSlider *)self slider];
    v20 = [v19 bottomAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];

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
  v3 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(VMPlayerTimelineSlider *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  v7 = NSStringFromSelector("elapsedTimeLabelLeadingAnchorLayoutConstraint");
  [v6 setIdentifier:v7];

  [v6 setActive:1];
  [(VMPlayerTimelineSlider *)self setElapsedTimeLabelLeadingAnchorLayoutConstraint:v6];
  v8 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  v9 = [v8 firstBaselineAnchor];
  v10 = [(VMPlayerTimelineSlider *)self slider];
  v11 = [v10 lastBaselineAnchor];
  [(VMPlayerTimelineSlider *)self elapsedTimeLabelFirstBaselineAnchorLayoutConstraintConstant];
  v12 = [v9 constraintGreaterThanOrEqualToAnchor:v11 constant:?];

  v13 = NSStringFromSelector("elapsedTimeLabelFirstBaselineAnchorLayoutConstraint");
  [v12 setIdentifier:v13];

  [v12 setActive:1];
  [(VMPlayerTimelineSlider *)self setElapsedTimeLabelFirstBaselineAnchorLayoutConstraint:v12];
  v14 = [(VMPlayerTimelineSlider *)self bottomAnchor];
  v15 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintGreaterThanOrEqualToAnchor:v16];

  v18 = NSStringFromSelector("elapsedTimeLabelBottomAnchorLayoutConstraint");
  [v17 setIdentifier:v18];

  [v17 setActive:1];
  [(VMPlayerTimelineSlider *)self setElapsedTimeLabelBottomAnchorLayoutConstraint:v17];
  v19 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  v20 = [v19 leadingAnchor];
  v21 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintGreaterThanOrEqualToAnchor:v22];

  v24 = NSStringFromSelector("remainingTimeLabelLeadingAnchorLayoutConstraint");
  [v23 setIdentifier:v24];

  [v23 setActive:1];
  [(VMPlayerTimelineSlider *)self setRemainingTimeLabelLeadingAnchorLayoutConstraint:v23];
  v25 = [(VMPlayerTimelineSlider *)self trailingAnchor];
  v26 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  v27 = [v26 trailingAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];

  v29 = NSStringFromSelector("remainingTimeLabelTrailingAnchorLayoutConstraint");
  [v28 setIdentifier:v29];

  [v28 setActive:1];
  [(VMPlayerTimelineSlider *)self setRemainingTimeLabelTrailingAnchorLayoutConstraint:v28];
  v30 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  v31 = [v30 firstBaselineAnchor];
  v32 = [(VMPlayerTimelineSlider *)self slider];
  v33 = [v32 lastBaselineAnchor];
  [(VMPlayerTimelineSlider *)self remainingTimeLabelFirstBaselineAnchorLayoutConstraintConstant];
  v34 = [v31 constraintGreaterThanOrEqualToAnchor:v33 constant:?];

  v35 = NSStringFromSelector("remainingTimeLabelFirstBaselineAnchorLayoutConstraint");
  [v34 setIdentifier:v35];

  [v34 setActive:1];
  [(VMPlayerTimelineSlider *)self setRemainingTimeLabelFirstBaselineAnchorLayoutConstraint:v34];
  v36 = [(VMPlayerTimelineSlider *)self bottomAnchor];
  v37 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintGreaterThanOrEqualToAnchor:v38];

  v40 = NSStringFromSelector("remainingTimeLabelBottomAnchorLayoutConstraint");
  [v39 setIdentifier:v40];

  [v39 setActive:1];
  [(VMPlayerTimelineSlider *)self setRemainingTimeLabelBottomAnchorLayoutConstraint:v39];
  v41 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  v42 = [v41 firstBaselineAnchor];
  v43 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  v44 = [v43 firstBaselineAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];

  [v45 setActive:1];
}

- (void)unloadConstraints
{
  v15.receiver = self;
  v15.super_class = VMPlayerTimelineSlider;
  [(VMPlayerTimelineSlider *)&v15 unloadConstraints];
  v3 = [(VMPlayerTimelineSlider *)self sliderBottomAnchorLayoutConstraint];
  [v3 setActive:0];

  v4 = [(VMPlayerTimelineSlider *)self sliderLeadingAnchorLayoutConstraint];
  [v4 setActive:0];

  v5 = [(VMPlayerTimelineSlider *)self sliderTopAnchorLayoutConstraint];
  [v5 setActive:0];

  v6 = [(VMPlayerTimelineSlider *)self sliderTrailingAnchorLayoutConstraint];
  [v6 setActive:0];

  v7 = [(VMPlayerTimelineSlider *)self elapsedTimeLabelBottomAnchorLayoutConstraint];
  [v7 setActive:0];

  v8 = [(VMPlayerTimelineSlider *)self elapsedTimeLabelLeadingAnchorLayoutConstraint];
  [v8 setActive:0];

  v9 = [(VMPlayerTimelineSlider *)self elapsedTimeLabelFirstBaselineAnchorLayoutConstraint];
  [v9 setActive:0];

  v10 = [(VMPlayerTimelineSlider *)self elapsedTimeLabelTrailingAnchorLayoutConstraint];
  [v10 setActive:0];

  v11 = [(VMPlayerTimelineSlider *)self remainingTimeLabelBottomAnchorLayoutConstraint];
  [v11 setActive:0];

  v12 = [(VMPlayerTimelineSlider *)self remainingTimeLabelLeadingAnchorLayoutConstraint];
  [v12 setActive:0];

  v13 = [(VMPlayerTimelineSlider *)self remainingTimeLabelFirstBaselineAnchorLayoutConstraint];
  [v13 setActive:0];

  v14 = [(VMPlayerTimelineSlider *)self remainingTimeLabelTrailingAnchorLayoutConstraint];
  [v14 setActive:0];
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
  v5 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  [v5 setFont:v4];

  v6 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  v7 = [v6 font];
  v8 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  [v8 setFont:v7];
}

- (id)localizedStringForTimeInterval:(double)a3 timeFormatter:(id)a4
{
  v4 = [a4 stringFromSeconds:a3];

  return v4;
}

- (void)updateElapsedTimeLabelText
{
  v5 = [(VMPlayerTimelineSlider *)self timeFormatter];
  [v5 setStyle:1];
  [(VMPlayerTimelineSlider *)self elapsedTime];
  v3 = [(VMPlayerTimelineSlider *)self localizedStringForTimeInterval:v5 timeFormatter:?];
  v4 = [(VMPlayerTimelineSlider *)self elapsedTimeLabel];
  [v4 setText:v3];
}

- (void)updateRemainingTimeLabelText
{
  v5 = [(VMPlayerTimelineSlider *)self timeFormatter];
  [v5 setStyle:2];
  [(VMPlayerTimelineSlider *)self remainingTime];
  v3 = [(VMPlayerTimelineSlider *)self localizedStringForTimeInterval:v5 timeFormatter:?];
  v4 = [(VMPlayerTimelineSlider *)self remainingTimeLabel];
  [v4 setText:v3];
}

- (void)detailSliderTrackingDidBegin:(id)a3
{
  v4 = [(VMPlayerTimelineSlider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VMPlayerTimelineSlider *)self delegate];
    [v6 playerTimelineSliderScrubbingDidBegin:self];
  }
}

- (void)detailSliderTrackingDidCancel:(id)a3
{
  v4 = [(VMPlayerTimelineSlider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VMPlayerTimelineSlider *)self delegate];
    [v6 playerTimelineSliderScrubbingDidCancel:self];
  }
}

- (void)detailSliderTrackingDidEnd:(id)a3
{
  v4 = [(VMPlayerTimelineSlider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VMPlayerTimelineSlider *)self delegate];
    [v6 playerTimelineSliderScrubbingDidEnd:self];
  }
}

- (void)detailSlider:(id)a3 didChangeElapsedTime:(double)a4
{
  v6 = [(VMPlayerTimelineSlider *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VMPlayerTimelineSlider *)self delegate];
    [v8 playerTimelineSlider:self didChangeElapsedTime:a4];
  }
}

- (double)elapsedTimeLabelFirstBaselineAnchorLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIFootnoteShortFont];
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

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
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

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