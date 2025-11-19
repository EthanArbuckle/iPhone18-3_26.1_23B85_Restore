@interface CapsuleLabel
- (CapsuleLabel)initWithFrame:(CGRect)a3;
- (NSString)text;
- (UIColor)capsuleColor;
- (UIColor)textColor;
- (void)setCapsuleColor:(id)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setUp;
@end

@implementation CapsuleLabel

- (CapsuleLabel)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CapsuleLabel;
  v3 = [(CapsuleLabel *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v4 = [(CapsuleLabel *)self capsule];
  v5 = [v4 layer];
  [v5 setCornerRadius:4.0];

  v6 = [(CapsuleLabel *)self capsule];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(CapsuleLabel *)self capsule];
  [(CapsuleLabel *)self addSubview:v7];

  v8 = objc_opt_new();
  [(CapsuleLabel *)self setTextLabel:v8];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v10 = [(CapsuleLabel *)self textLabel];
  [v10 setFont:v9];

  v11 = [(CapsuleLabel *)self textLabel];
  [v11 setNumberOfLines:0];

  v12 = +[UIColor labelColor];
  v13 = [(CapsuleLabel *)self textLabel];
  [v13 setTextColor:v12];

  v14 = [(CapsuleLabel *)self textLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(CapsuleLabel *)self textLabel];
  [(CapsuleLabel *)self addSubview:v15];

  v56 = [(CapsuleLabel *)self textLabel];
  v54 = [v56 leadingAnchor];
  v55 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  v53 = [v55 leadingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:8.0];
  v57[0] = v52;
  v51 = [(CapsuleLabel *)self textLabel];
  v49 = [v51 trailingAnchor];
  v50 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  v48 = [v50 trailingAnchor];
  v47 = [v49 constraintLessThanOrEqualToAnchor:v48 constant:-8.0];
  v57[1] = v47;
  v46 = [(CapsuleLabel *)self textLabel];
  v44 = [v46 topAnchor];
  v45 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  v43 = [v45 topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:8.0];
  v57[2] = v42;
  v41 = [(CapsuleLabel *)self textLabel];
  v39 = [v41 bottomAnchor];
  v40 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  v38 = [v40 bottomAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:-8.0];
  v57[3] = v37;
  v36 = [(CapsuleLabel *)self capsule];
  v34 = [v36 leadingAnchor];
  v35 = [(CapsuleLabel *)self textLabel];
  v33 = [v35 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:-8.0];
  v57[4] = v32;
  v31 = [(CapsuleLabel *)self capsule];
  v29 = [v31 trailingAnchor];
  v30 = [(CapsuleLabel *)self textLabel];
  v28 = [v30 trailingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 constant:8.0];
  v57[5] = v27;
  v26 = [(CapsuleLabel *)self capsule];
  v16 = [v26 topAnchor];
  v17 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:4.0];
  v57[6] = v19;
  v20 = [(CapsuleLabel *)self capsule];
  v21 = [v20 bottomAnchor];
  v22 = [(CapsuleLabel *)self safeAreaLayoutGuide];
  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:-4.0];
  v57[7] = v24;
  v25 = [NSArray arrayWithObjects:v57 count:8];
  [NSLayoutConstraint activateConstraints:v25];
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(CapsuleLabel *)self textLabel];
  [v5 setText:v4];
}

- (NSString)text
{
  v2 = [(CapsuleLabel *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = [(CapsuleLabel *)self textLabel];
  [v5 setTextColor:v4];
}

- (UIColor)textColor
{
  v2 = [(CapsuleLabel *)self textLabel];
  v3 = [v2 textColor];

  return v3;
}

- (void)setCapsuleColor:(id)a3
{
  v4 = a3;
  v5 = [(CapsuleLabel *)self capsule];
  [v5 setBackgroundColor:v4];

  v6 = +[UIColor systemBackgroundColor];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = +[UIColor secondaryLabelColor];
    v9 = [v8 CGColor];
    v10 = [(CapsuleLabel *)self capsule];
    v11 = [v10 layer];
    [v11 setBorderColor:v9];

    v16 = +[UIScreen mainScreen];
    [v16 scale];
    v13 = 1.0 / v12;
    v14 = [(CapsuleLabel *)self capsule];
    v15 = [v14 layer];
    [v15 setBorderWidth:v13];
  }

  else
  {
    v16 = [(CapsuleLabel *)self capsule];
    v14 = [v16 layer];
    [v14 setBorderWidth:0.0];
  }
}

- (UIColor)capsuleColor
{
  v2 = [(CapsuleLabel *)self capsule];
  v3 = [v2 backgroundColor];

  return v3;
}

@end