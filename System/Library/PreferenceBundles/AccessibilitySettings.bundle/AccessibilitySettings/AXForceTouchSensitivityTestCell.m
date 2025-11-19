@interface AXForceTouchSensitivityTestCell
- (AXForceTouchSensitivityTestCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation AXForceTouchSensitivityTestCell

- (AXForceTouchSensitivityTestCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v32.receiver = self;
  v32.super_class = AXForceTouchSensitivityTestCell;
  v5 = [(AXForceTouchSensitivityTestCell *)&v32 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = [UIImageView alloc];
    v7 = AXFlowersTestImage();
    v8 = [v6 initWithImage:v7];

    flowersView = v5->_flowersView;
    v5->_flowersView = v8;
    v31 = v8;

    v10 = [(UIImageView *)v5->_flowersView layer];
    [v10 setCornerCurve:kCACornerCurveContinuous];

    v11 = [(UIImageView *)v5->_flowersView layer];
    [v11 setCornerRadius:20.0];

    v12 = [(UIImageView *)v5->_flowersView layer];
    [v12 setMasksToBounds:1];

    v13 = [(AXForceTouchSensitivityTestCell *)v5 contentView];
    [v13 addSubview:v5->_flowersView];

    [(UIImageView *)v5->_flowersView setContentMode:2];
    [(UIImageView *)v5->_flowersView setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [(UIImageView *)v5->_flowersView topAnchor];
    v30 = [(AXForceTouchSensitivityTestCell *)v5 contentView];
    v28 = [v30 topAnchor];
    v27 = [v29 constraintEqualToAnchor:v28 constant:25.0];
    v33[0] = v27;
    v25 = [(UIImageView *)v5->_flowersView bottomAnchor];
    v26 = [(AXForceTouchSensitivityTestCell *)v5 contentView];
    v24 = [v26 bottomAnchor];
    v14 = [v25 constraintEqualToAnchor:v24 constant:-25.0];
    v33[1] = v14;
    v15 = [(UIImageView *)v5->_flowersView centerXAnchor];
    v16 = [(AXForceTouchSensitivityTestCell *)v5 contentView];
    v17 = [v16 centerXAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v33[2] = v18;
    v19 = [(UIImageView *)v5->_flowersView widthAnchor];
    v20 = [(UIImageView *)v5->_flowersView heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
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