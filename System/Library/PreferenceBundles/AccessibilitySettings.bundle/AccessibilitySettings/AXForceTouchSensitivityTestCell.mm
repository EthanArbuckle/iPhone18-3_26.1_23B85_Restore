@interface AXForceTouchSensitivityTestCell
- (AXForceTouchSensitivityTestCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation AXForceTouchSensitivityTestCell

- (AXForceTouchSensitivityTestCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v32.receiver = self;
  v32.super_class = AXForceTouchSensitivityTestCell;
  v5 = [(AXForceTouchSensitivityTestCell *)&v32 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [UIImageView alloc];
    v7 = AXFlowersTestImage();
    v8 = [v6 initWithImage:v7];

    flowersView = v5->_flowersView;
    v5->_flowersView = v8;
    v31 = v8;

    layer = [(UIImageView *)v5->_flowersView layer];
    [layer setCornerCurve:kCACornerCurveContinuous];

    layer2 = [(UIImageView *)v5->_flowersView layer];
    [layer2 setCornerRadius:20.0];

    layer3 = [(UIImageView *)v5->_flowersView layer];
    [layer3 setMasksToBounds:1];

    contentView = [(AXForceTouchSensitivityTestCell *)v5 contentView];
    [contentView addSubview:v5->_flowersView];

    [(UIImageView *)v5->_flowersView setContentMode:2];
    [(UIImageView *)v5->_flowersView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(UIImageView *)v5->_flowersView topAnchor];
    contentView2 = [(AXForceTouchSensitivityTestCell *)v5 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:25.0];
    v33[0] = v27;
    bottomAnchor = [(UIImageView *)v5->_flowersView bottomAnchor];
    contentView3 = [(AXForceTouchSensitivityTestCell *)v5 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-25.0];
    v33[1] = v14;
    centerXAnchor = [(UIImageView *)v5->_flowersView centerXAnchor];
    contentView4 = [(AXForceTouchSensitivityTestCell *)v5 contentView];
    centerXAnchor2 = [contentView4 centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v33[2] = v18;
    widthAnchor = [(UIImageView *)v5->_flowersView widthAnchor];
    heightAnchor = [(UIImageView *)v5->_flowersView heightAnchor];
    v21 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v33[3] = v21;
    v22 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }

  return v5;
}

- (id)accessibilityLabel
{
  if (AXDeviceHasLongPress3dTouch())
  {
    v2 = @"HAPTIC_TOUCH_SENSITIVITY_CELL_LABEL";
  }

  else
  {
    v2 = @"FORCE_TOUCH_SENSITIVITY_CELL_LABEL";
  }

  return settingsLocString(v2, @"Accessibility");
}

- (id)accessibilityHint
{
  if (AXDeviceHasLongPress3dTouch())
  {
    v2 = @"HAPTIC_TOUCH_SENSITIVITY_CELL_HINT";
  }

  else
  {
    v2 = @"FORCE_TOUCH_SENSITIVITY_CELL_HINT";
  }

  return settingsLocString(v2, @"Accessibility");
}

@end