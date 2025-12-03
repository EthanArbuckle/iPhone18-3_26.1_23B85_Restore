@interface CarArrivedGuidanceSign
- (CarArrivedGuidanceSign)initWithDestination:(unint64_t)destination;
- (CarGuidanceCardSizeProviding)sizeProvider;
- (void)_setupConstraints;
- (void)_updateStyling;
- (void)setFormattedDestination:(id)destination;
@end

@implementation CarArrivedGuidanceSign

- (CarGuidanceCardSizeProviding)sizeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sizeProvider);

  return WeakRetained;
}

- (void)_setupConstraints
{
  arrivedLabel = [(CarArrivedGuidanceSign *)self arrivedLabel];
  topAnchor = [arrivedLabel topAnchor];
  topAnchor2 = [(CarArrivedGuidanceSign *)self topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v46[0] = v42;
  arrivedLabel2 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  leadingAnchor = [arrivedLabel2 leadingAnchor];
  leadingAnchor2 = [(CarArrivedGuidanceSign *)self leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v46[1] = v38;
  trailingAnchor = [(CarArrivedGuidanceSign *)self trailingAnchor];
  arrivedLabel3 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  trailingAnchor2 = [arrivedLabel3 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:10.0];
  v46[2] = v34;
  destinationLabel = [(CarArrivedGuidanceSign *)self destinationLabel];
  topAnchor3 = [destinationLabel topAnchor];
  arrivedLabel4 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  bottomAnchor = [arrivedLabel4 bottomAnchor];
  v29 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:2.0];
  v46[3] = v29;
  destinationLabel2 = [(CarArrivedGuidanceSign *)self destinationLabel];
  topAnchor4 = [destinationLabel2 topAnchor];
  arrivedLabel5 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  bottomAnchor2 = [arrivedLabel5 bottomAnchor];
  LODWORD(v3) = 1144750080;
  v24 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:10.0 priority:v3];
  v46[4] = v24;
  destinationLabel3 = [(CarArrivedGuidanceSign *)self destinationLabel];
  leadingAnchor3 = [destinationLabel3 leadingAnchor];
  arrivedLabel6 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  leadingAnchor4 = [arrivedLabel6 leadingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v46[5] = v18;
  destinationLabel4 = [(CarArrivedGuidanceSign *)self destinationLabel];
  heightAnchor = [destinationLabel4 heightAnchor];
  destinationLabel5 = [(CarArrivedGuidanceSign *)self destinationLabel];
  preferredFont = [destinationLabel5 preferredFont];
  [preferredFont lineHeight];
  v4 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
  v46[6] = v4;
  arrivedLabel7 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  trailingAnchor3 = [arrivedLabel7 trailingAnchor];
  destinationLabel6 = [(CarArrivedGuidanceSign *)self destinationLabel];
  trailingAnchor4 = [destinationLabel6 trailingAnchor];
  v9 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v46[7] = v9;
  bottomAnchor3 = [(CarArrivedGuidanceSign *)self bottomAnchor];
  destinationLabel7 = [(CarArrivedGuidanceSign *)self destinationLabel];
  bottomAnchor4 = [destinationLabel7 bottomAnchor];
  v13 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:10.0];
  v46[8] = v13;
  v20 = [NSArray arrayWithObjects:v46 count:9];

  [NSLayoutConstraint activateConstraints:v20];
}

- (void)setFormattedDestination:(id)destination
{
  destinationCopy = destination;
  v5 = destinationCopy;
  if (destinationCopy)
  {
    v8 = destinationCopy;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  destinationLabel = [(CarArrivedGuidanceSign *)self destinationLabel];
  [destinationLabel setTextAlternatives:v6];

  if (v5)
  {
  }
}

- (void)_updateStyling
{
  v3 = [UIFont boldSystemFontOfSize:16.0];
  destinationLabel = [(CarArrivedGuidanceSign *)self destinationLabel];
  [destinationLabel setPreferredFont:v3];

  destinationLabel2 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [destinationLabel2 setMaxNumberOfLinesWithPreferredFont:0];

  destinationLabel3 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [destinationLabel3 setMaxNumberOfTotalLines:0];

  destination = self->_destination;
  v9 = destination == 4 || destination - 1 < 2;
  v10 = sub_10009E9A4(v9);
  destinationLabel4 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [destinationLabel4 setTextColor:v10];

  destinationLabel5 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [destinationLabel5 setParagraphLineBreakMode:4];

  destinationLabel6 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [destinationLabel6 updateLabelIfNeeded];

  v14 = [UIFont systemFontOfSize:12.0];
  arrivedLabel = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [arrivedLabel setFont:v14];

  v16 = self->_destination;
  v18 = v16 == 4 || v16 - 1 < 2;
  v19 = sub_10009E9A4(v18);
  arrivedLabel2 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [arrivedLabel2 setTextColor:v19];

  arrivedLabel3 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [arrivedLabel3 setShouldInsetAlignmentToAscender:1];

  arrivedLabel4 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [arrivedLabel4 setNumberOfLines:0];

  v23 = +[NSBundle mainBundle];
  v25 = [v23 localizedStringForKey:@"Arrived [CarPlay]" value:@"localized string not found" table:0];

  arrivedLabel5 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [arrivedLabel5 setText:v25];
}

- (CarArrivedGuidanceSign)initWithDestination:(unint64_t)destination
{
  v22.receiver = self;
  v22.super_class = CarArrivedGuidanceSign;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarArrivedGuidanceSign *)&v22 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = height;
  if (height)
  {
    [(CarArrivedGuidanceSign *)height setAccessibilityIdentifier:@"CarArrivedGuidanceSign"];
    v8->_destination = destination;
    height2 = [[NavSignLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(CarArrivedGuidanceSign *)v8 setDestinationLabel:height2];

    destinationLabel = [(CarArrivedGuidanceSign *)v8 destinationLabel];
    [destinationLabel setAccessibilityIdentifier:@"DestinationLabel"];

    destinationLabel2 = [(CarArrivedGuidanceSign *)v8 destinationLabel];
    [destinationLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    destinationLabel3 = [(CarArrivedGuidanceSign *)v8 destinationLabel];
    LODWORD(v13) = *"";
    [destinationLabel3 setContentCompressionResistancePriority:1 forAxis:v13];

    destinationLabel4 = [(CarArrivedGuidanceSign *)v8 destinationLabel];
    [(CarArrivedGuidanceSign *)v8 addSubview:destinationLabel4];

    height3 = [[MapsAutolayoutLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(CarArrivedGuidanceSign *)v8 setArrivedLabel:height3];

    arrivedLabel = [(CarArrivedGuidanceSign *)v8 arrivedLabel];
    [arrivedLabel setAccessibilityIdentifier:@"ArrivedLabel"];

    arrivedLabel2 = [(CarArrivedGuidanceSign *)v8 arrivedLabel];
    [arrivedLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    arrivedLabel3 = [(CarArrivedGuidanceSign *)v8 arrivedLabel];
    LODWORD(v19) = 1148829696;
    [arrivedLabel3 setContentCompressionResistancePriority:1 forAxis:v19];

    arrivedLabel4 = [(CarArrivedGuidanceSign *)v8 arrivedLabel];
    [(CarArrivedGuidanceSign *)v8 addSubview:arrivedLabel4];

    [(CarArrivedGuidanceSign *)v8 _updateStyling];
    [(CarArrivedGuidanceSign *)v8 _setupConstraints];
  }

  return v8;
}

@end