@interface RestaurantReservationSectionHeaderTableViewCell
- (BOOL)hidesHairline;
- (NSString)text;
- (RestaurantReservationSectionHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIColor)textColor;
- (UIFont)font;
- (void)initConstraints;
- (void)setFont:(id)font;
- (void)setHidesHairline:(BOOL)hairline;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)updateTheme;
@end

@implementation RestaurantReservationSectionHeaderTableViewCell

- (UIFont)font
{
  headerLabel = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  font = [headerLabel font];

  return font;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  headerLabel = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  [headerLabel setFont:fontCopy];
}

- (BOOL)hidesHairline
{
  hairlineContainer = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  isHidden = [hairlineContainer isHidden];

  return isHidden;
}

- (void)setHidesHairline:(BOOL)hairline
{
  hairlineCopy = hairline;
  hairlineContainer = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  [hairlineContainer setHidden:hairlineCopy];
}

- (NSString)text
{
  headerLabel = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  text = [headerLabel text];

  return text;
}

- (void)setText:(id)text
{
  localizedUppercaseString = [text localizedUppercaseString];
  headerLabel = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  [headerLabel setText:localizedUppercaseString];
}

- (UIColor)textColor
{
  headerLabel = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  textColor = [headerLabel textColor];

  return textColor;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  headerLabel = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  [headerLabel setTextColor:colorCopy];
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = RestaurantReservationSectionHeaderTableViewCell;
  [(MapsThemeTableViewCell *)&v6 updateTheme];
  theme = [(RestaurantReservationSectionHeaderTableViewCell *)self theme];
  hairlineColor = [theme hairlineColor];
  hairlineContainer = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  [hairlineContainer setHairlineColor:hairlineColor];
}

- (void)initConstraints
{
  headerLabel = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  [headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  hairlineContainer = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  [hairlineContainer setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  hairlineContainer2 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  leadingAnchor2 = [hairlineContainer2 leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v51[0] = v45;
  contentView2 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  trailingAnchor = [contentView2 trailingAnchor];
  hairlineContainer3 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  trailingAnchor2 = [hairlineContainer3 trailingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v51[1] = v40;
  contentView3 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  hairlineContainer4 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  topAnchor2 = [hairlineContainer4 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[2] = v35;
  contentView4 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  hairlineContainer5 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  bottomAnchor2 = [hairlineContainer5 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v51[3] = v30;
  contentView5 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
  leadingAnchor3 = [layoutMarginsGuide2 leadingAnchor];
  headerLabel2 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  leadingAnchor4 = [headerLabel2 leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v51[4] = v24;
  contentView6 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide3 trailingAnchor];
  headerLabel3 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  trailingAnchor4 = [headerLabel3 trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v51[5] = v18;
  headerLabel4 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  firstBaselineAnchor = [headerLabel4 firstBaselineAnchor];
  contentView7 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  topAnchor3 = [contentView7 topAnchor];
  headerLabel5 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  font = [headerLabel5 font];
  [font _mapkit_scaledValueForValue:26.0];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:?];
  v51[6] = v8;
  contentView8 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  bottomAnchor3 = [contentView8 bottomAnchor];
  headerLabel6 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  bottomAnchor4 = [headerLabel6 bottomAnchor];
  v13 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v51[7] = v13;
  v14 = [NSArray arrayWithObjects:v51 count:8];
  [NSLayoutConstraint activateConstraints:v14];
}

- (RestaurantReservationSectionHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v20.receiver = self;
  v20.super_class = RestaurantReservationSectionHeaderTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v20 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MKViewWithHairline);
    [(RestaurantReservationSectionHeaderTableViewCell *)v4 setHairlineContainer:v5];

    v6 = objc_alloc_init(UILabel);
    [(RestaurantReservationSectionHeaderTableViewCell *)v4 setHeaderLabel:v6];

    v7 = +[UIColor labelColor];
    headerLabel = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [headerLabel setTextColor:v7];

    headerLabel2 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [headerLabel2 setTextAlignment:0];

    v10 = +[UIColor clearColor];
    headerLabel3 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [headerLabel3 setBackgroundColor:v10];

    headerLabel4 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [headerLabel4 setNumberOfLines:1];

    v13 = +[UIFont system15];
    headerLabel5 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [headerLabel5 setFont:v13];

    contentView = [(RestaurantReservationSectionHeaderTableViewCell *)v4 contentView];
    hairlineContainer = [(RestaurantReservationSectionHeaderTableViewCell *)v4 hairlineContainer];
    [contentView addSubview:hairlineContainer];

    contentView2 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 contentView];
    headerLabel6 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [contentView2 addSubview:headerLabel6];

    [(RestaurantReservationSectionHeaderTableViewCell *)v4 initConstraints];
  }

  return v4;
}

@end