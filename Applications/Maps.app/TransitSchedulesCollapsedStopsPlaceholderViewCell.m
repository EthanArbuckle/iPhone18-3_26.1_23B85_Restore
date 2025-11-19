@interface TransitSchedulesCollapsedStopsPlaceholderViewCell
- (NSString)placeholderText;
- (TransitSchedulesCollapsedStopsPlaceholderViewCell)initWithFrame:(CGRect)a3;
- (void)createSubviews;
- (void)setPlaceholderText:(id)a3;
@end

@implementation TransitSchedulesCollapsedStopsPlaceholderViewCell

- (NSString)placeholderText
{
  v2 = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self primaryTextLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setPlaceholderText:(id)a3
{
  v4 = a3;
  v5 = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self primaryTextLabel];
  [v5 setText:v4];
}

- (void)createSubviews
{
  v3 = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self contentView];
  [v3 setAccessibilityIdentifier:@"TransitSchedulesCollapsedStopsPlaceholderViewCell"];
  v4 = +[UIColor clearColor];
  [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self setBackgroundColor:v4];

  v5 = objc_alloc_init(UIView);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v5];
  v6 = [[TransitDirectionsColoredLine alloc] initWithStyle:4];
  [(TransitDirectionsColoredLine *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self theme];
  v8 = [v7 transitSchedulesPastStopLinkColor];
  [(TransitDirectionsColoredLine *)v6 setLineColor:v8];

  [v5 addSubview:v6];
  v9 = objc_alloc_init(MapsThemeLabel);
  [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self setPrimaryTextLabel:v9];
  [(MapsThemeLabel *)v9 setNumberOfLines:2];
  [(MapsThemeLabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self theme];
  v11 = [v10 transitSchedulesPastStopTextColor];
  [(MapsThemeLabel *)v9 setTextColor:v11];

  [(MapsThemeLabel *)v9 setAccessibilityIdentifier:@"TransitSchedulesCollapsedStopsPlaceholderViewCellPrimaryTextLabel"];
  [v3 addSubview:v9];
  v12 = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self primaryTextLabel];
  [DynamicTypeWizard autorefreshLabel:v12 withFontProvider:&stru_10165D8C8];

  v50 = [v5 topAnchor];
  v13 = v3;
  v49 = [v3 topAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v51[0] = v48;
  v47 = [v5 bottomAnchor];
  v46 = [v3 bottomAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v51[1] = v45;
  v44 = [v5 leadingAnchor];
  v43 = [v3 leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:16.0];
  v51[2] = v42;
  v41 = [v5 widthAnchor];
  v40 = [v41 constraintEqualToConstant:24.0];
  v51[3] = v40;
  v38 = [(TransitDirectionsColoredLine *)v6 topAnchor];
  v37 = [v5 topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v51[4] = v36;
  v35 = [(TransitDirectionsColoredLine *)v6 bottomAnchor];
  v34 = [v5 bottomAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v51[5] = v33;
  v39 = v6;
  v32 = [(TransitDirectionsColoredLine *)v6 centerXAnchor];
  v30 = [v5 centerXAnchor];
  v29 = [v32 constraintEqualToAnchor:v30];
  v51[6] = v29;
  v28 = [(TransitDirectionsColoredLine *)v6 widthAnchor];
  v27 = [v28 constraintEqualToConstant:4.0];
  v51[7] = v27;
  v26 = [(MapsThemeLabel *)v9 topAnchor];
  v25 = [v3 topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:5.0];
  v51[8] = v24;
  v23 = [(MapsThemeLabel *)v9 bottomAnchor];
  v31 = v3;
  v22 = [v3 bottomAnchor];
  v14 = [v23 constraintEqualToAnchor:v22 constant:-8.0];
  v51[9] = v14;
  v15 = [(MapsThemeLabel *)v9 leadingAnchor];
  v16 = [v5 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:8.0];
  v51[10] = v17;
  v18 = [(MapsThemeLabel *)v9 trailingAnchor];
  v19 = [v13 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-8.0];
  v51[11] = v20;
  v21 = [NSArray arrayWithObjects:v51 count:12];
  [NSLayoutConstraint activateConstraints:v21];
}

- (TransitSchedulesCollapsedStopsPlaceholderViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesCollapsedStopsPlaceholderViewCell;
  v3 = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)v3 createSubviews];
  }

  return v4;
}

@end