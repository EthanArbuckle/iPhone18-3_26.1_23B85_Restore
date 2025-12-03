@interface CBLanguageSelectorCell
- (CBLanguageSelectorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setMinimumHeight:(double)height;
@end

@implementation CBLanguageSelectorCell

- (CBLanguageSelectorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v40.receiver = self;
  v40.super_class = CBLanguageSelectorCell;
  v4 = [(CBLanguageSelectorCell *)&v40 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    [(CBLanguageSelectorCell *)v4 setTitleLabel:v5];

    titleLabel = [(CBLanguageSelectorCell *)v4 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(CBLanguageSelectorCell *)v4 titleLabel];
    [titleLabel2 setNumberOfLines:0];

    contentView = [(CBLanguageSelectorCell *)v4 contentView];
    titleLabel3 = [(CBLanguageSelectorCell *)v4 titleLabel];
    [contentView addSubview:titleLabel3];

    v10 = +[UIColor secondarySystemBackgroundColor];
    [(CBLanguageSelectorCell *)v4 setBackgroundColor:v10];

    titleLabel4 = [(CBLanguageSelectorCell *)v4 titleLabel];
    leadingAnchor = [titleLabel4 leadingAnchor];
    contentView2 = [(CBLanguageSelectorCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41[0] = v34;
    titleLabel5 = [(CBLanguageSelectorCell *)v4 titleLabel];
    trailingAnchor = [titleLabel5 trailingAnchor];
    contentView3 = [(CBLanguageSelectorCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v41[1] = v28;
    titleLabel6 = [(CBLanguageSelectorCell *)v4 titleLabel];
    topAnchor = [titleLabel6 topAnchor];
    contentView4 = [(CBLanguageSelectorCell *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v23 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v41[2] = v23;
    titleLabel7 = [(CBLanguageSelectorCell *)v4 titleLabel];
    bottomAnchor = [titleLabel7 bottomAnchor];
    contentView5 = [(CBLanguageSelectorCell *)v4 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v13 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v41[3] = v13;
    titleLabel8 = [(CBLanguageSelectorCell *)v4 titleLabel];
    centerYAnchor = [titleLabel8 centerYAnchor];
    contentView6 = [(CBLanguageSelectorCell *)v4 contentView];
    centerYAnchor2 = [contentView6 centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v41[4] = v18;
    v19 = [NSArray arrayWithObjects:v41 count:5];
    [NSLayoutConstraint activateConstraints:v19];
  }

  return v4;
}

- (void)setMinimumHeight:(double)height
{
  heightConstraint = [(CBLanguageSelectorCell *)self heightConstraint];
  if (!heightConstraint || (v6 = heightConstraint, -[CBLanguageSelectorCell heightConstraint](self, "heightConstraint"), v7 = objc_claimAutoreleasedReturnValue(), [v7 constant], v9 = v8, v7, v6, v9 != height))
  {
    heightConstraint2 = [(CBLanguageSelectorCell *)self heightConstraint];
    [heightConstraint2 setActive:0];

    contentView = [(CBLanguageSelectorCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v13 = [heightAnchor constraintGreaterThanOrEqualToConstant:height];
    [(CBLanguageSelectorCell *)self setHeightConstraint:v13];

    heightConstraint3 = [(CBLanguageSelectorCell *)self heightConstraint];
    [heightConstraint3 setActive:1];

    [(CBLanguageSelectorCell *)self setNeedsLayout];
  }
}

@end