@interface LanguageCell
- (LanguageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setMinimumHeight:(double)a3;
@end

@implementation LanguageCell

- (LanguageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v41.receiver = self;
  v41.super_class = LanguageCell;
  v4 = [(LanguageCell *)&v41 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    [(LanguageCell *)v4 setTitleLabel:v5];

    v6 = [(LanguageCell *)v4 titleLabel];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(LanguageCell *)v4 titleLabel];
    [v7 setNumberOfLines:0];

    v8 = [(LanguageCell *)v4 titleLabel];
    [v8 setClipsToBounds:0];

    v9 = [(LanguageCell *)v4 contentView];
    v10 = [(LanguageCell *)v4 titleLabel];
    [v9 addSubview:v10];

    v11 = +[UIColor secondarySystemBackgroundColor];
    [(LanguageCell *)v4 setBackgroundColor:v11];

    v40 = [(LanguageCell *)v4 titleLabel];
    v38 = [v40 leadingAnchor];
    v39 = [(LanguageCell *)v4 contentView];
    v37 = [v39 layoutMarginsGuide];
    v36 = [v37 leadingAnchor];
    v35 = [v38 constraintEqualToAnchor:v36];
    v42[0] = v35;
    v34 = [(LanguageCell *)v4 titleLabel];
    v32 = [v34 trailingAnchor];
    v33 = [(LanguageCell *)v4 contentView];
    v31 = [v33 layoutMarginsGuide];
    v30 = [v31 trailingAnchor];
    v29 = [v32 constraintEqualToAnchor:v30];
    v42[1] = v29;
    v28 = [(LanguageCell *)v4 titleLabel];
    v26 = [v28 topAnchor];
    v27 = [(LanguageCell *)v4 contentView];
    v25 = [v27 topAnchor];
    v24 = [v26 constraintGreaterThanOrEqualToAnchor:v25];
    v42[2] = v24;
    v23 = [(LanguageCell *)v4 titleLabel];
    v22 = [v23 bottomAnchor];
    v12 = [(LanguageCell *)v4 contentView];
    v13 = [v12 bottomAnchor];
    v14 = [v22 constraintLessThanOrEqualToAnchor:v13];
    v42[3] = v14;
    v15 = [(LanguageCell *)v4 titleLabel];
    v16 = [v15 centerYAnchor];
    v17 = [(LanguageCell *)v4 contentView];
    v18 = [v17 centerYAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v42[4] = v19;
    v20 = [NSArray arrayWithObjects:v42 count:5];
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v4;
}

- (void)setMinimumHeight:(double)a3
{
  v5 = [(LanguageCell *)self heightConstraint];
  if (!v5 || (v6 = v5, -[LanguageCell heightConstraint](self, "heightConstraint"), v7 = objc_claimAutoreleasedReturnValue(), [v7 constant], v9 = v8, v7, v6, v9 != a3))
  {
    v10 = [(LanguageCell *)self heightConstraint];
    [v10 setActive:0];

    v11 = [(LanguageCell *)self contentView];
    v12 = [v11 heightAnchor];
    v13 = [v12 constraintGreaterThanOrEqualToConstant:a3];
    [(LanguageCell *)self setHeightConstraint:v13];

    v14 = [(LanguageCell *)self heightConstraint];
    [v14 setActive:1];

    [(LanguageCell *)self setNeedsLayout];
  }
}

@end