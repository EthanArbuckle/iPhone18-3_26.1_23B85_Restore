@interface CarAdvisoryDetailCardViewController
- (CarAdvisoryDetailCardViewController)initWithAdvisoryItem:(id)a3;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_updateContents;
- (void)setAdvisoryItem:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CarAdvisoryDetailCardViewController

- (void)setAdvisoryItem:(id)a3
{
  v5 = a3;
  advisoryItem = self->_advisoryItem;
  v10 = v5;
  v7 = advisoryItem;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_advisoryItem, a3);
      [(CarAdvisoryDetailCardViewController *)self _updateContents];
      v8 = v10;
    }
  }
}

- (void)_updateContents
{
  v3 = [(GEOComposedRouteAdvisoryItem *)self->_advisoryItem subtitleString];
  v4 = [v3 stringWithDefaultOptions];
  [(UILabel *)self->_primaryLabel setText:v4];

  v8 = DetailTextsForAdvisoryItem();
  v5 = [v8 componentsJoinedByString:@"\n"];
  [(UILabel *)self->_secondaryLabel setText:v5];

  v6 = [(GEOComposedRouteAdvisoryItem *)self->_advisoryItem attributionString];
  v7 = [v6 stringWithDefaultOptions];
  [(UILabel *)self->_tertiaryLabel setText:v7];
}

- (void)_setupStyling
{
  v3 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  [(UILabel *)self->_primaryLabel setFont:v3];

  v4 = [(UILabel *)self->_primaryLabel font];
  [v4 pointSize];
  primaryLabel = self->_primaryLabel;
  if (10.0 / v5 > 1.0)
  {
    [(UILabel *)primaryLabel setMinimumScaleFactor:1.0];
  }

  else
  {
    v7 = [(UILabel *)primaryLabel font];
    [v7 pointSize];
    [(UILabel *)self->_primaryLabel setMinimumScaleFactor:10.0 / v8];
  }

  [(UILabel *)self->_primaryLabel setAdjustsFontSizeToFitWidth:1];
  v9 = +[UIColor labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:v9];

  v10 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
  [(UILabel *)self->_secondaryLabel setFont:v10];

  v11 = [(UILabel *)self->_secondaryLabel font];
  [v11 pointSize];
  secondaryLabel = self->_secondaryLabel;
  if (10.0 / v12 > 1.0)
  {
    [(UILabel *)secondaryLabel setMinimumScaleFactor:1.0];
  }

  else
  {
    v14 = [(UILabel *)secondaryLabel font];
    [v14 pointSize];
    [(UILabel *)self->_secondaryLabel setMinimumScaleFactor:10.0 / v15];
  }

  [(UILabel *)self->_secondaryLabel setAdjustsFontSizeToFitWidth:1];
  v16 = +[UIColor labelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:v16];

  v17 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightThin];
  [(UILabel *)self->_tertiaryLabel setFont:v17];

  v18 = [(UILabel *)self->_tertiaryLabel font];
  [v18 pointSize];
  tertiaryLabel = self->_tertiaryLabel;
  if (10.0 / v19 > 1.0)
  {
    [(UILabel *)tertiaryLabel setMinimumScaleFactor:1.0];
  }

  else
  {
    v21 = [(UILabel *)tertiaryLabel font];
    [v21 pointSize];
    [(UILabel *)self->_tertiaryLabel setMinimumScaleFactor:10.0 / v22];
  }

  [(UILabel *)self->_tertiaryLabel setAdjustsFontSizeToFitWidth:1];
  v23 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_tertiaryLabel setTextColor:v23];
}

- (void)_setupConstraints
{
  v42 = +[NSMutableArray array];
  v40 = [(UILabel *)self->_primaryLabel firstBaselineAnchor];
  v41 = [(CarAdvisoryDetailCardViewController *)self view];
  v39 = [v41 topAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:10.0];
  v43[0] = v38;
  v36 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v37 = [(CarAdvisoryDetailCardViewController *)self view];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35 constant:10.0];
  v43[1] = v34;
  v32 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v33 = [(CarAdvisoryDetailCardViewController *)self view];
  v31 = [v33 trailingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 constant:-10.0];
  v43[2] = v30;
  v29 = [(UILabel *)self->_secondaryLabel topAnchor];
  v28 = [(UILabel *)self->_primaryLabel bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 constant:4.0];
  v43[3] = v27;
  v25 = [(UILabel *)self->_secondaryLabel leadingAnchor];
  v26 = [(CarAdvisoryDetailCardViewController *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:10.0];
  v43[4] = v23;
  v21 = [(UILabel *)self->_secondaryLabel trailingAnchor];
  v22 = [(CarAdvisoryDetailCardViewController *)self view];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:-10.0];
  v43[5] = v19;
  v18 = [(UILabel *)self->_tertiaryLabel topAnchor];
  v17 = [(UILabel *)self->_secondaryLabel bottomAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:4.0];
  v43[6] = v16;
  v14 = [(UILabel *)self->_tertiaryLabel leadingAnchor];
  v15 = [(CarAdvisoryDetailCardViewController *)self view];
  v13 = [v15 leadingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13 constant:10.0];
  v43[7] = v3;
  v4 = [(UILabel *)self->_tertiaryLabel trailingAnchor];
  v5 = [(CarAdvisoryDetailCardViewController *)self view];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:-10.0];
  v43[8] = v7;
  v8 = [(UILabel *)self->_tertiaryLabel bottomAnchor];
  v9 = [(CarAdvisoryDetailCardViewController *)self view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintLessThanOrEqualToAnchor:v10 constant:-10.0];
  v43[9] = v11;
  v12 = [NSArray arrayWithObjects:v43 count:10];
  [v42 addObjectsFromArray:v12];

  [NSLayoutConstraint activateConstraints:v42];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarAdvisoryDetailCardViewController;
  [(CarAdvisoryDetailCardViewController *)&v4 viewWillAppear:a3];
  [(CarAdvisoryDetailCardViewController *)self _updateContents];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CarAdvisoryDetailCardViewController;
  [(CarAdvisoryDetailCardViewController *)&v19 viewDidLoad];
  v3 = [(CarAdvisoryDetailCardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarAdvisoryDetailCard"];

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
  v8 = [(CarAdvisoryDetailCardViewController *)self view];
  [v8 addSubview:self->_primaryLabel];

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
  v13 = [(CarAdvisoryDetailCardViewController *)self view];
  [v13 addSubview:self->_secondaryLabel];

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
  v18 = [(CarAdvisoryDetailCardViewController *)self view];
  [v18 addSubview:self->_tertiaryLabel];

  [(CarAdvisoryDetailCardViewController *)self _setupConstraints];
  [(CarAdvisoryDetailCardViewController *)self _setupStyling];
  [(CarAdvisoryDetailCardViewController *)self _updateContents];
}

- (CarAdvisoryDetailCardViewController)initWithAdvisoryItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CarAdvisoryDetailCardViewController;
  v6 = [(CarAdvisoryDetailCardViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_advisoryItem, a3);
  }

  return v7;
}

@end