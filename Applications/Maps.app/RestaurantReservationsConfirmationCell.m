@interface RestaurantReservationsConfirmationCell
- (RestaurantReservationsConfirmationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)initConstraints;
@end

@implementation RestaurantReservationsConfirmationCell

- (void)initConstraints
{
  v3 = [(RestaurantReservationsConfirmationCell *)self details];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(RestaurantReservationsConfirmationCell *)self details];
  v5 = [v4 leadingAnchor];
  v6 = [(RestaurantReservationsConfirmationCell *)self contentView];
  v7 = [v6 layoutMarginsGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];

  v10 = [(RestaurantReservationsConfirmationCell *)self details];
  v11 = [v10 trailingAnchor];
  v12 = [(RestaurantReservationsConfirmationCell *)self contentView];
  v13 = [v12 layoutMarginsGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];

  v16 = [(RestaurantReservationsConfirmationCell *)self details];
  v17 = [v16 topAnchor];
  v18 = [(RestaurantReservationsConfirmationCell *)self contentView];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];

  v21 = [(RestaurantReservationsConfirmationCell *)self contentView];
  v22 = [v21 layoutMarginsGuide];
  v23 = [v22 bottomAnchor];
  v24 = [(RestaurantReservationsConfirmationCell *)self details];
  v25 = [v24 lastBaselineAnchor];
  v26 = [v23 constraintEqualToAnchor:v25 constant:20.0];

  v28[0] = v9;
  v28[1] = v20;
  v28[2] = v15;
  v28[3] = v26;
  v27 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v27];
}

- (RestaurantReservationsConfirmationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = RestaurantReservationsConfirmationCell;
  v4 = [(RestaurantReservationsConfirmationCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
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

    v10 = [(RestaurantReservationsConfirmationCell *)v4 contentView];
    [v10 addSubview:v4->_details];

    [(RestaurantReservationsConfirmationCell *)v4 initConstraints];
    v11 = +[UIColor systemGroupedBackgroundColor];
    [(RestaurantReservationsConfirmationCell *)v4 setBackgroundColor:v11];
  }

  return v4;
}

@end