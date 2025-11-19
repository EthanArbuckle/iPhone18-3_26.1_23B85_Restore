@interface RCPlaybackSettingSpeechIsolatorSliderCell
- (void)_classSpecificInit;
- (void)_setupConstraints;
- (void)_styleSliderValueLabel;
- (void)_updateSliderValue;
- (void)setSliderValue:(double)a3;
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
  v10 = [(RCPlaybackSettingSliderCell *)self slider];
  [(UIView *)v9 addSubview:v10];

  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  LOBYTE(v10) = [v11 playbackSettingsSliderHasImages];

  if ((v10 & 1) == 0)
  {
    v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    spacerView = self->_spacerView;
    self->_spacerView = v12;

    [(UIView *)self->_containerView addSubview:self->_spacerView];
  }

  v14 = objc_opt_new();
  valueLabel = self->_valueLabel;
  self->_valueLabel = v14;

  v16 = [(RCPlaybackSettingSliderCell *)self slider];
  [v16 value];
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
  v3 = [v6 playbackSettingsSliderValueFont];
  [(UILabel *)self->_valueLabel setFont:v3];

  v4 = [v6 playbackSettingsSliderMaximumContentSizeCategory];
  [(UILabel *)self->_valueLabel setMaximumContentSizeCategory:v4];

  v5 = [v6 playbackSettingsSliderValueTextColor];
  [(UILabel *)self->_valueLabel setTextColor:v5];

  [(UILabel *)self->_valueLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_valueLabel setAdjustsFontForContentSizeCategory:1];
}

- (void)setSliderValue:(double)a3
{
  v6.receiver = self;
  v6.super_class = RCPlaybackSettingSpeechIsolatorSliderCell;
  [(RCPlaybackSettingSliderCell *)&v6 setSliderValue:?];
  v5 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self _percentTextForValue:a3];
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
  v3 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self contentView];
  [v3 directionalLayoutMargins];
  v5 = v4;

  v6 = [(UIView *)self->_containerView leadingAnchor];
  v7 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self safeAreaLayoutGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:v5];
  [(RCPlaybackSettingSliderCell *)self setContentLeadingConstraint:v9];

  v10 = [(UIView *)self->_containerView trailingAnchor];
  v11 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self safeAreaLayoutGuide];
  v12 = [v11 trailingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:-v5];
  [(RCPlaybackSettingSliderCell *)self setContentTrailingConstraint:v13];

  v67 = [(RCPlaybackSettingSliderCell *)self contentLeadingConstraint];
  v73[0] = v67;
  v65 = [(RCPlaybackSettingSliderCell *)self contentTrailingConstraint];
  v73[1] = v65;
  v14 = [(UIView *)self->_containerView topAnchor];
  v15 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self safeAreaLayoutGuide];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v73[2] = v17;
  v18 = [(UIView *)self->_containerView bottomAnchor];
  v19 = [(RCPlaybackSettingSpeechIsolatorSliderCell *)self safeAreaLayoutGuide];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v73[3] = v21;
  v22 = [NSArray arrayWithObjects:v73 count:4];
  [NSLayoutConstraint activateConstraints:v22];

  v23 = [(RCPlaybackSettingSliderCell *)self slider];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v68 = [(RCPlaybackSettingSliderCell *)self slider];
  v66 = [v68 leadingAnchor];
  v64 = [(UIView *)self->_containerView leadingAnchor];
  v63 = [v66 constraintEqualToAnchor:v64];
  v72[0] = v63;
  v62 = [(RCPlaybackSettingSliderCell *)self slider];
  v24 = [v62 topAnchor];
  v25 = [(UIView *)self->_containerView topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v72[1] = v26;
  v27 = [(RCPlaybackSettingSliderCell *)self slider];
  v28 = [v27 bottomAnchor];
  v29 = [(UIView *)self->_containerView bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v72[2] = v30;
  v31 = [NSArray arrayWithObjects:v72 count:3];
  [NSLayoutConstraint activateConstraints:v31];

  if (([v70 playbackSettingsSliderHasImages] & 1) == 0)
  {
    [(UIView *)self->_spacerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [(UIView *)self->_spacerView topAnchor];
    v33 = [(UIView *)self->_containerView topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [(UIView *)self->_spacerView bottomAnchor];
    v36 = [(UIView *)self->_containerView bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = [(UIView *)self->_spacerView leadingAnchor];
    v39 = [(RCPlaybackSettingSliderCell *)self slider];
    v40 = [v39 trailingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    [v41 setActive:1];

    v42 = [(UIView *)self->_spacerView widthAnchor];
    v43 = [v42 constraintEqualToConstant:2.0];
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
    v47 = [(RCPlaybackSettingSliderCell *)self slider];
    v48 = [v47 trailingAnchor];
    v49 = [(UILabel *)self->_valueLabel leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    [v50 setActive:1];
  }

  else
  {
    [v70 playbackSettingsValueLabelAdditionalWidth];
    v46 = v46 + v51;
    v47 = [(UILabel *)self->_valueLabel leadingAnchor];
    v48 = [(UIView *)self->_spacerView trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v49 setActive:1];
  }

  [(UILabel *)self->_valueLabel constrainWidth:v46];
  v52 = [(UILabel *)self->_valueLabel trailingAnchor];
  v53 = [(UIView *)self->_containerView trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  v71[0] = v54;
  v55 = [(UILabel *)self->_valueLabel topAnchor];
  v56 = [(UIView *)self->_containerView topAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  v71[1] = v57;
  v58 = [(UILabel *)self->_valueLabel bottomAnchor];
  v59 = [(UIView *)self->_containerView bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  v71[2] = v60;
  v61 = [NSArray arrayWithObjects:v71 count:3];
  [NSLayoutConstraint activateConstraints:v61];
}

@end