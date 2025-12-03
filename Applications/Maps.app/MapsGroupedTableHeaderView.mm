@interface MapsGroupedTableHeaderView
- (MapsGroupedTableHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)_contentSizeChanged:(id)changed;
- (void)setupConstraints;
- (void)updateAXIdentifiersWithPrefix:(id)prefix;
@end

@implementation MapsGroupedTableHeaderView

- (void)updateAXIdentifiersWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [prefixCopy stringByAppendingString:@"TableHeader"];
  [(MapsGroupedTableHeaderView *)self setAccessibilityIdentifier:v5];

  v7 = [prefixCopy stringByAppendingString:@"TableHeaderTitle"];

  titleLabel = [(MapsGroupedTableHeaderView *)self titleLabel];
  [titleLabel setAccessibilityIdentifier:v7];
}

- (void)_contentSizeChanged:(id)changed
{
  v4 = +[RAPFontManager tableHeaderViewFont];
  titleLabel = [(MapsGroupedTableHeaderView *)self titleLabel];
  [titleLabel setFont:v4];

  v6 = +[RAPFontManager tableHeaderViewFont];
  [v6 _mapkit_scaledValueForValue:38.0];
  [(NSLayoutConstraint *)self->_topToFirstBaselineConstraint setConstant:?];

  v7 = +[RAPFontManager tableHeaderViewFont];
  [v7 _mapkit_scaledValueForValue:11.0];
  [(NSLayoutConstraint *)self->_lastBaselineToBottomConstraint setConstant:?];
}

- (void)setupConstraints
{
  titleLabel = [(MapsGroupedTableHeaderView *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  contentView = [(MapsGroupedTableHeaderView *)self contentView];
  topAnchor = [contentView topAnchor];
  v7 = +[RAPFontManager tableHeaderViewFont];
  [v7 _mapkit_scaledValueForValue:38.0];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  topToFirstBaselineConstraint = self->_topToFirstBaselineConstraint;
  self->_topToFirstBaselineConstraint = v8;

  LODWORD(v10) = 1144750080;
  [(NSLayoutConstraint *)self->_topToFirstBaselineConstraint setPriority:v10];
  contentView2 = [(MapsGroupedTableHeaderView *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  titleLabel2 = [(MapsGroupedTableHeaderView *)self titleLabel];
  lastBaselineAnchor = [titleLabel2 lastBaselineAnchor];
  v15 = +[RAPFontManager tableHeaderViewFont];
  [v15 _mapkit_scaledValueForValue:11.0];
  v16 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor constant:?];
  lastBaselineToBottomConstraint = self->_lastBaselineToBottomConstraint;
  self->_lastBaselineToBottomConstraint = v16;

  LODWORD(v18) = 1144750080;
  [(NSLayoutConstraint *)self->_lastBaselineToBottomConstraint setPriority:v18];
  v19 = self->_lastBaselineToBottomConstraint;
  v33[0] = self->_topToFirstBaselineConstraint;
  v33[1] = v19;
  titleLabel3 = [(MapsGroupedTableHeaderView *)self titleLabel];
  leadingAnchor = [titleLabel3 leadingAnchor];
  contentView3 = [(MapsGroupedTableHeaderView *)self contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[2] = v22;
  titleLabel4 = [(MapsGroupedTableHeaderView *)self titleLabel];
  trailingAnchor = [titleLabel4 trailingAnchor];
  contentView4 = [(MapsGroupedTableHeaderView *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v28 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v33[3] = v28;
  v29 = [NSArray arrayWithObjects:v33 count:4];
  [NSLayoutConstraint activateConstraints:v29];
}

- (MapsGroupedTableHeaderView)initWithReuseIdentifier:(id)identifier
{
  v26.receiver = self;
  v26.super_class = MapsGroupedTableHeaderView;
  v3 = [(MapsGroupedTableHeaderView *)&v26 initWithReuseIdentifier:identifier];
  v5 = v3;
  if (v3)
  {
    LODWORD(v4) = 1148846080;
    [(MapsGroupedTableHeaderView *)v3 setContentHuggingPriority:1 forAxis:v4];
    [(MapsGroupedTableHeaderView *)v5 setAccessibilityIdentifier:@"MapsGroupedTableHeader"];
    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(MapsGroupedTableHeaderView *)v5 setTitleLabel:v6];

    titleLabel = [(MapsGroupedTableHeaderView *)v5 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = +[RAPFontManager tableHeaderViewFont];
    titleLabel2 = [(MapsGroupedTableHeaderView *)v5 titleLabel];
    [titleLabel2 setFont:v8];

    v10 = +[UIColor systemGrayColor];
    titleLabel3 = [(MapsGroupedTableHeaderView *)v5 titleLabel];
    [titleLabel3 setTextColor:v10];

    titleLabel4 = [(MapsGroupedTableHeaderView *)v5 titleLabel];
    [titleLabel4 setNumberOfLines:0];

    titleLabel5 = [(MapsGroupedTableHeaderView *)v5 titleLabel];
    [titleLabel5 setAccessibilityIdentifier:@"MapsGroupedTableHeaderTitle"];

    contentView = [(MapsGroupedTableHeaderView *)v5 contentView];
    titleLabel6 = [(MapsGroupedTableHeaderView *)v5 titleLabel];
    [contentView addSubview:titleLabel6];

    titleLabel7 = [(MapsGroupedTableHeaderView *)v5 titleLabel];
    LODWORD(v17) = 1148846080;
    [titleLabel7 setContentHuggingPriority:1 forAxis:v17];

    titleLabel8 = [(MapsGroupedTableHeaderView *)v5 titleLabel];
    LODWORD(v19) = 1148846080;
    [titleLabel8 setContentCompressionResistancePriority:1 forAxis:v19];

    [(MapsGroupedTableHeaderView *)v5 setupConstraints];
    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v5 selector:"_contentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v21 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v21 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      v23 = +[UIColor systemBackgroundColor];
      contentView2 = [(MapsGroupedTableHeaderView *)v5 contentView];
      [contentView2 setBackgroundColor:v23];
    }
  }

  return v5;
}

@end