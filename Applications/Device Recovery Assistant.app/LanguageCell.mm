@interface LanguageCell
- (LanguageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setMinimumHeight:(double)height;
@end

@implementation LanguageCell

- (LanguageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v41.receiver = self;
  v41.super_class = LanguageCell;
  v4 = [(LanguageCell *)&v41 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    [(LanguageCell *)v4 setTitleLabel:v5];

    titleLabel = [(LanguageCell *)v4 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(LanguageCell *)v4 titleLabel];
    [titleLabel2 setNumberOfLines:0];

    titleLabel3 = [(LanguageCell *)v4 titleLabel];
    [titleLabel3 setClipsToBounds:0];

    contentView = [(LanguageCell *)v4 contentView];
    titleLabel4 = [(LanguageCell *)v4 titleLabel];
    [contentView addSubview:titleLabel4];

    v11 = +[UIColor secondarySystemBackgroundColor];
    [(LanguageCell *)v4 setBackgroundColor:v11];

    titleLabel5 = [(LanguageCell *)v4 titleLabel];
    leadingAnchor = [titleLabel5 leadingAnchor];
    contentView2 = [(LanguageCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[0] = v35;
    titleLabel6 = [(LanguageCell *)v4 titleLabel];
    trailingAnchor = [titleLabel6 trailingAnchor];
    contentView3 = [(LanguageCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[1] = v29;
    titleLabel7 = [(LanguageCell *)v4 titleLabel];
    topAnchor = [titleLabel7 topAnchor];
    contentView4 = [(LanguageCell *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v24 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v42[2] = v24;
    titleLabel8 = [(LanguageCell *)v4 titleLabel];
    bottomAnchor = [titleLabel8 bottomAnchor];
    contentView5 = [(LanguageCell *)v4 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v14 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v42[3] = v14;
    titleLabel9 = [(LanguageCell *)v4 titleLabel];
    centerYAnchor = [titleLabel9 centerYAnchor];
    contentView6 = [(LanguageCell *)v4 contentView];
    centerYAnchor2 = [contentView6 centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v42[4] = v19;
    v20 = [NSArray arrayWithObjects:v42 count:5];
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v4;
}

- (void)setMinimumHeight:(double)height
{
  heightConstraint = [(LanguageCell *)self heightConstraint];
  if (!heightConstraint || (v6 = heightConstraint, -[LanguageCell heightConstraint](self, "heightConstraint"), v7 = objc_claimAutoreleasedReturnValue(), [v7 constant], v9 = v8, v7, v6, v9 != height))
  {
    heightConstraint2 = [(LanguageCell *)self heightConstraint];
    [heightConstraint2 setActive:0];

    contentView = [(LanguageCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v13 = [heightAnchor constraintGreaterThanOrEqualToConstant:height];
    [(LanguageCell *)self setHeightConstraint:v13];

    heightConstraint3 = [(LanguageCell *)self heightConstraint];
    [heightConstraint3 setActive:1];

    [(LanguageCell *)self setNeedsLayout];
  }
}

@end