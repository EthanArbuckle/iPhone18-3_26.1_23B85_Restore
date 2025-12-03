@interface CollectionsFilterCell
- (CollectionsFilterCell)initWithFrame:(CGRect)frame;
- (void)configureWithModel:(id)model;
- (void)prepareForReuse;
- (void)setFilterLabel;
- (void)setUpCornerRadius;
- (void)setUpSelectedBorder;
- (void)setUpSelectedShadows;
- (void)setUpUnselectedBorder;
- (void)setUpUnselectedShadows;
- (void)setupConstraints;
- (void)setupSelectedBackgroundView;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateUI;
@end

@implementation CollectionsFilterCell

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = CollectionsFilterCell;
  changeCopy = change;
  [(CollectionsFilterCell *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(CollectionsFilterCell *)self traitCollection:v10.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];

  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle != userInterfaceStyle2)
  {
    viewModel = [(CollectionsFilterCell *)self viewModel];
    viewModel2 = [(CollectionsFilterCell *)self viewModel];
    [viewModel modelSelected:objc_msgSend(viewModel2 isDarkMode:{"isSelected"), userInterfaceStyle == 2}];

    [(CollectionsFilterCell *)self updateUI];
  }
}

- (void)updateUI
{
  viewModel = [(CollectionsFilterCell *)self viewModel];
  filterTitle = [viewModel filterTitle];
  filterLabel = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel setText:filterTitle];

  viewModel2 = [(CollectionsFilterCell *)self viewModel];
  textColor = [viewModel2 textColor];
  filterLabel2 = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel2 setTextColor:textColor];

  viewModel3 = [(CollectionsFilterCell *)self viewModel];
  filterFont = [viewModel3 filterFont];
  filterLabel3 = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel3 setFont:filterFont];

  viewModel4 = [(CollectionsFilterCell *)self viewModel];
  backgroundColor = [viewModel4 backgroundColor];
  contentView = [(CollectionsFilterCell *)self contentView];
  [contentView setBackgroundColor:backgroundColor];

  LODWORD(viewModel4) = MapsFeature_IsEnabled_Maps269();
  viewModel5 = [(CollectionsFilterCell *)self viewModel];
  isSelected = [viewModel5 isSelected];
  if (viewModel4)
  {
    if (isSelected)
    {
      [(CollectionsFilterCell *)self setUpSelectedBorder];
    }

    else
    {
      [(CollectionsFilterCell *)self setUpUnselectedBorder];
    }
  }

  else if (isSelected)
  {
    [(CollectionsFilterCell *)self setUpSelectedShadows];
  }

  else
  {
    [(CollectionsFilterCell *)self setUpUnselectedShadows];
  }
}

- (void)setUpUnselectedBorder
{
  if (MapsFeature_IsEnabled_Maps269())
  {
    +[UIColor systemGray3Color];
  }

  else
  {
    +[UIColor lightGrayColor];
  }
  v7 = ;
  v3 = v7;
  cGColor = [v7 CGColor];
  contentView = [(CollectionsFilterCell *)self contentView];
  layer = [contentView layer];
  [layer setBorderColor:cGColor];
}

- (void)setUpSelectedBorder
{
  v7 = +[UIColor clearColor];
  v3 = v7;
  cGColor = [v7 CGColor];
  contentView = [(CollectionsFilterCell *)self contentView];
  layer = [contentView layer];
  [layer setBorderColor:cGColor];
}

- (void)setUpCornerRadius
{
  IsEnabled_Maps269 = MapsFeature_IsEnabled_Maps269();
  contentView = [(CollectionsFilterCell *)self contentView];
  v5 = contentView;
  if (IsEnabled_Maps269)
  {
    [contentView _setContinuousCornerRadius:16.0];

    contentView2 = [(CollectionsFilterCell *)self contentView];
    layer = [contentView2 layer];
    [layer setMasksToBounds:1];

    if (MapsFeature_IsEnabled_Maps269())
    {
      v8 = 0.5;
    }

    else
    {
      v8 = 1.0;
    }

    contentView3 = [(CollectionsFilterCell *)self contentView];
    layer2 = [contentView3 layer];
    [layer2 setBorderWidth:v8];

    contentView5 = +[UIColor lightGrayColor];
    cGColor = [contentView5 CGColor];
    contentView4 = [(CollectionsFilterCell *)self contentView];
    layer3 = [contentView4 layer];
    [layer3 setBorderColor:cGColor];
  }

  else
  {
    [contentView _setContinuousCornerRadius:8.0];

    contentView5 = [(CollectionsFilterCell *)self contentView];
    contentView4 = [contentView5 layer];
    [contentView4 setMasksToBounds:1];
  }
}

- (void)setUpUnselectedShadows
{
  layer = [(CollectionsFilterCell *)self layer];
  [layer setShadowOpacity:0.0];

  layer2 = [(CollectionsFilterCell *)self layer];
  [layer2 setShadowRadius:0.0];
}

- (void)setUpSelectedShadows
{
  layer = [(CollectionsFilterCell *)self layer];
  [layer setMasksToBounds:0];

  v4 = +[UIColor blackColor];
  cGColor = [v4 CGColor];
  layer2 = [(CollectionsFilterCell *)self layer];
  [layer2 setShadowColor:cGColor];

  layer3 = [(CollectionsFilterCell *)self layer];
  LODWORD(v8) = 1036831949;
  [layer3 setShadowOpacity:v8];

  layer4 = [(CollectionsFilterCell *)self layer];
  [layer4 setShadowOffset:{0.0, 1.0}];

  layer5 = [(CollectionsFilterCell *)self layer];
  [layer5 setShadowRadius:4.0];
}

- (void)setupConstraints
{
  v45 = objc_alloc_init(NSMutableArray);
  if (MapsFeature_IsEnabled_Maps269())
  {
    selectedBackgroundView = [(CollectionsFilterCell *)self selectedBackgroundView];
    leadingAnchor = [selectedBackgroundView leadingAnchor];
    contentView = [(CollectionsFilterCell *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v35;
    selectedBackgroundView2 = [(CollectionsFilterCell *)self selectedBackgroundView];
    trailingAnchor = [selectedBackgroundView2 trailingAnchor];
    contentView2 = [(CollectionsFilterCell *)self contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v25;
    selectedBackgroundView3 = [(CollectionsFilterCell *)self selectedBackgroundView];
    topAnchor = [selectedBackgroundView3 topAnchor];
    contentView3 = [(CollectionsFilterCell *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v4 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[2] = v4;
    selectedBackgroundView4 = [(CollectionsFilterCell *)self selectedBackgroundView];
    bottomAnchor = [selectedBackgroundView4 bottomAnchor];
    contentView4 = [(CollectionsFilterCell *)self contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v47[3] = v9;
    v10 = [NSArray arrayWithObjects:v47 count:4];
    [v45 addObjectsFromArray:v10];
  }

  filterLabel = [(CollectionsFilterCell *)self filterLabel];
  leadingAnchor3 = [filterLabel leadingAnchor];
  contentView5 = [(CollectionsFilterCell *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v46[0] = v36;
  filterLabel2 = [(CollectionsFilterCell *)self filterLabel];
  trailingAnchor3 = [filterLabel2 trailingAnchor];
  contentView6 = [(CollectionsFilterCell *)self contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v46[1] = v26;
  filterLabel3 = [(CollectionsFilterCell *)self filterLabel];
  topAnchor3 = [filterLabel3 topAnchor];
  contentView7 = [(CollectionsFilterCell *)self contentView];
  topAnchor4 = [contentView7 topAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v46[2] = v13;
  filterLabel4 = [(CollectionsFilterCell *)self filterLabel];
  bottomAnchor3 = [filterLabel4 bottomAnchor];
  contentView8 = [(CollectionsFilterCell *)self contentView];
  bottomAnchor4 = [contentView8 bottomAnchor];
  v18 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v46[3] = v18;
  v19 = [NSArray arrayWithObjects:v46 count:4];
  [v45 addObjectsFromArray:v19];

  [NSLayoutConstraint activateConstraints:v45];
}

- (void)setFilterLabel
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CollectionsFilterCell *)self setFilterLabel:v3];

  filterLabel = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  filterLabel2 = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel2 setTextAlignment:1];

  v6 = +[UIColor clearColor];
  filterLabel3 = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel3 setBackgroundColor:v6];

  filterLabel4 = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel4 setNumberOfLines:1];

  filterLabel5 = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel5 setAccessibilityIdentifier:@"CollectionsFilterCellLabel"];

  contentView = [(CollectionsFilterCell *)self contentView];
  filterLabel6 = [(CollectionsFilterCell *)self filterLabel];
  [contentView addSubview:filterLabel6];
}

- (void)setupSelectedBackgroundView
{
  v3 = objc_alloc_init(UIView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 _setContinuousCornerRadius:16.0];
  [v3 setAccessibilityIdentifier:@"CollectionsFilterCellBackground"];
  [(CollectionsFilterCell *)self setSelectedBackgroundView:v3];
}

- (void)setupSubviews
{
  if (MapsFeature_IsEnabled_Maps269())
  {
    [(CollectionsFilterCell *)self setupSelectedBackgroundView];
  }

  [(CollectionsFilterCell *)self setFilterLabel];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = CollectionsFilterCell;
  [(CollectionsFilterCell *)&v7 prepareForReuse];
  [(CollectionsFilterCell *)self setViewModel:0];
  filterLabel = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel setText:0];

  filterLabel2 = [(CollectionsFilterCell *)self filterLabel];
  [filterLabel2 setTextColor:0];

  contentView = [(CollectionsFilterCell *)self contentView];
  [contentView setBackgroundColor:0];

  selectedBackgroundView = [(CollectionsFilterCell *)self selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:0];
}

- (void)configureWithModel:(id)model
{
  [(CollectionsFilterCell *)self setViewModel:model];
  [(CollectionsFilterCell *)self updateUI];
  selectedBackgroundView = [(CollectionsFilterCell *)self selectedBackgroundView];
  [selectedBackgroundView setAlpha:0.0];

  v6 = +[UIColor quaternarySystemFillColor];
  selectedBackgroundView2 = [(CollectionsFilterCell *)self selectedBackgroundView];
  [selectedBackgroundView2 setBackgroundColor:v6];
}

- (CollectionsFilterCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CollectionsFilterCell;
  v3 = [(CollectionsFilterCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(CollectionsFilterCell *)v3 setAccessibilityIdentifier:v5];

    [(CollectionsFilterCell *)v3 setupSubviews];
    [(CollectionsFilterCell *)v3 setupConstraints];
    [(CollectionsFilterCell *)v3 setUpCornerRadius];
  }

  return v3;
}

@end