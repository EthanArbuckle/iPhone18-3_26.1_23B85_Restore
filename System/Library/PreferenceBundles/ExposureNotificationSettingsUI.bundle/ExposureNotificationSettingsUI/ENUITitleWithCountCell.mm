@interface ENUITitleWithCountCell
+ (void)addCount:(unint64_t)count toSpecifier:(id)specifier;
- (ENUITitleWithCountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_countTextToDisplayForSpecifier:(id)specifier;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setUp;
@end

@implementation ENUITitleWithCountCell

- (ENUITitleWithCountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = ENUITitleWithCountCell;
  v4 = [(ENUITitleWithCountCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ENUITitleWithCountCell *)v4 setUp];
  }

  return v5;
}

- (void)setUp
{
  v3 = objc_opt_new();
  [(ENUITitleWithCountCell *)self setCountLabel:v3];

  titleLabel = [(ENUITitleWithCountCell *)self titleLabel];
  font = [titleLabel font];
  countLabel = [(ENUITitleWithCountCell *)self countLabel];
  [countLabel setFont:font];

  v7 = +[UIColor secondaryLabelColor];
  countLabel2 = [(ENUITitleWithCountCell *)self countLabel];
  [countLabel2 setTextColor:v7];

  countLabel3 = [(ENUITitleWithCountCell *)self countLabel];
  [countLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  countLabel4 = [(ENUITitleWithCountCell *)self countLabel];
  [countLabel4 setAdjustsFontForContentSizeCategory:1];

  contentView = [(ENUITitleWithCountCell *)self contentView];
  countLabel5 = [(ENUITitleWithCountCell *)self countLabel];
  [contentView addSubview:countLabel5];

  countLabel6 = [(ENUITitleWithCountCell *)self countLabel];
  trailingAnchor = [countLabel6 trailingAnchor];
  contentView2 = [(ENUITitleWithCountCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[0] = v16;
  countLabel7 = [(ENUITitleWithCountCell *)self countLabel];
  centerYAnchor = [countLabel7 centerYAnchor];
  contentView3 = [(ENUITitleWithCountCell *)self contentView];
  centerYAnchor2 = [contentView3 centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v25[1] = v21;
  v22 = [NSArray arrayWithObjects:v25 count:2];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = ENUITitleWithCountCell;
  specifierCopy = specifier;
  [(ENUITitleWithCountCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(ENUITitleWithCountCell *)self _countTextToDisplayForSpecifier:specifierCopy, v11.receiver, v11.super_class];

  countLabel = [(ENUITitleWithCountCell *)self countLabel];
  [countLabel setText:v5];

  countLabel2 = [(ENUITitleWithCountCell *)self countLabel];
  text = [countLabel2 text];
  v9 = [text length] == 0;
  countLabel3 = [(ENUITitleWithCountCell *)self countLabel];
  [countLabel3 setHidden:v9];

  [(ENUITitleWithCountCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = ENUITitleWithCountCell;
  [(ENUITitleWithCountCell *)&v25 layoutSubviews];
  countLabel = [(ENUITitleWithCountCell *)self countLabel];
  isHidden = [countLabel isHidden];

  if ((isHidden & 1) == 0)
  {
    textLabel = [(ENUITitleWithCountCell *)self textLabel];
    countLabel2 = [(ENUITitleWithCountCell *)self countLabel];
    [countLabel2 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v8 = v7 + 16.0;

    contentView = [(ENUITitleWithCountCell *)self contentView];
    [contentView frame];
    v11 = v10;
    layoutMarginsGuide = [(ENUITitleWithCountCell *)self layoutMarginsGuide];
    [layoutMarginsGuide layoutFrame];
    v14 = v11 - v13 - v8;

    [textLabel frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if (v15 < v14)
    {
      v14 = v15;
    }

    traitCollection = [(ENUITitleWithCountCell *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    v24 = v8 + v17;
    if (layoutDirection != &dword_0 + 1)
    {
      v24 = v17;
    }

    [textLabel setFrame:{v24, v19, v14, v21}];
  }
}

+ (void)addCount:(unint64_t)count toSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v6 = [NSNumber numberWithUnsignedInteger:count];
  [specifierCopy setProperty:v6 forKey:@"ENUICountNumberSpecifierPropertyKey"];
}

- (id)_countTextToDisplayForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (qword_34158 != -1)
  {
    sub_1C41C();
  }

  v4 = [specifierCopy propertyForKey:@"ENUICountNumberSpecifierPropertyKey"];
  if (v4)
  {
    v5 = [qword_34150 stringFromNumber:v4];
  }

  else
  {
    v5 = &stru_2D818;
  }

  return v5;
}

@end