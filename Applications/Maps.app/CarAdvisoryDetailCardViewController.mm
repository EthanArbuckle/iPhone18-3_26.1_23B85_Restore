@interface CarAdvisoryDetailCardViewController
- (CarAdvisoryDetailCardViewController)initWithAdvisoryItem:(id)item;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_updateContents;
- (void)setAdvisoryItem:(id)item;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CarAdvisoryDetailCardViewController

- (void)setAdvisoryItem:(id)item
{
  itemCopy = item;
  advisoryItem = self->_advisoryItem;
  v10 = itemCopy;
  v7 = advisoryItem;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_advisoryItem, item);
      [(CarAdvisoryDetailCardViewController *)self _updateContents];
      v8 = v10;
    }
  }
}

- (void)_updateContents
{
  subtitleString = [(GEOComposedRouteAdvisoryItem *)self->_advisoryItem subtitleString];
  stringWithDefaultOptions = [subtitleString stringWithDefaultOptions];
  [(UILabel *)self->_primaryLabel setText:stringWithDefaultOptions];

  v8 = DetailTextsForAdvisoryItem();
  v5 = [v8 componentsJoinedByString:@"\n"];
  [(UILabel *)self->_secondaryLabel setText:v5];

  attributionString = [(GEOComposedRouteAdvisoryItem *)self->_advisoryItem attributionString];
  stringWithDefaultOptions2 = [attributionString stringWithDefaultOptions];
  [(UILabel *)self->_tertiaryLabel setText:stringWithDefaultOptions2];
}

- (void)_setupStyling
{
  v3 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  [(UILabel *)self->_primaryLabel setFont:v3];

  font = [(UILabel *)self->_primaryLabel font];
  [font pointSize];
  primaryLabel = self->_primaryLabel;
  if (10.0 / v5 > 1.0)
  {
    [(UILabel *)primaryLabel setMinimumScaleFactor:1.0];
  }

  else
  {
    font2 = [(UILabel *)primaryLabel font];
    [font2 pointSize];
    [(UILabel *)self->_primaryLabel setMinimumScaleFactor:10.0 / v8];
  }

  [(UILabel *)self->_primaryLabel setAdjustsFontSizeToFitWidth:1];
  v9 = +[UIColor labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:v9];

  v10 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
  [(UILabel *)self->_secondaryLabel setFont:v10];

  font3 = [(UILabel *)self->_secondaryLabel font];
  [font3 pointSize];
  secondaryLabel = self->_secondaryLabel;
  if (10.0 / v12 > 1.0)
  {
    [(UILabel *)secondaryLabel setMinimumScaleFactor:1.0];
  }

  else
  {
    font4 = [(UILabel *)secondaryLabel font];
    [font4 pointSize];
    [(UILabel *)self->_secondaryLabel setMinimumScaleFactor:10.0 / v15];
  }

  [(UILabel *)self->_secondaryLabel setAdjustsFontSizeToFitWidth:1];
  v16 = +[UIColor labelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:v16];

  v17 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightThin];
  [(UILabel *)self->_tertiaryLabel setFont:v17];

  font5 = [(UILabel *)self->_tertiaryLabel font];
  [font5 pointSize];
  tertiaryLabel = self->_tertiaryLabel;
  if (10.0 / v19 > 1.0)
  {
    [(UILabel *)tertiaryLabel setMinimumScaleFactor:1.0];
  }

  else
  {
    font6 = [(UILabel *)tertiaryLabel font];
    [font6 pointSize];
    [(UILabel *)self->_tertiaryLabel setMinimumScaleFactor:10.0 / v22];
  }

  [(UILabel *)self->_tertiaryLabel setAdjustsFontSizeToFitWidth:1];
  v23 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_tertiaryLabel setTextColor:v23];
}

- (void)_setupConstraints
{
  v42 = +[NSMutableArray array];
  firstBaselineAnchor = [(UILabel *)self->_primaryLabel firstBaselineAnchor];
  view = [(CarAdvisoryDetailCardViewController *)self view];
  topAnchor = [view topAnchor];
  v38 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:10.0];
  v43[0] = v38;
  leadingAnchor = [(UILabel *)self->_primaryLabel leadingAnchor];
  view2 = [(CarAdvisoryDetailCardViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v43[1] = v34;
  trailingAnchor = [(UILabel *)self->_primaryLabel trailingAnchor];
  view3 = [(CarAdvisoryDetailCardViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v43[2] = v30;
  topAnchor2 = [(UILabel *)self->_secondaryLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_primaryLabel bottomAnchor];
  v27 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:4.0];
  v43[3] = v27;
  leadingAnchor3 = [(UILabel *)self->_secondaryLabel leadingAnchor];
  view4 = [(CarAdvisoryDetailCardViewController *)self view];
  leadingAnchor4 = [view4 leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  v43[4] = v23;
  trailingAnchor3 = [(UILabel *)self->_secondaryLabel trailingAnchor];
  view5 = [(CarAdvisoryDetailCardViewController *)self view];
  trailingAnchor4 = [view5 trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
  v43[5] = v19;
  topAnchor3 = [(UILabel *)self->_tertiaryLabel topAnchor];
  bottomAnchor2 = [(UILabel *)self->_secondaryLabel bottomAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:4.0];
  v43[6] = v16;
  leadingAnchor5 = [(UILabel *)self->_tertiaryLabel leadingAnchor];
  view6 = [(CarAdvisoryDetailCardViewController *)self view];
  leadingAnchor6 = [view6 leadingAnchor];
  v3 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
  v43[7] = v3;
  trailingAnchor5 = [(UILabel *)self->_tertiaryLabel trailingAnchor];
  view7 = [(CarAdvisoryDetailCardViewController *)self view];
  trailingAnchor6 = [view7 trailingAnchor];
  v7 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-10.0];
  v43[8] = v7;
  bottomAnchor3 = [(UILabel *)self->_tertiaryLabel bottomAnchor];
  view8 = [(CarAdvisoryDetailCardViewController *)self view];
  bottomAnchor4 = [view8 bottomAnchor];
  v11 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-10.0];
  v43[9] = v11;
  v12 = [NSArray arrayWithObjects:v43 count:10];
  [v42 addObjectsFromArray:v12];

  [NSLayoutConstraint activateConstraints:v42];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CarAdvisoryDetailCardViewController;
  [(CarAdvisoryDetailCardViewController *)&v4 viewWillAppear:appear];
  [(CarAdvisoryDetailCardViewController *)self _updateContents];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CarAdvisoryDetailCardViewController;
  [(CarAdvisoryDetailCardViewController *)&v19 viewDidLoad];
  view = [(CarAdvisoryDetailCardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarAdvisoryDetailCard"];

  v4 = objc_alloc_init(UILabel);
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v4;

  [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1148846080;
  [(UILabel *)self->_primaryLabel setContentHuggingPriority:1 forAxis:v6];
  LODWORD(v7) = 1144782848;
  [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:1 forAxis:v7];
  [(UILabel *)self->_primaryLabel setNumberOfLines:0];
  view2 = [(CarAdvisoryDetailCardViewController *)self view];
  [view2 addSubview:self->_primaryLabel];

  v9 = objc_alloc_init(UILabel);
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v9;

  [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v11) = 1132068864;
  [(UILabel *)self->_secondaryLabel setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1144799232;
  [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:1 forAxis:v12];
  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  view3 = [(CarAdvisoryDetailCardViewController *)self view];
  [view3 addSubview:self->_secondaryLabel];

  v14 = objc_alloc_init(UILabel);
  tertiaryLabel = self->_tertiaryLabel;
  self->_tertiaryLabel = v14;

  [(UILabel *)self->_tertiaryLabel setAccessibilityIdentifier:@"TertiaryLabel"];
  [(UILabel *)self->_tertiaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v16) = 1132068864;
  [(UILabel *)self->_tertiaryLabel setContentHuggingPriority:1 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [(UILabel *)self->_tertiaryLabel setContentCompressionResistancePriority:1 forAxis:v17];
  [(UILabel *)self->_tertiaryLabel setNumberOfLines:0];
  view4 = [(CarAdvisoryDetailCardViewController *)self view];
  [view4 addSubview:self->_tertiaryLabel];

  [(CarAdvisoryDetailCardViewController *)self _setupConstraints];
  [(CarAdvisoryDetailCardViewController *)self _setupStyling];
  [(CarAdvisoryDetailCardViewController *)self _updateContents];
}

- (CarAdvisoryDetailCardViewController)initWithAdvisoryItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = CarAdvisoryDetailCardViewController;
  v6 = [(CarAdvisoryDetailCardViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_advisoryItem, item);
  }

  return v7;
}

@end