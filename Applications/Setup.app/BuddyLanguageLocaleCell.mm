@interface BuddyLanguageLocaleCell
- (BuddyLanguageLocaleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setMinimumHeight:(double)height;
@end

@implementation BuddyLanguageLocaleCell

- (BuddyLanguageLocaleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  v45 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v42.receiver = v4;
  v42.super_class = BuddyLanguageLocaleCell;
  selfCopy = [(BuddyLanguageLocaleCell *)&v42 initWithStyle:styleCopy reuseIdentifier:location];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = objc_alloc_init(UILabel);
    [selfCopy setTitleLabel:v5];

    titleLabel = [selfCopy titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [selfCopy titleLabel];
    [titleLabel2 setNumberOfLines:0];

    titleLabel3 = [selfCopy titleLabel];
    [titleLabel3 setClipsToBounds:0];

    contentView = [selfCopy contentView];
    titleLabel4 = [selfCopy titleLabel];
    [contentView addSubview:titleLabel4];

    v11 = +[UIColor secondarySystemBackgroundColor];
    [selfCopy setBackgroundColor:v11];

    titleLabel5 = [selfCopy titleLabel];
    leadingAnchor = [titleLabel5 leadingAnchor];
    contentView2 = [selfCopy contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:?];
    v47[0] = v36;
    titleLabel6 = [selfCopy titleLabel];
    trailingAnchor = [titleLabel6 trailingAnchor];
    contentView3 = [selfCopy contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:?];
    v47[1] = v30;
    titleLabel7 = [selfCopy titleLabel];
    topAnchor = [titleLabel7 topAnchor];
    contentView4 = [selfCopy contentView];
    topAnchor2 = [contentView4 topAnchor];
    v25 = [topAnchor constraintGreaterThanOrEqualToAnchor:?];
    v47[2] = v25;
    titleLabel8 = [selfCopy titleLabel];
    bottomAnchor = [titleLabel8 bottomAnchor];
    contentView5 = [selfCopy contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v15 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v47[3] = v15;
    titleLabel9 = [selfCopy titleLabel];
    centerYAnchor = [titleLabel9 centerYAnchor];
    contentView6 = [selfCopy contentView];
    centerYAnchor2 = [contentView6 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v47[4] = v20;
    v21 = [NSArray arrayWithObjects:v47 count:5];
    [NSLayoutConstraint activateConstraints:v21];
  }

  v22 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v22;
}

- (void)setMinimumHeight:(double)height
{
  heightConstraint = [(BuddyLanguageLocaleCell *)self heightConstraint];
  v11 = 0;
  v4 = 1;
  if (heightConstraint)
  {
    heightConstraint2 = [(BuddyLanguageLocaleCell *)self heightConstraint];
    v11 = 1;
    [(NSLayoutConstraint *)heightConstraint2 constant];
    v4 = v5 != height;
  }

  if (v11)
  {
  }

  if (v4)
  {
    heightConstraint3 = [(BuddyLanguageLocaleCell *)self heightConstraint];
    [(NSLayoutConstraint *)heightConstraint3 setActive:0];

    contentView = [(BuddyLanguageLocaleCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v9 = [heightAnchor constraintGreaterThanOrEqualToConstant:height];
    [(BuddyLanguageLocaleCell *)self setHeightConstraint:v9];

    heightConstraint4 = [(BuddyLanguageLocaleCell *)self heightConstraint];
    [(NSLayoutConstraint *)heightConstraint4 setActive:1];

    [(BuddyLanguageLocaleCell *)self setNeedsLayout];
  }
}

@end