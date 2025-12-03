@interface CapsuleLabel
- (CapsuleLabel)initWithFrame:(CGRect)frame;
- (NSString)text;
- (UIColor)capsuleColor;
- (UIColor)textColor;
- (void)setCapsuleColor:(id)color;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)setUp;
@end

@implementation CapsuleLabel

- (CapsuleLabel)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CapsuleLabel;
  v3 = [(CapsuleLabel *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CapsuleLabel *)v3 setUp];
    v5 = v4;
  }

  return v4;
}

- (void)setUp
{
  v3 = objc_opt_new();
  [(CapsuleLabel *)self setCapsule:v3];

  capsule = [(CapsuleLabel *)self capsule];
  layer = [capsule layer];
  [layer setCornerRadius:4.0];

  capsule2 = [(CapsuleLabel *)self capsule];
  [capsule2 setTranslatesAutoresizingMaskIntoConstraints:0];

  capsule3 = [(CapsuleLabel *)self capsule];
  [(CapsuleLabel *)self addSubview:capsule3];

  v8 = objc_opt_new();
  [(CapsuleLabel *)self setTextLabel:v8];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  textLabel = [(CapsuleLabel *)self textLabel];
  [textLabel setFont:v9];

  textLabel2 = [(CapsuleLabel *)self textLabel];
  [textLabel2 setNumberOfLines:0];

  v12 = +[UIColor labelColor];
  textLabel3 = [(CapsuleLabel *)self textLabel];
  [textLabel3 setTextColor:v12];

  textLabel4 = [(CapsuleLabel *)self textLabel];
  [textLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  textLabel5 = [(CapsuleLabel *)self textLabel];
  [(CapsuleLabel *)self addSubview:textLabel5];

  textLabel6 = [(CapsuleLabel *)self textLabel];
  leadingAnchor = [textLabel6 leadingAnchor];
  safeAreaLayoutGuide = [(CapsuleLabel *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  v57[0] = v52;
  textLabel7 = [(CapsuleLabel *)self textLabel];
  trailingAnchor = [textLabel7 trailingAnchor];
  safeAreaLayoutGuide2 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v47 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-8.0];
  v57[1] = v47;
  textLabel8 = [(CapsuleLabel *)self textLabel];
  topAnchor = [textLabel8 topAnchor];
  safeAreaLayoutGuide3 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v57[2] = v42;
  textLabel9 = [(CapsuleLabel *)self textLabel];
  bottomAnchor = [textLabel9 bottomAnchor];
  safeAreaLayoutGuide4 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  v57[3] = v37;
  capsule4 = [(CapsuleLabel *)self capsule];
  leadingAnchor3 = [capsule4 leadingAnchor];
  textLabel10 = [(CapsuleLabel *)self textLabel];
  leadingAnchor4 = [textLabel10 leadingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-8.0];
  v57[4] = v32;
  capsule5 = [(CapsuleLabel *)self capsule];
  trailingAnchor3 = [capsule5 trailingAnchor];
  textLabel11 = [(CapsuleLabel *)self textLabel];
  trailingAnchor4 = [textLabel11 trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
  v57[5] = v27;
  capsule6 = [(CapsuleLabel *)self capsule];
  topAnchor3 = [capsule6 topAnchor];
  safeAreaLayoutGuide5 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide5 topAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:4.0];
  v57[6] = v19;
  capsule7 = [(CapsuleLabel *)self capsule];
  bottomAnchor3 = [capsule7 bottomAnchor];
  safeAreaLayoutGuide6 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide6 bottomAnchor];
  v24 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-4.0];
  v57[7] = v24;
  v25 = [NSArray arrayWithObjects:v57 count:8];
  [NSLayoutConstraint activateConstraints:v25];
}

- (void)setText:(id)text
{
  textCopy = text;
  textLabel = [(CapsuleLabel *)self textLabel];
  [textLabel setText:textCopy];
}

- (NSString)text
{
  textLabel = [(CapsuleLabel *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  textLabel = [(CapsuleLabel *)self textLabel];
  [textLabel setTextColor:colorCopy];
}

- (UIColor)textColor
{
  textLabel = [(CapsuleLabel *)self textLabel];
  textColor = [textLabel textColor];

  return textColor;
}

- (void)setCapsuleColor:(id)color
{
  colorCopy = color;
  capsule = [(CapsuleLabel *)self capsule];
  [capsule setBackgroundColor:colorCopy];

  v6 = +[UIColor systemBackgroundColor];
  v7 = [colorCopy isEqual:v6];

  if (v7)
  {
    v8 = +[UIColor secondaryLabelColor];
    cGColor = [v8 CGColor];
    capsule2 = [(CapsuleLabel *)self capsule];
    layer = [capsule2 layer];
    [layer setBorderColor:cGColor];

    capsule4 = +[UIScreen mainScreen];
    [capsule4 scale];
    v13 = 1.0 / v12;
    capsule3 = [(CapsuleLabel *)self capsule];
    layer2 = [capsule3 layer];
    [layer2 setBorderWidth:v13];
  }

  else
  {
    capsule4 = [(CapsuleLabel *)self capsule];
    capsule3 = [capsule4 layer];
    [capsule3 setBorderWidth:0.0];
  }
}

- (UIColor)capsuleColor
{
  capsule = [(CapsuleLabel *)self capsule];
  backgroundColor = [capsule backgroundColor];

  return backgroundColor;
}

@end