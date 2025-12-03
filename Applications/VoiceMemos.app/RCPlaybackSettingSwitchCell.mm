@interface RCPlaybackSettingSwitchCell
- (BOOL)accessibilityActivate;
- (NSString)title;
- (RCPlaybackSettingSwitchCell)initWithFrame:(CGRect)frame;
- (UIColor)imageTint;
- (UIImage)image;
- (id)_cellAccessoriesWithSwitchState:(BOOL)state;
- (unint64_t)accessibilityTraits;
- (void)_didToggleSwitch;
- (void)setImage:(id)image;
- (void)setImageTint:(id)tint;
- (void)setSwitchState:(BOOL)state;
- (void)setTitle:(id)title;
@end

@implementation RCPlaybackSettingSwitchCell

- (RCPlaybackSettingSwitchCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = RCPlaybackSettingSwitchCell;
  v3 = [(RCPlaybackSettingSwitchCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIListContentConfiguration cellConfiguration];
    [(RCPlaybackSettingSwitchCell *)v3 setContentConfiguration:v4];

    v5 = [(RCPlaybackSettingSwitchCell *)v3 _cellAccessoriesWithSwitchState:0];
    [(RCPlaybackSettingSwitchCell *)v3 setAccessories:v5];
  }

  return v3;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  contentConfiguration = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  [contentConfiguration setText:titleCopy];

  [(RCPlaybackSettingSwitchCell *)self setContentConfiguration:contentConfiguration];
}

- (NSString)title
{
  contentConfiguration = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  text = [contentConfiguration text];

  return text;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  contentConfiguration = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  [contentConfiguration setImage:imageCopy];

  [(RCPlaybackSettingSwitchCell *)self setContentConfiguration:contentConfiguration];
}

- (UIImage)image
{
  contentConfiguration = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  image = [contentConfiguration image];

  return image;
}

- (void)setImageTint:(id)tint
{
  tintCopy = tint;
  contentConfiguration = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  imageProperties = [contentConfiguration imageProperties];
  [imageProperties setTintColor:tintCopy];

  [(RCPlaybackSettingSwitchCell *)self setContentConfiguration:contentConfiguration];
}

- (UIColor)imageTint
{
  contentConfiguration = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  imageProperties = [contentConfiguration imageProperties];
  tintColor = [imageProperties tintColor];

  return tintColor;
}

- (void)setSwitchState:(BOOL)state
{
  v4 = self->_switch;
  if (v4)
  {

    [(UISwitch *)v4 setOn:state];
  }

  else
  {
    v5 = [(RCPlaybackSettingSwitchCell *)self _cellAccessoriesWithSwitchState:state];
    [(RCPlaybackSettingSwitchCell *)self setAccessories:v5];
  }
}

- (id)_cellAccessoriesWithSwitchState:(BOOL)state
{
  stateCopy = state;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(UISwitch);
  v7 = self->_switch;
  self->_switch = v6;

  [(UISwitch *)self->_switch setOn:stateCopy];
  [(UISwitch *)self->_switch addTarget:self action:"_didToggleSwitch" forControlEvents:4096];
  [(UISwitch *)self->_switch setIsAccessibilityElement:0];
  v8 = [[UICellAccessoryCustomView alloc] initWithCustomView:self->_switch placement:1];
  [v8 setDisplayedState:0];
  [v5 addObject:v8];
  v9 = [v5 copy];

  return v9;
}

- (void)_didToggleSwitch
{
  cellActionsDelegate = [(RCPlaybackSettingCell *)self cellActionsDelegate];
  [cellActionsDelegate didToggleSwitch:self toState:{-[UISwitch isOn](self->_switch, "isOn")}];
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = RCPlaybackSettingSwitchCell;
  accessibilityTraits = [(RCPlaybackSettingSwitchCell *)&v5 accessibilityTraits];
  return [(UISwitch *)self->_switch accessibilityTraits]| accessibilityTraits;
}

- (BOOL)accessibilityActivate
{
  [(RCPlaybackSettingSwitchCell *)self setSwitchState:[(RCPlaybackSettingSwitchCell *)self isSwitchON]^ 1];
  [(RCPlaybackSettingSwitchCell *)self _didToggleSwitch];
  return 1;
}

@end