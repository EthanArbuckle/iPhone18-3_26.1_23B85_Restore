@interface ENUILongFormTextCell
- (ENUILongFormTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ENUILongFormTextCell

- (ENUILongFormTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = ENUILongFormTextCell;
  v4 = [(ENUILongFormTextCell *)&v7 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ENUILongFormTextCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = +[UIColor clearColor];
  [(ENUILongFormTextCell *)self setBackgroundColor:v3];

  v4 = +[UIColor clearColor];
  v5 = [(ENUILongFormTextCell *)self contentView];
  [v5 setBackgroundColor:v4];

  [(ENUILongFormTextCell *)self setSelectionStyle:0];
  v6 = objc_opt_new();
  [(ENUILongFormTextCell *)self setTitleLabel:v6];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = [(ENUILongFormTextCell *)self titleLabel];
  [v8 setFont:v7];

  v9 = [(ENUILongFormTextCell *)self titleLabel];
  [v9 setNumberOfLines:0];

  v10 = [(ENUILongFormTextCell *)self titleLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(ENUILongFormTextCell *)self contentView];
  v12 = [(ENUILongFormTextCell *)self titleLabel];
  [v11 addSubview:v12];

  v37 = [(ENUILongFormTextCell *)self titleLabel];
  v35 = [v37 leadingAnchor];
  v36 = [(ENUILongFormTextCell *)self contentView];
  v34 = [v36 safeAreaLayoutGuide];
  v33 = [v34 leadingAnchor];
  v32 = [v35 constraintEqualToAnchor:v33 constant:20.0];
  v38[0] = v32;
  v31 = [(ENUILongFormTextCell *)self titleLabel];
  v29 = [v31 trailingAnchor];
  v30 = [(ENUILongFormTextCell *)self contentView];
  v28 = [v30 safeAreaLayoutGuide];
  v27 = [v28 trailingAnchor];
  v26 = [v29 constraintEqualToAnchor:v27 constant:-20.0];
  v38[1] = v26;
  v25 = [(ENUILongFormTextCell *)self titleLabel];
  v23 = [v25 topAnchor];
  v24 = [(ENUILongFormTextCell *)self contentView];
  v13 = [v24 safeAreaLayoutGuide];
  v14 = [v13 topAnchor];
  v15 = [v23 constraintEqualToAnchor:v14];
  v38[2] = v15;
  v16 = [(ENUILongFormTextCell *)self titleLabel];
  v17 = [v16 bottomAnchor];
  v18 = [(ENUILongFormTextCell *)self contentView];
  v19 = [v18 safeAreaLayoutGuide];
  v20 = [v19 bottomAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];
  v38[3] = v21;
  v22 = [NSArray arrayWithObjects:v38 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = [a3 propertyForKey:PSTitleKey];
  v4 = [(ENUILongFormTextCell *)self titleLabel];
  [v4 setText:v5];
}

@end