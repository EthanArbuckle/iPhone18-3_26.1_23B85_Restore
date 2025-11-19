@interface RCPlaybackSettingSwitchCell
- (BOOL)accessibilityActivate;
- (NSString)title;
- (RCPlaybackSettingSwitchCell)initWithFrame:(CGRect)a3;
- (UIColor)imageTint;
- (UIImage)image;
- (id)_cellAccessoriesWithSwitchState:(BOOL)a3;
- (unint64_t)accessibilityTraits;
- (void)_didToggleSwitch;
- (void)setImage:(id)a3;
- (void)setImageTint:(id)a3;
- (void)setSwitchState:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation RCPlaybackSettingSwitchCell

- (RCPlaybackSettingSwitchCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = RCPlaybackSettingSwitchCell;
  v3 = [(RCPlaybackSettingSwitchCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIListContentConfiguration cellConfiguration];
    [(RCPlaybackSettingSwitchCell *)v3 setContentConfiguration:v4];

    v5 = [(RCPlaybackSettingSwitchCell *)v3 _cellAccessoriesWithSwitchState:0];
    [(RCPlaybackSettingSwitchCell *)v3 setAccessories:v5];
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  [v5 setText:v4];

  [(RCPlaybackSettingSwitchCell *)self setContentConfiguration:v5];
}

- (NSString)title
{
  v2 = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  v3 = [v2 text];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  [v5 setImage:v4];

  [(RCPlaybackSettingSwitchCell *)self setContentConfiguration:v5];
}

- (UIImage)image
{
  v2 = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  v3 = [v2 image];

  return v3;
}

- (void)setImageTint:(id)a3
{
  v4 = a3;
  v6 = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  v5 = [v6 imageProperties];
  [v5 setTintColor:v4];

  [(RCPlaybackSettingSwitchCell *)self setContentConfiguration:v6];
}

- (UIColor)imageTint
{
  v2 = [(RCPlaybackSettingSwitchCell *)self contentConfiguration];
  v3 = [v2 imageProperties];
  v4 = [v3 tintColor];

  return v4;
}

- (void)setSwitchState:(BOOL)a3
{
  v4 = self->_switch;
  if (v4)
  {

    [(UISwitch *)v4 setOn:a3];
  }

  else
  {
    v5 = [(RCPlaybackSettingSwitchCell *)self _cellAccessoriesWithSwitchState:a3];
    [(RCPlaybackSettingSwitchCell *)self setAccessories:v5];
  }
}

- (id)_cellAccessoriesWithSwitchState:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(UISwitch);
  v7 = self->_switch;
  self->_switch = v6;

  [(UISwitch *)self->_switch setOn:v3];
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
  v3 = [(RCPlaybackSettingCell *)self cellActionsDelegate];
  [v3 didToggleSwitch:self toState:{-[UISwitch isOn](self->_switch, "isOn")}];
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = RCPlaybackSettingSwitchCell;
  v3 = [(RCPlaybackSettingSwitchCell *)&v5 accessibilityTraits];
  return [(UISwitch *)self->_switch accessibilityTraits]| v3;
}

- (BOOL)accessibilityActivate
{
  [(RCPlaybackSettingSwitchCell *)self setSwitchState:[(RCPlaybackSettingSwitchCell *)self isSwitchON]^ 1];
  [(RCPlaybackSettingSwitchCell *)self _didToggleSwitch];
  return 1;
}

@end