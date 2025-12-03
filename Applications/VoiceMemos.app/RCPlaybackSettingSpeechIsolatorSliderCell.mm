@interface RCPlaybackSettingSpeechIsolatorSliderCell
- (void)_classSpecificInit;
- (void)_setupConstraints;
- (void)_styleSliderValueLabel;
- (void)_updateSliderValue;
- (void)setSliderValue:(double)value;
@end

@implementation RCPlaybackSettingSpeechIsolatorSliderCell

- (void)_classSpecificInit
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  containerView = self->_containerView;
  self->_containerView = v7;

  v9 = self->_containerView;
  slider = [(RCPlaybackSettingSliderCell *)self slider];
  [(UIView *)v9 addSubview:slider];

  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  LOBYTE(slider) = [v11 playbackSettingsSliderHasImages];

  if ((slider & 1) == 0)
  {
    v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    spacerView = self->_spacerView;
    self->_spacerView = v12;

    [(UIView *)self->_containerView addSubview:self->_spacerView];
  }

  v14 = objc_opt_new();
  valueLabel = self->_valueLabel;
  self->_valueLabel = v14;

  slider2 = [(RCPlaybackSettingSliderCell *)self slider];
  [slider2 value];
  v18 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self _percentTextForValue:v17];
  [(UILabel *)self->_valueLabel setText:v18];

  [(RCPlaybackSettingSpeechIsolatorSliderCell *)self _styleSliderValueLabel];
  [(UIView *)self->_containerView addSubview:self->_valueLabel];
  [(RCPlaybackSettingSpeechIsolatorSliderCell *)self addSubview:self->_containerView];

  [(RCPlaybackSettingSpeechIsolatorSliderCell *)self _setupConstraints];
}

- (void)_styleSliderValueLabel
{
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  -[UILabel setTextAlignment:](self->_valueLabel, "setTextAlignment:", [v6 playbackSettingsSliderValueTextAlignment]);
  playbackSettingsSliderValueFont = [v6 playbackSettingsSliderValueFont];
  [(UILabel *)self->_valueLabel setFont:playbackSettingsSliderValueFont];

  playbackSettingsSliderMaximumContentSizeCategory = [v6 playbackSettingsSliderMaximumContentSizeCategory];
  [(UILabel *)self->_valueLabel setMaximumContentSizeCategory:playbackSettingsSliderMaximumContentSizeCategory];

  playbackSettingsSliderValueTextColor = [v6 playbackSettingsSliderValueTextColor];
  [(UILabel *)self->_valueLabel setTextColor:playbackSettingsSliderValueTextColor];

  [(UILabel *)self->_valueLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_valueLabel setAdjustsFontForContentSizeCategory:1];
}

- (void)setSliderValue:(double)value
{
  v6.receiver = self;
  v6.super_class = RCPlaybackSettingSpeechIsolatorSliderCell;
  [(RCPlaybackSettingSliderCell *)&v6 setSliderValue:?];
  v5 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self _percentTextForValue:value];
  [(UILabel *)self->_valueLabel setText:v5];
}

- (void)_updateSliderValue
{
  [(RCPlaybackSettingSliderCell *)self sliderValue];
  v3 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self _percentTextForValue:?];
  [(UILabel *)self->_valueLabel setText:v3];

  v4.receiver = self;
  v4.super_class = RCPlaybackSettingSpeechIsolatorSliderCell;
  [(RCPlaybackSettingSliderCell *)&v4 _updateSliderValue];
}

- (void)_setupConstraints
{
  v70 = +[RCRecorderStyleProvider sharedStyleProvider];
  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self contentView];
  [contentView directionalLayoutMargins];
  v5 = v4;

  leadingAnchor = [(UIView *)self->_containerView leadingAnchor];
  safeAreaLayoutGuide = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v5];
  [(RCPlaybackSettingSliderCell *)self setContentLeadingConstraint:v9];

  trailingAnchor = [(UIView *)self->_containerView trailingAnchor];
  safeAreaLayoutGuide2 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v5];
  [(RCPlaybackSettingSliderCell *)self setContentTrailingConstraint:v13];

  contentLeadingConstraint = [(RCPlaybackSettingSliderCell *)self contentLeadingConstraint];
  v73[0] = contentLeadingConstraint;
  contentTrailingConstraint = [(RCPlaybackSettingSliderCell *)self contentTrailingConstraint];
  v73[1] = contentTrailingConstraint;
  topAnchor = [(UIView *)self->_containerView topAnchor];
  safeAreaLayoutGuide3 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v73[2] = v17;
  bottomAnchor = [(UIView *)self->_containerView bottomAnchor];
  safeAreaLayoutGuide4 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v73[3] = v21;
  v22 = [NSArray arrayWithObjects:v73 count:4];
  [NSLayoutConstraint activateConstraints:v22];

  slider = [(RCPlaybackSettingSliderCell *)self slider];
  [slider setTranslatesAutoresizingMaskIntoConstraints:0];

  slider2 = [(RCPlaybackSettingSliderCell *)self slider];
  leadingAnchor3 = [slider2 leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_containerView leadingAnchor];
  v63 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v72[0] = v63;
  slider3 = [(RCPlaybackSettingSliderCell *)self slider];
  topAnchor3 = [slider3 topAnchor];
  topAnchor4 = [(UIView *)self->_containerView topAnchor];
  v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v72[1] = v26;
  slider4 = [(RCPlaybackSettingSliderCell *)self slider];
  bottomAnchor3 = [slider4 bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_containerView bottomAnchor];
  v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v72[2] = v30;
  v31 = [NSArray arrayWithObjects:v72 count:3];
  [NSLayoutConstraint activateConstraints:v31];

  if (([v70 playbackSettingsSliderHasImages] & 1) == 0)
  {
    [(UIView *)self->_spacerView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor5 = [(UIView *)self->_spacerView topAnchor];
    topAnchor6 = [(UIView *)self->_containerView topAnchor];
    v34 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [v34 setActive:1];

    bottomAnchor5 = [(UIView *)self->_spacerView bottomAnchor];
    bottomAnchor6 = [(UIView *)self->_containerView bottomAnchor];
    v37 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    [v37 setActive:1];

    leadingAnchor5 = [(UIView *)self->_spacerView leadingAnchor];
    slider5 = [(RCPlaybackSettingSliderCell *)self slider];
    trailingAnchor3 = [slider5 trailingAnchor];
    v41 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
    [v41 setActive:1];

    widthAnchor = [(UIView *)self->_spacerView widthAnchor];
    v43 = [widthAnchor constraintEqualToConstant:2.0];
    [v43 setActive:1];
  }

  [(UILabel *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = +[_TtC10VoiceMemos31RCPlaybackSettingsSliderFactory createPlaybackSpeedSlider];
  [(UIView *)self->_containerView bounds];
  v69 = v44;
  [v44 maximumValueImageRectForBounds:?];
  v46 = v45 + 11.0;
  if ([v70 playbackSettingsSliderHasImages])
  {
    slider6 = [(RCPlaybackSettingSliderCell *)self slider];
    trailingAnchor4 = [slider6 trailingAnchor];
    leadingAnchor6 = [(UILabel *)self->_valueLabel leadingAnchor];
    v50 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor6];
    [v50 setActive:1];
  }

  else
  {
    [v70 playbackSettingsValueLabelAdditionalWidth];
    v46 = v46 + v51;
    slider6 = [(UILabel *)self->_valueLabel leadingAnchor];
    trailingAnchor4 = [(UIView *)self->_spacerView trailingAnchor];
    leadingAnchor6 = [slider6 constraintEqualToAnchor:trailingAnchor4];
    [leadingAnchor6 setActive:1];
  }

  [(UILabel *)self->_valueLabel constrainWidth:v46];
  trailingAnchor5 = [(UILabel *)self->_valueLabel trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_containerView trailingAnchor];
  v54 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v71[0] = v54;
  topAnchor7 = [(UILabel *)self->_valueLabel topAnchor];
  topAnchor8 = [(UIView *)self->_containerView topAnchor];
  v57 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v71[1] = v57;
  bottomAnchor7 = [(UILabel *)self->_valueLabel bottomAnchor];
  bottomAnchor8 = [(UIView *)self->_containerView bottomAnchor];
  v60 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v71[2] = v60;
  v61 = [NSArray arrayWithObjects:v71 count:3];
  [NSLayoutConstraint activateConstraints:v61];
}

@end