@interface BuddyLanguageLocaleCell
- (BuddyLanguageLocaleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setMinimumHeight:(double)a3;
@end

@implementation BuddyLanguageLocaleCell

- (BuddyLanguageLocaleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v46 = self;
  v45 = a2;
  v44 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v46;
  v46 = 0;
  v42.receiver = v4;
  v42.super_class = BuddyLanguageLocaleCell;
  v46 = [(BuddyLanguageLocaleCell *)&v42 initWithStyle:v44 reuseIdentifier:location];
  objc_storeStrong(&v46, v46);
  if (v46)
  {
    v5 = objc_alloc_init(UILabel);
    [v46 setTitleLabel:v5];

    v6 = [v46 titleLabel];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [v46 titleLabel];
    [v7 setNumberOfLines:0];

    v8 = [v46 titleLabel];
    [v8 setClipsToBounds:0];

    v9 = [v46 contentView];
    v10 = [v46 titleLabel];
    [v9 addSubview:v10];

    v11 = +[UIColor secondarySystemBackgroundColor];
    [v46 setBackgroundColor:v11];

    v41 = [v46 titleLabel];
    v38 = [v41 leadingAnchor];
    v40 = [v46 contentView];
    v39 = [v40 layoutMarginsGuide];
    v37 = [v39 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:?];
    v47[0] = v36;
    v35 = [v46 titleLabel];
    v32 = [v35 trailingAnchor];
    v34 = [v46 contentView];
    v33 = [v34 layoutMarginsGuide];
    v31 = [v33 trailingAnchor];
    v30 = [v32 constraintEqualToAnchor:?];
    v47[1] = v30;
    v29 = [v46 titleLabel];
    v27 = [v29 topAnchor];
    v28 = [v46 contentView];
    v26 = [v28 topAnchor];
    v25 = [v27 constraintGreaterThanOrEqualToAnchor:?];
    v47[2] = v25;
    v24 = [v46 titleLabel];
    v12 = [v24 bottomAnchor];
    v13 = [v46 contentView];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintLessThanOrEqualToAnchor:v14];
    v47[3] = v15;
    v16 = [v46 titleLabel];
    v17 = [v16 centerYAnchor];
    v18 = [v46 contentView];
    v19 = [v18 centerYAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v47[4] = v20;
    v21 = [NSArray arrayWithObjects:v47 count:5];
    [NSLayoutConstraint activateConstraints:v21];
  }

  v22 = v46;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v46, 0);
  return v22;
}

- (void)setMinimumHeight:(double)a3
{
  v3 = [(BuddyLanguageLocaleCell *)self heightConstraint];
  v11 = 0;
  v4 = 1;
  if (v3)
  {
    v12 = [(BuddyLanguageLocaleCell *)self heightConstraint];
    v11 = 1;
    [(NSLayoutConstraint *)v12 constant];
    v4 = v5 != a3;
  }

  if (v11)
  {
  }

  if (v4)
  {
    v6 = [(BuddyLanguageLocaleCell *)self heightConstraint];
    [(NSLayoutConstraint *)v6 setActive:0];

    v7 = [(BuddyLanguageLocaleCell *)self contentView];
    v8 = [v7 heightAnchor];
    v9 = [v8 constraintGreaterThanOrEqualToConstant:a3];
    [(BuddyLanguageLocaleCell *)self setHeightConstraint:v9];

    v10 = [(BuddyLanguageLocaleCell *)self heightConstraint];
    [(NSLayoutConstraint *)v10 setActive:1];

    [(BuddyLanguageLocaleCell *)self setNeedsLayout];
  }
}

@end