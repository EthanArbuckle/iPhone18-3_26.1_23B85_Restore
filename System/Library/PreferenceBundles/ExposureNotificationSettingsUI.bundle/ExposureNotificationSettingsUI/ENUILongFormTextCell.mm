@interface ENUILongFormTextCell
- (ENUILongFormTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ENUILongFormTextCell

- (ENUILongFormTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = ENUILongFormTextCell;
  v4 = [(ENUILongFormTextCell *)&v7 initWithStyle:0 reuseIdentifier:identifier];
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
  contentView = [(ENUILongFormTextCell *)self contentView];
  [contentView setBackgroundColor:v4];

  [(ENUILongFormTextCell *)self setSelectionStyle:0];
  v6 = objc_opt_new();
  [(ENUILongFormTextCell *)self setTitleLabel:v6];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  titleLabel = [(ENUILongFormTextCell *)self titleLabel];
  [titleLabel setFont:v7];

  titleLabel2 = [(ENUILongFormTextCell *)self titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [(ENUILongFormTextCell *)self titleLabel];
  [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(ENUILongFormTextCell *)self contentView];
  titleLabel4 = [(ENUILongFormTextCell *)self titleLabel];
  [contentView2 addSubview:titleLabel4];

  titleLabel5 = [(ENUILongFormTextCell *)self titleLabel];
  leadingAnchor = [titleLabel5 leadingAnchor];
  contentView3 = [(ENUILongFormTextCell *)self contentView];
  safeAreaLayoutGuide = [contentView3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v38[0] = v32;
  titleLabel6 = [(ENUILongFormTextCell *)self titleLabel];
  trailingAnchor = [titleLabel6 trailingAnchor];
  contentView4 = [(ENUILongFormTextCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v38[1] = v26;
  titleLabel7 = [(ENUILongFormTextCell *)self titleLabel];
  topAnchor = [titleLabel7 topAnchor];
  contentView5 = [(ENUILongFormTextCell *)self contentView];
  safeAreaLayoutGuide3 = [contentView5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[2] = v15;
  titleLabel8 = [(ENUILongFormTextCell *)self titleLabel];
  bottomAnchor = [titleLabel8 bottomAnchor];
  contentView6 = [(ENUILongFormTextCell *)self contentView];
  safeAreaLayoutGuide4 = [contentView6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v21;
  v22 = [NSArray arrayWithObjects:v38 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5 = [specifier propertyForKey:PSTitleKey];
  titleLabel = [(ENUILongFormTextCell *)self titleLabel];
  [titleLabel setText:v5];
}

@end