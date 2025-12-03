@interface CuratedCollectionPlaceSummaryView
- (CuratedCollectionPlaceSummaryView)initWithFrame:(CGRect)frame;
- (void)_createSubviews;
- (void)_setupConstraints;
- (void)configureWithModel:(id)model;
@end

@implementation CuratedCollectionPlaceSummaryView

- (void)_setupConstraints
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = 2.0;
  }

  else
  {
    v3 = 1.0;
  }

  titleLabel = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  topAnchor = [titleLabel topAnchor];
  topAnchor2 = [(CuratedCollectionPlaceSummaryView *)self topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[0] = v43;
  titleLabel2 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  leadingAnchor = [titleLabel2 leadingAnchor];
  leadingAnchor2 = [(CuratedCollectionPlaceSummaryView *)self leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[1] = v39;
  titleLabel3 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  trailingAnchor = [titleLabel3 trailingAnchor];
  trailingAnchor2 = [(CuratedCollectionPlaceSummaryView *)self trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[2] = v35;
  secondaryLabel = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  topAnchor3 = [secondaryLabel topAnchor];
  titleLabel4 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  v30 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v3];
  v47[3] = v30;
  secondaryLabel2 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  leadingAnchor3 = [secondaryLabel2 leadingAnchor];
  leadingAnchor4 = [(CuratedCollectionPlaceSummaryView *)self leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v47[4] = v26;
  secondaryLabel3 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  trailingAnchor3 = [secondaryLabel3 trailingAnchor];
  trailingAnchor4 = [(CuratedCollectionPlaceSummaryView *)self trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v47[5] = v22;
  tertiaryLabel = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  topAnchor4 = [tertiaryLabel topAnchor];
  secondaryLabel4 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  bottomAnchor2 = [secondaryLabel4 bottomAnchor];
  v17 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:2.0];
  v47[6] = v17;
  tertiaryLabel2 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  leadingAnchor5 = [tertiaryLabel2 leadingAnchor];
  leadingAnchor6 = [(CuratedCollectionPlaceSummaryView *)self leadingAnchor];
  v4 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v47[7] = v4;
  tertiaryLabel3 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  trailingAnchor5 = [tertiaryLabel3 trailingAnchor];
  trailingAnchor6 = [(CuratedCollectionPlaceSummaryView *)self trailingAnchor];
  v8 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v47[8] = v8;
  tertiaryLabel4 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  bottomAnchor3 = [tertiaryLabel4 bottomAnchor];
  bottomAnchor4 = [(CuratedCollectionPlaceSummaryView *)self bottomAnchor];
  v12 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v47[9] = v12;
  v13 = [NSArray arrayWithObjects:v47 count:10];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_createSubviews
{
  v3 = +[UIColor clearColor];
  [(CuratedCollectionPlaceSummaryView *)self setBackgroundColor:v3];

  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionPlaceSummaryView *)self setTitleLabel:v8];

  titleLabel = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  if (sub_10000FA08(self) == 5)
  {
    titleLabel3 = +[UIFont system20Semibold];
    titleLabel2 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
    [titleLabel2 setFont:titleLabel3];
  }

  else
  {
    titleLabel3 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
    [DynamicTypeWizard autorefreshLabel:titleLabel3 withFontProvider:&stru_10165DA68];
  }

  titleLabel4 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [titleLabel4 setNumberOfLines:0];

  titleLabel5 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [titleLabel5 setAccessibilityIdentifier:@"TitleLabel"];

  titleLabel6 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [(CuratedCollectionPlaceSummaryView *)self addSubview:titleLabel6];

  v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionPlaceSummaryView *)self setSecondaryLabel:v15];

  secondaryLabel = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  if (sub_10000FA08(self) == 5)
  {
    secondaryLabel3 = +[UIFont system17Tall];
    secondaryLabel2 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
    [secondaryLabel2 setFont:secondaryLabel3];
  }

  else
  {
    secondaryLabel3 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
    [DynamicTypeWizard autorefreshLabel:secondaryLabel3 withFontProvider:&stru_10165D908];
  }

  v19 = +[UIColor secondaryLabelColor];
  secondaryLabel4 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [secondaryLabel4 setTextColor:v19];

  secondaryLabel5 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [secondaryLabel5 setAccessibilityIdentifier:@"SecondaryLabel"];

  secondaryLabel6 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [(CuratedCollectionPlaceSummaryView *)self addSubview:secondaryLabel6];

  v23 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionPlaceSummaryView *)self setTertiaryLabel:v23];

  tertiaryLabel = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [tertiaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  if (sub_10000FA08(self) == 5)
  {
    tertiaryLabel3 = +[UIFont system17Tall];
    tertiaryLabel2 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
    [tertiaryLabel2 setFont:tertiaryLabel3];
  }

  else
  {
    tertiaryLabel3 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
    [DynamicTypeWizard autorefreshLabel:tertiaryLabel3 withFontProvider:&stru_10165D908];
  }

  v27 = +[UIColor secondaryLabelColor];
  tertiaryLabel4 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [tertiaryLabel4 setTextColor:v27];

  tertiaryLabel5 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [tertiaryLabel5 setAccessibilityIdentifier:@"TertiaryLabel"];

  tertiaryLabel6 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [(CuratedCollectionPlaceSummaryView *)self addSubview:tertiaryLabel6];
}

- (void)configureWithModel:(id)model
{
  modelCopy = model;
  title = [modelCopy title];
  titleLabel = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [titleLabel setText:title];

  v6 = +[NSMutableArray array];
  category = [modelCopy category];

  if (category)
  {
    category2 = [modelCopy category];
    [v6 addObject:category2];
  }

  distance = [modelCopy distance];

  if (distance)
  {
    distance2 = [modelCopy distance];
    [v6 addObject:distance2];
  }

  price = [modelCopy price];

  if (price)
  {
    price2 = [modelCopy price];
    [v6 addObject:price2];
  }

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

  v15 = [v6 componentsJoinedByString:v14];
  secondaryLabel = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [secondaryLabel setText:v15];

  hours = [modelCopy hours];
  tertiaryLabel = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [tertiaryLabel setAttributedText:hours];
}

- (CuratedCollectionPlaceSummaryView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionPlaceSummaryView;
  v3 = [(CuratedCollectionPlaceSummaryView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionPlaceSummaryView *)v3 setAccessibilityIdentifier:@"CuratedCollectionPlaceSummary"];
    [(CuratedCollectionPlaceSummaryView *)v4 _createSubviews];
    [(CuratedCollectionPlaceSummaryView *)v4 _setupConstraints];
  }

  return v4;
}

@end