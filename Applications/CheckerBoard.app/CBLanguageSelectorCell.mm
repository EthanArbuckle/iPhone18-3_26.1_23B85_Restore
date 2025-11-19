@interface CBLanguageSelectorCell
- (CBLanguageSelectorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setMinimumHeight:(double)a3;
@end

@implementation CBLanguageSelectorCell

- (CBLanguageSelectorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v40.receiver = self;
  v40.super_class = CBLanguageSelectorCell;
  v4 = [(CBLanguageSelectorCell *)&v40 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    [(CBLanguageSelectorCell *)v4 setTitleLabel:v5];

    v6 = [(CBLanguageSelectorCell *)v4 titleLabel];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(CBLanguageSelectorCell *)v4 titleLabel];
    [v7 setNumberOfLines:0];

    v8 = [(CBLanguageSelectorCell *)v4 contentView];
    v9 = [(CBLanguageSelectorCell *)v4 titleLabel];
    [v8 addSubview:v9];

    v10 = +[UIColor secondarySystemBackgroundColor];
    [(CBLanguageSelectorCell *)v4 setBackgroundColor:v10];

    v39 = [(CBLanguageSelectorCell *)v4 titleLabel];
    v37 = [v39 leadingAnchor];
    v38 = [(CBLanguageSelectorCell *)v4 contentView];
    v36 = [v38 layoutMarginsGuide];
    v35 = [v36 leadingAnchor];
    v34 = [v37 constraintEqualToAnchor:v35];
    v41[0] = v34;
    v33 = [(CBLanguageSelectorCell *)v4 titleLabel];
    v31 = [v33 trailingAnchor];
    v32 = [(CBLanguageSelectorCell *)v4 contentView];
    v30 = [v32 layoutMarginsGuide];
    v29 = [v30 trailingAnchor];
    v28 = [v31 constraintEqualToAnchor:v29];
    v41[1] = v28;
    v27 = [(CBLanguageSelectorCell *)v4 titleLabel];
    v25 = [v27 topAnchor];
    v26 = [(CBLanguageSelectorCell *)v4 contentView];
    v24 = [v26 topAnchor];
    v23 = [v25 constraintGreaterThanOrEqualToAnchor:v24];
    v41[2] = v23;
    v22 = [(CBLanguageSelectorCell *)v4 titleLabel];
    v21 = [v22 bottomAnchor];
    v11 = [(CBLanguageSelectorCell *)v4 contentView];
    v12 = [v11 bottomAnchor];
    v13 = [v21 constraintLessThanOrEqualToAnchor:v12];
    v41[3] = v13;
    v14 = [(CBLanguageSelectorCell *)v4 titleLabel];
    v15 = [v14 centerYAnchor];
    v16 = [(CBLanguageSelectorCell *)v4 contentView];
    v17 = [v16 centerYAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v41[4] = v18;
    v19 = [NSArray arrayWithObjects:v41 count:5];
    [NSLayoutConstraint activateConstraints:v19];
  }

  return v4;
}

- (void)setMinimumHeight:(double)a3
{
  v5 = [(CBLanguageSelectorCell *)self heightConstraint];
  if (!v5 || (v6 = v5, -[CBLanguageSelectorCell heightConstraint](self, "heightConstraint"), v7 = objc_claimAutoreleasedReturnValue(), [v7 constant], v9 = v8, v7, v6, v9 != a3))
  {
    v10 = [(CBLanguageSelectorCell *)self heightConstraint];
    [v10 setActive:0];

    v11 = [(CBLanguageSelectorCell *)self contentView];
    v12 = [v11 heightAnchor];
    v13 = [v12 constraintGreaterThanOrEqualToConstant:a3];
    [(CBLanguageSelectorCell *)self setHeightConstraint:v13];

    v14 = [(CBLanguageSelectorCell *)self heightConstraint];
    [v14 setActive:1];

    [(CBLanguageSelectorCell *)self setNeedsLayout];
  }
}

@end