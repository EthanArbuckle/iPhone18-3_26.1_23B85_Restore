@interface RestaurantReservationsChooseOfferCell
- (RestaurantReservationsChooseOfferCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)initConstraints;
@end

@implementation RestaurantReservationsChooseOfferCell

- (void)initConstraints
{
  [(UILabel *)self->_mainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_subLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  mainLabel = [(RestaurantReservationsChooseOfferCell *)self mainLabel];
  leadingAnchor = [mainLabel leadingAnchor];
  contentView = [(RestaurantReservationsChooseOfferCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  mainLabel2 = [(RestaurantReservationsChooseOfferCell *)self mainLabel];
  trailingAnchor = [mainLabel2 trailingAnchor];
  contentView2 = [(RestaurantReservationsChooseOfferCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  mainLabel3 = [(RestaurantReservationsChooseOfferCell *)self mainLabel];
  topAnchor = [mainLabel3 topAnchor];
  contentView3 = [(RestaurantReservationsChooseOfferCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2];

  subLabel = [(RestaurantReservationsChooseOfferCell *)self subLabel];
  leadingAnchor3 = [subLabel leadingAnchor];
  mainLabel4 = [(RestaurantReservationsChooseOfferCell *)self mainLabel];
  leadingAnchor4 = [mainLabel4 leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  subLabel2 = [(RestaurantReservationsChooseOfferCell *)self subLabel];
  trailingAnchor3 = [subLabel2 trailingAnchor];
  mainLabel5 = [(RestaurantReservationsChooseOfferCell *)self mainLabel];
  trailingAnchor4 = [mainLabel5 trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  subLabel3 = [(RestaurantReservationsChooseOfferCell *)self subLabel];
  firstBaselineAnchor = [subLabel3 firstBaselineAnchor];
  mainLabel6 = [(RestaurantReservationsChooseOfferCell *)self mainLabel];
  firstBaselineAnchor2 = [mainLabel6 firstBaselineAnchor];
  subLabel4 = [(RestaurantReservationsChooseOfferCell *)self subLabel];
  font = [subLabel4 font];
  [font _mapkit_scaledValueForValue:20.0];
  v34 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:?];

  contentView4 = [(RestaurantReservationsChooseOfferCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  subLabel5 = [(RestaurantReservationsChooseOfferCell *)self subLabel];
  lastBaselineAnchor = [subLabel5 lastBaselineAnchor];
  subLabel6 = [(RestaurantReservationsChooseOfferCell *)self subLabel];
  font2 = [subLabel6 font];
  [font2 _mapkit_scaledValueForValue:10.0];
  v41 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];

  v46[0] = v45;
  v46[1] = v44;
  v46[2] = v43;
  v46[3] = v22;
  v46[4] = v27;
  v46[5] = v34;
  v46[6] = v41;
  v42 = [NSArray arrayWithObjects:v46 count:7];
  [NSLayoutConstraint activateConstraints:v42];
}

- (RestaurantReservationsChooseOfferCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = RestaurantReservationsChooseOfferCell;
  v4 = [(RestaurantReservationsChooseOfferCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    mainLabel = v4->_mainLabel;
    v4->_mainLabel = v5;

    v7 = +[UIFont system15Bold];
    [(UILabel *)v4->_mainLabel setFont:v7];

    v8 = +[UIColor labelColor];
    [(UILabel *)v4->_mainLabel setTextColor:v8];

    v9 = objc_opt_new();
    subLabel = v4->_subLabel;
    v4->_subLabel = v9;

    [(UILabel *)v4->_subLabel setNumberOfLines:2];
    v11 = [UIFont _maps_systemFontWithSize:13.0];
    [(UILabel *)v4->_subLabel setFont:v11];

    v12 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_subLabel setTextColor:v12];

    contentView = [(RestaurantReservationsChooseOfferCell *)v4 contentView];
    [contentView addSubview:v4->_mainLabel];

    contentView2 = [(RestaurantReservationsChooseOfferCell *)v4 contentView];
    [contentView2 addSubview:v4->_subLabel];

    [(RestaurantReservationsChooseOfferCell *)v4 initConstraints];
  }

  return v4;
}

@end