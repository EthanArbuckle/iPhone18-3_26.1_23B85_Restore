@interface RCPlaybackSettingSliderCell
- (RCPlaybackSettingSliderCell)initWithFrame:(CGRect)a3;
- (void)_classSpecificInit;
- (void)_updateSliderValue;
- (void)layoutMarginsDidChange;
- (void)setSliderValue:(double)a3;
- (void)updateConstraints;
@end

@implementation RCPlaybackSettingSliderCell

- (void)_classSpecificInit
{
  [(RCPlaybackSettingSliderCell *)self addSubview:self->_slider];
  [(UISlider *)self->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(RCPlaybackSettingSliderCell *)self contentView];
  [v3 directionalLayoutMargins];
  v5 = v4;

  v6 = [(UISlider *)self->_slider leadingAnchor];
  v7 = [(RCPlaybackSettingSliderCell *)self safeAreaLayoutGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:v5];
  contentLeadingConstraint = self->_contentLeadingConstraint;
  self->_contentLeadingConstraint = v9;

  v11 = [(UISlider *)self->_slider trailingAnchor];
  v12 = [(RCPlaybackSettingSliderCell *)self safeAreaLayoutGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-v5];
  contentTrailingConstraint = self->_contentTrailingConstraint;
  self->_contentTrailingConstraint = v14;

  v16 = self->_contentTrailingConstraint;
  v26[0] = self->_contentLeadingConstraint;
  v26[1] = v16;
  v17 = [(UISlider *)self->_slider topAnchor];
  v18 = [(RCPlaybackSettingSliderCell *)self safeAreaLayoutGuide];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v26[2] = v20;
  v21 = [(UISlider *)self->_slider bottomAnchor];
  v22 = [(RCPlaybackSettingSliderCell *)self safeAreaLayoutGuide];
  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v26[3] = v24;
  v25 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v25];
}

- (RCPlaybackSettingSliderCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = RCPlaybackSettingSliderCell;
  v3 = [(RCPlaybackSettingSliderCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIListContentConfiguration cellConfiguration];
    [(RCPlaybackSettingSliderCell *)v3 setContentConfiguration:v4];
    v5 = [objc_opt_class() createSlider];
    [(RCPlaybackSettingSliderCell *)v3 setSlider:v5];

    v6 = [(RCPlaybackSettingSliderCell *)v3 slider];
    [v6 addTarget:v3 action:"_updateSliderValue" forControlEvents:4096];

    [(RCPlaybackSettingSliderCell *)v3 _classSpecificInit];
  }

  return v3;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = RCPlaybackSettingSliderCell;
  [(RCPlaybackSettingSliderCell *)&v3 layoutMarginsDidChange];
  [(RCPlaybackSettingSliderCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = RCPlaybackSettingSliderCell;
  [(RCPlaybackSettingSliderCell *)&v6 updateConstraints];
  v3 = [(RCPlaybackSettingSliderCell *)self contentView];
  [v3 directionalLayoutMargins];
  v5 = v4;

  [(NSLayoutConstraint *)self->_contentLeadingConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_contentTrailingConstraint setConstant:-v5];
}

- (void)setSliderValue:(double)a3
{
  v4 = a3;
  *&a3 = v4;
  [(UISlider *)self->_slider setValue:a3];
  self->_currentSliderValue = v4;
}

- (void)_updateSliderValue
{
  [(UISlider *)self->_slider value];
  v4 = v3;
  if (self->_currentSliderValue != v3)
  {
    v5 = [(RCPlaybackSettingCell *)self cellActionsDelegate];
    [v5 didUpdateSlider:self toValue:v4];

    self->_currentSliderValue = v4;
  }
}

@end