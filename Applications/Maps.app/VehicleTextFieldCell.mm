@interface VehicleTextFieldCell
- (VehicleTextFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
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
  rightView = [(UITextField *)self->_textField rightView];
  [rightView setAccessibilityIdentifier:@"RightView"];

  leftView = [(UITextField *)self->_textField leftView];
  [leftView setAccessibilityIdentifier:@"LeftView"];

  [(VehicleTextFieldCell *)self addSubview:self->_textField];
  contentView = [(VehicleTextFieldCell *)self contentView];
  [contentView setUserInteractionEnabled:0];

  leadingAnchor = [(UITextField *)self->_textField leadingAnchor];
  leadingAnchor2 = [(VehicleTextFieldCell *)self leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v23[0] = v20;
  trailingAnchor = [(UITextField *)self->_textField trailingAnchor];
  trailingAnchor2 = [(VehicleTextFieldCell *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v23[1] = v12;
  topAnchor = [(UITextField *)self->_textField topAnchor];
  topAnchor2 = [(VehicleTextFieldCell *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[2] = v15;
  bottomAnchor = [(UITextField *)self->_textField bottomAnchor];
  bottomAnchor2 = [(VehicleTextFieldCell *)self bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[3] = v18;
  v19 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (VehicleTextFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = VehicleTextFieldCell;
  v4 = [(VehicleTextFieldCell *)&v7 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(VehicleTextFieldCell *)v4 _commonInit];
    [(VehicleTextFieldCell *)v5 setAccessibilityIdentifier:@"VehicleTextFieldCell"];
  }

  return v5;
}

@end