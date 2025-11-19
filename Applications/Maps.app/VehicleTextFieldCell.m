@interface VehicleTextFieldCell
- (VehicleTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_commonInit;
@end

@implementation VehicleTextFieldCell

- (void)_commonInit
{
  v3 = objc_opt_new();
  textField = self->_textField;
  self->_textField = v3;

  [(UITextField *)self->_textField setAccessibilityIdentifier:@"TextField"];
  [(UITextField *)self->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_textField setAccessibilityIdentifier:@"TextField"];
  v5 = +[UIColor labelColor];
  [(UITextField *)self->_textField setTextColor:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UITextField *)self->_textField setFont:v6];

  [(UITextField *)self->_textField setClearButtonMode:3];
  v7 = [(UITextField *)self->_textField rightView];
  [v7 setAccessibilityIdentifier:@"RightView"];

  v8 = [(UITextField *)self->_textField leftView];
  [v8 setAccessibilityIdentifier:@"LeftView"];

  [(VehicleTextFieldCell *)self addSubview:self->_textField];
  v9 = [(VehicleTextFieldCell *)self contentView];
  [v9 setUserInteractionEnabled:0];

  v22 = [(UITextField *)self->_textField leadingAnchor];
  v21 = [(VehicleTextFieldCell *)self leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:16.0];
  v23[0] = v20;
  v10 = [(UITextField *)self->_textField trailingAnchor];
  v11 = [(VehicleTextFieldCell *)self trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-16.0];
  v23[1] = v12;
  v13 = [(UITextField *)self->_textField topAnchor];
  v14 = [(VehicleTextFieldCell *)self topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v23[2] = v15;
  v16 = [(UITextField *)self->_textField bottomAnchor];
  v17 = [(VehicleTextFieldCell *)self bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v23[3] = v18;
  v19 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (VehicleTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = VehicleTextFieldCell;
  v4 = [(VehicleTextFieldCell *)&v7 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(VehicleTextFieldCell *)v4 _commonInit];
    [(VehicleTextFieldCell *)v5 setAccessibilityIdentifier:@"VehicleTextFieldCell"];
  }

  return v5;
}

@end