@interface RestaurantReservationsConfirmationCell
- (RestaurantReservationsConfirmationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)initConstraints;
@end

@implementation RestaurantReservationsConfirmationCell

- (void)initConstraints
{
  details = [(RestaurantReservationsConfirmationCell *)self details];
  [details setTranslatesAutoresizingMaskIntoConstraints:0];

  details2 = [(RestaurantReservationsConfirmationCell *)self details];
  leadingAnchor = [details2 leadingAnchor];
  contentView = [(RestaurantReservationsConfirmationCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  details3 = [(RestaurantReservationsConfirmationCell *)self details];
  trailingAnchor = [details3 trailingAnchor];
  contentView2 = [(RestaurantReservationsConfirmationCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  details4 = [(RestaurantReservationsConfirmationCell *)self details];
  topAnchor = [details4 topAnchor];
  contentView3 = [(RestaurantReservationsConfirmationCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];

  contentView4 = [(RestaurantReservationsConfirmationCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide3 bottomAnchor];
  details5 = [(RestaurantReservationsConfirmationCell *)self details];
  lastBaselineAnchor = [details5 lastBaselineAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:20.0];

  v28[0] = v9;
  v28[1] = v20;
  v28[2] = v15;
  v28[3] = v26;
  v27 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v27];
}

- (RestaurantReservationsConfirmationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = RestaurantReservationsConfirmationCell;
  v4 = [(RestaurantReservationsConfirmationCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    details = v4->_details;
    v4->_details = v5;

    v7 = +[UIColor labelColor];
    [(UILabel *)v4->_details setTextColor:v7];

    [(UILabel *)v4->_details setTextAlignment:0];
    v8 = +[UIColor clearColor];
    [(UILabel *)v4->_details setBackgroundColor:v8];

    [(UILabel *)v4->_details setNumberOfLines:3];
    v9 = [UIFont systemFontOfSize:18.0];
    [(UILabel *)v4->_details setFont:v9];

    contentView = [(RestaurantReservationsConfirmationCell *)v4 contentView];
    [contentView addSubview:v4->_details];

    [(RestaurantReservationsConfirmationCell *)v4 initConstraints];
    v11 = +[UIColor systemGroupedBackgroundColor];
    [(RestaurantReservationsConfirmationCell *)v4 setBackgroundColor:v11];
  }

  return v4;
}

@end