@interface TransitSchedulesCollapsedStopsPlaceholderViewCell
- (NSString)placeholderText;
- (TransitSchedulesCollapsedStopsPlaceholderViewCell)initWithFrame:(CGRect)frame;
- (void)createSubviews;
- (void)setPlaceholderText:(id)text;
@end

@implementation TransitSchedulesCollapsedStopsPlaceholderViewCell

- (NSString)placeholderText
{
  primaryTextLabel = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self primaryTextLabel];
  text = [primaryTextLabel text];

  return text;
}

- (void)setPlaceholderText:(id)text
{
  textCopy = text;
  primaryTextLabel = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self primaryTextLabel];
  [primaryTextLabel setText:textCopy];
}

- (void)createSubviews
{
  contentView = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self contentView];
  [contentView setAccessibilityIdentifier:@"TransitSchedulesCollapsedStopsPlaceholderViewCell"];
  v4 = +[UIColor clearColor];
  [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self setBackgroundColor:v4];

  v5 = objc_alloc_init(UIView);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v5];
  v6 = [[TransitDirectionsColoredLine alloc] initWithStyle:4];
  [(TransitDirectionsColoredLine *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  theme = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self theme];
  transitSchedulesPastStopLinkColor = [theme transitSchedulesPastStopLinkColor];
  [(TransitDirectionsColoredLine *)v6 setLineColor:transitSchedulesPastStopLinkColor];

  [v5 addSubview:v6];
  v9 = objc_alloc_init(MapsThemeLabel);
  [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self setPrimaryTextLabel:v9];
  [(MapsThemeLabel *)v9 setNumberOfLines:2];
  [(MapsThemeLabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  theme2 = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self theme];
  transitSchedulesPastStopTextColor = [theme2 transitSchedulesPastStopTextColor];
  [(MapsThemeLabel *)v9 setTextColor:transitSchedulesPastStopTextColor];

  [(MapsThemeLabel *)v9 setAccessibilityIdentifier:@"TransitSchedulesCollapsedStopsPlaceholderViewCellPrimaryTextLabel"];
  [contentView addSubview:v9];
  primaryTextLabel = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)self primaryTextLabel];
  [DynamicTypeWizard autorefreshLabel:primaryTextLabel withFontProvider:&stru_10165D8C8];

  topAnchor = [v5 topAnchor];
  v13 = contentView;
  topAnchor2 = [contentView topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[0] = v48;
  bottomAnchor = [v5 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v51[1] = v45;
  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v51[2] = v42;
  widthAnchor = [v5 widthAnchor];
  v40 = [widthAnchor constraintEqualToConstant:24.0];
  v51[3] = v40;
  topAnchor3 = [(TransitDirectionsColoredLine *)v6 topAnchor];
  topAnchor4 = [v5 topAnchor];
  v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v51[4] = v36;
  bottomAnchor3 = [(TransitDirectionsColoredLine *)v6 bottomAnchor];
  bottomAnchor4 = [v5 bottomAnchor];
  v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v51[5] = v33;
  v39 = v6;
  centerXAnchor = [(TransitDirectionsColoredLine *)v6 centerXAnchor];
  centerXAnchor2 = [v5 centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v51[6] = v29;
  widthAnchor2 = [(TransitDirectionsColoredLine *)v6 widthAnchor];
  v27 = [widthAnchor2 constraintEqualToConstant:4.0];
  v51[7] = v27;
  topAnchor5 = [(MapsThemeLabel *)v9 topAnchor];
  topAnchor6 = [contentView topAnchor];
  v24 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:5.0];
  v51[8] = v24;
  bottomAnchor5 = [(MapsThemeLabel *)v9 bottomAnchor];
  v31 = contentView;
  bottomAnchor6 = [contentView bottomAnchor];
  v14 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-8.0];
  v51[9] = v14;
  leadingAnchor3 = [(MapsThemeLabel *)v9 leadingAnchor];
  trailingAnchor = [v5 trailingAnchor];
  v17 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  v51[10] = v17;
  trailingAnchor2 = [(MapsThemeLabel *)v9 trailingAnchor];
  trailingAnchor3 = [v13 trailingAnchor];
  v20 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-8.0];
  v51[11] = v20;
  v21 = [NSArray arrayWithObjects:v51 count:12];
  [NSLayoutConstraint activateConstraints:v21];
}

- (TransitSchedulesCollapsedStopsPlaceholderViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesCollapsedStopsPlaceholderViewCell;
  v3 = [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesCollapsedStopsPlaceholderViewCell *)v3 createSubviews];
  }

  return v4;
}

@end