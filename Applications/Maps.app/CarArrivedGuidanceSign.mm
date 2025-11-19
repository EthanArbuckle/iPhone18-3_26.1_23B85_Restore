@interface CarArrivedGuidanceSign
- (CarArrivedGuidanceSign)initWithDestination:(unint64_t)a3;
- (CarGuidanceCardSizeProviding)sizeProvider;
- (void)_setupConstraints;
- (void)_updateStyling;
- (void)setFormattedDestination:(id)a3;
@end

@implementation CarArrivedGuidanceSign

- (CarGuidanceCardSizeProviding)sizeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sizeProvider);

  return WeakRetained;
}

- (void)_setupConstraints
{
  v45 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  v44 = [v45 topAnchor];
  v43 = [(CarArrivedGuidanceSign *)self topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:10.0];
  v46[0] = v42;
  v41 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  v40 = [v41 leadingAnchor];
  v39 = [(CarArrivedGuidanceSign *)self leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:10.0];
  v46[1] = v38;
  v36 = [(CarArrivedGuidanceSign *)self trailingAnchor];
  v37 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  v35 = [v37 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35 constant:10.0];
  v46[2] = v34;
  v33 = [(CarArrivedGuidanceSign *)self destinationLabel];
  v31 = [v33 topAnchor];
  v32 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  v30 = [v32 bottomAnchor];
  v29 = [v31 constraintGreaterThanOrEqualToAnchor:v30 constant:2.0];
  v46[3] = v29;
  v28 = [(CarArrivedGuidanceSign *)self destinationLabel];
  v26 = [v28 topAnchor];
  v27 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  v25 = [v27 bottomAnchor];
  LODWORD(v3) = 1144750080;
  v24 = [v26 constraintEqualToAnchor:v25 constant:10.0 priority:v3];
  v46[4] = v24;
  v23 = [(CarArrivedGuidanceSign *)self destinationLabel];
  v21 = [v23 leadingAnchor];
  v22 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  v19 = [v22 leadingAnchor];
  v18 = [v21 constraintEqualToAnchor:v19];
  v46[5] = v18;
  v17 = [(CarArrivedGuidanceSign *)self destinationLabel];
  v15 = [v17 heightAnchor];
  v16 = [(CarArrivedGuidanceSign *)self destinationLabel];
  v14 = [v16 preferredFont];
  [v14 lineHeight];
  v4 = [v15 constraintGreaterThanOrEqualToConstant:?];
  v46[6] = v4;
  v5 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  v6 = [v5 trailingAnchor];
  v7 = [(CarArrivedGuidanceSign *)self destinationLabel];
  v8 = [v7 trailingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v46[7] = v9;
  v10 = [(CarArrivedGuidanceSign *)self bottomAnchor];
  v11 = [(CarArrivedGuidanceSign *)self destinationLabel];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:10.0];
  v46[8] = v13;
  v20 = [NSArray arrayWithObjects:v46 count:9];

  [NSLayoutConstraint activateConstraints:v20];
}

- (void)setFormattedDestination:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [v7 setTextAlternatives:v6];

  if (v5)
  {
  }
}

- (void)_updateStyling
{
  v3 = [UIFont boldSystemFontOfSize:16.0];
  v4 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [v4 setPreferredFont:v3];

  v5 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [v5 setMaxNumberOfLinesWithPreferredFont:0];

  v6 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [v6 setMaxNumberOfTotalLines:0];

  destination = self->_destination;
  v9 = destination == 4 || destination - 1 < 2;
  v10 = sub_10009E9A4(v9);
  v11 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [v11 setTextColor:v10];

  v12 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [v12 setParagraphLineBreakMode:4];

  v13 = [(CarArrivedGuidanceSign *)self destinationLabel];
  [v13 updateLabelIfNeeded];

  v14 = [UIFont systemFontOfSize:12.0];
  v15 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [v15 setFont:v14];

  v16 = self->_destination;
  v18 = v16 == 4 || v16 - 1 < 2;
  v19 = sub_10009E9A4(v18);
  v20 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [v20 setTextColor:v19];

  v21 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [v21 setShouldInsetAlignmentToAscender:1];

  v22 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [v22 setNumberOfLines:0];

  v23 = +[NSBundle mainBundle];
  v25 = [v23 localizedStringForKey:@"Arrived [CarPlay]" value:@"localized string not found" table:0];

  v24 = [(CarArrivedGuidanceSign *)self arrivedLabel];
  [v24 setText:v25];
}

- (CarArrivedGuidanceSign)initWithDestination:(unint64_t)a3
{
  v22.receiver = self;
  v22.super_class = CarArrivedGuidanceSign;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(CarArrivedGuidanceSign *)&v22 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = v7;
  if (v7)
  {
    [(CarArrivedGuidanceSign *)v7 setAccessibilityIdentifier:@"CarArrivedGuidanceSign"];
    v8->_destination = a3;
    v9 = [[NavSignLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(CarArrivedGuidanceSign *)v8 setDestinationLabel:v9];

    v10 = [(CarArrivedGuidanceSign *)v8 destinationLabel];
    [v10 setAccessibilityIdentifier:@"DestinationLabel"];

    v11 = [(CarArrivedGuidanceSign *)v8 destinationLabel];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(CarArrivedGuidanceSign *)v8 destinationLabel];
    LODWORD(v13) = *"";
    [v12 setContentCompressionResistancePriority:1 forAxis:v13];

    v14 = [(CarArrivedGuidanceSign *)v8 destinationLabel];
    [(CarArrivedGuidanceSign *)v8 addSubview:v14];

    v15 = [[MapsAutolayoutLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(CarArrivedGuidanceSign *)v8 setArrivedLabel:v15];

    v16 = [(CarArrivedGuidanceSign *)v8 arrivedLabel];
    [v16 setAccessibilityIdentifier:@"ArrivedLabel"];

    v17 = [(CarArrivedGuidanceSign *)v8 arrivedLabel];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(CarArrivedGuidanceSign *)v8 arrivedLabel];
    LODWORD(v19) = 1148829696;
    [v18 setContentCompressionResistancePriority:1 forAxis:v19];

    v20 = [(CarArrivedGuidanceSign *)v8 arrivedLabel];
    [(CarArrivedGuidanceSign *)v8 addSubview:v20];

    [(CarArrivedGuidanceSign *)v8 _updateStyling];
    [(CarArrivedGuidanceSign *)v8 _setupConstraints];
  }

  return v8;
}

@end