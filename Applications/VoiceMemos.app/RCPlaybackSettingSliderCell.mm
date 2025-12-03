@interface RCPlaybackSettingSliderCell
- (RCPlaybackSettingSliderCell)initWithFrame:(CGRect)frame;
- (void)_classSpecificInit;
- (void)_updateSliderValue;
- (void)layoutMarginsDidChange;
- (void)setSliderValue:(double)value;
- (void)updateConstraints;
@end

@implementation RCPlaybackSettingSliderCell

- (void)_classSpecificInit
{
  [(RCPlaybackSettingSliderCell *)self addSubview:self->_slider];
  [(UISlider *)self->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(RCPlaybackSettingSliderCell *)self contentView];
  [contentView directionalLayoutMargins];
  v5 = v4;

  leadingAnchor = [(UISlider *)self->_slider leadingAnchor];
  safeAreaLayoutGuide = [(RCPlaybackSettingSliderCell *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v5];
  contentLeadingConstraint = self->_contentLeadingConstraint;
  self->_contentLeadingConstraint = v9;

  trailingAnchor = [(UISlider *)self->_slider trailingAnchor];
  safeAreaLayoutGuide2 = [(RCPlaybackSettingSliderCell *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v5];
  contentTrailingConstraint = self->_contentTrailingConstraint;
  self->_contentTrailingConstraint = v14;

  v16 = self->_contentTrailingConstraint;
  v26[0] = self->_contentLeadingConstraint;
  v26[1] = v16;
  topAnchor = [(UISlider *)self->_slider topAnchor];
  safeAreaLayoutGuide3 = [(RCPlaybackSettingSliderCell *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v20;
  bottomAnchor = [(UISlider *)self->_slider bottomAnchor];
  safeAreaLayoutGuide4 = [(RCPlaybackSettingSliderCell *)self safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v24;
  v25 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v25];
}

- (RCPlaybackSettingSliderCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = RCPlaybackSettingSliderCell;
  v3 = [(RCPlaybackSettingSliderCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIListContentConfiguration cellConfiguration];
    [(RCPlaybackSettingSliderCell *)v3 setContentConfiguration:v4];
    createSlider = [objc_opt_class() createSlider];
    [(RCPlaybackSettingSliderCell *)v3 setSlider:createSlider];

    slider = [(RCPlaybackSettingSliderCell *)v3 slider];
    [slider addTarget:v3 action:"_updateSliderValue" forControlEvents:4096];

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
  contentView = [(RCPlaybackSettingSliderCell *)self contentView];
  [contentView directionalLayoutMargins];
  v5 = v4;

  [(NSLayoutConstraint *)self->_contentLeadingConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_contentTrailingConstraint setConstant:-v5];
}

- (void)setSliderValue:(double)value
{
  valueCopy = value;
  *&value = valueCopy;
  [(UISlider *)self->_slider setValue:value];
  self->_currentSliderValue = valueCopy;
}

- (void)_updateSliderValue
{
  [(UISlider *)self->_slider value];
  v4 = v3;
  if (self->_currentSliderValue != v3)
  {
    cellActionsDelegate = [(RCPlaybackSettingCell *)self cellActionsDelegate];
    [cellActionsDelegate didUpdateSlider:self toValue:v4];

    self->_currentSliderValue = v4;
  }
}

@end